cmake_minimum_required(VERSION 3.16)
project(spiflash_driver C)

set(CMAKE_C_STANDARD 99)
set(CMAKE_C_STANDARD_REQUIRED ON)
set(CMAKE_C_EXTENSIONS OFF)

option(SPIFLASH_BUILD_TESTS "Build host unit tests" ON)
option(SPIFLASH_ENABLE_SANITIZERS "Enable ASan/UBSan in debug builds" ON)

# ---------------------------------------------------------------------------
# Core library: works on both host and embedded targets.
# ---------------------------------------------------------------------------

add_library(spiflash STATIC
    src/spiflash.c
)

target_include_directories(spiflash PUBLIC src)

if(MSVC)
    target_compile_options(spiflash PRIVATE /W4)
else()
    target_compile_options(spiflash PRIVATE
        -Wall -Wextra -Wpedantic -Wshadow -Wstrict-prototypes
    )
endif()

# ---------------------------------------------------------------------------
# Unit tests (host-side, Unity-based).
# ---------------------------------------------------------------------------

if(SPIFLASH_BUILD_TESTS)
    enable_testing()

    # Expose test hooks for white-box tests of static helpers.
    target_compile_definitions(spiflash PUBLIC SPIFLASH_TEST_HOOKS=1)

    add_library(unity STATIC third_party/unity/unity.c)
    target_include_directories(unity PUBLIC third_party/unity)
    if(NOT MSVC)
        target_compile_options(unity PRIVATE -w)
    endif()

    set(SPIFLASH_TEST_SANITIZER_FLAGS "")
    if(SPIFLASH_ENABLE_SANITIZERS AND NOT MSVC AND NOT WIN32)
        set(SPIFLASH_TEST_SANITIZER_FLAGS -fsanitize=address,undefined -fno-omit-frame-pointer)
    endif()

    add_library(spiflash_mock_hal STATIC
        test/mock_hal.c
    )
    target_include_directories(spiflash_mock_hal PUBLIC test)
    target_link_libraries(spiflash_mock_hal PUBLIC spiflash)
    if(NOT MSVC)
        target_compile_options(spiflash_mock_hal PRIVATE -Wall -Wextra)
    endif()

    function(spiflash_add_test name)
        add_executable(${name} ${ARGN})
        target_link_libraries(${name} PRIVATE spiflash spiflash_mock_hal unity)
        if(SPIFLASH_TEST_SANITIZER_FLAGS)
            target_compile_options(${name} PRIVATE ${SPIFLASH_TEST_SANITIZER_FLAGS})
            target_link_options(${name} PRIVATE ${SPIFLASH_TEST_SANITIZER_FLAGS})
        endif()
        # Tests need to peek at static helpers in spiflash.c via spiflash_test_hooks.h
        target_include_directories(${name} PRIVATE src test)
        add_test(NAME ${name} COMMAND ${name})
    endfunction()

    spiflash_add_test(test_address_compose      test/test_address_compose.c)
    spiflash_add_test(test_erase_area           test/test_erase_area.c)
    spiflash_add_test(test_jedec_id             test/test_jedec_id.c)
    spiflash_add_test(test_write_paging         test/test_write_paging.c)
    spiflash_add_test(test_busy_poll            test/test_busy_poll.c)
    spiflash_add_test(test_async                test/test_async.c)

    # Verify the on-target self-test runner compiles + completes against the
    # mock fake-flash. Same code that ships into the C2000 / Cortex-M4
    # examples; this proves the test logic is correct independently of any
    # board.
    add_executable(test_self_test_host
        test/test_self_test_host.c
        examples/common/spiflash_self_test.c
    )
    target_include_directories(test_self_test_host PRIVATE
        src test examples/common
    )
    target_link_libraries(test_self_test_host PRIVATE
        spiflash spiflash_mock_hal unity
    )
    if(SPIFLASH_TEST_SANITIZER_FLAGS)
        target_compile_options(test_self_test_host PRIVATE ${SPIFLASH_TEST_SANITIZER_FLAGS})
        target_link_options(test_self_test_host PRIVATE ${SPIFLASH_TEST_SANITIZER_FLAGS})
    endif()
    add_test(NAME test_self_test_host COMMAND test_self_test_host)

    # Host-side packed-byte simulation: build a separate spiflash object with
    # SPIFLASH_BYTES_PACKED defined, against a stubbed __byte() intrinsic.
    add_library(spiflash_packed STATIC src/spiflash.c)
    target_include_directories(spiflash_packed PUBLIC src test/c2000_sim)
    target_compile_definitions(spiflash_packed PUBLIC
        SPIFLASH_BYTES_PACKED=1
    )
    # Bring in the host-side __byte() stub via a forced include so the driver
    # source compiles without modification.
    if(MSVC)
        target_compile_options(spiflash_packed PUBLIC
            "/FI${CMAKE_SOURCE_DIR}/test/c2000_sim/c2000_byte_stub.h")
    else()
        target_compile_options(spiflash_packed PUBLIC
            "-include" "${CMAKE_SOURCE_DIR}/test/c2000_sim/c2000_byte_stub.h")
    endif()

    add_library(spiflash_mock_hal_packed STATIC test/mock_hal.c)
    target_include_directories(spiflash_mock_hal_packed PUBLIC test)
    target_link_libraries(spiflash_mock_hal_packed PUBLIC spiflash_packed)

    add_executable(test_packed_bytes test/c2000_sim/test_packed_bytes.c)
    target_link_libraries(test_packed_bytes PRIVATE
        spiflash_packed spiflash_mock_hal_packed unity)
    target_include_directories(test_packed_bytes PRIVATE src test test/c2000_sim)
    if(SPIFLASH_TEST_SANITIZER_FLAGS)
        target_compile_options(test_packed_bytes PRIVATE ${SPIFLASH_TEST_SANITIZER_FLAGS})
        target_link_options(test_packed_bytes PRIVATE ${SPIFLASH_TEST_SANITIZER_FLAGS})
    endif()
    add_test(NAME test_packed_bytes COMMAND test_packed_bytes)

endif()

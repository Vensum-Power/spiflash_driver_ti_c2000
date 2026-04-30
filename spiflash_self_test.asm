;***************************************************************
;* TMS320C2000 G3 C/C++ Codegen                               PC v22.6.1.LTS *
;* Date/Time created: Thu Apr 30 17:09:32 2026                 *
;***************************************************************
	.compiler_opts --abi=coffabi --float_support=softlib --hll_source=on --mem_model:code=flat --mem_model:data=large --object_format=coff --silicon_errata_fpu1_workaround=on --silicon_version=28 --symdebug:dwarf --symdebug:dwarf_version=3 
	.asg	XAR2, FP

$C$DW$CU	.dwtag  DW_TAG_compile_unit
	.dwattr $C$DW$CU, DW_AT_name("examples\common\spiflash_self_test.c")
	.dwattr $C$DW$CU, DW_AT_producer("TI TMS320C2000 G3 C/C++ Codegen PC v22.6.1.LTS Copyright (c) 1996-2018 Texas Instruments Incorporated")
	.dwattr $C$DW$CU, DW_AT_TI_version(0x01)
	.dwattr $C$DW$CU, DW_AT_comp_dir("C:\Users\ToniKuikka\Git\spiflash_driver_ti_c2000")

$C$DW$1	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$1, DW_AT_name("SPIFLASH_read_jedec_id")
	.dwattr $C$DW$1, DW_AT_TI_symbol_name("_SPIFLASH_read_jedec_id")
	.dwattr $C$DW$1, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$1, DW_AT_declaration
	.dwattr $C$DW$1, DW_AT_external
$C$DW$2	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$2, DW_AT_type(*$C$DW$T$20)

$C$DW$3	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$3, DW_AT_type(*$C$DW$T$46)

	.dwendtag $C$DW$1


$C$DW$4	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$4, DW_AT_name("SPIFLASH_read_sr")
	.dwattr $C$DW$4, DW_AT_TI_symbol_name("_SPIFLASH_read_sr")
	.dwattr $C$DW$4, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$4, DW_AT_declaration
	.dwattr $C$DW$4, DW_AT_external
$C$DW$5	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$5, DW_AT_type(*$C$DW$T$20)

$C$DW$6	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$6, DW_AT_type(*$C$DW$T$45)

	.dwendtag $C$DW$4


$C$DW$7	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$7, DW_AT_name("SPIFLASH_erase")
	.dwattr $C$DW$7, DW_AT_TI_symbol_name("_SPIFLASH_erase")
	.dwattr $C$DW$7, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$7, DW_AT_declaration
	.dwattr $C$DW$7, DW_AT_external
$C$DW$8	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$8, DW_AT_type(*$C$DW$T$20)

$C$DW$9	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$9, DW_AT_type(*$C$DW$T$31)

$C$DW$10	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$10, DW_AT_type(*$C$DW$T$31)

	.dwendtag $C$DW$7


$C$DW$11	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$11, DW_AT_name("SPIFLASH_read")
	.dwattr $C$DW$11, DW_AT_TI_symbol_name("_SPIFLASH_read")
	.dwattr $C$DW$11, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$11, DW_AT_declaration
	.dwattr $C$DW$11, DW_AT_external
$C$DW$12	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$12, DW_AT_type(*$C$DW$T$20)

$C$DW$13	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$13, DW_AT_type(*$C$DW$T$31)

$C$DW$14	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$14, DW_AT_type(*$C$DW$T$31)

$C$DW$15	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$15, DW_AT_type(*$C$DW$T$45)

	.dwendtag $C$DW$11


$C$DW$16	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$16, DW_AT_name("SPIFLASH_write")
	.dwattr $C$DW$16, DW_AT_TI_symbol_name("_SPIFLASH_write")
	.dwattr $C$DW$16, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$16, DW_AT_declaration
	.dwattr $C$DW$16, DW_AT_external
$C$DW$17	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$17, DW_AT_type(*$C$DW$T$20)

$C$DW$18	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$18, DW_AT_type(*$C$DW$T$31)

$C$DW$19	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$19, DW_AT_type(*$C$DW$T$31)

$C$DW$20	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$20, DW_AT_type(*$C$DW$T$44)

	.dwendtag $C$DW$16


$C$DW$21	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$21, DW_AT_name("SPIFLASH_chip_erase")
	.dwattr $C$DW$21, DW_AT_TI_symbol_name("_SPIFLASH_chip_erase")
	.dwattr $C$DW$21, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$21, DW_AT_declaration
	.dwattr $C$DW$21, DW_AT_external
$C$DW$22	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$22, DW_AT_type(*$C$DW$T$20)

	.dwendtag $C$DW$21

	.sect	".econst"
	.align	2
	.elfsym	_hex$1,SYM_SIZE(2)
_hex$1:
	.bits	$C$FSL1,32		; _hex$1 @ 0

	.sect	".econst"
	.align	2
	.elfsym	_hex$2,SYM_SIZE(2)
_hex$2:
	.bits	$C$FSL1,32		; _hex$2 @ 0

	.sect	".econst:_base_steps$3"
	.clink
	.align	2
	.elfsym	_base_steps$3,SYM_SIZE(28)
_base_steps$3:
	.bits	$C$FSL2,32		; _base_steps$3[0]._name @ 0
	.bits	_t_jedec,32		; _base_steps$3[0]._fn @ 32
	.bits	$C$FSL3,32		; _base_steps$3[1]._name @ 64
	.bits	_t_read_sr,32		; _base_steps$3[1]._fn @ 96
	.bits	$C$FSL4,32		; _base_steps$3[2]._name @ 128
	.bits	_t_erase_sector,32		; _base_steps$3[2]._fn @ 160
	.bits	$C$FSL5,32		; _base_steps$3[3]._name @ 192
	.bits	_t_verify_erased,32		; _base_steps$3[3]._fn @ 224
	.bits	$C$FSL6,32		; _base_steps$3[4]._name @ 256
	.bits	_t_write_read_pattern,32		; _base_steps$3[4]._fn @ 288
	.bits	$C$FSL7,32		; _base_steps$3[5]._name @ 320
	.bits	_t_page_boundary,32		; _base_steps$3[5]._fn @ 352
	.bits	$C$FSL8,32		; _base_steps$3[6]._name @ 384
	.bits	_t_unwritten_remains_ff,32		; _base_steps$3[6]._fn @ 416

;	C:\ti\ccs1240\ccs\tools\compiler\ti-cgt-c2000_22.6.0.LTS\bin\opt2000.exe C:\\Users\\TONIKU~1\\AppData\\Local\\Temp\\{DFED8DFC-3687-420E-A5B9-2E38FAA51AC0} C:\\Users\\TONIKU~1\\AppData\\Local\\Temp\\{AE4EDBB1-4AA9-4C1C-ACD3-149AAFC3A12A} 
;	C:\ti\ccs1240\ccs\tools\compiler\ti-cgt-c2000_22.6.0.LTS\bin\ac2000.exe -@C:\\Users\\TONIKU~1\\AppData\\Local\\Temp\\{253B8596-9947-4691-AA16-E4060505674B} 
	.sect	".text"
	.clink

$C$DW$23	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$23, DW_AT_name("fill_pattern")
	.dwattr $C$DW$23, DW_AT_low_pc(_fill_pattern)
	.dwattr $C$DW$23, DW_AT_high_pc(0x00)
	.dwattr $C$DW$23, DW_AT_TI_symbol_name("_fill_pattern")
	.dwattr $C$DW$23, DW_AT_TI_begin_file("examples\common\spiflash_self_test.c")
	.dwattr $C$DW$23, DW_AT_TI_begin_line(0xa0)
	.dwattr $C$DW$23, DW_AT_TI_begin_column(0x0d)
	.dwattr $C$DW$23, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "examples\common\spiflash_self_test.c",line 160,column 87,is_stmt,address _fill_pattern,isa 0

	.dwfde $C$DW$CIE, _fill_pattern
$C$DW$24	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$24, DW_AT_name("ctx")
	.dwattr $C$DW$24, DW_AT_TI_symbol_name("_ctx")
	.dwattr $C$DW$24, DW_AT_type(*$C$DW$T$38)
	.dwattr $C$DW$24, DW_AT_location[DW_OP_reg12]

$C$DW$25	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$25, DW_AT_name("len")
	.dwattr $C$DW$25, DW_AT_TI_symbol_name("_len")
	.dwattr $C$DW$25, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$25, DW_AT_location[DW_OP_reg0]

$C$DW$26	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$26, DW_AT_name("seed")
	.dwattr $C$DW$26, DW_AT_TI_symbol_name("_seed")
	.dwattr $C$DW$26, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$26, DW_AT_location[DW_OP_reg14]


;***************************************************************
;* FNAME: _fill_pattern                 FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_fill_pattern:
;* AR6   assigned to $O$U14
;* AR4   assigned to $O$L1
;* AR4   assigned to _ctx
$C$DW$27	.dwtag  DW_TAG_variable
	.dwattr $C$DW$27, DW_AT_name("ctx")
	.dwattr $C$DW$27, DW_AT_TI_symbol_name("_ctx")
	.dwattr $C$DW$27, DW_AT_type(*$C$DW$T$80)
	.dwattr $C$DW$27, DW_AT_location[DW_OP_reg12]

;* AL    assigned to _len
$C$DW$28	.dwtag  DW_TAG_variable
	.dwattr $C$DW$28, DW_AT_name("len")
	.dwattr $C$DW$28, DW_AT_TI_symbol_name("_len")
	.dwattr $C$DW$28, DW_AT_type(*$C$DW$T$163)
	.dwattr $C$DW$28, DW_AT_location[DW_OP_reg0]

;* AR5   assigned to _seed
$C$DW$29	.dwtag  DW_TAG_variable
	.dwattr $C$DW$29, DW_AT_name("seed")
	.dwattr $C$DW$29, DW_AT_TI_symbol_name("_seed")
	.dwattr $C$DW$29, DW_AT_type(*$C$DW$T$43)
	.dwattr $C$DW$29, DW_AT_location[DW_OP_reg14]

;* AR0   assigned to _i
$C$DW$30	.dwtag  DW_TAG_variable
	.dwattr $C$DW$30, DW_AT_name("i")
	.dwattr $C$DW$30, DW_AT_TI_symbol_name("_i")
	.dwattr $C$DW$30, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$30, DW_AT_location[DW_OP_reg4]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
	.dwpsn	file "examples\common\spiflash_self_test.c",line 161,column 26,is_stmt,isa 0
        TEST      ACC                   ; [CPU_ALU] |161| 
        B         $C$L2,EQ              ; [CPU_ALU] |161| 
        ; branchcc occurs ; [] |161| 
        MOVB      XAR0,#10              ; [CPU_ALU] 
        MOVL      XAR6,*+XAR4[AR0]      ; [CPU_ALU] 
	.dwpsn	file "examples\common\spiflash_self_test.c",line 161,column 21,is_stmt,isa 0
        MOVB      XAR0,#0               ; [CPU_ALU] |161| 
        SUBB      ACC,#1                ; [CPU_ALU] 
        MOVL      XAR4,ACC              ; [CPU_ALU] 
$C$L1:    
	.dwpsn	file "examples\common\spiflash_self_test.c",line 162,column 9,is_stmt,isa 0
        MOV       AL,AR0                ; [CPU_ALU] |162| 
        ADD       AL,AR5                ; [CPU_ALU] |162| 
	.dwpsn	file "examples\common\spiflash_self_test.c",line 161,column 26,is_stmt,isa 0
        SUBB      XAR4,#1               ; [CPU_ALU] |161| 
	.dwpsn	file "examples\common\spiflash_self_test.c",line 162,column 9,is_stmt,isa 0
        ANDB      AL,#0xff              ; [CPU_ALU] |162| 
        MOVB      *+XAR6[AR0],AL.LSB    ; [CPU_ALU] |162| 
	.dwpsn	file "examples\common\spiflash_self_test.c",line 161,column 26,is_stmt,isa 0
        MOVB      ACC,#0                ; [CPU_ALU] |161| 
        ADDB      XAR0,#1               ; [CPU_ALU] |161| 
        SUBB      ACC,#1                ; [CPU_ALU] |161| 
        CMPL      ACC,XAR4              ; [CPU_ALU] |161| 
        B         $C$L1,NEQ             ; [CPU_ALU] |161| 
        ; branchcc occurs ; [] |161| 
$C$L2:    
$C$DW$31	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$31, DW_AT_low_pc(0x00)
	.dwattr $C$DW$31, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$23, DW_AT_TI_end_file("examples\common\spiflash_self_test.c")
	.dwattr $C$DW$23, DW_AT_TI_end_line(0xa4)
	.dwattr $C$DW$23, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$23

	.sect	".text"
	.clink

$C$DW$32	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$32, DW_AT_name("emit_u32")
	.dwattr $C$DW$32, DW_AT_low_pc(_emit_u32)
	.dwattr $C$DW$32, DW_AT_high_pc(0x00)
	.dwattr $C$DW$32, DW_AT_TI_symbol_name("_emit_u32")
	.dwattr $C$DW$32, DW_AT_TI_begin_file("examples\common\spiflash_self_test.c")
	.dwattr $C$DW$32, DW_AT_TI_begin_line(0x19)
	.dwattr $C$DW$32, DW_AT_TI_begin_column(0x0d)
	.dwattr $C$DW$32, DW_AT_TI_max_frame_size(-26)
	.dwpsn	file "examples\common\spiflash_self_test.c",line 25,column 67,is_stmt,address _emit_u32,isa 0

	.dwfde $C$DW$CIE, _emit_u32
$C$DW$33	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$33, DW_AT_name("ctx")
	.dwattr $C$DW$33, DW_AT_TI_symbol_name("_ctx")
	.dwattr $C$DW$33, DW_AT_type(*$C$DW$T$38)
	.dwattr $C$DW$33, DW_AT_location[DW_OP_reg12]

$C$DW$34	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$34, DW_AT_name("v")
	.dwattr $C$DW$34, DW_AT_TI_symbol_name("_v")
	.dwattr $C$DW$34, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$34, DW_AT_location[DW_OP_reg0]


;***************************************************************
;* FNAME: _emit_u32                     FR SIZE:  24           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter, 24 Auto,  0 SOE     *
;***************************************************************

_emit_u32:
$C$DW$35	.dwtag  DW_TAG_variable
	.dwattr $C$DW$35, DW_AT_name("buf")
	.dwattr $C$DW$35, DW_AT_TI_symbol_name("_buf")
	.dwattr $C$DW$35, DW_AT_type(*$C$DW$T$165)
	.dwattr $C$DW$35, DW_AT_location[DW_OP_breg20 -12]

$C$DW$36	.dwtag  DW_TAG_variable
	.dwattr $C$DW$36, DW_AT_name("tmp")
	.dwattr $C$DW$36, DW_AT_TI_symbol_name("_tmp")
	.dwattr $C$DW$36, DW_AT_type(*$C$DW$T$165)
	.dwattr $C$DW$36, DW_AT_location[DW_OP_breg20 -24]

;* AR0   assigned to _ctx
$C$DW$37	.dwtag  DW_TAG_variable
	.dwattr $C$DW$37, DW_AT_name("ctx")
	.dwattr $C$DW$37, DW_AT_TI_symbol_name("_ctx")
	.dwattr $C$DW$37, DW_AT_type(*$C$DW$T$80)
	.dwattr $C$DW$37, DW_AT_location[DW_OP_reg4]

;* AR7   assigned to _v
$C$DW$38	.dwtag  DW_TAG_variable
	.dwattr $C$DW$38, DW_AT_name("v")
	.dwattr $C$DW$38, DW_AT_TI_symbol_name("_v")
	.dwattr $C$DW$38, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$38, DW_AT_location[DW_OP_reg18]

;* AR4   assigned to _i
$C$DW$39	.dwtag  DW_TAG_variable
	.dwattr $C$DW$39, DW_AT_name("i")
	.dwattr $C$DW$39, DW_AT_TI_symbol_name("_i")
	.dwattr $C$DW$39, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$39, DW_AT_location[DW_OP_reg12]

;* AR7   assigned to _j
$C$DW$40	.dwtag  DW_TAG_variable
	.dwattr $C$DW$40, DW_AT_name("j")
	.dwattr $C$DW$40, DW_AT_TI_symbol_name("_j")
	.dwattr $C$DW$40, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$40, DW_AT_location[DW_OP_reg18]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#24                ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -26
	.dwpsn	file "examples\common\spiflash_self_test.c",line 28,column 5,is_stmt,isa 0
        TEST      ACC                   ; [CPU_ALU] |28| 
	.dwpsn	file "examples\common\spiflash_self_test.c",line 25,column 67,is_stmt,isa 0
        MOVL      XAR7,ACC              ; [CPU_ALU] |25| 
        MOVL      XAR0,XAR4             ; [CPU_ALU] |25| 
	.dwpsn	file "examples\common\spiflash_self_test.c",line 28,column 5,is_stmt,isa 0
        B         $C$L3,NEQ             ; [CPU_ALU] |28| 
        ; branchcc occurs ; [] |28| 
	.dwpsn	file "examples\common\spiflash_self_test.c",line 29,column 9,is_stmt,isa 0
        MOVL      XAR5,#$C$FSL9         ; [CPU_ARAU] |29| 
	.dwpsn	file "examples\common\spiflash_self_test.c",line 30,column 9,is_stmt,isa 0
        B         $C$L9,UNC             ; [CPU_ALU] |30| 
        ; branch occurs ; [] |30| 
$C$L3:    
	.dwpsn	file "examples\common\spiflash_self_test.c",line 27,column 11,is_stmt,isa 0
        MOVB      XAR4,#0               ; [CPU_ALU] |27| 
        SETC      SXM                   ; [CPU_ALU] 
	.dwpsn	file "examples\common\spiflash_self_test.c",line 33,column 5,is_stmt,isa 0
        B         $C$L5,UNC             ; [CPU_ALU] |33| 
        ; branch occurs ; [] |33| 
$C$L4:    
	.dwpsn	file "examples\common\spiflash_self_test.c",line 34,column 9,is_stmt,isa 0
        MOVZ      AR5,SP                ; [CPU_ALU] |34| 
        MOVB      ACC,#10               ; [CPU_ALU] |34| 
        MOVL      P,XAR7                ; [CPU_ALU] |34| 
        MOVL      XAR6,ACC              ; [CPU_ALU] |34| 
        SUBB      XAR5,#24              ; [CPU_ARAU] |34| 
        MOVZ      AR5,AR5               ; [CPU_ALU] |34| 
        MOVB      ACC,#0                ; [CPU_ALU] |34| 
        RPT       #31
||     SUBCUL    ACC,XAR6              ; [CPU_ALU] |34| 
        MOVZ      AR6,AL                ; [CPU_ALU] |34| 
        MOVL      ACC,XAR5              ; [CPU_ALU] |34| 
        ADD       ACC,AR4               ; [CPU_ALU] |34| 
        MOVL      XAR5,ACC              ; [CPU_ALU] |34| 
        ADDB      XAR6,#48              ; [CPU_ALU] |34| 
	.dwpsn	file "examples\common\spiflash_self_test.c",line 35,column 9,is_stmt,isa 0
        MOVB      ACC,#10               ; [CPU_ALU] |35| 
	.dwpsn	file "examples\common\spiflash_self_test.c",line 34,column 9,is_stmt,isa 0
        MOV       *+XAR5[0],AR6         ; [CPU_ALU] |34| 
	.dwpsn	file "examples\common\spiflash_self_test.c",line 35,column 9,is_stmt,isa 0
        MOVL      XAR6,ACC              ; [CPU_ALU] |35| 
	.dwpsn	file "examples\common\spiflash_self_test.c",line 34,column 9,is_stmt,isa 0
        ADDB      XAR4,#1               ; [CPU_ALU] |34| 
	.dwpsn	file "examples\common\spiflash_self_test.c",line 35,column 9,is_stmt,isa 0
        MOVL      P,XAR7                ; [CPU_ALU] |35| 
        MOVB      ACC,#0                ; [CPU_ALU] |35| 
        RPT       #31
||     SUBCUL    ACC,XAR6              ; [CPU_ALU] |35| 
        MOVL      XAR7,P                ; [CPU_ALU] |35| 
$C$L5:    
        MOVL      ACC,XAR7              ; [CPU_ALU] 
	.dwpsn	file "examples\common\spiflash_self_test.c",line 33,column 12,is_stmt,isa 0
        B         $C$L6,EQ              ; [CPU_ALU] |33| 
        ; branchcc occurs ; [] |33| 
        MOV       AL,AR4                ; [CPU_ALU] 
        CMPB      AL,#11                ; [CPU_ALU] |33| 
        B         $C$L4,LT              ; [CPU_ALU] |33| 
        ; branchcc occurs ; [] |33| 
$C$L6:    
	.dwpsn	file "examples\common\spiflash_self_test.c",line 37,column 11,is_stmt,isa 0
        MOV       AL,AR4                ; [CPU_ALU] |37| 
        MOVB      XAR7,#0               ; [CPU_ALU] |37| 
	.dwpsn	file "examples\common\spiflash_self_test.c",line 38,column 12,is_stmt,isa 0
        B         $C$L8,LEQ             ; [CPU_ALU] |38| 
        ; branchcc occurs ; [] |38| 
        MOVZ      AR6,AR4               ; [CPU_ALU] 
        SETC      SXM                   ; [CPU_ALU] 
        SUBB      XAR6,#1               ; [CPU_ARAU] 
$C$L7:    
        MOV       AL,AR7                ; [CPU_ALU] 
        CMPB      AL,#11                ; [CPU_ALU] |38| 
        B         $C$L8,GEQ             ; [CPU_ALU] |38| 
        ; branchcc occurs ; [] |38| 
	.dwpsn	file "examples\common\spiflash_self_test.c",line 39,column 9,is_stmt,isa 0
        MOVZ      AR5,SP                ; [CPU_ALU] |39| 
        SUBB      XAR5,#24              ; [CPU_ARAU] |39| 
        MOVZ      AR5,AR5               ; [CPU_ALU] |39| 
        SUBB      XAR4,#1               ; [CPU_ARAU] |39| 
        MOVL      ACC,XAR5              ; [CPU_ALU] |39| 
        ADD       ACC,AR4               ; [CPU_ALU] |39| 
        MOVL      XAR5,ACC              ; [CPU_ALU] |39| 
        MOV       PL,*+XAR5[0]          ; [CPU_ALU] |39| 
        MOVZ      AR5,SP                ; [CPU_ALU] |39| 
        SUBB      XAR5,#12              ; [CPU_ARAU] |39| 
        MOVZ      AR5,AR5               ; [CPU_ALU] |39| 
        MOVL      ACC,XAR5              ; [CPU_ALU] |39| 
        ADD       ACC,AR7               ; [CPU_ALU] |39| 
        MOVL      XAR5,ACC              ; [CPU_ALU] |39| 
        ADDB      XAR7,#1               ; [CPU_ALU] |39| 
        MOV       *+XAR5[0],P           ; [CPU_ALU] |39| 
        BANZ      $C$L7,AR6--           ; [CPU_ALU] |39| 
        ; branchcc occurs ; [] |39| 
$C$L8:    
	.dwpsn	file "examples\common\spiflash_self_test.c",line 41,column 5,is_stmt,isa 0
        MOVZ      AR5,SP                ; [CPU_ALU] |41| 
        SUBB      XAR5,#12              ; [CPU_ARAU] |41| 
        MOVZ      AR5,AR5               ; [CPU_ALU] |41| 
        SETC      SXM                   ; [CPU_ALU] 
        MOVL      ACC,XAR5              ; [CPU_ALU] |41| 
        ADD       ACC,AR7               ; [CPU_ALU] |41| 
        MOVL      XAR5,ACC              ; [CPU_ALU] |41| 
        MOV       *+XAR5[0],#0          ; [CPU_ALU] |41| 
	.dwpsn	file "examples\common\spiflash_self_test.c",line 42,column 5,is_stmt,isa 0
        MOVZ      AR5,SP                ; [CPU_ALU] |42| 
        MOVL      XAR4,XAR0             ; [CPU_ALU] |42| 
        SUBB      XAR5,#12              ; [CPU_ARAU] |42| 
        MOVZ      AR5,AR5               ; [CPU_ALU] |42| 
$C$L9:    
$C$DW$41	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$41, DW_AT_low_pc(0x00)
	.dwattr $C$DW$41, DW_AT_name("_emit")
	.dwattr $C$DW$41, DW_AT_TI_call

        LCR       #_emit                ; [CPU_ALU] |42| 
        ; call occurs [#_emit] ; [] |42| 
        SUBB      SP,#24                ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$42	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$42, DW_AT_low_pc(0x00)
	.dwattr $C$DW$42, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$32, DW_AT_TI_end_file("examples\common\spiflash_self_test.c")
	.dwattr $C$DW$32, DW_AT_TI_end_line(0x2b)
	.dwattr $C$DW$32, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$32

	.sect	".text"
	.clink

$C$DW$43	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$43, DW_AT_name("emit_hex8")
	.dwattr $C$DW$43, DW_AT_low_pc(_emit_hex8)
	.dwattr $C$DW$43, DW_AT_high_pc(0x00)
	.dwattr $C$DW$43, DW_AT_TI_symbol_name("_emit_hex8")
	.dwattr $C$DW$43, DW_AT_TI_begin_file("examples\common\spiflash_self_test.c")
	.dwattr $C$DW$43, DW_AT_TI_begin_line(0x39)
	.dwattr $C$DW$43, DW_AT_TI_begin_column(0x0d)
	.dwattr $C$DW$43, DW_AT_TI_max_frame_size(-10)
	.dwpsn	file "examples\common\spiflash_self_test.c",line 57,column 67,is_stmt,address _emit_hex8,isa 0

	.dwfde $C$DW$CIE, _emit_hex8
$C$DW$44	.dwtag  DW_TAG_variable
	.dwattr $C$DW$44, DW_AT_name("hex")
	.dwattr $C$DW$44, DW_AT_TI_symbol_name("_hex$2")
	.dwattr $C$DW$44, DW_AT_type(*$C$DW$T$164)
	.dwattr $C$DW$44, DW_AT_location[DW_OP_addr _hex$2]

$C$DW$45	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$45, DW_AT_name("ctx")
	.dwattr $C$DW$45, DW_AT_TI_symbol_name("_ctx")
	.dwattr $C$DW$45, DW_AT_type(*$C$DW$T$38)
	.dwattr $C$DW$45, DW_AT_location[DW_OP_reg12]

$C$DW$46	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$46, DW_AT_name("v")
	.dwattr $C$DW$46, DW_AT_TI_symbol_name("_v")
	.dwattr $C$DW$46, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$46, DW_AT_location[DW_OP_reg0]


;***************************************************************
;* FNAME: _emit_hex8                    FR SIZE:   8           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  5 Auto,  2 SOE     *
;***************************************************************

_emit_hex8:
$C$DW$47	.dwtag  DW_TAG_variable
	.dwattr $C$DW$47, DW_AT_name("buf")
	.dwattr $C$DW$47, DW_AT_TI_symbol_name("_buf")
	.dwattr $C$DW$47, DW_AT_type(*$C$DW$T$168)
	.dwattr $C$DW$47, DW_AT_location[DW_OP_breg20 -5]

;* AL    assigned to _v
$C$DW$48	.dwtag  DW_TAG_variable
	.dwattr $C$DW$48, DW_AT_name("v")
	.dwattr $C$DW$48, DW_AT_TI_symbol_name("_v")
	.dwattr $C$DW$48, DW_AT_type(*$C$DW$T$43)
	.dwattr $C$DW$48, DW_AT_location[DW_OP_reg0]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        MOVL      *SP++,XAR1            ; [CPU_ALU] 
	.dwcfi	save_reg_to_mem, 7, 2
	.dwcfi	cfa_offset, -4
        ADDB      SP,#6                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -10
	.dwpsn	file "examples\common\spiflash_self_test.c",line 62,column 5,is_stmt,isa 0
        MOV       AH,AL                 ; [CPU_ALU] |62| 
        LSR       AH,4                  ; [CPU_ALU] |62| 
	.dwpsn	file "examples\common\spiflash_self_test.c",line 63,column 5,is_stmt,isa 0
        ANDB      AL,#15                ; [CPU_ALU] |63| 
	.dwpsn	file "examples\common\spiflash_self_test.c",line 60,column 5,is_stmt,isa 0
        MOVB      *-SP[5],#48,UNC       ; [CPU_ALU] |60| 
	.dwpsn	file "examples\common\spiflash_self_test.c",line 62,column 5,is_stmt,isa 0
        ANDB      AH,#0x0f              ; [CPU_ALU] |62| 
        MOVZ      AR1,AH                ; [CPU_ALU] |62| 
        MOVL      XAR5,#$C$FSL1         ; [CPU_ARAU] |62| 
	.dwpsn	file "examples\common\spiflash_self_test.c",line 63,column 5,is_stmt,isa 0
        MOVZ      AR0,AL                ; [CPU_ALU] |63| 
	.dwpsn	file "examples\common\spiflash_self_test.c",line 61,column 5,is_stmt,isa 0
        MOVB      *-SP[4],#120,UNC      ; [CPU_ALU] |61| 
	.dwpsn	file "examples\common\spiflash_self_test.c",line 62,column 5,is_stmt,isa 0
        MOV       AH,*+XAR5[AR1]        ; [CPU_ALU] |62| 
	.dwpsn	file "examples\common\spiflash_self_test.c",line 63,column 5,is_stmt,isa 0
        MOVL      XAR5,#$C$FSL1         ; [CPU_ARAU] |63| 
	.dwpsn	file "examples\common\spiflash_self_test.c",line 62,column 5,is_stmt,isa 0
        MOV       *-SP[3],AH            ; [CPU_ALU] |62| 
	.dwpsn	file "examples\common\spiflash_self_test.c",line 63,column 5,is_stmt,isa 0
        MOV       AL,*+XAR5[AR0]        ; [CPU_ALU] |63| 
	.dwpsn	file "examples\common\spiflash_self_test.c",line 65,column 5,is_stmt,isa 0
        MOVZ      AR5,SP                ; [CPU_ALU] |65| 
	.dwpsn	file "examples\common\spiflash_self_test.c",line 63,column 5,is_stmt,isa 0
        MOV       *-SP[2],AL            ; [CPU_ALU] |63| 
	.dwpsn	file "examples\common\spiflash_self_test.c",line 65,column 5,is_stmt,isa 0
        SUBB      XAR5,#5               ; [CPU_ARAU] |65| 
        MOVZ      AR5,AR5               ; [CPU_ALU] |65| 
	.dwpsn	file "examples\common\spiflash_self_test.c",line 64,column 5,is_stmt,isa 0
        MOV       *-SP[1],#0            ; [CPU_ALU] |64| 
	.dwpsn	file "examples\common\spiflash_self_test.c",line 65,column 5,is_stmt,isa 0
$C$DW$49	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$49, DW_AT_low_pc(0x00)
	.dwattr $C$DW$49, DW_AT_name("_emit")
	.dwattr $C$DW$49, DW_AT_TI_call

        LCR       #_emit                ; [CPU_ALU] |65| 
        ; call occurs [#_emit] ; [] |65| 
        SUBB      SP,#6                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -4
        MOVL      XAR1,*--SP            ; [CPU_ALU] 
	.dwcfi	cfa_offset, -2
	.dwcfi	restore_reg, 7
$C$DW$50	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$50, DW_AT_low_pc(0x00)
	.dwattr $C$DW$50, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$43, DW_AT_TI_end_file("examples\common\spiflash_self_test.c")
	.dwattr $C$DW$43, DW_AT_TI_end_line(0x42)
	.dwattr $C$DW$43, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$43

	.sect	".text"
	.clink

$C$DW$51	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$51, DW_AT_name("verify_erased")
	.dwattr $C$DW$51, DW_AT_low_pc(_verify_erased)
	.dwattr $C$DW$51, DW_AT_high_pc(0x00)
	.dwattr $C$DW$51, DW_AT_TI_symbol_name("_verify_erased")
	.dwattr $C$DW$51, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$51, DW_AT_TI_begin_file("examples\common\spiflash_self_test.c")
	.dwattr $C$DW$51, DW_AT_TI_begin_line(0x8c)
	.dwattr $C$DW$51, DW_AT_TI_begin_column(0x0c)
	.dwattr $C$DW$51, DW_AT_TI_max_frame_size(-10)
	.dwpsn	file "examples\common\spiflash_self_test.c",line 140,column 87,is_stmt,address _verify_erased,isa 0

	.dwfde $C$DW$CIE, _verify_erased
$C$DW$52	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$52, DW_AT_name("ctx")
	.dwattr $C$DW$52, DW_AT_TI_symbol_name("_ctx")
	.dwattr $C$DW$52, DW_AT_type(*$C$DW$T$38)
	.dwattr $C$DW$52, DW_AT_location[DW_OP_reg12]

$C$DW$53	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$53, DW_AT_name("off")
	.dwattr $C$DW$53, DW_AT_TI_symbol_name("_off")
	.dwattr $C$DW$53, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$53, DW_AT_location[DW_OP_reg0]

$C$DW$54	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$54, DW_AT_name("len")
	.dwattr $C$DW$54, DW_AT_TI_symbol_name("_len")
	.dwattr $C$DW$54, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$54, DW_AT_location[DW_OP_breg20 -12]


;***************************************************************
;* FNAME: _verify_erased                FR SIZE:   8           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            2 Parameter,  0 Auto,  6 SOE     *
;***************************************************************

_verify_erased:
;* AR4   assigned to $O$L1
;* AR5   assigned to $O$v1
;* AR1   assigned to _ctx
$C$DW$55	.dwtag  DW_TAG_variable
	.dwattr $C$DW$55, DW_AT_name("ctx")
	.dwattr $C$DW$55, DW_AT_TI_symbol_name("_ctx")
	.dwattr $C$DW$55, DW_AT_type(*$C$DW$T$80)
	.dwattr $C$DW$55, DW_AT_location[DW_OP_reg6]

;* AR3   assigned to _off
$C$DW$56	.dwtag  DW_TAG_variable
	.dwattr $C$DW$56, DW_AT_name("off")
	.dwattr $C$DW$56, DW_AT_TI_symbol_name("_off")
	.dwattr $C$DW$56, DW_AT_type(*$C$DW$T$163)
	.dwattr $C$DW$56, DW_AT_location[DW_OP_reg10]

;* AR2   assigned to _len
$C$DW$57	.dwtag  DW_TAG_variable
	.dwattr $C$DW$57, DW_AT_name("len")
	.dwattr $C$DW$57, DW_AT_TI_symbol_name("_len")
	.dwattr $C$DW$57, DW_AT_type(*$C$DW$T$163)
	.dwattr $C$DW$57, DW_AT_location[DW_OP_reg8]

;* AL    assigned to _rc
$C$DW$58	.dwtag  DW_TAG_variable
	.dwattr $C$DW$58, DW_AT_name("rc")
	.dwattr $C$DW$58, DW_AT_TI_symbol_name("_rc")
	.dwattr $C$DW$58, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$58, DW_AT_location[DW_OP_reg0]

;* AR2   assigned to _i
$C$DW$59	.dwtag  DW_TAG_variable
	.dwattr $C$DW$59, DW_AT_name("i")
	.dwattr $C$DW$59, DW_AT_TI_symbol_name("_i")
	.dwattr $C$DW$59, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$59, DW_AT_location[DW_OP_reg8]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        MOVL      *SP++,XAR1            ; [CPU_ALU] 
	.dwcfi	save_reg_to_mem, 7, 2
	.dwcfi	cfa_offset, -4
        MOVL      *SP++,XAR2            ; [CPU_ALU] 
	.dwcfi	save_reg_to_mem, 9, 4
	.dwcfi	cfa_offset, -6
        MOVL      *SP++,XAR3            ; [CPU_ALU] 
	.dwcfi	save_reg_to_mem, 11, 6
	.dwcfi	cfa_offset, -8
        ADDB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -10
        MOVL      XAR2,*-SP[12]         ; [CPU_ALU] |140| 
        MOVL      XAR1,XAR4             ; [CPU_ALU] |140| 
	.dwpsn	file "examples\common\spiflash_self_test.c",line 141,column 12,is_stmt,isa 0
        MOVB      XAR0,#10              ; [CPU_ALU] |141| 
	.dwpsn	file "examples\common\spiflash_self_test.c",line 140,column 87,is_stmt,isa 0
        MOVL      XAR3,ACC              ; [CPU_ALU] |140| 
	.dwpsn	file "examples\common\spiflash_self_test.c",line 141,column 12,is_stmt,isa 0
        MOVL      *-SP[2],XAR2          ; [CPU_ALU] |141| 
        MOVL      XAR4,*+XAR1[0]        ; [CPU_ALU] |141| 
        MOVL      XAR5,*+XAR1[AR0]      ; [CPU_ALU] |141| 
$C$DW$60	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$60, DW_AT_low_pc(0x00)
	.dwattr $C$DW$60, DW_AT_name("_SPIFLASH_read")
	.dwattr $C$DW$60, DW_AT_TI_call

        LCR       #_SPIFLASH_read       ; [CPU_ALU] |141| 
        ; call occurs [#_SPIFLASH_read] ; [] |141| 
        CMPB      AL,#0                 ; [CPU_ALU] |141| 
        B         $C$L13,NEQ            ; [CPU_ALU] |141| 
        ; branchcc occurs ; [] |141| 
        MOVL      ACC,XAR2              ; [CPU_ALU] 
	.dwpsn	file "examples\common\spiflash_self_test.c",line 143,column 26,is_stmt,isa 0
        B         $C$L12,EQ             ; [CPU_ALU] |143| 
        ; branchcc occurs ; [] |143| 
        SUBB      XAR2,#1               ; [CPU_ALU] 
        MOVL      XAR4,XAR2             ; [CPU_ALU] 
	.dwpsn	file "examples\common\spiflash_self_test.c",line 143,column 21,is_stmt,isa 0
        MOVB      XAR2,#0               ; [CPU_ALU] |143| 
        MOVB      XAR0,#10              ; [CPU_ALU] 
        MOVL      XAR5,*+XAR1[AR0]      ; [CPU_ALU] 
$C$L10:    
	.dwpsn	file "examples\common\spiflash_self_test.c",line 144,column 9,is_stmt,isa 0
        MOVZ      AR0,AR2               ; [CPU_ALU] |144| 
        MOVB      AL.LSB,*+XAR5[AR0]    ; [CPU_ALU] |144| 
        CMPB      AL,#255               ; [CPU_ALU] |144| 
        B         $C$L11,EQ             ; [CPU_ALU] |144| 
        ; branchcc occurs ; [] |144| 
	.dwpsn	file "examples\common\spiflash_self_test.c",line 145,column 13,is_stmt,isa 0
        MOVL      XAR4,XAR1             ; [CPU_ALU] |145| 
        MOVL      XAR5,#$C$FSL10        ; [CPU_ARAU] |145| 
$C$DW$61	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$61, DW_AT_low_pc(0x00)
	.dwattr $C$DW$61, DW_AT_name("_emit")
	.dwattr $C$DW$61, DW_AT_TI_call

        LCR       #_emit                ; [CPU_ALU] |145| 
        ; call occurs [#_emit] ; [] |145| 
	.dwpsn	file "examples\common\spiflash_self_test.c",line 146,column 13,is_stmt,isa 0
        MOVL      ACC,XAR2              ; [CPU_ALU] |146| 
        MOVL      XAR4,XAR1             ; [CPU_ALU] |146| 
        ADDL      ACC,XAR3              ; [CPU_ALU] |146| 
$C$DW$62	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$62, DW_AT_low_pc(0x00)
	.dwattr $C$DW$62, DW_AT_name("_emit_u32")
	.dwattr $C$DW$62, DW_AT_TI_call

        LCR       #_emit_u32            ; [CPU_ALU] |146| 
        ; call occurs [#_emit_u32] ; [] |146| 
	.dwpsn	file "examples\common\spiflash_self_test.c",line 147,column 13,is_stmt,isa 0
        MOVL      XAR4,XAR1             ; [CPU_ALU] |147| 
        MOVL      XAR5,#$C$FSL11        ; [CPU_ARAU] |147| 
$C$DW$63	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$63, DW_AT_low_pc(0x00)
	.dwattr $C$DW$63, DW_AT_name("_emit")
	.dwattr $C$DW$63, DW_AT_TI_call

        LCR       #_emit                ; [CPU_ALU] |147| 
        ; call occurs [#_emit] ; [] |147| 
	.dwpsn	file "examples\common\spiflash_self_test.c",line 148,column 13,is_stmt,isa 0
        MOVB      XAR0,#10              ; [CPU_ALU] |148| 
        MOVL      XAR4,*+XAR1[AR0]      ; [CPU_ALU] |148| 
        MOVZ      AR0,AR2               ; [CPU_ALU] |148| 
        MOVB      AL.LSB,*+XAR4[AR0]    ; [CPU_ALU] |148| 
        MOVL      XAR4,XAR1             ; [CPU_ALU] |148| 
$C$DW$64	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$64, DW_AT_low_pc(0x00)
	.dwattr $C$DW$64, DW_AT_name("_emit_hex8")
	.dwattr $C$DW$64, DW_AT_TI_call

        LCR       #_emit_hex8           ; [CPU_ALU] |148| 
        ; call occurs [#_emit_hex8] ; [] |148| 
	.dwpsn	file "examples\common\spiflash_self_test.c",line 149,column 13,is_stmt,isa 0
        MOVL      XAR4,XAR1             ; [CPU_ALU] |149| 
        MOVL      XAR5,#$C$FSL12        ; [CPU_ARAU] |149| 
$C$DW$65	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$65, DW_AT_low_pc(0x00)
	.dwattr $C$DW$65, DW_AT_name("_emit")
	.dwattr $C$DW$65, DW_AT_TI_call

        LCR       #_emit                ; [CPU_ALU] |149| 
        ; call occurs [#_emit] ; [] |149| 
	.dwpsn	file "examples\common\spiflash_self_test.c",line 150,column 13,is_stmt,isa 0
        MOV       AL,#-2                ; [CPU_ALU] |150| 
        B         $C$L13,UNC            ; [CPU_ALU] |150| 
        ; branch occurs ; [] |150| 
$C$L11:    
	.dwpsn	file "examples\common\spiflash_self_test.c",line 143,column 26,is_stmt,isa 0
        MOVB      ACC,#0                ; [CPU_ALU] |143| 
        SUBB      XAR4,#1               ; [CPU_ALU] |143| 
        ADDB      XAR2,#1               ; [CPU_ALU] |143| 
        SUBB      ACC,#1                ; [CPU_ALU] |143| 
        CMPL      ACC,XAR4              ; [CPU_ALU] |143| 
        B         $C$L10,NEQ            ; [CPU_ALU] |143| 
        ; branchcc occurs ; [] |143| 
$C$L12:    
	.dwpsn	file "examples\common\spiflash_self_test.c",line 153,column 5,is_stmt,isa 0
        MOVB      AL,#0                 ; [CPU_ALU] |153| 
$C$L13:    
        SUBB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -8
        MOVL      XAR3,*--SP            ; [CPU_ALU] 
	.dwcfi	cfa_offset, -6
	.dwcfi	restore_reg, 11
        MOVL      XAR2,*--SP            ; [CPU_ALU] 
	.dwcfi	cfa_offset, -4
	.dwcfi	restore_reg, 9
        MOVL      XAR1,*--SP            ; [CPU_ALU] 
	.dwcfi	cfa_offset, -2
	.dwcfi	restore_reg, 7
$C$DW$66	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$66, DW_AT_low_pc(0x00)
	.dwattr $C$DW$66, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$51, DW_AT_TI_end_file("examples\common\spiflash_self_test.c")
	.dwattr $C$DW$51, DW_AT_TI_end_line(0x9a)
	.dwattr $C$DW$51, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$51

	.sect	".text"
	.clink

$C$DW$67	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$67, DW_AT_name("t_unwritten_remains_ff")
	.dwattr $C$DW$67, DW_AT_low_pc(_t_unwritten_remains_ff)
	.dwattr $C$DW$67, DW_AT_high_pc(0x00)
	.dwattr $C$DW$67, DW_AT_TI_symbol_name("_t_unwritten_remains_ff")
	.dwattr $C$DW$67, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$67, DW_AT_TI_begin_file("examples\common\spiflash_self_test.c")
	.dwattr $C$DW$67, DW_AT_TI_begin_line(0xd8)
	.dwattr $C$DW$67, DW_AT_TI_begin_column(0x0c)
	.dwattr $C$DW$67, DW_AT_TI_max_frame_size(-4)
	.dwpsn	file "examples\common\spiflash_self_test.c",line 216,column 68,is_stmt,address _t_unwritten_remains_ff,isa 0

	.dwfde $C$DW$CIE, _t_unwritten_remains_ff
$C$DW$68	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$68, DW_AT_name("ctx")
	.dwattr $C$DW$68, DW_AT_TI_symbol_name("_ctx")
	.dwattr $C$DW$68, DW_AT_type(*$C$DW$T$38)
	.dwattr $C$DW$68, DW_AT_location[DW_OP_reg12]


;***************************************************************
;* FNAME: _t_unwritten_remains_ff       FR SIZE:   2           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            2 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_t_unwritten_remains_ff:
;* AR4   assigned to _ctx
$C$DW$69	.dwtag  DW_TAG_variable
	.dwattr $C$DW$69, DW_AT_name("ctx")
	.dwattr $C$DW$69, DW_AT_TI_symbol_name("_ctx")
	.dwattr $C$DW$69, DW_AT_type(*$C$DW$T$80)
	.dwattr $C$DW$69, DW_AT_location[DW_OP_reg12]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -4
	.dwpsn	file "examples\common\spiflash_self_test.c",line 220,column 5,is_stmt,isa 0
        MOVB      ACC,#100              ; [CPU_ALU] |220| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |220| 
        MOVL      ACC,*+XAR4[6]         ; [CPU_ALU] |220| 
$C$DW$70	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$70, DW_AT_low_pc(0x00)
	.dwattr $C$DW$70, DW_AT_name("_verify_erased")
	.dwattr $C$DW$70, DW_AT_TI_call

        LCR       #_verify_erased       ; [CPU_ALU] |220| 
        ; call occurs [#_verify_erased] ; [] |220| 
        SUBB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$71	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$71, DW_AT_low_pc(0x00)
	.dwattr $C$DW$71, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$67, DW_AT_TI_end_file("examples\common\spiflash_self_test.c")
	.dwattr $C$DW$67, DW_AT_TI_end_line(0xdd)
	.dwattr $C$DW$67, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$67

	.sect	".text"
	.clink

$C$DW$72	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$72, DW_AT_name("t_page_boundary")
	.dwattr $C$DW$72, DW_AT_low_pc(_t_page_boundary)
	.dwattr $C$DW$72, DW_AT_high_pc(0x00)
	.dwattr $C$DW$72, DW_AT_TI_symbol_name("_t_page_boundary")
	.dwattr $C$DW$72, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$72, DW_AT_TI_begin_file("examples\common\spiflash_self_test.c")
	.dwattr $C$DW$72, DW_AT_TI_begin_line(0xc3)
	.dwattr $C$DW$72, DW_AT_TI_begin_column(0x0c)
	.dwattr $C$DW$72, DW_AT_TI_max_frame_size(-10)
	.dwpsn	file "examples\common\spiflash_self_test.c",line 195,column 61,is_stmt,address _t_page_boundary,isa 0

	.dwfde $C$DW$CIE, _t_page_boundary
$C$DW$73	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$73, DW_AT_name("ctx")
	.dwattr $C$DW$73, DW_AT_TI_symbol_name("_ctx")
	.dwattr $C$DW$73, DW_AT_type(*$C$DW$T$38)
	.dwattr $C$DW$73, DW_AT_location[DW_OP_reg12]


;***************************************************************
;* FNAME: _t_page_boundary              FR SIZE:   8           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            2 Parameter,  0 Auto,  6 SOE     *
;***************************************************************

_t_page_boundary:
;* AR1   assigned to $O$C61
;* AR6   assigned to $O$C62
;* AL    assigned to _rc
$C$DW$74	.dwtag  DW_TAG_variable
	.dwattr $C$DW$74, DW_AT_name("rc")
	.dwattr $C$DW$74, DW_AT_TI_symbol_name("_rc")
	.dwattr $C$DW$74, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$74, DW_AT_location[DW_OP_reg0]

;* AL    assigned to _rc
$C$DW$75	.dwtag  DW_TAG_variable
	.dwattr $C$DW$75, DW_AT_name("rc")
	.dwattr $C$DW$75, DW_AT_TI_symbol_name("_rc")
	.dwattr $C$DW$75, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$75, DW_AT_location[DW_OP_reg0]

;* AL    assigned to _rc
$C$DW$76	.dwtag  DW_TAG_variable
	.dwattr $C$DW$76, DW_AT_name("rc")
	.dwattr $C$DW$76, DW_AT_TI_symbol_name("_rc")
	.dwattr $C$DW$76, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$76, DW_AT_location[DW_OP_reg0]

;* AR3   assigned to _ctx
$C$DW$77	.dwtag  DW_TAG_variable
	.dwattr $C$DW$77, DW_AT_name("ctx")
	.dwattr $C$DW$77, DW_AT_TI_symbol_name("_ctx")
	.dwattr $C$DW$77, DW_AT_type(*$C$DW$T$80)
	.dwattr $C$DW$77, DW_AT_location[DW_OP_reg10]

;* AR2   assigned to _off
$C$DW$78	.dwtag  DW_TAG_variable
	.dwattr $C$DW$78, DW_AT_name("off")
	.dwattr $C$DW$78, DW_AT_TI_symbol_name("_off")
	.dwattr $C$DW$78, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$78, DW_AT_location[DW_OP_reg8]

;* AR6   assigned to _max_len
$C$DW$79	.dwtag  DW_TAG_variable
	.dwattr $C$DW$79, DW_AT_name("max_len")
	.dwattr $C$DW$79, DW_AT_TI_symbol_name("_max_len")
	.dwattr $C$DW$79, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$79, DW_AT_location[DW_OP_reg16]

;* AR1   assigned to _len
$C$DW$80	.dwtag  DW_TAG_variable
	.dwattr $C$DW$80, DW_AT_name("len")
	.dwattr $C$DW$80, DW_AT_TI_symbol_name("_len")
	.dwattr $C$DW$80, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$80, DW_AT_location[DW_OP_reg6]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        MOVL      *SP++,XAR1            ; [CPU_ALU] 
	.dwcfi	save_reg_to_mem, 7, 2
	.dwcfi	cfa_offset, -4
        MOVL      *SP++,XAR2            ; [CPU_ALU] 
	.dwcfi	save_reg_to_mem, 9, 4
	.dwcfi	cfa_offset, -6
        MOVL      *SP++,XAR3            ; [CPU_ALU] 
	.dwcfi	save_reg_to_mem, 11, 6
	.dwcfi	cfa_offset, -8
        ADDB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -10
        MOVL      XAR3,XAR4             ; [CPU_ALU] |195| 
	.dwpsn	file "examples\common\spiflash_self_test.c",line 201,column 12,is_stmt,isa 0
        MOVB      XAR0,#8               ; [CPU_ALU] |201| 
        MOVL      ACC,*+XAR3[AR0]       ; [CPU_ALU] |201| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |201| 
        MOVL      XAR4,*+XAR3[0]        ; [CPU_ALU] |201| 
        MOVL      ACC,*+XAR3[6]         ; [CPU_ALU] |201| 
$C$DW$81	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$81, DW_AT_low_pc(0x00)
	.dwattr $C$DW$81, DW_AT_name("_SPIFLASH_erase")
	.dwattr $C$DW$81, DW_AT_TI_call

        LCR       #_SPIFLASH_erase      ; [CPU_ALU] |201| 
        ; call occurs [#_SPIFLASH_erase] ; [] |201| 
        CMPB      AL,#0                 ; [CPU_ALU] |201| 
        B         $C$L15,NEQ            ; [CPU_ALU] |201| 
        ; branchcc occurs ; [] |201| 
	.dwpsn	file "examples\common\spiflash_self_test.c",line 204,column 18,is_stmt,isa 0
        MOVL      XAR6,*+XAR3[6]        ; [CPU_ALU] |204| 
	.dwpsn	file "examples\common\spiflash_self_test.c",line 205,column 22,is_stmt,isa 0
        MOVB      XAR0,#8               ; [CPU_ALU] |205| 
        MOVL      XAR1,*+XAR3[AR0]      ; [CPU_ALU] |205| 
	.dwpsn	file "examples\common\spiflash_self_test.c",line 204,column 18,is_stmt,isa 0
        MOVL      XAR2,XAR6             ; [CPU_ALU] |204| 
	.dwpsn	file "examples\common\spiflash_self_test.c",line 205,column 22,is_stmt,isa 0
        MOVL      ACC,XAR1              ; [CPU_ALU] |205| 
	.dwpsn	file "examples\common\spiflash_self_test.c",line 204,column 18,is_stmt,isa 0
        ADDB      XAR2,#100             ; [CPU_ALU] |204| 
	.dwpsn	file "examples\common\spiflash_self_test.c",line 205,column 22,is_stmt,isa 0
        ADDL      ACC,XAR6              ; [CPU_ALU] |205| 
        SUBL      ACC,XAR2              ; [CPU_ALU] |205| 
        MOVL      XAR6,ACC              ; [CPU_ALU] |205| 
	.dwpsn	file "examples\common\spiflash_self_test.c",line 206,column 18,is_stmt,isa 0
        MOVL      ACC,XAR1              ; [CPU_ALU] |206| 
        SUBB      ACC,#100              ; [CPU_ALU] |206| 
        CMPL      ACC,XAR1              ; [CPU_ALU] |206| 
        B         $C$L14,HIS            ; [CPU_ALU] |206| 
        ; branchcc occurs ; [] |206| 
        MOVL      XAR1,XAR6             ; [CPU_ALU] |206| 
$C$L14:    
	.dwpsn	file "examples\common\spiflash_self_test.c",line 208,column 5,is_stmt,isa 0
        MOVL      XAR4,XAR3             ; [CPU_ALU] |208| 
        MOVL      ACC,XAR1              ; [CPU_ALU] |208| 
        MOVB      XAR5,#165             ; [CPU_ALU] |208| 
$C$DW$82	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$82, DW_AT_low_pc(0x00)
	.dwattr $C$DW$82, DW_AT_name("_fill_pattern")
	.dwattr $C$DW$82, DW_AT_TI_call

        LCR       #_fill_pattern        ; [CPU_ALU] |208| 
        ; call occurs [#_fill_pattern] ; [] |208| 
	.dwpsn	file "examples\common\spiflash_self_test.c",line 210,column 28,is_stmt,isa 0
        MOVL      *-SP[2],XAR1          ; [CPU_ALU] |210| 
        MOVB      XAR0,#10              ; [CPU_ALU] |210| 
        MOVL      ACC,XAR2              ; [CPU_ALU] |210| 
        MOVL      XAR4,*+XAR3[0]        ; [CPU_ALU] |210| 
        MOVL      XAR5,*+XAR3[AR0]      ; [CPU_ALU] |210| 
$C$DW$83	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$83, DW_AT_low_pc(0x00)
	.dwattr $C$DW$83, DW_AT_name("_SPIFLASH_write")
	.dwattr $C$DW$83, DW_AT_TI_call

        LCR       #_SPIFLASH_write      ; [CPU_ALU] |210| 
        ; call occurs [#_SPIFLASH_write] ; [] |210| 
        CMPB      AL,#0                 ; [CPU_ALU] |210| 
        B         $C$L15,NEQ            ; [CPU_ALU] |210| 
        ; branchcc occurs ; [] |210| 
        MOVL      *-SP[2],XAR1          ; [CPU_ALU] |210| 
        MOVB      XAR0,#12              ; [CPU_ALU] |210| 
        MOVL      ACC,XAR2              ; [CPU_ALU] |210| 
        MOVL      XAR4,*+XAR3[0]        ; [CPU_ALU] |210| 
        MOVL      XAR5,*+XAR3[AR0]      ; [CPU_ALU] |210| 
$C$DW$84	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$84, DW_AT_low_pc(0x00)
	.dwattr $C$DW$84, DW_AT_name("_SPIFLASH_read")
	.dwattr $C$DW$84, DW_AT_TI_call

        LCR       #_SPIFLASH_read       ; [CPU_ALU] |210| 
        ; call occurs [#_SPIFLASH_read] ; [] |210| 
        CMPB      AL,#0                 ; [CPU_ALU] |210| 
        B         $C$L15,NEQ            ; [CPU_ALU] |210| 
        ; branchcc occurs ; [] |210| 
        MOVL      XAR4,XAR3             ; [CPU_ALU] |210| 
        MOVL      ACC,XAR1              ; [CPU_ALU] |210| 
        MOVB      XAR5,#165             ; [CPU_ALU] |210| 
$C$DW$85	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$85, DW_AT_low_pc(0x00)
	.dwattr $C$DW$85, DW_AT_name("_compare_pattern")
	.dwattr $C$DW$85, DW_AT_TI_call

        LCR       #_compare_pattern     ; [CPU_ALU] |210| 
        ; call occurs [#_compare_pattern] ; [] |210| 
$C$L15:    
        SUBB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -8
        MOVL      XAR3,*--SP            ; [CPU_ALU] 
	.dwcfi	cfa_offset, -6
	.dwcfi	restore_reg, 11
        MOVL      XAR2,*--SP            ; [CPU_ALU] 
	.dwcfi	cfa_offset, -4
	.dwcfi	restore_reg, 9
        MOVL      XAR1,*--SP            ; [CPU_ALU] 
	.dwcfi	cfa_offset, -2
	.dwcfi	restore_reg, 7
$C$DW$86	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$86, DW_AT_low_pc(0x00)
	.dwattr $C$DW$86, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$72, DW_AT_TI_end_file("examples\common\spiflash_self_test.c")
	.dwattr $C$DW$72, DW_AT_TI_end_line(0xd6)
	.dwattr $C$DW$72, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$72

	.sect	".text"
	.clink

$C$DW$87	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$87, DW_AT_name("t_verify_erased")
	.dwattr $C$DW$87, DW_AT_low_pc(_t_verify_erased)
	.dwattr $C$DW$87, DW_AT_high_pc(0x00)
	.dwattr $C$DW$87, DW_AT_TI_symbol_name("_t_verify_erased")
	.dwattr $C$DW$87, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$87, DW_AT_TI_begin_file("examples\common\spiflash_self_test.c")
	.dwattr $C$DW$87, DW_AT_TI_begin_line(0x9c)
	.dwattr $C$DW$87, DW_AT_TI_begin_column(0x0c)
	.dwattr $C$DW$87, DW_AT_TI_max_frame_size(-4)
	.dwpsn	file "examples\common\spiflash_self_test.c",line 156,column 61,is_stmt,address _t_verify_erased,isa 0

	.dwfde $C$DW$CIE, _t_verify_erased
$C$DW$88	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$88, DW_AT_name("ctx")
	.dwattr $C$DW$88, DW_AT_TI_symbol_name("_ctx")
	.dwattr $C$DW$88, DW_AT_type(*$C$DW$T$38)
	.dwattr $C$DW$88, DW_AT_location[DW_OP_reg12]


;***************************************************************
;* FNAME: _t_verify_erased              FR SIZE:   2           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            2 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_t_verify_erased:
;* AR4   assigned to _ctx
$C$DW$89	.dwtag  DW_TAG_variable
	.dwattr $C$DW$89, DW_AT_name("ctx")
	.dwattr $C$DW$89, DW_AT_TI_symbol_name("_ctx")
	.dwattr $C$DW$89, DW_AT_type(*$C$DW$T$80)
	.dwattr $C$DW$89, DW_AT_location[DW_OP_reg12]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -4
	.dwpsn	file "examples\common\spiflash_self_test.c",line 157,column 5,is_stmt,isa 0
        MOVB      XAR0,#8               ; [CPU_ALU] |157| 
        MOVL      ACC,*+XAR4[AR0]       ; [CPU_ALU] |157| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |157| 
        MOVL      ACC,*+XAR4[6]         ; [CPU_ALU] |157| 
$C$DW$90	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$90, DW_AT_low_pc(0x00)
	.dwattr $C$DW$90, DW_AT_name("_verify_erased")
	.dwattr $C$DW$90, DW_AT_TI_call

        LCR       #_verify_erased       ; [CPU_ALU] |157| 
        ; call occurs [#_verify_erased] ; [] |157| 
        SUBB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$91	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$91, DW_AT_low_pc(0x00)
	.dwattr $C$DW$91, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$87, DW_AT_TI_end_file("examples\common\spiflash_self_test.c")
	.dwattr $C$DW$87, DW_AT_TI_end_line(0x9e)
	.dwattr $C$DW$87, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$87

	.sect	".text"
	.clink

$C$DW$92	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$92, DW_AT_name("t_erase_sector")
	.dwattr $C$DW$92, DW_AT_low_pc(_t_erase_sector)
	.dwattr $C$DW$92, DW_AT_high_pc(0x00)
	.dwattr $C$DW$92, DW_AT_TI_symbol_name("_t_erase_sector")
	.dwattr $C$DW$92, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$92, DW_AT_TI_begin_file("examples\common\spiflash_self_test.c")
	.dwattr $C$DW$92, DW_AT_TI_begin_line(0x82)
	.dwattr $C$DW$92, DW_AT_TI_begin_column(0x0c)
	.dwattr $C$DW$92, DW_AT_TI_max_frame_size(-4)
	.dwpsn	file "examples\common\spiflash_self_test.c",line 130,column 60,is_stmt,address _t_erase_sector,isa 0

	.dwfde $C$DW$CIE, _t_erase_sector
$C$DW$93	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$93, DW_AT_name("ctx")
	.dwattr $C$DW$93, DW_AT_TI_symbol_name("_ctx")
	.dwattr $C$DW$93, DW_AT_type(*$C$DW$T$38)
	.dwattr $C$DW$93, DW_AT_location[DW_OP_reg12]


;***************************************************************
;* FNAME: _t_erase_sector               FR SIZE:   2           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            2 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_t_erase_sector:
;* AR4   assigned to _ctx
$C$DW$94	.dwtag  DW_TAG_variable
	.dwattr $C$DW$94, DW_AT_name("ctx")
	.dwattr $C$DW$94, DW_AT_TI_symbol_name("_ctx")
	.dwattr $C$DW$94, DW_AT_type(*$C$DW$T$80)
	.dwattr $C$DW$94, DW_AT_location[DW_OP_reg12]

;* AL    assigned to _rc
$C$DW$95	.dwtag  DW_TAG_variable
	.dwattr $C$DW$95, DW_AT_name("rc")
	.dwattr $C$DW$95, DW_AT_TI_symbol_name("_rc")
	.dwattr $C$DW$95, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$95, DW_AT_location[DW_OP_reg0]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -4
	.dwpsn	file "examples\common\spiflash_self_test.c",line 136,column 28,is_stmt,isa 0
        MOVB      XAR0,#8               ; [CPU_ALU] |136| 
        MOVL      ACC,*+XAR4[AR0]       ; [CPU_ALU] |136| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |136| 
        MOVL      ACC,*+XAR4[6]         ; [CPU_ALU] |136| 
        MOVL      XAR4,*+XAR4[0]        ; [CPU_ALU] |136| 
$C$DW$96	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$96, DW_AT_low_pc(0x00)
	.dwattr $C$DW$96, DW_AT_name("_SPIFLASH_erase")
	.dwattr $C$DW$96, DW_AT_TI_call

        LCR       #_SPIFLASH_erase      ; [CPU_ALU] |136| 
        ; call occurs [#_SPIFLASH_erase] ; [] |136| 
        CMPB      AL,#0                 ; [CPU_ALU] |136| 
        MOVB      AL,#0,EQ              ; [CPU_ALU] |136| 
        SUBB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$97	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$97, DW_AT_low_pc(0x00)
	.dwattr $C$DW$97, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$92, DW_AT_TI_end_file("examples\common\spiflash_self_test.c")
	.dwattr $C$DW$92, DW_AT_TI_end_line(0x8a)
	.dwattr $C$DW$92, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$92

	.sect	".text"
	.clink

$C$DW$98	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$98, DW_AT_name("t_read_sr")
	.dwattr $C$DW$98, DW_AT_low_pc(_t_read_sr)
	.dwattr $C$DW$98, DW_AT_high_pc(0x00)
	.dwattr $C$DW$98, DW_AT_TI_symbol_name("_t_read_sr")
	.dwattr $C$DW$98, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$98, DW_AT_TI_begin_file("examples\common\spiflash_self_test.c")
	.dwattr $C$DW$98, DW_AT_TI_begin_line(0x78)
	.dwattr $C$DW$98, DW_AT_TI_begin_column(0x0c)
	.dwattr $C$DW$98, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "examples\common\spiflash_self_test.c",line 120,column 55,is_stmt,address _t_read_sr,isa 0

	.dwfde $C$DW$CIE, _t_read_sr
$C$DW$99	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$99, DW_AT_name("ctx")
	.dwattr $C$DW$99, DW_AT_TI_symbol_name("_ctx")
	.dwattr $C$DW$99, DW_AT_type(*$C$DW$T$38)
	.dwattr $C$DW$99, DW_AT_location[DW_OP_reg12]


;***************************************************************
;* FNAME: _t_read_sr                    FR SIZE:   4           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  1 Auto,  2 SOE     *
;***************************************************************

_t_read_sr:
$C$DW$100	.dwtag  DW_TAG_variable
	.dwattr $C$DW$100, DW_AT_name("sr")
	.dwattr $C$DW$100, DW_AT_TI_symbol_name("_sr")
	.dwattr $C$DW$100, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$100, DW_AT_location[DW_OP_breg20 -1]

;* AR1   assigned to _ctx
$C$DW$101	.dwtag  DW_TAG_variable
	.dwattr $C$DW$101, DW_AT_name("ctx")
	.dwattr $C$DW$101, DW_AT_TI_symbol_name("_ctx")
	.dwattr $C$DW$101, DW_AT_type(*$C$DW$T$80)
	.dwattr $C$DW$101, DW_AT_location[DW_OP_reg6]

;* AL    assigned to _rc
$C$DW$102	.dwtag  DW_TAG_variable
	.dwattr $C$DW$102, DW_AT_name("rc")
	.dwattr $C$DW$102, DW_AT_TI_symbol_name("_rc")
	.dwattr $C$DW$102, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$102, DW_AT_location[DW_OP_reg0]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        MOVL      *SP++,XAR1            ; [CPU_ALU] 
	.dwcfi	save_reg_to_mem, 7, 2
	.dwcfi	cfa_offset, -4
        ADDB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -6
	.dwpsn	file "examples\common\spiflash_self_test.c",line 122,column 12,is_stmt,isa 0
        MOVZ      AR5,SP                ; [CPU_ALU] |122| 
	.dwpsn	file "examples\common\spiflash_self_test.c",line 120,column 55,is_stmt,isa 0
        MOVL      XAR1,XAR4             ; [CPU_ALU] |120| 
	.dwpsn	file "examples\common\spiflash_self_test.c",line 121,column 16,is_stmt,isa 0
        MOV       *-SP[1],#0            ; [CPU_ALU] |121| 
	.dwpsn	file "examples\common\spiflash_self_test.c",line 122,column 12,is_stmt,isa 0
        SUBB      XAR5,#1               ; [CPU_ARAU] |122| 
        MOVZ      AR5,AR5               ; [CPU_ALU] |122| 
        MOVL      XAR4,*+XAR1[0]        ; [CPU_ALU] |122| 
$C$DW$103	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$103, DW_AT_low_pc(0x00)
	.dwattr $C$DW$103, DW_AT_name("_SPIFLASH_read_sr")
	.dwattr $C$DW$103, DW_AT_TI_call

        LCR       #_SPIFLASH_read_sr    ; [CPU_ALU] |122| 
        ; call occurs [#_SPIFLASH_read_sr] ; [] |122| 
        CMPB      AL,#0                 ; [CPU_ALU] |122| 
        B         $C$L16,NEQ            ; [CPU_ALU] |122| 
        ; branchcc occurs ; [] |122| 
	.dwpsn	file "examples\common\spiflash_self_test.c",line 124,column 5,is_stmt,isa 0
        MOVL      XAR4,XAR1             ; [CPU_ALU] |124| 
        MOVL      XAR5,#$C$FSL13        ; [CPU_ARAU] |124| 
$C$DW$104	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$104, DW_AT_low_pc(0x00)
	.dwattr $C$DW$104, DW_AT_name("_emit")
	.dwattr $C$DW$104, DW_AT_TI_call

        LCR       #_emit                ; [CPU_ALU] |124| 
        ; call occurs [#_emit] ; [] |124| 
	.dwpsn	file "examples\common\spiflash_self_test.c",line 125,column 5,is_stmt,isa 0
        MOVL      XAR4,XAR1             ; [CPU_ALU] |125| 
        MOV       AL,*-SP[1]            ; [CPU_ALU] |125| 
$C$DW$105	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$105, DW_AT_low_pc(0x00)
	.dwattr $C$DW$105, DW_AT_name("_emit_hex8")
	.dwattr $C$DW$105, DW_AT_TI_call

        LCR       #_emit_hex8           ; [CPU_ALU] |125| 
        ; call occurs [#_emit_hex8] ; [] |125| 
	.dwpsn	file "examples\common\spiflash_self_test.c",line 126,column 5,is_stmt,isa 0
        MOVL      XAR4,XAR1             ; [CPU_ALU] |126| 
        MOVL      XAR5,#$C$FSL12        ; [CPU_ARAU] |126| 
$C$DW$106	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$106, DW_AT_low_pc(0x00)
	.dwattr $C$DW$106, DW_AT_name("_emit")
	.dwattr $C$DW$106, DW_AT_TI_call

        LCR       #_emit                ; [CPU_ALU] |126| 
        ; call occurs [#_emit] ; [] |126| 
	.dwpsn	file "examples\common\spiflash_self_test.c",line 127,column 5,is_stmt,isa 0
        MOVB      AL,#0                 ; [CPU_ALU] |127| 
$C$L16:    
        SUBB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -4
        MOVL      XAR1,*--SP            ; [CPU_ALU] 
	.dwcfi	cfa_offset, -2
	.dwcfi	restore_reg, 7
$C$DW$107	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$107, DW_AT_low_pc(0x00)
	.dwattr $C$DW$107, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$98, DW_AT_TI_end_file("examples\common\spiflash_self_test.c")
	.dwattr $C$DW$98, DW_AT_TI_end_line(0x80)
	.dwattr $C$DW$98, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$98

	.sect	".text"
	.clink

$C$DW$108	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$108, DW_AT_name("emit_hex32")
	.dwattr $C$DW$108, DW_AT_low_pc(_emit_hex32)
	.dwattr $C$DW$108, DW_AT_high_pc(0x00)
	.dwattr $C$DW$108, DW_AT_TI_symbol_name("_emit_hex32")
	.dwattr $C$DW$108, DW_AT_TI_begin_file("examples\common\spiflash_self_test.c")
	.dwattr $C$DW$108, DW_AT_TI_begin_line(0x2d)
	.dwattr $C$DW$108, DW_AT_TI_begin_column(0x0d)
	.dwattr $C$DW$108, DW_AT_TI_max_frame_size(-14)
	.dwpsn	file "examples\common\spiflash_self_test.c",line 45,column 69,is_stmt,address _emit_hex32,isa 0

	.dwfde $C$DW$CIE, _emit_hex32
$C$DW$109	.dwtag  DW_TAG_variable
	.dwattr $C$DW$109, DW_AT_name("hex")
	.dwattr $C$DW$109, DW_AT_TI_symbol_name("_hex$1")
	.dwattr $C$DW$109, DW_AT_type(*$C$DW$T$164)
	.dwattr $C$DW$109, DW_AT_location[DW_OP_addr _hex$1]

$C$DW$110	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$110, DW_AT_name("ctx")
	.dwattr $C$DW$110, DW_AT_TI_symbol_name("_ctx")
	.dwattr $C$DW$110, DW_AT_type(*$C$DW$T$38)
	.dwattr $C$DW$110, DW_AT_location[DW_OP_reg12]

$C$DW$111	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$111, DW_AT_name("v")
	.dwattr $C$DW$111, DW_AT_TI_symbol_name("_v")
	.dwattr $C$DW$111, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$111, DW_AT_location[DW_OP_reg0]


;***************************************************************
;* FNAME: _emit_hex32                   FR SIZE:  12           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter, 11 Auto,  0 SOE     *
;***************************************************************

_emit_hex32:
$C$DW$112	.dwtag  DW_TAG_variable
	.dwattr $C$DW$112, DW_AT_name("buf")
	.dwattr $C$DW$112, DW_AT_TI_symbol_name("_buf")
	.dwattr $C$DW$112, DW_AT_type(*$C$DW$T$166)
	.dwattr $C$DW$112, DW_AT_location[DW_OP_breg20 -11]

;* AR5   assigned to $O$U15
;* AR7   assigned to $O$U25
;* PL    assigned to _v
$C$DW$113	.dwtag  DW_TAG_variable
	.dwattr $C$DW$113, DW_AT_name("v")
	.dwattr $C$DW$113, DW_AT_TI_symbol_name("_v")
	.dwattr $C$DW$113, DW_AT_type(*$C$DW$T$163)
	.dwattr $C$DW$113, DW_AT_location[DW_OP_reg2]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#12                ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -14
	.dwpsn	file "examples\common\spiflash_self_test.c",line 48,column 5,is_stmt,isa 0
        MOVB      *-SP[11],#48,UNC      ; [CPU_ALU] |48| 
        MOVZ      AR5,SP                ; [CPU_ALU] 
	.dwpsn	file "examples\common\spiflash_self_test.c",line 45,column 69,is_stmt,isa 0
        MOVL      P,ACC                 ; [CPU_ALU] |45| 
        MOVB      XAR6,#7               ; [CPU_ALU] 
	.dwpsn	file "examples\common\spiflash_self_test.c",line 49,column 5,is_stmt,isa 0
        MOVB      *-SP[10],#120,UNC     ; [CPU_ALU] |49| 
        SUBB      XAR5,#9               ; [CPU_ARAU] 
        MOVZ      AR7,AR5               ; [CPU_ALU] 
        MOVB      XAR5,#28              ; [CPU_ALU] 
$C$L17:    
        MOVP      T,AR5                 ; [CPU_ALU] 
	.dwpsn	file "examples\common\spiflash_self_test.c",line 51,column 9,is_stmt,isa 0
        MOVL      XAR5,#$C$FSL1         ; [CPU_ARAU] |51| 
        LSRL      ACC,T                 ; [CPU_ALU] |51| 
        MOVB      AH,#0                 ; [CPU_ALU] |51| 
        ANDB      AL,#0x0f              ; [CPU_ALU] |51| 
        ADDL      XAR5,ACC              ; [CPU_ALU] |51| 
        MOV       AL,*+XAR5[0]          ; [CPU_ALU] |51| 
        MOVZ      AR5,T                 ; [CPU_ALU] |51| 
        MOV       *XAR7++,AL            ; [CPU_ALU] |51| 
	.dwpsn	file "examples\common\spiflash_self_test.c",line 50,column 21,is_stmt,isa 0
        SUBB      XAR5,#4               ; [CPU_ARAU] |50| 
        BANZ      $C$L17,AR6--          ; [CPU_ALU] |50| 
        ; branchcc occurs ; [] |50| 
	.dwpsn	file "examples\common\spiflash_self_test.c",line 54,column 5,is_stmt,isa 0
        MOVZ      AR5,SP                ; [CPU_ALU] |54| 
	.dwpsn	file "examples\common\spiflash_self_test.c",line 53,column 5,is_stmt,isa 0
        MOV       *-SP[1],#0            ; [CPU_ALU] |53| 
	.dwpsn	file "examples\common\spiflash_self_test.c",line 54,column 5,is_stmt,isa 0
        SUBB      XAR5,#11              ; [CPU_ARAU] |54| 
        MOVZ      AR5,AR5               ; [CPU_ALU] |54| 
$C$DW$114	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$114, DW_AT_low_pc(0x00)
	.dwattr $C$DW$114, DW_AT_name("_emit")
	.dwattr $C$DW$114, DW_AT_TI_call

        LCR       #_emit                ; [CPU_ALU] |54| 
        ; call occurs [#_emit] ; [] |54| 
        SUBB      SP,#12                ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$115	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$115, DW_AT_low_pc(0x00)
	.dwattr $C$DW$115, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$108, DW_AT_TI_end_file("examples\common\spiflash_self_test.c")
	.dwattr $C$DW$108, DW_AT_TI_end_line(0x37)
	.dwattr $C$DW$108, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$108

	.sect	".text"
	.clink

$C$DW$116	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$116, DW_AT_name("t_jedec")
	.dwattr $C$DW$116, DW_AT_low_pc(_t_jedec)
	.dwattr $C$DW$116, DW_AT_high_pc(0x00)
	.dwattr $C$DW$116, DW_AT_TI_symbol_name("_t_jedec")
	.dwattr $C$DW$116, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$116, DW_AT_TI_begin_file("examples\common\spiflash_self_test.c")
	.dwattr $C$DW$116, DW_AT_TI_begin_line(0x61)
	.dwattr $C$DW$116, DW_AT_TI_begin_column(0x0c)
	.dwattr $C$DW$116, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "examples\common\spiflash_self_test.c",line 97,column 53,is_stmt,address _t_jedec,isa 0

	.dwfde $C$DW$CIE, _t_jedec
$C$DW$117	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$117, DW_AT_name("ctx")
	.dwattr $C$DW$117, DW_AT_TI_symbol_name("_ctx")
	.dwattr $C$DW$117, DW_AT_type(*$C$DW$T$38)
	.dwattr $C$DW$117, DW_AT_location[DW_OP_reg12]


;***************************************************************
;* FNAME: _t_jedec                      FR SIZE:   4           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  2 Auto,  2 SOE     *
;***************************************************************

_t_jedec:
$C$DW$118	.dwtag  DW_TAG_variable
	.dwattr $C$DW$118, DW_AT_name("id")
	.dwattr $C$DW$118, DW_AT_TI_symbol_name("_id")
	.dwattr $C$DW$118, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$118, DW_AT_location[DW_OP_breg20 -2]

;* AL    assigned to $O$C16
;* AR1   assigned to _ctx
$C$DW$119	.dwtag  DW_TAG_variable
	.dwattr $C$DW$119, DW_AT_name("ctx")
	.dwattr $C$DW$119, DW_AT_TI_symbol_name("_ctx")
	.dwattr $C$DW$119, DW_AT_type(*$C$DW$T$80)
	.dwattr $C$DW$119, DW_AT_location[DW_OP_reg6]

;* AL    assigned to _rc
$C$DW$120	.dwtag  DW_TAG_variable
	.dwattr $C$DW$120, DW_AT_name("rc")
	.dwattr $C$DW$120, DW_AT_TI_symbol_name("_rc")
	.dwattr $C$DW$120, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$120, DW_AT_location[DW_OP_reg0]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        MOVL      *SP++,XAR1            ; [CPU_ALU] 
	.dwcfi	save_reg_to_mem, 7, 2
	.dwcfi	cfa_offset, -4
        ADDB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -6
	.dwpsn	file "examples\common\spiflash_self_test.c",line 99,column 12,is_stmt,isa 0
        MOVZ      AR5,SP                ; [CPU_ALU] |99| 
	.dwpsn	file "examples\common\spiflash_self_test.c",line 98,column 17,is_stmt,isa 0
        MOVB      ACC,#0                ; [CPU_ALU] |98| 
	.dwpsn	file "examples\common\spiflash_self_test.c",line 97,column 53,is_stmt,isa 0
        MOVL      XAR1,XAR4             ; [CPU_ALU] |97| 
	.dwpsn	file "examples\common\spiflash_self_test.c",line 98,column 17,is_stmt,isa 0
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |98| 
	.dwpsn	file "examples\common\spiflash_self_test.c",line 99,column 12,is_stmt,isa 0
        SUBB      XAR5,#2               ; [CPU_ARAU] |99| 
        MOVZ      AR5,AR5               ; [CPU_ALU] |99| 
        MOVL      XAR4,*+XAR1[0]        ; [CPU_ALU] |99| 
$C$DW$121	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$121, DW_AT_low_pc(0x00)
	.dwattr $C$DW$121, DW_AT_name("_SPIFLASH_read_jedec_id")
	.dwattr $C$DW$121, DW_AT_TI_call

        LCR       #_SPIFLASH_read_jedec_id ; [CPU_ALU] |99| 
        ; call occurs [#_SPIFLASH_read_jedec_id] ; [] |99| 
        CMPB      AL,#0                 ; [CPU_ALU] |99| 
        B         $C$L20,NEQ            ; [CPU_ALU] |99| 
        ; branchcc occurs ; [] |99| 
	.dwpsn	file "examples\common\spiflash_self_test.c",line 101,column 5,is_stmt,isa 0
        MOVL      XAR4,XAR1             ; [CPU_ALU] |101| 
        MOVL      XAR5,#$C$FSL14        ; [CPU_ARAU] |101| 
$C$DW$122	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$122, DW_AT_low_pc(0x00)
	.dwattr $C$DW$122, DW_AT_name("_emit")
	.dwattr $C$DW$122, DW_AT_TI_call

        LCR       #_emit                ; [CPU_ALU] |101| 
        ; call occurs [#_emit] ; [] |101| 
	.dwpsn	file "examples\common\spiflash_self_test.c",line 102,column 5,is_stmt,isa 0
        MOVL      XAR4,XAR1             ; [CPU_ALU] |102| 
        MOVL      ACC,*-SP[2]           ; [CPU_ALU] |102| 
$C$DW$123	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$123, DW_AT_low_pc(0x00)
	.dwattr $C$DW$123, DW_AT_name("_emit_hex32")
	.dwattr $C$DW$123, DW_AT_TI_call

        LCR       #_emit_hex32          ; [CPU_ALU] |102| 
        ; call occurs [#_emit_hex32] ; [] |102| 
	.dwpsn	file "examples\common\spiflash_self_test.c",line 103,column 5,is_stmt,isa 0
        MOVL      XAR4,XAR1             ; [CPU_ALU] |103| 
        MOVL      XAR5,#$C$FSL15        ; [CPU_ARAU] |103| 
$C$DW$124	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$124, DW_AT_low_pc(0x00)
	.dwattr $C$DW$124, DW_AT_name("_emit")
	.dwattr $C$DW$124, DW_AT_TI_call

        LCR       #_emit                ; [CPU_ALU] |103| 
        ; call occurs [#_emit] ; [] |103| 
	.dwpsn	file "examples\common\spiflash_self_test.c",line 104,column 5,is_stmt,isa 0
        AND       AL,*-SP[2],#0x00ff    ; [CPU_ALU] |104| 
        MOVL      XAR4,XAR1             ; [CPU_ALU] |104| 
$C$DW$125	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$125, DW_AT_low_pc(0x00)
	.dwattr $C$DW$125, DW_AT_name("_emit_hex8")
	.dwattr $C$DW$125, DW_AT_TI_call

        LCR       #_emit_hex8           ; [CPU_ALU] |104| 
        ; call occurs [#_emit_hex8] ; [] |104| 
	.dwpsn	file "examples\common\spiflash_self_test.c",line 105,column 5,is_stmt,isa 0
        MOVL      XAR4,XAR1             ; [CPU_ALU] |105| 
        MOVL      XAR5,#$C$FSL16        ; [CPU_ARAU] |105| 
$C$DW$126	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$126, DW_AT_low_pc(0x00)
	.dwattr $C$DW$126, DW_AT_name("_emit")
	.dwattr $C$DW$126, DW_AT_TI_call

        LCR       #_emit                ; [CPU_ALU] |105| 
        ; call occurs [#_emit] ; [] |105| 
        CLRC      SXM                   ; [CPU_ALU] 
	.dwpsn	file "examples\common\spiflash_self_test.c",line 106,column 5,is_stmt,isa 0
        MOVL      ACC,*-SP[2]           ; [CPU_ALU] |106| 
        MOVL      XAR4,XAR1             ; [CPU_ALU] |106| 
        SFR       ACC,8                 ; [CPU_ALU] |106| 
        ANDB      AL,#0xff              ; [CPU_ALU] |106| 
$C$DW$127	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$127, DW_AT_low_pc(0x00)
	.dwattr $C$DW$127, DW_AT_name("_emit_hex8")
	.dwattr $C$DW$127, DW_AT_TI_call

        LCR       #_emit_hex8           ; [CPU_ALU] |106| 
        ; call occurs [#_emit_hex8] ; [] |106| 
	.dwpsn	file "examples\common\spiflash_self_test.c",line 107,column 5,is_stmt,isa 0
        MOVL      XAR4,XAR1             ; [CPU_ALU] |107| 
        MOVL      XAR5,#$C$FSL17        ; [CPU_ARAU] |107| 
$C$DW$128	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$128, DW_AT_low_pc(0x00)
	.dwattr $C$DW$128, DW_AT_name("_emit")
	.dwattr $C$DW$128, DW_AT_TI_call

        LCR       #_emit                ; [CPU_ALU] |107| 
        ; call occurs [#_emit] ; [] |107| 
	.dwpsn	file "examples\common\spiflash_self_test.c",line 108,column 5,is_stmt,isa 0
        AND       AL,*-SP[1],#0x00ff    ; [CPU_ALU] |108| 
        MOVL      XAR4,XAR1             ; [CPU_ALU] |108| 
$C$DW$129	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$129, DW_AT_low_pc(0x00)
	.dwattr $C$DW$129, DW_AT_name("_emit_hex8")
	.dwattr $C$DW$129, DW_AT_TI_call

        LCR       #_emit_hex8           ; [CPU_ALU] |108| 
        ; call occurs [#_emit_hex8] ; [] |108| 
	.dwpsn	file "examples\common\spiflash_self_test.c",line 109,column 5,is_stmt,isa 0
        MOVL      XAR4,XAR1             ; [CPU_ALU] |109| 
        MOVL      XAR5,#$C$FSL18        ; [CPU_ARAU] |109| 
$C$DW$130	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$130, DW_AT_low_pc(0x00)
	.dwattr $C$DW$130, DW_AT_name("_emit")
	.dwattr $C$DW$130, DW_AT_TI_call

        LCR       #_emit                ; [CPU_ALU] |109| 
        ; call occurs [#_emit] ; [] |109| 
	.dwpsn	file "examples\common\spiflash_self_test.c",line 110,column 5,is_stmt,isa 0
        MOVL      XAR4,XAR1             ; [CPU_ALU] |110| 
        MOVL      XAR5,#$C$FSL12        ; [CPU_ARAU] |110| 
$C$DW$131	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$131, DW_AT_low_pc(0x00)
	.dwattr $C$DW$131, DW_AT_name("_emit")
	.dwattr $C$DW$131, DW_AT_TI_call

        LCR       #_emit                ; [CPU_ALU] |110| 
        ; call occurs [#_emit] ; [] |110| 
	.dwpsn	file "examples\common\spiflash_self_test.c",line 111,column 5,is_stmt,isa 0
        MOVB      XAR0,#14              ; [CPU_ALU] |111| 
        MOVL      ACC,*+XAR1[AR0]       ; [CPU_ALU] |111| 
        B         $C$L18,EQ             ; [CPU_ALU] |111| 
        ; branchcc occurs ; [] |111| 
        MOVL      P,ACC                 ; [CPU_ALU] |111| 
        MOVL      ACC,*-SP[2]           ; [CPU_ALU] |111| 
        AND       PH,#255               ; [CPU_ALU] |111| 
        ANDB      AH,#255               ; [CPU_ALU] |111| 
        CMPL      ACC,P                 ; [CPU_ALU] |111| 
        B         $C$L19,NEQ            ; [CPU_ALU] |111| 
        ; branchcc occurs ; [] |111| 
$C$L18:    
	.dwpsn	file "examples\common\spiflash_self_test.c",line 117,column 5,is_stmt,isa 0
        MOVB      AL,#0                 ; [CPU_ALU] |117| 
        B         $C$L20,UNC            ; [CPU_ALU] |117| 
        ; branch occurs ; [] |117| 
$C$L19:    
	.dwpsn	file "examples\common\spiflash_self_test.c",line 112,column 9,is_stmt,isa 0
        MOVL      XAR4,XAR1             ; [CPU_ALU] |112| 
        MOVL      XAR5,#$C$FSL19        ; [CPU_ARAU] |112| 
$C$DW$132	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$132, DW_AT_low_pc(0x00)
	.dwattr $C$DW$132, DW_AT_name("_emit")
	.dwattr $C$DW$132, DW_AT_TI_call

        LCR       #_emit                ; [CPU_ALU] |112| 
        ; call occurs [#_emit] ; [] |112| 
	.dwpsn	file "examples\common\spiflash_self_test.c",line 113,column 9,is_stmt,isa 0
        MOVB      XAR0,#14              ; [CPU_ALU] |113| 
        MOVL      XAR4,XAR1             ; [CPU_ALU] |113| 
        MOVL      ACC,*+XAR1[AR0]       ; [CPU_ALU] |113| 
        ANDB      AH,#255               ; [CPU_ALU] |113| 
$C$DW$133	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$133, DW_AT_low_pc(0x00)
	.dwattr $C$DW$133, DW_AT_name("_emit_hex32")
	.dwattr $C$DW$133, DW_AT_TI_call

        LCR       #_emit_hex32          ; [CPU_ALU] |113| 
        ; call occurs [#_emit_hex32] ; [] |113| 
	.dwpsn	file "examples\common\spiflash_self_test.c",line 114,column 9,is_stmt,isa 0
        MOVL      XAR4,XAR1             ; [CPU_ALU] |114| 
        MOVL      XAR5,#$C$FSL12        ; [CPU_ARAU] |114| 
$C$DW$134	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$134, DW_AT_low_pc(0x00)
	.dwattr $C$DW$134, DW_AT_name("_emit")
	.dwattr $C$DW$134, DW_AT_TI_call

        LCR       #_emit                ; [CPU_ALU] |114| 
        ; call occurs [#_emit] ; [] |114| 
	.dwpsn	file "examples\common\spiflash_self_test.c",line 115,column 9,is_stmt,isa 0
        MOV       AL,#-1                ; [CPU_ALU] |115| 
$C$L20:    
        SUBB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -4
        MOVL      XAR1,*--SP            ; [CPU_ALU] 
	.dwcfi	cfa_offset, -2
	.dwcfi	restore_reg, 7
$C$DW$135	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$135, DW_AT_low_pc(0x00)
	.dwattr $C$DW$135, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$116, DW_AT_TI_end_file("examples\common\spiflash_self_test.c")
	.dwattr $C$DW$116, DW_AT_TI_end_line(0x76)
	.dwattr $C$DW$116, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$116

	.sect	".text"
	.clink

$C$DW$136	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$136, DW_AT_name("emit")
	.dwattr $C$DW$136, DW_AT_low_pc(_emit)
	.dwattr $C$DW$136, DW_AT_high_pc(0x00)
	.dwattr $C$DW$136, DW_AT_TI_symbol_name("_emit")
	.dwattr $C$DW$136, DW_AT_TI_begin_file("examples\common\spiflash_self_test.c")
	.dwattr $C$DW$136, DW_AT_TI_begin_line(0x15)
	.dwattr $C$DW$136, DW_AT_TI_begin_column(0x0d)
	.dwattr $C$DW$136, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "examples\common\spiflash_self_test.c",line 21,column 66,is_stmt,address _emit,isa 0

	.dwfde $C$DW$CIE, _emit
$C$DW$137	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$137, DW_AT_name("ctx")
	.dwattr $C$DW$137, DW_AT_TI_symbol_name("_ctx")
	.dwattr $C$DW$137, DW_AT_type(*$C$DW$T$38)
	.dwattr $C$DW$137, DW_AT_location[DW_OP_reg12]

$C$DW$138	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$138, DW_AT_name("s")
	.dwattr $C$DW$138, DW_AT_TI_symbol_name("_s")
	.dwattr $C$DW$138, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$138, DW_AT_location[DW_OP_reg14]


;***************************************************************
;* FNAME: _emit                         FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_emit:
;* AL    assigned to $O$C1
;* AR4   assigned to _ctx
$C$DW$139	.dwtag  DW_TAG_variable
	.dwattr $C$DW$139, DW_AT_name("ctx")
	.dwattr $C$DW$139, DW_AT_TI_symbol_name("_ctx")
	.dwattr $C$DW$139, DW_AT_type(*$C$DW$T$80)
	.dwattr $C$DW$139, DW_AT_location[DW_OP_reg12]

;* AR5   assigned to _s
$C$DW$140	.dwtag  DW_TAG_variable
	.dwattr $C$DW$140, DW_AT_name("s")
	.dwattr $C$DW$140, DW_AT_TI_symbol_name("_s")
	.dwattr $C$DW$140, DW_AT_type(*$C$DW$T$164)
	.dwattr $C$DW$140, DW_AT_location[DW_OP_reg14]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
	.dwpsn	file "examples\common\spiflash_self_test.c",line 22,column 5,is_stmt,isa 0
        MOVL      ACC,*+XAR4[2]         ; [CPU_ALU] |22| 
        B         $C$L21,EQ             ; [CPU_ALU] |22| 
        ; branchcc occurs ; [] |22| 
	.dwpsn	file "examples\common\spiflash_self_test.c",line 22,column 19,is_stmt,isa 0
        MOVL      XAR7,ACC              ; [CPU_ALU] |22| 
        MOVL      XAR4,XAR5             ; [CPU_ALU] |22| 
$C$DW$141	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$141, DW_AT_low_pc(0x00)
	.dwattr $C$DW$141, DW_AT_TI_call
	.dwattr $C$DW$141, DW_AT_TI_indirect

        LCR       *XAR7                 ; [CPU_ALU] |22| 
        ; call occurs [XAR7] ; [] |22| 
$C$L21:    
$C$DW$142	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$142, DW_AT_low_pc(0x00)
	.dwattr $C$DW$142, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$136, DW_AT_TI_end_file("examples\common\spiflash_self_test.c")
	.dwattr $C$DW$136, DW_AT_TI_end_line(0x17)
	.dwattr $C$DW$136, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$136

	.sect	".text"
	.clink

$C$DW$143	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$143, DW_AT_name("compare_pattern")
	.dwattr $C$DW$143, DW_AT_low_pc(_compare_pattern)
	.dwattr $C$DW$143, DW_AT_high_pc(0x00)
	.dwattr $C$DW$143, DW_AT_TI_symbol_name("_compare_pattern")
	.dwattr $C$DW$143, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$143, DW_AT_TI_begin_file("examples\common\spiflash_self_test.c")
	.dwattr $C$DW$143, DW_AT_TI_begin_line(0xa6)
	.dwattr $C$DW$143, DW_AT_TI_begin_column(0x0c)
	.dwattr $C$DW$143, DW_AT_TI_max_frame_size(-10)
	.dwpsn	file "examples\common\spiflash_self_test.c",line 166,column 89,is_stmt,address _compare_pattern,isa 0

	.dwfde $C$DW$CIE, _compare_pattern
$C$DW$144	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$144, DW_AT_name("ctx")
	.dwattr $C$DW$144, DW_AT_TI_symbol_name("_ctx")
	.dwattr $C$DW$144, DW_AT_type(*$C$DW$T$38)
	.dwattr $C$DW$144, DW_AT_location[DW_OP_reg12]

$C$DW$145	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$145, DW_AT_name("len")
	.dwattr $C$DW$145, DW_AT_TI_symbol_name("_len")
	.dwattr $C$DW$145, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$145, DW_AT_location[DW_OP_reg0]

$C$DW$146	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$146, DW_AT_name("seed")
	.dwattr $C$DW$146, DW_AT_TI_symbol_name("_seed")
	.dwattr $C$DW$146, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$146, DW_AT_location[DW_OP_reg14]


;***************************************************************
;* FNAME: _compare_pattern              FR SIZE:   8           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  1 Auto,  6 SOE     *
;***************************************************************

_compare_pattern:
;* AR2   assigned to $O$C1
;* AR4   assigned to $O$L1
;* AR6   assigned to $O$v1
;* AR1   assigned to _ctx
$C$DW$147	.dwtag  DW_TAG_variable
	.dwattr $C$DW$147, DW_AT_name("ctx")
	.dwattr $C$DW$147, DW_AT_TI_symbol_name("_ctx")
	.dwattr $C$DW$147, DW_AT_type(*$C$DW$T$80)
	.dwattr $C$DW$147, DW_AT_location[DW_OP_reg6]

;* AL    assigned to _len
$C$DW$148	.dwtag  DW_TAG_variable
	.dwattr $C$DW$148, DW_AT_name("len")
	.dwattr $C$DW$148, DW_AT_TI_symbol_name("_len")
	.dwattr $C$DW$148, DW_AT_type(*$C$DW$T$163)
	.dwattr $C$DW$148, DW_AT_location[DW_OP_reg0]

;* AR5   assigned to _seed
$C$DW$149	.dwtag  DW_TAG_variable
	.dwattr $C$DW$149, DW_AT_name("seed")
	.dwattr $C$DW$149, DW_AT_TI_symbol_name("_seed")
	.dwattr $C$DW$149, DW_AT_type(*$C$DW$T$43)
	.dwattr $C$DW$149, DW_AT_location[DW_OP_reg14]

;* AR3   assigned to _i
$C$DW$150	.dwtag  DW_TAG_variable
	.dwattr $C$DW$150, DW_AT_name("i")
	.dwattr $C$DW$150, DW_AT_TI_symbol_name("_i")
	.dwattr $C$DW$150, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$150, DW_AT_location[DW_OP_reg10]

$C$DW$151	.dwtag  DW_TAG_variable
	.dwattr $C$DW$151, DW_AT_name("got")
	.dwattr $C$DW$151, DW_AT_TI_symbol_name("_got")
	.dwattr $C$DW$151, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$151, DW_AT_location[DW_OP_breg20 -1]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        MOVL      *SP++,XAR1            ; [CPU_ALU] 
	.dwcfi	save_reg_to_mem, 7, 2
	.dwcfi	cfa_offset, -4
        MOVL      *SP++,XAR2            ; [CPU_ALU] 
	.dwcfi	save_reg_to_mem, 9, 4
	.dwcfi	cfa_offset, -6
        MOVL      *SP++,XAR3            ; [CPU_ALU] 
	.dwcfi	save_reg_to_mem, 11, 6
	.dwcfi	cfa_offset, -8
        ADDB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -10
	.dwpsn	file "examples\common\spiflash_self_test.c",line 167,column 26,is_stmt,isa 0
        TEST      ACC                   ; [CPU_ALU] |167| 
	.dwpsn	file "examples\common\spiflash_self_test.c",line 166,column 89,is_stmt,isa 0
        MOVL      XAR1,XAR4             ; [CPU_ALU] |166| 
	.dwpsn	file "examples\common\spiflash_self_test.c",line 167,column 26,is_stmt,isa 0
        B         $C$L24,EQ             ; [CPU_ALU] |167| 
        ; branchcc occurs ; [] |167| 
        MOVB      XAR0,#12              ; [CPU_ALU] 
	.dwpsn	file "examples\common\spiflash_self_test.c",line 167,column 21,is_stmt,isa 0
        MOVB      XAR3,#0               ; [CPU_ALU] |167| 
        MOVL      XAR6,*+XAR1[AR0]      ; [CPU_ALU] 
        SUBB      ACC,#1                ; [CPU_ALU] 
        MOVL      XAR4,ACC              ; [CPU_ALU] 
$C$L22:    
	.dwpsn	file "examples\common\spiflash_self_test.c",line 168,column 21,is_stmt,isa 0
        MOVZ      AR0,AR3               ; [CPU_ALU] |168| 
        MOVB      AL.LSB,*+XAR6[AR0]    ; [CPU_ALU] |168| 
	.dwpsn	file "examples\common\spiflash_self_test.c",line 170,column 9,is_stmt,isa 0
        MOVZ      AR7,AL                ; [CPU_ALU] |170| 
	.dwpsn	file "examples\common\spiflash_self_test.c",line 168,column 21,is_stmt,isa 0
        MOV       *-SP[1],AL            ; [CPU_ALU] |168| 
	.dwpsn	file "examples\common\spiflash_self_test.c",line 170,column 9,is_stmt,isa 0
        MOV       AL,AR3                ; [CPU_ALU] |170| 
        ADD       AL,AR5                ; [CPU_ALU] |170| 
        ANDB      AL,#0xff              ; [CPU_ALU] |170| 
        MOVZ      AR2,AL                ; [CPU_ALU] |170| 
        MOVU      ACC,AR2               ; [CPU_ALU] |170| 
        CMPL      ACC,XAR7              ; [CPU_ALU] |170| 
        B         $C$L23,EQ             ; [CPU_ALU] |170| 
        ; branchcc occurs ; [] |170| 
	.dwpsn	file "examples\common\spiflash_self_test.c",line 171,column 13,is_stmt,isa 0
        MOVL      XAR4,XAR1             ; [CPU_ALU] |171| 
        MOVL      XAR5,#$C$FSL20        ; [CPU_ARAU] |171| 
$C$DW$152	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$152, DW_AT_low_pc(0x00)
	.dwattr $C$DW$152, DW_AT_name("_emit")
	.dwattr $C$DW$152, DW_AT_TI_call

        LCR       #_emit                ; [CPU_ALU] |171| 
        ; call occurs [#_emit] ; [] |171| 
	.dwpsn	file "examples\common\spiflash_self_test.c",line 172,column 13,is_stmt,isa 0
        MOVL      XAR4,XAR1             ; [CPU_ALU] |172| 
        MOVL      ACC,XAR3              ; [CPU_ALU] |172| 
$C$DW$153	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$153, DW_AT_low_pc(0x00)
	.dwattr $C$DW$153, DW_AT_name("_emit_u32")
	.dwattr $C$DW$153, DW_AT_TI_call

        LCR       #_emit_u32            ; [CPU_ALU] |172| 
        ; call occurs [#_emit_u32] ; [] |172| 
	.dwpsn	file "examples\common\spiflash_self_test.c",line 173,column 13,is_stmt,isa 0
        MOVL      XAR4,XAR1             ; [CPU_ALU] |173| 
        MOVL      XAR5,#$C$FSL21        ; [CPU_ARAU] |173| 
$C$DW$154	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$154, DW_AT_low_pc(0x00)
	.dwattr $C$DW$154, DW_AT_name("_emit")
	.dwattr $C$DW$154, DW_AT_TI_call

        LCR       #_emit                ; [CPU_ALU] |173| 
        ; call occurs [#_emit] ; [] |173| 
	.dwpsn	file "examples\common\spiflash_self_test.c",line 174,column 13,is_stmt,isa 0
        MOV       AL,AR2                ; [CPU_ALU] |174| 
        MOVL      XAR4,XAR1             ; [CPU_ALU] |174| 
$C$DW$155	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$155, DW_AT_low_pc(0x00)
	.dwattr $C$DW$155, DW_AT_name("_emit_hex8")
	.dwattr $C$DW$155, DW_AT_TI_call

        LCR       #_emit_hex8           ; [CPU_ALU] |174| 
        ; call occurs [#_emit_hex8] ; [] |174| 
	.dwpsn	file "examples\common\spiflash_self_test.c",line 175,column 13,is_stmt,isa 0
        MOVL      XAR4,XAR1             ; [CPU_ALU] |175| 
        MOVL      XAR5,#$C$FSL11        ; [CPU_ARAU] |175| 
$C$DW$156	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$156, DW_AT_low_pc(0x00)
	.dwattr $C$DW$156, DW_AT_name("_emit")
	.dwattr $C$DW$156, DW_AT_TI_call

        LCR       #_emit                ; [CPU_ALU] |175| 
        ; call occurs [#_emit] ; [] |175| 
	.dwpsn	file "examples\common\spiflash_self_test.c",line 176,column 13,is_stmt,isa 0
        MOVL      XAR4,XAR1             ; [CPU_ALU] |176| 
        MOV       AL,*-SP[1]            ; [CPU_ALU] |176| 
$C$DW$157	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$157, DW_AT_low_pc(0x00)
	.dwattr $C$DW$157, DW_AT_name("_emit_hex8")
	.dwattr $C$DW$157, DW_AT_TI_call

        LCR       #_emit_hex8           ; [CPU_ALU] |176| 
        ; call occurs [#_emit_hex8] ; [] |176| 
	.dwpsn	file "examples\common\spiflash_self_test.c",line 177,column 13,is_stmt,isa 0
        MOVL      XAR4,XAR1             ; [CPU_ALU] |177| 
        MOVL      XAR5,#$C$FSL12        ; [CPU_ARAU] |177| 
$C$DW$158	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$158, DW_AT_low_pc(0x00)
	.dwattr $C$DW$158, DW_AT_name("_emit")
	.dwattr $C$DW$158, DW_AT_TI_call

        LCR       #_emit                ; [CPU_ALU] |177| 
        ; call occurs [#_emit] ; [] |177| 
	.dwpsn	file "examples\common\spiflash_self_test.c",line 178,column 13,is_stmt,isa 0
        MOV       AL,#-3                ; [CPU_ALU] |178| 
        B         $C$L25,UNC            ; [CPU_ALU] |178| 
        ; branch occurs ; [] |178| 
$C$L23:    
	.dwpsn	file "examples\common\spiflash_self_test.c",line 167,column 26,is_stmt,isa 0
        MOVB      ACC,#0                ; [CPU_ALU] |167| 
        SUBB      XAR4,#1               ; [CPU_ALU] |167| 
        ADDB      XAR3,#1               ; [CPU_ALU] |167| 
        SUBB      ACC,#1                ; [CPU_ALU] |167| 
        CMPL      ACC,XAR4              ; [CPU_ALU] |167| 
        B         $C$L22,NEQ            ; [CPU_ALU] |167| 
        ; branchcc occurs ; [] |167| 
$C$L24:    
	.dwpsn	file "examples\common\spiflash_self_test.c",line 181,column 5,is_stmt,isa 0
        MOVB      AL,#0                 ; [CPU_ALU] |181| 
$C$L25:    
        SUBB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -8
        MOVL      XAR3,*--SP            ; [CPU_ALU] 
	.dwcfi	cfa_offset, -6
	.dwcfi	restore_reg, 11
        MOVL      XAR2,*--SP            ; [CPU_ALU] 
	.dwcfi	cfa_offset, -4
	.dwcfi	restore_reg, 9
        MOVL      XAR1,*--SP            ; [CPU_ALU] 
	.dwcfi	cfa_offset, -2
	.dwcfi	restore_reg, 7
$C$DW$159	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$159, DW_AT_low_pc(0x00)
	.dwattr $C$DW$159, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$143, DW_AT_TI_end_file("examples\common\spiflash_self_test.c")
	.dwattr $C$DW$143, DW_AT_TI_end_line(0xb6)
	.dwattr $C$DW$143, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$143

	.sect	".text"
	.clink

$C$DW$160	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$160, DW_AT_name("t_write_read_pattern")
	.dwattr $C$DW$160, DW_AT_low_pc(_t_write_read_pattern)
	.dwattr $C$DW$160, DW_AT_high_pc(0x00)
	.dwattr $C$DW$160, DW_AT_TI_symbol_name("_t_write_read_pattern")
	.dwattr $C$DW$160, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$160, DW_AT_TI_begin_file("examples\common\spiflash_self_test.c")
	.dwattr $C$DW$160, DW_AT_TI_begin_line(0xb8)
	.dwattr $C$DW$160, DW_AT_TI_begin_column(0x0c)
	.dwattr $C$DW$160, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "examples\common\spiflash_self_test.c",line 184,column 66,is_stmt,address _t_write_read_pattern,isa 0

	.dwfde $C$DW$CIE, _t_write_read_pattern
$C$DW$161	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$161, DW_AT_name("ctx")
	.dwattr $C$DW$161, DW_AT_TI_symbol_name("_ctx")
	.dwattr $C$DW$161, DW_AT_type(*$C$DW$T$38)
	.dwattr $C$DW$161, DW_AT_location[DW_OP_reg12]


;***************************************************************
;* FNAME: _t_write_read_pattern         FR SIZE:   4           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            2 Parameter,  0 Auto,  2 SOE     *
;***************************************************************

_t_write_read_pattern:
;* AL    assigned to _rc
$C$DW$162	.dwtag  DW_TAG_variable
	.dwattr $C$DW$162, DW_AT_name("rc")
	.dwattr $C$DW$162, DW_AT_TI_symbol_name("_rc")
	.dwattr $C$DW$162, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$162, DW_AT_location[DW_OP_reg0]

;* AL    assigned to _rc
$C$DW$163	.dwtag  DW_TAG_variable
	.dwattr $C$DW$163, DW_AT_name("rc")
	.dwattr $C$DW$163, DW_AT_TI_symbol_name("_rc")
	.dwattr $C$DW$163, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$163, DW_AT_location[DW_OP_reg0]

;* AR1   assigned to _ctx
$C$DW$164	.dwtag  DW_TAG_variable
	.dwattr $C$DW$164, DW_AT_name("ctx")
	.dwattr $C$DW$164, DW_AT_TI_symbol_name("_ctx")
	.dwattr $C$DW$164, DW_AT_type(*$C$DW$T$80)
	.dwattr $C$DW$164, DW_AT_location[DW_OP_reg6]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        MOVL      *SP++,XAR1            ; [CPU_ALU] 
	.dwcfi	save_reg_to_mem, 7, 2
	.dwcfi	cfa_offset, -4
        ADDB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -6
        MOVL      XAR1,XAR4             ; [CPU_ALU] |184| 
	.dwpsn	file "examples\common\spiflash_self_test.c",line 185,column 5,is_stmt,isa 0
        MOVB      XAR0,#8               ; [CPU_ALU] |185| 
        MOVB      XAR5,#16              ; [CPU_ALU] |185| 
        MOVL      ACC,*+XAR1[AR0]       ; [CPU_ALU] |185| 
$C$DW$165	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$165, DW_AT_low_pc(0x00)
	.dwattr $C$DW$165, DW_AT_name("_fill_pattern")
	.dwattr $C$DW$165, DW_AT_TI_call

        LCR       #_fill_pattern        ; [CPU_ALU] |185| 
        ; call occurs [#_fill_pattern] ; [] |185| 
	.dwpsn	file "examples\common\spiflash_self_test.c",line 188,column 28,is_stmt,isa 0
        MOVB      XAR0,#8               ; [CPU_ALU] |188| 
        MOVL      ACC,*+XAR1[AR0]       ; [CPU_ALU] |188| 
        MOVB      XAR0,#10              ; [CPU_ALU] |188| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |188| 
        MOVL      XAR4,*+XAR1[0]        ; [CPU_ALU] |188| 
        MOVL      XAR5,*+XAR1[AR0]      ; [CPU_ALU] |188| 
        MOVL      ACC,*+XAR1[6]         ; [CPU_ALU] |188| 
$C$DW$166	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$166, DW_AT_low_pc(0x00)
	.dwattr $C$DW$166, DW_AT_name("_SPIFLASH_write")
	.dwattr $C$DW$166, DW_AT_TI_call

        LCR       #_SPIFLASH_write      ; [CPU_ALU] |188| 
        ; call occurs [#_SPIFLASH_write] ; [] |188| 
        CMPB      AL,#0                 ; [CPU_ALU] |188| 
        B         $C$L26,NEQ            ; [CPU_ALU] |188| 
        ; branchcc occurs ; [] |188| 
        MOVB      XAR0,#8               ; [CPU_ALU] |188| 
        MOVL      ACC,*+XAR1[AR0]       ; [CPU_ALU] |188| 
        MOVB      XAR0,#12              ; [CPU_ALU] |188| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |188| 
        MOVL      XAR4,*+XAR1[0]        ; [CPU_ALU] |188| 
        MOVL      XAR5,*+XAR1[AR0]      ; [CPU_ALU] |188| 
        MOVL      ACC,*+XAR1[6]         ; [CPU_ALU] |188| 
$C$DW$167	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$167, DW_AT_low_pc(0x00)
	.dwattr $C$DW$167, DW_AT_name("_SPIFLASH_read")
	.dwattr $C$DW$167, DW_AT_TI_call

        LCR       #_SPIFLASH_read       ; [CPU_ALU] |188| 
        ; call occurs [#_SPIFLASH_read] ; [] |188| 
        CMPB      AL,#0                 ; [CPU_ALU] |188| 
        B         $C$L26,NEQ            ; [CPU_ALU] |188| 
        ; branchcc occurs ; [] |188| 
        MOVB      XAR0,#8               ; [CPU_ALU] |188| 
        MOVL      XAR4,XAR1             ; [CPU_ALU] |188| 
        MOVB      XAR5,#16              ; [CPU_ALU] |188| 
        MOVL      ACC,*+XAR1[AR0]       ; [CPU_ALU] |188| 
$C$DW$168	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$168, DW_AT_low_pc(0x00)
	.dwattr $C$DW$168, DW_AT_name("_compare_pattern")
	.dwattr $C$DW$168, DW_AT_TI_call

        LCR       #_compare_pattern     ; [CPU_ALU] |188| 
        ; call occurs [#_compare_pattern] ; [] |188| 
$C$L26:    
        SUBB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -4
        MOVL      XAR1,*--SP            ; [CPU_ALU] 
	.dwcfi	cfa_offset, -2
	.dwcfi	restore_reg, 7
$C$DW$169	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$169, DW_AT_low_pc(0x00)
	.dwattr $C$DW$169, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$160, DW_AT_TI_end_file("examples\common\spiflash_self_test.c")
	.dwattr $C$DW$160, DW_AT_TI_end_line(0xc1)
	.dwattr $C$DW$160, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$160

	.sect	".text"
	.clink

$C$DW$170	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$170, DW_AT_name("enter")
	.dwattr $C$DW$170, DW_AT_low_pc(_enter)
	.dwattr $C$DW$170, DW_AT_high_pc(0x00)
	.dwattr $C$DW$170, DW_AT_TI_symbol_name("_enter")
	.dwattr $C$DW$170, DW_AT_TI_begin_file("examples\common\spiflash_self_test.c")
	.dwattr $C$DW$170, DW_AT_TI_begin_line(0x4e)
	.dwattr $C$DW$170, DW_AT_TI_begin_column(0x0d)
	.dwattr $C$DW$170, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "examples\common\spiflash_self_test.c",line 78,column 70,is_stmt,address _enter,isa 0

	.dwfde $C$DW$CIE, _enter
$C$DW$171	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$171, DW_AT_name("ctx")
	.dwattr $C$DW$171, DW_AT_TI_symbol_name("_ctx")
	.dwattr $C$DW$171, DW_AT_type(*$C$DW$T$38)
	.dwattr $C$DW$171, DW_AT_location[DW_OP_reg12]

$C$DW$172	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$172, DW_AT_name("name")
	.dwattr $C$DW$172, DW_AT_TI_symbol_name("_name")
	.dwattr $C$DW$172, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$172, DW_AT_location[DW_OP_reg14]


;***************************************************************
;* FNAME: _enter                        FR SIZE:   4           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  4 SOE     *
;***************************************************************

_enter:
;* AR7   assigned to $O$C1
;* AR1   assigned to _ctx
$C$DW$173	.dwtag  DW_TAG_variable
	.dwattr $C$DW$173, DW_AT_name("ctx")
	.dwattr $C$DW$173, DW_AT_TI_symbol_name("_ctx")
	.dwattr $C$DW$173, DW_AT_type(*$C$DW$T$80)
	.dwattr $C$DW$173, DW_AT_location[DW_OP_reg6]

;* AR2   assigned to _name
$C$DW$174	.dwtag  DW_TAG_variable
	.dwattr $C$DW$174, DW_AT_name("name")
	.dwattr $C$DW$174, DW_AT_TI_symbol_name("_name")
	.dwattr $C$DW$174, DW_AT_type(*$C$DW$T$164)
	.dwattr $C$DW$174, DW_AT_location[DW_OP_reg8]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        MOVL      *SP++,XAR1            ; [CPU_ALU] 
	.dwcfi	save_reg_to_mem, 7, 2
	.dwcfi	cfa_offset, -4
        MOVL      XAR1,XAR4             ; [CPU_ALU] |78| 
        MOVL      *SP++,XAR2            ; [CPU_ALU] 
	.dwcfi	save_reg_to_mem, 9, 4
	.dwcfi	cfa_offset, -6
        MOVL      XAR2,XAR5             ; [CPU_ALU] |78| 
	.dwpsn	file "examples\common\spiflash_self_test.c",line 79,column 5,is_stmt,isa 0
        MOVL      XAR5,#$C$FSL22        ; [CPU_ARAU] |79| 
$C$DW$175	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$175, DW_AT_low_pc(0x00)
	.dwattr $C$DW$175, DW_AT_name("_emit")
	.dwattr $C$DW$175, DW_AT_TI_call

        LCR       #_emit                ; [CPU_ALU] |79| 
        ; call occurs [#_emit] ; [] |79| 
	.dwpsn	file "examples\common\spiflash_self_test.c",line 80,column 5,is_stmt,isa 0
        MOVL      XAR4,XAR1             ; [CPU_ALU] |80| 
        MOVL      XAR5,XAR2             ; [CPU_ALU] |80| 
$C$DW$176	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$176, DW_AT_low_pc(0x00)
	.dwattr $C$DW$176, DW_AT_name("_emit")
	.dwattr $C$DW$176, DW_AT_TI_call

        LCR       #_emit                ; [CPU_ALU] |80| 
        ; call occurs [#_emit] ; [] |80| 
	.dwpsn	file "examples\common\spiflash_self_test.c",line 81,column 5,is_stmt,isa 0
        MOVL      XAR5,#$C$FSL12        ; [CPU_ARAU] |81| 
        MOVL      XAR4,XAR1             ; [CPU_ALU] |81| 
$C$DW$177	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$177, DW_AT_low_pc(0x00)
	.dwattr $C$DW$177, DW_AT_name("_emit")
	.dwattr $C$DW$177, DW_AT_TI_call

        LCR       #_emit                ; [CPU_ALU] |81| 
        ; call occurs [#_emit] ; [] |81| 
	.dwpsn	file "examples\common\spiflash_self_test.c",line 82,column 5,is_stmt,isa 0
        MOVL      XAR7,*+XAR1[4]        ; [CPU_ALU] |82| 
        MOVL      ACC,XAR7              ; [CPU_ALU] |82| 
        B         $C$L27,EQ             ; [CPU_ALU] |82| 
        ; branchcc occurs ; [] |82| 
	.dwpsn	file "examples\common\spiflash_self_test.c",line 82,column 25,is_stmt,isa 0
        MOVL      XAR4,XAR2             ; [CPU_ALU] |82| 
        MOV       ACC,#0                ; [CPU_ALU] |82| 
$C$DW$178	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$178, DW_AT_low_pc(0x00)
	.dwattr $C$DW$178, DW_AT_TI_call
	.dwattr $C$DW$178, DW_AT_TI_indirect

        LCR       *XAR7                 ; [CPU_ALU] |82| 
        ; call occurs [XAR7] ; [] |82| 
$C$L27:    
        MOVL      XAR2,*--SP            ; [CPU_ALU] 
	.dwcfi	cfa_offset, -4
	.dwcfi	restore_reg, 9
        MOVL      XAR1,*--SP            ; [CPU_ALU] 
	.dwcfi	cfa_offset, -2
	.dwcfi	restore_reg, 7
$C$DW$179	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$179, DW_AT_low_pc(0x00)
	.dwattr $C$DW$179, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$170, DW_AT_TI_end_file("examples\common\spiflash_self_test.c")
	.dwattr $C$DW$170, DW_AT_TI_end_line(0x53)
	.dwattr $C$DW$170, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$170

	.sect	".text"
	.clink

$C$DW$180	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$180, DW_AT_name("leave")
	.dwattr $C$DW$180, DW_AT_low_pc(_leave)
	.dwattr $C$DW$180, DW_AT_high_pc(0x00)
	.dwattr $C$DW$180, DW_AT_TI_symbol_name("_leave")
	.dwattr $C$DW$180, DW_AT_TI_begin_file("examples\common\spiflash_self_test.c")
	.dwattr $C$DW$180, DW_AT_TI_begin_line(0x55)
	.dwattr $C$DW$180, DW_AT_TI_begin_column(0x0d)
	.dwattr $C$DW$180, DW_AT_TI_max_frame_size(-8)
	.dwpsn	file "examples\common\spiflash_self_test.c",line 85,column 78,is_stmt,address _leave,isa 0

	.dwfde $C$DW$CIE, _leave
$C$DW$181	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$181, DW_AT_name("ctx")
	.dwattr $C$DW$181, DW_AT_TI_symbol_name("_ctx")
	.dwattr $C$DW$181, DW_AT_type(*$C$DW$T$38)
	.dwattr $C$DW$181, DW_AT_location[DW_OP_reg12]

$C$DW$182	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$182, DW_AT_name("name")
	.dwattr $C$DW$182, DW_AT_TI_symbol_name("_name")
	.dwattr $C$DW$182, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$182, DW_AT_location[DW_OP_reg14]

$C$DW$183	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$183, DW_AT_name("rc")
	.dwattr $C$DW$183, DW_AT_TI_symbol_name("_rc")
	.dwattr $C$DW$183, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$183, DW_AT_location[DW_OP_reg0]


;***************************************************************
;* FNAME: _leave                        FR SIZE:   6           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  6 SOE     *
;***************************************************************

_leave:
;* AR7   assigned to $O$C2
;* AR5   assigned to $O$S1
;* AR2   assigned to _ctx
$C$DW$184	.dwtag  DW_TAG_variable
	.dwattr $C$DW$184, DW_AT_name("ctx")
	.dwattr $C$DW$184, DW_AT_TI_symbol_name("_ctx")
	.dwattr $C$DW$184, DW_AT_type(*$C$DW$T$80)
	.dwattr $C$DW$184, DW_AT_location[DW_OP_reg8]

;* AR3   assigned to _name
$C$DW$185	.dwtag  DW_TAG_variable
	.dwattr $C$DW$185, DW_AT_name("name")
	.dwattr $C$DW$185, DW_AT_TI_symbol_name("_name")
	.dwattr $C$DW$185, DW_AT_type(*$C$DW$T$164)
	.dwattr $C$DW$185, DW_AT_location[DW_OP_reg10]

;* AR1   assigned to _rc
$C$DW$186	.dwtag  DW_TAG_variable
	.dwattr $C$DW$186, DW_AT_name("rc")
	.dwattr $C$DW$186, DW_AT_TI_symbol_name("_rc")
	.dwattr $C$DW$186, DW_AT_type(*$C$DW$T$117)
	.dwattr $C$DW$186, DW_AT_location[DW_OP_reg6]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        MOVL      *SP++,XAR1            ; [CPU_ALU] 
	.dwcfi	save_reg_to_mem, 7, 2
	.dwcfi	cfa_offset, -4
	.dwpsn	file "examples\common\spiflash_self_test.c",line 86,column 5,is_stmt,isa 0
        CMPB      AL,#0                 ; [CPU_ALU] |86| 
	.dwpsn	file "examples\common\spiflash_self_test.c",line 85,column 78,is_stmt,isa 0
        MOVZ      AR1,AL                ; [CPU_ALU] |85| 
        MOVL      *SP++,XAR2            ; [CPU_ALU] 
	.dwcfi	save_reg_to_mem, 9, 4
	.dwcfi	cfa_offset, -6
        MOVL      XAR2,XAR4             ; [CPU_ALU] |85| 
        MOVL      *SP++,XAR3            ; [CPU_ALU] 
	.dwcfi	save_reg_to_mem, 11, 6
	.dwcfi	cfa_offset, -8
        MOVL      XAR3,XAR5             ; [CPU_ALU] |85| 
	.dwpsn	file "examples\common\spiflash_self_test.c",line 86,column 5,is_stmt,isa 0
        B         $C$L28,EQ             ; [CPU_ALU] |86| 
        ; branchcc occurs ; [] |86| 
        MOVL      XAR5,#$C$FSL23        ; [CPU_ARAU] |86| 
        B         $C$L29,UNC            ; [CPU_ALU] |86| 
        ; branch occurs ; [] |86| 
$C$L28:    
        MOVL      XAR5,#$C$FSL24        ; [CPU_ARAU] |86| 
$C$L29:    
$C$DW$187	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$187, DW_AT_low_pc(0x00)
	.dwattr $C$DW$187, DW_AT_name("_emit")
	.dwattr $C$DW$187, DW_AT_TI_call

        LCR       #_emit                ; [CPU_ALU] |86| 
        ; call occurs [#_emit] ; [] |86| 
	.dwpsn	file "examples\common\spiflash_self_test.c",line 87,column 5,is_stmt,isa 0
        MOVL      XAR4,XAR2             ; [CPU_ALU] |87| 
        MOVL      XAR5,XAR3             ; [CPU_ALU] |87| 
$C$DW$188	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$188, DW_AT_low_pc(0x00)
	.dwattr $C$DW$188, DW_AT_name("_emit")
	.dwattr $C$DW$188, DW_AT_TI_call

        LCR       #_emit                ; [CPU_ALU] |87| 
        ; call occurs [#_emit] ; [] |87| 
        MOV       AL,AR1                ; [CPU_ALU] |87| 
	.dwpsn	file "examples\common\spiflash_self_test.c",line 88,column 5,is_stmt,isa 0
        B         $C$L30,EQ             ; [CPU_ALU] |88| 
        ; branchcc occurs ; [] |88| 
	.dwpsn	file "examples\common\spiflash_self_test.c",line 89,column 9,is_stmt,isa 0
        MOVL      XAR4,XAR2             ; [CPU_ALU] |89| 
        MOVL      XAR5,#$C$FSL25        ; [CPU_ARAU] |89| 
$C$DW$189	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$189, DW_AT_low_pc(0x00)
	.dwattr $C$DW$189, DW_AT_name("_emit")
	.dwattr $C$DW$189, DW_AT_TI_call

        LCR       #_emit                ; [CPU_ALU] |89| 
        ; call occurs [#_emit] ; [] |89| 
        MOV       AL,AR1                ; [CPU_ALU] |89| 
        SETC      SXM                   ; [CPU_ALU] 
	.dwpsn	file "examples\common\spiflash_self_test.c",line 90,column 9,is_stmt,isa 0
        MOVL      XAR4,XAR2             ; [CPU_ALU] |90| 
        MOV       ACC,AL                ; [CPU_ALU] |90| 
$C$DW$190	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$190, DW_AT_low_pc(0x00)
	.dwattr $C$DW$190, DW_AT_name("_emit_u32")
	.dwattr $C$DW$190, DW_AT_TI_call

        LCR       #_emit_u32            ; [CPU_ALU] |90| 
        ; call occurs [#_emit_u32] ; [] |90| 
	.dwpsn	file "examples\common\spiflash_self_test.c",line 91,column 9,is_stmt,isa 0
        MOVL      XAR4,XAR2             ; [CPU_ALU] |91| 
        MOVL      XAR5,#$C$FSL18        ; [CPU_ARAU] |91| 
$C$DW$191	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$191, DW_AT_low_pc(0x00)
	.dwattr $C$DW$191, DW_AT_name("_emit")
	.dwattr $C$DW$191, DW_AT_TI_call

        LCR       #_emit                ; [CPU_ALU] |91| 
        ; call occurs [#_emit] ; [] |91| 
$C$L30:    
	.dwpsn	file "examples\common\spiflash_self_test.c",line 93,column 5,is_stmt,isa 0
        MOVL      XAR4,XAR2             ; [CPU_ALU] |93| 
        MOVL      XAR5,#$C$FSL12        ; [CPU_ARAU] |93| 
$C$DW$192	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$192, DW_AT_low_pc(0x00)
	.dwattr $C$DW$192, DW_AT_name("_emit")
	.dwattr $C$DW$192, DW_AT_TI_call

        LCR       #_emit                ; [CPU_ALU] |93| 
        ; call occurs [#_emit] ; [] |93| 
	.dwpsn	file "examples\common\spiflash_self_test.c",line 94,column 5,is_stmt,isa 0
        MOVL      XAR7,*+XAR2[4]        ; [CPU_ALU] |94| 
        MOVL      ACC,XAR7              ; [CPU_ALU] |94| 
        B         $C$L31,EQ             ; [CPU_ALU] |94| 
        ; branchcc occurs ; [] |94| 
	.dwpsn	file "examples\common\spiflash_self_test.c",line 94,column 25,is_stmt,isa 0
        MOVL      XAR4,XAR3             ; [CPU_ALU] |94| 
        MOVB      AL,#1                 ; [CPU_ALU] |94| 
        MOV       AH,AR1                ; [CPU_ALU] |94| 
$C$DW$193	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$193, DW_AT_low_pc(0x00)
	.dwattr $C$DW$193, DW_AT_TI_call
	.dwattr $C$DW$193, DW_AT_TI_indirect

        LCR       *XAR7                 ; [CPU_ALU] |94| 
        ; call occurs [XAR7] ; [] |94| 
$C$L31:    
        MOVL      XAR3,*--SP            ; [CPU_ALU] 
	.dwcfi	cfa_offset, -6
	.dwcfi	restore_reg, 11
        MOVL      XAR2,*--SP            ; [CPU_ALU] 
	.dwcfi	cfa_offset, -4
	.dwcfi	restore_reg, 9
        MOVL      XAR1,*--SP            ; [CPU_ALU] 
	.dwcfi	cfa_offset, -2
	.dwcfi	restore_reg, 7
$C$DW$194	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$194, DW_AT_low_pc(0x00)
	.dwattr $C$DW$194, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$180, DW_AT_TI_end_file("examples\common\spiflash_self_test.c")
	.dwattr $C$DW$180, DW_AT_TI_end_line(0x5f)
	.dwattr $C$DW$180, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$180

	.sect	".text"
	.clink

$C$DW$195	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$195, DW_AT_name("t_chip_erase")
	.dwattr $C$DW$195, DW_AT_low_pc(_t_chip_erase)
	.dwattr $C$DW$195, DW_AT_high_pc(0x00)
	.dwattr $C$DW$195, DW_AT_TI_symbol_name("_t_chip_erase")
	.dwattr $C$DW$195, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$195, DW_AT_TI_begin_file("examples\common\spiflash_self_test.c")
	.dwattr $C$DW$195, DW_AT_TI_begin_line(0xdf)
	.dwattr $C$DW$195, DW_AT_TI_begin_column(0x0c)
	.dwattr $C$DW$195, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "examples\common\spiflash_self_test.c",line 223,column 58,is_stmt,address _t_chip_erase,isa 0

	.dwfde $C$DW$CIE, _t_chip_erase
$C$DW$196	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$196, DW_AT_name("ctx")
	.dwattr $C$DW$196, DW_AT_TI_symbol_name("_ctx")
	.dwattr $C$DW$196, DW_AT_type(*$C$DW$T$38)
	.dwattr $C$DW$196, DW_AT_location[DW_OP_reg12]


;***************************************************************
;* FNAME: _t_chip_erase                 FR SIZE:   4           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            2 Parameter,  0 Auto,  2 SOE     *
;***************************************************************

_t_chip_erase:
;* AR1   assigned to _ctx
$C$DW$197	.dwtag  DW_TAG_variable
	.dwattr $C$DW$197, DW_AT_name("ctx")
	.dwattr $C$DW$197, DW_AT_TI_symbol_name("_ctx")
	.dwattr $C$DW$197, DW_AT_type(*$C$DW$T$80)
	.dwattr $C$DW$197, DW_AT_location[DW_OP_reg6]

;* AL    assigned to _rc
$C$DW$198	.dwtag  DW_TAG_variable
	.dwattr $C$DW$198, DW_AT_name("rc")
	.dwattr $C$DW$198, DW_AT_TI_symbol_name("_rc")
	.dwattr $C$DW$198, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$198, DW_AT_location[DW_OP_reg0]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        MOVL      *SP++,XAR1            ; [CPU_ALU] 
	.dwcfi	save_reg_to_mem, 7, 2
	.dwcfi	cfa_offset, -4
        ADDB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -6
        MOVL      XAR1,XAR4             ; [CPU_ALU] |223| 
	.dwpsn	file "examples\common\spiflash_self_test.c",line 225,column 28,is_stmt,isa 0
        MOVL      XAR4,*+XAR1[0]        ; [CPU_ALU] |225| 
$C$DW$199	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$199, DW_AT_low_pc(0x00)
	.dwattr $C$DW$199, DW_AT_name("_SPIFLASH_chip_erase")
	.dwattr $C$DW$199, DW_AT_TI_call

        LCR       #_SPIFLASH_chip_erase ; [CPU_ALU] |225| 
        ; call occurs [#_SPIFLASH_chip_erase] ; [] |225| 
        CMPB      AL,#0                 ; [CPU_ALU] |225| 
        B         $C$L32,NEQ            ; [CPU_ALU] |225| 
        ; branchcc occurs ; [] |225| 
        MOVB      XAR0,#8               ; [CPU_ALU] |225| 
        MOVL      ACC,*+XAR1[AR0]       ; [CPU_ALU] |225| 
        MOVL      XAR4,XAR1             ; [CPU_ALU] |225| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |225| 
        MOVL      ACC,*+XAR1[6]         ; [CPU_ALU] |225| 
$C$DW$200	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$200, DW_AT_low_pc(0x00)
	.dwattr $C$DW$200, DW_AT_name("_verify_erased")
	.dwattr $C$DW$200, DW_AT_TI_call

        LCR       #_verify_erased       ; [CPU_ALU] |225| 
        ; call occurs [#_verify_erased] ; [] |225| 
$C$L32:    
        SUBB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -4
        MOVL      XAR1,*--SP            ; [CPU_ALU] 
	.dwcfi	cfa_offset, -2
	.dwcfi	restore_reg, 7
$C$DW$201	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$201, DW_AT_low_pc(0x00)
	.dwattr $C$DW$201, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$195, DW_AT_TI_end_file("examples\common\spiflash_self_test.c")
	.dwattr $C$DW$195, DW_AT_TI_end_line(0xe4)
	.dwattr $C$DW$195, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$195

	.sect	".text"
	.clink
	.global	_spif_self_test_run

$C$DW$202	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$202, DW_AT_name("spif_self_test_run")
	.dwattr $C$DW$202, DW_AT_low_pc(_spif_self_test_run)
	.dwattr $C$DW$202, DW_AT_high_pc(0x00)
	.dwattr $C$DW$202, DW_AT_TI_symbol_name("_spif_self_test_run")
	.dwattr $C$DW$202, DW_AT_external
	.dwattr $C$DW$202, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$202, DW_AT_TI_begin_file("examples\common\spiflash_self_test.c")
	.dwattr $C$DW$202, DW_AT_TI_begin_line(0xef)
	.dwattr $C$DW$202, DW_AT_TI_begin_column(0x05)
	.dwattr $C$DW$202, DW_AT_TI_max_frame_size(-12)
	.dwpsn	file "examples\common\spiflash_self_test.c",line 239,column 57,is_stmt,address _spif_self_test_run,isa 0

	.dwfde $C$DW$CIE, _spif_self_test_run
$C$DW$203	.dwtag  DW_TAG_variable
	.dwattr $C$DW$203, DW_AT_name("base_steps")
	.dwattr $C$DW$203, DW_AT_TI_symbol_name("_base_steps$3")
	.dwattr $C$DW$203, DW_AT_type(*$C$DW$T$86)
	.dwattr $C$DW$203, DW_AT_location[DW_OP_addr _base_steps$3]

$C$DW$204	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$204, DW_AT_name("ctx")
	.dwattr $C$DW$204, DW_AT_TI_symbol_name("_ctx")
	.dwattr $C$DW$204, DW_AT_type(*$C$DW$T$38)
	.dwattr $C$DW$204, DW_AT_location[DW_OP_reg12]


;***************************************************************
;* FNAME: _spif_self_test_run           FR SIZE:  10           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  4 Auto,  6 SOE     *
;***************************************************************

_spif_self_test_run:
;* AR3   assigned to $O$C16
;* AR1   assigned to $O$U36
$C$DW$205	.dwtag  DW_TAG_variable
	.dwattr $C$DW$205, DW_AT_name("ctx")
	.dwattr $C$DW$205, DW_AT_TI_symbol_name("_ctx")
	.dwattr $C$DW$205, DW_AT_type(*$C$DW$T$80)
	.dwattr $C$DW$205, DW_AT_location[DW_OP_breg20 -4]

$C$DW$206	.dwtag  DW_TAG_variable
	.dwattr $C$DW$206, DW_AT_name("failures")
	.dwattr $C$DW$206, DW_AT_TI_symbol_name("_failures")
	.dwattr $C$DW$206, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$206, DW_AT_location[DW_OP_breg20 -1]

;* AR2   assigned to _total
$C$DW$207	.dwtag  DW_TAG_variable
	.dwattr $C$DW$207, DW_AT_name("total")
	.dwattr $C$DW$207, DW_AT_TI_symbol_name("_total")
	.dwattr $C$DW$207, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$207, DW_AT_location[DW_OP_reg8]

$C$DW$208	.dwtag  DW_TAG_variable
	.dwattr $C$DW$208, DW_AT_name("rc")
	.dwattr $C$DW$208, DW_AT_TI_symbol_name("_rc")
	.dwattr $C$DW$208, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$208, DW_AT_location[DW_OP_breg20 -2]

;* AR1   assigned to _rc
$C$DW$209	.dwtag  DW_TAG_variable
	.dwattr $C$DW$209, DW_AT_name("rc")
	.dwattr $C$DW$209, DW_AT_TI_symbol_name("_rc")
	.dwattr $C$DW$209, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$209, DW_AT_location[DW_OP_reg6]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        MOVL      *SP++,XAR1            ; [CPU_ALU] 
	.dwcfi	save_reg_to_mem, 7, 2
	.dwcfi	cfa_offset, -4
        MOVL      *SP++,XAR2            ; [CPU_ALU] 
	.dwcfi	save_reg_to_mem, 9, 4
	.dwcfi	cfa_offset, -6
        MOVL      *SP++,XAR3            ; [CPU_ALU] 
	.dwcfi	save_reg_to_mem, 11, 6
	.dwcfi	cfa_offset, -8
        ADDB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -12
        MOVL      *-SP[4],XAR4          ; [CPU_ALU] |239| 
        MOVL      ACC,*-SP[4]           ; [CPU_ALU] |239| 
	.dwpsn	file "examples\common\spiflash_self_test.c",line 240,column 5,is_stmt,isa 0
        B         $C$L33,EQ             ; [CPU_ALU] |240| 
        ; branchcc occurs ; [] |240| 
        MOVL      ACC,*+XAR4[0]         ; [CPU_ALU] |240| 
        B         $C$L33,EQ             ; [CPU_ALU] |240| 
        ; branchcc occurs ; [] |240| 
        MOVB      XAR0,#10              ; [CPU_ALU] |240| 
        MOVL      ACC,*+XAR4[AR0]       ; [CPU_ALU] |240| 
        B         $C$L33,EQ             ; [CPU_ALU] |240| 
        ; branchcc occurs ; [] |240| 
        MOVB      XAR0,#12              ; [CPU_ALU] |240| 
        MOVL      ACC,*+XAR4[AR0]       ; [CPU_ALU] |240| 
        B         $C$L33,EQ             ; [CPU_ALU] |240| 
        ; branchcc occurs ; [] |240| 
        MOVB      XAR0,#8               ; [CPU_ALU] |240| 
        MOVL      ACC,*+XAR4[AR0]       ; [CPU_ALU] |240| 
        B         $C$L34,NEQ            ; [CPU_ALU] |240| 
        ; branchcc occurs ; [] |240| 
$C$L33:    
	.dwpsn	file "examples\common\spiflash_self_test.c",line 242,column 9,is_stmt,isa 0
        MOV       AL,#-1                ; [CPU_ALU] |242| 
        B         $C$L39,UNC            ; [CPU_ALU] |242| 
        ; branch occurs ; [] |242| 
$C$L34:    
	.dwpsn	file "examples\common\spiflash_self_test.c",line 245,column 5,is_stmt,isa 0
        MOVL      XAR5,#$C$FSL26        ; [CPU_ARAU] |245| 
$C$DW$210	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$210, DW_AT_low_pc(0x00)
	.dwattr $C$DW$210, DW_AT_name("_emit")
	.dwattr $C$DW$210, DW_AT_TI_call

        LCR       #_emit                ; [CPU_ALU] |245| 
        ; call occurs [#_emit] ; [] |245| 
	.dwpsn	file "examples\common\spiflash_self_test.c",line 245,column 54,is_stmt,isa 0
        MOVL      XAR5,#$C$FSL12        ; [CPU_ARAU] |245| 
	.dwpsn	file "examples\common\spiflash_self_test.c",line 245,column 5,is_stmt,isa 0
        MOVL      XAR4,*-SP[4]          ; [CPU_ALU] |245| 
	.dwpsn	file "examples\common\spiflash_self_test.c",line 245,column 54,is_stmt,isa 0
$C$DW$211	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$211, DW_AT_low_pc(0x00)
	.dwattr $C$DW$211, DW_AT_name("_emit")
	.dwattr $C$DW$211, DW_AT_TI_call

        LCR       #_emit                ; [CPU_ALU] |245| 
        ; call occurs [#_emit] ; [] |245| 
	.dwpsn	file "examples\common\spiflash_self_test.c",line 246,column 5,is_stmt,isa 0
        MOVL      XAR5,#$C$FSL27        ; [CPU_ARAU] |246| 
	.dwpsn	file "examples\common\spiflash_self_test.c",line 245,column 54,is_stmt,isa 0
        MOVL      XAR4,*-SP[4]          ; [CPU_ALU] |245| 
	.dwpsn	file "examples\common\spiflash_self_test.c",line 246,column 5,is_stmt,isa 0
$C$DW$212	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$212, DW_AT_low_pc(0x00)
	.dwattr $C$DW$212, DW_AT_name("_emit")
	.dwattr $C$DW$212, DW_AT_TI_call

        LCR       #_emit                ; [CPU_ALU] |246| 
        ; call occurs [#_emit] ; [] |246| 
        MOVL      XAR4,*-SP[4]          ; [CPU_ALU] |246| 
	.dwpsn	file "examples\common\spiflash_self_test.c",line 247,column 5,is_stmt,isa 0
        MOVL      ACC,*+XAR4[6]         ; [CPU_ALU] |247| 
$C$DW$213	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$213, DW_AT_low_pc(0x00)
	.dwattr $C$DW$213, DW_AT_name("_emit_hex32")
	.dwattr $C$DW$213, DW_AT_TI_call

        LCR       #_emit_hex32          ; [CPU_ALU] |247| 
        ; call occurs [#_emit_hex32] ; [] |247| 
	.dwpsn	file "examples\common\spiflash_self_test.c",line 248,column 5,is_stmt,isa 0
        MOVL      XAR5,#$C$FSL28        ; [CPU_ARAU] |248| 
	.dwpsn	file "examples\common\spiflash_self_test.c",line 247,column 5,is_stmt,isa 0
        MOVL      XAR4,*-SP[4]          ; [CPU_ALU] |247| 
	.dwpsn	file "examples\common\spiflash_self_test.c",line 248,column 5,is_stmt,isa 0
$C$DW$214	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$214, DW_AT_low_pc(0x00)
	.dwattr $C$DW$214, DW_AT_name("_emit")
	.dwattr $C$DW$214, DW_AT_TI_call

        LCR       #_emit                ; [CPU_ALU] |248| 
        ; call occurs [#_emit] ; [] |248| 
	.dwpsn	file "examples\common\spiflash_self_test.c",line 249,column 5,is_stmt,isa 0
        MOVL      XAR4,*-SP[4]          ; [CPU_ALU] |249| 
        MOVB      XAR0,#8               ; [CPU_ALU] |249| 
        MOVL      ACC,*+XAR4[AR0]       ; [CPU_ALU] |249| 
$C$DW$215	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$215, DW_AT_low_pc(0x00)
	.dwattr $C$DW$215, DW_AT_name("_emit_u32")
	.dwattr $C$DW$215, DW_AT_TI_call

        LCR       #_emit_u32            ; [CPU_ALU] |249| 
        ; call occurs [#_emit_u32] ; [] |249| 
	.dwpsn	file "examples\common\spiflash_self_test.c",line 250,column 5,is_stmt,isa 0
        MOVL      XAR5,#$C$FSL12        ; [CPU_ARAU] |250| 
	.dwpsn	file "examples\common\spiflash_self_test.c",line 249,column 5,is_stmt,isa 0
        MOVL      XAR4,*-SP[4]          ; [CPU_ALU] |249| 
	.dwpsn	file "examples\common\spiflash_self_test.c",line 250,column 5,is_stmt,isa 0
$C$DW$216	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$216, DW_AT_low_pc(0x00)
	.dwattr $C$DW$216, DW_AT_name("_emit")
	.dwattr $C$DW$216, DW_AT_TI_call

        LCR       #_emit                ; [CPU_ALU] |250| 
        ; call occurs [#_emit] ; [] |250| 
        MOVL      XAR1,#_base_steps$3   ; [CPU_ARAU] 
        MOVB      XAR2,#6               ; [CPU_ALU] 
	.dwpsn	file "examples\common\spiflash_self_test.c",line 262,column 18,is_stmt,isa 0
        MOV       *-SP[1],#0            ; [CPU_ALU] |262| 
$C$L35:    
	.dwpsn	file "examples\common\spiflash_self_test.c",line 265,column 9,is_stmt,isa 0
        MOVL      XAR3,*+XAR1[0]        ; [CPU_ALU] |265| 
        MOVL      XAR4,*-SP[4]          ; [CPU_ALU] |265| 
        MOVL      XAR5,XAR3             ; [CPU_ALU] |265| 
$C$DW$217	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$217, DW_AT_low_pc(0x00)
	.dwattr $C$DW$217, DW_AT_name("_enter")
	.dwattr $C$DW$217, DW_AT_TI_call

        LCR       #_enter               ; [CPU_ALU] |265| 
        ; call occurs [#_enter] ; [] |265| 
	.dwpsn	file "examples\common\spiflash_self_test.c",line 266,column 16,is_stmt,isa 0
        MOVL      XAR4,XAR1             ; [CPU_ALU] |266| 
        MOVL      XAR7,*+XAR4[2]        ; [CPU_ALU] |266| 
        MOVL      XAR4,*-SP[4]          ; [CPU_ALU] |266| 
$C$DW$218	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$218, DW_AT_low_pc(0x00)
	.dwattr $C$DW$218, DW_AT_TI_call
	.dwattr $C$DW$218, DW_AT_TI_indirect

        LCR       *XAR7                 ; [CPU_ALU] |266| 
        ; call occurs [XAR7] ; [] |266| 
        MOV       *-SP[2],AL            ; [CPU_ALU] |266| 
        MOVL      XAR4,*-SP[4]          ; [CPU_ALU] |266| 
	.dwpsn	file "examples\common\spiflash_self_test.c",line 267,column 9,is_stmt,isa 0
        MOVL      XAR5,XAR3             ; [CPU_ALU] |267| 
$C$DW$219	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$219, DW_AT_low_pc(0x00)
	.dwattr $C$DW$219, DW_AT_name("_leave")
	.dwattr $C$DW$219, DW_AT_TI_call

        LCR       #_leave               ; [CPU_ALU] |267| 
        ; call occurs [#_leave] ; [] |267| 
	.dwpsn	file "examples\common\spiflash_self_test.c",line 266,column 16,is_stmt,isa 0
        ADDB      XAR1,#4               ; [CPU_ALU] |266| 
	.dwpsn	file "examples\common\spiflash_self_test.c",line 268,column 22,is_stmt,isa 0
        MOVB      AH,#0                 ; [CPU_ALU] |268| 
        MOV       AL,*-SP[2]            ; [CPU_ALU] |268| 
        MOVB      AH,#1,NEQ             ; [CPU_ALU] |268| 
        ADD       *-SP[1],AH            ; [CPU_ALU] |268| 
	.dwpsn	file "examples\common\spiflash_self_test.c",line 264,column 26,is_stmt,isa 0
        BANZ      $C$L35,AR2--          ; [CPU_ALU] |264| 
        ; branchcc occurs ; [] |264| 
	.dwpsn	file "examples\common\spiflash_self_test.c",line 272,column 5,is_stmt,isa 0
        MOVL      XAR4,*-SP[4]          ; [CPU_ALU] |272| 
        MOVB      XAR0,#16              ; [CPU_ALU] |272| 
	.dwpsn	file "examples\common\spiflash_self_test.c",line 269,column 9,is_stmt,isa 0
        MOVB      XAR2,#7               ; [CPU_ALU] |269| 
	.dwpsn	file "examples\common\spiflash_self_test.c",line 272,column 5,is_stmt,isa 0
        MOV       AL,*+XAR4[AR0]        ; [CPU_ALU] |272| 
        B         $C$L36,EQ             ; [CPU_ALU] |272| 
        ; branchcc occurs ; [] |272| 
	.dwpsn	file "examples\common\spiflash_self_test.c",line 273,column 9,is_stmt,isa 0
        MOVL      XAR5,#$C$FSL29        ; [CPU_ARAU] |273| 
$C$DW$220	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$220, DW_AT_low_pc(0x00)
	.dwattr $C$DW$220, DW_AT_name("_enter")
	.dwattr $C$DW$220, DW_AT_TI_call

        LCR       #_enter               ; [CPU_ALU] |273| 
        ; call occurs [#_enter] ; [] |273| 
        MOVL      XAR4,*-SP[4]          ; [CPU_ALU] |273| 
	.dwpsn	file "examples\common\spiflash_self_test.c",line 274,column 16,is_stmt,isa 0
$C$DW$221	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$221, DW_AT_low_pc(0x00)
	.dwattr $C$DW$221, DW_AT_name("_t_chip_erase")
	.dwattr $C$DW$221, DW_AT_TI_call

        LCR       #_t_chip_erase        ; [CPU_ALU] |274| 
        ; call occurs [#_t_chip_erase] ; [] |274| 
        MOVZ      AR1,AL                ; [CPU_ALU] |274| 
	.dwpsn	file "examples\common\spiflash_self_test.c",line 275,column 9,is_stmt,isa 0
        MOVL      XAR5,#$C$FSL29        ; [CPU_ARAU] |275| 
	.dwpsn	file "examples\common\spiflash_self_test.c",line 274,column 16,is_stmt,isa 0
        MOVL      XAR4,*-SP[4]          ; [CPU_ALU] |274| 
	.dwpsn	file "examples\common\spiflash_self_test.c",line 275,column 9,is_stmt,isa 0
$C$DW$222	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$222, DW_AT_low_pc(0x00)
	.dwattr $C$DW$222, DW_AT_name("_leave")
	.dwattr $C$DW$222, DW_AT_TI_call

        LCR       #_leave               ; [CPU_ALU] |275| 
        ; call occurs [#_leave] ; [] |275| 
	.dwpsn	file "examples\common\spiflash_self_test.c",line 277,column 9,is_stmt,isa 0
        ADDB      XAR2,#1               ; [CPU_ALU] |277| 
	.dwpsn	file "examples\common\spiflash_self_test.c",line 276,column 22,is_stmt,isa 0
        MOVB      AH,#0                 ; [CPU_ALU] |276| 
        MOV       AL,AR1                ; [CPU_ALU] |276| 
        MOVB      AH,#1,NEQ             ; [CPU_ALU] |276| 
        ADD       *-SP[1],AH            ; [CPU_ALU] |276| 
$C$L36:    
        MOVL      XAR4,*-SP[4]          ; [CPU_ALU] 
	.dwpsn	file "examples\common\spiflash_self_test.c",line 280,column 5,is_stmt,isa 0
        MOVL      XAR5,#$C$FSL30        ; [CPU_ARAU] |280| 
$C$DW$223	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$223, DW_AT_low_pc(0x00)
	.dwattr $C$DW$223, DW_AT_name("_emit")
	.dwattr $C$DW$223, DW_AT_TI_call

        LCR       #_emit                ; [CPU_ALU] |280| 
        ; call occurs [#_emit] ; [] |280| 
	.dwpsn	file "examples\common\spiflash_self_test.c",line 281,column 5,is_stmt,isa 0
        MOV       AL,AR2                ; [CPU_ALU] |281| 
        SETC      SXM                   ; [CPU_ALU] 
        SUB       AL,*-SP[1]            ; [CPU_ALU] |281| 
        MOVL      XAR4,*-SP[4]          ; [CPU_ALU] |281| 
        MOV       ACC,AL                ; [CPU_ALU] |281| 
$C$DW$224	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$224, DW_AT_low_pc(0x00)
	.dwattr $C$DW$224, DW_AT_name("_emit_u32")
	.dwattr $C$DW$224, DW_AT_TI_call

        LCR       #_emit_u32            ; [CPU_ALU] |281| 
        ; call occurs [#_emit_u32] ; [] |281| 
	.dwpsn	file "examples\common\spiflash_self_test.c",line 282,column 5,is_stmt,isa 0
        MOVL      XAR5,#$C$FSL31        ; [CPU_ARAU] |282| 
	.dwpsn	file "examples\common\spiflash_self_test.c",line 281,column 5,is_stmt,isa 0
        MOVL      XAR4,*-SP[4]          ; [CPU_ALU] |281| 
	.dwpsn	file "examples\common\spiflash_self_test.c",line 282,column 5,is_stmt,isa 0
$C$DW$225	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$225, DW_AT_low_pc(0x00)
	.dwattr $C$DW$225, DW_AT_name("_emit")
	.dwattr $C$DW$225, DW_AT_TI_call

        LCR       #_emit                ; [CPU_ALU] |282| 
        ; call occurs [#_emit] ; [] |282| 
        SETC      SXM                   ; [CPU_ALU] 
	.dwpsn	file "examples\common\spiflash_self_test.c",line 283,column 5,is_stmt,isa 0
        MOVL      XAR4,*-SP[4]          ; [CPU_ALU] |283| 
        MOV       ACC,AR2               ; [CPU_ALU] |283| 
$C$DW$226	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$226, DW_AT_low_pc(0x00)
	.dwattr $C$DW$226, DW_AT_name("_emit_u32")
	.dwattr $C$DW$226, DW_AT_TI_call

        LCR       #_emit_u32            ; [CPU_ALU] |283| 
        ; call occurs [#_emit_u32] ; [] |283| 
	.dwpsn	file "examples\common\spiflash_self_test.c",line 284,column 5,is_stmt,isa 0
        MOVL      XAR5,#$C$FSL32        ; [CPU_ARAU] |284| 
	.dwpsn	file "examples\common\spiflash_self_test.c",line 283,column 5,is_stmt,isa 0
        MOVL      XAR4,*-SP[4]          ; [CPU_ALU] |283| 
	.dwpsn	file "examples\common\spiflash_self_test.c",line 284,column 5,is_stmt,isa 0
$C$DW$227	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$227, DW_AT_low_pc(0x00)
	.dwattr $C$DW$227, DW_AT_name("_emit")
	.dwattr $C$DW$227, DW_AT_TI_call

        LCR       #_emit                ; [CPU_ALU] |284| 
        ; call occurs [#_emit] ; [] |284| 
	.dwpsn	file "examples\common\spiflash_self_test.c",line 285,column 5,is_stmt,isa 0
        MOVL      XAR5,#$C$FSL12        ; [CPU_ARAU] |285| 
	.dwpsn	file "examples\common\spiflash_self_test.c",line 284,column 5,is_stmt,isa 0
        MOVL      XAR4,*-SP[4]          ; [CPU_ALU] |284| 
	.dwpsn	file "examples\common\spiflash_self_test.c",line 285,column 5,is_stmt,isa 0
$C$DW$228	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$228, DW_AT_low_pc(0x00)
	.dwattr $C$DW$228, DW_AT_name("_emit")
	.dwattr $C$DW$228, DW_AT_TI_call

        LCR       #_emit                ; [CPU_ALU] |285| 
        ; call occurs [#_emit] ; [] |285| 
        MOV       AL,*-SP[1]            ; [CPU_ALU] |285| 
	.dwpsn	file "examples\common\spiflash_self_test.c",line 286,column 5,is_stmt,isa 0
        B         $C$L37,NEQ            ; [CPU_ALU] |286| 
        ; branchcc occurs ; [] |286| 
	.dwpsn	file "examples\common\spiflash_self_test.c",line 287,column 9,is_stmt,isa 0
        MOVL      XAR5,#$C$FSL33        ; [CPU_ARAU] |287| 
        B         $C$L38,UNC            ; [CPU_ALU] 
        ; branch occurs ; [] 
$C$L37:    
        MOVL      XAR4,*-SP[4]          ; [CPU_ALU] 
	.dwpsn	file "examples\common\spiflash_self_test.c",line 289,column 9,is_stmt,isa 0
        MOVL      XAR5,#$C$FSL34        ; [CPU_ARAU] |289| 
$C$DW$229	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$229, DW_AT_low_pc(0x00)
	.dwattr $C$DW$229, DW_AT_name("_emit")
	.dwattr $C$DW$229, DW_AT_TI_call

        LCR       #_emit                ; [CPU_ALU] |289| 
        ; call occurs [#_emit] ; [] |289| 
        SETC      SXM                   ; [CPU_ALU] 
	.dwpsn	file "examples\common\spiflash_self_test.c",line 290,column 9,is_stmt,isa 0
        MOVL      XAR4,*-SP[4]          ; [CPU_ALU] |290| 
        MOV       ACC,*-SP[1]           ; [CPU_ALU] |290| 
$C$DW$230	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$230, DW_AT_low_pc(0x00)
	.dwattr $C$DW$230, DW_AT_name("_emit_u32")
	.dwattr $C$DW$230, DW_AT_TI_call

        LCR       #_emit_u32            ; [CPU_ALU] |290| 
        ; call occurs [#_emit_u32] ; [] |290| 
	.dwpsn	file "examples\common\spiflash_self_test.c",line 291,column 9,is_stmt,isa 0
        MOVL      XAR5,#$C$FSL35        ; [CPU_ARAU] |291| 
$C$L38:    
	.dwpsn	file "examples\common\spiflash_self_test.c",line 290,column 9,is_stmt,isa 0
        MOVL      XAR4,*-SP[4]          ; [CPU_ALU] |290| 
	.dwpsn	file "examples\common\spiflash_self_test.c",line 291,column 9,is_stmt,isa 0
$C$DW$231	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$231, DW_AT_low_pc(0x00)
	.dwattr $C$DW$231, DW_AT_name("_emit")
	.dwattr $C$DW$231, DW_AT_TI_call

        LCR       #_emit                ; [CPU_ALU] |291| 
        ; call occurs [#_emit] ; [] |291| 
	.dwpsn	file "examples\common\spiflash_self_test.c",line 292,column 9,is_stmt,isa 0
        MOVL      XAR5,#$C$FSL12        ; [CPU_ARAU] |292| 
	.dwpsn	file "examples\common\spiflash_self_test.c",line 291,column 9,is_stmt,isa 0
        MOVL      XAR4,*-SP[4]          ; [CPU_ALU] |291| 
	.dwpsn	file "examples\common\spiflash_self_test.c",line 292,column 9,is_stmt,isa 0
$C$DW$232	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$232, DW_AT_low_pc(0x00)
	.dwattr $C$DW$232, DW_AT_name("_emit")
	.dwattr $C$DW$232, DW_AT_TI_call

        LCR       #_emit                ; [CPU_ALU] |292| 
        ; call occurs [#_emit] ; [] |292| 
        MOV       AL,*-SP[1]            ; [CPU_ALU] 
$C$L39:    
        SUBB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -8
        MOVL      XAR3,*--SP            ; [CPU_ALU] 
	.dwcfi	cfa_offset, -6
	.dwcfi	restore_reg, 11
        MOVL      XAR2,*--SP            ; [CPU_ALU] 
	.dwcfi	cfa_offset, -4
	.dwcfi	restore_reg, 9
        MOVL      XAR1,*--SP            ; [CPU_ALU] 
	.dwcfi	cfa_offset, -2
	.dwcfi	restore_reg, 7
$C$DW$233	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$233, DW_AT_low_pc(0x00)
	.dwattr $C$DW$233, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$202, DW_AT_TI_end_file("examples\common\spiflash_self_test.c")
	.dwattr $C$DW$202, DW_AT_TI_end_line(0x127)
	.dwattr $C$DW$202, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$202

;***************************************************************
;* FAR STRINGS                                                 *
;***************************************************************
	.sect	".econst:.string"
	.align	2
$C$FSL1:	.string	"0123456789ABCDEF",0
	.align	2
$C$FSL2:	.string	"jedec_id",0
	.align	2
$C$FSL3:	.string	"read_sr",0
	.align	2
$C$FSL4:	.string	"erase_sector",0
	.align	2
$C$FSL5:	.string	"verify_erased",0
	.align	2
$C$FSL6:	.string	"write_read",0
	.align	2
$C$FSL7:	.string	"page_boundary",0
	.align	2
$C$FSL8:	.string	"unwritten_remains_ff",0
	.align	2
$C$FSL9:	.string	"0",0
	.align	2
$C$FSL10:	.string	"           non-FF at offset=",0
	.align	2
$C$FSL11:	.string	" got=",0
	.align	2
$C$FSL12:	.string	13,10,0
	.align	2
$C$FSL13:	.string	"           sr=",0
	.align	2
$C$FSL14:	.string	"           jedec=",0
	.align	2
$C$FSL15:	.string	" (mfg=",0
	.align	2
$C$FSL16:	.string	" type=",0
	.align	2
$C$FSL17:	.string	" cap=",0
	.align	2
$C$FSL18:	.string	")",0
	.align	2
$C$FSL19:	.string	"           expected=",0
	.align	2
$C$FSL20:	.string	"           mismatch at offset=",0
	.align	2
$C$FSL21:	.string	" exp=",0
	.align	2
$C$FSL22:	.string	"[ RUN     ] ",0
	.align	2
$C$FSL23:	.string	"[  FAILED ] ",0
	.align	2
$C$FSL24:	.string	"[       OK] ",0
	.align	2
$C$FSL25:	.string	" (rc=",0
	.align	2
$C$FSL26:	.string	"[----------] spiflash self-test starting",0
	.align	2
$C$FSL27:	.string	"            test_offset=",0
	.align	2
$C$FSL28:	.string	" test_size=",0
	.align	2
$C$FSL29:	.string	"chip_erase",0
	.align	2
$C$FSL30:	.string	"[----------] ",0
	.align	2
$C$FSL31:	.string	"/",0
	.align	2
$C$FSL32:	.string	" passed",0
	.align	2
$C$FSL33:	.string	"[  PASSED  ] all tests",0
	.align	2
$C$FSL34:	.string	"[  FAILED  ] ",0
	.align	2
$C$FSL35:	.string	" sub-test(s)",0
;**************************************************************
;* UNDEFINED EXTERNAL REFERENCES                              *
;**************************************************************
	.global	_SPIFLASH_read_jedec_id
	.global	_SPIFLASH_read_sr
	.global	_SPIFLASH_erase
	.global	_SPIFLASH_read
	.global	_SPIFLASH_write
	.global	_SPIFLASH_chip_erase

;***************************************************************
;* TYPE INFORMATION                                            *
;***************************************************************

$C$DW$T$69	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$69, DW_AT_byte_size(0x01)
$C$DW$234	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$234, DW_AT_name("SPIFLASH_OP_IDLE")
	.dwattr $C$DW$234, DW_AT_const_value(0x00)

$C$DW$235	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$235, DW_AT_name("SPIFLASH_OP_ERASE_BLOCK_sWREN")
	.dwattr $C$DW$235, DW_AT_const_value(0x01)

$C$DW$236	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$236, DW_AT_name("SPIFLASH_OP_ERASE_BLOCK_sERAS")
	.dwattr $C$DW$236, DW_AT_const_value(0x02)

$C$DW$237	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$237, DW_AT_name("SPIFLASH_OP_ERASE_CHIP_sWREN")
	.dwattr $C$DW$237, DW_AT_const_value(0x03)

$C$DW$238	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$238, DW_AT_name("SPIFLASH_OP_ERASE_CHIP_sERAS")
	.dwattr $C$DW$238, DW_AT_const_value(0x04)

$C$DW$239	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$239, DW_AT_name("SPIFLASH_OP_WRITE_sWREN")
	.dwattr $C$DW$239, DW_AT_const_value(0x05)

$C$DW$240	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$240, DW_AT_name("SPIFLASH_OP_WRITE_sADDR")
	.dwattr $C$DW$240, DW_AT_const_value(0x06)

$C$DW$241	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$241, DW_AT_name("SPIFLASH_OP_WRITE_sDATA")
	.dwattr $C$DW$241, DW_AT_const_value(0x07)

$C$DW$242	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$242, DW_AT_name("SPIFLASH_OP_WRITE_SR_sWREN")
	.dwattr $C$DW$242, DW_AT_const_value(0x08)

$C$DW$243	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$243, DW_AT_name("SPIFLASH_OP_WRITE_SR_sDATA")
	.dwattr $C$DW$243, DW_AT_const_value(0x09)

$C$DW$244	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$244, DW_AT_name("SPIFLASH_OP_WRITE_REG_sWREN")
	.dwattr $C$DW$244, DW_AT_const_value(0x0a)

$C$DW$245	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$245, DW_AT_name("SPIFLASH_OP_WRITE_REG_sDATAWAIT")
	.dwattr $C$DW$245, DW_AT_const_value(0x0b)

$C$DW$246	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$246, DW_AT_name("SPIFLASH_OP_WRITE_REG_DATA")
	.dwattr $C$DW$246, DW_AT_const_value(0x0c)

$C$DW$247	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$247, DW_AT_name("SPIFLASH_OP_READ")
	.dwattr $C$DW$247, DW_AT_const_value(0x0d)

$C$DW$248	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$248, DW_AT_name("SPIFLASH_OP_FAST_READ")
	.dwattr $C$DW$248, DW_AT_const_value(0x0e)

$C$DW$249	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$249, DW_AT_name("SPIFLASH_OP_READ_SR")
	.dwattr $C$DW$249, DW_AT_const_value(0x0f)

$C$DW$250	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$250, DW_AT_name("SPIFLASH_OP_READ_SR_BUSY")
	.dwattr $C$DW$250, DW_AT_const_value(0x10)

$C$DW$251	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$251, DW_AT_name("SPIFLASH_OP_READ_JEDEC")
	.dwattr $C$DW$251, DW_AT_const_value(0x11)

$C$DW$252	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$252, DW_AT_name("SPIFLASH_OP_READ_PRODUCT")
	.dwattr $C$DW$252, DW_AT_const_value(0x12)

$C$DW$253	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$253, DW_AT_name("SPIFLASH_OP_READ_REG")
	.dwattr $C$DW$253, DW_AT_const_value(0x13)

	.dwendtag $C$DW$T$69

$C$DW$T$70	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$70, DW_AT_name("spiflash_op_t")
	.dwattr $C$DW$T$70, DW_AT_type(*$C$DW$T$69)
	.dwattr $C$DW$T$70, DW_AT_language(DW_LANG_C)

$C$DW$254	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$254, DW_AT_type(*$C$DW$T$70)

$C$DW$T$74	.dwtag  DW_TAG_volatile_type
	.dwattr $C$DW$T$74, DW_AT_type(*$C$DW$254)


$C$DW$T$35	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$35, DW_AT_byte_size(0x12)
$C$DW$255	.dwtag  DW_TAG_member
	.dwattr $C$DW$255, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$255, DW_AT_name("spi")
	.dwattr $C$DW$255, DW_AT_TI_symbol_name("_spi")
	.dwattr $C$DW$255, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$255, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$256	.dwtag  DW_TAG_member
	.dwattr $C$DW$256, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$256, DW_AT_name("log")
	.dwattr $C$DW$256, DW_AT_TI_symbol_name("_log")
	.dwattr $C$DW$256, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$256, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$257	.dwtag  DW_TAG_member
	.dwattr $C$DW$257, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$257, DW_AT_name("step_hook")
	.dwattr $C$DW$257, DW_AT_TI_symbol_name("_step_hook")
	.dwattr $C$DW$257, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$257, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$258	.dwtag  DW_TAG_member
	.dwattr $C$DW$258, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$258, DW_AT_name("test_offset")
	.dwattr $C$DW$258, DW_AT_TI_symbol_name("_test_offset")
	.dwattr $C$DW$258, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$258, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$259	.dwtag  DW_TAG_member
	.dwattr $C$DW$259, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$259, DW_AT_name("test_size")
	.dwattr $C$DW$259, DW_AT_TI_symbol_name("_test_size")
	.dwattr $C$DW$259, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$259, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$260	.dwtag  DW_TAG_member
	.dwattr $C$DW$260, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$260, DW_AT_name("scratch_a")
	.dwattr $C$DW$260, DW_AT_TI_symbol_name("_scratch_a")
	.dwattr $C$DW$260, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$260, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$261	.dwtag  DW_TAG_member
	.dwattr $C$DW$261, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$261, DW_AT_name("scratch_b")
	.dwattr $C$DW$261, DW_AT_TI_symbol_name("_scratch_b")
	.dwattr $C$DW$261, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$261, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$262	.dwtag  DW_TAG_member
	.dwattr $C$DW$262, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$262, DW_AT_name("expected_jedec")
	.dwattr $C$DW$262, DW_AT_TI_symbol_name("_expected_jedec")
	.dwattr $C$DW$262, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr $C$DW$262, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$263	.dwtag  DW_TAG_member
	.dwattr $C$DW$263, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$263, DW_AT_name("enable_chip_erase")
	.dwattr $C$DW$263, DW_AT_TI_symbol_name("_enable_chip_erase")
	.dwattr $C$DW$263, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$263, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$35

$C$DW$T$36	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$36, DW_AT_name("spif_self_test_ctx_t")
	.dwattr $C$DW$T$36, DW_AT_type(*$C$DW$T$35)
	.dwattr $C$DW$T$36, DW_AT_language(DW_LANG_C)

$C$DW$264	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$264, DW_AT_type(*$C$DW$T$36)

$C$DW$T$37	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$37, DW_AT_type(*$C$DW$264)

$C$DW$T$38	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$38, DW_AT_type(*$C$DW$T$37)
	.dwattr $C$DW$T$38, DW_AT_address_class(0x20)

$C$DW$265	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$265, DW_AT_type(*$C$DW$T$38)

$C$DW$T$80	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$80, DW_AT_type(*$C$DW$265)


$C$DW$T$41	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$41, DW_AT_byte_size(0x04)
$C$DW$266	.dwtag  DW_TAG_member
	.dwattr $C$DW$266, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$266, DW_AT_name("name")
	.dwattr $C$DW$266, DW_AT_TI_symbol_name("_name")
	.dwattr $C$DW$266, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$266, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$267	.dwtag  DW_TAG_member
	.dwattr $C$DW$267, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$267, DW_AT_name("fn")
	.dwattr $C$DW$267, DW_AT_TI_symbol_name("_fn")
	.dwattr $C$DW$267, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$267, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$41

$C$DW$T$84	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$84, DW_AT_name("step_t")
	.dwattr $C$DW$T$84, DW_AT_type(*$C$DW$T$41)
	.dwattr $C$DW$T$84, DW_AT_language(DW_LANG_C)

$C$DW$268	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$268, DW_AT_type(*$C$DW$T$84)

$C$DW$T$85	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$85, DW_AT_type(*$C$DW$268)


$C$DW$T$86	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$86, DW_AT_type(*$C$DW$T$85)
	.dwattr $C$DW$T$86, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$86, DW_AT_byte_size(0x1c)
$C$DW$269	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$269, DW_AT_upper_bound(0x06)

	.dwendtag $C$DW$T$86


$C$DW$T$42	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$42, DW_AT_byte_size(0x02)
$C$DW$270	.dwtag  DW_TAG_member
	.dwattr $C$DW$270, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$270, DW_AT_name("wr_len")
	.dwattr $C$DW$270, DW_AT_TI_symbol_name("_wr_len")
	.dwattr $C$DW$270, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$270, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$271	.dwtag  DW_TAG_member
	.dwattr $C$DW$271, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$271, DW_AT_name("rd_len")
	.dwattr $C$DW$271, DW_AT_TI_symbol_name("_rd_len")
	.dwattr $C$DW$271, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$271, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$272	.dwtag  DW_TAG_member
	.dwattr $C$DW$272, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$272, DW_AT_name("erase_len")
	.dwattr $C$DW$272, DW_AT_TI_symbol_name("_erase_len")
	.dwattr $C$DW$272, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$272, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$42


$C$DW$T$47	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$47, DW_AT_byte_size(0x02)
$C$DW$273	.dwtag  DW_TAG_member
	.dwattr $C$DW$273, DW_AT_type(*$C$DW$T$44)
	.dwattr $C$DW$273, DW_AT_name("wr_buf")
	.dwattr $C$DW$273, DW_AT_TI_symbol_name("_wr_buf")
	.dwattr $C$DW$273, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$273, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$274	.dwtag  DW_TAG_member
	.dwattr $C$DW$274, DW_AT_type(*$C$DW$T$45)
	.dwattr $C$DW$274, DW_AT_name("rd_buf")
	.dwattr $C$DW$274, DW_AT_TI_symbol_name("_rd_buf")
	.dwattr $C$DW$274, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$274, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$275	.dwtag  DW_TAG_member
	.dwattr $C$DW$275, DW_AT_type(*$C$DW$T$45)
	.dwattr $C$DW$275, DW_AT_name("sr_dst")
	.dwattr $C$DW$275, DW_AT_TI_symbol_name("_sr_dst")
	.dwattr $C$DW$275, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$275, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$276	.dwtag  DW_TAG_member
	.dwattr $C$DW$276, DW_AT_type(*$C$DW$T$45)
	.dwattr $C$DW$276, DW_AT_name("reg_dst")
	.dwattr $C$DW$276, DW_AT_TI_symbol_name("_reg_dst")
	.dwattr $C$DW$276, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$276, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$277	.dwtag  DW_TAG_member
	.dwattr $C$DW$277, DW_AT_type(*$C$DW$T$46)
	.dwattr $C$DW$277, DW_AT_name("id_dst")
	.dwattr $C$DW$277, DW_AT_TI_symbol_name("_id_dst")
	.dwattr $C$DW$277, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$277, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$47


$C$DW$T$49	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$49, DW_AT_byte_size(0x10)
$C$DW$278	.dwtag  DW_TAG_member
	.dwattr $C$DW$278, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$278, DW_AT_name("reg_nbr")
	.dwattr $C$DW$278, DW_AT_TI_symbol_name("_reg_nbr")
	.dwattr $C$DW$278, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$278, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$279	.dwtag  DW_TAG_member
	.dwattr $C$DW$279, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$279, DW_AT_name("sr_data")
	.dwattr $C$DW$279, DW_AT_TI_symbol_name("_sr_data")
	.dwattr $C$DW$279, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$279, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$280	.dwtag  DW_TAG_member
	.dwattr $C$DW$280, DW_AT_type(*$C$DW$T$48)
	.dwattr $C$DW$280, DW_AT_name("tx_internal_buf")
	.dwattr $C$DW$280, DW_AT_TI_symbol_name("_tx_internal_buf")
	.dwattr $C$DW$280, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$280, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$49

$C$DW$T$2	.dwtag  DW_TAG_unspecified_type
	.dwattr $C$DW$T$2, DW_AT_name("void")

$C$DW$T$3	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$3, DW_AT_type(*$C$DW$T$2)
	.dwattr $C$DW$T$3, DW_AT_address_class(0x20)


$C$DW$T$24	.dwtag  DW_TAG_subroutine_type
	.dwattr $C$DW$T$24, DW_AT_language(DW_LANG_C)
$C$DW$281	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$281, DW_AT_type(*$C$DW$T$23)

	.dwendtag $C$DW$T$24

$C$DW$T$25	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$25, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$T$25, DW_AT_address_class(0x20)

$C$DW$T$26	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$26, DW_AT_name("spif_log_fn")
	.dwattr $C$DW$T$26, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$T$26, DW_AT_language(DW_LANG_C)


$C$DW$T$27	.dwtag  DW_TAG_subroutine_type
	.dwattr $C$DW$T$27, DW_AT_language(DW_LANG_C)
$C$DW$282	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$282, DW_AT_type(*$C$DW$T$23)

$C$DW$283	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$283, DW_AT_type(*$C$DW$T$10)

$C$DW$284	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$284, DW_AT_type(*$C$DW$T$10)

	.dwendtag $C$DW$T$27

$C$DW$T$28	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$28, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$T$28, DW_AT_address_class(0x20)

$C$DW$T$29	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$29, DW_AT_name("spif_step_hook_fn")
	.dwattr $C$DW$T$29, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$T$29, DW_AT_language(DW_LANG_C)


$C$DW$T$55	.dwtag  DW_TAG_subroutine_type
	.dwattr $C$DW$T$55, DW_AT_language(DW_LANG_C)
$C$DW$285	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$285, DW_AT_type(*$C$DW$T$52)

$C$DW$286	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$286, DW_AT_type(*$C$DW$T$32)

	.dwendtag $C$DW$T$55

$C$DW$T$56	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$56, DW_AT_type(*$C$DW$T$55)
	.dwattr $C$DW$T$56, DW_AT_address_class(0x20)


$C$DW$T$57	.dwtag  DW_TAG_subroutine_type
	.dwattr $C$DW$T$57, DW_AT_language(DW_LANG_C)
$C$DW$287	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$287, DW_AT_type(*$C$DW$T$52)

$C$DW$288	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$288, DW_AT_type(*$C$DW$T$31)

	.dwendtag $C$DW$T$57

$C$DW$T$58	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$58, DW_AT_type(*$C$DW$T$57)
	.dwattr $C$DW$T$58, DW_AT_address_class(0x20)


$C$DW$T$71	.dwtag  DW_TAG_subroutine_type
	.dwattr $C$DW$T$71, DW_AT_language(DW_LANG_C)
$C$DW$289	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$289, DW_AT_type(*$C$DW$T$52)

$C$DW$290	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$290, DW_AT_type(*$C$DW$T$70)

$C$DW$291	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$291, DW_AT_type(*$C$DW$T$10)

	.dwendtag $C$DW$T$71

$C$DW$T$72	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$72, DW_AT_type(*$C$DW$T$71)
	.dwattr $C$DW$T$72, DW_AT_address_class(0x20)

$C$DW$T$73	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$73, DW_AT_name("spiflash_cb_async_t")
	.dwattr $C$DW$T$73, DW_AT_type(*$C$DW$T$72)
	.dwattr $C$DW$T$73, DW_AT_language(DW_LANG_C)

$C$DW$T$4	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$4, DW_AT_encoding(DW_ATE_boolean)
	.dwattr $C$DW$T$4, DW_AT_name("bool")
	.dwattr $C$DW$T$4, DW_AT_byte_size(0x01)

$C$DW$T$5	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$5, DW_AT_encoding(DW_ATE_signed_char)
	.dwattr $C$DW$T$5, DW_AT_name("signed char")
	.dwattr $C$DW$T$5, DW_AT_byte_size(0x01)

$C$DW$T$6	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$6, DW_AT_encoding(DW_ATE_unsigned_char)
	.dwattr $C$DW$T$6, DW_AT_name("unsigned char")
	.dwattr $C$DW$T$6, DW_AT_byte_size(0x01)

$C$DW$T$32	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$32, DW_AT_name("uint8_t")
	.dwattr $C$DW$T$32, DW_AT_type(*$C$DW$T$6)
	.dwattr $C$DW$T$32, DW_AT_language(DW_LANG_C)

$C$DW$T$45	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$45, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$T$45, DW_AT_address_class(0x20)


$C$DW$T$48	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$48, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$T$48, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$48, DW_AT_byte_size(0x10)
$C$DW$292	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$292, DW_AT_upper_bound(0x0f)

	.dwendtag $C$DW$T$48

$C$DW$T$33	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$33, DW_AT_name("spif_byte_t")
	.dwattr $C$DW$T$33, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$T$33, DW_AT_language(DW_LANG_C)

$C$DW$T$34	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$34, DW_AT_type(*$C$DW$T$33)
	.dwattr $C$DW$T$34, DW_AT_address_class(0x20)

$C$DW$293	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$293, DW_AT_type(*$C$DW$T$32)

$C$DW$T$43	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$43, DW_AT_type(*$C$DW$293)

$C$DW$T$44	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$44, DW_AT_type(*$C$DW$T$43)
	.dwattr $C$DW$T$44, DW_AT_address_class(0x20)

$C$DW$T$7	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$7, DW_AT_encoding(DW_ATE_signed_char)
	.dwattr $C$DW$T$7, DW_AT_name("wchar_t")
	.dwattr $C$DW$T$7, DW_AT_byte_size(0x01)

$C$DW$T$8	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$8, DW_AT_encoding(DW_ATE_signed)
	.dwattr $C$DW$T$8, DW_AT_name("short")
	.dwattr $C$DW$T$8, DW_AT_byte_size(0x01)

$C$DW$T$9	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$9, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$9, DW_AT_name("unsigned short")
	.dwattr $C$DW$T$9, DW_AT_byte_size(0x01)

$C$DW$T$10	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$10, DW_AT_encoding(DW_ATE_signed)
	.dwattr $C$DW$T$10, DW_AT_name("int")
	.dwattr $C$DW$T$10, DW_AT_byte_size(0x01)


$C$DW$T$39	.dwtag  DW_TAG_subroutine_type
	.dwattr $C$DW$T$39, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$T$39, DW_AT_language(DW_LANG_C)
$C$DW$294	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$294, DW_AT_type(*$C$DW$T$38)

	.dwendtag $C$DW$T$39

$C$DW$T$40	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$40, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$T$40, DW_AT_address_class(0x20)


$C$DW$T$53	.dwtag  DW_TAG_subroutine_type
	.dwattr $C$DW$T$53, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$T$53, DW_AT_language(DW_LANG_C)
$C$DW$295	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$295, DW_AT_type(*$C$DW$T$52)

$C$DW$296	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$296, DW_AT_type(*$C$DW$T$44)

$C$DW$297	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$297, DW_AT_type(*$C$DW$T$31)

$C$DW$298	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$298, DW_AT_type(*$C$DW$T$45)

$C$DW$299	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$299, DW_AT_type(*$C$DW$T$31)

	.dwendtag $C$DW$T$53

$C$DW$T$54	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$54, DW_AT_type(*$C$DW$T$53)
	.dwattr $C$DW$T$54, DW_AT_address_class(0x20)

$C$DW$300	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$300, DW_AT_type(*$C$DW$T$10)

$C$DW$T$117	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$117, DW_AT_type(*$C$DW$300)

$C$DW$T$11	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$11, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$11, DW_AT_name("unsigned int")
	.dwattr $C$DW$T$11, DW_AT_byte_size(0x01)

$C$DW$T$12	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$12, DW_AT_encoding(DW_ATE_signed)
	.dwattr $C$DW$T$12, DW_AT_name("long")
	.dwattr $C$DW$T$12, DW_AT_byte_size(0x02)

$C$DW$T$13	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$13, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$13, DW_AT_name("unsigned long")
	.dwattr $C$DW$T$13, DW_AT_byte_size(0x02)

$C$DW$T$30	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$30, DW_AT_name("__uint32_t")
	.dwattr $C$DW$T$30, DW_AT_type(*$C$DW$T$13)
	.dwattr $C$DW$T$30, DW_AT_language(DW_LANG_C)

$C$DW$T$31	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$31, DW_AT_name("uint32_t")
	.dwattr $C$DW$T$31, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$T$31, DW_AT_language(DW_LANG_C)

$C$DW$T$46	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$46, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$T$46, DW_AT_address_class(0x20)

$C$DW$301	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$301, DW_AT_type(*$C$DW$T$31)

$C$DW$T$163	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$163, DW_AT_type(*$C$DW$301)

$C$DW$T$14	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$14, DW_AT_encoding(DW_ATE_signed)
	.dwattr $C$DW$T$14, DW_AT_name("long long")
	.dwattr $C$DW$T$14, DW_AT_byte_size(0x04)

$C$DW$T$15	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$15, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$15, DW_AT_name("unsigned long long")
	.dwattr $C$DW$T$15, DW_AT_byte_size(0x04)

$C$DW$T$16	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$16, DW_AT_encoding(DW_ATE_float)
	.dwattr $C$DW$T$16, DW_AT_name("float")
	.dwattr $C$DW$T$16, DW_AT_byte_size(0x02)

$C$DW$T$17	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$17, DW_AT_encoding(DW_ATE_float)
	.dwattr $C$DW$T$17, DW_AT_name("double")
	.dwattr $C$DW$T$17, DW_AT_byte_size(0x02)

$C$DW$T$18	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$18, DW_AT_encoding(DW_ATE_float)
	.dwattr $C$DW$T$18, DW_AT_name("long double")
	.dwattr $C$DW$T$18, DW_AT_byte_size(0x04)

$C$DW$302	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$302, DW_AT_type(*$C$DW$T$5)

$C$DW$T$22	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$22, DW_AT_type(*$C$DW$302)

$C$DW$T$23	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$23, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$T$23, DW_AT_address_class(0x20)

$C$DW$303	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$303, DW_AT_type(*$C$DW$T$23)

$C$DW$T$164	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$164, DW_AT_type(*$C$DW$303)


$C$DW$T$165	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$165, DW_AT_type(*$C$DW$T$5)
	.dwattr $C$DW$T$165, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$165, DW_AT_byte_size(0x0c)
$C$DW$304	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$304, DW_AT_upper_bound(0x0b)

	.dwendtag $C$DW$T$165


$C$DW$T$166	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$166, DW_AT_type(*$C$DW$T$5)
	.dwattr $C$DW$T$166, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$166, DW_AT_byte_size(0x0b)
$C$DW$305	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$305, DW_AT_upper_bound(0x0a)

	.dwendtag $C$DW$T$166


$C$DW$T$168	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$168, DW_AT_type(*$C$DW$T$5)
	.dwattr $C$DW$T$168, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$168, DW_AT_byte_size(0x05)
$C$DW$306	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$306, DW_AT_upper_bound(0x04)

	.dwendtag $C$DW$T$168


$C$DW$T$50	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$50, DW_AT_name("spiflash_cmd_tbl_s")
	.dwattr $C$DW$T$50, DW_AT_byte_size(0x11)
$C$DW$307	.dwtag  DW_TAG_member
	.dwattr $C$DW$307, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$307, DW_AT_name("write_disable")
	.dwattr $C$DW$307, DW_AT_TI_symbol_name("_write_disable")
	.dwattr $C$DW$307, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$307, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$308	.dwtag  DW_TAG_member
	.dwattr $C$DW$308, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$308, DW_AT_name("write_enable")
	.dwattr $C$DW$308, DW_AT_TI_symbol_name("_write_enable")
	.dwattr $C$DW$308, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$308, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$309	.dwtag  DW_TAG_member
	.dwattr $C$DW$309, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$309, DW_AT_name("page_program")
	.dwattr $C$DW$309, DW_AT_TI_symbol_name("_page_program")
	.dwattr $C$DW$309, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$309, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$310	.dwtag  DW_TAG_member
	.dwattr $C$DW$310, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$310, DW_AT_name("page_erase")
	.dwattr $C$DW$310, DW_AT_TI_symbol_name("_page_erase")
	.dwattr $C$DW$310, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr $C$DW$310, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$311	.dwtag  DW_TAG_member
	.dwattr $C$DW$311, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$311, DW_AT_name("read_data")
	.dwattr $C$DW$311, DW_AT_TI_symbol_name("_read_data")
	.dwattr $C$DW$311, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$311, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$312	.dwtag  DW_TAG_member
	.dwattr $C$DW$312, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$312, DW_AT_name("read_data_fast")
	.dwattr $C$DW$312, DW_AT_TI_symbol_name("_read_data_fast")
	.dwattr $C$DW$312, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr $C$DW$312, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$313	.dwtag  DW_TAG_member
	.dwattr $C$DW$313, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$313, DW_AT_name("write_sr")
	.dwattr $C$DW$313, DW_AT_TI_symbol_name("_write_sr")
	.dwattr $C$DW$313, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$313, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$314	.dwtag  DW_TAG_member
	.dwattr $C$DW$314, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$314, DW_AT_name("read_sr")
	.dwattr $C$DW$314, DW_AT_TI_symbol_name("_read_sr")
	.dwattr $C$DW$314, DW_AT_data_member_location[DW_OP_plus_uconst 0x7]
	.dwattr $C$DW$314, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$315	.dwtag  DW_TAG_member
	.dwattr $C$DW$315, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$315, DW_AT_name("block_erase_4")
	.dwattr $C$DW$315, DW_AT_TI_symbol_name("_block_erase_4")
	.dwattr $C$DW$315, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$315, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$316	.dwtag  DW_TAG_member
	.dwattr $C$DW$316, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$316, DW_AT_name("block_erase_8")
	.dwattr $C$DW$316, DW_AT_TI_symbol_name("_block_erase_8")
	.dwattr $C$DW$316, DW_AT_data_member_location[DW_OP_plus_uconst 0x9]
	.dwattr $C$DW$316, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$317	.dwtag  DW_TAG_member
	.dwattr $C$DW$317, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$317, DW_AT_name("block_erase_16")
	.dwattr $C$DW$317, DW_AT_TI_symbol_name("_block_erase_16")
	.dwattr $C$DW$317, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$317, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$318	.dwtag  DW_TAG_member
	.dwattr $C$DW$318, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$318, DW_AT_name("block_erase_32")
	.dwattr $C$DW$318, DW_AT_TI_symbol_name("_block_erase_32")
	.dwattr $C$DW$318, DW_AT_data_member_location[DW_OP_plus_uconst 0xb]
	.dwattr $C$DW$318, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$319	.dwtag  DW_TAG_member
	.dwattr $C$DW$319, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$319, DW_AT_name("block_erase_64")
	.dwattr $C$DW$319, DW_AT_TI_symbol_name("_block_erase_64")
	.dwattr $C$DW$319, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$319, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$320	.dwtag  DW_TAG_member
	.dwattr $C$DW$320, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$320, DW_AT_name("chip_erase")
	.dwattr $C$DW$320, DW_AT_TI_symbol_name("_chip_erase")
	.dwattr $C$DW$320, DW_AT_data_member_location[DW_OP_plus_uconst 0xd]
	.dwattr $C$DW$320, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$321	.dwtag  DW_TAG_member
	.dwattr $C$DW$321, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$321, DW_AT_name("device_id")
	.dwattr $C$DW$321, DW_AT_TI_symbol_name("_device_id")
	.dwattr $C$DW$321, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr $C$DW$321, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$322	.dwtag  DW_TAG_member
	.dwattr $C$DW$322, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$322, DW_AT_name("jedec_id")
	.dwattr $C$DW$322, DW_AT_TI_symbol_name("_jedec_id")
	.dwattr $C$DW$322, DW_AT_data_member_location[DW_OP_plus_uconst 0xf]
	.dwattr $C$DW$322, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$323	.dwtag  DW_TAG_member
	.dwattr $C$DW$323, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$323, DW_AT_name("sr_busy_bit")
	.dwattr $C$DW$323, DW_AT_TI_symbol_name("_sr_busy_bit")
	.dwattr $C$DW$323, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$323, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$50

$C$DW$T$63	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$63, DW_AT_name("spiflash_cmd_tbl_t")
	.dwattr $C$DW$T$63, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$T$63, DW_AT_language(DW_LANG_C)

$C$DW$324	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$324, DW_AT_type(*$C$DW$T$63)

$C$DW$T$64	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$64, DW_AT_type(*$C$DW$324)

$C$DW$T$65	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$65, DW_AT_type(*$C$DW$T$64)
	.dwattr $C$DW$T$65, DW_AT_address_class(0x20)


$C$DW$T$51	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$51, DW_AT_name("spiflash_config_s")
	.dwattr $C$DW$T$51, DW_AT_byte_size(0x1a)
$C$DW$325	.dwtag  DW_TAG_member
	.dwattr $C$DW$325, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$325, DW_AT_name("sz")
	.dwattr $C$DW$325, DW_AT_TI_symbol_name("_sz")
	.dwattr $C$DW$325, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$325, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$326	.dwtag  DW_TAG_member
	.dwattr $C$DW$326, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$326, DW_AT_name("page_sz")
	.dwattr $C$DW$326, DW_AT_TI_symbol_name("_page_sz")
	.dwattr $C$DW$326, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$326, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$327	.dwtag  DW_TAG_member
	.dwattr $C$DW$327, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$327, DW_AT_name("addr_sz")
	.dwattr $C$DW$327, DW_AT_TI_symbol_name("_addr_sz")
	.dwattr $C$DW$327, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$327, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$328	.dwtag  DW_TAG_member
	.dwattr $C$DW$328, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$328, DW_AT_name("addr_dummy_sz")
	.dwattr $C$DW$328, DW_AT_TI_symbol_name("_addr_dummy_sz")
	.dwattr $C$DW$328, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr $C$DW$328, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$329	.dwtag  DW_TAG_member
	.dwattr $C$DW$329, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$329, DW_AT_name("addr_endian")
	.dwattr $C$DW$329, DW_AT_TI_symbol_name("_addr_endian")
	.dwattr $C$DW$329, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$329, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$330	.dwtag  DW_TAG_member
	.dwattr $C$DW$330, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$330, DW_AT_name("sr_write_ms")
	.dwattr $C$DW$330, DW_AT_TI_symbol_name("_sr_write_ms")
	.dwattr $C$DW$330, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$330, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$331	.dwtag  DW_TAG_member
	.dwattr $C$DW$331, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$331, DW_AT_name("page_program_ms")
	.dwattr $C$DW$331, DW_AT_TI_symbol_name("_page_program_ms")
	.dwattr $C$DW$331, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$331, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$332	.dwtag  DW_TAG_member
	.dwattr $C$DW$332, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$332, DW_AT_name("page_erase_ms")
	.dwattr $C$DW$332, DW_AT_TI_symbol_name("_page_erase_ms")
	.dwattr $C$DW$332, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$332, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$333	.dwtag  DW_TAG_member
	.dwattr $C$DW$333, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$333, DW_AT_name("block_erase_4_ms")
	.dwattr $C$DW$333, DW_AT_TI_symbol_name("_block_erase_4_ms")
	.dwattr $C$DW$333, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr $C$DW$333, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$334	.dwtag  DW_TAG_member
	.dwattr $C$DW$334, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$334, DW_AT_name("block_erase_8_ms")
	.dwattr $C$DW$334, DW_AT_TI_symbol_name("_block_erase_8_ms")
	.dwattr $C$DW$334, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$334, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$335	.dwtag  DW_TAG_member
	.dwattr $C$DW$335, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$335, DW_AT_name("block_erase_16_ms")
	.dwattr $C$DW$335, DW_AT_TI_symbol_name("_block_erase_16_ms")
	.dwattr $C$DW$335, DW_AT_data_member_location[DW_OP_plus_uconst 0x12]
	.dwattr $C$DW$335, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$336	.dwtag  DW_TAG_member
	.dwattr $C$DW$336, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$336, DW_AT_name("block_erase_32_ms")
	.dwattr $C$DW$336, DW_AT_TI_symbol_name("_block_erase_32_ms")
	.dwattr $C$DW$336, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr $C$DW$336, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$337	.dwtag  DW_TAG_member
	.dwattr $C$DW$337, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$337, DW_AT_name("block_erase_64_ms")
	.dwattr $C$DW$337, DW_AT_TI_symbol_name("_block_erase_64_ms")
	.dwattr $C$DW$337, DW_AT_data_member_location[DW_OP_plus_uconst 0x16]
	.dwattr $C$DW$337, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$338	.dwtag  DW_TAG_member
	.dwattr $C$DW$338, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$338, DW_AT_name("chip_erase_ms")
	.dwattr $C$DW$338, DW_AT_TI_symbol_name("_chip_erase_ms")
	.dwattr $C$DW$338, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr $C$DW$338, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$51

$C$DW$T$60	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$60, DW_AT_name("spiflash_config_t")
	.dwattr $C$DW$T$60, DW_AT_type(*$C$DW$T$51)
	.dwattr $C$DW$T$60, DW_AT_language(DW_LANG_C)

$C$DW$339	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$339, DW_AT_type(*$C$DW$T$60)

$C$DW$T$61	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$61, DW_AT_type(*$C$DW$339)

$C$DW$T$62	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$62, DW_AT_type(*$C$DW$T$61)
	.dwattr $C$DW$T$62, DW_AT_address_class(0x20)


$C$DW$T$59	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$59, DW_AT_name("spiflash_hal_s")
	.dwattr $C$DW$T$59, DW_AT_byte_size(0x06)
$C$DW$340	.dwtag  DW_TAG_member
	.dwattr $C$DW$340, DW_AT_type(*$C$DW$T$54)
	.dwattr $C$DW$340, DW_AT_name("_spiflash_spi_txrx")
	.dwattr $C$DW$340, DW_AT_TI_symbol_name("__spiflash_spi_txrx")
	.dwattr $C$DW$340, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$340, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$341	.dwtag  DW_TAG_member
	.dwattr $C$DW$341, DW_AT_type(*$C$DW$T$56)
	.dwattr $C$DW$341, DW_AT_name("_spiflash_spi_cs")
	.dwattr $C$DW$341, DW_AT_TI_symbol_name("__spiflash_spi_cs")
	.dwattr $C$DW$341, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$341, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$342	.dwtag  DW_TAG_member
	.dwattr $C$DW$342, DW_AT_type(*$C$DW$T$58)
	.dwattr $C$DW$342, DW_AT_name("_spiflash_wait")
	.dwattr $C$DW$342, DW_AT_TI_symbol_name("__spiflash_wait")
	.dwattr $C$DW$342, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$342, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$59

$C$DW$T$66	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$66, DW_AT_name("spiflash_hal_t")
	.dwattr $C$DW$T$66, DW_AT_type(*$C$DW$T$59)
	.dwattr $C$DW$T$66, DW_AT_language(DW_LANG_C)

$C$DW$343	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$343, DW_AT_type(*$C$DW$T$66)

$C$DW$T$67	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$67, DW_AT_type(*$C$DW$343)

$C$DW$T$68	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$68, DW_AT_type(*$C$DW$T$67)
	.dwattr $C$DW$T$68, DW_AT_address_class(0x20)


$C$DW$T$75	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$75, DW_AT_name("spiflash_s")
	.dwattr $C$DW$T$75, DW_AT_byte_size(0x28)
$C$DW$344	.dwtag  DW_TAG_member
	.dwattr $C$DW$344, DW_AT_type(*$C$DW$T$62)
	.dwattr $C$DW$344, DW_AT_name("cfg")
	.dwattr $C$DW$344, DW_AT_TI_symbol_name("_cfg")
	.dwattr $C$DW$344, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$344, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$345	.dwtag  DW_TAG_member
	.dwattr $C$DW$345, DW_AT_type(*$C$DW$T$65)
	.dwattr $C$DW$345, DW_AT_name("cmd_tbl")
	.dwattr $C$DW$345, DW_AT_TI_symbol_name("_cmd_tbl")
	.dwattr $C$DW$345, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$345, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$346	.dwtag  DW_TAG_member
	.dwattr $C$DW$346, DW_AT_type(*$C$DW$T$68)
	.dwattr $C$DW$346, DW_AT_name("hal")
	.dwattr $C$DW$346, DW_AT_TI_symbol_name("_hal")
	.dwattr $C$DW$346, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$346, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$347	.dwtag  DW_TAG_member
	.dwattr $C$DW$347, DW_AT_type(*$C$DW$T$73)
	.dwattr $C$DW$347, DW_AT_name("async_cb")
	.dwattr $C$DW$347, DW_AT_TI_symbol_name("_async_cb")
	.dwattr $C$DW$347, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$347, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$348	.dwtag  DW_TAG_member
	.dwattr $C$DW$348, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$348, DW_AT_name("user_data")
	.dwattr $C$DW$348, DW_AT_TI_symbol_name("_user_data")
	.dwattr $C$DW$348, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$348, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$349	.dwtag  DW_TAG_member
	.dwattr $C$DW$349, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$349, DW_AT_name("async")
	.dwattr $C$DW$349, DW_AT_TI_symbol_name("_async")
	.dwattr $C$DW$349, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$349, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$350	.dwtag  DW_TAG_member
	.dwattr $C$DW$350, DW_AT_type(*$C$DW$T$74)
	.dwattr $C$DW$350, DW_AT_name("op")
	.dwattr $C$DW$350, DW_AT_TI_symbol_name("_op")
	.dwattr $C$DW$350, DW_AT_data_member_location[DW_OP_plus_uconst 0xb]
	.dwattr $C$DW$350, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$351	.dwtag  DW_TAG_member
	.dwattr $C$DW$351, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$351, DW_AT_name("wait_period_ms")
	.dwattr $C$DW$351, DW_AT_TI_symbol_name("_wait_period_ms")
	.dwattr $C$DW$351, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$351, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$352	.dwtag  DW_TAG_member
	.dwattr $C$DW$352, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$352, DW_AT_name("addr")
	.dwattr $C$DW$352, DW_AT_TI_symbol_name("_addr")
	.dwattr $C$DW$352, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr $C$DW$352, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$353	.dwtag  DW_TAG_member
	.dwattr $C$DW$353, DW_AT_type(*$C$DW$T$42)
	.dwattr $C$DW$353, DW_AT_name("$P$T0")
	.dwattr $C$DW$353, DW_AT_TI_symbol_name("_$P$T0")
	.dwattr $C$DW$353, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$353, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$354	.dwtag  DW_TAG_member
	.dwattr $C$DW$354, DW_AT_type(*$C$DW$T$47)
	.dwattr $C$DW$354, DW_AT_name("$P$T1")
	.dwattr $C$DW$354, DW_AT_TI_symbol_name("_$P$T1")
	.dwattr $C$DW$354, DW_AT_data_member_location[DW_OP_plus_uconst 0x12]
	.dwattr $C$DW$354, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$355	.dwtag  DW_TAG_member
	.dwattr $C$DW$355, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$355, DW_AT_name("could_be_busy")
	.dwattr $C$DW$355, DW_AT_TI_symbol_name("_could_be_busy")
	.dwattr $C$DW$355, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr $C$DW$355, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$356	.dwtag  DW_TAG_member
	.dwattr $C$DW$356, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$356, DW_AT_name("busy_pre_check")
	.dwattr $C$DW$356, DW_AT_TI_symbol_name("_busy_pre_check")
	.dwattr $C$DW$356, DW_AT_data_member_location[DW_OP_plus_uconst 0x15]
	.dwattr $C$DW$356, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$357	.dwtag  DW_TAG_member
	.dwattr $C$DW$357, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$357, DW_AT_name("busy_check_wait")
	.dwattr $C$DW$357, DW_AT_TI_symbol_name("_busy_check_wait")
	.dwattr $C$DW$357, DW_AT_data_member_location[DW_OP_plus_uconst 0x16]
	.dwattr $C$DW$357, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$358	.dwtag  DW_TAG_member
	.dwattr $C$DW$358, DW_AT_type(*$C$DW$T$49)
	.dwattr $C$DW$358, DW_AT_name("$P$T2")
	.dwattr $C$DW$358, DW_AT_TI_symbol_name("_$P$T2")
	.dwattr $C$DW$358, DW_AT_data_member_location[DW_OP_plus_uconst 0x17]
	.dwattr $C$DW$358, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$75

$C$DW$T$52	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$52, DW_AT_type(*$C$DW$T$75)
	.dwattr $C$DW$T$52, DW_AT_address_class(0x20)

$C$DW$T$19	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$19, DW_AT_name("spiflash_t")
	.dwattr $C$DW$T$19, DW_AT_type(*$C$DW$T$75)
	.dwattr $C$DW$T$19, DW_AT_language(DW_LANG_C)

$C$DW$T$20	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$20, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$T$20, DW_AT_address_class(0x20)

	.dwattr $C$DW$CU, DW_AT_language(DW_LANG_C)

;***************************************************************
;* DWARF CIE ENTRIES                                           *
;***************************************************************

$C$DW$CIE	.dwcie 26
	.dwcfi	cfa_register, 20
	.dwcfi	cfa_offset, 0
	.dwcfi	same_value, 28
	.dwcfi	same_value, 6
	.dwcfi	same_value, 7
	.dwcfi	same_value, 8
	.dwcfi	same_value, 9
	.dwcfi	same_value, 10
	.dwcfi	same_value, 11
	.dwendentry

;***************************************************************
;* DWARF REGISTER MAP                                          *
;***************************************************************

$C$DW$359	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$359, DW_AT_name("AL")
	.dwattr $C$DW$359, DW_AT_location[DW_OP_reg0]

$C$DW$360	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$360, DW_AT_name("AH")
	.dwattr $C$DW$360, DW_AT_location[DW_OP_reg1]

$C$DW$361	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$361, DW_AT_name("PL")
	.dwattr $C$DW$361, DW_AT_location[DW_OP_reg2]

$C$DW$362	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$362, DW_AT_name("PH")
	.dwattr $C$DW$362, DW_AT_location[DW_OP_reg3]

$C$DW$363	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$363, DW_AT_name("SP")
	.dwattr $C$DW$363, DW_AT_location[DW_OP_reg20]

$C$DW$364	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$364, DW_AT_name("XT")
	.dwattr $C$DW$364, DW_AT_location[DW_OP_reg21]

$C$DW$365	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$365, DW_AT_name("T")
	.dwattr $C$DW$365, DW_AT_location[DW_OP_reg22]

$C$DW$366	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$366, DW_AT_name("ST0")
	.dwattr $C$DW$366, DW_AT_location[DW_OP_reg23]

$C$DW$367	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$367, DW_AT_name("ST1")
	.dwattr $C$DW$367, DW_AT_location[DW_OP_reg24]

$C$DW$368	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$368, DW_AT_name("PC")
	.dwattr $C$DW$368, DW_AT_location[DW_OP_reg25]

$C$DW$369	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$369, DW_AT_name("RPC")
	.dwattr $C$DW$369, DW_AT_location[DW_OP_reg26]

$C$DW$370	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$370, DW_AT_name("FP")
	.dwattr $C$DW$370, DW_AT_location[DW_OP_reg28]

$C$DW$371	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$371, DW_AT_name("DP")
	.dwattr $C$DW$371, DW_AT_location[DW_OP_reg29]

$C$DW$372	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$372, DW_AT_name("SXM")
	.dwattr $C$DW$372, DW_AT_location[DW_OP_reg30]

$C$DW$373	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$373, DW_AT_name("PM")
	.dwattr $C$DW$373, DW_AT_location[DW_OP_reg31]

$C$DW$374	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$374, DW_AT_name("OVM")
	.dwattr $C$DW$374, DW_AT_location[DW_OP_regx 0x20]

$C$DW$375	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$375, DW_AT_name("PAGE0")
	.dwattr $C$DW$375, DW_AT_location[DW_OP_regx 0x21]

$C$DW$376	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$376, DW_AT_name("AMODE")
	.dwattr $C$DW$376, DW_AT_location[DW_OP_regx 0x22]

$C$DW$377	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$377, DW_AT_name("EALLOW")
	.dwattr $C$DW$377, DW_AT_location[DW_OP_regx 0x4e]

$C$DW$378	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$378, DW_AT_name("INTM")
	.dwattr $C$DW$378, DW_AT_location[DW_OP_regx 0x23]

$C$DW$379	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$379, DW_AT_name("IFR")
	.dwattr $C$DW$379, DW_AT_location[DW_OP_regx 0x24]

$C$DW$380	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$380, DW_AT_name("IER")
	.dwattr $C$DW$380, DW_AT_location[DW_OP_regx 0x25]

$C$DW$381	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$381, DW_AT_name("V")
	.dwattr $C$DW$381, DW_AT_location[DW_OP_regx 0x26]

$C$DW$382	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$382, DW_AT_name("PSEUDOH")
	.dwattr $C$DW$382, DW_AT_location[DW_OP_regx 0x4c]

$C$DW$383	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$383, DW_AT_name("VOL")
	.dwattr $C$DW$383, DW_AT_location[DW_OP_regx 0x4d]

$C$DW$384	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$384, DW_AT_name("AR0")
	.dwattr $C$DW$384, DW_AT_location[DW_OP_reg4]

$C$DW$385	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$385, DW_AT_name("XAR0")
	.dwattr $C$DW$385, DW_AT_location[DW_OP_reg5]

$C$DW$386	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$386, DW_AT_name("AR1")
	.dwattr $C$DW$386, DW_AT_location[DW_OP_reg6]

$C$DW$387	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$387, DW_AT_name("XAR1")
	.dwattr $C$DW$387, DW_AT_location[DW_OP_reg7]

$C$DW$388	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$388, DW_AT_name("AR2")
	.dwattr $C$DW$388, DW_AT_location[DW_OP_reg8]

$C$DW$389	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$389, DW_AT_name("XAR2")
	.dwattr $C$DW$389, DW_AT_location[DW_OP_reg9]

$C$DW$390	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$390, DW_AT_name("AR3")
	.dwattr $C$DW$390, DW_AT_location[DW_OP_reg10]

$C$DW$391	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$391, DW_AT_name("XAR3")
	.dwattr $C$DW$391, DW_AT_location[DW_OP_reg11]

$C$DW$392	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$392, DW_AT_name("AR4")
	.dwattr $C$DW$392, DW_AT_location[DW_OP_reg12]

$C$DW$393	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$393, DW_AT_name("XAR4")
	.dwattr $C$DW$393, DW_AT_location[DW_OP_reg13]

$C$DW$394	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$394, DW_AT_name("AR5")
	.dwattr $C$DW$394, DW_AT_location[DW_OP_reg14]

$C$DW$395	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$395, DW_AT_name("XAR5")
	.dwattr $C$DW$395, DW_AT_location[DW_OP_reg15]

$C$DW$396	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$396, DW_AT_name("AR6")
	.dwattr $C$DW$396, DW_AT_location[DW_OP_reg16]

$C$DW$397	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$397, DW_AT_name("XAR6")
	.dwattr $C$DW$397, DW_AT_location[DW_OP_reg17]

$C$DW$398	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$398, DW_AT_name("AR7")
	.dwattr $C$DW$398, DW_AT_location[DW_OP_reg18]

$C$DW$399	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$399, DW_AT_name("XAR7")
	.dwattr $C$DW$399, DW_AT_location[DW_OP_reg19]

	.dwendtag $C$DW$CU


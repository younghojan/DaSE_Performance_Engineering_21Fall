	.text
	.file	"example4.c"
	.globl	test                    # -- Begin function test
	.p2align	4, 0x90
	.type	test,@function
test:                                   # @test
.Lfunc_begin0:
	.file	1 "/media/younghojan/Study/undergraduate/junior/SEM1/\350\275\257\344\273\266\347\263\273\347\273\237\344\274\230\345\214\226/homework/hw4/A4-Code/recitation3" "example4.c"
	.loc	1 10 0                  # example4.c:10:0
	.cfi_startproc
# %bb.0:
	#DEBUG_VALUE: test:a <- $rdi
	#DEBUG_VALUE: test:a <- $rdi
	xorpd	%xmm0, %xmm0
	xorl	%eax, %eax
.Ltmp0:
	#DEBUG_VALUE: test:i <- 0
	#DEBUG_VALUE: test:y <- 0.000000e+00
	#DEBUG_VALUE: test:x <- undef
	.p2align	4, 0x90
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	#DEBUG_VALUE: test:a <- $rdi
	#DEBUG_VALUE: test:y <- $xmm0
	#DEBUG_VALUE: test:i <- $rax
	.loc	1 18 7 prologue_end     # example4.c:18:7
	addsd	(%rdi,%rax,8), %xmm0
.Ltmp1:
	#DEBUG_VALUE: test:y <- $xmm0
	addsd	8(%rdi,%rax,8), %xmm0
.Ltmp2:
	#DEBUG_VALUE: test:y <- $xmm0
	addsd	16(%rdi,%rax,8), %xmm0
.Ltmp3:
	#DEBUG_VALUE: test:y <- $xmm0
	addsd	24(%rdi,%rax,8), %xmm0
.Ltmp4:
	#DEBUG_VALUE: test:y <- $xmm0
	addsd	32(%rdi,%rax,8), %xmm0
.Ltmp5:
	#DEBUG_VALUE: test:y <- $xmm0
	addsd	40(%rdi,%rax,8), %xmm0
.Ltmp6:
	#DEBUG_VALUE: test:y <- $xmm0
	addsd	48(%rdi,%rax,8), %xmm0
.Ltmp7:
	#DEBUG_VALUE: test:y <- $xmm0
	addsd	56(%rdi,%rax,8), %xmm0
.Ltmp8:
	#DEBUG_VALUE: test:y <- $xmm0
	.loc	1 17 26                 # example4.c:17:26
	addq	$8, %rax
.Ltmp9:
	#DEBUG_VALUE: test:i <- $rax
	.loc	1 17 17 is_stmt 0       # example4.c:17:17
	cmpq	$65536, %rax            # imm = 0x10000
.Ltmp10:
	.loc	1 17 3                  # example4.c:17:3
	jne	.LBB0_1
.Ltmp11:
# %bb.2:
	#DEBUG_VALUE: test:i <- $rax
	#DEBUG_VALUE: test:y <- $xmm0
	#DEBUG_VALUE: test:a <- $rdi
	#DEBUG_VALUE: test:y <- $xmm0
	.loc	1 20 3 is_stmt 1        # example4.c:20:3
	retq
.Ltmp12:
.Lfunc_end0:
	.size	test, .Lfunc_end0-test
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3               # -- Begin function main
.LCPI1_0:
	.quad	4607182418800017408     # double 1
	.text
	.globl	main
	.p2align	4, 0x90
	.type	main,@function
main:                                   # @main
.Lfunc_begin1:
	.loc	1 23 0                  # example4.c:23:0
	.cfi_startproc
# %bb.0:
	subq	$524312, %rsp           # imm = 0x80018
	.cfi_def_cfa_offset 524320
	movl	$1, %eax
	movsd	.LCPI1_0(%rip), %xmm0   # xmm0 = mem[0],zero
.Ltmp13:
	#DEBUG_VALUE: i <- 0
	.p2align	4, 0x90
.LBB1_1:                                # =>This Inner Loop Header: Depth=1
	#DEBUG_VALUE: i <- 0
	#DEBUG_VALUE: i <- undef
	.loc	1 26 22 prologue_end    # example4.c:26:22
	xorps	%xmm1, %xmm1
	cvtsi2sd	%eax, %xmm1
	.loc	1 26 15 is_stmt 0       # example4.c:26:15
	movapd	%xmm0, %xmm2
	divsd	%xmm1, %xmm2
	.loc	1 26 10                 # example4.c:26:10
	movsd	%xmm2, 8(%rsp,%rax,8)
	.loc	1 26 22                 # example4.c:26:22
	addsd	%xmm0, %xmm1
	.loc	1 26 15                 # example4.c:26:15
	movapd	%xmm0, %xmm2
	divsd	%xmm1, %xmm2
	.loc	1 26 10                 # example4.c:26:10
	movsd	%xmm2, 16(%rsp,%rax,8)
.Ltmp14:
	#DEBUG_VALUE: i <- [DW_OP_plus_uconst 2, DW_OP_stack_value] undef
	.loc	1 25 21 is_stmt 1       # example4.c:25:21
	addq	$2, %rax
	cmpq	$65537, %rax            # imm = 0x10001
.Ltmp15:
	.loc	1 25 3 is_stmt 0        # example4.c:25:3
	jne	.LBB1_1
.Ltmp16:
# %bb.2:
	#DEBUG_VALUE: i <- 0
	.loc	1 0 3                   # example4.c:0:3
	xorpd	%xmm0, %xmm0
	xorl	%eax, %eax
.Ltmp17:
	.p2align	4, 0x90
.LBB1_3:                                # =>This Inner Loop Header: Depth=1
	#DEBUG_VALUE: test:y <- $xmm0
	#DEBUG_VALUE: test:i <- $rax
	.loc	1 18 7 is_stmt 1        # example4.c:18:7
	addsd	16(%rsp,%rax,8), %xmm0
.Ltmp18:
	#DEBUG_VALUE: test:y <- $xmm0
	addsd	24(%rsp,%rax,8), %xmm0
.Ltmp19:
	#DEBUG_VALUE: test:y <- $xmm0
	addsd	32(%rsp,%rax,8), %xmm0
.Ltmp20:
	#DEBUG_VALUE: test:y <- $xmm0
	addsd	40(%rsp,%rax,8), %xmm0
.Ltmp21:
	#DEBUG_VALUE: test:y <- $xmm0
	addsd	48(%rsp,%rax,8), %xmm0
.Ltmp22:
	#DEBUG_VALUE: test:y <- $xmm0
	addsd	56(%rsp,%rax,8), %xmm0
.Ltmp23:
	#DEBUG_VALUE: test:y <- $xmm0
	addsd	64(%rsp,%rax,8), %xmm0
.Ltmp24:
	#DEBUG_VALUE: test:y <- $xmm0
	addsd	72(%rsp,%rax,8), %xmm0
.Ltmp25:
	#DEBUG_VALUE: test:y <- $xmm0
	.loc	1 17 26                 # example4.c:17:26
	addq	$8, %rax
.Ltmp26:
	#DEBUG_VALUE: test:i <- $rax
	.loc	1 17 17 is_stmt 0       # example4.c:17:17
	cmpq	$65536, %rax            # imm = 0x10000
.Ltmp27:
	.loc	1 17 3                  # example4.c:17:3
	jne	.LBB1_3
.Ltmp28:
# %bb.4:
	#DEBUG_VALUE: main:sum <- $xmm0
	.loc	1 29 3 is_stmt 1        # example4.c:29:3
	movl	$.L.str, %edi
	#DEBUG_VALUE: main:sum <- $xmm0
	movsd	%xmm0, 8(%rsp)          # 8-byte Spill
.Ltmp29:
	#DEBUG_VALUE: main:sum <- [DW_OP_plus_uconst 8] [$rsp+0]
	movb	$1, %al
	callq	printf
.Ltmp30:
	.loc	1 30 3                  # example4.c:30:3
	movl	$.L.str.1, %edi
	movsd	8(%rsp), %xmm0          # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movb	$1, %al
	callq	printf
.Ltmp31:
	.loc	1 31 1                  # example4.c:31:1
	xorl	%eax, %eax
	addq	$524312, %rsp           # imm = 0x80018
	.cfi_def_cfa_offset 8
	retq
.Ltmp32:
.Lfunc_end1:
	.size	main, .Lfunc_end1-main
	.cfi_endproc
	.file	2 "/usr/lib/llvm-10/lib/clang/10.0.0/include" "stddef.h"
                                        # -- End function
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"The decimal floating point sum result is: %f\n"
	.size	.L.str, 46

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"The raw floating point sum result is: %a\n"
	.size	.L.str.1, 42

	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"clang version 10.0.0-4ubuntu1 " # string offset=0
.Linfo_string1:
	.asciz	"example4.c"            # string offset=31
.Linfo_string2:
	.asciz	"/media/younghojan/Study/undergraduate/junior/SEM1/\350\275\257\344\273\266\347\263\273\347\273\237\344\274\230\345\214\226/homework/hw4/A4-Code/recitation3" # string offset=42
.Linfo_string3:
	.asciz	"test"                  # string offset=144
.Linfo_string4:
	.asciz	"double"                # string offset=149
.Linfo_string5:
	.asciz	"a"                     # string offset=156
.Linfo_string6:
	.asciz	"y"                     # string offset=158
.Linfo_string7:
	.asciz	"i"                     # string offset=160
.Linfo_string8:
	.asciz	"long unsigned int"     # string offset=162
.Linfo_string9:
	.asciz	"size_t"                # string offset=180
.Linfo_string10:
	.asciz	"x"                     # string offset=187
.Linfo_string11:
	.asciz	"main"                  # string offset=189
.Linfo_string12:
	.asciz	"int"                   # string offset=194
.Linfo_string13:
	.asciz	"__ARRAY_SIZE_TYPE__"   # string offset=198
.Linfo_string14:
	.asciz	"sum"                   # string offset=218
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
	.quad	.Lfunc_begin0-.Lfunc_begin0
	.quad	.Lfunc_end0-.Lfunc_begin0
	.short	1                       # Loc expr size
	.byte	85                      # DW_OP_reg5
	.quad	0
	.quad	0
.Ldebug_loc1:
	.quad	.Ltmp0-.Lfunc_begin0
	.quad	.Lfunc_end0-.Lfunc_begin0
	.short	1                       # Loc expr size
	.byte	80                      # DW_OP_reg0
	.quad	0
	.quad	0
.Ldebug_loc2:
	.quad	.Ltmp0-.Lfunc_begin0
	.quad	.Lfunc_end0-.Lfunc_begin0
	.short	1                       # Loc expr size
	.byte	97                      # DW_OP_reg17
	.quad	0
	.quad	0
.Ldebug_loc3:
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp17-.Lfunc_begin0
	.short	3                       # Loc expr size
	.byte	17                      # DW_OP_consts
	.byte	0                       # 0
	.byte	159                     # DW_OP_stack_value
	.quad	0
	.quad	0
.Ldebug_loc4:
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp28-.Lfunc_begin0
	.short	1                       # Loc expr size
	.byte	97                      # DW_OP_reg17
	.quad	0
	.quad	0
.Ldebug_loc5:
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp28-.Lfunc_begin0
	.short	1                       # Loc expr size
	.byte	80                      # DW_OP_reg0
	.quad	0
	.quad	0
.Ldebug_loc6:
	.quad	.Ltmp28-.Lfunc_begin0
	.quad	.Ltmp29-.Lfunc_begin0
	.short	1                       # Loc expr size
	.byte	97                      # DW_OP_reg17
	.quad	.Ltmp29-.Lfunc_begin0
	.quad	.Lfunc_end1-.Lfunc_begin0
	.short	2                       # Loc expr size
	.byte	119                     # DW_OP_breg7
	.byte	8                       # 8
	.quad	0
	.quad	0
	.section	.debug_abbrev,"",@progbits
	.byte	1                       # Abbreviation Code
	.byte	17                      # DW_TAG_compile_unit
	.byte	1                       # DW_CHILDREN_yes
	.byte	37                      # DW_AT_producer
	.byte	14                      # DW_FORM_strp
	.byte	19                      # DW_AT_language
	.byte	5                       # DW_FORM_data2
	.byte	3                       # DW_AT_name
	.byte	14                      # DW_FORM_strp
	.byte	16                      # DW_AT_stmt_list
	.byte	23                      # DW_FORM_sec_offset
	.byte	27                      # DW_AT_comp_dir
	.byte	14                      # DW_FORM_strp
	.byte	17                      # DW_AT_low_pc
	.byte	1                       # DW_FORM_addr
	.byte	18                      # DW_AT_high_pc
	.byte	6                       # DW_FORM_data4
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	2                       # Abbreviation Code
	.byte	46                      # DW_TAG_subprogram
	.byte	1                       # DW_CHILDREN_yes
	.byte	17                      # DW_AT_low_pc
	.byte	1                       # DW_FORM_addr
	.byte	18                      # DW_AT_high_pc
	.byte	6                       # DW_FORM_data4
	.byte	64                      # DW_AT_frame_base
	.byte	24                      # DW_FORM_exprloc
	.ascii	"\227B"                 # DW_AT_GNU_all_call_sites
	.byte	25                      # DW_FORM_flag_present
	.byte	49                      # DW_AT_abstract_origin
	.byte	19                      # DW_FORM_ref4
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	3                       # Abbreviation Code
	.byte	5                       # DW_TAG_formal_parameter
	.byte	0                       # DW_CHILDREN_no
	.byte	2                       # DW_AT_location
	.byte	23                      # DW_FORM_sec_offset
	.byte	49                      # DW_AT_abstract_origin
	.byte	19                      # DW_FORM_ref4
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	4                       # Abbreviation Code
	.byte	52                      # DW_TAG_variable
	.byte	0                       # DW_CHILDREN_no
	.byte	2                       # DW_AT_location
	.byte	23                      # DW_FORM_sec_offset
	.byte	49                      # DW_AT_abstract_origin
	.byte	19                      # DW_FORM_ref4
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	5                       # Abbreviation Code
	.byte	52                      # DW_TAG_variable
	.byte	0                       # DW_CHILDREN_no
	.byte	49                      # DW_AT_abstract_origin
	.byte	19                      # DW_FORM_ref4
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	6                       # Abbreviation Code
	.byte	46                      # DW_TAG_subprogram
	.byte	1                       # DW_CHILDREN_yes
	.byte	3                       # DW_AT_name
	.byte	14                      # DW_FORM_strp
	.byte	58                      # DW_AT_decl_file
	.byte	11                      # DW_FORM_data1
	.byte	59                      # DW_AT_decl_line
	.byte	11                      # DW_FORM_data1
	.byte	39                      # DW_AT_prototyped
	.byte	25                      # DW_FORM_flag_present
	.byte	73                      # DW_AT_type
	.byte	19                      # DW_FORM_ref4
	.byte	63                      # DW_AT_external
	.byte	25                      # DW_FORM_flag_present
	.byte	32                      # DW_AT_inline
	.byte	11                      # DW_FORM_data1
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	7                       # Abbreviation Code
	.byte	5                       # DW_TAG_formal_parameter
	.byte	0                       # DW_CHILDREN_no
	.byte	3                       # DW_AT_name
	.byte	14                      # DW_FORM_strp
	.byte	58                      # DW_AT_decl_file
	.byte	11                      # DW_FORM_data1
	.byte	59                      # DW_AT_decl_line
	.byte	11                      # DW_FORM_data1
	.byte	73                      # DW_AT_type
	.byte	19                      # DW_FORM_ref4
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	8                       # Abbreviation Code
	.byte	52                      # DW_TAG_variable
	.byte	0                       # DW_CHILDREN_no
	.byte	3                       # DW_AT_name
	.byte	14                      # DW_FORM_strp
	.byte	58                      # DW_AT_decl_file
	.byte	11                      # DW_FORM_data1
	.byte	59                      # DW_AT_decl_line
	.byte	11                      # DW_FORM_data1
	.byte	73                      # DW_AT_type
	.byte	19                      # DW_FORM_ref4
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	9                       # Abbreviation Code
	.byte	36                      # DW_TAG_base_type
	.byte	0                       # DW_CHILDREN_no
	.byte	3                       # DW_AT_name
	.byte	14                      # DW_FORM_strp
	.byte	62                      # DW_AT_encoding
	.byte	11                      # DW_FORM_data1
	.byte	11                      # DW_AT_byte_size
	.byte	11                      # DW_FORM_data1
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	10                      # Abbreviation Code
	.byte	55                      # DW_TAG_restrict_type
	.byte	0                       # DW_CHILDREN_no
	.byte	73                      # DW_AT_type
	.byte	19                      # DW_FORM_ref4
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	11                      # Abbreviation Code
	.byte	15                      # DW_TAG_pointer_type
	.byte	0                       # DW_CHILDREN_no
	.byte	73                      # DW_AT_type
	.byte	19                      # DW_FORM_ref4
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	12                      # Abbreviation Code
	.byte	22                      # DW_TAG_typedef
	.byte	0                       # DW_CHILDREN_no
	.byte	73                      # DW_AT_type
	.byte	19                      # DW_FORM_ref4
	.byte	3                       # DW_AT_name
	.byte	14                      # DW_FORM_strp
	.byte	58                      # DW_AT_decl_file
	.byte	11                      # DW_FORM_data1
	.byte	59                      # DW_AT_decl_line
	.byte	11                      # DW_FORM_data1
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	13                      # Abbreviation Code
	.byte	46                      # DW_TAG_subprogram
	.byte	1                       # DW_CHILDREN_yes
	.byte	17                      # DW_AT_low_pc
	.byte	1                       # DW_FORM_addr
	.byte	18                      # DW_AT_high_pc
	.byte	6                       # DW_FORM_data4
	.byte	64                      # DW_AT_frame_base
	.byte	24                      # DW_FORM_exprloc
	.ascii	"\227B"                 # DW_AT_GNU_all_call_sites
	.byte	25                      # DW_FORM_flag_present
	.byte	3                       # DW_AT_name
	.byte	14                      # DW_FORM_strp
	.byte	58                      # DW_AT_decl_file
	.byte	11                      # DW_FORM_data1
	.byte	59                      # DW_AT_decl_line
	.byte	11                      # DW_FORM_data1
	.byte	73                      # DW_AT_type
	.byte	19                      # DW_FORM_ref4
	.byte	63                      # DW_AT_external
	.byte	25                      # DW_FORM_flag_present
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	14                      # Abbreviation Code
	.byte	52                      # DW_TAG_variable
	.byte	0                       # DW_CHILDREN_no
	.byte	2                       # DW_AT_location
	.byte	24                      # DW_FORM_exprloc
	.byte	3                       # DW_AT_name
	.byte	14                      # DW_FORM_strp
	.byte	58                      # DW_AT_decl_file
	.byte	11                      # DW_FORM_data1
	.byte	59                      # DW_AT_decl_line
	.byte	11                      # DW_FORM_data1
	.byte	73                      # DW_AT_type
	.byte	19                      # DW_FORM_ref4
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	15                      # Abbreviation Code
	.byte	52                      # DW_TAG_variable
	.byte	0                       # DW_CHILDREN_no
	.byte	2                       # DW_AT_location
	.byte	23                      # DW_FORM_sec_offset
	.byte	3                       # DW_AT_name
	.byte	14                      # DW_FORM_strp
	.byte	58                      # DW_AT_decl_file
	.byte	11                      # DW_FORM_data1
	.byte	59                      # DW_AT_decl_line
	.byte	11                      # DW_FORM_data1
	.byte	73                      # DW_AT_type
	.byte	19                      # DW_FORM_ref4
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	16                      # Abbreviation Code
	.byte	11                      # DW_TAG_lexical_block
	.byte	1                       # DW_CHILDREN_yes
	.byte	17                      # DW_AT_low_pc
	.byte	1                       # DW_FORM_addr
	.byte	18                      # DW_AT_high_pc
	.byte	6                       # DW_FORM_data4
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	17                      # Abbreviation Code
	.byte	29                      # DW_TAG_inlined_subroutine
	.byte	1                       # DW_CHILDREN_yes
	.byte	49                      # DW_AT_abstract_origin
	.byte	19                      # DW_FORM_ref4
	.byte	17                      # DW_AT_low_pc
	.byte	1                       # DW_FORM_addr
	.byte	18                      # DW_AT_high_pc
	.byte	6                       # DW_FORM_data4
	.byte	88                      # DW_AT_call_file
	.byte	11                      # DW_FORM_data1
	.byte	89                      # DW_AT_call_line
	.byte	11                      # DW_FORM_data1
	.byte	87                      # DW_AT_call_column
	.byte	11                      # DW_FORM_data1
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	18                      # Abbreviation Code
	.byte	1                       # DW_TAG_array_type
	.byte	1                       # DW_CHILDREN_yes
	.byte	73                      # DW_AT_type
	.byte	19                      # DW_FORM_ref4
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	19                      # Abbreviation Code
	.byte	33                      # DW_TAG_subrange_type
	.byte	0                       # DW_CHILDREN_no
	.byte	73                      # DW_AT_type
	.byte	19                      # DW_FORM_ref4
	.byte	55                      # DW_AT_count
	.byte	6                       # DW_FORM_data4
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	20                      # Abbreviation Code
	.byte	36                      # DW_TAG_base_type
	.byte	0                       # DW_CHILDREN_no
	.byte	3                       # DW_AT_name
	.byte	14                      # DW_FORM_strp
	.byte	11                      # DW_AT_byte_size
	.byte	11                      # DW_FORM_data1
	.byte	62                      # DW_AT_encoding
	.byte	11                      # DW_FORM_data1
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	0                       # EOM(3)
	.section	.debug_info,"",@progbits
.Lcu_begin0:
	.long	.Ldebug_info_end0-.Ldebug_info_start0 # Length of Unit
.Ldebug_info_start0:
	.short	4                       # DWARF version number
	.long	.debug_abbrev           # Offset Into Abbrev. Section
	.byte	8                       # Address Size (in bytes)
	.byte	1                       # Abbrev [1] 0xb:0x148 DW_TAG_compile_unit
	.long	.Linfo_string0          # DW_AT_producer
	.short	12                      # DW_AT_language
	.long	.Linfo_string1          # DW_AT_name
	.long	.Lline_table_start0     # DW_AT_stmt_list
	.long	.Linfo_string2          # DW_AT_comp_dir
	.quad	.Lfunc_begin0           # DW_AT_low_pc
	.long	.Lfunc_end1-.Lfunc_begin0 # DW_AT_high_pc
	.byte	2                       # Abbrev [2] 0x2a:0x34 DW_TAG_subprogram
	.quad	.Lfunc_begin0           # DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0 # DW_AT_high_pc
	.byte	1                       # DW_AT_frame_base
	.byte	87
                                        # DW_AT_GNU_all_call_sites
	.long	94                      # DW_AT_abstract_origin
	.byte	3                       # Abbrev [3] 0x3d:0x9 DW_TAG_formal_parameter
	.long	.Ldebug_loc0            # DW_AT_location
	.long	106                     # DW_AT_abstract_origin
	.byte	4                       # Abbrev [4] 0x46:0x9 DW_TAG_variable
	.long	.Ldebug_loc1            # DW_AT_location
	.long	128                     # DW_AT_abstract_origin
	.byte	4                       # Abbrev [4] 0x4f:0x9 DW_TAG_variable
	.long	.Ldebug_loc2            # DW_AT_location
	.long	117                     # DW_AT_abstract_origin
	.byte	5                       # Abbrev [5] 0x58:0x5 DW_TAG_variable
	.long	139                     # DW_AT_abstract_origin
	.byte	0                       # End Of Children Mark
	.byte	6                       # Abbrev [6] 0x5e:0x39 DW_TAG_subprogram
	.long	.Linfo_string3          # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	10                      # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	151                     # DW_AT_type
                                        # DW_AT_external
	.byte	1                       # DW_AT_inline
	.byte	7                       # Abbrev [7] 0x6a:0xb DW_TAG_formal_parameter
	.long	.Linfo_string5          # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	10                      # DW_AT_decl_line
	.long	158                     # DW_AT_type
	.byte	8                       # Abbrev [8] 0x75:0xb DW_TAG_variable
	.long	.Linfo_string6          # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	15                      # DW_AT_decl_line
	.long	151                     # DW_AT_type
	.byte	8                       # Abbrev [8] 0x80:0xb DW_TAG_variable
	.long	.Linfo_string7          # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	11                      # DW_AT_decl_line
	.long	168                     # DW_AT_type
	.byte	8                       # Abbrev [8] 0x8b:0xb DW_TAG_variable
	.long	.Linfo_string10         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	13                      # DW_AT_decl_line
	.long	163                     # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	9                       # Abbrev [9] 0x97:0x7 DW_TAG_base_type
	.long	.Linfo_string4          # DW_AT_name
	.byte	4                       # DW_AT_encoding
	.byte	8                       # DW_AT_byte_size
	.byte	10                      # Abbrev [10] 0x9e:0x5 DW_TAG_restrict_type
	.long	163                     # DW_AT_type
	.byte	11                      # Abbrev [11] 0xa3:0x5 DW_TAG_pointer_type
	.long	151                     # DW_AT_type
	.byte	12                      # Abbrev [12] 0xa8:0xb DW_TAG_typedef
	.long	179                     # DW_AT_type
	.long	.Linfo_string9          # DW_AT_name
	.byte	2                       # DW_AT_decl_file
	.byte	46                      # DW_AT_decl_line
	.byte	9                       # Abbrev [9] 0xb3:0x7 DW_TAG_base_type
	.long	.Linfo_string8          # DW_AT_name
	.byte	7                       # DW_AT_encoding
	.byte	8                       # DW_AT_byte_size
	.byte	13                      # Abbrev [13] 0xba:0x7b DW_TAG_subprogram
	.quad	.Lfunc_begin1           # DW_AT_low_pc
	.long	.Lfunc_end1-.Lfunc_begin1 # DW_AT_high_pc
	.byte	1                       # DW_AT_frame_base
	.byte	87
                                        # DW_AT_GNU_all_call_sites
	.long	.Linfo_string11         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	23                      # DW_AT_decl_line
	.long	309                     # DW_AT_type
                                        # DW_AT_external
	.byte	14                      # Abbrev [14] 0xd3:0xe DW_TAG_variable
	.byte	2                       # DW_AT_location
	.byte	145
	.byte	16
	.long	.Linfo_string5          # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	24                      # DW_AT_decl_line
	.long	316                     # DW_AT_type
	.byte	15                      # Abbrev [15] 0xe1:0xf DW_TAG_variable
	.long	.Ldebug_loc6            # DW_AT_location
	.long	.Linfo_string14         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	28                      # DW_AT_decl_line
	.long	151                     # DW_AT_type
	.byte	16                      # Abbrev [16] 0xf0:0x1d DW_TAG_lexical_block
	.quad	.Ltmp13                 # DW_AT_low_pc
	.long	.Ltmp16-.Ltmp13         # DW_AT_high_pc
	.byte	15                      # Abbrev [15] 0xfd:0xf DW_TAG_variable
	.long	.Ldebug_loc3            # DW_AT_location
	.long	.Linfo_string7          # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	25                      # DW_AT_decl_line
	.long	309                     # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	17                      # Abbrev [17] 0x10d:0x27 DW_TAG_inlined_subroutine
	.long	94                      # DW_AT_abstract_origin
	.quad	.Ltmp17                 # DW_AT_low_pc
	.long	.Ltmp28-.Ltmp17         # DW_AT_high_pc
	.byte	1                       # DW_AT_call_file
	.byte	28                      # DW_AT_call_line
	.byte	16                      # DW_AT_call_column
	.byte	4                       # Abbrev [4] 0x121:0x9 DW_TAG_variable
	.long	.Ldebug_loc4            # DW_AT_location
	.long	117                     # DW_AT_abstract_origin
	.byte	4                       # Abbrev [4] 0x12a:0x9 DW_TAG_variable
	.long	.Ldebug_loc5            # DW_AT_location
	.long	128                     # DW_AT_abstract_origin
	.byte	0                       # End Of Children Mark
	.byte	0                       # End Of Children Mark
	.byte	9                       # Abbrev [9] 0x135:0x7 DW_TAG_base_type
	.long	.Linfo_string12         # DW_AT_name
	.byte	5                       # DW_AT_encoding
	.byte	4                       # DW_AT_byte_size
	.byte	18                      # Abbrev [18] 0x13c:0xf DW_TAG_array_type
	.long	151                     # DW_AT_type
	.byte	19                      # Abbrev [19] 0x141:0x9 DW_TAG_subrange_type
	.long	331                     # DW_AT_type
	.long	65536                   # DW_AT_count
	.byte	0                       # End Of Children Mark
	.byte	20                      # Abbrev [20] 0x14b:0x7 DW_TAG_base_type
	.long	.Linfo_string13         # DW_AT_name
	.byte	8                       # DW_AT_byte_size
	.byte	7                       # DW_AT_encoding
	.byte	0                       # End Of Children Mark
.Ldebug_info_end0:
	.ident	"clang version 10.0.0-4ubuntu1 "
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.section	.debug_line,"",@progbits
.Lline_table_start0:

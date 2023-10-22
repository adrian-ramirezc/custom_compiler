	PUSH	end_program
	PUSH	main
	GOTO
my_func_value	DS	1
my_func	EQU	*
;/ print...
	PUSH	4
	OUT
	PUSH	my_func_value
	PUSH	15
	STORE
	GOTO
func_with_args_value	DS	1
arg2	DS	1
arg1	DS	1
func_with_args	EQU	*
;/ print...
	PUSH	arg1
	LOAD
	PUSH	arg2
	LOAD
	ADD
	OUT
	PUSH	func_with_args_value
	PUSH	arg2
	LOAD
	STORE
	GOTO
func3_value	DS	1
arg5	DS	1
arg4	DS	1
arg3	DS	1
func3	EQU	*
	PUSH	func3_value
	PUSH	3
	STORE
	GOTO
main_value	DS	1
main	EQU	*
;/ print...
	PUSH	arg5
	PUSH	3
	STORE
	PUSH	arg4
	PUSH	2
	STORE
	PUSH	arg3
	PUSH	1
	STORE
	PUSH	func342_return
	PUSH	func3
	GOTO
func342_return	EQU	*
	PUSH	func3_value
	LOAD
	OUT
;/ print...
	PUSH	arg2
	PUSH	1
	STORE
	PUSH	arg1
	PUSH	1
	STORE
	PUSH	func_with_args43_return
	PUSH	func_with_args
	GOTO
func_with_args43_return	EQU	*
	PUSH	func_with_args_value
	LOAD
	OUT
;/ print...
	PUSH	my_func44_return
	PUSH	my_func
	GOTO
my_func44_return	EQU	*
	PUSH	my_func_value
	LOAD
	OUT
	PUSH	my_func45_return
	PUSH	my_func
	GOTO
my_func45_return	EQU	*
	PUSH	my_func_value
	LOAD
abc	DS	1
	PUSH	abc
	PUSH	my_func46_return
	PUSH	my_func
	GOTO
my_func46_return	EQU	*
	PUSH	my_func_value
	LOAD
	STORE
;/ print...
	PUSH	abc
	LOAD
	OUT
;/ print...
	PUSH	1
	BGZ	cond_bgz_47_then
	PUSH	1
	PUSH	cond_bgz_47_fin
	GOTO
cond_bgz_47_then	EQU	*
	PUSH	0
cond_bgz_47_fin	EQU	*
	OUT
;/ print...
	PUSH	0
	BGZ	cond_bgz_48_then
	PUSH	1
	PUSH	cond_bgz_48_fin
	GOTO
cond_bgz_48_then	EQU	*
	PUSH	0
cond_bgz_48_fin	EQU	*
	OUT
;/ print...
	PUSH	1
	PUSH	1
	MUL
	OUT
;/ print...
	PUSH	1
	PUSH	0
	MUL
	OUT
;/ print...
	PUSH	0
	PUSH	0
	MUL
	OUT
;/ print...
	PUSH	1
	PUSH	1
	ADD
	OUT
;/ print...
	PUSH	1
	PUSH	0
	ADD
	OUT
;/ print...
	PUSH	0
	PUSH	0
	ADD
	OUT
num1	DS	1
	PUSH	num1
	PUSH	10
	STORE
num2	DS	1
	PUSH	num2
	PUSH	25
	STORE
;/ print...
	PUSH	num1
	LOAD
	PUSH	num2
	LOAD
	SUB
	BEZ	cond_bez_49_else
	PUSH	0
	PUSH	cond_bez_49_fin
	GOTO
cond_bez_49_else	EQU	*
	PUSH	1
cond_bez_49_fin	EQU	*
	BGZ	cond_bgz_50_then
	PUSH	1
	PUSH	cond_bgz_50_fin
	GOTO
cond_bgz_50_then	EQU	*
	PUSH	0
cond_bgz_50_fin	EQU	*
	OUT
;/ print...
	PUSH	num1
	LOAD
	PUSH	num1
	LOAD
	SUB
	BEZ	cond_bez_51_else
	PUSH	0
	PUSH	cond_bez_51_fin
	GOTO
cond_bez_51_else	EQU	*
	PUSH	1
cond_bez_51_fin	EQU	*
	BGZ	cond_bgz_52_then
	PUSH	1
	PUSH	cond_bgz_52_fin
	GOTO
cond_bgz_52_then	EQU	*
	PUSH	0
cond_bgz_52_fin	EQU	*
	OUT
;/ print...
	PUSH	num1
	LOAD
	PUSH	num2
	LOAD
	SUB
	BEZ	cond_bez_53_else
	PUSH	0
	PUSH	cond_bez_53_fin
	GOTO
cond_bez_53_else	EQU	*
	PUSH	1
cond_bez_53_fin	EQU	*
	OUT
;/ print...
	PUSH	num1
	LOAD
	PUSH	num1
	LOAD
	SUB
	BEZ	cond_bez_54_else
	PUSH	0
	PUSH	cond_bez_54_fin
	GOTO
cond_bez_54_else	EQU	*
	PUSH	1
cond_bez_54_fin	EQU	*
	OUT
;/ print...
	PUSH	num1
	LOAD
	PUSH	num1
	LOAD
	SUB
	BGZ	cond_bgz_55_then
	PUSH	0
	PUSH	cond_bgz_55_fin
	GOTO
cond_bgz_55_then	EQU	*
	PUSH	1
cond_bgz_55_fin	EQU	*
	BGZ	cond_bgz_56_then
	PUSH	1
	PUSH	cond_bgz_56_fin
	GOTO
cond_bgz_56_then	EQU	*
	PUSH	0
cond_bgz_56_fin	EQU	*
	OUT
;/ print...
	PUSH	num1
	LOAD
	PUSH	num2
	LOAD
	SUB
	BGZ	cond_bgz_57_then
	PUSH	0
	PUSH	cond_bgz_57_fin
	GOTO
cond_bgz_57_then	EQU	*
	PUSH	1
cond_bgz_57_fin	EQU	*
	BGZ	cond_bgz_58_then
	PUSH	1
	PUSH	cond_bgz_58_fin
	GOTO
cond_bgz_58_then	EQU	*
	PUSH	0
cond_bgz_58_fin	EQU	*
	OUT
;/ print...
	PUSH	num2
	LOAD
	PUSH	num1
	LOAD
	SUB
	BGZ	cond_bgz_59_then
	PUSH	0
	PUSH	cond_bgz_59_fin
	GOTO
cond_bgz_59_then	EQU	*
	PUSH	1
cond_bgz_59_fin	EQU	*
	BGZ	cond_bgz_60_then
	PUSH	1
	PUSH	cond_bgz_60_fin
	GOTO
cond_bgz_60_then	EQU	*
	PUSH	0
cond_bgz_60_fin	EQU	*
	OUT
;/ print...
	PUSH	num2
	LOAD
	PUSH	num1
	LOAD
	SUB
	BGZ	cond_bgz_61_then
	PUSH	0
	PUSH	cond_bgz_61_fin
	GOTO
cond_bgz_61_then	EQU	*
	PUSH	1
cond_bgz_61_fin	EQU	*
	BGZ	cond_bgz_62_then
	PUSH	1
	PUSH	cond_bgz_62_fin
	GOTO
cond_bgz_62_then	EQU	*
	PUSH	0
cond_bgz_62_fin	EQU	*
	OUT
;/ print...
	PUSH	num1
	LOAD
	PUSH	num1
	LOAD
	SUB
	BGZ	cond_bgz_63_then
	PUSH	0
	PUSH	cond_bgz_63_fin
	GOTO
cond_bgz_63_then	EQU	*
	PUSH	1
cond_bgz_63_fin	EQU	*
	BGZ	cond_bgz_64_then
	PUSH	1
	PUSH	cond_bgz_64_fin
	GOTO
cond_bgz_64_then	EQU	*
	PUSH	0
cond_bgz_64_fin	EQU	*
	OUT
;/ print...
	PUSH	num1
	LOAD
	PUSH	num2
	LOAD
	SUB
	BGZ	cond_bgz_65_then
	PUSH	0
	PUSH	cond_bgz_65_fin
	GOTO
cond_bgz_65_then	EQU	*
	PUSH	1
cond_bgz_65_fin	EQU	*
	BGZ	cond_bgz_66_then
	PUSH	1
	PUSH	cond_bgz_66_fin
	GOTO
cond_bgz_66_then	EQU	*
	PUSH	0
cond_bgz_66_fin	EQU	*
	OUT
;/ print...
	PUSH	num1
	LOAD
	PUSH	num2
	LOAD
	SUB
	BGZ	cond_bgz_67_then
	PUSH	0
	PUSH	cond_bgz_67_fin
	GOTO
cond_bgz_67_then	EQU	*
	PUSH	1
cond_bgz_67_fin	EQU	*
	OUT
;/ print...
	PUSH	num2
	LOAD
	PUSH	num1
	LOAD
	SUB
	BGZ	cond_bgz_68_then
	PUSH	0
	PUSH	cond_bgz_68_fin
	GOTO
cond_bgz_68_then	EQU	*
	PUSH	1
cond_bgz_68_fin	EQU	*
	OUT
;/ print...
	PUSH	num2
	LOAD
	PUSH	num1
	LOAD
	SUB
	BGZ	cond_bgz_69_then
	PUSH	0
	PUSH	cond_bgz_69_fin
	GOTO
cond_bgz_69_then	EQU	*
	PUSH	1
cond_bgz_69_fin	EQU	*
	OUT
;/ print...
	PUSH	num1
	LOAD
	PUSH	num2
	LOAD
	SUB
	BGZ	cond_bgz_70_then
	PUSH	0
	PUSH	cond_bgz_70_fin
	GOTO
cond_bgz_70_then	EQU	*
	PUSH	1
cond_bgz_70_fin	EQU	*
	OUT
;/ print...
	PUSH	32
	OUT
boolean_var	DS	1
	PUSH	boolean_var
	PUSH	1
	STORE
;/ print...
	PUSH	boolean_var
	LOAD
	OUT
;/ print...
	PUSH	1
	OUT
;/ print...
	PUSH	0
	OUT
a	DS	1
b	DS	1
c	DS	1
mylist	DS	5
x	DS	1
	PUSH	x
	PUSH	10
	STORE
while_do_71_debut	EQU	*
	PUSH	x
	LOAD
	BEZ	while_do_71_fin
;/ print...
	PUSH	x
	LOAD
	OUT
	PUSH	x
	PUSH	x
	LOAD
	PUSH	1
	SUB
	STORE
	PUSH	while_do_71_debut
	GOTO
	PUSH	while_do_71_fin
	GOTO
while_do_71_fin	EQU	*
	PUSH	0
	BEZ	cond_bez_72_else
;/ print...
	PUSH	1
	OUT
	PUSH	cond_bez_72_fin
	GOTO
cond_bez_72_else	EQU	*
;/ print...
	PUSH	0
	OUT
cond_bez_72_fin	EQU	*
user_input	DS	1
	PUSH	user_input
	IN
	STORE
;/ print...
	PUSH	user_input
	LOAD
	OUT
adrian	DS	1
	PUSH	adrian
	PUSH	25
	STORE
;/ print...
	PUSH	adrian
	LOAD
	PUSH	20
	SUB
	OUT
y	DS	1
	PUSH	y
	PUSH	20
	STORE
;/ print...
	PUSH	y
	LOAD
	OUT
mines	DS	1
	PUSH	mines
	PUSH	25
	STORE
;/ print...
	PUSH	mines
	LOAD
	OUT
;/ print...
	PUSH	1
	PUSH	5
	PUSH	2
	ADD
	PUSH	2
	ADD
	PUSH	3
	SUB
	SUB
	OUT
;/ print...
	PUSH	3
	PUSH	2
	MUL
	OUT
;/ print...
	PUSH	11
	PUSH	3
	DIV
	OUT
;/ print...
	PUSH	1
	PUSH	5
	SUB
	PUSH	2
	ADD
	OUT
;/ print...
	PUSH	4
	PUSH	5
	ADD
	OUT
;/ print...
	PUSH	3
	OUT
;/ print...
	PUSH	42
	OUT
	PUSH	5
	STOP
	PUSH	main_value
	PUSH	0
	STORE
	GOTO
end_program	EQU	*
	STOP


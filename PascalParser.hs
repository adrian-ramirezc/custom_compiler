{-# OPTIONS_GHC -w #-}
module PascalParser(parseProgram,ParseResult, initEtat)

where

import Control.Monad.State.Lazy
import PascaLex
import qualified Data.Array as Happy_Data_Array
import qualified Data.Bits as Bits
import Control.Applicative(Applicative(..))
import Control.Monad (ap)

-- parser produced by Happy Version 1.19.12

data HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24
	= HappyTerminal (Token)
	| HappyErrorToken Int
	| HappyAbsSyn4 t4
	| HappyAbsSyn5 t5
	| HappyAbsSyn6 t6
	| HappyAbsSyn7 t7
	| HappyAbsSyn8 t8
	| HappyAbsSyn9 t9
	| HappyAbsSyn10 t10
	| HappyAbsSyn11 t11
	| HappyAbsSyn12 t12
	| HappyAbsSyn13 t13
	| HappyAbsSyn14 t14
	| HappyAbsSyn15 t15
	| HappyAbsSyn16 t16
	| HappyAbsSyn17 t17
	| HappyAbsSyn18 t18
	| HappyAbsSyn19 t19
	| HappyAbsSyn20 t20
	| HappyAbsSyn21 t21
	| HappyAbsSyn22 t22
	| HappyAbsSyn23 t23
	| HappyAbsSyn24 t24

happyExpList :: Happy_Data_Array.Array Int Int
happyExpList = Happy_Data_Array.listArray (0,498) ([0,34560,61440,21051,0,34560,61440,21051,0,34560,61440,21051,0,0,0,0,0,512,0,0,0,512,0,0,0,31232,4080,0,0,0,0,0,0,0,0,0,0,512,8,0,0,512,8,0,0,512,0,0,0,512,0,0,0,512,0,0,0,512,0,0,0,512,0,0,0,512,0,0,0,0,0,0,0,33792,36864,25,0,0,0,0,0,0,0,0,0,33792,36864,25,0,33792,36864,25,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,8,0,32768,0,4,0,32768,0,0,0,33792,36864,25,0,33792,36864,25,0,0,0,8,0,32768,0,0,0,0,0,0,0,33792,36864,25,0,32768,0,0,0,30720,4080,1024,0,32768,0,0,0,30720,4080,64,0,0,1,0,0,0,0,8,0,33792,36864,25,0,0,2,4,0,0,0,0,0,30720,4081,0,0,30720,4080,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,8,0,0,0,0,0,0,0,8,0,0,0,0,0,33792,36864,25,0,33792,36864,25,0,33792,36864,25,0,33792,36864,25,0,33792,36864,25,0,33792,36864,25,0,33792,36864,25,0,33792,36864,25,0,33792,36864,25,0,33792,36864,25,0,33792,36864,25,0,33792,36864,25,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,24576,0,0,0,24576,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1024,0,0,0,33792,36864,25,0,30720,4080,0,0,0,0,0,0,0,9,0,0,0,0,4,0,0,0,0,0,34560,61440,21051,0,34560,61440,21051,0,0,0,8,0,30720,4081,0,0,0,0,0,0,0,9,0,0,0,0,0,0,34560,61440,23099,0,34560,61440,21179,0,33792,36864,25,0,0,0,0,0,0,0,8,0,30720,4080,0,0,0,4,0,0,0,0,0,0,0,0,0,0,30720,4080,0,0,34560,61440,21051,0,0,0,0,0,34560,61440,21051,0,0,0,8,0,0,0,0,0,34560,61440,21051,0,0,0,8192,0,34560,61440,21307,0,0,0,0,0,33792,36864,25,0,30720,4080,0,0
	])

{-# NOINLINE happyExpListPerState #-}
happyExpListPerState st =
    token_strs_expected
  where token_strs = ["error","%dummy","%start_parse","Program","Linst","Inst","Exit","Print","Expr","ExprNum","ExprBool","Ldef_scalaire","Def_scalaire","Assign_scalaire","Def_Assign_scalaire","Def_array","If","While","LFuncArgs","FuncBody","FuncDef","FuncPar","LFuncPars","FuncCall","print","';'","integer","'+'","'-'","'*'","'/'","'('","')'","'['","']'","','","'>'","'>='","'<'","'<='","'=='","'!='","'&&'","'||'","'!'","'SLC'","'MLC'","True","False","let","'='","var","input","if","then","else","endif","while","do","endwhile","def","return","exit","%eof"]
        bit_start = st * 64
        bit_end = (st + 1) * 64
        read_bit = readArrayBit happyExpList
        bits = map read_bit [bit_start..bit_end - 1]
        bits_indexed = zip bits [0..63]
        token_strs_expected = concatMap f bits_indexed
        f (False, _) = []
        f (True, nr) = [token_strs !! nr]

action_0 (25) = happyShift action_18
action_0 (26) = happyShift action_19
action_0 (27) = happyShift action_20
action_0 (32) = happyShift action_21
action_0 (45) = happyShift action_22
action_0 (46) = happyShift action_23
action_0 (47) = happyShift action_24
action_0 (48) = happyShift action_25
action_0 (49) = happyShift action_26
action_0 (50) = happyShift action_27
action_0 (52) = happyShift action_28
action_0 (53) = happyShift action_29
action_0 (54) = happyShift action_30
action_0 (58) = happyShift action_31
action_0 (61) = happyShift action_32
action_0 (63) = happyShift action_33
action_0 (4) = happyGoto action_34
action_0 (5) = happyGoto action_2
action_0 (6) = happyGoto action_3
action_0 (7) = happyGoto action_4
action_0 (8) = happyGoto action_5
action_0 (9) = happyGoto action_6
action_0 (10) = happyGoto action_7
action_0 (11) = happyGoto action_8
action_0 (12) = happyGoto action_9
action_0 (13) = happyGoto action_10
action_0 (14) = happyGoto action_11
action_0 (15) = happyGoto action_12
action_0 (16) = happyGoto action_13
action_0 (17) = happyGoto action_14
action_0 (18) = happyGoto action_15
action_0 (21) = happyGoto action_16
action_0 (24) = happyGoto action_17
action_0 _ = happyFail (happyExpListPerState 0)

action_1 (25) = happyShift action_18
action_1 (26) = happyShift action_19
action_1 (27) = happyShift action_20
action_1 (32) = happyShift action_21
action_1 (45) = happyShift action_22
action_1 (46) = happyShift action_23
action_1 (47) = happyShift action_24
action_1 (48) = happyShift action_25
action_1 (49) = happyShift action_26
action_1 (50) = happyShift action_27
action_1 (52) = happyShift action_28
action_1 (53) = happyShift action_29
action_1 (54) = happyShift action_30
action_1 (58) = happyShift action_31
action_1 (61) = happyShift action_32
action_1 (63) = happyShift action_33
action_1 (5) = happyGoto action_2
action_1 (6) = happyGoto action_3
action_1 (7) = happyGoto action_4
action_1 (8) = happyGoto action_5
action_1 (9) = happyGoto action_6
action_1 (10) = happyGoto action_7
action_1 (11) = happyGoto action_8
action_1 (12) = happyGoto action_9
action_1 (13) = happyGoto action_10
action_1 (14) = happyGoto action_11
action_1 (15) = happyGoto action_12
action_1 (16) = happyGoto action_13
action_1 (17) = happyGoto action_14
action_1 (18) = happyGoto action_15
action_1 (21) = happyGoto action_16
action_1 (24) = happyGoto action_17
action_1 _ = happyFail (happyExpListPerState 1)

action_2 (25) = happyShift action_18
action_2 (26) = happyShift action_19
action_2 (27) = happyShift action_20
action_2 (32) = happyShift action_21
action_2 (45) = happyShift action_22
action_2 (46) = happyShift action_23
action_2 (47) = happyShift action_24
action_2 (48) = happyShift action_25
action_2 (49) = happyShift action_26
action_2 (50) = happyShift action_27
action_2 (52) = happyShift action_28
action_2 (53) = happyShift action_29
action_2 (54) = happyShift action_30
action_2 (58) = happyShift action_31
action_2 (61) = happyShift action_32
action_2 (63) = happyShift action_33
action_2 (6) = happyGoto action_72
action_2 (7) = happyGoto action_4
action_2 (8) = happyGoto action_5
action_2 (9) = happyGoto action_6
action_2 (10) = happyGoto action_7
action_2 (11) = happyGoto action_8
action_2 (12) = happyGoto action_9
action_2 (13) = happyGoto action_10
action_2 (14) = happyGoto action_11
action_2 (15) = happyGoto action_12
action_2 (16) = happyGoto action_13
action_2 (17) = happyGoto action_14
action_2 (18) = happyGoto action_15
action_2 (21) = happyGoto action_16
action_2 (24) = happyGoto action_17
action_2 _ = happyReduce_1

action_3 _ = happyReduce_2

action_4 (26) = happyShift action_71
action_4 _ = happyFail (happyExpListPerState 4)

action_5 (26) = happyShift action_70
action_5 _ = happyFail (happyExpListPerState 5)

action_6 (26) = happyShift action_57
action_6 (28) = happyShift action_58
action_6 (29) = happyShift action_59
action_6 (30) = happyShift action_60
action_6 (31) = happyShift action_61
action_6 (37) = happyShift action_62
action_6 (38) = happyShift action_63
action_6 (39) = happyShift action_64
action_6 (40) = happyShift action_65
action_6 (41) = happyShift action_66
action_6 (42) = happyShift action_67
action_6 (43) = happyShift action_68
action_6 (44) = happyShift action_69
action_6 _ = happyFail (happyExpListPerState 6)

action_7 _ = happyReduce_20

action_8 _ = happyReduce_21

action_9 (26) = happyShift action_55
action_9 (36) = happyShift action_56
action_9 _ = happyFail (happyExpListPerState 9)

action_10 (26) = happyShift action_53
action_10 (36) = happyShift action_54
action_10 _ = happyFail (happyExpListPerState 10)

action_11 (26) = happyShift action_52
action_11 _ = happyFail (happyExpListPerState 11)

action_12 (26) = happyShift action_51
action_12 _ = happyFail (happyExpListPerState 12)

action_13 (26) = happyShift action_50
action_13 _ = happyFail (happyExpListPerState 13)

action_14 (26) = happyShift action_49
action_14 _ = happyFail (happyExpListPerState 14)

action_15 (26) = happyShift action_48
action_15 _ = happyFail (happyExpListPerState 15)

action_16 (26) = happyShift action_47
action_16 _ = happyFail (happyExpListPerState 16)

action_17 _ = happyReduce_22

action_18 (27) = happyShift action_20
action_18 (32) = happyShift action_21
action_18 (45) = happyShift action_22
action_18 (48) = happyShift action_25
action_18 (49) = happyShift action_26
action_18 (52) = happyShift action_38
action_18 (53) = happyShift action_29
action_18 (9) = happyGoto action_46
action_18 (10) = happyGoto action_7
action_18 (11) = happyGoto action_8
action_18 (24) = happyGoto action_17
action_18 _ = happyFail (happyExpListPerState 18)

action_19 _ = happyReduce_4

action_20 _ = happyReduce_26

action_21 (27) = happyShift action_20
action_21 (32) = happyShift action_21
action_21 (45) = happyShift action_22
action_21 (48) = happyShift action_25
action_21 (49) = happyShift action_26
action_21 (52) = happyShift action_38
action_21 (53) = happyShift action_29
action_21 (9) = happyGoto action_45
action_21 (10) = happyGoto action_7
action_21 (11) = happyGoto action_8
action_21 (24) = happyGoto action_17
action_21 _ = happyFail (happyExpListPerState 21)

action_22 (27) = happyShift action_20
action_22 (32) = happyShift action_21
action_22 (45) = happyShift action_22
action_22 (48) = happyShift action_25
action_22 (49) = happyShift action_26
action_22 (52) = happyShift action_38
action_22 (53) = happyShift action_29
action_22 (9) = happyGoto action_44
action_22 (10) = happyGoto action_7
action_22 (11) = happyGoto action_8
action_22 (24) = happyGoto action_17
action_22 _ = happyFail (happyExpListPerState 22)

action_23 _ = happyReduce_5

action_24 _ = happyReduce_6

action_25 _ = happyReduce_31

action_26 _ = happyReduce_32

action_27 (52) = happyShift action_43
action_27 _ = happyFail (happyExpListPerState 27)

action_28 (32) = happyShift action_41
action_28 (51) = happyShift action_42
action_28 _ = happyReduce_23

action_29 (32) = happyShift action_40
action_29 _ = happyFail (happyExpListPerState 29)

action_30 (27) = happyShift action_20
action_30 (32) = happyShift action_21
action_30 (45) = happyShift action_22
action_30 (48) = happyShift action_25
action_30 (49) = happyShift action_26
action_30 (52) = happyShift action_38
action_30 (53) = happyShift action_29
action_30 (9) = happyGoto action_39
action_30 (10) = happyGoto action_7
action_30 (11) = happyGoto action_8
action_30 (24) = happyGoto action_17
action_30 _ = happyFail (happyExpListPerState 30)

action_31 (27) = happyShift action_20
action_31 (32) = happyShift action_21
action_31 (45) = happyShift action_22
action_31 (48) = happyShift action_25
action_31 (49) = happyShift action_26
action_31 (52) = happyShift action_38
action_31 (53) = happyShift action_29
action_31 (9) = happyGoto action_37
action_31 (10) = happyGoto action_7
action_31 (11) = happyGoto action_8
action_31 (24) = happyGoto action_17
action_31 _ = happyFail (happyExpListPerState 31)

action_32 (52) = happyShift action_36
action_32 _ = happyFail (happyExpListPerState 32)

action_33 (32) = happyShift action_35
action_33 _ = happyFail (happyExpListPerState 33)

action_34 (64) = happyAccept
action_34 _ = happyFail (happyExpListPerState 34)

action_35 (27) = happyShift action_20
action_35 (32) = happyShift action_21
action_35 (45) = happyShift action_22
action_35 (48) = happyShift action_25
action_35 (49) = happyShift action_26
action_35 (52) = happyShift action_38
action_35 (53) = happyShift action_29
action_35 (9) = happyGoto action_98
action_35 (10) = happyGoto action_7
action_35 (11) = happyGoto action_8
action_35 (24) = happyGoto action_17
action_35 _ = happyFail (happyExpListPerState 35)

action_36 (32) = happyShift action_97
action_36 _ = happyFail (happyExpListPerState 36)

action_37 (28) = happyShift action_58
action_37 (29) = happyShift action_59
action_37 (30) = happyShift action_60
action_37 (31) = happyShift action_61
action_37 (37) = happyShift action_62
action_37 (38) = happyShift action_63
action_37 (39) = happyShift action_64
action_37 (40) = happyShift action_65
action_37 (41) = happyShift action_66
action_37 (42) = happyShift action_67
action_37 (43) = happyShift action_68
action_37 (44) = happyShift action_69
action_37 (59) = happyShift action_96
action_37 _ = happyFail (happyExpListPerState 37)

action_38 (32) = happyShift action_41
action_38 _ = happyReduce_23

action_39 (28) = happyShift action_58
action_39 (29) = happyShift action_59
action_39 (30) = happyShift action_60
action_39 (31) = happyShift action_61
action_39 (37) = happyShift action_62
action_39 (38) = happyShift action_63
action_39 (39) = happyShift action_64
action_39 (40) = happyShift action_65
action_39 (41) = happyShift action_66
action_39 (42) = happyShift action_67
action_39 (43) = happyShift action_68
action_39 (44) = happyShift action_69
action_39 (55) = happyShift action_95
action_39 _ = happyFail (happyExpListPerState 39)

action_40 (33) = happyShift action_94
action_40 _ = happyFail (happyExpListPerState 40)

action_41 (52) = happyShift action_93
action_41 (22) = happyGoto action_91
action_41 (23) = happyGoto action_92
action_41 _ = happyReduce_57

action_42 (27) = happyShift action_20
action_42 (32) = happyShift action_21
action_42 (45) = happyShift action_22
action_42 (48) = happyShift action_25
action_42 (49) = happyShift action_26
action_42 (52) = happyShift action_38
action_42 (53) = happyShift action_29
action_42 (9) = happyGoto action_90
action_42 (10) = happyGoto action_7
action_42 (11) = happyGoto action_8
action_42 (24) = happyGoto action_17
action_42 _ = happyFail (happyExpListPerState 42)

action_43 (34) = happyShift action_88
action_43 (51) = happyShift action_89
action_43 _ = happyReduce_44

action_44 (28) = happyShift action_58
action_44 (29) = happyShift action_59
action_44 (30) = happyShift action_60
action_44 (31) = happyShift action_61
action_44 (37) = happyShift action_62
action_44 (38) = happyShift action_63
action_44 (39) = happyShift action_64
action_44 (40) = happyShift action_65
action_44 (41) = happyShift action_66
action_44 (42) = happyShift action_67
action_44 (43) = happyShift action_68
action_44 (44) = happyShift action_69
action_44 _ = happyReduce_41

action_45 (28) = happyShift action_58
action_45 (29) = happyShift action_59
action_45 (30) = happyShift action_60
action_45 (31) = happyShift action_61
action_45 (33) = happyShift action_87
action_45 (37) = happyShift action_62
action_45 (38) = happyShift action_63
action_45 (39) = happyShift action_64
action_45 (40) = happyShift action_65
action_45 (41) = happyShift action_66
action_45 (42) = happyShift action_67
action_45 (43) = happyShift action_68
action_45 (44) = happyShift action_69
action_45 _ = happyFail (happyExpListPerState 45)

action_46 (28) = happyShift action_58
action_46 (29) = happyShift action_59
action_46 (30) = happyShift action_60
action_46 (31) = happyShift action_61
action_46 (37) = happyShift action_62
action_46 (38) = happyShift action_63
action_46 (39) = happyShift action_64
action_46 (40) = happyShift action_65
action_46 (41) = happyShift action_66
action_46 (42) = happyShift action_67
action_46 (43) = happyShift action_68
action_46 (44) = happyShift action_69
action_46 _ = happyReduce_19

action_47 _ = happyReduce_16

action_48 _ = happyReduce_14

action_49 _ = happyReduce_13

action_50 _ = happyReduce_12

action_51 _ = happyReduce_11

action_52 _ = happyReduce_10

action_53 _ = happyReduce_9

action_54 (52) = happyShift action_86
action_54 _ = happyFail (happyExpListPerState 54)

action_55 _ = happyReduce_15

action_56 (52) = happyShift action_85
action_56 _ = happyFail (happyExpListPerState 56)

action_57 _ = happyReduce_7

action_58 (27) = happyShift action_20
action_58 (32) = happyShift action_21
action_58 (45) = happyShift action_22
action_58 (48) = happyShift action_25
action_58 (49) = happyShift action_26
action_58 (52) = happyShift action_38
action_58 (53) = happyShift action_29
action_58 (9) = happyGoto action_84
action_58 (10) = happyGoto action_7
action_58 (11) = happyGoto action_8
action_58 (24) = happyGoto action_17
action_58 _ = happyFail (happyExpListPerState 58)

action_59 (27) = happyShift action_20
action_59 (32) = happyShift action_21
action_59 (45) = happyShift action_22
action_59 (48) = happyShift action_25
action_59 (49) = happyShift action_26
action_59 (52) = happyShift action_38
action_59 (53) = happyShift action_29
action_59 (9) = happyGoto action_83
action_59 (10) = happyGoto action_7
action_59 (11) = happyGoto action_8
action_59 (24) = happyGoto action_17
action_59 _ = happyFail (happyExpListPerState 59)

action_60 (27) = happyShift action_20
action_60 (32) = happyShift action_21
action_60 (45) = happyShift action_22
action_60 (48) = happyShift action_25
action_60 (49) = happyShift action_26
action_60 (52) = happyShift action_38
action_60 (53) = happyShift action_29
action_60 (9) = happyGoto action_82
action_60 (10) = happyGoto action_7
action_60 (11) = happyGoto action_8
action_60 (24) = happyGoto action_17
action_60 _ = happyFail (happyExpListPerState 60)

action_61 (27) = happyShift action_20
action_61 (32) = happyShift action_21
action_61 (45) = happyShift action_22
action_61 (48) = happyShift action_25
action_61 (49) = happyShift action_26
action_61 (52) = happyShift action_38
action_61 (53) = happyShift action_29
action_61 (9) = happyGoto action_81
action_61 (10) = happyGoto action_7
action_61 (11) = happyGoto action_8
action_61 (24) = happyGoto action_17
action_61 _ = happyFail (happyExpListPerState 61)

action_62 (27) = happyShift action_20
action_62 (32) = happyShift action_21
action_62 (45) = happyShift action_22
action_62 (48) = happyShift action_25
action_62 (49) = happyShift action_26
action_62 (52) = happyShift action_38
action_62 (53) = happyShift action_29
action_62 (9) = happyGoto action_80
action_62 (10) = happyGoto action_7
action_62 (11) = happyGoto action_8
action_62 (24) = happyGoto action_17
action_62 _ = happyFail (happyExpListPerState 62)

action_63 (27) = happyShift action_20
action_63 (32) = happyShift action_21
action_63 (45) = happyShift action_22
action_63 (48) = happyShift action_25
action_63 (49) = happyShift action_26
action_63 (52) = happyShift action_38
action_63 (53) = happyShift action_29
action_63 (9) = happyGoto action_79
action_63 (10) = happyGoto action_7
action_63 (11) = happyGoto action_8
action_63 (24) = happyGoto action_17
action_63 _ = happyFail (happyExpListPerState 63)

action_64 (27) = happyShift action_20
action_64 (32) = happyShift action_21
action_64 (45) = happyShift action_22
action_64 (48) = happyShift action_25
action_64 (49) = happyShift action_26
action_64 (52) = happyShift action_38
action_64 (53) = happyShift action_29
action_64 (9) = happyGoto action_78
action_64 (10) = happyGoto action_7
action_64 (11) = happyGoto action_8
action_64 (24) = happyGoto action_17
action_64 _ = happyFail (happyExpListPerState 64)

action_65 (27) = happyShift action_20
action_65 (32) = happyShift action_21
action_65 (45) = happyShift action_22
action_65 (48) = happyShift action_25
action_65 (49) = happyShift action_26
action_65 (52) = happyShift action_38
action_65 (53) = happyShift action_29
action_65 (9) = happyGoto action_77
action_65 (10) = happyGoto action_7
action_65 (11) = happyGoto action_8
action_65 (24) = happyGoto action_17
action_65 _ = happyFail (happyExpListPerState 65)

action_66 (27) = happyShift action_20
action_66 (32) = happyShift action_21
action_66 (45) = happyShift action_22
action_66 (48) = happyShift action_25
action_66 (49) = happyShift action_26
action_66 (52) = happyShift action_38
action_66 (53) = happyShift action_29
action_66 (9) = happyGoto action_76
action_66 (10) = happyGoto action_7
action_66 (11) = happyGoto action_8
action_66 (24) = happyGoto action_17
action_66 _ = happyFail (happyExpListPerState 66)

action_67 (27) = happyShift action_20
action_67 (32) = happyShift action_21
action_67 (45) = happyShift action_22
action_67 (48) = happyShift action_25
action_67 (49) = happyShift action_26
action_67 (52) = happyShift action_38
action_67 (53) = happyShift action_29
action_67 (9) = happyGoto action_75
action_67 (10) = happyGoto action_7
action_67 (11) = happyGoto action_8
action_67 (24) = happyGoto action_17
action_67 _ = happyFail (happyExpListPerState 67)

action_68 (27) = happyShift action_20
action_68 (32) = happyShift action_21
action_68 (45) = happyShift action_22
action_68 (48) = happyShift action_25
action_68 (49) = happyShift action_26
action_68 (52) = happyShift action_38
action_68 (53) = happyShift action_29
action_68 (9) = happyGoto action_74
action_68 (10) = happyGoto action_7
action_68 (11) = happyGoto action_8
action_68 (24) = happyGoto action_17
action_68 _ = happyFail (happyExpListPerState 68)

action_69 (27) = happyShift action_20
action_69 (32) = happyShift action_21
action_69 (45) = happyShift action_22
action_69 (48) = happyShift action_25
action_69 (49) = happyShift action_26
action_69 (52) = happyShift action_38
action_69 (53) = happyShift action_29
action_69 (9) = happyGoto action_73
action_69 (10) = happyGoto action_7
action_69 (11) = happyGoto action_8
action_69 (24) = happyGoto action_17
action_69 _ = happyFail (happyExpListPerState 69)

action_70 _ = happyReduce_8

action_71 _ = happyReduce_17

action_72 _ = happyReduce_3

action_73 (28) = happyShift action_58
action_73 (29) = happyShift action_59
action_73 (30) = happyShift action_60
action_73 (31) = happyShift action_61
action_73 (37) = happyShift action_62
action_73 (38) = happyShift action_63
action_73 (39) = happyShift action_64
action_73 (40) = happyShift action_65
action_73 (41) = happyShift action_66
action_73 (42) = happyShift action_67
action_73 (43) = happyShift action_68
action_73 (44) = happyShift action_69
action_73 _ = happyReduce_40

action_74 (28) = happyShift action_58
action_74 (29) = happyShift action_59
action_74 (30) = happyShift action_60
action_74 (31) = happyShift action_61
action_74 (37) = happyShift action_62
action_74 (38) = happyShift action_63
action_74 (39) = happyShift action_64
action_74 (40) = happyShift action_65
action_74 (41) = happyShift action_66
action_74 (42) = happyShift action_67
action_74 (43) = happyShift action_68
action_74 (44) = happyShift action_69
action_74 _ = happyReduce_39

action_75 (28) = happyShift action_58
action_75 (29) = happyShift action_59
action_75 (30) = happyShift action_60
action_75 (31) = happyShift action_61
action_75 (37) = happyShift action_62
action_75 (38) = happyShift action_63
action_75 (39) = happyShift action_64
action_75 (40) = happyShift action_65
action_75 (41) = happyShift action_66
action_75 (42) = happyShift action_67
action_75 (43) = happyShift action_68
action_75 (44) = happyShift action_69
action_75 _ = happyReduce_38

action_76 (28) = happyShift action_58
action_76 (29) = happyShift action_59
action_76 (30) = happyShift action_60
action_76 (31) = happyShift action_61
action_76 (37) = happyShift action_62
action_76 (38) = happyShift action_63
action_76 (39) = happyShift action_64
action_76 (40) = happyShift action_65
action_76 (41) = happyShift action_66
action_76 (42) = happyShift action_67
action_76 (43) = happyShift action_68
action_76 (44) = happyShift action_69
action_76 _ = happyReduce_37

action_77 (28) = happyShift action_58
action_77 (29) = happyShift action_59
action_77 (30) = happyShift action_60
action_77 (31) = happyShift action_61
action_77 (37) = happyShift action_62
action_77 (38) = happyShift action_63
action_77 (39) = happyShift action_64
action_77 (40) = happyShift action_65
action_77 (41) = happyShift action_66
action_77 (42) = happyShift action_67
action_77 (43) = happyShift action_68
action_77 (44) = happyShift action_69
action_77 _ = happyReduce_36

action_78 (28) = happyShift action_58
action_78 (29) = happyShift action_59
action_78 (30) = happyShift action_60
action_78 (31) = happyShift action_61
action_78 (37) = happyShift action_62
action_78 (38) = happyShift action_63
action_78 (39) = happyShift action_64
action_78 (40) = happyShift action_65
action_78 (41) = happyShift action_66
action_78 (42) = happyShift action_67
action_78 (43) = happyShift action_68
action_78 (44) = happyShift action_69
action_78 _ = happyReduce_35

action_79 (28) = happyShift action_58
action_79 (29) = happyShift action_59
action_79 (30) = happyShift action_60
action_79 (31) = happyShift action_61
action_79 (37) = happyShift action_62
action_79 (38) = happyShift action_63
action_79 (39) = happyShift action_64
action_79 (40) = happyShift action_65
action_79 (41) = happyShift action_66
action_79 (42) = happyShift action_67
action_79 (43) = happyShift action_68
action_79 (44) = happyShift action_69
action_79 _ = happyReduce_34

action_80 (28) = happyShift action_58
action_80 (29) = happyShift action_59
action_80 (30) = happyShift action_60
action_80 (31) = happyShift action_61
action_80 (37) = happyShift action_62
action_80 (38) = happyShift action_63
action_80 (39) = happyShift action_64
action_80 (40) = happyShift action_65
action_80 (41) = happyShift action_66
action_80 (42) = happyShift action_67
action_80 (43) = happyShift action_68
action_80 (44) = happyShift action_69
action_80 _ = happyReduce_33

action_81 (37) = happyShift action_62
action_81 (38) = happyShift action_63
action_81 (39) = happyShift action_64
action_81 (40) = happyShift action_65
action_81 (41) = happyShift action_66
action_81 (42) = happyShift action_67
action_81 (43) = happyShift action_68
action_81 (44) = happyShift action_69
action_81 _ = happyReduce_30

action_82 (37) = happyShift action_62
action_82 (38) = happyShift action_63
action_82 (39) = happyShift action_64
action_82 (40) = happyShift action_65
action_82 (41) = happyShift action_66
action_82 (42) = happyShift action_67
action_82 (43) = happyShift action_68
action_82 (44) = happyShift action_69
action_82 _ = happyReduce_29

action_83 (30) = happyShift action_60
action_83 (31) = happyShift action_61
action_83 (37) = happyShift action_62
action_83 (38) = happyShift action_63
action_83 (39) = happyShift action_64
action_83 (40) = happyShift action_65
action_83 (41) = happyShift action_66
action_83 (42) = happyShift action_67
action_83 (43) = happyShift action_68
action_83 (44) = happyShift action_69
action_83 _ = happyReduce_28

action_84 (30) = happyShift action_60
action_84 (31) = happyShift action_61
action_84 (37) = happyShift action_62
action_84 (38) = happyShift action_63
action_84 (39) = happyShift action_64
action_84 (40) = happyShift action_65
action_84 (41) = happyShift action_66
action_84 (42) = happyShift action_67
action_84 (43) = happyShift action_68
action_84 (44) = happyShift action_69
action_84 _ = happyReduce_27

action_85 _ = happyReduce_43

action_86 _ = happyReduce_42

action_87 _ = happyReduce_24

action_88 (27) = happyShift action_108
action_88 _ = happyFail (happyExpListPerState 88)

action_89 (27) = happyShift action_20
action_89 (32) = happyShift action_21
action_89 (45) = happyShift action_22
action_89 (48) = happyShift action_25
action_89 (49) = happyShift action_26
action_89 (52) = happyShift action_38
action_89 (53) = happyShift action_29
action_89 (9) = happyGoto action_107
action_89 (10) = happyGoto action_7
action_89 (11) = happyGoto action_8
action_89 (24) = happyGoto action_17
action_89 _ = happyFail (happyExpListPerState 89)

action_90 (28) = happyShift action_58
action_90 (29) = happyShift action_59
action_90 (30) = happyShift action_60
action_90 (31) = happyShift action_61
action_90 (37) = happyShift action_62
action_90 (38) = happyShift action_63
action_90 (39) = happyShift action_64
action_90 (40) = happyShift action_65
action_90 (41) = happyShift action_66
action_90 (42) = happyShift action_67
action_90 (43) = happyShift action_68
action_90 (44) = happyShift action_69
action_90 _ = happyReduce_45

action_91 _ = happyReduce_58

action_92 (33) = happyShift action_105
action_92 (36) = happyShift action_106
action_92 _ = happyFail (happyExpListPerState 92)

action_93 (51) = happyShift action_104
action_93 _ = happyFail (happyExpListPerState 93)

action_94 _ = happyReduce_25

action_95 (25) = happyShift action_18
action_95 (26) = happyShift action_19
action_95 (27) = happyShift action_20
action_95 (32) = happyShift action_21
action_95 (45) = happyShift action_22
action_95 (46) = happyShift action_23
action_95 (47) = happyShift action_24
action_95 (48) = happyShift action_25
action_95 (49) = happyShift action_26
action_95 (50) = happyShift action_27
action_95 (52) = happyShift action_28
action_95 (53) = happyShift action_29
action_95 (54) = happyShift action_30
action_95 (58) = happyShift action_31
action_95 (61) = happyShift action_32
action_95 (63) = happyShift action_33
action_95 (5) = happyGoto action_103
action_95 (6) = happyGoto action_3
action_95 (7) = happyGoto action_4
action_95 (8) = happyGoto action_5
action_95 (9) = happyGoto action_6
action_95 (10) = happyGoto action_7
action_95 (11) = happyGoto action_8
action_95 (12) = happyGoto action_9
action_95 (13) = happyGoto action_10
action_95 (14) = happyGoto action_11
action_95 (15) = happyGoto action_12
action_95 (16) = happyGoto action_13
action_95 (17) = happyGoto action_14
action_95 (18) = happyGoto action_15
action_95 (21) = happyGoto action_16
action_95 (24) = happyGoto action_17
action_95 _ = happyFail (happyExpListPerState 95)

action_96 (25) = happyShift action_18
action_96 (26) = happyShift action_19
action_96 (27) = happyShift action_20
action_96 (32) = happyShift action_21
action_96 (45) = happyShift action_22
action_96 (46) = happyShift action_23
action_96 (47) = happyShift action_24
action_96 (48) = happyShift action_25
action_96 (49) = happyShift action_26
action_96 (50) = happyShift action_27
action_96 (52) = happyShift action_28
action_96 (53) = happyShift action_29
action_96 (54) = happyShift action_30
action_96 (58) = happyShift action_31
action_96 (61) = happyShift action_32
action_96 (63) = happyShift action_33
action_96 (5) = happyGoto action_102
action_96 (6) = happyGoto action_3
action_96 (7) = happyGoto action_4
action_96 (8) = happyGoto action_5
action_96 (9) = happyGoto action_6
action_96 (10) = happyGoto action_7
action_96 (11) = happyGoto action_8
action_96 (12) = happyGoto action_9
action_96 (13) = happyGoto action_10
action_96 (14) = happyGoto action_11
action_96 (15) = happyGoto action_12
action_96 (16) = happyGoto action_13
action_96 (17) = happyGoto action_14
action_96 (18) = happyGoto action_15
action_96 (21) = happyGoto action_16
action_96 (24) = happyGoto action_17
action_96 _ = happyFail (happyExpListPerState 96)

action_97 (52) = happyShift action_101
action_97 (19) = happyGoto action_100
action_97 _ = happyReduce_50

action_98 (28) = happyShift action_58
action_98 (29) = happyShift action_59
action_98 (30) = happyShift action_60
action_98 (31) = happyShift action_61
action_98 (33) = happyShift action_99
action_98 (37) = happyShift action_62
action_98 (38) = happyShift action_63
action_98 (39) = happyShift action_64
action_98 (40) = happyShift action_65
action_98 (41) = happyShift action_66
action_98 (42) = happyShift action_67
action_98 (43) = happyShift action_68
action_98 (44) = happyShift action_69
action_98 _ = happyFail (happyExpListPerState 98)

action_99 _ = happyReduce_18

action_100 (33) = happyShift action_114
action_100 (36) = happyShift action_115
action_100 _ = happyFail (happyExpListPerState 100)

action_101 _ = happyReduce_51

action_102 (25) = happyShift action_18
action_102 (26) = happyShift action_19
action_102 (27) = happyShift action_20
action_102 (32) = happyShift action_21
action_102 (45) = happyShift action_22
action_102 (46) = happyShift action_23
action_102 (47) = happyShift action_24
action_102 (48) = happyShift action_25
action_102 (49) = happyShift action_26
action_102 (50) = happyShift action_27
action_102 (52) = happyShift action_28
action_102 (53) = happyShift action_29
action_102 (54) = happyShift action_30
action_102 (58) = happyShift action_31
action_102 (60) = happyShift action_113
action_102 (61) = happyShift action_32
action_102 (63) = happyShift action_33
action_102 (6) = happyGoto action_72
action_102 (7) = happyGoto action_4
action_102 (8) = happyGoto action_5
action_102 (9) = happyGoto action_6
action_102 (10) = happyGoto action_7
action_102 (11) = happyGoto action_8
action_102 (12) = happyGoto action_9
action_102 (13) = happyGoto action_10
action_102 (14) = happyGoto action_11
action_102 (15) = happyGoto action_12
action_102 (16) = happyGoto action_13
action_102 (17) = happyGoto action_14
action_102 (18) = happyGoto action_15
action_102 (21) = happyGoto action_16
action_102 (24) = happyGoto action_17
action_102 _ = happyFail (happyExpListPerState 102)

action_103 (25) = happyShift action_18
action_103 (26) = happyShift action_19
action_103 (27) = happyShift action_20
action_103 (32) = happyShift action_21
action_103 (45) = happyShift action_22
action_103 (46) = happyShift action_23
action_103 (47) = happyShift action_24
action_103 (48) = happyShift action_25
action_103 (49) = happyShift action_26
action_103 (50) = happyShift action_27
action_103 (52) = happyShift action_28
action_103 (53) = happyShift action_29
action_103 (54) = happyShift action_30
action_103 (56) = happyShift action_112
action_103 (58) = happyShift action_31
action_103 (61) = happyShift action_32
action_103 (63) = happyShift action_33
action_103 (6) = happyGoto action_72
action_103 (7) = happyGoto action_4
action_103 (8) = happyGoto action_5
action_103 (9) = happyGoto action_6
action_103 (10) = happyGoto action_7
action_103 (11) = happyGoto action_8
action_103 (12) = happyGoto action_9
action_103 (13) = happyGoto action_10
action_103 (14) = happyGoto action_11
action_103 (15) = happyGoto action_12
action_103 (16) = happyGoto action_13
action_103 (17) = happyGoto action_14
action_103 (18) = happyGoto action_15
action_103 (21) = happyGoto action_16
action_103 (24) = happyGoto action_17
action_103 _ = happyFail (happyExpListPerState 103)

action_104 (27) = happyShift action_20
action_104 (32) = happyShift action_21
action_104 (45) = happyShift action_22
action_104 (48) = happyShift action_25
action_104 (49) = happyShift action_26
action_104 (52) = happyShift action_38
action_104 (53) = happyShift action_29
action_104 (9) = happyGoto action_111
action_104 (10) = happyGoto action_7
action_104 (11) = happyGoto action_8
action_104 (24) = happyGoto action_17
action_104 _ = happyFail (happyExpListPerState 104)

action_105 _ = happyReduce_60

action_106 (52) = happyShift action_93
action_106 (22) = happyGoto action_110
action_106 _ = happyFail (happyExpListPerState 106)

action_107 (28) = happyShift action_58
action_107 (29) = happyShift action_59
action_107 (30) = happyShift action_60
action_107 (31) = happyShift action_61
action_107 (37) = happyShift action_62
action_107 (38) = happyShift action_63
action_107 (39) = happyShift action_64
action_107 (40) = happyShift action_65
action_107 (41) = happyShift action_66
action_107 (42) = happyShift action_67
action_107 (43) = happyShift action_68
action_107 (44) = happyShift action_69
action_107 _ = happyReduce_46

action_108 (35) = happyShift action_109
action_108 _ = happyFail (happyExpListPerState 108)

action_109 _ = happyReduce_47

action_110 _ = happyReduce_59

action_111 (28) = happyShift action_58
action_111 (29) = happyShift action_59
action_111 (30) = happyShift action_60
action_111 (31) = happyShift action_61
action_111 (37) = happyShift action_62
action_111 (38) = happyShift action_63
action_111 (39) = happyShift action_64
action_111 (40) = happyShift action_65
action_111 (41) = happyShift action_66
action_111 (42) = happyShift action_67
action_111 (43) = happyShift action_68
action_111 (44) = happyShift action_69
action_111 _ = happyReduce_56

action_112 (25) = happyShift action_18
action_112 (26) = happyShift action_19
action_112 (27) = happyShift action_20
action_112 (32) = happyShift action_21
action_112 (45) = happyShift action_22
action_112 (46) = happyShift action_23
action_112 (47) = happyShift action_24
action_112 (48) = happyShift action_25
action_112 (49) = happyShift action_26
action_112 (50) = happyShift action_27
action_112 (52) = happyShift action_28
action_112 (53) = happyShift action_29
action_112 (54) = happyShift action_30
action_112 (58) = happyShift action_31
action_112 (61) = happyShift action_32
action_112 (63) = happyShift action_33
action_112 (5) = happyGoto action_119
action_112 (6) = happyGoto action_3
action_112 (7) = happyGoto action_4
action_112 (8) = happyGoto action_5
action_112 (9) = happyGoto action_6
action_112 (10) = happyGoto action_7
action_112 (11) = happyGoto action_8
action_112 (12) = happyGoto action_9
action_112 (13) = happyGoto action_10
action_112 (14) = happyGoto action_11
action_112 (15) = happyGoto action_12
action_112 (16) = happyGoto action_13
action_112 (17) = happyGoto action_14
action_112 (18) = happyGoto action_15
action_112 (21) = happyGoto action_16
action_112 (24) = happyGoto action_17
action_112 _ = happyFail (happyExpListPerState 112)

action_113 _ = happyReduce_49

action_114 (25) = happyShift action_18
action_114 (26) = happyShift action_19
action_114 (27) = happyShift action_20
action_114 (32) = happyShift action_21
action_114 (45) = happyShift action_22
action_114 (46) = happyShift action_23
action_114 (47) = happyShift action_24
action_114 (48) = happyShift action_25
action_114 (49) = happyShift action_26
action_114 (50) = happyShift action_27
action_114 (52) = happyShift action_28
action_114 (53) = happyShift action_29
action_114 (54) = happyShift action_30
action_114 (58) = happyShift action_31
action_114 (61) = happyShift action_32
action_114 (63) = happyShift action_33
action_114 (5) = happyGoto action_117
action_114 (6) = happyGoto action_3
action_114 (7) = happyGoto action_4
action_114 (8) = happyGoto action_5
action_114 (9) = happyGoto action_6
action_114 (10) = happyGoto action_7
action_114 (11) = happyGoto action_8
action_114 (12) = happyGoto action_9
action_114 (13) = happyGoto action_10
action_114 (14) = happyGoto action_11
action_114 (15) = happyGoto action_12
action_114 (16) = happyGoto action_13
action_114 (17) = happyGoto action_14
action_114 (18) = happyGoto action_15
action_114 (20) = happyGoto action_118
action_114 (21) = happyGoto action_16
action_114 (24) = happyGoto action_17
action_114 _ = happyReduce_53

action_115 (52) = happyShift action_116
action_115 _ = happyFail (happyExpListPerState 115)

action_116 _ = happyReduce_52

action_117 (25) = happyShift action_18
action_117 (26) = happyShift action_19
action_117 (27) = happyShift action_20
action_117 (32) = happyShift action_21
action_117 (45) = happyShift action_22
action_117 (46) = happyShift action_23
action_117 (47) = happyShift action_24
action_117 (48) = happyShift action_25
action_117 (49) = happyShift action_26
action_117 (50) = happyShift action_27
action_117 (52) = happyShift action_28
action_117 (53) = happyShift action_29
action_117 (54) = happyShift action_30
action_117 (58) = happyShift action_31
action_117 (61) = happyShift action_32
action_117 (63) = happyShift action_33
action_117 (6) = happyGoto action_72
action_117 (7) = happyGoto action_4
action_117 (8) = happyGoto action_5
action_117 (9) = happyGoto action_6
action_117 (10) = happyGoto action_7
action_117 (11) = happyGoto action_8
action_117 (12) = happyGoto action_9
action_117 (13) = happyGoto action_10
action_117 (14) = happyGoto action_11
action_117 (15) = happyGoto action_12
action_117 (16) = happyGoto action_13
action_117 (17) = happyGoto action_14
action_117 (18) = happyGoto action_15
action_117 (21) = happyGoto action_16
action_117 (24) = happyGoto action_17
action_117 _ = happyReduce_54

action_118 (62) = happyShift action_121
action_118 _ = happyFail (happyExpListPerState 118)

action_119 (25) = happyShift action_18
action_119 (26) = happyShift action_19
action_119 (27) = happyShift action_20
action_119 (32) = happyShift action_21
action_119 (45) = happyShift action_22
action_119 (46) = happyShift action_23
action_119 (47) = happyShift action_24
action_119 (48) = happyShift action_25
action_119 (49) = happyShift action_26
action_119 (50) = happyShift action_27
action_119 (52) = happyShift action_28
action_119 (53) = happyShift action_29
action_119 (54) = happyShift action_30
action_119 (57) = happyShift action_120
action_119 (58) = happyShift action_31
action_119 (61) = happyShift action_32
action_119 (63) = happyShift action_33
action_119 (6) = happyGoto action_72
action_119 (7) = happyGoto action_4
action_119 (8) = happyGoto action_5
action_119 (9) = happyGoto action_6
action_119 (10) = happyGoto action_7
action_119 (11) = happyGoto action_8
action_119 (12) = happyGoto action_9
action_119 (13) = happyGoto action_10
action_119 (14) = happyGoto action_11
action_119 (15) = happyGoto action_12
action_119 (16) = happyGoto action_13
action_119 (17) = happyGoto action_14
action_119 (18) = happyGoto action_15
action_119 (21) = happyGoto action_16
action_119 (24) = happyGoto action_17
action_119 _ = happyFail (happyExpListPerState 119)

action_120 _ = happyReduce_48

action_121 (27) = happyShift action_20
action_121 (32) = happyShift action_21
action_121 (45) = happyShift action_22
action_121 (48) = happyShift action_25
action_121 (49) = happyShift action_26
action_121 (52) = happyShift action_38
action_121 (53) = happyShift action_29
action_121 (9) = happyGoto action_122
action_121 (10) = happyGoto action_7
action_121 (11) = happyGoto action_8
action_121 (24) = happyGoto action_17
action_121 _ = happyFail (happyExpListPerState 121)

action_122 (28) = happyShift action_58
action_122 (29) = happyShift action_59
action_122 (30) = happyShift action_60
action_122 (31) = happyShift action_61
action_122 (37) = happyShift action_62
action_122 (38) = happyShift action_63
action_122 (39) = happyShift action_64
action_122 (40) = happyShift action_65
action_122 (41) = happyShift action_66
action_122 (42) = happyShift action_67
action_122 (43) = happyShift action_68
action_122 (44) = happyShift action_69
action_122 _ = happyReduce_55

happyReduce_1 = happySpecReduce_1  4 happyReduction_1
happyReduction_1 (HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn4
		 ("\tPUSH\tend_program\n" 
                ++ "\tPUSH\tmain\n" 
                ++ "\tGOTO\n" 
                ++ happy_var_1
                ++ "end_program\tEQU\t*\n" 
                ++ "\tSTOP\n"
	)
happyReduction_1 _  = notHappyAtAll 

happyReduce_2 = happySpecReduce_1  5 happyReduction_2
happyReduction_2 (HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn5
		 (happy_var_1
	)
happyReduction_2 _  = notHappyAtAll 

happyReduce_3 = happySpecReduce_2  5 happyReduction_3
happyReduction_3 (HappyAbsSyn6  happy_var_2)
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn5
		 (happy_var_1 ++ happy_var_2
	)
happyReduction_3 _ _  = notHappyAtAll 

happyReduce_4 = happySpecReduce_1  6 happyReduction_4
happyReduction_4 _
	 =  HappyAbsSyn6
		 (""
	)

happyReduce_5 = happySpecReduce_1  6 happyReduction_5
happyReduction_5 _
	 =  HappyAbsSyn6
		 (""
	)

happyReduce_6 = happySpecReduce_1  6 happyReduction_6
happyReduction_6 _
	 =  HappyAbsSyn6
		 (""
	)

happyReduce_7 = happySpecReduce_2  6 happyReduction_7
happyReduction_7 _
	(HappyAbsSyn9  happy_var_1)
	 =  HappyAbsSyn6
		 (happy_var_1
	)
happyReduction_7 _ _  = notHappyAtAll 

happyReduce_8 = happySpecReduce_2  6 happyReduction_8
happyReduction_8 _
	(HappyAbsSyn8  happy_var_1)
	 =  HappyAbsSyn6
		 (happy_var_1
	)
happyReduction_8 _ _  = notHappyAtAll 

happyReduce_9 = happySpecReduce_2  6 happyReduction_9
happyReduction_9 _
	(HappyAbsSyn13  happy_var_1)
	 =  HappyAbsSyn6
		 (happy_var_1
	)
happyReduction_9 _ _  = notHappyAtAll 

happyReduce_10 = happySpecReduce_2  6 happyReduction_10
happyReduction_10 _
	(HappyAbsSyn14  happy_var_1)
	 =  HappyAbsSyn6
		 (happy_var_1
	)
happyReduction_10 _ _  = notHappyAtAll 

happyReduce_11 = happySpecReduce_2  6 happyReduction_11
happyReduction_11 _
	(HappyAbsSyn15  happy_var_1)
	 =  HappyAbsSyn6
		 (happy_var_1
	)
happyReduction_11 _ _  = notHappyAtAll 

happyReduce_12 = happySpecReduce_2  6 happyReduction_12
happyReduction_12 _
	(HappyAbsSyn16  happy_var_1)
	 =  HappyAbsSyn6
		 (happy_var_1
	)
happyReduction_12 _ _  = notHappyAtAll 

happyReduce_13 = happySpecReduce_2  6 happyReduction_13
happyReduction_13 _
	(HappyAbsSyn17  happy_var_1)
	 =  HappyAbsSyn6
		 (happy_var_1
	)
happyReduction_13 _ _  = notHappyAtAll 

happyReduce_14 = happySpecReduce_2  6 happyReduction_14
happyReduction_14 _
	(HappyAbsSyn18  happy_var_1)
	 =  HappyAbsSyn6
		 (happy_var_1
	)
happyReduction_14 _ _  = notHappyAtAll 

happyReduce_15 = happySpecReduce_2  6 happyReduction_15
happyReduction_15 _
	(HappyAbsSyn12  happy_var_1)
	 =  HappyAbsSyn6
		 (happy_var_1
	)
happyReduction_15 _ _  = notHappyAtAll 

happyReduce_16 = happySpecReduce_2  6 happyReduction_16
happyReduction_16 _
	(HappyAbsSyn21  happy_var_1)
	 =  HappyAbsSyn6
		 (happy_var_1
	)
happyReduction_16 _ _  = notHappyAtAll 

happyReduce_17 = happySpecReduce_2  6 happyReduction_17
happyReduction_17 _
	(HappyAbsSyn7  happy_var_1)
	 =  HappyAbsSyn6
		 (happy_var_1
	)
happyReduction_17 _ _  = notHappyAtAll 

happyReduce_18 = happyReduce 4 7 happyReduction_18
happyReduction_18 (_ `HappyStk`
	(HappyAbsSyn9  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn7
		 (happy_var_3 ++ "\tSTOP\n"
	) `HappyStk` happyRest

happyReduce_19 = happySpecReduce_2  8 happyReduction_19
happyReduction_19 (HappyAbsSyn9  happy_var_2)
	_
	 =  HappyAbsSyn8
		 (";/ print...\n" ++ happy_var_2 ++ "\tOUT\n"
	)
happyReduction_19 _ _  = notHappyAtAll 

happyReduce_20 = happySpecReduce_1  9 happyReduction_20
happyReduction_20 (HappyAbsSyn10  happy_var_1)
	 =  HappyAbsSyn9
		 (happy_var_1
	)
happyReduction_20 _  = notHappyAtAll 

happyReduce_21 = happySpecReduce_1  9 happyReduction_21
happyReduction_21 (HappyAbsSyn11  happy_var_1)
	 =  HappyAbsSyn9
		 (happy_var_1
	)
happyReduction_21 _  = notHappyAtAll 

happyReduce_22 = happySpecReduce_1  9 happyReduction_22
happyReduction_22 (HappyAbsSyn24  happy_var_1)
	 =  HappyAbsSyn9
		 (happy_var_1
	)
happyReduction_22 _  = notHappyAtAll 

happyReduce_23 = happySpecReduce_1  9 happyReduction_23
happyReduction_23 (HappyTerminal (TK _ (VAR happy_var_1)))
	 =  HappyAbsSyn9
		 ("\tPUSH\t" ++ happy_var_1 ++ "\n\tLOAD\n"
	)
happyReduction_23 _  = notHappyAtAll 

happyReduce_24 = happySpecReduce_3  9 happyReduction_24
happyReduction_24 _
	(HappyAbsSyn9  happy_var_2)
	_
	 =  HappyAbsSyn9
		 (happy_var_2
	)
happyReduction_24 _ _ _  = notHappyAtAll 

happyReduce_25 = happySpecReduce_3  9 happyReduction_25
happyReduction_25 _
	_
	_
	 =  HappyAbsSyn9
		 ("\tIN\n"
	)

happyReduce_26 = happySpecReduce_1  10 happyReduction_26
happyReduction_26 (HappyTerminal (TK _ (INT happy_var_1)))
	 =  HappyAbsSyn10
		 ("\tPUSH\t" ++ (show happy_var_1) ++ "\n"
	)
happyReduction_26 _  = notHappyAtAll 

happyReduce_27 = happyMonadReduce 3 10 happyReduction_27
happyReduction_27 ((HappyAbsSyn9  happy_var_3) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn9  happy_var_1) `HappyStk`
	happyRest) tk
	 = happyThen ((( add happy_var_1 happy_var_3))
	) (\r -> happyReturn (HappyAbsSyn10 r))

happyReduce_28 = happyMonadReduce 3 10 happyReduction_28
happyReduction_28 ((HappyAbsSyn9  happy_var_3) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn9  happy_var_1) `HappyStk`
	happyRest) tk
	 = happyThen ((( substract happy_var_1 happy_var_3))
	) (\r -> happyReturn (HappyAbsSyn10 r))

happyReduce_29 = happyMonadReduce 3 10 happyReduction_29
happyReduction_29 ((HappyAbsSyn9  happy_var_3) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn9  happy_var_1) `HappyStk`
	happyRest) tk
	 = happyThen ((( multiply happy_var_1 happy_var_3))
	) (\r -> happyReturn (HappyAbsSyn10 r))

happyReduce_30 = happyMonadReduce 3 10 happyReduction_30
happyReduction_30 ((HappyAbsSyn9  happy_var_3) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn9  happy_var_1) `HappyStk`
	happyRest) tk
	 = happyThen ((( divide happy_var_1 happy_var_3))
	) (\r -> happyReturn (HappyAbsSyn10 r))

happyReduce_31 = happySpecReduce_1  11 happyReduction_31
happyReduction_31 _
	 =  HappyAbsSyn11
		 ("\tPUSH\t1\n"
	)

happyReduce_32 = happySpecReduce_1  11 happyReduction_32
happyReduction_32 _
	 =  HappyAbsSyn11
		 ("\tPUSH\t0\n"
	)

happyReduce_33 = happyMonadReduce 3 11 happyReduction_33
happyReduction_33 ((HappyAbsSyn9  happy_var_3) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn9  happy_var_1) `HappyStk`
	happyRest) tk
	 = happyThen ((( greater_than happy_var_1 happy_var_3))
	) (\r -> happyReturn (HappyAbsSyn11 r))

happyReduce_34 = happyMonadReduce 3 11 happyReduction_34
happyReduction_34 ((HappyAbsSyn9  happy_var_3) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn9  happy_var_1) `HappyStk`
	happyRest) tk
	 = happyThen ((( greater_equ_than happy_var_1 happy_var_3))
	) (\r -> happyReturn (HappyAbsSyn11 r))

happyReduce_35 = happyMonadReduce 3 11 happyReduction_35
happyReduction_35 ((HappyAbsSyn9  happy_var_3) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn9  happy_var_1) `HappyStk`
	happyRest) tk
	 = happyThen ((( less_than happy_var_1 happy_var_3))
	) (\r -> happyReturn (HappyAbsSyn11 r))

happyReduce_36 = happyMonadReduce 3 11 happyReduction_36
happyReduction_36 ((HappyAbsSyn9  happy_var_3) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn9  happy_var_1) `HappyStk`
	happyRest) tk
	 = happyThen ((( less_equ_than happy_var_1 happy_var_3))
	) (\r -> happyReturn (HappyAbsSyn11 r))

happyReduce_37 = happyMonadReduce 3 11 happyReduction_37
happyReduction_37 ((HappyAbsSyn9  happy_var_3) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn9  happy_var_1) `HappyStk`
	happyRest) tk
	 = happyThen ((( equ happy_var_1 happy_var_3))
	) (\r -> happyReturn (HappyAbsSyn11 r))

happyReduce_38 = happyMonadReduce 3 11 happyReduction_38
happyReduction_38 ((HappyAbsSyn9  happy_var_3) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn9  happy_var_1) `HappyStk`
	happyRest) tk
	 = happyThen ((( diff happy_var_1 happy_var_3))
	) (\r -> happyReturn (HappyAbsSyn11 r))

happyReduce_39 = happyMonadReduce 3 11 happyReduction_39
happyReduction_39 ((HappyAbsSyn9  happy_var_3) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn9  happy_var_1) `HappyStk`
	happyRest) tk
	 = happyThen ((( and_ happy_var_1 happy_var_3))
	) (\r -> happyReturn (HappyAbsSyn11 r))

happyReduce_40 = happyMonadReduce 3 11 happyReduction_40
happyReduction_40 ((HappyAbsSyn9  happy_var_3) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn9  happy_var_1) `HappyStk`
	happyRest) tk
	 = happyThen ((( or_ happy_var_1 happy_var_3))
	) (\r -> happyReturn (HappyAbsSyn11 r))

happyReduce_41 = happyMonadReduce 2 11 happyReduction_41
happyReduction_41 ((HappyAbsSyn9  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest) tk
	 = happyThen ((( not_ happy_var_2))
	) (\r -> happyReturn (HappyAbsSyn11 r))

happyReduce_42 = happySpecReduce_3  12 happyReduction_42
happyReduction_42 (HappyTerminal (TK _ (VAR happy_var_3)))
	_
	(HappyAbsSyn13  happy_var_1)
	 =  HappyAbsSyn12
		 (happy_var_1 ++ happy_var_3 ++ "\tDS\t1\n"
	)
happyReduction_42 _ _ _  = notHappyAtAll 

happyReduce_43 = happySpecReduce_3  12 happyReduction_43
happyReduction_43 (HappyTerminal (TK _ (VAR happy_var_3)))
	_
	(HappyAbsSyn12  happy_var_1)
	 =  HappyAbsSyn12
		 (happy_var_1 ++ happy_var_3 ++ "\tDS\t1\n"
	)
happyReduction_43 _ _ _  = notHappyAtAll 

happyReduce_44 = happySpecReduce_2  13 happyReduction_44
happyReduction_44 (HappyTerminal (TK _ (VAR happy_var_2)))
	_
	 =  HappyAbsSyn13
		 (happy_var_2 ++ "\tDS\t1\n"
	)
happyReduction_44 _ _  = notHappyAtAll 

happyReduce_45 = happySpecReduce_3  14 happyReduction_45
happyReduction_45 (HappyAbsSyn9  happy_var_3)
	_
	(HappyTerminal (TK _ (VAR happy_var_1)))
	 =  HappyAbsSyn14
		 ("\tPUSH\t" ++ happy_var_1 ++ "\n" ++ happy_var_3 ++ "\tSTORE\n"
	)
happyReduction_45 _ _ _  = notHappyAtAll 

happyReduce_46 = happyReduce 4 15 happyReduction_46
happyReduction_46 ((HappyAbsSyn9  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TK _ (VAR happy_var_2))) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn15
		 (happy_var_2 ++ "\tDS\t1\n\tPUSH\t" ++ happy_var_2 ++ "\n" ++ happy_var_4 ++ "\tSTORE\n"
	) `HappyStk` happyRest

happyReduce_47 = happyReduce 5 16 happyReduction_47
happyReduction_47 (_ `HappyStk`
	(HappyTerminal (TK _ (INT happy_var_4))) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TK _ (VAR happy_var_2))) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn16
		 (happy_var_2 ++ "\tDS\t" ++ (show happy_var_4) ++ "\n"
	) `HappyStk` happyRest

happyReduce_48 = happyMonadReduce 7 17 happyReduction_48
happyReduction_48 (_ `HappyStk`
	(HappyAbsSyn5  happy_var_6) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn5  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn9  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest) tk
	 = happyThen ((( cond_bez happy_var_2 happy_var_4 happy_var_6))
	) (\r -> happyReturn (HappyAbsSyn17 r))

happyReduce_49 = happyMonadReduce 5 18 happyReduction_49
happyReduction_49 (_ `HappyStk`
	(HappyAbsSyn5  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn9  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest) tk
	 = happyThen ((( while_do happy_var_2 happy_var_4))
	) (\r -> happyReturn (HappyAbsSyn18 r))

happyReduce_50 = happySpecReduce_0  19 happyReduction_50
happyReduction_50  =  HappyAbsSyn19
		 ([]
	)

happyReduce_51 = happySpecReduce_1  19 happyReduction_51
happyReduction_51 (HappyTerminal (TK _ (VAR happy_var_1)))
	 =  HappyAbsSyn19
		 ([happy_var_1]
	)
happyReduction_51 _  = notHappyAtAll 

happyReduce_52 = happySpecReduce_3  19 happyReduction_52
happyReduction_52 (HappyTerminal (TK _ (VAR happy_var_3)))
	_
	(HappyAbsSyn19  happy_var_1)
	 =  HappyAbsSyn19
		 (happy_var_3 : happy_var_1
	)
happyReduction_52 _ _ _  = notHappyAtAll 

happyReduce_53 = happySpecReduce_0  20 happyReduction_53
happyReduction_53  =  HappyAbsSyn20
		 (""
	)

happyReduce_54 = happySpecReduce_1  20 happyReduction_54
happyReduction_54 (HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn20
		 (happy_var_1
	)
happyReduction_54 _  = notHappyAtAll 

happyReduce_55 = happyMonadReduce 8 21 happyReduction_55
happyReduction_55 ((HappyAbsSyn9  happy_var_8) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn20  happy_var_6) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn19  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TK _ (VAR happy_var_2))) `HappyStk`
	_ `HappyStk`
	happyRest) tk
	 = happyThen ((( func_def happy_var_2 happy_var_4 happy_var_6 happy_var_8))
	) (\r -> happyReturn (HappyAbsSyn21 r))

happyReduce_56 = happySpecReduce_3  22 happyReduction_56
happyReduction_56 (HappyAbsSyn9  happy_var_3)
	_
	(HappyTerminal (TK _ (VAR happy_var_1)))
	 =  HappyAbsSyn22
		 ([happy_var_1, happy_var_3]
	)
happyReduction_56 _ _ _  = notHappyAtAll 

happyReduce_57 = happySpecReduce_0  23 happyReduction_57
happyReduction_57  =  HappyAbsSyn23
		 ([]
	)

happyReduce_58 = happySpecReduce_1  23 happyReduction_58
happyReduction_58 (HappyAbsSyn22  happy_var_1)
	 =  HappyAbsSyn23
		 ([happy_var_1]
	)
happyReduction_58 _  = notHappyAtAll 

happyReduce_59 = happySpecReduce_3  23 happyReduction_59
happyReduction_59 (HappyAbsSyn22  happy_var_3)
	_
	(HappyAbsSyn23  happy_var_1)
	 =  HappyAbsSyn23
		 (happy_var_3 : happy_var_1
	)
happyReduction_59 _ _ _  = notHappyAtAll 

happyReduce_60 = happyMonadReduce 4 24 happyReduction_60
happyReduction_60 (_ `HappyStk`
	(HappyAbsSyn23  happy_var_3) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TK _ (VAR happy_var_1))) `HappyStk`
	happyRest) tk
	 = happyThen ((( func_call happy_var_1 happy_var_3))
	) (\r -> happyReturn (HappyAbsSyn24 r))

happyNewToken action sts stk [] =
	action 64 64 notHappyAtAll (HappyState action) sts stk []

happyNewToken action sts stk (tk:tks) =
	let cont i = action i i tk (HappyState action) sts stk tks in
	case tk of {
	TK _ PRINT -> cont 25;
	TK _ SEP -> cont 26;
	TK _ (INT happy_dollar_dollar) -> cont 27;
	TK _ PLUS -> cont 28;
	TK _ MINUS -> cont 29;
	TK _ MUL -> cont 30;
	TK _ DIV -> cont 31;
	TK _ LPAR -> cont 32;
	TK _ RPAR -> cont 33;
	TK _ LBRA -> cont 34;
	TK _ RBRA -> cont 35;
	TK _ COMMA -> cont 36;
	TK _ GREATER -> cont 37;
	TK _ GREATER_EQU -> cont 38;
	TK _ LESS -> cont 39;
	TK _ LESS_EQU -> cont 40;
	TK _ EQU -> cont 41;
	TK _ DIFF -> cont 42;
	TK _ AND -> cont 43;
	TK _ OR -> cont 44;
	TK _ NOT -> cont 45;
	TK _ SLC -> cont 46;
	TK _ MLC -> cont 47;
	TK _ TRUE -> cont 48;
	TK _ FALSE -> cont 49;
	TK _ LET -> cont 50;
	TK _ ASSIGN -> cont 51;
	TK _ (VAR happy_dollar_dollar) -> cont 52;
	TK _ INPUT -> cont 53;
	TK _ IF -> cont 54;
	TK _ THEN -> cont 55;
	TK _ ELSE -> cont 56;
	TK _ ENDIF -> cont 57;
	TK _ WHILE -> cont 58;
	TK _ DO -> cont 59;
	TK _ ENDWHILE -> cont 60;
	TK _ DEF -> cont 61;
	TK _ RETURN -> cont 62;
	TK _ EXIT -> cont 63;
	_ -> happyError' ((tk:tks), [])
	}

happyError_ explist 64 tk tks = happyError' (tks, explist)
happyError_ explist _ tk tks = happyError' ((tk:tks), explist)

happyThen :: () => ParseResult a -> (a -> ParseResult b) -> ParseResult b
happyThen = (>>=)
happyReturn :: () => a -> ParseResult a
happyReturn = (return)
happyThen1 m k tks = (>>=) m (\a -> k a tks)
happyReturn1 :: () => a -> b -> ParseResult a
happyReturn1 = \a tks -> (return) a
happyError' :: () => ([(Token)], [String]) -> ParseResult a
happyError' = (\(tokens, _) -> parseError tokens)
parse tks = happySomeParser where
 happySomeParser = happyThen (happyParse action_0 tks) (\x -> case x of {HappyAbsSyn4 z -> happyReturn z; _other -> notHappyAtAll })

happySeq = happyDontSeq


data Etat = Etat {counter :: Integer} deriving (Eq, Show)

type ParseResult a = State Etat a

arith_ops :: String -> String -> String -> ParseResult String
arith_ops lop operator rop = do
        return (lop ++ rop ++ "\t" ++ operator ++ "\n")

add :: String -> String -> ParseResult String
add lop rop = do
        s <- arith_ops lop "ADD" rop
        return (s)

substract :: String -> String -> ParseResult String
substract lop rop = do
        s <- arith_ops lop "SUB" rop
        return (s)

multiply :: String -> String -> ParseResult String
multiply lop rop = do
        s <- arith_ops lop "MUL" rop 
        return (s)

divide :: String -> String -> ParseResult String
divide lop rop = do
        s <- arith_ops lop "DIV" rop
        return (s)

greater_than :: String -> String -> ParseResult String
greater_than op1 op2 = do
        s0 <- substract op1 op2
        s1 <- cond_bgz s0 "\tPUSH\t1\n" "\tPUSH\t0\n"
        return (s1) 

greater_equ_than :: String -> String -> ParseResult String
greater_equ_than op1 op2 = do
        s0 <- less_than op1 op2
        s1 <- cond_bgz s0 "\tPUSH\t0\n" "\tPUSH\t1\n"
        return s1

less_than :: String -> String -> ParseResult String
less_than op1 op2 = do
        s0 <- substract op2 op1
        s1 <- cond_bgz s0 "\tPUSH\t1\n" "\tPUSH\t0\n"
        return (s1) 

less_equ_than :: String -> String -> ParseResult String
less_equ_than op1 op2 = do
        s0 <- greater_than op1 op2
        s1 <- cond_bgz s0 "\tPUSH\t0\n" "\tPUSH\t1\n"
        return s1

equ :: String -> String -> ParseResult String
equ op1 op2 = do
        s0 <- substract op1 op2
        s1 <- cond_bez s0 "\tPUSH\t0\n" "\tPUSH\t1\n"
        return s1

diff :: String -> String -> ParseResult String
diff op1 op2 = do
        s0 <- equ op1 op2
        s1 <- cond_bgz s0 "\tPUSH\t0\n" "\tPUSH\t1\n"
        return s1

and_ :: String -> String -> ParseResult String
and_ op1 op2 = do
        s0 <- multiply op1 op2
        return s0

or_ :: String -> String -> ParseResult String
or_ op1 op2 = do
        s0 <- add op1 op2
        return s0

not_ :: String -> ParseResult String
not_ op1 = do
        s0 <- cond_bgz op1 "\tPUSH\t0\n" "\tPUSH\t1\n"
        return s0

func_def :: String -> [String] -> String -> String -> ParseResult String
func_def func_name func_args func_body func_return_value = do
        let func_return_name = func_name ++ "_value"
        let func_args_defined = concat (map (\x -> x ++ "\tDS\t1\n") func_args)
        return (func_return_name ++ "\tDS\t1\n"
                ++ func_args_defined
                ++ func_name ++ "\tEQU\t*\n" 
                ++ func_body
                ++ "\tPUSH\t" ++ func_return_name ++ "\n" ++ func_return_value ++ "\tSTORE\n"
                ++ "\tGOTO\n")

func_call :: String -> [[String]]-> ParseResult String
func_call func_name func_pars= do
        s <- get
        let return_label = func_name ++ show (counter s) ++ "_return"
        let s' = incrCounter s
        put s'
        let func_return_name = func_name ++ "_value"

        let common_response = "\tPUSH\t" ++ return_label ++ "\n"
                        ++ "\tPUSH\t" ++ func_name ++ "\n"
                        ++ "\tGOTO\n"
                        ++ return_label ++ "\tEQU\t*\n"
                        ++ "\tPUSH\t" ++ func_return_name ++ "\n\tLOAD\n"
        if null func_pars
                then do
                        return (common_response)
                else do 
                        let func_pars_assigned = concat (map (\x -> "\tPUSH\t" ++ x !! 0 ++ "\n" ++ x !! 1 ++ "\tSTORE\n") func_pars)       
                        return (func_pars_assigned ++ common_response)
        

cond_bez :: String -> String -> String -> ParseResult String
cond_bez cond_expr then_expr else_expr = do
        s <- get
        let prefix = "cond_bez_" ++ show (counter s) ++ "_"
        let s' = incrCounter s
        put s'
        
        let else_label = prefix ++ "else"
        let fin_label = prefix ++ "fin"

        return( cond_expr 
                ++ "\tBEZ\t" ++ else_label ++ "\n"  
                ++ then_expr
                ++ "\tPUSH\t" ++ fin_label ++ "\n"
                ++ "\tGOTO\n"
                ++ else_label ++ "\tEQU\t*\n"
                ++ else_expr
                ++ fin_label ++ "\tEQU\t*\n")

cond_bgz :: String -> String -> String -> ParseResult String
cond_bgz cond_expr then_expr else_expr = do
        s <- get
        let prefix = "cond_bgz_" ++ show (counter s) ++ "_"
        let s' = incrCounter s
        put s'
        
        let then_label = prefix ++ "then"
        let fin_label = prefix ++ "fin"

        return( cond_expr 
                ++ "\tBGZ\t" ++ then_label ++ "\n"  
                ++ else_expr
                ++ "\tPUSH\t" ++ fin_label ++ "\n"
                ++ "\tGOTO\n"
                ++ then_label ++ "\tEQU\t*\n"
                ++ then_expr
                ++ fin_label ++ "\tEQU\t*\n")


while_do :: String -> String -> ParseResult String
while_do cond_expr do_expr = do
        s <- get
        let prefix = "while_do_" ++ show (counter s) ++ "_"
        let debut_label = prefix ++ "debut"
        let fin_label = prefix ++ "fin"
        let s' = incrCounter s
        put s'

        return( debut_label ++ "\tEQU\t*\n"
                ++ cond_expr 
                ++ "\tBEZ\t" ++ fin_label ++ "\n"  
                ++ do_expr
                ++ "\tPUSH\t" ++ debut_label ++ "\n"
                ++ "\tGOTO\n"
                ++ "\tPUSH\t" ++ fin_label ++ "\n"
                ++ "\tGOTO\n"
                ++ fin_label ++ "\tEQU\t*\n")

incrCounter :: Etat -> Etat
incrCounter s = Etat {counter = (counter s) + 1}

initEtat :: Etat
initEtat = Etat 42

parseProgram :: String -> ParseResult String
parseProgram = parse . scanTokens

parseError :: [Token] -> ParseResult a
parseError [] = error "Parse error at the end of input"
parseError (h:_) = let p = getAPosn h in error $ "Parse error at line " ++ getALine p ++ ", column " ++ getACol p ++ ", on token " ++ show h
{-# LINE 1 "templates/GenericTemplate.hs" #-}
-- $Id: GenericTemplate.hs,v 1.26 2005/01/14 14:47:22 simonmar Exp $










































data Happy_IntList = HappyCons Int Happy_IntList








































infixr 9 `HappyStk`
data HappyStk a = HappyStk a (HappyStk a)

-----------------------------------------------------------------------------
-- starting the parse

happyParse start_state = happyNewToken start_state notHappyAtAll notHappyAtAll

-----------------------------------------------------------------------------
-- Accepting the parse

-- If the current token is ERROR_TOK, it means we've just accepted a partial
-- parse (a %partial parser).  We must ignore the saved token on the top of
-- the stack in this case.
happyAccept (1) tk st sts (_ `HappyStk` ans `HappyStk` _) =
        happyReturn1 ans
happyAccept j tk st sts (HappyStk ans _) = 
         (happyReturn1 ans)

-----------------------------------------------------------------------------
-- Arrays only: do the next action









































indexShortOffAddr arr off = arr Happy_Data_Array.! off


{-# INLINE happyLt #-}
happyLt x y = (x < y)






readArrayBit arr bit =
    Bits.testBit (indexShortOffAddr arr (bit `div` 16)) (bit `mod` 16)






-----------------------------------------------------------------------------
-- HappyState data type (not arrays)



newtype HappyState b c = HappyState
        (Int ->                    -- token number
         Int ->                    -- token number (yes, again)
         b ->                           -- token semantic value
         HappyState b c ->              -- current state
         [HappyState b c] ->            -- state stack
         c)



-----------------------------------------------------------------------------
-- Shifting a token

happyShift new_state (1) tk st sts stk@(x `HappyStk` _) =
     let i = (case x of { HappyErrorToken (i) -> i }) in
--     trace "shifting the error token" $
     new_state i i tk (HappyState (new_state)) ((st):(sts)) (stk)

happyShift new_state i tk st sts stk =
     happyNewToken new_state ((st):(sts)) ((HappyTerminal (tk))`HappyStk`stk)

-- happyReduce is specialised for the common cases.

happySpecReduce_0 i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happySpecReduce_0 nt fn j tk st@((HappyState (action))) sts stk
     = action nt j tk st ((st):(sts)) (fn `HappyStk` stk)

happySpecReduce_1 i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happySpecReduce_1 nt fn j tk _ sts@(((st@(HappyState (action))):(_))) (v1`HappyStk`stk')
     = let r = fn v1 in
       happySeq r (action nt j tk st sts (r `HappyStk` stk'))

happySpecReduce_2 i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happySpecReduce_2 nt fn j tk _ ((_):(sts@(((st@(HappyState (action))):(_))))) (v1`HappyStk`v2`HappyStk`stk')
     = let r = fn v1 v2 in
       happySeq r (action nt j tk st sts (r `HappyStk` stk'))

happySpecReduce_3 i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happySpecReduce_3 nt fn j tk _ ((_):(((_):(sts@(((st@(HappyState (action))):(_))))))) (v1`HappyStk`v2`HappyStk`v3`HappyStk`stk')
     = let r = fn v1 v2 v3 in
       happySeq r (action nt j tk st sts (r `HappyStk` stk'))

happyReduce k i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happyReduce k nt fn j tk st sts stk
     = case happyDrop (k - ((1) :: Int)) sts of
         sts1@(((st1@(HappyState (action))):(_))) ->
                let r = fn stk in  -- it doesn't hurt to always seq here...
                happyDoSeq r (action nt j tk st1 sts1 r)

happyMonadReduce k nt fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happyMonadReduce k nt fn j tk st sts stk =
      case happyDrop k ((st):(sts)) of
        sts1@(((st1@(HappyState (action))):(_))) ->
          let drop_stk = happyDropStk k stk in
          happyThen1 (fn stk tk) (\r -> action nt j tk st1 sts1 (r `HappyStk` drop_stk))

happyMonad2Reduce k nt fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happyMonad2Reduce k nt fn j tk st sts stk =
      case happyDrop k ((st):(sts)) of
        sts1@(((st1@(HappyState (action))):(_))) ->
         let drop_stk = happyDropStk k stk





             _ = nt :: Int
             new_state = action

          in
          happyThen1 (fn stk tk) (\r -> happyNewToken new_state sts1 (r `HappyStk` drop_stk))

happyDrop (0) l = l
happyDrop n ((_):(t)) = happyDrop (n - ((1) :: Int)) t

happyDropStk (0) l = l
happyDropStk n (x `HappyStk` xs) = happyDropStk (n - ((1)::Int)) xs

-----------------------------------------------------------------------------
-- Moving to a new state after a reduction









happyGoto action j tk st = action j j tk (HappyState action)


-----------------------------------------------------------------------------
-- Error recovery (ERROR_TOK is the error token)

-- parse error if we are in recovery and we fail again
happyFail explist (1) tk old_st _ stk@(x `HappyStk` _) =
     let i = (case x of { HappyErrorToken (i) -> i }) in
--      trace "failing" $ 
        happyError_ explist i tk

{-  We don't need state discarding for our restricted implementation of
    "error".  In fact, it can cause some bogus parses, so I've disabled it
    for now --SDM

-- discard a state
happyFail  ERROR_TOK tk old_st CONS(HAPPYSTATE(action),sts) 
                                                (saved_tok `HappyStk` _ `HappyStk` stk) =
--      trace ("discarding state, depth " ++ show (length stk))  $
        DO_ACTION(action,ERROR_TOK,tk,sts,(saved_tok`HappyStk`stk))
-}

-- Enter error recovery: generate an error token,
--                       save the old token and carry on.
happyFail explist i tk (HappyState (action)) sts stk =
--      trace "entering error recovery" $
        action (1) (1) tk (HappyState (action)) sts ((HappyErrorToken (i)) `HappyStk` stk)

-- Internal happy errors:

notHappyAtAll :: a
notHappyAtAll = error "Internal Happy error\n"

-----------------------------------------------------------------------------
-- Hack to get the typechecker to accept our action functions







-----------------------------------------------------------------------------
-- Seq-ing.  If the --strict flag is given, then Happy emits 
--      happySeq = happyDoSeq
-- otherwise it emits
--      happySeq = happyDontSeq

happyDoSeq, happyDontSeq :: a -> b -> b
happyDoSeq   a b = a `seq` b
happyDontSeq a b = b

-----------------------------------------------------------------------------
-- Don't inline any functions from the template.  GHC has a nasty habit
-- of deciding to inline happyGoto everywhere, which increases the size of
-- the generated parser quite a bit.









{-# NOINLINE happyShift #-}
{-# NOINLINE happySpecReduce_0 #-}
{-# NOINLINE happySpecReduce_1 #-}
{-# NOINLINE happySpecReduce_2 #-}
{-# NOINLINE happySpecReduce_3 #-}
{-# NOINLINE happyReduce #-}
{-# NOINLINE happyMonadReduce #-}
{-# NOINLINE happyGoto #-}
{-# NOINLINE happyFail #-}

-- end of Happy Template.

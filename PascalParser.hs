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

data HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16 t17 t18 t19
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

happyExpList :: Happy_Data_Array.Array Int Int
happyExpList = Happy_Data_Array.listArray (0,426) ([0,1080,57216,145,57344,16,18302,2,17280,63488,2333,0,0,0,0,4096,0,0,0,3904,510,0,0,0,0,0,0,0,0,0,16400,0,0,16384,256,0,0,256,0,0,0,4,0,0,4096,0,0,0,64,0,0,0,1,0,0,1024,0,0,0,16,0,0,32768,16,818,0,0,0,0,0,0,0,0,8192,32772,204,0,4224,12800,3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,4,0,256,2048,0,0,0,0,0,4224,12800,3,0,66,3272,0,0,0,16,0,0,0,0,0,16,0,0,15360,2040,512,0,0,0,0,49152,32643,512,0,8192,0,0,0,66,3272,0,0,4,8,0,0,0,0,0,65071,1,0,15360,2040,0,0,0,0,0,0,4,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,16,0,0,0,0,32768,16,818,0,16896,51200,12,0,264,13088,0,8192,32772,204,0,4224,12800,3,0,66,3272,0,2048,8193,51,0,1056,52352,0,32768,16,818,0,16896,51200,12,0,264,13088,0,8192,32772,204,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,12,0,0,12288,0,0,0,0,0,0,0,0,0,0,0,0,0,0,2,0,0,2048,8193,51,0,33728,127,0,0,0,0,0,17280,63488,2333,0,270,30688,36,0,8,0,0,4320,32256,583,32768,67,7672,13,3584,57345,9591,0,33728,127,0,0,128,0,0,0,0,0,0,270,30688,36,0,0,0,0,4320,32256,1607,0,0,0,0,3584,57345,9847,0,0,0,0,0
	])

{-# NOINLINE happyExpListPerState #-}
happyExpListPerState st =
    token_strs_expected
  where token_strs = ["error","%dummy","%start_parse","Program","Linst","Inst","Print","Expr","ExprNum","ExprBool","Ldef_scalaire","Def_scalaire","Assign_scalaire","Def_Assign_scalaire","Def_array","If","While","FuncDef","FuncCall","print","';'","integer","'+'","'-'","'*'","'/'","'('","')'","'['","']'","','","'>'","'>='","'<'","'<='","'=='","'!='","'&&'","'||'","'!'","'SLC'","'MLC'","True","False","let","'='","var","input","if","then","else","endif","while","do","endwhile","def","fed","%eof"]
        bit_start = st * 58
        bit_end = (st + 1) * 58
        read_bit = readArrayBit happyExpList
        bits = map read_bit [bit_start..bit_end - 1]
        bits_indexed = zip bits [0..57]
        token_strs_expected = concatMap f bits_indexed
        f (False, _) = []
        f (True, nr) = [token_strs !! nr]

action_0 (20) = happyShift action_17
action_0 (21) = happyShift action_18
action_0 (22) = happyShift action_19
action_0 (27) = happyShift action_20
action_0 (40) = happyShift action_21
action_0 (41) = happyShift action_22
action_0 (42) = happyShift action_23
action_0 (43) = happyShift action_24
action_0 (44) = happyShift action_25
action_0 (45) = happyShift action_26
action_0 (47) = happyShift action_27
action_0 (48) = happyShift action_28
action_0 (49) = happyShift action_29
action_0 (53) = happyShift action_30
action_0 (56) = happyShift action_31
action_0 (4) = happyGoto action_32
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
action_0 (19) = happyGoto action_16
action_0 _ = happyFail (happyExpListPerState 0)

action_1 (20) = happyShift action_17
action_1 (21) = happyShift action_18
action_1 (22) = happyShift action_19
action_1 (27) = happyShift action_20
action_1 (40) = happyShift action_21
action_1 (41) = happyShift action_22
action_1 (42) = happyShift action_23
action_1 (43) = happyShift action_24
action_1 (44) = happyShift action_25
action_1 (45) = happyShift action_26
action_1 (47) = happyShift action_27
action_1 (48) = happyShift action_28
action_1 (49) = happyShift action_29
action_1 (53) = happyShift action_30
action_1 (56) = happyShift action_31
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
action_1 (19) = happyGoto action_16
action_1 _ = happyFail (happyExpListPerState 1)

action_2 (20) = happyShift action_17
action_2 (21) = happyShift action_18
action_2 (22) = happyShift action_19
action_2 (27) = happyShift action_20
action_2 (40) = happyShift action_21
action_2 (41) = happyShift action_22
action_2 (42) = happyShift action_23
action_2 (43) = happyShift action_24
action_2 (44) = happyShift action_25
action_2 (45) = happyShift action_26
action_2 (47) = happyShift action_27
action_2 (48) = happyShift action_28
action_2 (49) = happyShift action_29
action_2 (53) = happyShift action_30
action_2 (56) = happyShift action_31
action_2 (6) = happyGoto action_70
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
action_2 (19) = happyGoto action_16
action_2 _ = happyReduce_1

action_3 _ = happyReduce_2

action_4 (21) = happyShift action_69
action_4 _ = happyFail (happyExpListPerState 4)

action_5 (21) = happyShift action_56
action_5 (23) = happyShift action_57
action_5 (24) = happyShift action_58
action_5 (25) = happyShift action_59
action_5 (26) = happyShift action_60
action_5 (32) = happyShift action_61
action_5 (33) = happyShift action_62
action_5 (34) = happyShift action_63
action_5 (35) = happyShift action_64
action_5 (36) = happyShift action_65
action_5 (37) = happyShift action_66
action_5 (38) = happyShift action_67
action_5 (39) = happyShift action_68
action_5 _ = happyFail (happyExpListPerState 5)

action_6 _ = happyReduce_20

action_7 _ = happyReduce_21

action_8 (21) = happyShift action_54
action_8 (31) = happyShift action_55
action_8 _ = happyFail (happyExpListPerState 8)

action_9 (21) = happyShift action_52
action_9 (31) = happyShift action_53
action_9 _ = happyFail (happyExpListPerState 9)

action_10 (21) = happyShift action_51
action_10 _ = happyFail (happyExpListPerState 10)

action_11 (21) = happyShift action_50
action_11 _ = happyFail (happyExpListPerState 11)

action_12 (21) = happyShift action_49
action_12 _ = happyFail (happyExpListPerState 12)

action_13 (21) = happyShift action_48
action_13 _ = happyFail (happyExpListPerState 13)

action_14 (21) = happyShift action_47
action_14 _ = happyFail (happyExpListPerState 14)

action_15 (21) = happyShift action_46
action_15 _ = happyFail (happyExpListPerState 15)

action_16 (21) = happyShift action_45
action_16 _ = happyFail (happyExpListPerState 16)

action_17 (22) = happyShift action_19
action_17 (27) = happyShift action_20
action_17 (40) = happyShift action_21
action_17 (43) = happyShift action_24
action_17 (44) = happyShift action_25
action_17 (47) = happyShift action_44
action_17 (48) = happyShift action_28
action_17 (8) = happyGoto action_42
action_17 (9) = happyGoto action_6
action_17 (10) = happyGoto action_7
action_17 (19) = happyGoto action_43
action_17 _ = happyFail (happyExpListPerState 17)

action_18 _ = happyReduce_4

action_19 _ = happyReduce_25

action_20 (22) = happyShift action_19
action_20 (27) = happyShift action_20
action_20 (40) = happyShift action_21
action_20 (43) = happyShift action_24
action_20 (44) = happyShift action_25
action_20 (47) = happyShift action_35
action_20 (48) = happyShift action_28
action_20 (8) = happyGoto action_41
action_20 (9) = happyGoto action_6
action_20 (10) = happyGoto action_7
action_20 _ = happyFail (happyExpListPerState 20)

action_21 (22) = happyShift action_19
action_21 (27) = happyShift action_20
action_21 (40) = happyShift action_21
action_21 (43) = happyShift action_24
action_21 (44) = happyShift action_25
action_21 (47) = happyShift action_35
action_21 (48) = happyShift action_28
action_21 (8) = happyGoto action_40
action_21 (9) = happyGoto action_6
action_21 (10) = happyGoto action_7
action_21 _ = happyFail (happyExpListPerState 21)

action_22 _ = happyReduce_5

action_23 _ = happyReduce_6

action_24 _ = happyReduce_30

action_25 _ = happyReduce_31

action_26 (47) = happyShift action_39
action_26 _ = happyFail (happyExpListPerState 26)

action_27 (27) = happyShift action_37
action_27 (46) = happyShift action_38
action_27 _ = happyReduce_22

action_28 _ = happyReduce_24

action_29 (22) = happyShift action_19
action_29 (27) = happyShift action_20
action_29 (40) = happyShift action_21
action_29 (43) = happyShift action_24
action_29 (44) = happyShift action_25
action_29 (47) = happyShift action_35
action_29 (48) = happyShift action_28
action_29 (8) = happyGoto action_36
action_29 (9) = happyGoto action_6
action_29 (10) = happyGoto action_7
action_29 _ = happyFail (happyExpListPerState 29)

action_30 (22) = happyShift action_19
action_30 (27) = happyShift action_20
action_30 (40) = happyShift action_21
action_30 (43) = happyShift action_24
action_30 (44) = happyShift action_25
action_30 (47) = happyShift action_35
action_30 (48) = happyShift action_28
action_30 (8) = happyGoto action_34
action_30 (9) = happyGoto action_6
action_30 (10) = happyGoto action_7
action_30 _ = happyFail (happyExpListPerState 30)

action_31 (47) = happyShift action_33
action_31 _ = happyFail (happyExpListPerState 31)

action_32 (58) = happyAccept
action_32 _ = happyFail (happyExpListPerState 32)

action_33 (27) = happyShift action_92
action_33 _ = happyFail (happyExpListPerState 33)

action_34 (23) = happyShift action_57
action_34 (24) = happyShift action_58
action_34 (25) = happyShift action_59
action_34 (26) = happyShift action_60
action_34 (32) = happyShift action_61
action_34 (33) = happyShift action_62
action_34 (34) = happyShift action_63
action_34 (35) = happyShift action_64
action_34 (36) = happyShift action_65
action_34 (37) = happyShift action_66
action_34 (38) = happyShift action_67
action_34 (39) = happyShift action_68
action_34 (54) = happyShift action_91
action_34 _ = happyFail (happyExpListPerState 34)

action_35 _ = happyReduce_22

action_36 (23) = happyShift action_57
action_36 (24) = happyShift action_58
action_36 (25) = happyShift action_59
action_36 (26) = happyShift action_60
action_36 (32) = happyShift action_61
action_36 (33) = happyShift action_62
action_36 (34) = happyShift action_63
action_36 (35) = happyShift action_64
action_36 (36) = happyShift action_65
action_36 (37) = happyShift action_66
action_36 (38) = happyShift action_67
action_36 (39) = happyShift action_68
action_36 (50) = happyShift action_90
action_36 _ = happyFail (happyExpListPerState 36)

action_37 (28) = happyShift action_89
action_37 _ = happyFail (happyExpListPerState 37)

action_38 (22) = happyShift action_19
action_38 (27) = happyShift action_20
action_38 (40) = happyShift action_21
action_38 (43) = happyShift action_24
action_38 (44) = happyShift action_25
action_38 (47) = happyShift action_35
action_38 (48) = happyShift action_28
action_38 (8) = happyGoto action_88
action_38 (9) = happyGoto action_6
action_38 (10) = happyGoto action_7
action_38 _ = happyFail (happyExpListPerState 38)

action_39 (29) = happyShift action_86
action_39 (46) = happyShift action_87
action_39 _ = happyReduce_43

action_40 (23) = happyShift action_57
action_40 (24) = happyShift action_58
action_40 (25) = happyShift action_59
action_40 (26) = happyShift action_60
action_40 (32) = happyShift action_61
action_40 (33) = happyShift action_62
action_40 (34) = happyShift action_63
action_40 (35) = happyShift action_64
action_40 (36) = happyShift action_65
action_40 (37) = happyShift action_66
action_40 (38) = happyShift action_67
action_40 (39) = happyShift action_68
action_40 _ = happyReduce_40

action_41 (23) = happyShift action_57
action_41 (24) = happyShift action_58
action_41 (25) = happyShift action_59
action_41 (26) = happyShift action_60
action_41 (28) = happyShift action_85
action_41 (32) = happyShift action_61
action_41 (33) = happyShift action_62
action_41 (34) = happyShift action_63
action_41 (35) = happyShift action_64
action_41 (36) = happyShift action_65
action_41 (37) = happyShift action_66
action_41 (38) = happyShift action_67
action_41 (39) = happyShift action_68
action_41 _ = happyFail (happyExpListPerState 41)

action_42 (23) = happyShift action_57
action_42 (24) = happyShift action_58
action_42 (25) = happyShift action_59
action_42 (26) = happyShift action_60
action_42 (32) = happyShift action_61
action_42 (33) = happyShift action_62
action_42 (34) = happyShift action_63
action_42 (35) = happyShift action_64
action_42 (36) = happyShift action_65
action_42 (37) = happyShift action_66
action_42 (38) = happyShift action_67
action_42 (39) = happyShift action_68
action_42 _ = happyReduce_18

action_43 _ = happyReduce_19

action_44 (27) = happyShift action_37
action_44 _ = happyReduce_22

action_45 _ = happyReduce_17

action_46 _ = happyReduce_16

action_47 _ = happyReduce_14

action_48 _ = happyReduce_13

action_49 _ = happyReduce_12

action_50 _ = happyReduce_11

action_51 _ = happyReduce_10

action_52 _ = happyReduce_9

action_53 (47) = happyShift action_84
action_53 _ = happyFail (happyExpListPerState 53)

action_54 _ = happyReduce_15

action_55 (47) = happyShift action_83
action_55 _ = happyFail (happyExpListPerState 55)

action_56 _ = happyReduce_8

action_57 (22) = happyShift action_19
action_57 (27) = happyShift action_20
action_57 (40) = happyShift action_21
action_57 (43) = happyShift action_24
action_57 (44) = happyShift action_25
action_57 (47) = happyShift action_35
action_57 (48) = happyShift action_28
action_57 (8) = happyGoto action_82
action_57 (9) = happyGoto action_6
action_57 (10) = happyGoto action_7
action_57 _ = happyFail (happyExpListPerState 57)

action_58 (22) = happyShift action_19
action_58 (27) = happyShift action_20
action_58 (40) = happyShift action_21
action_58 (43) = happyShift action_24
action_58 (44) = happyShift action_25
action_58 (47) = happyShift action_35
action_58 (48) = happyShift action_28
action_58 (8) = happyGoto action_81
action_58 (9) = happyGoto action_6
action_58 (10) = happyGoto action_7
action_58 _ = happyFail (happyExpListPerState 58)

action_59 (22) = happyShift action_19
action_59 (27) = happyShift action_20
action_59 (40) = happyShift action_21
action_59 (43) = happyShift action_24
action_59 (44) = happyShift action_25
action_59 (47) = happyShift action_35
action_59 (48) = happyShift action_28
action_59 (8) = happyGoto action_80
action_59 (9) = happyGoto action_6
action_59 (10) = happyGoto action_7
action_59 _ = happyFail (happyExpListPerState 59)

action_60 (22) = happyShift action_19
action_60 (27) = happyShift action_20
action_60 (40) = happyShift action_21
action_60 (43) = happyShift action_24
action_60 (44) = happyShift action_25
action_60 (47) = happyShift action_35
action_60 (48) = happyShift action_28
action_60 (8) = happyGoto action_79
action_60 (9) = happyGoto action_6
action_60 (10) = happyGoto action_7
action_60 _ = happyFail (happyExpListPerState 60)

action_61 (22) = happyShift action_19
action_61 (27) = happyShift action_20
action_61 (40) = happyShift action_21
action_61 (43) = happyShift action_24
action_61 (44) = happyShift action_25
action_61 (47) = happyShift action_35
action_61 (48) = happyShift action_28
action_61 (8) = happyGoto action_78
action_61 (9) = happyGoto action_6
action_61 (10) = happyGoto action_7
action_61 _ = happyFail (happyExpListPerState 61)

action_62 (22) = happyShift action_19
action_62 (27) = happyShift action_20
action_62 (40) = happyShift action_21
action_62 (43) = happyShift action_24
action_62 (44) = happyShift action_25
action_62 (47) = happyShift action_35
action_62 (48) = happyShift action_28
action_62 (8) = happyGoto action_77
action_62 (9) = happyGoto action_6
action_62 (10) = happyGoto action_7
action_62 _ = happyFail (happyExpListPerState 62)

action_63 (22) = happyShift action_19
action_63 (27) = happyShift action_20
action_63 (40) = happyShift action_21
action_63 (43) = happyShift action_24
action_63 (44) = happyShift action_25
action_63 (47) = happyShift action_35
action_63 (48) = happyShift action_28
action_63 (8) = happyGoto action_76
action_63 (9) = happyGoto action_6
action_63 (10) = happyGoto action_7
action_63 _ = happyFail (happyExpListPerState 63)

action_64 (22) = happyShift action_19
action_64 (27) = happyShift action_20
action_64 (40) = happyShift action_21
action_64 (43) = happyShift action_24
action_64 (44) = happyShift action_25
action_64 (47) = happyShift action_35
action_64 (48) = happyShift action_28
action_64 (8) = happyGoto action_75
action_64 (9) = happyGoto action_6
action_64 (10) = happyGoto action_7
action_64 _ = happyFail (happyExpListPerState 64)

action_65 (22) = happyShift action_19
action_65 (27) = happyShift action_20
action_65 (40) = happyShift action_21
action_65 (43) = happyShift action_24
action_65 (44) = happyShift action_25
action_65 (47) = happyShift action_35
action_65 (48) = happyShift action_28
action_65 (8) = happyGoto action_74
action_65 (9) = happyGoto action_6
action_65 (10) = happyGoto action_7
action_65 _ = happyFail (happyExpListPerState 65)

action_66 (22) = happyShift action_19
action_66 (27) = happyShift action_20
action_66 (40) = happyShift action_21
action_66 (43) = happyShift action_24
action_66 (44) = happyShift action_25
action_66 (47) = happyShift action_35
action_66 (48) = happyShift action_28
action_66 (8) = happyGoto action_73
action_66 (9) = happyGoto action_6
action_66 (10) = happyGoto action_7
action_66 _ = happyFail (happyExpListPerState 66)

action_67 (22) = happyShift action_19
action_67 (27) = happyShift action_20
action_67 (40) = happyShift action_21
action_67 (43) = happyShift action_24
action_67 (44) = happyShift action_25
action_67 (47) = happyShift action_35
action_67 (48) = happyShift action_28
action_67 (8) = happyGoto action_72
action_67 (9) = happyGoto action_6
action_67 (10) = happyGoto action_7
action_67 _ = happyFail (happyExpListPerState 67)

action_68 (22) = happyShift action_19
action_68 (27) = happyShift action_20
action_68 (40) = happyShift action_21
action_68 (43) = happyShift action_24
action_68 (44) = happyShift action_25
action_68 (47) = happyShift action_35
action_68 (48) = happyShift action_28
action_68 (8) = happyGoto action_71
action_68 (9) = happyGoto action_6
action_68 (10) = happyGoto action_7
action_68 _ = happyFail (happyExpListPerState 68)

action_69 _ = happyReduce_7

action_70 _ = happyReduce_3

action_71 (23) = happyShift action_57
action_71 (24) = happyShift action_58
action_71 (25) = happyShift action_59
action_71 (26) = happyShift action_60
action_71 (32) = happyShift action_61
action_71 (33) = happyShift action_62
action_71 (34) = happyShift action_63
action_71 (35) = happyShift action_64
action_71 (36) = happyShift action_65
action_71 (37) = happyShift action_66
action_71 (38) = happyShift action_67
action_71 (39) = happyShift action_68
action_71 _ = happyReduce_39

action_72 (23) = happyShift action_57
action_72 (24) = happyShift action_58
action_72 (25) = happyShift action_59
action_72 (26) = happyShift action_60
action_72 (32) = happyShift action_61
action_72 (33) = happyShift action_62
action_72 (34) = happyShift action_63
action_72 (35) = happyShift action_64
action_72 (36) = happyShift action_65
action_72 (37) = happyShift action_66
action_72 (38) = happyShift action_67
action_72 (39) = happyShift action_68
action_72 _ = happyReduce_38

action_73 (23) = happyShift action_57
action_73 (24) = happyShift action_58
action_73 (25) = happyShift action_59
action_73 (26) = happyShift action_60
action_73 (32) = happyShift action_61
action_73 (33) = happyShift action_62
action_73 (34) = happyShift action_63
action_73 (35) = happyShift action_64
action_73 (36) = happyShift action_65
action_73 (37) = happyShift action_66
action_73 (38) = happyShift action_67
action_73 (39) = happyShift action_68
action_73 _ = happyReduce_37

action_74 (23) = happyShift action_57
action_74 (24) = happyShift action_58
action_74 (25) = happyShift action_59
action_74 (26) = happyShift action_60
action_74 (32) = happyShift action_61
action_74 (33) = happyShift action_62
action_74 (34) = happyShift action_63
action_74 (35) = happyShift action_64
action_74 (36) = happyShift action_65
action_74 (37) = happyShift action_66
action_74 (38) = happyShift action_67
action_74 (39) = happyShift action_68
action_74 _ = happyReduce_36

action_75 (23) = happyShift action_57
action_75 (24) = happyShift action_58
action_75 (25) = happyShift action_59
action_75 (26) = happyShift action_60
action_75 (32) = happyShift action_61
action_75 (33) = happyShift action_62
action_75 (34) = happyShift action_63
action_75 (35) = happyShift action_64
action_75 (36) = happyShift action_65
action_75 (37) = happyShift action_66
action_75 (38) = happyShift action_67
action_75 (39) = happyShift action_68
action_75 _ = happyReduce_35

action_76 (23) = happyShift action_57
action_76 (24) = happyShift action_58
action_76 (25) = happyShift action_59
action_76 (26) = happyShift action_60
action_76 (32) = happyShift action_61
action_76 (33) = happyShift action_62
action_76 (34) = happyShift action_63
action_76 (35) = happyShift action_64
action_76 (36) = happyShift action_65
action_76 (37) = happyShift action_66
action_76 (38) = happyShift action_67
action_76 (39) = happyShift action_68
action_76 _ = happyReduce_34

action_77 (23) = happyShift action_57
action_77 (24) = happyShift action_58
action_77 (25) = happyShift action_59
action_77 (26) = happyShift action_60
action_77 (32) = happyShift action_61
action_77 (33) = happyShift action_62
action_77 (34) = happyShift action_63
action_77 (35) = happyShift action_64
action_77 (36) = happyShift action_65
action_77 (37) = happyShift action_66
action_77 (38) = happyShift action_67
action_77 (39) = happyShift action_68
action_77 _ = happyReduce_33

action_78 (23) = happyShift action_57
action_78 (24) = happyShift action_58
action_78 (25) = happyShift action_59
action_78 (26) = happyShift action_60
action_78 (32) = happyShift action_61
action_78 (33) = happyShift action_62
action_78 (34) = happyShift action_63
action_78 (35) = happyShift action_64
action_78 (36) = happyShift action_65
action_78 (37) = happyShift action_66
action_78 (38) = happyShift action_67
action_78 (39) = happyShift action_68
action_78 _ = happyReduce_32

action_79 (32) = happyShift action_61
action_79 (33) = happyShift action_62
action_79 (34) = happyShift action_63
action_79 (35) = happyShift action_64
action_79 (36) = happyShift action_65
action_79 (37) = happyShift action_66
action_79 (38) = happyShift action_67
action_79 (39) = happyShift action_68
action_79 _ = happyReduce_29

action_80 (32) = happyShift action_61
action_80 (33) = happyShift action_62
action_80 (34) = happyShift action_63
action_80 (35) = happyShift action_64
action_80 (36) = happyShift action_65
action_80 (37) = happyShift action_66
action_80 (38) = happyShift action_67
action_80 (39) = happyShift action_68
action_80 _ = happyReduce_28

action_81 (25) = happyShift action_59
action_81 (26) = happyShift action_60
action_81 (32) = happyShift action_61
action_81 (33) = happyShift action_62
action_81 (34) = happyShift action_63
action_81 (35) = happyShift action_64
action_81 (36) = happyShift action_65
action_81 (37) = happyShift action_66
action_81 (38) = happyShift action_67
action_81 (39) = happyShift action_68
action_81 _ = happyReduce_27

action_82 (25) = happyShift action_59
action_82 (26) = happyShift action_60
action_82 (32) = happyShift action_61
action_82 (33) = happyShift action_62
action_82 (34) = happyShift action_63
action_82 (35) = happyShift action_64
action_82 (36) = happyShift action_65
action_82 (37) = happyShift action_66
action_82 (38) = happyShift action_67
action_82 (39) = happyShift action_68
action_82 _ = happyReduce_26

action_83 _ = happyReduce_42

action_84 _ = happyReduce_41

action_85 _ = happyReduce_23

action_86 (22) = happyShift action_97
action_86 _ = happyFail (happyExpListPerState 86)

action_87 (22) = happyShift action_19
action_87 (27) = happyShift action_20
action_87 (40) = happyShift action_21
action_87 (43) = happyShift action_24
action_87 (44) = happyShift action_25
action_87 (47) = happyShift action_35
action_87 (48) = happyShift action_28
action_87 (8) = happyGoto action_96
action_87 (9) = happyGoto action_6
action_87 (10) = happyGoto action_7
action_87 _ = happyFail (happyExpListPerState 87)

action_88 (23) = happyShift action_57
action_88 (24) = happyShift action_58
action_88 (25) = happyShift action_59
action_88 (26) = happyShift action_60
action_88 (32) = happyShift action_61
action_88 (33) = happyShift action_62
action_88 (34) = happyShift action_63
action_88 (35) = happyShift action_64
action_88 (36) = happyShift action_65
action_88 (37) = happyShift action_66
action_88 (38) = happyShift action_67
action_88 (39) = happyShift action_68
action_88 _ = happyReduce_44

action_89 _ = happyReduce_50

action_90 (20) = happyShift action_17
action_90 (21) = happyShift action_18
action_90 (22) = happyShift action_19
action_90 (27) = happyShift action_20
action_90 (40) = happyShift action_21
action_90 (41) = happyShift action_22
action_90 (42) = happyShift action_23
action_90 (43) = happyShift action_24
action_90 (44) = happyShift action_25
action_90 (45) = happyShift action_26
action_90 (47) = happyShift action_27
action_90 (48) = happyShift action_28
action_90 (49) = happyShift action_29
action_90 (53) = happyShift action_30
action_90 (56) = happyShift action_31
action_90 (5) = happyGoto action_95
action_90 (6) = happyGoto action_3
action_90 (7) = happyGoto action_4
action_90 (8) = happyGoto action_5
action_90 (9) = happyGoto action_6
action_90 (10) = happyGoto action_7
action_90 (11) = happyGoto action_8
action_90 (12) = happyGoto action_9
action_90 (13) = happyGoto action_10
action_90 (14) = happyGoto action_11
action_90 (15) = happyGoto action_12
action_90 (16) = happyGoto action_13
action_90 (17) = happyGoto action_14
action_90 (18) = happyGoto action_15
action_90 (19) = happyGoto action_16
action_90 _ = happyFail (happyExpListPerState 90)

action_91 (20) = happyShift action_17
action_91 (21) = happyShift action_18
action_91 (22) = happyShift action_19
action_91 (27) = happyShift action_20
action_91 (40) = happyShift action_21
action_91 (41) = happyShift action_22
action_91 (42) = happyShift action_23
action_91 (43) = happyShift action_24
action_91 (44) = happyShift action_25
action_91 (45) = happyShift action_26
action_91 (47) = happyShift action_27
action_91 (48) = happyShift action_28
action_91 (49) = happyShift action_29
action_91 (53) = happyShift action_30
action_91 (56) = happyShift action_31
action_91 (5) = happyGoto action_94
action_91 (6) = happyGoto action_3
action_91 (7) = happyGoto action_4
action_91 (8) = happyGoto action_5
action_91 (9) = happyGoto action_6
action_91 (10) = happyGoto action_7
action_91 (11) = happyGoto action_8
action_91 (12) = happyGoto action_9
action_91 (13) = happyGoto action_10
action_91 (14) = happyGoto action_11
action_91 (15) = happyGoto action_12
action_91 (16) = happyGoto action_13
action_91 (17) = happyGoto action_14
action_91 (18) = happyGoto action_15
action_91 (19) = happyGoto action_16
action_91 _ = happyFail (happyExpListPerState 91)

action_92 (28) = happyShift action_93
action_92 _ = happyFail (happyExpListPerState 92)

action_93 (20) = happyShift action_17
action_93 (21) = happyShift action_18
action_93 (22) = happyShift action_19
action_93 (27) = happyShift action_20
action_93 (40) = happyShift action_21
action_93 (41) = happyShift action_22
action_93 (42) = happyShift action_23
action_93 (43) = happyShift action_24
action_93 (44) = happyShift action_25
action_93 (45) = happyShift action_26
action_93 (47) = happyShift action_27
action_93 (48) = happyShift action_28
action_93 (49) = happyShift action_29
action_93 (53) = happyShift action_30
action_93 (56) = happyShift action_31
action_93 (5) = happyGoto action_101
action_93 (6) = happyGoto action_3
action_93 (7) = happyGoto action_4
action_93 (8) = happyGoto action_5
action_93 (9) = happyGoto action_6
action_93 (10) = happyGoto action_7
action_93 (11) = happyGoto action_8
action_93 (12) = happyGoto action_9
action_93 (13) = happyGoto action_10
action_93 (14) = happyGoto action_11
action_93 (15) = happyGoto action_12
action_93 (16) = happyGoto action_13
action_93 (17) = happyGoto action_14
action_93 (18) = happyGoto action_15
action_93 (19) = happyGoto action_16
action_93 _ = happyFail (happyExpListPerState 93)

action_94 (20) = happyShift action_17
action_94 (21) = happyShift action_18
action_94 (22) = happyShift action_19
action_94 (27) = happyShift action_20
action_94 (40) = happyShift action_21
action_94 (41) = happyShift action_22
action_94 (42) = happyShift action_23
action_94 (43) = happyShift action_24
action_94 (44) = happyShift action_25
action_94 (45) = happyShift action_26
action_94 (47) = happyShift action_27
action_94 (48) = happyShift action_28
action_94 (49) = happyShift action_29
action_94 (53) = happyShift action_30
action_94 (55) = happyShift action_100
action_94 (56) = happyShift action_31
action_94 (6) = happyGoto action_70
action_94 (7) = happyGoto action_4
action_94 (8) = happyGoto action_5
action_94 (9) = happyGoto action_6
action_94 (10) = happyGoto action_7
action_94 (11) = happyGoto action_8
action_94 (12) = happyGoto action_9
action_94 (13) = happyGoto action_10
action_94 (14) = happyGoto action_11
action_94 (15) = happyGoto action_12
action_94 (16) = happyGoto action_13
action_94 (17) = happyGoto action_14
action_94 (18) = happyGoto action_15
action_94 (19) = happyGoto action_16
action_94 _ = happyFail (happyExpListPerState 94)

action_95 (20) = happyShift action_17
action_95 (21) = happyShift action_18
action_95 (22) = happyShift action_19
action_95 (27) = happyShift action_20
action_95 (40) = happyShift action_21
action_95 (41) = happyShift action_22
action_95 (42) = happyShift action_23
action_95 (43) = happyShift action_24
action_95 (44) = happyShift action_25
action_95 (45) = happyShift action_26
action_95 (47) = happyShift action_27
action_95 (48) = happyShift action_28
action_95 (49) = happyShift action_29
action_95 (51) = happyShift action_99
action_95 (53) = happyShift action_30
action_95 (56) = happyShift action_31
action_95 (6) = happyGoto action_70
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
action_95 (19) = happyGoto action_16
action_95 _ = happyFail (happyExpListPerState 95)

action_96 (23) = happyShift action_57
action_96 (24) = happyShift action_58
action_96 (25) = happyShift action_59
action_96 (26) = happyShift action_60
action_96 (32) = happyShift action_61
action_96 (33) = happyShift action_62
action_96 (34) = happyShift action_63
action_96 (35) = happyShift action_64
action_96 (36) = happyShift action_65
action_96 (37) = happyShift action_66
action_96 (38) = happyShift action_67
action_96 (39) = happyShift action_68
action_96 _ = happyReduce_45

action_97 (30) = happyShift action_98
action_97 _ = happyFail (happyExpListPerState 97)

action_98 _ = happyReduce_46

action_99 (20) = happyShift action_17
action_99 (21) = happyShift action_18
action_99 (22) = happyShift action_19
action_99 (27) = happyShift action_20
action_99 (40) = happyShift action_21
action_99 (41) = happyShift action_22
action_99 (42) = happyShift action_23
action_99 (43) = happyShift action_24
action_99 (44) = happyShift action_25
action_99 (45) = happyShift action_26
action_99 (47) = happyShift action_27
action_99 (48) = happyShift action_28
action_99 (49) = happyShift action_29
action_99 (53) = happyShift action_30
action_99 (56) = happyShift action_31
action_99 (5) = happyGoto action_103
action_99 (6) = happyGoto action_3
action_99 (7) = happyGoto action_4
action_99 (8) = happyGoto action_5
action_99 (9) = happyGoto action_6
action_99 (10) = happyGoto action_7
action_99 (11) = happyGoto action_8
action_99 (12) = happyGoto action_9
action_99 (13) = happyGoto action_10
action_99 (14) = happyGoto action_11
action_99 (15) = happyGoto action_12
action_99 (16) = happyGoto action_13
action_99 (17) = happyGoto action_14
action_99 (18) = happyGoto action_15
action_99 (19) = happyGoto action_16
action_99 _ = happyFail (happyExpListPerState 99)

action_100 _ = happyReduce_48

action_101 (20) = happyShift action_17
action_101 (21) = happyShift action_18
action_101 (22) = happyShift action_19
action_101 (27) = happyShift action_20
action_101 (40) = happyShift action_21
action_101 (41) = happyShift action_22
action_101 (42) = happyShift action_23
action_101 (43) = happyShift action_24
action_101 (44) = happyShift action_25
action_101 (45) = happyShift action_26
action_101 (47) = happyShift action_27
action_101 (48) = happyShift action_28
action_101 (49) = happyShift action_29
action_101 (53) = happyShift action_30
action_101 (56) = happyShift action_31
action_101 (57) = happyShift action_102
action_101 (6) = happyGoto action_70
action_101 (7) = happyGoto action_4
action_101 (8) = happyGoto action_5
action_101 (9) = happyGoto action_6
action_101 (10) = happyGoto action_7
action_101 (11) = happyGoto action_8
action_101 (12) = happyGoto action_9
action_101 (13) = happyGoto action_10
action_101 (14) = happyGoto action_11
action_101 (15) = happyGoto action_12
action_101 (16) = happyGoto action_13
action_101 (17) = happyGoto action_14
action_101 (18) = happyGoto action_15
action_101 (19) = happyGoto action_16
action_101 _ = happyFail (happyExpListPerState 101)

action_102 _ = happyReduce_49

action_103 (20) = happyShift action_17
action_103 (21) = happyShift action_18
action_103 (22) = happyShift action_19
action_103 (27) = happyShift action_20
action_103 (40) = happyShift action_21
action_103 (41) = happyShift action_22
action_103 (42) = happyShift action_23
action_103 (43) = happyShift action_24
action_103 (44) = happyShift action_25
action_103 (45) = happyShift action_26
action_103 (47) = happyShift action_27
action_103 (48) = happyShift action_28
action_103 (49) = happyShift action_29
action_103 (52) = happyShift action_104
action_103 (53) = happyShift action_30
action_103 (56) = happyShift action_31
action_103 (6) = happyGoto action_70
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
action_103 (19) = happyGoto action_16
action_103 _ = happyFail (happyExpListPerState 103)

action_104 _ = happyReduce_47

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
	(HappyAbsSyn7  happy_var_1)
	 =  HappyAbsSyn6
		 (happy_var_1
	)
happyReduction_7 _ _  = notHappyAtAll 

happyReduce_8 = happySpecReduce_2  6 happyReduction_8
happyReduction_8 _
	(HappyAbsSyn8  happy_var_1)
	 =  HappyAbsSyn6
		 (happy_var_1 ++ "\tLOAD\n"
	)
happyReduction_8 _ _  = notHappyAtAll 

happyReduce_9 = happySpecReduce_2  6 happyReduction_9
happyReduction_9 _
	(HappyAbsSyn12  happy_var_1)
	 =  HappyAbsSyn6
		 (happy_var_1
	)
happyReduction_9 _ _  = notHappyAtAll 

happyReduce_10 = happySpecReduce_2  6 happyReduction_10
happyReduction_10 _
	(HappyAbsSyn13  happy_var_1)
	 =  HappyAbsSyn6
		 (happy_var_1
	)
happyReduction_10 _ _  = notHappyAtAll 

happyReduce_11 = happySpecReduce_2  6 happyReduction_11
happyReduction_11 _
	(HappyAbsSyn14  happy_var_1)
	 =  HappyAbsSyn6
		 (happy_var_1
	)
happyReduction_11 _ _  = notHappyAtAll 

happyReduce_12 = happySpecReduce_2  6 happyReduction_12
happyReduction_12 _
	(HappyAbsSyn15  happy_var_1)
	 =  HappyAbsSyn6
		 (happy_var_1
	)
happyReduction_12 _ _  = notHappyAtAll 

happyReduce_13 = happySpecReduce_2  6 happyReduction_13
happyReduction_13 _
	(HappyAbsSyn16  happy_var_1)
	 =  HappyAbsSyn6
		 (happy_var_1
	)
happyReduction_13 _ _  = notHappyAtAll 

happyReduce_14 = happySpecReduce_2  6 happyReduction_14
happyReduction_14 _
	(HappyAbsSyn17  happy_var_1)
	 =  HappyAbsSyn6
		 (happy_var_1
	)
happyReduction_14 _ _  = notHappyAtAll 

happyReduce_15 = happySpecReduce_2  6 happyReduction_15
happyReduction_15 _
	(HappyAbsSyn11  happy_var_1)
	 =  HappyAbsSyn6
		 (happy_var_1
	)
happyReduction_15 _ _  = notHappyAtAll 

happyReduce_16 = happySpecReduce_2  6 happyReduction_16
happyReduction_16 _
	(HappyAbsSyn18  happy_var_1)
	 =  HappyAbsSyn6
		 (happy_var_1
	)
happyReduction_16 _ _  = notHappyAtAll 

happyReduce_17 = happySpecReduce_2  6 happyReduction_17
happyReduction_17 _
	(HappyAbsSyn19  happy_var_1)
	 =  HappyAbsSyn6
		 (happy_var_1
	)
happyReduction_17 _ _  = notHappyAtAll 

happyReduce_18 = happySpecReduce_2  7 happyReduction_18
happyReduction_18 (HappyAbsSyn8  happy_var_2)
	_
	 =  HappyAbsSyn7
		 (";/ print...\n" ++ happy_var_2 ++ "\tOUT\n"
	)
happyReduction_18 _ _  = notHappyAtAll 

happyReduce_19 = happySpecReduce_2  7 happyReduction_19
happyReduction_19 (HappyAbsSyn19  happy_var_2)
	_
	 =  HappyAbsSyn7
		 (";/ print...\n" ++ happy_var_2 ++ "\tOUT\n"
	)
happyReduction_19 _ _  = notHappyAtAll 

happyReduce_20 = happySpecReduce_1  8 happyReduction_20
happyReduction_20 (HappyAbsSyn9  happy_var_1)
	 =  HappyAbsSyn8
		 (happy_var_1
	)
happyReduction_20 _  = notHappyAtAll 

happyReduce_21 = happySpecReduce_1  8 happyReduction_21
happyReduction_21 (HappyAbsSyn10  happy_var_1)
	 =  HappyAbsSyn8
		 (happy_var_1
	)
happyReduction_21 _  = notHappyAtAll 

happyReduce_22 = happySpecReduce_1  8 happyReduction_22
happyReduction_22 (HappyTerminal (TK _ (VAR happy_var_1)))
	 =  HappyAbsSyn8
		 ("\tPUSH\t" ++ happy_var_1 ++ "\n\tLOAD\n"
	)
happyReduction_22 _  = notHappyAtAll 

happyReduce_23 = happySpecReduce_3  8 happyReduction_23
happyReduction_23 _
	(HappyAbsSyn8  happy_var_2)
	_
	 =  HappyAbsSyn8
		 (happy_var_2
	)
happyReduction_23 _ _ _  = notHappyAtAll 

happyReduce_24 = happySpecReduce_1  8 happyReduction_24
happyReduction_24 _
	 =  HappyAbsSyn8
		 ("\tIN\n"
	)

happyReduce_25 = happySpecReduce_1  9 happyReduction_25
happyReduction_25 (HappyTerminal (TK _ (INT happy_var_1)))
	 =  HappyAbsSyn9
		 ("\tPUSH\t" ++ (show happy_var_1) ++ "\n"
	)
happyReduction_25 _  = notHappyAtAll 

happyReduce_26 = happyMonadReduce 3 9 happyReduction_26
happyReduction_26 ((HappyAbsSyn8  happy_var_3) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn8  happy_var_1) `HappyStk`
	happyRest) tk
	 = happyThen ((( add happy_var_1 happy_var_3))
	) (\r -> happyReturn (HappyAbsSyn9 r))

happyReduce_27 = happyMonadReduce 3 9 happyReduction_27
happyReduction_27 ((HappyAbsSyn8  happy_var_3) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn8  happy_var_1) `HappyStk`
	happyRest) tk
	 = happyThen ((( substract happy_var_1 happy_var_3))
	) (\r -> happyReturn (HappyAbsSyn9 r))

happyReduce_28 = happyMonadReduce 3 9 happyReduction_28
happyReduction_28 ((HappyAbsSyn8  happy_var_3) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn8  happy_var_1) `HappyStk`
	happyRest) tk
	 = happyThen ((( multiply happy_var_1 happy_var_3))
	) (\r -> happyReturn (HappyAbsSyn9 r))

happyReduce_29 = happyMonadReduce 3 9 happyReduction_29
happyReduction_29 ((HappyAbsSyn8  happy_var_3) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn8  happy_var_1) `HappyStk`
	happyRest) tk
	 = happyThen ((( divide happy_var_1 happy_var_3))
	) (\r -> happyReturn (HappyAbsSyn9 r))

happyReduce_30 = happySpecReduce_1  10 happyReduction_30
happyReduction_30 _
	 =  HappyAbsSyn10
		 ("\tPUSH\t1\n"
	)

happyReduce_31 = happySpecReduce_1  10 happyReduction_31
happyReduction_31 _
	 =  HappyAbsSyn10
		 ("\tPUSH\t0\n"
	)

happyReduce_32 = happyMonadReduce 3 10 happyReduction_32
happyReduction_32 ((HappyAbsSyn8  happy_var_3) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn8  happy_var_1) `HappyStk`
	happyRest) tk
	 = happyThen ((( greater_than happy_var_1 happy_var_3))
	) (\r -> happyReturn (HappyAbsSyn10 r))

happyReduce_33 = happyMonadReduce 3 10 happyReduction_33
happyReduction_33 ((HappyAbsSyn8  happy_var_3) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn8  happy_var_1) `HappyStk`
	happyRest) tk
	 = happyThen ((( greater_equ_than happy_var_1 happy_var_3))
	) (\r -> happyReturn (HappyAbsSyn10 r))

happyReduce_34 = happyMonadReduce 3 10 happyReduction_34
happyReduction_34 ((HappyAbsSyn8  happy_var_3) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn8  happy_var_1) `HappyStk`
	happyRest) tk
	 = happyThen ((( less_than happy_var_1 happy_var_3))
	) (\r -> happyReturn (HappyAbsSyn10 r))

happyReduce_35 = happyMonadReduce 3 10 happyReduction_35
happyReduction_35 ((HappyAbsSyn8  happy_var_3) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn8  happy_var_1) `HappyStk`
	happyRest) tk
	 = happyThen ((( less_equ_than happy_var_1 happy_var_3))
	) (\r -> happyReturn (HappyAbsSyn10 r))

happyReduce_36 = happyMonadReduce 3 10 happyReduction_36
happyReduction_36 ((HappyAbsSyn8  happy_var_3) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn8  happy_var_1) `HappyStk`
	happyRest) tk
	 = happyThen ((( equ happy_var_1 happy_var_3))
	) (\r -> happyReturn (HappyAbsSyn10 r))

happyReduce_37 = happyMonadReduce 3 10 happyReduction_37
happyReduction_37 ((HappyAbsSyn8  happy_var_3) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn8  happy_var_1) `HappyStk`
	happyRest) tk
	 = happyThen ((( diff happy_var_1 happy_var_3))
	) (\r -> happyReturn (HappyAbsSyn10 r))

happyReduce_38 = happyMonadReduce 3 10 happyReduction_38
happyReduction_38 ((HappyAbsSyn8  happy_var_3) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn8  happy_var_1) `HappyStk`
	happyRest) tk
	 = happyThen ((( and_ happy_var_1 happy_var_3))
	) (\r -> happyReturn (HappyAbsSyn10 r))

happyReduce_39 = happyMonadReduce 3 10 happyReduction_39
happyReduction_39 ((HappyAbsSyn8  happy_var_3) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn8  happy_var_1) `HappyStk`
	happyRest) tk
	 = happyThen ((( or_ happy_var_1 happy_var_3))
	) (\r -> happyReturn (HappyAbsSyn10 r))

happyReduce_40 = happyMonadReduce 2 10 happyReduction_40
happyReduction_40 ((HappyAbsSyn8  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest) tk
	 = happyThen ((( not_ happy_var_2))
	) (\r -> happyReturn (HappyAbsSyn10 r))

happyReduce_41 = happySpecReduce_3  11 happyReduction_41
happyReduction_41 (HappyTerminal (TK _ (VAR happy_var_3)))
	_
	(HappyAbsSyn12  happy_var_1)
	 =  HappyAbsSyn11
		 (happy_var_1 ++ happy_var_3 ++ "\tDS\t1\n"
	)
happyReduction_41 _ _ _  = notHappyAtAll 

happyReduce_42 = happySpecReduce_3  11 happyReduction_42
happyReduction_42 (HappyTerminal (TK _ (VAR happy_var_3)))
	_
	(HappyAbsSyn11  happy_var_1)
	 =  HappyAbsSyn11
		 (happy_var_1 ++ happy_var_3 ++ "\tDS\t1\n"
	)
happyReduction_42 _ _ _  = notHappyAtAll 

happyReduce_43 = happySpecReduce_2  12 happyReduction_43
happyReduction_43 (HappyTerminal (TK _ (VAR happy_var_2)))
	_
	 =  HappyAbsSyn12
		 (happy_var_2 ++ "\tDS\t1\n"
	)
happyReduction_43 _ _  = notHappyAtAll 

happyReduce_44 = happySpecReduce_3  13 happyReduction_44
happyReduction_44 (HappyAbsSyn8  happy_var_3)
	_
	(HappyTerminal (TK _ (VAR happy_var_1)))
	 =  HappyAbsSyn13
		 ("\tPUSH\t" ++ happy_var_1 ++ "\n" ++ happy_var_3 ++ "\tSTORE\n"
	)
happyReduction_44 _ _ _  = notHappyAtAll 

happyReduce_45 = happyReduce 4 14 happyReduction_45
happyReduction_45 ((HappyAbsSyn8  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TK _ (VAR happy_var_2))) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn14
		 (happy_var_2 ++ "\tDS\t1\n\tPUSH\t" ++ happy_var_2 ++ "\n" ++ happy_var_4 ++ "\tSTORE\n"
	) `HappyStk` happyRest

happyReduce_46 = happyReduce 5 15 happyReduction_46
happyReduction_46 (_ `HappyStk`
	(HappyTerminal (TK _ (INT happy_var_4))) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TK _ (VAR happy_var_2))) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn15
		 (happy_var_2 ++ "\tDS\t" ++ (show happy_var_4) ++ "\n"
	) `HappyStk` happyRest

happyReduce_47 = happyMonadReduce 7 16 happyReduction_47
happyReduction_47 (_ `HappyStk`
	(HappyAbsSyn5  happy_var_6) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn5  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn8  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest) tk
	 = happyThen ((( cond_bez happy_var_2 happy_var_4 happy_var_6))
	) (\r -> happyReturn (HappyAbsSyn16 r))

happyReduce_48 = happyMonadReduce 5 17 happyReduction_48
happyReduction_48 (_ `HappyStk`
	(HappyAbsSyn5  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn8  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest) tk
	 = happyThen ((( while_do happy_var_2 happy_var_4))
	) (\r -> happyReturn (HappyAbsSyn17 r))

happyReduce_49 = happyMonadReduce 6 18 happyReduction_49
happyReduction_49 (_ `HappyStk`
	(HappyAbsSyn5  happy_var_5) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TK _ (VAR happy_var_2))) `HappyStk`
	_ `HappyStk`
	happyRest) tk
	 = happyThen ((( func_def happy_var_2 happy_var_5))
	) (\r -> happyReturn (HappyAbsSyn18 r))

happyReduce_50 = happyMonadReduce 3 19 happyReduction_50
happyReduction_50 (_ `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TK _ (VAR happy_var_1))) `HappyStk`
	happyRest) tk
	 = happyThen ((( func_call happy_var_1))
	) (\r -> happyReturn (HappyAbsSyn19 r))

happyNewToken action sts stk [] =
	action 58 58 notHappyAtAll (HappyState action) sts stk []

happyNewToken action sts stk (tk:tks) =
	let cont i = action i i tk (HappyState action) sts stk tks in
	case tk of {
	TK _ PRINT -> cont 20;
	TK _ SEP -> cont 21;
	TK _ (INT happy_dollar_dollar) -> cont 22;
	TK _ PLUS -> cont 23;
	TK _ MINUS -> cont 24;
	TK _ MUL -> cont 25;
	TK _ DIV -> cont 26;
	TK _ LPAR -> cont 27;
	TK _ RPAR -> cont 28;
	TK _ LBRA -> cont 29;
	TK _ RBRA -> cont 30;
	TK _ COMMA -> cont 31;
	TK _ GREATER -> cont 32;
	TK _ GREATER_EQU -> cont 33;
	TK _ LESS -> cont 34;
	TK _ LESS_EQU -> cont 35;
	TK _ EQU -> cont 36;
	TK _ DIFF -> cont 37;
	TK _ AND -> cont 38;
	TK _ OR -> cont 39;
	TK _ NOT -> cont 40;
	TK _ SLC -> cont 41;
	TK _ MLC -> cont 42;
	TK _ TRUE -> cont 43;
	TK _ FALSE -> cont 44;
	TK _ LET -> cont 45;
	TK _ ASSIGN -> cont 46;
	TK _ (VAR happy_dollar_dollar) -> cont 47;
	TK _ INPUT -> cont 48;
	TK _ IF -> cont 49;
	TK _ THEN -> cont 50;
	TK _ ELSE -> cont 51;
	TK _ ENDIF -> cont 52;
	TK _ WHILE -> cont 53;
	TK _ DO -> cont 54;
	TK _ ENDWHILE -> cont 55;
	TK _ DEF -> cont 56;
	TK _ FED -> cont 57;
	_ -> happyError' ((tk:tks), [])
	}

happyError_ explist 58 tk tks = happyError' (tks, explist)
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

func_def :: String -> String -> ParseResult String
func_def func_name func_body = do
        return (func_name ++ "\tEQU\t*\n" 
                ++ func_body
                ++ "\tGOTO\n")

func_call :: String -> ParseResult String
func_call func_name = do
        let return_label = func_name ++ "_return"
        return ("\tPUSH\t" ++ return_label ++ "\n"
                ++ "\tPUSH\t" ++ func_name ++ "\n"
                ++ "\tGOTO\n"
                ++ return_label ++ "\tEQU\t*\n")
        

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

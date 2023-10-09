{
module PascalParser(parseProgram,ParseResult, initEtat)

where

import Control.Monad.State.Lazy
import PascaLex

}

%name parse
%tokentype { Token }
%error { parseError }
%monad {ParseResult}

%token
  print     {TK _ PRINT}
  ';'       {TK _ SEP}
  integer   {TK _ (INT $$)}
  
  '+'       {TK _ PLUS}
  '-'       {TK _ MINUS}
  '*'       {TK _ MUL}  
  '/'       {TK _ DIV}

  '('       {TK _ LPAR}
  ')'       {TK _ RPAR}

  '['       {TK _ LBRA}
  ']'       {TK _ RBRA}

  ','       {TK _ COMMA}

  '>' {TK _ GREATER}
  '>=' {TK _ GREATER_EQU}
  '<' {TK _ LESS}
  '<=' {TK _ LESS_EQU}
  '==' {TK _ EQU}
  '!=' {TK _ DIFF}
  
  '&&' {TK _ AND}
  '||' {TK _ OR}
  '!' {TK _ NOT}

  'SLC'     {TK _ SLC}
  'MLC'     {TK _ MLC}

  True    {TK _ TRUE}
  False   {TK _ FALSE}

  let     {TK _ LET}
  '='     {TK _ ASSIGN}
  var     {TK _ (VAR $$)}
  input   {TK _ INPUT}
  
  if {TK _ IF}
  then {TK _ THEN}
  else {TK _ ELSE}
  endif {TK _ ENDIF}

  while {TK _ WHILE}
  do {TK _ DO}
  endwhile {TK _ ENDWHILE}

  def {TK _ DEF}
  fed {TK _ FED}

%left '+' '-'
%left '*' '/'
%left '(' ')'
%%
 
Program : Linst {"\tPUSH\tend_program\n" 
                ++ "\tPUSH\tmain\n" 
                ++ "\tGOTO\n" 
                ++ $1
                ++ "end_program\tEQU\t*\n" 
                ++ "\tSTOP\n"}

Linst : Inst {$1}
        | Linst Inst {$1 ++ $2}

Inst :  ';' { "" } 
        |'SLC' {""}
        |'MLC' {""}
        |Print ';' {$1}
        |Expr ';' {$1 ++ "\tLOAD\n"}
        |Def_scalaire ';' {$1}
        |Assign_scalaire ';' {$1}
        |Def_Assign_scalaire ';' {$1}
        |Def_array ';' {$1}
        |If ';' {$1}
        |While ';' {$1}
        |Ldef_scalaire ';' {$1}
        |FuncDef ';' {$1}
        |FuncCall ';' {$1}

Print : print Expr {";/ print...\n" ++ $2 ++ "\tOUT\n"}
        | print FuncCall {";/ print...\n" ++ $2 ++ "\tOUT\n"}

Expr :  ExprNum {$1}
        | ExprBool {$1}
        | var {"\tPUSH\t" ++ $1 ++ "\n\tLOAD\n"}  
        | '(' Expr ')'  {$2}      
        | input {"\tIN\n"}

ExprNum: integer {"\tPUSH\t" ++ (show $1) ++ "\n"}
        | Expr '+' Expr {% add $1 $3} 
        | Expr '-' Expr {% substract $1 $3} 
        | Expr '*' Expr {% multiply $1 $3} 
        | Expr '/' Expr {% divide $1 $3}

ExprBool: True {"\tPUSH\t1\n"}
        | False {"\tPUSH\t0\n"}
        
        | Expr '>' Expr {% greater_than $1 $3}
        | Expr '>=' Expr {% greater_equ_than $1 $3}
        | Expr '<' Expr {% less_than $1 $3}
        | Expr '<=' Expr {% less_equ_than $1 $3}
        | Expr '==' Expr {% equ $1 $3}
        | Expr '!=' Expr {% diff $1 $3}
        
        | Expr '&&' Expr {% and_ $1 $3}
        | Expr '||' Expr {% or_ $1 $3}
        | '!' Expr {% not_ $2}
        
Ldef_scalaire:  Def_scalaire ',' var {$1 ++ $3 ++ "\tDS\t1\n"}  
                | Ldef_scalaire ',' var {$1 ++ $3 ++ "\tDS\t1\n"}

Def_scalaire: let var {$2 ++ "\tDS\t1\n"}

Assign_scalaire: var '=' Expr {"\tPUSH\t" ++ $1 ++ "\n" ++ $3 ++ "\tSTORE\n"}
Def_Assign_scalaire: let var '=' Expr {$2 ++ "\tDS\t1\n\tPUSH\t" ++ $2 ++ "\n" ++ $4 ++ "\tSTORE\n"}

Def_array: let var '['integer']' {$2 ++ "\tDS\t" ++ (show $4) ++ "\n"}

If: if Expr then Linst else Linst endif {% cond_bez $2 $4 $6}

While: while Expr do Linst endwhile {% while_do $2 $4}

FuncDef: def var '('')' Linst fed {% func_def $2 $5} 
FuncCall: var'('')' {% func_call $1 }


{
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
}
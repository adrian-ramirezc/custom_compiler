{
module PascaLex (Token(..),TokenName(..),AlexPosn(..),getAPosn,getALine,getACol,scanTokens) where
}

%wrapper "posn"

tokens :-
  <0> $white+ ;
  <0> \; {\p _ -> TK p SEP}
  
  <0> \/\/.* {\p _ -> TK p SLC} -- Single Line Comment
  <0> \/\*(\n|.)*\*\/ {\p _ -> TK p MLC} -- Multiple Line Comment

  <0> [1-9][0-9]* {\p s -> TK p (INT (read s))}
  <0> 0 {\p _ -> TK p (INT 0)}
  
  <0> print {\p _ -> TK p PRINT}    
  
  <0> \+ {\p _ -> TK p PLUS}
  <0> \- {\p _ -> TK p MINUS}
  <0> \* {\p _ -> TK p MUL}
  <0> \/ {\p _ -> TK p DIV}
  
  <0> \( {\p _ -> TK p LPAR}
  <0> \) {\p _ -> TK p RPAR}

  <0> \[ {\p _ -> TK p LBRA}
  <0> \] {\p _ -> TK p RBRA}

  <0> \, {\p _ -> TK p COMMA}
  
  <0> let {\p _ -> TK p LET}
  <0> = {\p _ -> TK p ASSIGN}
  
  -- specify some keywords
  <0> input {\p _ -> TK p INPUT}

  <0> if {\p _ -> TK p IF}
  <0> then {\p _ -> TK p THEN}
  <0> else {\p _ -> TK p ELSE}
  <0> endif {\p _ -> TK p ENDIF}

  <0> while {\p _ -> TK p WHILE}
  <0> do {\p _ -> TK p DO}
  <0> endwhile {\p _ -> TK p ENDWHILE}

  <0> def {\p _ -> TK p DEF}
  <0> return {\p _ -> TK p RETURN} 

  <0> exit {\p _ -> TK p EXIT} 

  -- boolean constants
  <0> True {\p _ -> TK p TRUE}
  <0> False {\p _ -> TK p FALSE}

  -- boolean operators
  <0> \> {\p _ -> TK p GREATER}
  <0> \< {\p _ -> TK p LESS}
  <0> \>= {\p _ -> TK p GREATER_EQU}
  <0> \<= {\p _ -> TK p LESS_EQU}
  <0> == {\p _ -> TK p EQU}
  <0> != {\p _ -> TK p DIFF}
  <0> \&\& {\p _ -> TK p AND}
  <0> \|\| {\p _ -> TK p OR}
  <0> \! {\p _ -> TK p NOT}

  -- var regex
  <0> [A-Za-z]+[A-Za-z0-9_]* {\p s -> TK p (VAR s)}

{
data TokenName
  = INT Int -- contient l'entier parsé (conversion String -> Int par (read s))
  | PRINT
  | SEP
  | PLUS | MINUS | MUL | DIV
  | LPAR | RPAR
  | SLC | MLC
  | LET
  | ASSIGN
  | VAR String -- contient le String parsé
  | INPUT
  | IF | THEN | ELSE | ENDIF
  | WHILE | DO | ENDWHILE
  | LBRA | RBRA
  | COMMA
  | TRUE | FALSE
  | GREATER | GREATER_EQU
  | LESS | LESS_EQU
  | EQU | DIFF
  | AND | OR | NOT
  | DEF | RETURN
  | EXIT
  deriving (Eq,Show)

data Token = TK AlexPosn TokenName deriving (Eq,Show)

scanTokens = alexScanTokens

getAPosn :: Token -> AlexPosn
getAPosn (TK p _) = p

getALine :: AlexPosn -> String
getALine (AlexPn _ l _) = show l

getACol :: AlexPosn -> String
getACol (AlexPn _ _ c) = show c
}

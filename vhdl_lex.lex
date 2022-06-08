structure Tokens = Tokens
    type pos = int
    type lin1 = int
    type col1 = int
    type col2 = int
    type svalue = Tokens.svalue    
    type ('a,'b) token = ('a,'b) Tokens.token
    type lexresult = (svalue, pos) token
    type lexarg = string
    type arg = lexarg

    val lin1 = ref 1;
    val col1 = ref 0;
    val col2 = ref 0;
    val eolpos = ref 0;

    val badCh : string * string * int * int -> unit = fn
                (fileName,bad,line,colu) =>
                TextIO.output(TextIO.stdOut,fileName^"["
                ^Int.toString line^"."^Int.toString colu
                ^"] Invalid character \""^bad^"\"\n");
    val eof = fn fileName => Tokens.EOF (!lin1,!col1,!lin1,!col2);

%%
%header (functor WhlLexFun(structure Tokens: Whl_TOKENS));
%arg (fileName:string);
id = [a-zA-Z]+[a-zA-Z0-9]*;
whitespace = [\ \t]+;
digit =  ["+"|"~"]?[0-9]+;
eol = ("\013\010"|"\010"|"\013");

%%

"=>" => (col1:=yypos-(!eolpos); col2:=(!col1) + 1; Tokens.ARROW(!lin1,!col1,!lin1,!col2));
"**" => (col1:=yypos-(!eolpos); col2:=(!col1) + 1; Tokens.EXPT(!lin1,!col1,!lin1,!col2));
":=" => (col1:=yypos-(!eolpos); col2:=(!col1) + 1; Tokens.ASSIGN(!lin1,!col1,!lin1,!col2));
"/=" => (col1:=yypos-(!eolpos); col2:=(!col1) + 1; Tokens.NEQ(!lin1,!col1,!lin1,!col2));
">=" => (col1:=yypos-(!eolpos); col2:=(!col1) + 1; Tokens.GE(!lin1,!col1,!lin1,!col2));
"<=" => (col1:=yypos-(!eolpos); col2:=(!col1) + 1; Tokens.LE(!lin1,!col1,!lin1,!col2));
"<>" => (col1:=yypos-(!eolpos); col2:=(!col1) + 1; Tokens.BOX(!lin1,!col1,!lin1,!col2));
"&" => (col1:=yypos-(!eolpos); col2:=(!col1); Tokens.AMP(!lin1,!col1,!lin1,!col2));
"'" => (col1:=yypos-(!eolpos); col2:=(!col1); Tokens.TICK(!lin1,!col1,!lin1,!col2));
"(" => (col1:=yypos-(!eolpos); col2:=(!col1); Tokens.LPARAN(!lin1,!col1,!lin1,!col2));
")" => (col1:=yypos-(!eolpos); col2:=(!col1); Tokens.RPARAN(!lin1,!col1,!lin1,!col2));
"*"  => (col1:=yypos-(!eolpos); col2:=(!col1); Tokens.MULT(!lin1,!col1,!lin1,!col2));
"+"  => (col1:=yypos-(!eolpos); col2:=(!col1); Tokens.PLUS(!lin1,!col1,!lin1,!col2));
"," => (col1:=yypos-(!eolpos); col2:=(!col1); Tokens.COMMA(!lin1,!col1,!lin1,!col2));
"-"  => (col1:=yypos-(!eolpos); col2:=(!col1); Tokens.MINUS(!lin1,!col1,!lin1,!col2));
"."  => (col1:=yypos-(!eolpos); col2:=(!col1); Tokens.DOT(!lin1,!col1,!lin1,!col2));
"/"  => (col1:=yypos-(!eolpos); col2:=(!col1); Tokens.DIV(!lin1,!col1,!lin1,!col2));
":" => (col1:=yypos-(!eolpos); col2:=(!col1); Tokens.COLON(!lin1,!col1,!lin1,!col2));
";" => (col1:=yypos-(!eolpos); col2:=(!col1); Tokens.SEMICOLON(!lin1,!col1,!lin1,!col2));
"<"  => (col1:=yypos-(!eolpos); col2:=(!col1); Tokens.LT(!lin1,!col1,!lin1,!col2));
"=" => (col1:=yypos-(!eolpos); col2:=(!col1); Tokens.EQ(!lin1,!col1,!lin1,!col2));
">"  => (col1:=yypos-(!eolpos); col2:=(!col1); Tokens.GT(!lin1,!col1,!lin1,!col2));
"|"  => (col1:=yypos-(!eolpos); col2:=(!col1); Tokens.BAR(!lin1,!col1,!lin1,!col2));
"["  => (col1:=yypos-(!eolpos); col2:=(!col1); Tokens.LSQUARE(!lin1,!col1,!lin1,!col2));
"]"  => (col1:=yypos-(!eolpos); col2:=(!col1); Tokens.RSQUARE(!lin1,!col1,!lin1,!col2));

"abs"  => (col1:=yypos-(!eolpos); col2:=(!col1) + 2; Tokens.ABS(!lin1,!col1,!lin1,!col2));
"access"  => (col1:=yypos-(!eolpos); col2:=(!col1) + 5; Tokens.ACCESS(!lin1,!col1,!lin1,!col2));
"after"  => (col1:=yypos-(!eolpos); col2:=(!col1) + 4; Tokens.AFTER(!lin1,!col1,!lin1,!col2));
"alias"  => (col1:=yypos-(!eolpos); col2:=(!col1) + 4; Tokens.ALIAS(!lin1,!col1,!lin1,!col2));
"all"  => (col1:=yypos-(!eolpos); col2:=(!col1) + 2; Tokens.ALL(!lin1,!col1,!lin1,!col2));
"and"  => (col1:=yypos-(!eolpos); col2:=(!col1) + 2; Tokens.AND(!lin1,!col1,!lin1,!col2));
"architecture"  => (col1:=yypos-(!eolpos); col2:=(!col1) + 11; Tokens.ARCHITECTURE(!lin1,!col1,!lin1,!col2));
"array"  => (col1:=yypos-(!eolpos); col2:=(!col1) + 4; Tokens.ARRAY(!lin1,!col1,!lin1,!col2));
"assert"  => (col1:=yypos-(!eolpos); col2:=(!col1) + 5; Tokens.ASSERT(!lin1,!col1,!lin1,!col2));
"attribute"  => (col1:=yypos-(!eolpos); col2:=(!col1) + 8; Tokens.ATRIBUTE(!lin1,!col1,!lin1,!col2));
"begin"  => (col1:=yypos-(!eolpos); col2:=(!col1) + 4; Tokens.BEGIN(!lin1,!col1,!lin1,!col2));
"block"  => (col1:=yypos-(!eolpos); col2:=(!col1) + 4; Tokens.BLOCK(!lin1,!col1,!lin1,!col2));
"body"  => (col1:=yypos-(!eolpos); col2:=(!col1) + 3; Tokens.BODY(!lin1,!col1,!lin1,!col2));
"buffer"  => (col1:=yypos-(!eolpos); col2:=(!col1) + 5; Tokens.BUFFER(!lin1,!col1,!lin1,!col2));
"bus"  => (col1:=yypos-(!eolpos); col2:=(!col1) + 2; Tokens.BUS(!lin1,!col1,!lin1,!col2));
"case"  => (col1:=yypos-(!eolpos); col2:=(!col1) + 3; Tokens.CASE(!lin1,!col1,!lin1,!col2));
"component"  => (col1:=yypos-(!eolpos); col2:=(!col1) + 8; Tokens.COMPONENT(!lin1,!col1,!lin1,!col2));
"configuration"  => (col1:=yypos-(!eolpos); col2:=(!col1) + 12; Tokens.CONFIGURATION(!lin1,!col1,!lin1,!col2));
"constant"  => (col1:=yypos-(!eolpos); col2:=(!col1) + 7; Tokens.CONSTANT(!lin1,!col1,!lin1,!col2));
"disconnect"  => (col1:=yypos-(!eolpos); col2:=(!col1) + 9; Tokens.DISCONNECT(!lin1,!col1,!lin1,!col2));
"downto"  => (col1:=yypos-(!eolpos); col2:=(!col1) + 5; Tokens.DOWNTO(!lin1,!col1,!lin1,!col2));
"else"  => (col1:=yypos-(!eolpos); col2:=(!col1) + 3; Tokens.ELSE(!lin1,!col1,!lin1,!col2));
"elsif"  => (col1:=yypos-(!eolpos); col2:=(!col1) + 4; Tokens.ELSIF(!lin1,!col1,!lin1,!col2));
"end"  => (col1:=yypos-(!eolpos); col2:=(!col1) + 2; Tokens.END(!lin1,!col1,!lin1,!col2));
"entity"  => (col1:=yypos-(!eolpos); col2:=(!col1) + 5; Tokens.ENTITY(!lin1,!col1,!lin1,!col2));
"exit"  => (col1:=yypos-(!eolpos); col2:=(!col1) + 3; Tokens.EXIT(!lin1,!col1,!lin1,!col2));
"file"  => (col1:=yypos-(!eolpos); col2:=(!col1) + 3; Tokens.FILE(!lin1,!col1,!lin1,!col2));
"for"  => (col1:=yypos-(!eolpos); col2:=(!col1) + 2; Tokens.FOR(!lin1,!col1,!lin1,!col2));
"function"  => (col1:=yypos-(!eolpos); col2:=(!col1) + 7; Tokens.FUNCTION(!lin1,!col1,!lin1,!col2));
"generate"  => (col1:=yypos-(!eolpos); col2:=(!col1) + 7; Tokens.GENERATE(!lin1,!col1,!lin1,!col2));
"generic"  => (col1:=yypos-(!eolpos); col2:=(!col1) + 6; Tokens.GENERIC(!lin1,!col1,!lin1,!col2));
"group"  => (col1:=yypos-(!eolpos); col2:=(!col1) + 4; Tokens.GROUP(!lin1,!col1,!lin1,!col2));
"guarded"  => (col1:=yypos-(!eolpos); col2:=(!col1) + 6; Tokens.GUARDED(!lin1,!col1,!lin1,!col2));
"if"  => (col1:=yypos-(!eolpos); Tokens.IF(!lin1,!col1,!lin1,!col2));
"impure"  => (col1:=yypos-(!eolpos); Tokens.IMPURE(!lin1,!col1,!lin1,!col2));
"in"  => (col1:=yypos-(!eolpos); Tokens.IN(!lin1,!col1,!lin1,!col2));
"inertial"  => (col1:=yypos-(!eolpos); Tokens.INERTIAL(!lin1,!col1,!lin1,!col2));
"inout"  => (col1:=yypos-(!eolpos); Tokens.INOUT(!lin1,!col1,!lin1,!col2));
"is"  => (col1:=yypos-(!eolpos); Tokens.IS(!lin1,!col1,!lin1,!col2));
"label"  => (col1:=yypos-(!eolpos); Tokens.LABEL(!lin1,!col1,!lin1,!col2));
"library"  => (col1:=yypos-(!eolpos); Tokens.LIBRARY(!lin1,!col1,!lin1,!col2));
"linkage"  => (col1:=yypos-(!eolpos); Tokens.LINKAGE(!lin1,!col1,!lin1,!col2));
"literal"  => (col1:=yypos-(!eolpos); Tokens.LITERAL(!lin1,!col1,!lin1,!col2));
"loop"  => (col1:=yypos-(!eolpos); Tokens.LOOP(!lin1,!col1,!lin1,!col2));
"map"  => (col1:=yypos-(!eolpos); Tokens.MAP(!lin1,!col1,!lin1,!col2));
"mod"  => (col1:=yypos-(!eolpos); Tokens.MOD(!lin1,!col1,!lin1,!col2));
"nand"  => (col1:=yypos-(!eolpos); Tokens.NAND(!lin1,!col1,!lin1,!col2));
"new"  => (col1:=yypos-(!eolpos); Tokens.NEW(!lin1,!col1,!lin1,!col2));
"next"  => (col1:=yypos-(!eolpos); Tokens.NEXT(!lin1,!col1,!lin1,!col2));
"nor"  => (col1:=yypos-(!eolpos); Tokens.NOR(!lin1,!col1,!lin1,!col2));
"not"  => (col1:=yypos-(!eolpos); Tokens.NOT(!lin1,!col1,!lin1,!col2));
"null"  => (col1:=yypos-(!eolpos); Tokens.NULL(!lin1,!col1,!lin1,!col2));
"of"  => (col1:=yypos-(!eolpos); Tokens.OF(!lin1,!col1,!lin1,!col2));
"on"  => (col1:=yypos-(!eolpos); Tokens.ON(!lin1,!col1,!lin1,!col2));
"open"  => (col1:=yypos-(!eolpos); Tokens.OPEN(!lin1,!col1,!lin1,!col2));
"or"  => (col1:=yypos-(!eolpos); Tokens.OR(!lin1,!col1,!lin1,!col2));
"others"  => (col1:=yypos-(!eolpos); Tokens.OTHERS(!lin1,!col1,!lin1,!col2));
"out"  => (col1:=yypos-(!eolpos); Tokens.OUT(!lin1,!col1,!lin1,!col2));
"package"  => (col1:=yypos-(!eolpos); Tokens.PACKAGE(!lin1,!col1,!lin1,!col2));
"port"  => (col1:=yypos-(!eolpos); Tokens.PORT(!lin1,!col1,!lin1,!col2));
"postponed"  => (col1:=yypos-(!eolpos); Tokens.POSTPONED(!lin1,!col1,!lin1,!col2));
"procedure"  => (col1:=yypos-(!eolpos); Tokens.PROCEDURE(!lin1,!col1,!lin1,!col2));
"process"  => (col1:=yypos-(!eolpos); Tokens.PROCESS(!lin1,!col1,!lin1,!col2));
"protected"  => (col1:=yypos-(!eolpos); Tokens.PROTECTED(!lin1,!col1,!lin1,!col2));
"pure"  => (col1:=yypos-(!eolpos); Tokens.PURE(!lin1,!col1,!lin1,!col2));
"range"  => (col1:=yypos-(!eolpos); Tokens.RANGE(!lin1,!col1,!lin1,!col2));
"record"  => (col1:=yypos-(!eolpos); Tokens.RECORD(!lin1,!col1,!lin1,!col2));
"register"  => (col1:=yypos-(!eolpos); Tokens.REGISTER(!lin1,!col1,!lin1,!col2));
"reject"  => (col1:=yypos-(!eolpos); Tokens.REJECT(!lin1,!col1,!lin1,!col2));
"rem"  => (col1:=yypos-(!eolpos); Tokens.REM(!lin1,!col1,!lin1,!col2));
"report"  => (col1:=yypos-(!eolpos); Tokens.REPORT(!lin1,!col1,!lin1,!col2));
"return"  => (col1:=yypos-(!eolpos); Tokens.RETURN(!lin1,!col1,!lin1,!col2));
"rol"  => (col1:=yypos-(!eolpos); Tokens.ROL(!lin1,!col1,!lin1,!col2));
"ror"  => (col1:=yypos-(!eolpos); Tokens.ROR(!lin1,!col1,!lin1,!col2));
"select"  => (col1:=yypos-(!eolpos); Tokens.SELECT(!lin1,!col1,!lin1,!col2));
"severity"  => (col1:=yypos-(!eolpos); Tokens.SEVERITY(!lin1,!col1,!lin1,!col2));
"shared"  => (col1:=yypos-(!eolpos); Tokens.SHARED(!lin1,!col1,!lin1,!col2));
"signal"  => (col1:=yypos-(!eolpos); Tokens.SIGNAL(!lin1,!col1,!lin1,!col2));
"sla"  => (col1:=yypos-(!eolpos); Tokens.SLA(!lin1,!col1,!lin1,!col2));
"sll"  => (col1:=yypos-(!eolpos); Tokens.SLL(!lin1,!col1,!lin1,!col2));
"sra"  => (col1:=yypos-(!eolpos); Tokens.SRA(!lin1,!col1,!lin1,!col2));
"srl"  => (col1:=yypos-(!eolpos); Tokens.SRL(!lin1,!col1,!lin1,!col2));
"subtype"  => (col1:=yypos-(!eolpos); Tokens.SUBTYPE(!lin1,!col1,!lin1,!col2));
"then"  => (col1:=yypos-(!eolpos); Tokens.THEN(!lin1,!col1,!lin1,!col2));
"to"  => (col1:=yypos-(!eolpos); Tokens.TO(!lin1,!col1,!lin1,!col2));
"transport"  => (col1:=yypos-(!eolpos); Tokens.TRANSPORT(!lin1,!col1,!lin1,!col2));
"type"  => (col1:=yypos-(!eolpos); Tokens.TYPE(!lin1,!col1,!lin1,!col2));
"unaffected"  => (col1:=yypos-(!eolpos); Tokens.UNAFFECTED(!lin1,!col1,!lin1,!col2));
"units"  => (col1:=yypos-(!eolpos); Tokens.UNITS(!lin1,!col1,!lin1,!col2));
"until"  => (col1:=yypos-(!eolpos); Tokens.UNTIL(!lin1,!col1,!lin1,!col2));
"use"  => (col1:=yypos-(!eolpos); Tokens.USE(!lin1,!col1,!lin1,!col2));
"variable"  => (col1:=yypos-(!eolpos); Tokens.VARIABLE(!lin1,!col1,!lin1,!col2));
"wait"  => (col1:=yypos-(!eolpos); Tokens.WAIT(!lin1,!col1,!lin1,!col2));
"when"  => (col1:=yypos-(!eolpos); Tokens.WHEN(!lin1,!col1,!lin1,!col2));
"while"  => (col1:=yypos-(!eolpos); Tokens.WHILE(!lin1,!col1,!lin1,!col2));
"with"  => (col1:=yypos-(!eolpos); Tokens.WITH(!lin1,!col1,!lin1,!col2));
"xnor"  => (col1:=yypos-(!eolpos); Tokens.XNOR(!lin1,!col1,!lin1,!col2));
"xor"  => (col1:=yypos-(!eolpos); Tokens.XOR(!lin1,!col1,!lin1,!col2));

{digit} => (col1:=yypos-(!eolpos); Tokens.INT_CONST(yytext,!lin1,!col1,!lin1,!col2));
{id} => (col1:=yypos-(!eolpos); Tokens.ID(yytext,!lin1,!col1,!lin1,!col2));

{whitespace}+ => (continue());
{eol} => (lin1:=(!lin1)+1; eolpos:=yypos+size yytext; continue());

. => (col1:=yypos-(!eolpos); badCh (fileName,yytext,!lin1,!col1,!lin1,!col2); continue());

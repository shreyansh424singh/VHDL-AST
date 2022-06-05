type pos = int
type svalue = Tokens.svalue
 
type ('a,'b) token = ('a,'b) Tokens.token
type lexresult = (svalue, pos) token
type lexarg = string
type arg = lexarg

val lin = ref 1;
val col = ref 0;
val eolpos = ref 0;

val badCh : string * string * int * int -> unit = fn
            (fileName,bad,line,col) =>
            TextIO.output(TextIO.stdOut,fileName^"["
            ^Int.toString line^"."^Int.toString col
            ^"] Invalid character \""^bad^"\"\n");
val eof = fn fileName => Tokens.EOF (!lin,!col);


%%
%header (functor WhlLexFun(structure Tokens: Whl_TOKENS));
%arg (fileName:string);
id = [a-zA-Z]+[a-zA-Z0-9]*;
whitespace = [\ \t]+;
digit =  ["+"|"~"]?[0-9]+;
eol = ("\013\010"|"\010"|"\013");

%%

"=>" => (col:=yypos-(!eolpos); Tokens.ARROW(!lin,!col));
"**" => (col:=yypos-(!eolpos); Tokens.EXPT(!lin,!col));
":=" => (col:=yypos-(!eolpos); Tokens.ASSIGN(!lin,!col));
"/=" => (col:=yypos-(!eolpos); Tokens.NEQ(!lin,!col));
">=" => (col:=yypos-(!eolpos); Tokens.GE(!lin,!col));
"<=" => (col:=yypos-(!eolpos); Tokens.LE(!lin,!col));
"<>" => (col:=yypos-(!eolpos); Tokens.BOX(!lin,!col));
"&" => (col:=yypos-(!eolpos); Tokens.AMP(!lin,!col));
"'" => (col:=yypos-(!eolpos); Tokens.TICK(!lin,!col));
"(" => (col:=yypos-(!eolpos); Tokens.LPARAN(!lin,!col));
")" => (col:=yypos-(!eolpos); Tokens.RPARAN(!lin,!col));
"*"  => (col:=yypos-(!eolpos); Tokens.MULT(!lin,!col));
"+"  => (col:=yypos-(!eolpos); Tokens.PLUS(!lin,!col));
"," => (col:=yypos-(!eolpos); Tokens.COMMA(!lin,!col));
"-"  => (col:=yypos-(!eolpos); Tokens.MINUS(!lin,!col));
"."  => (col:=yypos-(!eolpos); Tokens.DOT(!lin,!col));
"/"  => (col:=yypos-(!eolpos); Tokens.DIV(!lin,!col));
":" => (col:=yypos-(!eolpos); Tokens.COLON(!lin,!col));
";" => (col:=yypos-(!eolpos); Tokens.SEMICOLON(!lin,!col));
"<"  => (col:=yypos-(!eolpos); Tokens.LT(!lin,!col));
"=" => (col:=yypos-(!eolpos); Tokens.EQ(!lin,!col));
">"  => (col:=yypos-(!eolpos); Tokens.GT(!lin,!col));
"|"  => (col:=yypos-(!eolpos); Tokens.BAR(!lin,!col));
"["  => (col:=yypos-(!eolpos); Tokens.LSQUARE(!lin,!col));
"]"  => (col:=yypos-(!eolpos); Tokens.RSQUARE(!lin,!col));

"abs"  => (col:=yypos-(!eolpos); Tokens.ABS(!lin,!col));
"access"  => (col:=yypos-(!eolpos); Tokens.ACCESS(!lin,!col));
"after"  => (col:=yypos-(!eolpos); Tokens.AFTER(!lin,!col));
"alias"  => (col:=yypos-(!eolpos); Tokens.ALIAS(!lin,!col));
"all"  => (col:=yypos-(!eolpos); Tokens.ALL(!lin,!col));
"and"  => (col:=yypos-(!eolpos); Tokens.AND(!lin,!col));
"architecture"  => (col:=yypos-(!eolpos); Tokens.ARCHITECTURE(!lin,!col));
"array"  => (col:=yypos-(!eolpos); Tokens.ARRAY(!lin,!col));
"assert"  => (col:=yypos-(!eolpos); Tokens.ASSERT(!lin,!col));
"attribute"  => (col:=yypos-(!eolpos); Tokens.ATRIBUTE(!lin,!col));
"begin"  => (col:=yypos-(!eolpos); Tokens.BEGIN(!lin,!col));
"block"  => (col:=yypos-(!eolpos); Tokens.BLOCK(!lin,!col));
"body"  => (col:=yypos-(!eolpos); Tokens.BODY(!lin,!col));
"buffer"  => (col:=yypos-(!eolpos); Tokens.BUFFER(!lin,!col));
"bus"  => col:=yypos-(!eolpos); Tokens.BUS(!lin,!col));
"case"  => (col:=yypos-(!eolpos); Tokens.CASE(!lin,!col));
"component"  => (col:=yypos-(!eolpos); Tokens.COMPONENT(!lin,!col));
"configuration"  => (col:=yypos-(!eolpos); Tokens.CONFIGURATION(!lin,!col));
"constant"  => (col:=yypos-(!eolpos); Tokens.CONSTANT(!lin,!col));
"disconnect"  => (col:=yypos-(!eolpos); Tokens.DISCONNECT(!lin,!col));
"downto"  => (col:=yypos-(!eolpos); Tokens.DOWNTO(!lin,!col));
"else"  => (col:=yypos-(!eolpos); Tokens.ELSE(!lin,!col));
"elsif"  => (col:=yypos-(!eolpos); Tokens.ELSIF(!lin,!col));
"end"  => (col:=yypos-(!eolpos); Tokens.END(!lin,!col));
"entity"  => (col:=yypos-(!eolpos); Tokens.ENTITY(!lin,!col));
"exit"  => (col:=yypos-(!eolpos); Tokens.EXIT(!lin,!col));
"file"  => (col:=yypos-(!eolpos); Tokens.FILE(!lin,!col));
"for"  => (col:=yypos-(!eolpos); Tokens.FOR(!lin,!col));
"function"  => (col:=yypos-(!eolpos); Tokens.FUNCTION(!lin,!col));
"generate"  => (col:=yypos-(!eolpos); Tokens.GENERATE(!lin,!col));
"generic"  => (col:=yypos-(!eolpos); Tokens.GENERIC(!lin,!col));
"group"  => (col:=yypos-(!eolpos); Tokens.GROUP(!lin,!col));
"guarded"  => (col:=yypos-(!eolpos); Tokens.GUARDED(!lin,!col));
"if"  => (col:=yypos-(!eolpos); Tokens.IF(!lin,!col));
"impure"  => (col:=yypos-(!eolpos); Tokens.IMPURE(!lin,!col));
"in"  => (col:=yypos-(!eolpos); Tokens.IN(!lin,!col));
"inertial"  => (col:=yypos-(!eolpos); Tokens.INERTIAL(!lin,!col));
"inout"  => (col:=yypos-(!eolpos); Tokens.INOUT(!lin,!col));
"is"  => (col:=yypos-(!eolpos); Tokens.IS(!lin,!col));
"label"  => (col:=yypos-(!eolpos); Tokens.LABEL(!lin,!col));
"library"  => (col:=yypos-(!eolpos); Tokens.LIBRARY(!lin,!col));
"linkage"  => (col:=yypos-(!eolpos); Tokens.LINKAGE(!lin,!col));
"literal"  => (col:=yypos-(!eolpos); Tokens.LITERAL(!lin,!col));
"loop"  => (col:=yypos-(!eolpos); Tokens.LOOP(!lin,!col));
"map"  => (col:=yypos-(!eolpos); Tokens.MAP(!lin,!col));
"mod"  => (col:=yypos-(!eolpos); Tokens.MOD(!lin,!col));
"nand"  => (col:=yypos-(!eolpos); Tokens.NAND(!lin,!col));
"new"  => (col:=yypos-(!eolpos); Tokens.NEW(!lin,!col));
"next"  => (col:=yypos-(!eolpos); Tokens.NEXT(!lin,!col));
"nor"  => (col:=yypos-(!eolpos); Tokens.NOR(!lin,!col));
"not"  => (col:=yypos-(!eolpos); Tokens.NOT(!lin,!col));
"null"  => (col:=yypos-(!eolpos); Tokens.NULL(!lin,!col));
"of"  => (col:=yypos-(!eolpos); Tokens.OF(!lin,!col));
"on"  => (col:=yypos-(!eolpos); Tokens.ON(!lin,!col));
"open"  => (col:=yypos-(!eolpos); Tokens.OPEN(!lin,!col));
"or"  => (col:=yypos-(!eolpos); Tokens.OR(!lin,!col));
"others"  => (col:=yypos-(!eolpos); Tokens.OTHERS(!lin,!col));
"out"  => (col:=yypos-(!eolpos); Tokens.OUT(!lin,!col));
"package"  => (col:=yypos-(!eolpos); Tokens.PACKAGE(!lin,!col));
"port"  => (col:=yypos-(!eolpos); Tokens.PORT(!lin,!col));
"postponed"  => (col:=yypos-(!eolpos); Tokens.POSTPONED(!lin,!col));
"procedure"  => (col:=yypos-(!eolpos); Tokens.PROCEDURE(!lin,!col));
"process"  => (col:=yypos-(!eolpos); Tokens.PROCESS(!lin,!col));
"protected"  => (col:=yypos-(!eolpos); Tokens.PROTECTED(!lin,!col));
"pure"  => (col:=yypos-(!eolpos); Tokens.PURE(!lin,!col));
"range"  => (col:=yypos-(!eolpos); Tokens.RANGE(!lin,!col));
"record"  => (col:=yypos-(!eolpos); Tokens.RECORD(!lin,!col));
"register"  => (col:=yypos-(!eolpos); Tokens.REGISTER(!lin,!col));
"reject"  => (col:=yypos-(!eolpos); Tokens.REJECT(!lin,!col));
"rem"  => (col:=yypos-(!eolpos); Tokens.REM(!lin,!col));
"report"  => (col:=yypos-(!eolpos); Tokens.REPORT(!lin,!col));
"return"  => (col:=yypos-(!eolpos); Tokens.RETURN(!lin,!col));
"rol"  => (col:=yypos-(!eolpos); Tokens.ROL(!lin,!col));
"ror"  => (col:=yypos-(!eolpos); Tokens.ROR(!lin,!col));
"select"  => (col:=yypos-(!eolpos); Tokens.SELECT(!lin,!col));
"severity"  => (col:=yypos-(!eolpos); Tokens.SEVERITY(!lin,!col));
"shared"  => (col:=yypos-(!eolpos); Tokens.SHARED(!lin,!col));
"signal"  => (col:=yypos-(!eolpos); Tokens.SIGNAL(!lin,!col));
"sla"  => (col:=yypos-(!eolpos); Tokens.SLA(!lin,!col));
"sll"  => (col:=yypos-(!eolpos); Tokens.SLL(!lin,!col));
"sra"  => (col:=yypos-(!eolpos); Tokens.SRA(!lin,!col));
"srl"  => (col:=yypos-(!eolpos); Tokens.SRL(!lin,!col));
"subtype"  => (col:=yypos-(!eolpos); Tokens.SUBTYPE(!lin,!col));
"then"  => (col:=yypos-(!eolpos); Tokens.THEN(!lin,!col));
"to"  => (col:=yypos-(!eolpos); Tokens.TO(!lin,!col));
"transport"  => (col:=yypos-(!eolpos); Tokens.TRANSPORT(!lin,!col));
"type"  => (col:=yypos-(!eolpos); Tokens.TYPE(!lin,!col));
"unaffected"  => (col:=yypos-(!eolpos); Tokens.UNAFFECTED(!lin,!col));
"units"  => (col:=yypos-(!eolpos); Tokens.UNITS(!lin,!col));
"until"  => (col:=yypos-(!eolpos); Tokens.UNTIL(!lin,!col));
"use"  => (col:=yypos-(!eolpos); Tokens.USE(!lin,!col));
"variable"  => (col:=yypos-(!eolpos); Tokens.VARIABLE(!lin,!col));
"wait"  => (col:=yypos-(!eolpos); Tokens.WAIT(!lin,!col));
"when"  => (col:=yypos-(!eolpos); Tokens.WHEN(!lin,!col));
"while"  => (col:=yypos-(!eolpos); Tokens.WHILE(!lin,!col));
"with"  => (col:=yypos-(!eolpos); Tokens.WITH(!lin,!col));
"xnor"  => (col:=yypos-(!eolpos); Tokens.XNOR(!lin,!col));
"xor"  => (col:=yypos-(!eolpos); Tokens.XOR(!lin,!col));

{digit} => (col:=yypos-(!eolpos); Tokens.INT_CONST(yytext,!lin,!col));
{id} => (col:=yypos-(!eolpos); Tokens.ID(yytext,!lin,!col));

{whitespace}+ => (continue());
{eol} => (lin:=(!lin)+1; eolpos:=yypos+size yytext; continue());

. => (col:=yypos-(!eolpos); badCh (fileName,yytext,!lin,!col); continue());

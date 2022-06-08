structure Tokens = Tokens
    type pos = int
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

    val pri :   string * int * int * int -> unit = fn
            (bad,line,col1, col2) =>
            TextIO.output(TextIO.stdOut,bad^"  ------  " ^
             "["
            ^Int.toString line^"."^Int.toString col1
            ^"]  -  "^  "["
            ^Int.toString line^"."^Int.toString col2
            ^"]" ^  "\n");

    val eof = fn fileName => Tokens.EOF (!lin1,!col1,!lin1,!col2);

%%
%header (functor WhlLexFun(structure Tokens: Whl_TOKENS));
%arg (fileName:string);
id = [a-zA-Z]+[a-zA-Z0-9]*;
whitespace = [\ \t]+;
digit =  ["+"|"~"]?[0-9]+;
eol = ("\013\010"|"\010"|"\013");

%%

"=>" => (col1:=yypos-(!eolpos); col2:=(!col1) + 1;  pri (yytext,!lin,!col1, !col2); Tokens.ARROW(!lin1,!col1,!lin1,!col2));
"**" => (col1:=yypos-(!eolpos); col2:=(!col1) + 1;  pri (yytext,!lin,!col1, !col2); Tokens.EXPT(!lin1,!col1,!lin1,!col2));
":=" => (col1:=yypos-(!eolpos); col2:=(!col1) + 1;  pri (yytext,!lin,!col1, !col2); Tokens.ASSIGN(!lin1,!col1,!lin1,!col2));
"/=" => (col1:=yypos-(!eolpos); col2:=(!col1) + 1;  pri (yytext,!lin,!col1, !col2); Tokens.NEQ(!lin1,!col1,!lin1,!col2));
">=" => (col1:=yypos-(!eolpos); col2:=(!col1) + 1;  pri (yytext,!lin,!col1, !col2); Tokens.GE(!lin1,!col1,!lin1,!col2));
"<=" => (col1:=yypos-(!eolpos); col2:=(!col1) + 1;  pri (yytext,!lin,!col1, !col2); Tokens.LE(!lin1,!col1,!lin1,!col2));
"<>" => (col1:=yypos-(!eolpos); col2:=(!col1) + 1;  pri (yytext,!lin,!col1, !col2); Tokens.BOX(!lin1,!col1,!lin1,!col2));
"&" => (col1:=yypos-(!eolpos); col2:=(!col1);  pri (yytext,!lin,!col1, !col2); Tokens.AMP(!lin1,!col1,!lin1,!col2));
"'" => (col1:=yypos-(!eolpos); col2:=(!col1);  pri (yytext,!lin,!col1, !col2); Tokens.TICK(!lin1,!col1,!lin1,!col2));
"(" => (col1:=yypos-(!eolpos); col2:=(!col1);  pri (yytext,!lin,!col1, !col2); Tokens.LPARAN(!lin1,!col1,!lin1,!col2));
")" => (col1:=yypos-(!eolpos); col2:=(!col1);  pri (yytext,!lin,!col1, !col2); Tokens.RPARAN(!lin1,!col1,!lin1,!col2));
"*"  => (col1:=yypos-(!eolpos); col2:=(!col1);  pri (yytext,!lin,!col1, !col2); Tokens.MULT(!lin1,!col1,!lin1,!col2));
"+"  => (col1:=yypos-(!eolpos); col2:=(!col1);  pri (yytext,!lin,!col1, !col2); Tokens.PLUS(!lin1,!col1,!lin1,!col2));
"," => (col1:=yypos-(!eolpos); col2:=(!col1);  pri (yytext,!lin,!col1, !col2); Tokens.COMMA(!lin1,!col1,!lin1,!col2));
"-"  => (col1:=yypos-(!eolpos); col2:=(!col1);  pri (yytext,!lin,!col1, !col2); Tokens.MINUS(!lin1,!col1,!lin1,!col2));
"."  => (col1:=yypos-(!eolpos); col2:=(!col1);  pri (yytext,!lin,!col1, !col2); Tokens.DOT(!lin1,!col1,!lin1,!col2));
"/"  => (col1:=yypos-(!eolpos); col2:=(!col1);  pri (yytext,!lin,!col1, !col2); Tokens.DIV(!lin1,!col1,!lin1,!col2));
":" => (col1:=yypos-(!eolpos); col2:=(!col1);  pri (yytext,!lin,!col1, !col2); Tokens.COLON(!lin1,!col1,!lin1,!col2));
";" => (col1:=yypos-(!eolpos); col2:=(!col1);  pri (yytext,!lin,!col1, !col2); Tokens.SEMICOLON(!lin1,!col1,!lin1,!col2));
"<"  => (col1:=yypos-(!eolpos); col2:=(!col1);  pri (yytext,!lin,!col1, !col2); Tokens.LT(!lin1,!col1,!lin1,!col2));
"=" => (col1:=yypos-(!eolpos); col2:=(!col1);  pri (yytext,!lin,!col1, !col2); Tokens.EQ(!lin1,!col1,!lin1,!col2));
">"  => (col1:=yypos-(!eolpos); col2:=(!col1);  pri (yytext,!lin,!col1, !col2); Tokens.GT(!lin1,!col1,!lin1,!col2));
"|"  => (col1:=yypos-(!eolpos); col2:=(!col1);  pri (yytext,!lin,!col1, !col2); Tokens.BAR(!lin1,!col1,!lin1,!col2));
"["  => (col1:=yypos-(!eolpos); col2:=(!col1);  pri (yytext,!lin,!col1, !col2); Tokens.LSQUARE(!lin1,!col1,!lin1,!col2));
"]"  => (col1:=yypos-(!eolpos); col2:=(!col1);  pri (yytext,!lin,!col1, !col2); Tokens.RSQUARE(!lin1,!col1,!lin1,!col2));

"abs"  => (col1:=yypos-(!eolpos); col2:=(!col1) + 2;  pri (yytext,!lin,!col1, !col2); Tokens.ABS(!lin1,!col1,!lin1,!col2));
"access"  => (col1:=yypos-(!eolpos); col2:=(!col1) + 5;  pri (yytext,!lin,!col1, !col2); Tokens.ACCESS(!lin1,!col1,!lin1,!col2));
"after"  => (col1:=yypos-(!eolpos); col2:=(!col1) + 4;  pri (yytext,!lin,!col1, !col2); Tokens.AFTER(!lin1,!col1,!lin1,!col2));
"alias"  => (col1:=yypos-(!eolpos); col2:=(!col1) + 4;  pri (yytext,!lin,!col1, !col2); Tokens.ALIAS(!lin1,!col1,!lin1,!col2));
"all"  => (col1:=yypos-(!eolpos); col2:=(!col1) + 2;  pri (yytext,!lin,!col1, !col2); Tokens.ALL(!lin1,!col1,!lin1,!col2));
"and"  => (col1:=yypos-(!eolpos); col2:=(!col1) + 2;  pri (yytext,!lin,!col1, !col2); Tokens.AND(!lin1,!col1,!lin1,!col2));
"architecture"  => (col1:=yypos-(!eolpos); col2:=(!col1) + 11;  pri (yytext,!lin,!col1, !col2); Tokens.ARCHITECTURE(!lin1,!col1,!lin1,!col2));
"array"  => (col1:=yypos-(!eolpos); col2:=(!col1) + 4;  pri (yytext,!lin,!col1, !col2); Tokens.ARRAY(!lin1,!col1,!lin1,!col2));
"assert"  => (col1:=yypos-(!eolpos); col2:=(!col1) + 5;  pri (yytext,!lin,!col1, !col2); Tokens.ASSERT(!lin1,!col1,!lin1,!col2));
"attribute"  => (col1:=yypos-(!eolpos); col2:=(!col1) + 8;  pri (yytext,!lin,!col1, !col2); Tokens.ATRIBUTE(!lin1,!col1,!lin1,!col2));
"begin"  => (col1:=yypos-(!eolpos); col2:=(!col1) + 4;  pri (yytext,!lin,!col1, !col2); Tokens.BEGIN(!lin1,!col1,!lin1,!col2));
"block"  => (col1:=yypos-(!eolpos); col2:=(!col1) + 4;  pri (yytext,!lin,!col1, !col2); Tokens.BLOCK(!lin1,!col1,!lin1,!col2));
"body"  => (col1:=yypos-(!eolpos); col2:=(!col1) + 3;  pri (yytext,!lin,!col1, !col2); Tokens.BODY(!lin1,!col1,!lin1,!col2));
"buffer"  => (col1:=yypos-(!eolpos); col2:=(!col1) + 5;  pri (yytext,!lin,!col1, !col2); Tokens.BUFFER(!lin1,!col1,!lin1,!col2));
"bus"  => (col1:=yypos-(!eolpos); col2:=(!col1) + 2;  pri (yytext,!lin,!col1, !col2); Tokens.BUS(!lin1,!col1,!lin1,!col2));
"case"  => (col1:=yypos-(!eolpos); col2:=(!col1) + 3;  pri (yytext,!lin,!col1, !col2); Tokens.CASE(!lin1,!col1,!lin1,!col2));
"component"  => (col1:=yypos-(!eolpos); col2:=(!col1) + 8;  pri (yytext,!lin,!col1, !col2); Tokens.COMPONENT(!lin1,!col1,!lin1,!col2));
"configuration"  => (col1:=yypos-(!eolpos); col2:=(!col1) + 12;  pri (yytext,!lin,!col1, !col2); Tokens.CONFIGURATION(!lin1,!col1,!lin1,!col2));
"constant"  => (col1:=yypos-(!eolpos); col2:=(!col1) + 7;  pri (yytext,!lin,!col1, !col2); Tokens.CONSTANT(!lin1,!col1,!lin1,!col2));
"disconnect"  => (col1:=yypos-(!eolpos); col2:=(!col1) + 9;  pri (yytext,!lin,!col1, !col2); Tokens.DISCONNECT(!lin1,!col1,!lin1,!col2));
"downto"  => (col1:=yypos-(!eolpos); col2:=(!col1) + 5;  pri (yytext,!lin,!col1, !col2); Tokens.DOWNTO(!lin1,!col1,!lin1,!col2));
"else"  => (col1:=yypos-(!eolpos); col2:=(!col1) + 3;  pri (yytext,!lin,!col1, !col2); Tokens.ELSE(!lin1,!col1,!lin1,!col2));
"elsif"  => (col1:=yypos-(!eolpos); col2:=(!col1) + 4;  pri (yytext,!lin,!col1, !col2); Tokens.ELSIF(!lin1,!col1,!lin1,!col2));
"end"  => (col1:=yypos-(!eolpos); col2:=(!col1) + 2;  pri (yytext,!lin,!col1, !col2); Tokens.END(!lin1,!col1,!lin1,!col2));
"entity"  => (col1:=yypos-(!eolpos); col2:=(!col1) + 5;  pri (yytext,!lin,!col1, !col2); Tokens.ENTITY(!lin1,!col1,!lin1,!col2));
"exit"  => (col1:=yypos-(!eolpos); col2:=(!col1) + 3;  pri (yytext,!lin,!col1, !col2); Tokens.EXIT(!lin1,!col1,!lin1,!col2));
"file"  => (col1:=yypos-(!eolpos); col2:=(!col1) + 3;  pri (yytext,!lin,!col1, !col2); Tokens.FILE(!lin1,!col1,!lin1,!col2));
"for"  => (col1:=yypos-(!eolpos); col2:=(!col1) + 2;  pri (yytext,!lin,!col1, !col2); Tokens.FOR(!lin1,!col1,!lin1,!col2));
"function"  => (col1:=yypos-(!eolpos); col2:=(!col1) + 7;  pri (yytext,!lin,!col1, !col2); Tokens.FUNCTION(!lin1,!col1,!lin1,!col2));
"generate"  => (col1:=yypos-(!eolpos); col2:=(!col1) + 7;  pri (yytext,!lin,!col1, !col2); Tokens.GENERATE(!lin1,!col1,!lin1,!col2));
"generic"  => (col1:=yypos-(!eolpos); col2:=(!col1) + 6;  pri (yytext,!lin,!col1, !col2); Tokens.GENERIC(!lin1,!col1,!lin1,!col2));
"group"  => (col1:=yypos-(!eolpos); col2:=(!col1) + 4;  pri (yytext,!lin,!col1, !col2); Tokens.GROUP(!lin1,!col1,!lin1,!col2));
"guarded"  => (col1:=yypos-(!eolpos); col2:=(!col1) + 6;  pri (yytext,!lin,!col1, !col2); Tokens.GUARDED(!lin1,!col1,!lin1,!col2));
"if"  => (col1:=yypos-(!eolpos); col2:=(!col1) + 1;  pri (yytext,!lin,!col1, !col2); Tokens.IF(!lin1,!col1,!lin1,!col2));
"impure"  => (col1:=yypos-(!eolpos); col2:=(!col1) + 5;  pri (yytext,!lin,!col1, !col2); Tokens.IMPURE(!lin1,!col1,!lin1,!col2));
"in"  => (col1:=yypos-(!eolpos); col2:=(!col1) + 1;  pri (yytext,!lin,!col1, !col2); Tokens.IN(!lin1,!col1,!lin1,!col2));
"inertial"  => (col1:=yypos-(!eolpos); col2:=(!col1) + 7;  pri (yytext,!lin,!col1, !col2); Tokens.INERTIAL(!lin1,!col1,!lin1,!col2));
"inout"  => (col1:=yypos-(!eolpos); col2:=(!col1) + 4;  pri (yytext,!lin,!col1, !col2); Tokens.INOUT(!lin1,!col1,!lin1,!col2));
"is"  => (col1:=yypos-(!eolpos); col2:=(!col1) + 1;  pri (yytext,!lin,!col1, !col2); Tokens.IS(!lin1,!col1,!lin1,!col2));
"label"  => (col1:=yypos-(!eolpos); col2:=(!col1) + 4;  pri (yytext,!lin,!col1, !col2); Tokens.LABEL(!lin1,!col1,!lin1,!col2));
"library"  => (col1:=yypos-(!eolpos); col2:=(!col1) + 6;  pri (yytext,!lin,!col1, !col2); Tokens.LIBRARY(!lin1,!col1,!lin1,!col2));
"linkage"  => (col1:=yypos-(!eolpos); col2:=(!col1) + 6;  pri (yytext,!lin,!col1, !col2); Tokens.LINKAGE(!lin1,!col1,!lin1,!col2));
"literal"  => (col1:=yypos-(!eolpos); col2:=(!col1) + 6;  pri (yytext,!lin,!col1, !col2); Tokens.LITERAL(!lin1,!col1,!lin1,!col2));
"loop"  => (col1:=yypos-(!eolpos); col2:=(!col1) + 3;  pri (yytext,!lin,!col1, !col2); Tokens.LOOP(!lin1,!col1,!lin1,!col2));
"map"  => (col1:=yypos-(!eolpos); col2:=(!col1) + 2;  pri (yytext,!lin,!col1, !col2); Tokens.MAP(!lin1,!col1,!lin1,!col2));
"mod"  => (col1:=yypos-(!eolpos); col2:=(!col1) + 2;  pri (yytext,!lin,!col1, !col2); Tokens.MOD(!lin1,!col1,!lin1,!col2));
"nand"  => (col1:=yypos-(!eolpos); col2:=(!col1) + 3;  pri (yytext,!lin,!col1, !col2); Tokens.NAND(!lin1,!col1,!lin1,!col2));
"new"  => (col1:=yypos-(!eolpos); col2:=(!col1) + 2;  pri (yytext,!lin,!col1, !col2); Tokens.NEW(!lin1,!col1,!lin1,!col2));
"next"  => (col1:=yypos-(!eolpos); col2:=(!col1) + 3;  pri (yytext,!lin,!col1, !col2); Tokens.NEXT(!lin1,!col1,!lin1,!col2));
"nor"  => (col1:=yypos-(!eolpos); col2:=(!col1) + 2;  pri (yytext,!lin,!col1, !col2); Tokens.NOR(!lin1,!col1,!lin1,!col2));
"not"  => (col1:=yypos-(!eolpos); col2:=(!col1) + 2;  pri (yytext,!lin,!col1, !col2); Tokens.NOT(!lin1,!col1,!lin1,!col2));
"null"  => (col1:=yypos-(!eolpos); col2:=(!col1) + 3;  pri (yytext,!lin,!col1, !col2); Tokens.NULL(!lin1,!col1,!lin1,!col2));
"of"  => (col1:=yypos-(!eolpos); col2:=(!col1) + 1;  pri (yytext,!lin,!col1, !col2); Tokens.OF(!lin1,!col1,!lin1,!col2));
"on"  => (col1:=yypos-(!eolpos); col2:=(!col1) + 1;  pri (yytext,!lin,!col1, !col2); Tokens.ON(!lin1,!col1,!lin1,!col2));
"open"  => (col1:=yypos-(!eolpos); col2:=(!col1) + 3;  pri (yytext,!lin,!col1, !col2); Tokens.OPEN(!lin1,!col1,!lin1,!col2));
"or"  => (col1:=yypos-(!eolpos); col2:=(!col1) + 1;  pri (yytext,!lin,!col1, !col2); Tokens.OR(!lin1,!col1,!lin1,!col2));
"others"  => (col1:=yypos-(!eolpos); col2:=(!col1) + 5;  pri (yytext,!lin,!col1, !col2); Tokens.OTHERS(!lin1,!col1,!lin1,!col2));
"out"  => (col1:=yypos-(!eolpos); col2:=(!col1) + 2;  pri (yytext,!lin,!col1, !col2); Tokens.OUT(!lin1,!col1,!lin1,!col2));
"package"  => (col1:=yypos-(!eolpos); col2:=(!col1) + 6;  pri (yytext,!lin,!col1, !col2); Tokens.PACKAGE(!lin1,!col1,!lin1,!col2));
"port"  => (col1:=yypos-(!eolpos); col2:=(!col1) + 3;  pri (yytext,!lin,!col1, !col2); Tokens.PORT(!lin1,!col1,!lin1,!col2));
"postponed"  => (col1:=yypos-(!eolpos); col2:=(!col1) + 8;  pri (yytext,!lin,!col1, !col2); Tokens.POSTPONED(!lin1,!col1,!lin1,!col2));
"procedure"  => (col1:=yypos-(!eolpos); col2:=(!col1) + 8;  pri (yytext,!lin,!col1, !col2); Tokens.PROCEDURE(!lin1,!col1,!lin1,!col2));
"process"  => (col1:=yypos-(!eolpos); col2:=(!col1) + 6;  pri (yytext,!lin,!col1, !col2); Tokens.PROCESS(!lin1,!col1,!lin1,!col2));
"protected"  => (col1:=yypos-(!eolpos); col2:=(!col1) + 8;  pri (yytext,!lin,!col1, !col2); Tokens.PROTECTED(!lin1,!col1,!lin1,!col2));
"pure"  => (col1:=yypos-(!eolpos); col2:=(!col1) + 3;  pri (yytext,!lin,!col1, !col2); Tokens.PURE(!lin1,!col1,!lin1,!col2));
"range"  => (col1:=yypos-(!eolpos); col2:=(!col1) + 4;  pri (yytext,!lin,!col1, !col2); Tokens.RANGE(!lin1,!col1,!lin1,!col2));
"record"  => (col1:=yypos-(!eolpos); col2:=(!col1) + 5;  pri (yytext,!lin,!col1, !col2); Tokens.RECORD(!lin1,!col1,!lin1,!col2));
"register"  => (col1:=yypos-(!eolpos); col2:=(!col1) + 7;  pri (yytext,!lin,!col1, !col2); Tokens.REGISTER(!lin1,!col1,!lin1,!col2));
"reject"  => (col1:=yypos-(!eolpos); col2:=(!col1) + 5;  pri (yytext,!lin,!col1, !col2); Tokens.REJECT(!lin1,!col1,!lin1,!col2));
"rem"  => (col1:=yypos-(!eolpos); col2:=(!col1) + 2;  pri (yytext,!lin,!col1, !col2); Tokens.REM(!lin1,!col1,!lin1,!col2));
"report"  => (col1:=yypos-(!eolpos); col2:=(!col1) + 5;  pri (yytext,!lin,!col1, !col2); Tokens.REPORT(!lin1,!col1,!lin1,!col2));
"return"  => (col1:=yypos-(!eolpos); col2:=(!col1) + 5;  pri (yytext,!lin,!col1, !col2); Tokens.RETURN(!lin1,!col1,!lin1,!col2));
"rol"  => (col1:=yypos-(!eolpos); col2:=(!col1) + 2;  pri (yytext,!lin,!col1, !col2); Tokens.ROL(!lin1,!col1,!lin1,!col2));
"ror"  => (col1:=yypos-(!eolpos); col2:=(!col1) + 2;  pri (yytext,!lin,!col1, !col2); Tokens.ROR(!lin1,!col1,!lin1,!col2));
"select"  => (col1:=yypos-(!eolpos); col2:=(!col1) + 5;  pri (yytext,!lin,!col1, !col2); Tokens.SELECT(!lin1,!col1,!lin1,!col2));
"severity"  => (col1:=yypos-(!eolpos); col2:=(!col1) + 7;  pri (yytext,!lin,!col1, !col2); Tokens.SEVERITY(!lin1,!col1,!lin1,!col2));
"shared"  => (col1:=yypos-(!eolpos); col2:=(!col1) + 5;  pri (yytext,!lin,!col1, !col2); Tokens.SHARED(!lin1,!col1,!lin1,!col2));
"signal"  => (col1:=yypos-(!eolpos); col2:=(!col1) + 5;  pri (yytext,!lin,!col1, !col2); Tokens.SIGNAL(!lin1,!col1,!lin1,!col2));
"sla"  => (col1:=yypos-(!eolpos); col2:=(!col1) + 2;  pri (yytext,!lin,!col1, !col2); Tokens.SLA(!lin1,!col1,!lin1,!col2));
"sll"  => (col1:=yypos-(!eolpos); col2:=(!col1) + 2;  pri (yytext,!lin,!col1, !col2); Tokens.SLL(!lin1,!col1,!lin1,!col2));
"sra"  => (col1:=yypos-(!eolpos); col2:=(!col1) + 2;  pri (yytext,!lin,!col1, !col2); Tokens.SRA(!lin1,!col1,!lin1,!col2));
"srl"  => (col1:=yypos-(!eolpos); col2:=(!col1) + 2;  pri (yytext,!lin,!col1, !col2); Tokens.SRL(!lin1,!col1,!lin1,!col2));
"subtype"  => (col1:=yypos-(!eolpos); col2:=(!col1) + 6;  pri (yytext,!lin,!col1, !col2); Tokens.SUBTYPE(!lin1,!col1,!lin1,!col2));
"then"  => (col1:=yypos-(!eolpos); col2:=(!col1) + 3;  pri (yytext,!lin,!col1, !col2); Tokens.THEN(!lin1,!col1,!lin1,!col2));
"to"  => (col1:=yypos-(!eolpos); col2:=(!col1) + 1;  pri (yytext,!lin,!col1, !col2); Tokens.TO(!lin1,!col1,!lin1,!col2));
"transport"  => (col1:=yypos-(!eolpos); col2:=(!col1) + 8;  pri (yytext,!lin,!col1, !col2); Tokens.TRANSPORT(!lin1,!col1,!lin1,!col2));
"type"  => (col1:=yypos-(!eolpos); col2:=(!col1) + 3;  pri (yytext,!lin,!col1, !col2); Tokens.TYPE(!lin1,!col1,!lin1,!col2));
"unaffected"  => (col1:=yypos-(!eolpos); col2:=(!col1) + 9;  pri (yytext,!lin,!col1, !col2); Tokens.UNAFFECTED(!lin1,!col1,!lin1,!col2));
"units"  => (col1:=yypos-(!eolpos); col2:=(!col1) + 4;  pri (yytext,!lin,!col1, !col2); Tokens.UNITS(!lin1,!col1,!lin1,!col2));
"until"  => (col1:=yypos-(!eolpos); col2:=(!col1) + 4;  pri (yytext,!lin,!col1, !col2); Tokens.UNTIL(!lin1,!col1,!lin1,!col2));
"use"  => (col1:=yypos-(!eolpos); col2:=(!col1) + 2;  pri (yytext,!lin,!col1, !col2); Tokens.USE(!lin1,!col1,!lin1,!col2));
"variable"  => (col1:=yypos-(!eolpos); col2:=(!col1) + 7;  pri (yytext,!lin,!col1, !col2); Tokens.VARIABLE(!lin1,!col1,!lin1,!col2));
"wait"  => (col1:=yypos-(!eolpos); col2:=(!col1) + 3;  pri (yytext,!lin,!col1, !col2); Tokens.WAIT(!lin1,!col1,!lin1,!col2));
"when"  => (col1:=yypos-(!eolpos); col2:=(!col1) + 3;  pri (yytext,!lin,!col1, !col2); Tokens.WHEN(!lin1,!col1,!lin1,!col2));
"while"  => (col1:=yypos-(!eolpos); col2:=(!col1) + 4;  pri (yytext,!lin,!col1, !col2); Tokens.WHILE(!lin1,!col1,!lin1,!col2));
"with"  => (col1:=yypos-(!eolpos); col2:=(!col1) + 3;  pri (yytext,!lin,!col1, !col2); Tokens.WITH(!lin1,!col1,!lin1,!col2));
"xnor"  => (col1:=yypos-(!eolpos); col2:=(!col1) + 3;  pri (yytext,!lin,!col1, !col2); Tokens.XNOR(!lin1,!col1,!lin1,!col2));
"xor"  => (col1:=yypos-(!eolpos); col2:=(!col1) + 2;  pri (yytext,!lin,!col1, !col2); Tokens.XOR(!lin1,!col1,!lin1,!col2));

{digit} => (col1:=yypos-(!eolpos); col2:=(!col1) + size yytext - 1;  pri (yytext,!lin,!col1, !col2); Tokens.INT_CONST(yytext,!lin1,!col1,!lin1,!col2));
{id} => (col1:=yypos-(!eolpos); col2:=(!col1) + size yytext - 1;  pri (yytext,!lin,!col1, !col2); Tokens.ID(yytext,!lin1,!col1,!lin1,!col2));

{whitespace}+ => (continue());
{eol} => (lin1:=(!lin1)+1; eolpos:=yypos+size yytext; continue());

. => (col1:=yypos-(!eolpos); badCh (fileName,yytext,!lin1,!col1,!lin1,!col2); continue());

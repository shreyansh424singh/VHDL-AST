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

{digit} => (col:=yypos-(!eolpos); Tokens.INT_CONST(yytext,!lin,!col));
{id} => (col:=yypos-(!eolpos); Tokens.ID(yytext,!lin,!col));

{whitespace}+ => (continue());
{eol} => (lin:=(!lin)+1; eolpos:=yypos+size yytext; continue());

. => (col:=yypos-(!eolpos); badCh (fileName,yytext,!lin,!col); continue());

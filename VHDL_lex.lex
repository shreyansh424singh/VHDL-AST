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
            "["^Int.toString line^"."^Int.toString col1
            ^"]  -  "^  "["^Int.toString line^"."^
            Int.toString col2^"]" ^  "\n");

    val eof = fn fileName => Tokens.EOF (!lin1,!col1,!lin1,!col2);

%%
%header (functor WhlLexFun(structure Tokens: Whl_TOKENS));
%arg (fileName:string);
id = [a-zA-Z]+[a-zA-Z0-9]*;
whitespace = [\ \t]+;
int =  ["+"|"-"]?[0-9]+;
real_num = ["+"|"-"]?[0-9]+["."][0-9]+;
hex_num = ["16#"]?[0-9A-Fa-f]["#"]?;
bin_num = ["2#"]?[0-1_]+["#"]?;
realExp_num = ["+"|"-"]?[0-9]+["."][0-9]+["E""e"]["+"|"-"]?[0-9]+;
bin_vec = [bB]["\""][0-1_]+["\""];
dec_vec = ["0"]?["\""][0-9]+["\""];
hex_vec = [xX]["\""][0-9a-fA-F]+["\""];
strig = \"[.*]+\";
element = [\'][.*]+[\'];
comment = ["-"]["-"][.*]+["\n"];
eol = ("\013\010"|"\010"|"\013");

%%

"=>" => (col1:=yypos-(!eolpos); col2:=(!col1) + 1;  pri (yytext,!lin1,!col1, !col2); Tokens.ARROW(!lin1,!col1,!lin1,!col2));
"**" => (col1:=yypos-(!eolpos); col2:=(!col1) + 1;  pri (yytext,!lin1,!col1, !col2); Tokens.EXPT(!lin1,!col1,!lin1,!col2));
":=" => (col1:=yypos-(!eolpos); col2:=(!col1) + 1;  pri (yytext,!lin1,!col1, !col2); Tokens.ASSIGN(!lin1,!col1,!lin1,!col2));
"/=" => (col1:=yypos-(!eolpos); col2:=(!col1) + 1;  pri (yytext,!lin1,!col1, !col2); Tokens.NEQ(!lin1,!col1,!lin1,!col2));
">=" => (col1:=yypos-(!eolpos); col2:=(!col1) + 1;  pri (yytext,!lin1,!col1, !col2); Tokens.GE(!lin1,!col1,!lin1,!col2));
"<=" => (col1:=yypos-(!eolpos); col2:=(!col1) + 1;  pri (yytext,!lin1,!col1, !col2); Tokens.LE(!lin1,!col1,!lin1,!col2));
"<>" => (col1:=yypos-(!eolpos); col2:=(!col1) + 1;  pri (yytext,!lin1,!col1, !col2); Tokens.BOX(!lin1,!col1,!lin1,!col2));
"&" => (col1:=yypos-(!eolpos); col2:=(!col1);  pri (yytext,!lin1,!col1, !col2); Tokens.AMP(!lin1,!col1,!lin1,!col2));
"'" => (col1:=yypos-(!eolpos); col2:=(!col1);  pri (yytext,!lin1,!col1, !col2); Tokens.TICK(!lin1,!col1,!lin1,!col2));
"(" => (col1:=yypos-(!eolpos); col2:=(!col1);  pri (yytext,!lin1,!col1, !col2); Tokens.LPARAN(!lin1,!col1,!lin1,!col2));
")" => (col1:=yypos-(!eolpos); col2:=(!col1);  pri (yytext,!lin1,!col1, !col2); Tokens.RPARAN(!lin1,!col1,!lin1,!col2));
"*"  => (col1:=yypos-(!eolpos); col2:=(!col1);  pri (yytext,!lin1,!col1, !col2); Tokens.MULT(!lin1,!col1,!lin1,!col2));
"+"  => (col1:=yypos-(!eolpos); col2:=(!col1);  pri (yytext,!lin1,!col1, !col2); Tokens.PLUS(!lin1,!col1,!lin1,!col2));
"," => (col1:=yypos-(!eolpos); col2:=(!col1);  pri (yytext,!lin1,!col1, !col2); Tokens.COMMA(!lin1,!col1,!lin1,!col2));
"-"  => (col1:=yypos-(!eolpos); col2:=(!col1);  pri (yytext,!lin1,!col1, !col2); Tokens.MINUS(!lin1,!col1,!lin1,!col2));
"."  => (col1:=yypos-(!eolpos); col2:=(!col1);  pri (yytext,!lin1,!col1, !col2); Tokens.DOT(!lin1,!col1,!lin1,!col2));
"/"  => (col1:=yypos-(!eolpos); col2:=(!col1);  pri (yytext,!lin1,!col1, !col2); Tokens.DIV(!lin1,!col1,!lin1,!col2));
":" => (col1:=yypos-(!eolpos); col2:=(!col1);  pri (yytext,!lin1,!col1, !col2); Tokens.COLON(!lin1,!col1,!lin1,!col2));
";" => (col1:=yypos-(!eolpos); col2:=(!col1);  pri (yytext,!lin1,!col1, !col2); Tokens.SEMICOLON(!lin1,!col1,!lin1,!col2));
"<"  => (col1:=yypos-(!eolpos); col2:=(!col1);  pri (yytext,!lin1,!col1, !col2); Tokens.LT(!lin1,!col1,!lin1,!col2));
"=" => (col1:=yypos-(!eolpos); col2:=(!col1);  pri (yytext,!lin1,!col1, !col2); Tokens.EQ(!lin1,!col1,!lin1,!col2));
">"  => (col1:=yypos-(!eolpos); col2:=(!col1);  pri (yytext,!lin1,!col1, !col2); Tokens.GT(!lin1,!col1,!lin1,!col2));
"|"  => (col1:=yypos-(!eolpos); col2:=(!col1);  pri (yytext,!lin1,!col1, !col2); Tokens.BAR(!lin1,!col1,!lin1,!col2));
"["  => (col1:=yypos-(!eolpos); col2:=(!col1);  pri (yytext,!lin1,!col1, !col2); Tokens.LSQUARE(!lin1,!col1,!lin1,!col2));
"]"  => (col1:=yypos-(!eolpos); col2:=(!col1);  pri (yytext,!lin1,!col1, !col2); Tokens.RSQUARE(!lin1,!col1,!lin1,!col2));

["a""A"]["b""B"]["s""S"]  => (col1:=yypos-(!eolpos); col2:=(!col1) + 2;  pri (yytext,!lin1,!col1, !col2); Tokens.ABS(!lin1,!col1,!lin1,!col2));
["a""A"]["c""C"]["c""C"]["e""E"]["s""S"]["s""S"]  => (col1:=yypos-(!eolpos); col2:=(!col1) + 5;  pri (yytext,!lin1,!col1, !col2); Tokens.ACCESS(!lin1,!col1,!lin1,!col2));
["a""A"]["f""F"]["t""T"]["e""E"]["r""R"]  => (col1:=yypos-(!eolpos); col2:=(!col1) + 4;  pri (yytext,!lin1,!col1, !col2); Tokens.AFTER(!lin1,!col1,!lin1,!col2));
["a""A"]["l""L"]["i""I"]["a""A"]["s""S"]  => (col1:=yypos-(!eolpos); col2:=(!col1) + 4;  pri (yytext,!lin1,!col1, !col2); Tokens.ALIAS(!lin1,!col1,!lin1,!col2));
["a""A"]["l""L"]["l""L"]  => (col1:=yypos-(!eolpos); col2:=(!col1) + 2;  pri (yytext,!lin1,!col1, !col2); Tokens.ALL(!lin1,!col1,!lin1,!col2));
["a""A"]["n""N"]["d""D"]  => (col1:=yypos-(!eolpos); col2:=(!col1) + 2;  pri (yytext,!lin1,!col1, !col2); Tokens.AND(!lin1,!col1,!lin1,!col2));
["a""A"]["r""R"]["c""C"]["h""H"]["i""I"]["t""T"]["e""E"]["c""C"]["t""T"]["u""U"]["r""R"]["e""E"]  => (col1:=yypos-(!eolpos); col2:=(!col1) + 11;  pri (yytext,!lin1,!col1, !col2); Tokens.ARCHITECTURE(!lin1,!col1,!lin1,!col2));
["a""A"]["r""R"]["r""R"]["a""A"]["y""Y"]  => (col1:=yypos-(!eolpos); col2:=(!col1) + 4;  pri (yytext,!lin1,!col1, !col2); Tokens.ARRAY(!lin1,!col1,!lin1,!col2));
["a""A"]["s""S"]["s""S"]["e""E"]["r""R"]["t""T"]  => (col1:=yypos-(!eolpos); col2:=(!col1) + 5;  pri (yytext,!lin1,!col1, !col2); Tokens.ASSERT(!lin1,!col1,!lin1,!col2));
["a""A"]["t""T"]["t""T"]["r""R"]["i""I"]["b""B"]["u""U"]["t""T"]["e""E"]  => (col1:=yypos-(!eolpos); col2:=(!col1) + 8;  pri (yytext,!lin1,!col1, !col2); Tokens.ATRIBUTE(!lin1,!col1,!lin1,!col2));
["b""B"]["e""E"]["g""G"]["i""I"]["n""N"]  => (col1:=yypos-(!eolpos); col2:=(!col1) + 4;  pri (yytext,!lin1,!col1, !col2); Tokens.BEGIN(!lin1,!col1,!lin1,!col2));
["b""B"]["l""L"]["o""O"]["c""C"]["k""K"]  => (col1:=yypos-(!eolpos); col2:=(!col1) + 4;  pri (yytext,!lin1,!col1, !col2); Tokens.BLOCK(!lin1,!col1,!lin1,!col2));
["b""B"]["o""O"]["d""D"]["y""Y"]  => (col1:=yypos-(!eolpos); col2:=(!col1) + 3;  pri (yytext,!lin1,!col1, !col2); Tokens.BODY(!lin1,!col1,!lin1,!col2));
["b""B"]["u""U"]["f""F"]["f""F"]["e""E"]["r""R"]  => (col1:=yypos-(!eolpos); col2:=(!col1) + 5;  pri (yytext,!lin1,!col1, !col2); Tokens.BUFFER(!lin1,!col1,!lin1,!col2));
["b""B"]["u""U"]["s""S"]  => (col1:=yypos-(!eolpos); col2:=(!col1) + 2;  pri (yytext,!lin1,!col1, !col2); Tokens.BUS(!lin1,!col1,!lin1,!col2));
["c""C"]["a""A"]["s""S"]["e""E"]  => (col1:=yypos-(!eolpos); col2:=(!col1) + 3;  pri (yytext,!lin1,!col1, !col2); Tokens.CASE(!lin1,!col1,!lin1,!col2));
["c""C"]["o""O"]["m""M"]["p""P"]["o""O"]["n""N"]["e""E"]["n""N"]["t""T"]  => (col1:=yypos-(!eolpos); col2:=(!col1) + 8;  pri (yytext,!lin1,!col1, !col2); Tokens.COMPONENT(!lin1,!col1,!lin1,!col2));
["c""C"]["o""O"]["n""N"]["f""F"]["i""I"]["g""G"]["u""U"]["r""R"]["a""A"]["t""T"]["i""I"]["o""O"]["n""N"]  => (col1:=yypos-(!eolpos); col2:=(!col1) + 12;  pri (yytext,!lin1,!col1, !col2); Tokens.CONFIGURATION(!lin1,!col1,!lin1,!col2));
["c""C"]["o""O"]["n""N"]["s""S"]["t""T"]["a""A"]["n""N"]["t""T"]  => (col1:=yypos-(!eolpos); col2:=(!col1) + 7;  pri (yytext,!lin1,!col1, !col2); Tokens.CONSTANT(!lin1,!col1,!lin1,!col2));
["d""D"]["i""I"]["s""S"]["c""C"]["o""O"]["n""N"]["n""N"]["e""E"]["c""C"]["t""T"]  => (col1:=yypos-(!eolpos); col2:=(!col1) + 9;  pri (yytext,!lin1,!col1, !col2); Tokens.DISCONNECT(!lin1,!col1,!lin1,!col2));
["d""D"]["o""O"]["w""W"]["n""N"]["t""T"]["o""O"]  => (col1:=yypos-(!eolpos); col2:=(!col1) + 5;  pri (yytext,!lin1,!col1, !col2); Tokens.DOWNTO(!lin1,!col1,!lin1,!col2));
["e""E"]["l""L"]["s""S"]["e""E"]  => (col1:=yypos-(!eolpos); col2:=(!col1) + 3;  pri (yytext,!lin1,!col1, !col2); Tokens.ELSE(!lin1,!col1,!lin1,!col2));
["e""E"]["l""L"]["s""S"]["i""I"]["f""F"]  => (col1:=yypos-(!eolpos); col2:=(!col1) + 4;  pri (yytext,!lin1,!col1, !col2); Tokens.ELSIF(!lin1,!col1,!lin1,!col2));
["e""E"]["n""N"]["d""D"]  => (col1:=yypos-(!eolpos); col2:=(!col1) + 2;  pri (yytext,!lin1,!col1, !col2); Tokens.END(!lin1,!col1,!lin1,!col2));
["e""E"]["n""N"]["t""T"]["i""I"]["t""T"]["y""Y"]  => (col1:=yypos-(!eolpos); col2:=(!col1) + 5;  pri (yytext,!lin1,!col1, !col2); Tokens.ENTITY(!lin1,!col1,!lin1,!col2));
["e""E"]["x""X"]["i""I"]["t""T"]  => (col1:=yypos-(!eolpos); col2:=(!col1) + 3;  pri (yytext,!lin1,!col1, !col2); Tokens.EXIT(!lin1,!col1,!lin1,!col2));
["f""F"]["i""I"]["l""L"]["e""E"]  => (col1:=yypos-(!eolpos); col2:=(!col1) + 3;  pri (yytext,!lin1,!col1, !col2); Tokens.FILE(!lin1,!col1,!lin1,!col2));
["f""F"]["o""O"]["r""R"]  => (col1:=yypos-(!eolpos); col2:=(!col1) + 2;  pri (yytext,!lin1,!col1, !col2); Tokens.FOR(!lin1,!col1,!lin1,!col2));
["f""F"]["u""U"]["n""N"]["c""C"]["t""T"]["i""I"]["o""O"]["n""N"]  => (col1:=yypos-(!eolpos); col2:=(!col1) + 7;  pri (yytext,!lin1,!col1, !col2); Tokens.FUNCTION(!lin1,!col1,!lin1,!col2));
["g""G"]["e""E"]["n""N"]["e""E"]["r""R"]["a""A"]["t""T"]["e""E"]  => (col1:=yypos-(!eolpos); col2:=(!col1) + 7;  pri (yytext,!lin1,!col1, !col2); Tokens.GENERATE(!lin1,!col1,!lin1,!col2));
["g""G"]["e""E"]["n""N"]["e""E"]["r""R"]["i""I"]["c""C"]  => (col1:=yypos-(!eolpos); col2:=(!col1) + 6;  pri (yytext,!lin1,!col1, !col2); Tokens.GENERIC(!lin1,!col1,!lin1,!col2));
["g""G"]["r""R"]["o""O"]["u""U"]["p""P"]  => (col1:=yypos-(!eolpos); col2:=(!col1) + 4;  pri (yytext,!lin1,!col1, !col2); Tokens.GROUP(!lin1,!col1,!lin1,!col2));
["g""G"]["u""U"]["a""A"]["r""R"]["d""D"]["e""E"]["d""D"]  => (col1:=yypos-(!eolpos); col2:=(!col1) + 6;  pri (yytext,!lin1,!col1, !col2); Tokens.GUARDED(!lin1,!col1,!lin1,!col2));
["i""I"]["f""F"]  => (col1:=yypos-(!eolpos); col2:=(!col1) + 1;  pri (yytext,!lin1,!col1, !col2); Tokens.IF(!lin1,!col1,!lin1,!col2));
["i""I"]["m""M"]["p""P"]["u""U"]["r""R"]["e""E"]  => (col1:=yypos-(!eolpos); col2:=(!col1) + 5;  pri (yytext,!lin1,!col1, !col2); Tokens.IMPURE(!lin1,!col1,!lin1,!col2));
["i""I"]["n""N"]  => (col1:=yypos-(!eolpos); col2:=(!col1) + 1;  pri (yytext,!lin1,!col1, !col2); Tokens.IN(!lin1,!col1,!lin1,!col2));
["i""I"]["n""N"]["e""E"]["r""R"]["t""T"]["i""I"]["a""A"]["l""L"]  => (col1:=yypos-(!eolpos); col2:=(!col1) + 7;  pri (yytext,!lin1,!col1, !col2); Tokens.INERTIAL(!lin1,!col1,!lin1,!col2));
["i""I"]["n""N"]["o""O"]["u""U"]["t""T"]  => (col1:=yypos-(!eolpos); col2:=(!col1) + 4;  pri (yytext,!lin1,!col1, !col2); Tokens.INOUT(!lin1,!col1,!lin1,!col2));
["i""I"]["s""S"]  => (col1:=yypos-(!eolpos); col2:=(!col1) + 1;  pri (yytext,!lin1,!col1, !col2); Tokens.IS(!lin1,!col1,!lin1,!col2));
["l""L"]["a""A"]["b""B"]["e""E"]["l""L"]  => (col1:=yypos-(!eolpos); col2:=(!col1) + 4;  pri (yytext,!lin1,!col1, !col2); Tokens.LABEL(!lin1,!col1,!lin1,!col2));
["l""L"]["i""I"]["b""B"]["r""R"]["a""A"]["r""R"]["y""Y"]  => (col1:=yypos-(!eolpos); col2:=(!col1) + 6;  pri (yytext,!lin1,!col1, !col2); Tokens.LIBRARY(!lin1,!col1,!lin1,!col2));
["l""L"]["i""I"]["n""N"]["k""K"]["a""A"]["g""G"]["e""E"]  => (col1:=yypos-(!eolpos); col2:=(!col1) + 6;  pri (yytext,!lin1,!col1, !col2); Tokens.LINKAGE(!lin1,!col1,!lin1,!col2));
["l""L"]["i""I"]["t""T"]["e""E"]["r""R"]["a""A"]["l""L"]  => (col1:=yypos-(!eolpos); col2:=(!col1) + 6;  pri (yytext,!lin1,!col1, !col2); Tokens.LITERAL(!lin1,!col1,!lin1,!col2));
["l""L"]["o""O"]["o""O"]["p""P"]  => (col1:=yypos-(!eolpos); col2:=(!col1) + 3;  pri (yytext,!lin1,!col1, !col2); Tokens.LOOP(!lin1,!col1,!lin1,!col2));
["m""M"]["a""A"]["p""P"]  => (col1:=yypos-(!eolpos); col2:=(!col1) + 2;  pri (yytext,!lin1,!col1, !col2); Tokens.MAP(!lin1,!col1,!lin1,!col2));
["m""M"]["o""O"]["d""D"]  => (col1:=yypos-(!eolpos); col2:=(!col1) + 2;  pri (yytext,!lin1,!col1, !col2); Tokens.MOD(!lin1,!col1,!lin1,!col2));
["n""N"]["a""A"]["n""N"]["d""D"]  => (col1:=yypos-(!eolpos); col2:=(!col1) + 3;  pri (yytext,!lin1,!col1, !col2); Tokens.NAND(!lin1,!col1,!lin1,!col2));
["n""N"]["e""E"]["w""W"]  => (col1:=yypos-(!eolpos); col2:=(!col1) + 2;  pri (yytext,!lin1,!col1, !col2); Tokens.NEW(!lin1,!col1,!lin1,!col2));
["n""N"]["e""E"]["x""X"]["t""T"]  => (col1:=yypos-(!eolpos); col2:=(!col1) + 3;  pri (yytext,!lin1,!col1, !col2); Tokens.NEXT(!lin1,!col1,!lin1,!col2));
["n""N"]["o""O"]["r""R"]  => (col1:=yypos-(!eolpos); col2:=(!col1) + 2;  pri (yytext,!lin1,!col1, !col2); Tokens.NOR(!lin1,!col1,!lin1,!col2));
["n""N"]["o""O"]["t""T"]  => (col1:=yypos-(!eolpos); col2:=(!col1) + 2;  pri (yytext,!lin1,!col1, !col2); Tokens.NOT(!lin1,!col1,!lin1,!col2));
["n""N"]["u""U"]["l""L"]["l""L"]  => (col1:=yypos-(!eolpos); col2:=(!col1) + 3;  pri (yytext,!lin1,!col1, !col2); Tokens.NULL(!lin1,!col1,!lin1,!col2));
["o""O"]["f""F"]  => (col1:=yypos-(!eolpos); col2:=(!col1) + 1;  pri (yytext,!lin1,!col1, !col2); Tokens.OF(!lin1,!col1,!lin1,!col2));
["o""O"]["n""N"]  => (col1:=yypos-(!eolpos); col2:=(!col1) + 1;  pri (yytext,!lin1,!col1, !col2); Tokens.ON(!lin1,!col1,!lin1,!col2));
["o""O"]["p""P"]["e""E"]["n""N"]  => (col1:=yypos-(!eolpos); col2:=(!col1) + 3;  pri (yytext,!lin1,!col1, !col2); Tokens.OPEN(!lin1,!col1,!lin1,!col2));
["o""O"]["r""R"]  => (col1:=yypos-(!eolpos); col2:=(!col1) + 1;  pri (yytext,!lin1,!col1, !col2); Tokens.OR(!lin1,!col1,!lin1,!col2));
["o""O"]["t""T"]["h""H"]["e""E"]["r""R"]["s""S"]  => (col1:=yypos-(!eolpos); col2:=(!col1) + 5;  pri (yytext,!lin1,!col1, !col2); Tokens.OTHERS(!lin1,!col1,!lin1,!col2));
["o""O"]["u""U"]["t""T"]  => (col1:=yypos-(!eolpos); col2:=(!col1) + 2;  pri (yytext,!lin1,!col1, !col2); Tokens.OUT(!lin1,!col1,!lin1,!col2));
["p""P"]["a""A"]["c""C"]["k""K"]["a""A"]["g""G"]["e""E"]  => (col1:=yypos-(!eolpos); col2:=(!col1) + 6;  pri (yytext,!lin1,!col1, !col2); Tokens.PACKAGE(!lin1,!col1,!lin1,!col2));
["p""P"]["o""O"]["r""R"]["t""T"]  => (col1:=yypos-(!eolpos); col2:=(!col1) + 3;  pri (yytext,!lin1,!col1, !col2); Tokens.PORT(!lin1,!col1,!lin1,!col2));
["p""P"]["o""O"]["s""S"]["t""T"]["p""P"]["o""O"]["n""N"]["e""E"]["d""D"]  => (col1:=yypos-(!eolpos); col2:=(!col1) + 8;  pri (yytext,!lin1,!col1, !col2); Tokens.POSTPONED(!lin1,!col1,!lin1,!col2));
["p""P"]["r""R"]["o""O"]["c""C"]["e""E"]["d""D"]["u""U"]["r""R"]["e""E"]  => (col1:=yypos-(!eolpos); col2:=(!col1) + 8;  pri (yytext,!lin1,!col1, !col2); Tokens.PROCEDURE(!lin1,!col1,!lin1,!col2));
["p""P"]["r""R"]["o""O"]["c""C"]["e""E"]["s""S"]["s""S"]  => (col1:=yypos-(!eolpos); col2:=(!col1) + 6;  pri (yytext,!lin1,!col1, !col2); Tokens.PROCESS(!lin1,!col1,!lin1,!col2));
["p""P"]["r""R"]["o""O"]["t""T"]["e""E"]["c""C"]["t""T"]["e""E"]["d""D"]  => (col1:=yypos-(!eolpos); col2:=(!col1) + 8;  pri (yytext,!lin1,!col1, !col2); Tokens.PROTECTED(!lin1,!col1,!lin1,!col2));
["p""P"]["u""U"]["r""R"]["e""E"]  => (col1:=yypos-(!eolpos); col2:=(!col1) + 3;  pri (yytext,!lin1,!col1, !col2); Tokens.PURE(!lin1,!col1,!lin1,!col2));
["r""R"]["a""A"]["n""N"]["g""G"]["e""E"]  => (col1:=yypos-(!eolpos); col2:=(!col1) + 4;  pri (yytext,!lin1,!col1, !col2); Tokens.RANGE(!lin1,!col1,!lin1,!col2));
["r""R"]["e""E"]["c""C"]["o""O"]["r""R"]["d""D"]  => (col1:=yypos-(!eolpos); col2:=(!col1) + 5;  pri (yytext,!lin1,!col1, !col2); Tokens.RECORD(!lin1,!col1,!lin1,!col2));
["r""R"]["e""E"]["g""G"]["i""I"]["s""S"]["t""T"]["e""E"]["r""R"]  => (col1:=yypos-(!eolpos); col2:=(!col1) + 7;  pri (yytext,!lin1,!col1, !col2); Tokens.REGISTER(!lin1,!col1,!lin1,!col2));
["r""R"]["e""E"]["j""J"]["e""E"]["c""C"]["t""T"]  => (col1:=yypos-(!eolpos); col2:=(!col1) + 5;  pri (yytext,!lin1,!col1, !col2); Tokens.REJECT(!lin1,!col1,!lin1,!col2));
["r""R"]["e""E"]["m""M"]  => (col1:=yypos-(!eolpos); col2:=(!col1) + 2;  pri (yytext,!lin1,!col1, !col2); Tokens.REM(!lin1,!col1,!lin1,!col2));
["r""R"]["e""E"]["p""P"]["o""O"]["r""R"]["t""T"]  => (col1:=yypos-(!eolpos); col2:=(!col1) + 5;  pri (yytext,!lin1,!col1, !col2); Tokens.REPORT(!lin1,!col1,!lin1,!col2));
["r""R"]["e""E"]["t""T"]["u""U"]["r""R"]["n""N"]  => (col1:=yypos-(!eolpos); col2:=(!col1) + 5;  pri (yytext,!lin1,!col1, !col2); Tokens.RETURN(!lin1,!col1,!lin1,!col2));
["r""R"]["o""O"]["l""L"]  => (col1:=yypos-(!eolpos); col2:=(!col1) + 2;  pri (yytext,!lin1,!col1, !col2); Tokens.ROL(!lin1,!col1,!lin1,!col2));
["r""R"]["o""O"]["r""R"]  => (col1:=yypos-(!eolpos); col2:=(!col1) + 2;  pri (yytext,!lin1,!col1, !col2); Tokens.ROR(!lin1,!col1,!lin1,!col2));
["s""S"]["e""E"]["l""L"]["e""E"]["c""C"]["t""T"]  => (col1:=yypos-(!eolpos); col2:=(!col1) + 5;  pri (yytext,!lin1,!col1, !col2); Tokens.SELECT(!lin1,!col1,!lin1,!col2));
["s""S"]["e""E"]["v""V"]["e""E"]["r""R"]["i""I"]["t""T"]["y""Y"]  => (col1:=yypos-(!eolpos); col2:=(!col1) + 7;  pri (yytext,!lin1,!col1, !col2); Tokens.SEVERITY(!lin1,!col1,!lin1,!col2));
["s""S"]["h""H"]["a""A"]["r""R"]["e""E"]["d""D"]  => (col1:=yypos-(!eolpos); col2:=(!col1) + 5;  pri (yytext,!lin1,!col1, !col2); Tokens.SHARED(!lin1,!col1,!lin1,!col2));
["s""S"]["i""I"]["g""G"]["n""N"]["a""A"]["l""L"]  => (col1:=yypos-(!eolpos); col2:=(!col1) + 5;  pri (yytext,!lin1,!col1, !col2); Tokens.SIGNAL(!lin1,!col1,!lin1,!col2));
["s""S"]["l""L"]["a""A"]  => (col1:=yypos-(!eolpos); col2:=(!col1) + 2;  pri (yytext,!lin1,!col1, !col2); Tokens.SLA(!lin1,!col1,!lin1,!col2));
["s""S"]["l""L"]["l""L"]  => (col1:=yypos-(!eolpos); col2:=(!col1) + 2;  pri (yytext,!lin1,!col1, !col2); Tokens.SLL(!lin1,!col1,!lin1,!col2));
["s""S"]["r""R"]["a""A"]  => (col1:=yypos-(!eolpos); col2:=(!col1) + 2;  pri (yytext,!lin1,!col1, !col2); Tokens.SRA(!lin1,!col1,!lin1,!col2));
["s""S"]["r""R"]["l""L"]  => (col1:=yypos-(!eolpos); col2:=(!col1) + 2;  pri (yytext,!lin1,!col1, !col2); Tokens.SRL(!lin1,!col1,!lin1,!col2));
["s""S"]["u""U"]["b""B"]["t""T"]["y""Y"]["p""P"]["e""E"]  => (col1:=yypos-(!eolpos); col2:=(!col1) + 6;  pri (yytext,!lin1,!col1, !col2); Tokens.SUBTYPE(!lin1,!col1,!lin1,!col2));
["t""T"]["h""H"]["e""E"]["n""N"]  => (col1:=yypos-(!eolpos); col2:=(!col1) + 3;  pri (yytext,!lin1,!col1, !col2); Tokens.THEN(!lin1,!col1,!lin1,!col2));
["t""T"]["o""O"]  => (col1:=yypos-(!eolpos); col2:=(!col1) + 1;  pri (yytext,!lin1,!col1, !col2); Tokens.TO(!lin1,!col1,!lin1,!col2));
["t""T"]["r""R"]["a""A"]["n""N"]["s""S"]["p""P"]["o""O"]["r""R"]["t""T"]  => (col1:=yypos-(!eolpos); col2:=(!col1) + 8;  pri (yytext,!lin1,!col1, !col2); Tokens.TRANSPORT(!lin1,!col1,!lin1,!col2));
["t""T"]["y""Y"]["p""P"]["e""E"]  => (col1:=yypos-(!eolpos); col2:=(!col1) + 3;  pri (yytext,!lin1,!col1, !col2); Tokens.TYPE(!lin1,!col1,!lin1,!col2));
["u""U"]["n""N"]["a""A"]["f""F"]["f""F"]["e""E"]["c""C"]["t""T"]["e""E"]["d""D"]  => (col1:=yypos-(!eolpos); col2:=(!col1) + 9;  pri (yytext,!lin1,!col1, !col2); Tokens.UNAFFECTED(!lin1,!col1,!lin1,!col2));
["u""U"]["n""N"]["i""I"]["t""T"]["s""S"]  => (col1:=yypos-(!eolpos); col2:=(!col1) + 4;  pri (yytext,!lin1,!col1, !col2); Tokens.UNITS(!lin1,!col1,!lin1,!col2));
["u""U"]["n""N"]["t""T"]["i""I"]["l""L"]  => (col1:=yypos-(!eolpos); col2:=(!col1) + 4;  pri (yytext,!lin1,!col1, !col2); Tokens.UNTIL(!lin1,!col1,!lin1,!col2));
["u""U"]["s""S"]["e""E"]  => (col1:=yypos-(!eolpos); col2:=(!col1) + 2;  pri (yytext,!lin1,!col1, !col2); Tokens.USE(!lin1,!col1,!lin1,!col2));
["v""V"]["a""A"]["r""R"]["i""I"]["a""A"]["b""B"]["l""L"]["e""E"]  => (col1:=yypos-(!eolpos); col2:=(!col1) + 7;  pri (yytext,!lin1,!col1, !col2); Tokens.VARIABLE(!lin1,!col1,!lin1,!col2));
["w""W"]["a""A"]["i""I"]["t""T"]  => (col1:=yypos-(!eolpos); col2:=(!col1) + 3;  pri (yytext,!lin1,!col1, !col2); Tokens.WAIT(!lin1,!col1,!lin1,!col2));
["w""W"]["h""H"]["e""E"]["n""N"]  => (col1:=yypos-(!eolpos); col2:=(!col1) + 3;  pri (yytext,!lin1,!col1, !col2); Tokens.WHEN(!lin1,!col1,!lin1,!col2));
["w""W"]["h""H"]["i""I"]["l""L"]["e""E"]  => (col1:=yypos-(!eolpos); col2:=(!col1) + 4;  pri (yytext,!lin1,!col1, !col2); Tokens.WHILE(!lin1,!col1,!lin1,!col2));
["w""W"]["i""I"]["t""T"]["h""H"]  => (col1:=yypos-(!eolpos); col2:=(!col1) + 3;  pri (yytext,!lin1,!col1, !col2); Tokens.WITH(!lin1,!col1,!lin1,!col2));
["x""X"]["n""N"]["o""O"]["r""R"]  => (col1:=yypos-(!eolpos); col2:=(!col1) + 3;  pri (yytext,!lin1,!col1, !col2); Tokens.XNOR(!lin1,!col1,!lin1,!col2));
["x""X"]["o""O"]["r""R"]  => (col1:=yypos-(!eolpos); col2:=(!col1) + 2;  pri (yytext,!lin1,!col1, !col2); Tokens.XOR(!lin1,!col1,!lin1,!col2));
["v""V"]["a""A"]["l""L"]  => (col1:=yypos-(!eolpos); col2:=(!col1) + 2;  pri (yytext,!lin1,!col1, !col2); Tokens.VAL(!lin1,!col1,!lin1,!col2));
["l""L"]["s""S"]["t""T"]  => (col1:=yypos-(!eolpos); col2:=(!col1) + 2;  pri (yytext,!lin1,!col1, !col2); Tokens.LST(!lin1,!col1,!lin1,!col2));
["e""E"]["l""L"]["t""T"]  => (col1:=yypos-(!eolpos); col2:=(!col1) + 2;  pri (yytext,!lin1,!col1, !col2); Tokens.ELT(!lin1,!col1,!lin1,!col2));
["p""P"]["o""O"]["s""S"]  => (col1:=yypos-(!eolpos); col2:=(!col1) + 2;  pri (yytext,!lin1,!col1, !col2); Tokens.POS(!lin1,!col1,!lin1,!col2));
["l""L"]["e""E"]["n""N"]  => (col1:=yypos-(!eolpos); col2:=(!col1) + 2;  pri (yytext,!lin1,!col1, !col2); Tokens.LEN(!lin1,!col1,!lin1,!col2));

["s""S"]["t""T"]["d""D"]["_"]["l""L"]["o""O"]["g""G"]["i""I"]["c""C"]  => (col1:=yypos-(!eolpos); col2:=(!col1) + 8;  pri (yytext,!lin1,!col1, !col2); Tokens.STD_LOGIC(!lin1,!col1,!lin1,!col2));
["s""S"]["t""T"]["d""D"]["_"]["l""L"]["o""O"]["g""G"]["i""I"]["c""C"]["_"]["v""V"]["e""E"]["c""C"]["t""T"]["o""O"]["r""R"]  => (col1:=yypos-(!eolpos); col2:=(!col1) + 15;  pri (yytext,!lin1,!col1, !col2); Tokens.STD_LOGIC_VECTOR(!lin1,!col1,!lin1,!col2));
["s""S"]["t""T"]["d""D"]["_"]["u""U"]["l""L"]["o""O"]["g""G"]["i""I"]["c""C"]  => (col1:=yypos-(!eolpos); col2:=(!col1) + 9;  pri (yytext,!lin1,!col1, !col2); Tokens.STD_ULOGIC(!lin1,!col1,!lin1,!col2));
["s""S"]["t""T"]["d""D"]["_"]["u""U"]["l""L"]["o""O"]["g""G"]["i""I"]["c""C"]["_"]["v""V"]["e""E"]["c""C"]["t""T"]["o""O"]["r""R"]  => (col1:=yypos-(!eolpos); col2:=(!col1) + 16;  pri (yytext,!lin1,!col1, !col2); Tokens.STD_ULOGIC_VECTOR(!lin1,!col1,!lin1,!col2));
["b""B"]["i""I"]["t""T"]  => (col1:=yypos-(!eolpos); col2:=(!col1) + 2;  pri (yytext,!lin1,!col1, !col2); Tokens.BIT(!lin1,!col1,!lin1,!col2));
["b""B"]["i""I"]["t""T"]["_"]["v""V"]["e""E"]["c""C"]["t""T"]["o""O"]["r""R"]  => (col1:=yypos-(!eolpos); col2:=(!col1) + 9;  pri (yytext,!lin1,!col1, !col2); Tokens.BIT_VECTOR(!lin1,!col1,!lin1,!col2));
["s""S"]["t""T"]["r""R"]["i""I"]["n""N"]["g""G"]  => (col1:=yypos-(!eolpos); col2:=(!col1) + 5;  pri (yytext,!lin1,!col1, !col2); Tokens.STRING(!lin1,!col1,!lin1,!col2));
["i""I"]["n""N"]["t""T"]["e""E"]["g""G"]["e""E"]["r""R"]  => (col1:=yypos-(!eolpos); col2:=(!col1) + 6;  pri (yytext,!lin1,!col1, !col2); Tokens.INTEGER(!lin1,!col1,!lin1,!col2));
["t""T"]["i""I"]["m""M"]["e""E"]  => (col1:=yypos-(!eolpos); col2:=(!col1) + 3;  pri (yytext,!lin1,!col1, !col2); Tokens.TIME(!lin1,!col1,!lin1,!col2));
["n""N"]["u""U"]["m""M"]["e""E"]["r""R"]["i""I"]["c""C"]  => (col1:=yypos-(!eolpos); col2:=(!col1) + 6;  pri (yytext,!lin1,!col1, !col2); Tokens.NUMERIC(!lin1,!col1,!lin1,!col2));
["b""B"]["o""O"]["o""O"]["l""L"]["e""E"]["a""A"]["n""N"]  => (col1:=yypos-(!eolpos); col2:=(!col1) + 6;  pri (yytext,!lin1,!col1, !col2); Tokens.BOOLEAN(!lin1,!col1,!lin1,!col2));
["c""C"]["h""H"]["a""A"]["r""R"]["a""A"]["c""C"]["t""T"]["e""E"]["r""R"]  => (col1:=yypos-(!eolpos); col2:=(!col1) + 8;  pri (yytext,!lin1,!col1, !col2); Tokens.CHARACTER(!lin1,!col1,!lin1,!col2));
["n""N"]["a""A"]["t""T"]["u""U"]["r""R"]["a""A"]["l""L"]  => (col1:=yypos-(!eolpos); col2:=(!col1) + 6;  pri (yytext,!lin1,!col1, !col2); Tokens.NATURAL(!lin1,!col1,!lin1,!col2));

["f""F"]["a""A"]["i""I"]["l""L"]["u""U"]["r""R"]["e""E"]  => (col1:=yypos-(!eolpos); col2:=(!col1) + 6;  pri (yytext,!lin1,!col1, !col2); Tokens.FAILURE(!lin1,!col1,!lin1,!col2));
["f""F"]["a""A"]["l""L"]["s""S"]["e""E"]  => (col1:=yypos-(!eolpos); col2:=(!col1) + 4;  pri (yytext,!lin1,!col1, !col2); Tokens.FALSE(!lin1,!col1,!lin1,!col2));
["t""T"]["r""R"]["u""U"]["e""E"]  => (col1:=yypos-(!eolpos); col2:=(!col1) + 3;  pri (yytext,!lin1,!col1, !col2); Tokens.TRUE(!lin1,!col1,!lin1,!col2));

{int} => (col1:=yypos-(!eolpos); col2:=(!col1) + size yytext - 1;  pri (yytext,!lin1,!col1, !col2); Tokens.INT(yytext,!lin1,!col1,!lin1,!col2));
{real_num} => (col1:=yypos-(!eolpos); col2:=(!col1) + size yytext - 1;  pri (yytext,!lin1,!col1, !col2); Tokens.REAL_NUM(yytext,!lin1,!col1,!lin1,!col2));
{hex_num} => (col1:=yypos-(!eolpos); col2:=(!col1) + size yytext - 1;  pri (yytext,!lin1,!col1, !col2); Tokens.HEX_NUM(yytext,!lin1,!col1,!lin1,!col2));
{bin_num} => (col1:=yypos-(!eolpos); col2:=(!col1) + size yytext - 1;  pri (yytext,!lin1,!col1, !col2); Tokens.BIN_NUM(yytext,!lin1,!col1,!lin1,!col2));
{realexp_num} => (col1:=yypos-(!eolpos); col2:=(!col1) + size yytext - 1;  pri (yytext,!lin1,!col1, !col2); Tokens.REALEXP_NUM(yytext,!lin1,!col1,!lin1,!col2));
{bin_vec} => (col1:=yypos-(!eolpos); col2:=(!col1) + size yytext - 1;  pri (yytext,!lin1,!col1, !col2); Tokens.BIN_VEC(yytext,!lin1,!col1,!lin1,!col2));
{dec_vec} => (col1:=yypos-(!eolpos); col2:=(!col1) + size yytext - 1;  pri (yytext,!lin1,!col1, !col2); Tokens.DEC_VEC(yytext,!lin1,!col1,!lin1,!col2));
{hex_vec} => (col1:=yypos-(!eolpos); col2:=(!col1) + size yytext - 1;  pri (yytext,!lin1,!col1, !col2); Tokens.HEX_VEC(yytext,!lin1,!col1,!lin1,!col2));
{element} => (col1:=yypos-(!eolpos); col2:=(!col1) + size yytext - 1;  pri (yytext,!lin1,!col1, !col2); Tokens.ELEMENT(yytext,!lin1,!col1,!lin1,!col2));
{string} => (col1:=yypos-(!eolpos); col2:=(!col1) + size yytext - 1;  pri (yytext,!lin1,!col1, !col2); Tokens.STRING(yytext,!lin1,!col1,!lin1,!col2));
{id} => (col1:=yypos-(!eolpos); col2:=(!col1) + size yytext - 1;  pri (yytext,!lin1,!col1, !col2); Tokens.ID(yytext,!lin1,!col1,!lin1,!col2));

{whitespace}+ => (continue());
{eol} => (lin1:=(!lin1)+1; eolpos:=yypos+size yytext; continue());
{comment} => (lin1:=(!lin1)+1; eolpos:=yypos+size yytext; continue());

. => (col1:=yypos-(!eolpos); badCh (fileName,yytext,!lin1,!col1,!lin1,!col2); continue());

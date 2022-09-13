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
    val fd = TextIO.openOut "example/test.txt";
    val eof = fn fileName => Tokens.EOF(!col2,!lin1,!col1)
    val badCh : string * string * int * int * int-> unit = fn
                (fileName,bad,lin1,col1, col2) =>
                TextIO.output(TextIO.stdOut,fileName^"["^
                Int.toString lin1^"."^Int.toString col1
                ^"]  -  "^  "["^Int.toString lin1^"."^
                Int.toString col2^"]"^"Invalid character \""
                ^bad^"\"\n");

    val pri :   string * int * int * int -> unit = fn
            (bad,line,col1, col2) =>
            let val pr = TextIO.output(fd ,bad^"  ------  " ^
            "["^Int.toString line^"."^Int.toString col1
            ^"]  -  "^  "["^Int.toString line^"."^
            Int.toString col2^"]" ^  "\n") handle e => (TextIO.closeOut fd; raise e)
            in () end

    val pric : int * int -> unit = fn
            (line, col) =>
            let val pr = TextIO.output(fd , "Comment starts from :- [" ^
            Int.toString line ^ "." ^ Int.toString (col+1) 
             ^  "]\n") handle e => (TextIO.closeOut fd; raise e)
            in () end


%%

%header (functor WhlLexFun(structure Tokens: Whl_TOKENS));
%arg (fileName:string);

comment = "--".*;
base_literal = [0-9][_0-9]* ["#"] [0-9a-zA-Z][0-9a-zA-Z_]* ("."based_integer)? ["#"] (exponent)?;
bit_string_literal_binary = [Bb]["\""][0-1_]+["\""];
bit_string_literal_octal = [Oo]["\""][0-7_]+["\""];
bit_string_literal_hex = [Xx]["\""][0-9a-fA-F_]+["\""];
real_literal = [0-9]+(.[0-9]+)?(exponent)?;
basic_identifier = [a-zA-Z]+[a-zA-Z0-9_]*;
extended_identifier = [\\][a-z0-9&\'()+-\./:\;<=>|\ #[]_(other_special_character)]+[\\];
letter = [a-zA-Z]+;
character_literal = ["'"].["'"];
string_literal = ["\""].*["\""];
other_special_character = [!$@?^`{}~];
exponent = [Ee][+-]?[0-9][0-9_]*;
integer =  [0-9][_0-9]*;
based_integer = [0-9a-zA-Z][0-9a-zA-Z_]*;
whitespace = [\ \t]+;
eol = ("\013\010"|"\010"|"\013");

%%

{whitespace}+ => (continue());
{eol} => (lin1:=(!lin1)+1; eolpos:=yypos+size yytext; continue());
{comment} => (pric(!lin1, !col1); eolpos:=yypos+size yytext; continue());

"@" => (col1:=yypos-(!eolpos); col2:=(!col1);  pri (yytext,!lin1,!col1, !col2); Tokens.ADT(!col2,!lin1,!col1));
"^"  => (col1:=yypos-(!eolpos); col2:=(!col1);  pri (yytext,!lin1,!col1, !col2); Tokens.CARROT(!col2,!lin1,!col1));
"`" => (col1:=yypos-(!eolpos); col2:=(!col1);  pri (yytext,!lin1,!col1, !col2); Tokens.BACKTICK(!col2,!lin1,!col1));
"_" => (col1:=yypos-(!eolpos); col2:=(!col1);  pri (yytext,!lin1,!col1, !col2); Tokens.UNDERSCORE(!col2,!lin1,!col1));
"#" => (col1:=yypos-(!eolpos); col2:=(!col1);  pri (yytext,!lin1,!col1, !col2); Tokens.HASH(!col2,!lin1,!col1));
"\"" => (col1:=yypos-(!eolpos); col2:=(!col1) + 1;  pri (yytext,!lin1,!col1, !col2); Tokens.INVERTEDCOMMA(!col2,!lin1,!col1));
"?" => (col1:=yypos-(!eolpos); col2:=(!col1);  pri (yytext,!lin1,!col1, !col2); Tokens.QUESTION(!col2,!lin1,!col1));
"<=>" => (col1:=yypos-(!eolpos); col2:=(!col1) + 2;  pri (yytext,!lin1,!col1, !col2); Tokens.DOUBLEARROW(!col2,!lin1,!col1));
"??" => (col1:=yypos-(!eolpos); col2:=(!col1) + 1;  pri (yytext,!lin1,!col1, !col2); Tokens.DOUBLEQUES(!col2,!lin1,!col1));
"\\"  => (col1:=yypos-(!eolpos); col2:=(!col1) + 1;  pri (yytext,!lin1,!col1, !col2); Tokens.BACKSLASH(!col2,!lin1,!col1));
"<<"  => (col1:=yypos-(!eolpos); col2:=(!col1) + 1;  pri (yytext,!lin1,!col1, !col2); Tokens.RIGHTDOUBLE(!col2,!lin1,!col1));
">>"  => (col1:=yypos-(!eolpos); col2:=(!col1) + 1;  pri (yytext,!lin1,!col1, !col2); Tokens.LEFTDOUBLE(!col2,!lin1,!col1));
"?="  => (col1:=yypos-(!eolpos); col2:=(!col1) + 1;  pri (yytext,!lin1,!col1, !col2); Tokens.RELOP1(!col2,!lin1,!col1));
"?/="  => (col1:=yypos-(!eolpos); col2:=(!col1) + 2;  pri (yytext,!lin1,!col1, !col2); Tokens.RELOP2(!col2,!lin1,!col1));
"?<"  => (col1:=yypos-(!eolpos); col2:=(!col1) + 1;  pri (yytext,!lin1,!col1, !col2); Tokens.RELOP3(!col2,!lin1,!col1));
"?<="  => (col1:=yypos-(!eolpos); col2:=(!col1) + 2;  pri (yytext,!lin1,!col1, !col2); Tokens.RELOP4(!col2,!lin1,!col1));
"?>"  => (col1:=yypos-(!eolpos); col2:=(!col1) + 1;  pri (yytext,!lin1,!col1, !col2); Tokens.RELOP5(!col2,!lin1,!col1));
"?>="  => (col1:=yypos-(!eolpos); col2:=(!col1) + 2;  pri (yytext,!lin1,!col1, !col2); Tokens.RELOP6(!col2,!lin1,!col1));
"=>" => (col1:=yypos-(!eolpos); col2:=(!col1) + 1;  pri (yytext,!lin1,!col1, !col2); Tokens.ARROW(!col2,!lin1,!col1));
"**" => (col1:=yypos-(!eolpos); col2:=(!col1) + 1;  pri (yytext,!lin1,!col1, !col2); Tokens.EXPT(!col2,!lin1,!col1));
":=" => (col1:=yypos-(!eolpos); col2:=(!col1) + 1;  pri (yytext,!lin1,!col1, !col2); Tokens.ASSIGN(!col2,!lin1,!col1));
"/=" => (col1:=yypos-(!eolpos); col2:=(!col1) + 1;  pri (yytext,!lin1,!col1, !col2); Tokens.NEQ(!col2,!lin1,!col1));
">=" => (col1:=yypos-(!eolpos); col2:=(!col1) + 1;  pri (yytext,!lin1,!col1, !col2); Tokens.GE(!col2,!lin1,!col1));
"<=" => (col1:=yypos-(!eolpos); col2:=(!col1) + 1;  pri (yytext,!lin1,!col1, !col2); Tokens.LE(!col2,!lin1,!col1));
"<>" => (col1:=yypos-(!eolpos); col2:=(!col1) + 1;  pri (yytext,!lin1,!col1, !col2); Tokens.BOX(!col2,!lin1,!col1));
"&" => (col1:=yypos-(!eolpos); col2:=(!col1);  pri (yytext,!lin1,!col1, !col2); Tokens.AMP(!col2,!lin1,!col1));
"'" => (col1:=yypos-(!eolpos); col2:=(!col1);  pri (yytext,!lin1,!col1, !col2); Tokens.TICK(!col2,!lin1,!col1));
"(" => (col1:=yypos-(!eolpos); col2:=(!col1);  pri (yytext,!lin1,!col1, !col2); Tokens.LPARAN(!col2,!lin1,!col1));
")" => (col1:=yypos-(!eolpos); col2:=(!col1);  pri (yytext,!lin1,!col1, !col2); Tokens.RPARAN(!col2,!lin1,!col1));
"*"  => (col1:=yypos-(!eolpos); col2:=(!col1);  pri (yytext,!lin1,!col1, !col2); Tokens.MULT(!col2,!lin1,!col1));
"+"  => (col1:=yypos-(!eolpos); col2:=(!col1);  pri (yytext,!lin1,!col1, !col2); Tokens.PLUS(!col2,!lin1,!col1));
"," => (col1:=yypos-(!eolpos); col2:=(!col1);  pri (yytext,!lin1,!col1, !col2); Tokens.COMMA(!col2,!lin1,!col1));
"-"  => (col1:=yypos-(!eolpos); col2:=(!col1);  pri (yytext,!lin1,!col1, !col2); Tokens.MINUS(!col2,!lin1,!col1));
"."  => (col1:=yypos-(!eolpos); col2:=(!col1);  pri (yytext,!lin1,!col1, !col2); Tokens.DOT(!col2,!lin1,!col1));
"/"  => (col1:=yypos-(!eolpos); col2:=(!col1);  pri (yytext,!lin1,!col1, !col2); Tokens.DIV(!col2,!lin1,!col1));
":" => (col1:=yypos-(!eolpos); col2:=(!col1);  pri (yytext,!lin1,!col1, !col2); Tokens.COLON(!col2,!lin1,!col1));
";" => (col1:=yypos-(!eolpos); col2:=(!col1);  pri (yytext,!lin1,!col1, !col2); Tokens.SEMICOLON(!col2,!lin1,!col1));
"<"  => (col1:=yypos-(!eolpos); col2:=(!col1);  pri (yytext,!lin1,!col1, !col2); Tokens.LT(!col2,!lin1,!col1));
"=" => (col1:=yypos-(!eolpos); col2:=(!col1);  pri (yytext,!lin1,!col1, !col2); Tokens.EQ(!col2,!lin1,!col1));
">"  => (col1:=yypos-(!eolpos); col2:=(!col1);  pri (yytext,!lin1,!col1, !col2); Tokens.GT(!col2,!lin1,!col1));
"|"  => (col1:=yypos-(!eolpos); col2:=(!col1);  pri (yytext,!lin1,!col1, !col2); Tokens.BAR(!col2,!lin1,!col1));
"["  => (col1:=yypos-(!eolpos); col2:=(!col1);  pri (yytext,!lin1,!col1, !col2); Tokens.LSQUARE(!col2,!lin1,!col1));
"]"  => (col1:=yypos-(!eolpos); col2:=(!col1);  pri (yytext,!lin1,!col1, !col2); Tokens.RSQUARE(!col2,!lin1,!col1));

["a""A"]["b""B"]["s""S"]  => (col1:=yypos-(!eolpos); col2:=(!col1) + 2;  pri (yytext,!lin1,!col1, !col2); Tokens.ABS(!col2,!lin1,!col1));
["a""A"]["c""C"]["c""C"]["e""E"]["s""S"]["s""S"]  => (col1:=yypos-(!eolpos); col2:=(!col1) + 5;  pri (yytext,!lin1,!col1, !col2); Tokens.ACCESS(!col2,!lin1,!col1));
["a""A"]["c""C"]["r""R"]["o""O"]["s""S"]["s""S"]  => (col1:=yypos-(!eolpos); col2:=(!col1) + 5;  pri (yytext,!lin1,!col1, !col2); Tokens.ACROSS(!col2,!lin1,!col1));
["a""A"]["f""F"]["t""T"]["e""E"]["r""R"]  => (col1:=yypos-(!eolpos); col2:=(!col1) + 4;  pri (yytext,!lin1,!col1, !col2); Tokens.AFTER(!col2,!lin1,!col1));
["a""A"]["l""L"]["i""I"]["a""A"]["s""S"]  => (col1:=yypos-(!eolpos); col2:=(!col1) + 4;  pri (yytext,!lin1,!col1, !col2); Tokens.ALIAS(!col2,!lin1,!col1));
["a""A"]["l""L"]["l""L"]  => (col1:=yypos-(!eolpos); col2:=(!col1) + 2;  pri (yytext,!lin1,!col1, !col2); Tokens.ALL(!col2,!lin1,!col1));
["a""A"]["n""N"]["d""D"]  => (col1:=yypos-(!eolpos); col2:=(!col1) + 2;  pri (yytext,!lin1,!col1, !col2); Tokens.AND(!col2,!lin1,!col1));
["a""A"]["r""R"]["c""C"]["h""H"]["i""I"]["t""T"]["e""E"]["c""C"]["t""T"]["u""U"]["r""R"]["e""E"]  => (col1:=yypos-(!eolpos); col2:=(!col1) + 11;  pri (yytext,!lin1,!col1, !col2); Tokens.ARCHITECTURE(!col2,!lin1,!col1));
["a""A"]["r""R"]["r""R"]["a""A"]["y""Y"]  => (col1:=yypos-(!eolpos); col2:=(!col1) + 4;  pri (yytext,!lin1,!col1, !col2); Tokens.ARRAY(!col2,!lin1,!col1));
["a""A"]["s""S"]["s""S"]["e""E"]["r""R"]["t""T"]  => (col1:=yypos-(!eolpos); col2:=(!col1) + 5;  pri (yytext,!lin1,!col1, !col2); Tokens.ASSERT(!col2,!lin1,!col1));
["a""A"]["t""T"]["t""T"]["r""R"]["i""I"]["b""B"]["u""U"]["t""T"]["e""E"]  => (col1:=yypos-(!eolpos); col2:=(!col1) + 8;  pri (yytext,!lin1,!col1, !col2); Tokens.ATTRIBUTE(!col2,!lin1,!col1));
["b""B"]["e""E"]["g""G"]["i""I"]["n""N"]  => (col1:=yypos-(!eolpos); col2:=(!col1) + 4;  pri (yytext,!lin1,!col1, !col2); Tokens.BEGIN(!col2,!lin1,!col1));
["b""B"]["l""L"]["o""O"]["c""C"]["k""K"]  => (col1:=yypos-(!eolpos); col2:=(!col1) + 4;  pri (yytext,!lin1,!col1, !col2); Tokens.BLOCK(!col2,!lin1,!col1));
["b""B"]["o""O"]["d""D"]["y""Y"]  => (col1:=yypos-(!eolpos); col2:=(!col1) + 3;  pri (yytext,!lin1,!col1, !col2); Tokens.BODY(!col2,!lin1,!col1));
["b""B"]["u""U"]["f""F"]["f""F"]["e""E"]["r""R"]  => (col1:=yypos-(!eolpos); col2:=(!col1) + 5;  pri (yytext,!lin1,!col1, !col2); Tokens.BUFFER(!col2,!lin1,!col1));
["b""B"]["u""U"]["s""S"]  => (col1:=yypos-(!eolpos); col2:=(!col1) + 2;  pri (yytext,!lin1,!col1, !col2); Tokens.BUS(!col2,!lin1,!col1));
["c""C"]["a""A"]["s""S"]["e""E"]  => (col1:=yypos-(!eolpos); col2:=(!col1) + 3;  pri (yytext,!lin1,!col1, !col2); Tokens.CASE(!col2,!lin1,!col1));
["c""C"]["o""O"]["m""M"]["p""P"]["o""O"]["n""N"]["e""E"]["n""N"]["t""T"]  => (col1:=yypos-(!eolpos); col2:=(!col1) + 8;  pri (yytext,!lin1,!col1, !col2); Tokens.COMPONENT(!col2,!lin1,!col1));
["c""C"]["o""O"]["n""N"]["f""F"]["i""I"]["g""G"]["u""U"]["r""R"]["a""A"]["t""T"]["i""I"]["o""O"]["n""N"]  => (col1:=yypos-(!eolpos); col2:=(!col1) + 12;  pri (yytext,!lin1,!col1, !col2); Tokens.CONFIGURATION(!col2,!lin1,!col1));
["c""C"]["o""O"]["n""N"]["s""S"]["t""T"]["a""A"]["n""N"]["t""T"]  => (col1:=yypos-(!eolpos); col2:=(!col1) + 7;  pri (yytext,!lin1,!col1, !col2); Tokens.CONSTANT(!col2,!lin1,!col1));
["d""D"]["i""I"]["s""S"]["c""C"]["o""O"]["n""N"]["n""N"]["e""E"]["c""C"]["t""T"]  => (col1:=yypos-(!eolpos); col2:=(!col1) + 9;  pri (yytext,!lin1,!col1, !col2); Tokens.DISCONNECT(!col2,!lin1,!col1));
["d""D"]["o""O"]["w""W"]["n""N"]["t""T"]["o""O"]  => (col1:=yypos-(!eolpos); col2:=(!col1) + 5;  pri (yytext,!lin1,!col1, !col2); Tokens.DOWNTO(!col2,!lin1,!col1));
["e""E"]["l""L"]["s""S"]["e""E"]  => (col1:=yypos-(!eolpos); col2:=(!col1) + 3;  pri (yytext,!lin1,!col1, !col2); Tokens.ELSE(!col2,!lin1,!col1));
["e""E"]["l""L"]["s""S"]["i""I"]["f""F"]  => (col1:=yypos-(!eolpos); col2:=(!col1) + 4;  pri (yytext,!lin1,!col1, !col2); Tokens.ELSIF(!col2,!lin1,!col1));
["e""E"]["n""N"]["d""D"]  => (col1:=yypos-(!eolpos); col2:=(!col1) + 2;  pri (yytext,!lin1,!col1, !col2); Tokens.END(!col2,!lin1,!col1));
["e""E"]["n""N"]["t""T"]["i""I"]["t""T"]["y""Y"]  => (col1:=yypos-(!eolpos); col2:=(!col1) + 5;  pri (yytext,!lin1,!col1, !col2); Tokens.ENTITY(!col2,!lin1,!col1));
["e""E"]["x""X"]["i""I"]["t""T"]  => (col1:=yypos-(!eolpos); col2:=(!col1) + 3;  pri (yytext,!lin1,!col1, !col2); Tokens.EXIT(!col2,!lin1,!col1));
["f""F"]["i""I"]["l""L"]["e""E"]  => (col1:=yypos-(!eolpos); col2:=(!col1) + 3;  pri (yytext,!lin1,!col1, !col2); Tokens.FILE(!col2,!lin1,!col1));
["f""F"]["o""O"]["r""R"]  => (col1:=yypos-(!eolpos); col2:=(!col1) + 2;  pri (yytext,!lin1,!col1, !col2); Tokens.FOR(!col2,!lin1,!col1));
["f""F"]["u""U"]["n""N"]["c""C"]["t""T"]["i""I"]["o""O"]["n""N"]  => (col1:=yypos-(!eolpos); col2:=(!col1) + 7;  pri (yytext,!lin1,!col1, !col2); Tokens.FUNCTION(!col2,!lin1,!col1));
["g""G"]["e""E"]["n""N"]["e""E"]["r""R"]["a""A"]["t""T"]["e""E"]  => (col1:=yypos-(!eolpos); col2:=(!col1) + 7;  pri (yytext,!lin1,!col1, !col2); Tokens.GENERATE(!col2,!lin1,!col1));
["g""G"]["e""E"]["n""N"]["e""E"]["r""R"]["i""I"]["c""C"]  => (col1:=yypos-(!eolpos); col2:=(!col1) + 6;  pri (yytext,!lin1,!col1, !col2); Tokens.GENERIC(!col2,!lin1,!col1));
["g""G"]["r""R"]["o""O"]["u""U"]["p""P"]  => (col1:=yypos-(!eolpos); col2:=(!col1) + 4;  pri (yytext,!lin1,!col1, !col2); Tokens.GROUP(!col2,!lin1,!col1));
["g""G"]["u""U"]["a""A"]["r""R"]["d""D"]["e""E"]["d""D"]  => (col1:=yypos-(!eolpos); col2:=(!col1) + 6;  pri (yytext,!lin1,!col1, !col2); Tokens.GUARDED(!col2,!lin1,!col1));
["i""I"]["f""F"]  => (col1:=yypos-(!eolpos); col2:=(!col1) + 1;  pri (yytext,!lin1,!col1, !col2); Tokens.IF(!col2,!lin1,!col1));
["i""I"]["m""M"]["p""P"]["u""U"]["r""R"]["e""E"]  => (col1:=yypos-(!eolpos); col2:=(!col1) + 5;  pri (yytext,!lin1,!col1, !col2); Tokens.IMPURE(!col2,!lin1,!col1));
["i""I"]["n""N"]  => (col1:=yypos-(!eolpos); col2:=(!col1) + 1;  pri (yytext,!lin1,!col1, !col2); Tokens.IN(!col2,!lin1,!col1));
["i""I"]["n""N"]["e""E"]["r""R"]["t""T"]["i""I"]["a""A"]["l""L"]  => (col1:=yypos-(!eolpos); col2:=(!col1) + 7;  pri (yytext,!lin1,!col1, !col2); Tokens.INERTIAL(!col2,!lin1,!col1));
["i""I"]["n""N"]["o""O"]["u""U"]["t""T"]  => (col1:=yypos-(!eolpos); col2:=(!col1) + 4;  pri (yytext,!lin1,!col1, !col2); Tokens.INOUT(!col2,!lin1,!col1));
["i""I"]["s""S"]  => (col1:=yypos-(!eolpos); col2:=(!col1) + 1;  pri (yytext,!lin1,!col1, !col2); Tokens.IS(!col2,!lin1,!col1));
["l""L"]["a""A"]["b""B"]["e""E"]["l""L"]  => (col1:=yypos-(!eolpos); col2:=(!col1) + 4;  pri (yytext,!lin1,!col1, !col2); Tokens.LABEL(!col2,!lin1,!col1));
["l""L"]["i""I"]["b""B"]["r""R"]["a""A"]["r""R"]["y""Y"]  => (col1:=yypos-(!eolpos); col2:=(!col1) + 6;  pri (yytext,!lin1,!col1, !col2); Tokens.LIBRARY(!col2,!lin1,!col1));
["l""L"]["i""I"]["n""N"]["k""K"]["a""A"]["g""G"]["e""E"]  => (col1:=yypos-(!eolpos); col2:=(!col1) + 6;  pri (yytext,!lin1,!col1, !col2); Tokens.LINKAGE(!col2,!lin1,!col1));
["l""L"]["i""I"]["t""T"]["e""E"]["r""R"]["a""A"]["l""L"]  => (col1:=yypos-(!eolpos); col2:=(!col1) + 6;  pri (yytext,!lin1,!col1, !col2); Tokens.LITERAL(!col2,!lin1,!col1));
["l""L"]["o""O"]["o""O"]["p""P"]  => (col1:=yypos-(!eolpos); col2:=(!col1) + 3;  pri (yytext,!lin1,!col1, !col2); Tokens.LOOP(!col2,!lin1,!col1));
["m""M"]["a""A"]["p""P"]  => (col1:=yypos-(!eolpos); col2:=(!col1) + 2;  pri (yytext,!lin1,!col1, !col2); Tokens.MAP(!col2,!lin1,!col1));
["m""M"]["o""O"]["d""D"]  => (col1:=yypos-(!eolpos); col2:=(!col1) + 2;  pri (yytext,!lin1,!col1, !col2); Tokens.MOD(!col2,!lin1,!col1));
["n""N"]["a""A"]["n""N"]["d""D"]  => (col1:=yypos-(!eolpos); col2:=(!col1) + 3;  pri (yytext,!lin1,!col1, !col2); Tokens.NAND(!col2,!lin1,!col1));
["n""N"]["e""E"]["w""W"]  => (col1:=yypos-(!eolpos); col2:=(!col1) + 2;  pri (yytext,!lin1,!col1, !col2); Tokens.NEW(!col2,!lin1,!col1));
["n""N"]["e""E"]["x""X"]["t""T"]  => (col1:=yypos-(!eolpos); col2:=(!col1) + 3;  pri (yytext,!lin1,!col1, !col2); Tokens.NEXT(!col2,!lin1,!col1));
["n""N"]["o""O"]["r""R"]  => (col1:=yypos-(!eolpos); col2:=(!col1) + 2;  pri (yytext,!lin1,!col1, !col2); Tokens.NOR(!col2,!lin1,!col1));
["n""N"]["o""O"]["t""T"]  => (col1:=yypos-(!eolpos); col2:=(!col1) + 2;  pri (yytext,!lin1,!col1, !col2); Tokens.NOT(!col2,!lin1,!col1));
["n""N"]["u""U"]["l""L"]["l""L"]  => (col1:=yypos-(!eolpos); col2:=(!col1) + 3;  pri (yytext,!lin1,!col1, !col2); Tokens.NULL(!col2,!lin1,!col1));
["o""O"]["f""F"]  => (col1:=yypos-(!eolpos); col2:=(!col1) + 1;  pri (yytext,!lin1,!col1, !col2); Tokens.OF(!col2,!lin1,!col1));
["o""O"]["n""N"]  => (col1:=yypos-(!eolpos); col2:=(!col1) + 1;  pri (yytext,!lin1,!col1, !col2); Tokens.ON(!col2,!lin1,!col1));
["o""O"]["p""P"]["e""E"]["n""N"]  => (col1:=yypos-(!eolpos); col2:=(!col1) + 3;  pri (yytext,!lin1,!col1, !col2); Tokens.OPEN(!col2,!lin1,!col1));
["o""O"]["r""R"]  => (col1:=yypos-(!eolpos); col2:=(!col1) + 1;  pri (yytext,!lin1,!col1, !col2); Tokens.OR(!col2,!lin1,!col1));
["o""O"]["t""T"]["h""H"]["e""E"]["r""R"]["s""S"]  => (col1:=yypos-(!eolpos); col2:=(!col1) + 5;  pri (yytext,!lin1,!col1, !col2); Tokens.OTHERS(!col2,!lin1,!col1));
["o""O"]["u""U"]["t""T"]  => (col1:=yypos-(!eolpos); col2:=(!col1) + 2;  pri (yytext,!lin1,!col1, !col2); Tokens.OUT(!col2,!lin1,!col1));
["p""P"]["a""A"]["c""C"]["k""K"]["a""A"]["g""G"]["e""E"]  => (col1:=yypos-(!eolpos); col2:=(!col1) + 6;  pri (yytext,!lin1,!col1, !col2); Tokens.PACKAGE(!col2,!lin1,!col1));
["p""P"]["o""O"]["r""R"]["t""T"]  => (col1:=yypos-(!eolpos); col2:=(!col1) + 3;  pri (yytext,!lin1,!col1, !col2); Tokens.PORT(!col2,!lin1,!col1));
["p""P"]["o""O"]["s""S"]["t""T"]["p""P"]["o""O"]["n""N"]["e""E"]["d""D"]  => (col1:=yypos-(!eolpos); col2:=(!col1) + 8;  pri (yytext,!lin1,!col1, !col2); Tokens.POSTPONED(!col2,!lin1,!col1));
["p""P"]["r""R"]["o""O"]["c""C"]["e""E"]["d""D"]["u""U"]["r""R"]["e""E"]  => (col1:=yypos-(!eolpos); col2:=(!col1) + 8;  pri (yytext,!lin1,!col1, !col2); Tokens.PROCEDURE(!col2,!lin1,!col1));
["p""P"]["r""R"]["o""O"]["c""C"]["e""E"]["s""S"]["s""S"]  => (col1:=yypos-(!eolpos); col2:=(!col1) + 6;  pri (yytext,!lin1,!col1, !col2); Tokens.PROCESS(!col2,!lin1,!col1));
["p""P"]["r""R"]["o""O"]["t""T"]["e""E"]["c""C"]["t""T"]["e""E"]["d""D"]  => (col1:=yypos-(!eolpos); col2:=(!col1) + 8;  pri (yytext,!lin1,!col1, !col2); Tokens.PROTECTED(!col2,!lin1,!col1));
["p""P"]["u""U"]["r""R"]["e""E"]  => (col1:=yypos-(!eolpos); col2:=(!col1) + 3;  pri (yytext,!lin1,!col1, !col2); Tokens.PURE(!col2,!lin1,!col1));
["r""R"]["a""A"]["n""N"]["g""G"]["e""E"]  => (col1:=yypos-(!eolpos); col2:=(!col1) + 4;  pri (yytext,!lin1,!col1, !col2); Tokens.RANGE(!col2,!lin1,!col1));
["r""R"]["e""E"]["c""C"]["o""O"]["r""R"]["d""D"]  => (col1:=yypos-(!eolpos); col2:=(!col1) + 5;  pri (yytext,!lin1,!col1, !col2); Tokens.RECORD(!col2,!lin1,!col1));
["r""R"]["e""E"]["g""G"]["i""I"]["s""S"]["t""T"]["e""E"]["r""R"]  => (col1:=yypos-(!eolpos); col2:=(!col1) + 7;  pri (yytext,!lin1,!col1, !col2); Tokens.REGISTER(!col2,!lin1,!col1));
["r""R"]["e""E"]["j""J"]["e""E"]["c""C"]["t""T"]  => (col1:=yypos-(!eolpos); col2:=(!col1) + 5;  pri (yytext,!lin1,!col1, !col2); Tokens.REJECT(!col2,!lin1,!col1));
["r""R"]["e""E"]["m""M"]  => (col1:=yypos-(!eolpos); col2:=(!col1) + 2;  pri (yytext,!lin1,!col1, !col2); Tokens.REM(!col2,!lin1,!col1));
["r""R"]["e""E"]["p""P"]["o""O"]["r""R"]["t""T"]  => (col1:=yypos-(!eolpos); col2:=(!col1) + 5;  pri (yytext,!lin1,!col1, !col2); Tokens.REPORT(!col2,!lin1,!col1));
["r""R"]["e""E"]["t""T"]["u""U"]["r""R"]["n""N"]  => (col1:=yypos-(!eolpos); col2:=(!col1) + 5;  pri (yytext,!lin1,!col1, !col2); Tokens.RETURN(!col2,!lin1,!col1));
["r""R"]["o""O"]["l""L"]  => (col1:=yypos-(!eolpos); col2:=(!col1) + 2;  pri (yytext,!lin1,!col1, !col2); Tokens.ROL(!col2,!lin1,!col1));
["r""R"]["o""O"]["r""R"]  => (col1:=yypos-(!eolpos); col2:=(!col1) + 2;  pri (yytext,!lin1,!col1, !col2); Tokens.ROR(!col2,!lin1,!col1));
["s""S"]["e""E"]["l""L"]["e""E"]["c""C"]["t""T"]  => (col1:=yypos-(!eolpos); col2:=(!col1) + 5;  pri (yytext,!lin1,!col1, !col2); Tokens.SELECT(!col2,!lin1,!col1));
["s""S"]["e""E"]["v""V"]["e""E"]["r""R"]["i""I"]["t""T"]["y""Y"]  => (col1:=yypos-(!eolpos); col2:=(!col1) + 7;  pri (yytext,!lin1,!col1, !col2); Tokens.SEVERITY(!col2,!lin1,!col1));
["s""S"]["h""H"]["a""A"]["r""R"]["e""E"]["d""D"]  => (col1:=yypos-(!eolpos); col2:=(!col1) + 5;  pri (yytext,!lin1,!col1, !col2); Tokens.SHARED(!col2,!lin1,!col1));
["s""S"]["i""I"]["g""G"]["n""N"]["a""A"]["l""L"]  => (col1:=yypos-(!eolpos); col2:=(!col1) + 5;  pri (yytext,!lin1,!col1, !col2); Tokens.SIGNAL(!col2,!lin1,!col1));
["s""S"]["l""L"]["a""A"]  => (col1:=yypos-(!eolpos); col2:=(!col1) + 2;  pri (yytext,!lin1,!col1, !col2); Tokens.SLA(!col2,!lin1,!col1));
["s""S"]["l""L"]["l""L"]  => (col1:=yypos-(!eolpos); col2:=(!col1) + 2;  pri (yytext,!lin1,!col1, !col2); Tokens.SLL(!col2,!lin1,!col1));
["s""S"]["r""R"]["a""A"]  => (col1:=yypos-(!eolpos); col2:=(!col1) + 2;  pri (yytext,!lin1,!col1, !col2); Tokens.SRA(!col2,!lin1,!col1));
["s""S"]["r""R"]["l""L"]  => (col1:=yypos-(!eolpos); col2:=(!col1) + 2;  pri (yytext,!lin1,!col1, !col2); Tokens.SRL(!col2,!lin1,!col1));
["s""S"]["u""U"]["b""B"]["t""T"]["y""Y"]["p""P"]["e""E"]  => (col1:=yypos-(!eolpos); col2:=(!col1) + 6;  pri (yytext,!lin1,!col1, !col2); Tokens.SUBTYPE(!col2,!lin1,!col1));
["t""T"]["h""H"]["e""E"]["n""N"]  => (col1:=yypos-(!eolpos); col2:=(!col1) + 3;  pri (yytext,!lin1,!col1, !col2); Tokens.THEN(!col2,!lin1,!col1));
["t""T"]["o""O"]  => (col1:=yypos-(!eolpos); col2:=(!col1) + 1;  pri (yytext,!lin1,!col1, !col2); Tokens.TO(!col2,!lin1,!col1));
["t""T"]["r""R"]["a""A"]["n""N"]["s""S"]["p""P"]["o""O"]["r""R"]["t""T"]  => (col1:=yypos-(!eolpos); col2:=(!col1) + 8;  pri (yytext,!lin1,!col1, !col2); Tokens.TRANSPORT(!col2,!lin1,!col1));
["t""T"]["y""Y"]["p""P"]["e""E"]  => (col1:=yypos-(!eolpos); col2:=(!col1) + 3;  pri (yytext,!lin1,!col1, !col2); Tokens.TYPE(!col2,!lin1,!col1));
["u""U"]["n""N"]["a""A"]["f""F"]["f""F"]["e""E"]["c""C"]["t""T"]["e""E"]["d""D"]  => (col1:=yypos-(!eolpos); col2:=(!col1) + 9;  pri (yytext,!lin1,!col1, !col2); Tokens.UNAFFECTED(!col2,!lin1,!col1));
["u""U"]["n""N"]["i""I"]["t""T"]["s""S"]  => (col1:=yypos-(!eolpos); col2:=(!col1) + 4;  pri (yytext,!lin1,!col1, !col2); Tokens.UNITS(!col2,!lin1,!col1));
["u""U"]["n""N"]["t""T"]["i""I"]["l""L"]  => (col1:=yypos-(!eolpos); col2:=(!col1) + 4;  pri (yytext,!lin1,!col1, !col2); Tokens.UNTIL(!col2,!lin1,!col1));
["u""U"]["s""S"]["e""E"]  => (col1:=yypos-(!eolpos); col2:=(!col1) + 2;  pri (yytext,!lin1,!col1, !col2); Tokens.USE(!col2,!lin1,!col1));
["v""V"]["u""U"]["n""N"]["i""I"]["t""T"]  => (col1:=yypos-(!eolpos); col2:=(!col1) + 4;  pri (yytext,!lin1,!col1, !col2); Tokens.VUNIT(!col2,!lin1,!col1));
["v""V"]["a""A"]["r""R"]["i""I"]["a""A"]["b""B"]["l""L"]["e""E"]  => (col1:=yypos-(!eolpos); col2:=(!col1) + 7;  pri (yytext,!lin1,!col1, !col2); Tokens.VARIABLE(!col2,!lin1,!col1));
["w""W"]["a""A"]["i""I"]["t""T"]  => (col1:=yypos-(!eolpos); col2:=(!col1) + 3;  pri (yytext,!lin1,!col1, !col2); Tokens.WAIT(!col2,!lin1,!col1));
["w""W"]["h""H"]["e""E"]["n""N"]  => (col1:=yypos-(!eolpos); col2:=(!col1) + 3;  pri (yytext,!lin1,!col1, !col2); Tokens.WHEN(!col2,!lin1,!col1));
["w""W"]["h""H"]["i""I"]["l""L"]["e""E"]  => (col1:=yypos-(!eolpos); col2:=(!col1) + 4;  pri (yytext,!lin1,!col1, !col2); Tokens.WHILE(!col2,!lin1,!col1));
["w""W"]["i""I"]["t""T"]["h""H"]  => (col1:=yypos-(!eolpos); col2:=(!col1) + 3;  pri (yytext,!lin1,!col1, !col2); Tokens.WITH(!col2,!lin1,!col1));
["x""X"]["n""N"]["o""O"]["r""R"]  => (col1:=yypos-(!eolpos); col2:=(!col1) + 3;  pri (yytext,!lin1,!col1, !col2); Tokens.XNOR(!col2,!lin1,!col1));
["x""X"]["o""O"]["r""R"]  => (col1:=yypos-(!eolpos); col2:=(!col1) + 2;  pri (yytext,!lin1,!col1, !col2); Tokens.XOR(!col2,!lin1,!col1));
["v""V"]["a""A"]["l""L"]  => (col1:=yypos-(!eolpos); col2:=(!col1) + 2;  pri (yytext,!lin1,!col1, !col2); Tokens.VAL(!col2,!lin1,!col1));
["l""L"]["s""S"]["t""T"]  => (col1:=yypos-(!eolpos); col2:=(!col1) + 2;  pri (yytext,!lin1,!col1, !col2); Tokens.LST(!col2,!lin1,!col1));
["e""E"]["l""L"]["t""T"]  => (col1:=yypos-(!eolpos); col2:=(!col1) + 2;  pri (yytext,!lin1,!col1, !col2); Tokens.ELT(!col2,!lin1,!col1));
["p""P"]["o""O"]["s""S"]  => (col1:=yypos-(!eolpos); col2:=(!col1) + 2;  pri (yytext,!lin1,!col1, !col2); Tokens.POS(!col2,!lin1,!col1));
["l""L"]["e""E"]["n""N"]  => (col1:=yypos-(!eolpos); col2:=(!col1) + 2;  pri (yytext,!lin1,!col1, !col2); Tokens.LEN(!col2,!lin1,!col1));
["t""T"]["h""H"]["r""R"]["o""O"]["u""U"]["g""G"]["h""H"]  => (col1:=yypos-(!eolpos); col2:=(!col1) + 5;  pri (yytext,!lin1,!col1, !col2); Tokens.THROUGH(!col2,!lin1,!col1));
["s""S"]["p""P"]["e""E"]["c""C"]["t""T"]["r""R"]["u""U"]["m""M"]  => (col1:=yypos-(!eolpos); col2:=(!col1) + 6;  pri (yytext,!lin1,!col1, !col2); Tokens.SPECTRUM(!col2,!lin1,!col1));
["t""T"]["o""O"]["l""L"]["e""E"]["r""R"]["a""A"]["n""N"]["c""C"]["e""E"]  => (col1:=yypos-(!eolpos); col2:=(!col1) + 7;  pri (yytext,!lin1,!col1, !col2); Tokens.TOLERANCE(!col2,!lin1,!col1));




["d""D"]["e""E"]["f""F"]["a""A"]["u""U"]["l""L"]["t""T"]  => (col1:=yypos-(!eolpos); col2:=(!col1) + 6;  pri (yytext,!lin1,!col1, !col2); Tokens.DEFAULT(!col2,!lin1,!col1));
["p""P"]["a""A"]["r""R"]["a""A"]["m""M"]["e""E"]["t""T"]["e""E"]["r""R"]  => (col1:=yypos-(!eolpos); col2:=(!col1) + 8;  pri (yytext,!lin1,!col1, !col2); Tokens.PARAMETER(!col2,!lin1,!col1));
["v""V"]["i""I"]["e""E"]["w""W"]  => (col1:=yypos-(!eolpos); col2:=(!col1) + 3;  pri (yytext,!lin1,!col1, !col2); Tokens.VIEW(!col2,!lin1,!col1));
["p""P"]["r""R"]["i""I"]["v""V"]["a""A"]["t""T"]["e""E"]  => (col1:=yypos-(!eolpos); col2:=(!col1) + 6;  pri (yytext,!lin1,!col1, !col2); Tokens.PRIVATE(!col2,!lin1,!col1));
["e""E"]["x""X"]["p""P"]["r""R"]["e""E"]["s""S"]["s""S"]["i""I"]["o""O"]["n""N"]  => (col1:=yypos-(!eolpos); col2:=(!col1) + 9;  pri (yytext,!lin1,!col1, !col2); Tokens.EXPRESSION(!col2,!lin1,!col1));
["c""C"]["o""O"]["n""N"]["t""T"]["e""E"]["x""X"]["t""T"]  => (col1:=yypos-(!eolpos); col2:=(!col1) + 6;  pri (yytext,!lin1,!col1, !col2); Tokens.CONTEXT(!col2,!lin1,!col1));

{base_literal} => (col1:=yypos-(!eolpos); col2:=(!col1) + size yytext - 1;  pri (yytext,!lin1,!col1, !col2); Tokens.BASE_LITERAL((yytext,!col2),!lin1,!col1));
{bit_string_literal_binary}|{bit_string_literal_octal}|{bit_string_literal_hex} => (col1:=yypos-(!eolpos); col2:=(!col1) + size yytext - 1;  pri (yytext,!lin1,!col1, !col2); Tokens.BIT_STRING_LITERAL((yytext,!col2),!lin1,!col1));
{real_literal} => (col1:=yypos-(!eolpos); col2:=(!col1) + size yytext - 1;  pri (yytext,!lin1,!col1, !col2); Tokens.REAL_LITERAL((yytext,!col2),!lin1,!col1));
{basic_identifier} => (col1:=yypos-(!eolpos); col2:=(!col1) + size yytext - 1;  pri (yytext,!lin1,!col1, !col2); Tokens.BASIC_IDENTIFIER((yytext,!col2),!lin1,!col1));
{extended_identifier} => (col1:=yypos-(!eolpos); col2:=(!col1) + size yytext - 1;  pri (yytext,!lin1,!col1, !col2); Tokens.EXTENDED_IDENTIFIER((yytext,!col2),!lin1,!col1));
{character_literal} => (col1:=yypos-(!eolpos); col2:=(!col1) + size yytext - 1;  pri (yytext,!lin1,!col1, !col2); Tokens.CHARACTER_LITERAL((yytext,!col2),!lin1,!col1));
{string_literal} => (col1:=yypos-(!eolpos); col2:=(!col1) + size yytext - 1;  pri (yytext,!lin1,!col1, !col2); Tokens.STRING_LITERAL((yytext,!col2),!lin1,!col1));
{exponent} => (col1:=yypos-(!eolpos); col2:=(!col1) + size yytext - 1;  pri (yytext,!lin1,!col1, !col2); Tokens.EXPONENT((yytext,!col2),!lin1,!col1));
{integer} => (col1:=yypos-(!eolpos); col2:=(!col1) + size yytext - 1;  pri (yytext,!lin1,!col1, !col2); Tokens.INTEGER((yytext,!col2),!lin1,!col1));

. => (col1:=yypos-(!eolpos); badCh (fileName,yytext,!lin1,!col1,!col2); continue());
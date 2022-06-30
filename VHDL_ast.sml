structure Vhdl =
struct

    structure WhlLrVals = WhlLrValsFun(structure Token = LrParser.Token);
    structure WhlLex    = WhlLexFun(structure Tokens = WhlLrVals.Tokens);
    structure WhlParser = JoinWithArg(
                                structure ParserData = WhlLrVals.ParserData
                                structure Lex = WhlLex
                                structure LrParser = LrParser);

    exception WhlError;
    fun tree fileName = 
        let
            val inStream = TextIO.openIn fileName
	        fun readNext n = if TextIO.endOfStream inStream then ""
	                         else TextIO.inputN (inStream, n)
            val lexer = WhlParser.makeLexer readNext fileName
            val printError : string * int * int -> unit = fn
                (msg,line,col) =>
                print (fileName^"["^Int.toString line^":"
                ^Int.toString col^"] "^msg^"\n");
	        val (ans,rem) = WhlParser.parse (15, lexer, printError, fileName)
            handle WhlParser.ParseError => raise WhlError;
            val _ = TextIO.closeIn inStream;
	    in
            ans
	end
end
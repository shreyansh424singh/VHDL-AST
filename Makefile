all: VHDL_lex.lex VHDL_yacc.yacc VHDL_mlton.mlb
	mllex VHDL_lex.lex
	mlyacc VHDL_yacc.yacc
	mlton VHDL_mlton.mlb
clean:
	rm VHDL_lex.lex.sml VHDL_yacc.yacc.sig VHDL_yacc.yacc.desc VHDL_yacc.yacc.sml VHDL_mlton

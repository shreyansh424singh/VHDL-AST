# AST for VHDL Language

## Description
- A parser written for VHDL language. Built on top of Standard ML, using the tools ml-lex and ml-yacc.

## Execution Instructions

1. $ `sml make.sml`
2. \- `tree <PathToInputFile>`

## Files

- **Data_types.sml** : The datatype declarations for the non-terminals in the abstract syntax tree.
- **VHDL_lex.lex** : Lexer which converts input file into tokens.
- **VHDL_yacc.yacc** : Using the grammar it converts stream of tokens into abstract syntax tree.
- **Symbol_table.sml** : Symbol Table which stores the datatypes of all the variables used.
- **VHDL_ast.sml** :  A glue code and a driver that reads the sources file and displays the output.
- **sources.cm** : Provides a list of files that the Compiler Manager will use to build the project.

## References
- The grammer for vhdl is extracted from https://github.com/antlr/grammars-v4/blob/master/vhdl/vhdl.g4

## Issues

- Currently there are
    - 1007 reduce/reduce conflicts
    - 84 shift/reduce conflicts
    - 16 rules are not reduced
- Still AST is constructed with very few errors.
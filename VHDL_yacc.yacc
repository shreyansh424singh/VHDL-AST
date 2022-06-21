open W_datatypes
open Symbol_Table
%%
(* required declarations *)
%name VHDL_ast

%term EOF | ARROW | EXPT | ASSIGN | NEQ | GE | LE | BOX | AMP | TICK | LPARAN | RPARAN | MULT | PLUS | COMMA | MINUS | DOT | DIV | COLON | SEMICOLON | LT | EQ | GT | BAR | LSQUARE | RSQUARE | ABS | ACCESS | AFTER | ALIAS | ALL | AND | ARCHITECTURE | ARRAY | ASSERT | ATRIBUTE | BEGIN | BLOCK | BODY | BUFFER | BUS | CASE | COMPONENT | CONFIGURATION | CONSTANT | DISCONNECT | DOWNTO | ELSE | ELSIF | END | ENTITY | EXIT | FILE | FOR | FUNCTION | GENERATE | GENERIC | GROUP | GUARDED | IF | IMPURE | IN | INERTIAL | INOUT | IS | LABEL | LIBRARY | LINKAGE | LITERAL | LOOP | MAP | MOD | NAND | NEW | NEXT | NOR | NOT | NULL | OF | ON | OPEN | OR | OTHERS | OUT | PACKAGE | PORT | POSTPONED | PROCEDURE | PROCESS | PROTECTED | PURE | RANGE | RECORD | REGISTER | REJECT | REM | REPORT | RETURN | ROL | ROR | SELECT | SEVERITY | SHARED | SIGNAL | SLA | SLL | SRA | SRL | SUBTYPE | THEN | TO | TRANSPORT | TYPE | UNAFFECTED | UNITS | UNTIL | USE | VARIABLE | WAIT | WHEN | WHILE | WITH | XNOR | XOR | VAL | LST | ELT | POS | LEN | STD_LOGIC | STD_LOGIC_VECTOR | STD_ULOGIC | STD_ULOGIC_VECTOR | BIT | BIT_VECTOR | STRING | INTEGER | TIME | NUMERIC | BOOLEAN | CHARACTER | NATURAL | SEVERITY_LEVEL | FILE_OPEN_KIND | FILE_OPEN_STATUS | FAILURE | FALSE | TRUE | INT | REAL_NUM | HEX_NUM | BIN_NUM | REALEXP_NUM | BIN_VEC | DEC_VEC | HEX_VEC | ELEMENT | STRING | ID

(* %nonterm    *)

%pos int

(*optional declarations *)
%eop EOF
%noshift EOF

(* %header  *)
(*%left COMMA
%left OR
%left AND
%left EQ NEQ
%left LT GT LEQ GEQ
%left UNPLUS
%left PLUS SUB
%left DIV MOD TIMES
%right NEG NOT
%nonassoc LBRACE LPAREN RBRACE RPAREN
*)
(* %start START *)

%verbose
%arg (fileName): string

%%

absolute_pathname : DOT partial_pathname   (W_datatypes.ABSOLUTE_PATHNAME(partial_pathname))

abstract_literal : decimal_literal         ((W_datatypes.DECIMAL_LITERAL(decimal_literal)))
                 | based_literal           ((W_datatypes.BASED_LITERAL(based_literal)))

access_incomplete_type_definition : ACCESS incomplete_subtype_indication    ((W_datatypes.INCOMPLETE_SUBTYPE_INDICATION(incomplete_subtype_indication)))

access_type_definition : ACCESS subtype_indication  ((W_datatypes.ACCESS_SUBTYPE_INDICATION(subtype_indication)))

actual_designator : INERTIAL expression   ((W_datatypes.EXPRESSION(expression)))  
                  | expression            ((W_datatypes.EXPRESSION(expression)))      
                  | name                  ((W_datatypes.NAME(name)))                  
                  | subtype_indication    ((W_datatypes.SUBTYPE_INDICATION(subtype_indication)))
                  | OPEN                  ((W_datatypes.OPEN()))          

(* actual_parameter_part : parameter_association_list *)

actual_part : actual_designator                             ((W_datatypes.ACTUAL_DESIGNATOR(actual_designator)))                          
            | name LPARAN actual_designator RPARAN          ((W_datatypes.FUNCTION_NAME(name, actual_designator)))                          
            | type_mark LPARAN actual_designator RPARAN     ((W_datatypes.TYPE_MARK(type_mark, actual_designator)))                  

adding_operator : PLUS    ((W_datatypes.PLUS()))                    
                | MINUS   ((W_datatypes.MINUS()))                    
                | AMP     ((W_datatypes.AMP()))

aggregate : LPARAN element_association_seq RPARAN     ((W_datatypes.ELEMENT_ASSOCIATION(element_association_seq)))                    

alias_declaration : ALIAS alias_designator COLON subtype_indication IS name signatur SEMICOLON      ((W_datatypes.ALIAS_2( alias_designator, subtype_indication, name, signatur)))                    
                  | ALIAS alias_designator IS name signatur SEMICOLON       ((W_datatypes.ALIAS_3( alias_designator, name, signatur)))                    
                  | ALIAS alias_designator IS name SEMICOLON        ((W_datatypes.ALIAS_1( alias_designator, name)))                    
                  | ALIAS alias_designator COLON subtype_indication IS name SEMICOLON       ((W_datatypes.ALIAS_4( alias_designator, subtype_indication, name)))                    

alias_designator : identifier           ((W_datatypes.IDENTIFIER(identifier)))                    
                 | character_literal    ((W_datatypes.CHARACTER_LITERAL(character_literal)))                    
                 | operator_symbol      ((W_datatypes.OPERATOR_SYMBOL(operator_symbol)))                    

allocator : NEW subtype_indication      ((W_datatypes.SUBTYPE_INDICATION(subtype_indication)))
          | NEW qualified_expression    ((W_datatypes.QUALIFIED_EXPRESSION(qualified_expression)))

anonymous_type_indication : TYPE IS incomplete_type_definition      ((W_datatypes.INCOMPLETE_TYPE_DEFINITION(incomplete_type_definition)))

architecture_body : ARCHITECTURE identifier OF entity_name IS architecture_declarative_part BEGIN architecture_statement_part END ARCHITECTURE simple_name SEMICOLON    ((W_datatypes.ARCHITECTURE_2(identifier, name, architecture_declarative_part, architecture_statement_part)))
                  | ARCHITECTURE identifier OF entity_name IS architecture_declarative_part BEGIN architecture_statement_part END simple_name SEMICOLON                 ((W_datatypes.ARCHITECTURE_2(identifier, name, architecture_declarative_part, architecture_statement_part)))
                  | ARCHITECTURE identifier OF entity_name IS architecture_declarative_part BEGIN architecture_statement_part END SEMICOLON                             ((W_datatypes.ARCHITECTURE_1(identifier, name, architecture_declarative_part, architecture_statement_part, simple_name)))        
                  | ARCHITECTURE identifier OF entity_name IS architecture_declarative_part BEGIN architecture_statement_part END ARCHITECTURE SEMICOLON                ((W_datatypes.ARCHITECTURE_1(identifier, name, architecture_declarative_part, architecture_statement_part, simple_name)))

architecture_declarative_part : block_declarative_item_seq      ((W_datatypes.BLOCK_DECLARATIVE_ITEM(block_declarative_item_seq)))

architecture_path_name = simple_name LPAREN simple_name RPAREN      ((W_datatypes.ARCHITECTURE_PATH_NAME(simple_name, simple_name)))

architecture_statement_part : concurrent_statement_seq              ((W_datatypes.ARCHITECTURE_STATEMENT_PART(concurrent_statement_seq)))

array_constraint : index_constraint [ array_element_constraint ]       ((W_datatypes.ARRAY_INDEX_CONSTRAINT_1(index_constraint, array_element_constraint)))         
                 | index_constraint                                    ((W_datatypes.ARRAY_INDEX_CONSTRAINT_2(index_constraint)))                 
                 | LPARAN OPEN RPARAN array_element_constraint         ((W_datatypes.ARRAY_INDEX_CONSTRAINT_3(array_element_constraint)))         
                 | LPARAN OPEN RPARAN                                  ((W_datatypes.OPEN()))         

array_element_constraint : element_constraint       ((W_datatypes.ARRAY_ELEMENT_CONSTRAINT(element_constraint)))

array_element_resolution : resolution_indication    ((W_datatypes.ARRAY_RESOLUTION_INDICATION(resolution_indication)))

array_incomplete_type_definition : ARRAY LPARAN array_index_incomplete_type_list RPARAN OF incomplete_subtype_indication        ((W_datatypes.ARRAY_INCOMPLETE_TYPE_DEF(array_index_incomplete_type_list, incomplete_subtype_indication)))

array_index_incomplete_type_seq : array_index_incomplete_type array_index_incomplete_type_seq       (array_index_incomplete_type :: array_index_incomplete_type_seq)

array_index_incomplete_type : index_subtype_definition      ((W_datatypes.ARRAY_INDEX_SUBTYPE_DEFINITION(index_subtype_definition)))
                            | index_constraint              ((W_datatypes.ARRAY_INDEX_CONSTRAINT(index_constraint)))
                            | anonymous_type_indication     ((W_datatypes.ARRAY_ANONYMOUS_TYPE_INDICATION(anonymous_type_indication)))

array_index_incomplete_type_list : array_index_incomplete_type_seq          ((W_datatypes.ARRAY_INDEX_INCOMPLETE_TYPE_LIST(array_index_incomplete_type_seq)))

array_mode_view_indication : VIEW LPARAN name RPARAN OF subtype_indication          ((W_datatypes.ARRAY_MODE_VIEW_IND(name, subtype_indication)))

array_type_definition : unbounded_array_definition      ((W_datatypes.UNBOUNDED_ARRAY_DEFINITION(unbounded_array_definition)))
                      | constrained_array_definition    ((W_datatypes.CONSTRAINED_ARRAY_DEFINITION(constrained_array_definition)))

assertion : ASSERT condition REPORT expression SEVERITY expression      ((W_datatypes.ASSERT_1(condition, expression, expression)))
          | ASSERT condition REPORT expression                          ((W_datatypes.ASSERT_2(condition, expression)))
          | ASSERT condition SEVERITY expression                        ((W_datatypes.ASSERT_2(condition, expression)))
          | ASSERT condition                                            ((W_datatypes.ASSERT_3(condition)))

assertion_statement : label COLON assertion SEMICOLON       ((W_datatypes.ASSERTION_STM_1(label, assertion)))
                    | assertion SEMICOLON                   ((W_datatypes.ASSERTION_STM_2(assertion)))

association_element_seq : association_element association_element_seq       (association_element :: association_element_seq)

association_element : formal_part ARROW actual_part      ((W_datatypes.ASSOCIATION_ELE_1(formal_part, actual_part )))      
                    | actual_part                        ((W_datatypes.ASSOCIATION_ELE_2(actual_part )))  

association_list : association_element_seq               ((W_datatypes.ASSOCIATION_ELE_LiST(association_element_seq)))

attribute_declaration : ATTRIBUTE identifier COLON type_mark SEMICOLON      ((W_datatypes.ATTRIBUTE(identifier, type_mark)))

attribute_designator : simple_name          ((W_datatypes.ATTRIBUTE_DESIGNATOR(simple_name)))

attribute_name : prefix signatur TICK attribute_designator LPARAN expression RPARAN     ((W_datatypes.ATTRIBUTE_NAME_1(prefix, signatur, attribute_designator, expression)))
               | prefix TICK attribute_designator LPARAN expression RPARAN              ((W_datatypes.ATTRIBUTE_NAME_2(prefix, attribute_designator, expression)))
               | prefix signatur TICK attribute_designator                              ((W_datatypes.ATTRIBUTE_NAME_3(prefix, signatur, attribute_designator)))
               | prefix TICK attribute_designator                                       ((W_datatypes.ATTRIBUTE_NAME_4(prefix, attribute_designator)))

attribute_specification : ATTRIBUTE attribute_designator OF entity_specification IS expression SEMICOLON        ((W_datatypes.ATTRIBUTE_SPECIFICATION(attribute_designator,  entity_specification, conditional_expression)))
open W_datatypes
open Symbol_Table
%%
(* required declarations *)
%name VHDL_ast

%term EOF | ARROW | EXPT | ASSIGN | NEQ | GE | LE | BOX | AMP | TICK | LPARAN | RPARAN | MULT | PLUS | COMMA | MINUS | DOT | DIV | COLON | SEMICOLON | LT | EQ | GT | BAR | LSQUARE | RSQUARE | ABS | ACCESS | AFTER | ALIAS | ALL | AND | ARCHITECTURE | ARRAY | ASSERT | ATRIBUTE | BEGIN | BLOCK | BODY | BUFFER | BUS | CASE | COMPONENT | CONFIGURATION | CONSTANT | DISCONNECT | DOWNTO | ELSE | ELSIF | END | ENTITY | EXIT | FILE | FOR | FUNCTION | GENERATE | GENERIC | GROUP | GUARDED | IF | IMPURE | IN | INERTIAL | INOUT | IS | LABEL | LIBRARY | LINKAGE | LITERAL | LOOP | MAP | MOD | NAND | NEW | NEXT | NOR | NOT | NULL | OF | ON | OPEN | OR | OTHERS | OUT | PACKAGE | PORT | POSTPONED | PROCEDURE | PROCESS | PROTECTED | PURE | RANGE | RECORD | REGISTER | REJECT | REM | REPORT | RETURN | ROL | ROR | SELECT | SEVERITY | SHARED | SIGNAL | SLA | SLL | SRA | SRL | SUBTYPE | THEN | TO | TRANSPORT | TYPE | UNAFFECTED | UNITS | UNTIL | USE | VARIABLE | WAIT | WHEN | WHILE | WITH | XNOR | XOR | VAL | LST | ELT | POS | LEN | STD_LOGIC | STD_LOGIC_VECTOR | STD_ULOGIC | STD_ULOGIC_VECTOR | BIT | BIT_VECTOR | STRING | INTEGER | TIME | NUMERIC | BOOLEAN | CHARACTER | NATURAL | SEVERITY_LEVEL | FILE_OPEN_KIND | FILE_OPEN_STATUS | FAILURE | FALSE | TRUE | INT | REAL_NUM | HEX_NUM | BIN_NUM | REALEXP_NUM | BIN_VEC | DEC_VEC | HEX_VEC | ELEMENT | STRING | ID

%nonterm absolute_pathname of absolute_pathname | access_incomplete_type_definition of access_incomplete_type_definition | access_type_definition of access_type_definition | actual_designator of actual_designator | actual_part of actual_part | adding_operator of adding_operator | aggregate of aggregate | alias_declaration of alias_declaration | alias_designator of alias_designator | allocator of allocator | anonymous_type_indication of anonymous_type_indication | architecture_body of architecture_body | architecture_declarative_part of architecture_declarative_part | architecture_path_name of architecture_path_name | architecture_statement_part of architecture_statement_part | array_constraint of array_constraint | array_element_constraint of array_element_constraint | array_element_resolution of array_element_resolution | array_incomplete_type_definition of array_incomplete_type_definition | array_index_incomplete_type of array_index_incomplete_type | array_index_incomplete_type_list of array_index_incomplete_type_list | array_mode_view_indication of array_mode_view_indication | array_type_definition of array_type_definition | assertion of assertion | assertion_statement of assertion_statement | association_element of association_element | association_list of association_list | attribute_declaration of attribute_declaration | attribute_designator of attribute_designator | attribute_name of attribute_name | attribute_specification of attribute_specification | base of base | base_specifier of base_specifier | based_integer of based_integer | based_literal of based_literal | basic_character of basic_character | basic_graphic_character of basic_graphic_character | basic_identifier of basic_identifier | binary_miscellaneous_operator of binary_miscellaneous_operator | binding_indication of binding_indication | bit_string_literal of bit_string_literal | bit_value of bit_value | block_configuration of block_configuration | block_declarative_item of block_declarative_item | block_declarative_part of block_declarative_part | block_header of block_header | block_specification of block_specification | block_statement of block_statement | block_statement_part of block_statement_part | case_generate_alternative of case_generate_alternative | case_generate_statement of case_generate_statement | case_statement of case_statement | case_statement_alternative of case_statement_alternative | character_literal of character_literal | choice of choice | choices of choices | component_configuration of component_configuration | component_declaration of component_declaration | component_instantiation_statement of component_instantiation_statement | component_specification of component_specification | composite_type_definition of composite_type_definition | compound_configuration_specification of compound_configuration_specification | concurrent_assertion_statement of concurrent_assertion_statement | concurrent_conditional_signal_assignment of concurrent_conditional_signal_assignment | concurrent_procedure_call_statement of concurrent_procedure_call_statement | concurrent_selected_signal_assignment of concurrent_selected_signal_assignment | concurrent_signal_assignment_statement of concurrent_signal_assignment_statement | concurrent_signal_association_statement of concurrent_signal_association_statement | concurrent_simple_signal_assignment of concurrent_simple_signal_assignment | concurrent_simple_signal_association of concurrent_simple_signal_association | concurrent_statement of concurrent_statement | condition of condition | condition_clause of condition_clause | conditional_expression of conditional_expression | conditional_or_unaffected_expression of conditional_or_unaffected_expression | conditional_signal_assignment of conditional_signal_assignment | conditional_waveforms of conditional_waveforms | configuration_declaration of configuration_declaration | configuration_declarative_item of configuration_declarative_item | configuration_declarative_part of configuration_declarative_part | configuration_item of configuration_item | configuration_specification of configuration_specification | constant_declaration of constant_declaration | constrained_array_definition of constrained_array_definition | constraint of constraint | context_clause of context_clause | context_declaration of context_declaration | context_item of context_item | context_reference of context_reference | decimal_literal of decimal_literal | delay_mechanism of delay_mechanism | design_file of design_file | design_unit of design_unit | designator of designator | direction of direction | disconnection_specification of disconnection_specification | discrete_range of discrete_range | discrete_incomplete_type_definition of discrete_incomplete_type_definition | element_array_mode_view_indication of element_array_mode_view_indication | element_association of element_association | element_constraint of element_constraint | element_declaration of element_declaration | element_mode_indication of element_mode_indication | element_mode_view_indication of element_mode_view_indication | element_record_mode_view_indication of element_record_mode_view_indication | element_resolution of element_resolution | element_subtype_definition of element_subtype_definition | entity_aspect of entity_aspect | entity_class of entity_class | entity_class_entry of entity_class_entry | entity_class_entry_list of entity_class_entry_list | entity_declaration of entity_declaration | entity_declarative_item of entity_declarative_item | entity_declarative_part of entity_declarative_part | entity_designator of entity_designator | entity_header of entity_header | entity_name_list of entity_name_list | entity_specification of entity_specification | entity_statement of entity_statement | entity_statement_part of entity_statement_part | entity_tag of entity_tag | enumeration_literal of enumeration_literal | enumeration_type_definition of enumeration_type_definition | exit_statement of exit_statement | exponent of exponent | expression of expression | expression_or_unaffected of expression_or_unaffected | extended_digit of extended_digit | extended_identifier of extended_identifier | external_name of external_name | external_constant_name of external_constant_name | external_signal_name of external_signal_name | external_variable_name of external_variable_name | external_pathname of external_pathname | factor of factor | file_declaration of file_declaration | file_incomplete_type_definition of file_incomplete_type_definition | file_logical_name of file_logical_name | file_open_information of file_open_information | file_type_definition of file_type_definition | floating_incomplete_type_definition of floating_incomplete_type_definition | floating_type_definition of floating_type_definition | for_generate_statement of for_generate_statement | force_mode of force_mode | formal_designator of formal_designator | formal_parameter_list of formal_parameter_list | formal_part of formal_part | ion of ion | function_call of function_call | function_specification of function_specification | generate_specification of generate_specification | generate_statement of generate_statement | generate_statement_body of generate_statement_body | generic_clause of generic_clause | generic_list of generic_list | generic_map_aspect of generic_map_aspect | graphic_character of graphic_character | group_constituent of group_constituent | group_constituent_list of group_constituent_list | group_declaration of group_declaration | group_template_declaration of group_template_declaration | guarded_signal_specification of guarded_signal_specification | identifier of identifier | identifier_list of identifier_list | if_generate_statement of if_generate_statement | if_statement of if_statement | incomplete_subtype_indication of incomplete_subtype_indication | incomplete_type_declaration of incomplete_type_declaration | incomplete_type_definition of incomplete_type_definition | incomplete_type_mark of incomplete_type_mark | index_constraint of index_constraint | index_subtype_definition of index_subtype_definition | indexed_name of indexed_name | instantiated_unit of instantiated_unit | instantiation_list of instantiation_list | integer of integer | integer_incomplete_type_definition of integer_incomplete_type_definition | integer_type_definition of integer_type_definition | interface_constant_declaration of interface_constant_declaration | interface_declaration of interface_declaration | interface_element of interface_element | interface_file_declaration of interface_file_declaration | interface_function_specification of interface_function_specification | interface_incomplete_type_declaration of interface_incomplete_type_declaration | interface_list of interface_list | interface_object_declaration of interface_object_declaration | interface_package_declaration of interface_package_declaration | interface_package_generic_map_aspect of interface_package_generic_map_aspect | interface_procedure_specification of interface_procedure_specification | interface_signal_declaration of interface_signal_declaration | interface_subprogram_declaration of interface_subprogram_declaration | interface_type_declaration of interface_type_declaration | interface_type_indication of interface_type_indication | interface_variable_declaration of interface_variable_declaration | iteration_scheme of iteration_scheme | label of label | letter of letter | letter_or_digit of letter_or_digit | library_clause of library_clause | library_unit of library_unit | literal of literal | logical_expression of logical_expression | logical_name of logical_name | logical_name_list of logical_name_list | logical_operator of logical_operator | loop_statement of loop_statement | miscellaneous_operator of miscellaneous_operator | mode of mode | mode_indication of mode_indication | mode_view_declaration of mode_view_declaration | mode_view_element_definition of mode_view_element_definition | mode_view_indication of mode_view_indication | multiplying_operator of multiplying_operator | name of name | next_statement of next_statement | null_statement of null_statement | numeric_literal of numeric_literal | object_declaration of object_declaration | operator_symbol of operator_symbol | package_body of package_body | package_body_declarative_item of package_body_declarative_item | package_body_declarative_part of package_body_declarative_part | package_declaration of package_declaration | package_declarative_item of package_declarative_item | package_declarative_part of package_declarative_part | package_header of package_header | package_instantiation_declaration of package_instantiation_declaration | package_pathname of package_pathname | parameter_map_aspect of parameter_map_aspect | parameter_specification of parameter_specification | partial_pathname of partial_pathname | pathname_element of pathname_element | physical_incomplete_type_definition of physical_incomplete_type_definition | physical_literal of physical_literal | physical_type_definition of physical_type_definition | plain_return_statement of plain_return_statement | port_clause of port_clause | port_list of port_list | port_map_aspect of port_map_aspect | prefix of prefix | primary of primary | primary_unit of primary_unit | primary_unit_declaration of primary_unit_declaration | private_variable_declaration of private_variable_declaration | private_incomplete_type_definition of private_incomplete_type_definition | procedure_call of procedure_call | procedure_call_statement of procedure_call_statement | procedure_specification of procedure_specification | process_declarative_item of process_declarative_item | process_declarative_part of process_declarative_part | process_sensitivity_list of process_sensitivity_list | process_statement of process_statement | process_statement_part of process_statement_part | protected_type_body of protected_type_body | protected_type_body_declarative_item of protected_type_body_declarative_item | protected_type_body_declarative_part of protected_type_body_declarative_part | protected_type_declaration of protected_type_declaration | protected_type_declarative_item of protected_type_declarative_item | protected_type_declarative_part of protected_type_declarative_part | protected_type_definition of protected_type_definition | protected_type_header of protected_type_header | protected_type_instantiation_definition of protected_type_instantiation_definition | qualified_expression of qualified_expression | range of range | range_constraint of range_constraint | record_constraint of record_constraint | record_element_constraint of record_element_constraint | record_element_list of record_element_list | record_element_resolution of record_element_resolution | record_resolution of record_resolution | record_type_definition of record_type_definition | record_mode_view_indication of record_mode_view_indication | relation of relation | relational_operator of relational_operator | relative_pathname of relative_pathname | report_statement of report_statement | resolution_indication of resolution_indication | return_statement of return_statement | scalar_incomplete_type_definition of scalar_incomplete_type_definition | scalar_type_definition of scalar_type_definition | secondary_unit of secondary_unit | secondary_unit_declaration of secondary_unit_declaration | selected_expressions of selected_expressions | selected_force_assignment of selected_force_assignment | selected_name of selected_name | selected_signal_assignment of selected_signal_assignment | selected_variable_assignment of selected_variable_assignment | selected_waveform_assignment of selected_waveform_assignment | selected_waveforms of selected_waveforms | sensitivity_clause of sensitivity_clause | sensitivity_list of sensitivity_list | sequence_of_statements of sequence_of_statements | sequential_block_statement of sequential_block_statement | sequential_block_declarative_part of sequential_block_declarative_part | sequential_block_statement_part of sequential_block_statement_part | sequential_statement of sequential_statement | sequential_statement_body of sequential_statement_body | sequential_statement_declarative_part of sequential_statement_declarative_part | shared_variable_declaration of shared_variable_declaration | shift_expression of shift_expression | shift_operator of shift_operator | sign of sign | signal_assignment_statement of signal_assignment_statement | signal_association_target of signal_association_target | signal_declaration of signal_declaration | signal_kind of signal_kind | signal_list of signal_list | signature of Signature | simple_configuration_specification of simple_configuration_specification | simple_expression of simple_expression | simple_force_assignment of simple_force_assignment | simple_mode_indication of simple_mode_indication | simple_name of simple_name | simple_range of simple_range | simple_release_assignment of simple_release_assignment | simple_signal_assignment of simple_signal_assignment | simple_waveform_assignment of simple_waveform_assignment | simple_variable_assignment of simple_variable_assignment | slice_name of slice_name | string_literal of string_literal | subprogram_body of subprogram_body | subprogram_declaration of subprogram_declaration | subprogram_declarative_item of subprogram_declarative_item | subprogram_declarative_part of subprogram_declarative_part | subprogram_header of subprogram_header | subprogram_instantiation_declaration of subprogram_instantiation_declaration | subprogram_kind of subprogram_kind | subprogram_specification of subprogram_specification | subprogram_statement_part of subprogram_statement_part | subtype_declaration of subtype_declaration | subtype_indication of subtype_indication | suffix of suffix | target of target | term of term | timeout_clause of timeout_clause | tool_directive of tool_directive | type_conversion of type_conversion | type_declaration of type_declaration | type_definition of type_definition | type_mark of type_mark | unary_expression of unary_expression | unary_miscellaneous_operator of unary_miscellaneous_operator | unbounded_array_definition of unbounded_array_definition | use_clause of use_clause | value_return_statement of value_return_statement | variable_assignment_statement of variable_assignment_statement | variable_declaration of variable_declaration | verification_unit_binding_indication of verification_unit_binding_indication | verification_unit_list of verification_unit_list | wait_statement of wait_statement | waveform of waveform | waveform_element of waveform_element

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
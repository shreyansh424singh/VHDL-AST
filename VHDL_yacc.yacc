open W_datatypes
open Symbol_Table
%%
%name Whl

%term EOF | ARROW | EXPT | ASSIGN | NEQ | GE | LE | BOX | AMP | TICK | UNDERSCORE | BACKTICK | HASH | INVERTEDCOMMA | QUESTION | DOUBLEARROW | DOUBLEQUES | LPARAN | RPARAN | MULT | PLUS | COMMA | MINUS | DOT | DIV | COLON | SEMICOLON | LT | EQ | GT | BAR | LSQUARE | RSQUARE | ABS | ACCESS | AFTER | ALIAS | ALL | AND | ARCHITECTURE | ARRAY | ASSERT | ATRIBUTE | BEGIN | BLOCK | BODY | BUFFER | BUS | CASE | COMPONENT | CONFIGURATION | CONSTANT | DISCONNECT | DOWNTO | ELSE | ELSIF | END | ENTITY | EXIT | FILE | FOR | FUNCTION | GENERATE | GENERIC | GROUP | GUARDED | IF | IMPURE | IN | INERTIAL | INOUT | IS | LABEL | LIBRARY | LINKAGE | LITERAL | LOOP | MAP | MOD | NAND | NEW | NEXT | NOR | NOT | NULL | OF | ON | OPEN | OR | OTHERS | OUT | PACKAGE | PORT | POSTPONED | PROCEDURE | PROCESS | PROTECTED | PURE | RANGE | RECORD | REGISTER | REJECT | REM | REPORT | RETURN | ROL | ROR | SELECT | SEVERITY | SHARED | SIGNAL | SLA | SLL | SRA | SRL | SUBTYPE | THEN | TO | TRANSPORT | TYPE | UNAFFECTED | UNITS | UNTIL | USE | VARIABLE | WAIT | WHEN | WHILE | WITH | XNOR | XOR | VUNIT | VAL | LST | ELT | POS | LEN | STD_LOGIC | STD_LOGIC_VECTOR | STD_ULOGIC | STD_ULOGIC_VECTOR | BIT | BIT_VECTOR | STRING | INTEGER | TIME | NUMERIC | BOOLEAN | CHARACTER | NATURAL | SEVERITY_LEVEL | FILE_OPEN_KIND | FILE_OPEN_STATUS | FAILURE | FALSE | TRUE | INT | REAL_NUM | HEX_NUM | BIN_NUM | REALEXP_NUM | BIN_VEC | DEC_VEC | HEX_VEC | ELEMENT | STRINGG | ID | CARROT | BACKSLASH | RIGHTDOUBLE | LEFTDOUBLE | RELOP1 | RELOP2 | RELOP3 | RELOP4 | RELOP5 | RELOP6 | ADT | RELEASE | FORCE | VIEW | EXPRESSION | TYPE_MARK | PARAMETER | PRIVATE | EXP | MODE | CONTEXT | D | SX | SO | SB | UX | UO | UB | X | O | B | E | ATTRIBUTE | LOWER_CASE | UPPER_CASE | NUM | SEQUENCE | PROPERTY | DEFAULT

%nonterm absolute_pathname of absolute_pathname | abstract_literal of abstract_literal | access_incomplete_type_definition of access_incomplete_type_definition | access_type_definition of access_type_definition | actual_designator of actual_designator | actual_part of actual_part | adding_operator of adding_operator | aggregate of aggregate | alias_declaration of alias_declaration | alias_designator of alias_designator | allocator of allocator | anonymous_type_indication of anonymous_type_indication | architecture_body of architecture_body | architecture_declarative_part of architecture_declarative_part | architecture_path_name of architecture_path_name | architecture_statement_part of architecture_statement_part | array_constraint of array_constraint | array_element_constraint of array_element_constraint | array_element_resolution of array_element_resolution | array_incomplete_type_definition of array_incomplete_type_definition | array_index_incomplete_type of array_index_incomplete_type | array_index_incomplete_type_list of array_index_incomplete_type_list | array_mode_view_indication of array_mode_view_indication | array_type_definition of array_type_definition | assertion of assertion | assertion_statement of assertion_statement | association_element of association_element | association_list of association_list | attribute_declaration of attribute_declaration | attribute_designator of attribute_designator | attribute_name of attribute_name | attribute_specification of attribute_specification | base of base | base_specifier of base_specifier | based_integer of based_integer | based_literal of based_literal | basic_character of basic_character | basic_graphic_character of basic_graphic_character | basic_identifier of basic_identifier | binary_miscellaneous_operator of binary_miscellaneous_operator | binding_indication of binding_indication | bit_string_literal of bit_string_literal | bit_value of bit_value | block_configuration of block_configuration | block_declarative_item of block_declarative_item | block_declarative_part of block_declarative_part | block_header of block_header | block_specification of block_specification | block_statement of block_statement | block_statement_part of block_statement_part | case_generate_alternative of case_generate_alternative | case_generate_statement of case_generate_statement | case_statement of case_statement | case_statement_alternative of case_statement_alternative | character_literal of character_literal | choice of choice | choices of choices | component_configuration of component_configuration | component_declaration of component_declaration | component_instantiation_statement of component_instantiation_statement | component_specification of component_specification | composite_type_definition of composite_type_definition | compound_configuration_specification of compound_configuration_specification | concurrent_assertion_statement of concurrent_assertion_statement | concurrent_conditional_signal_assignment of concurrent_conditional_signal_assignment | concurrent_procedure_call_statement of concurrent_procedure_call_statement | concurrent_selected_signal_assignment of concurrent_selected_signal_assignment | concurrent_signal_assignment_statement of concurrent_signal_assignment_statement | concurrent_signal_association_statement of concurrent_signal_association_statement | concurrent_simple_signal_assignment of concurrent_simple_signal_assignment | concurrent_simple_signal_association of concurrent_simple_signal_association | concurrent_statement of concurrent_statement | condition of condition | condition_clause of condition_clause | conditional_expression of conditional_expression | conditional_or_unaffected_expression of conditional_or_unaffected_expression | conditional_signal_assignment of conditional_signal_assignment | conditional_waveforms of conditional_waveforms | configuration_declaration of configuration_declaration | configuration_declarative_item of configuration_declarative_item | configuration_declarative_part of configuration_declarative_part | configuration_item of configuration_item | configuration_specification of configuration_specification | constant_declaration of constant_declaration | constrained_array_definition of constrained_array_definition | constraint of constraint | context_clause of context_clause | context_declaration of context_declaration | context_item of context_item | context_reference of context_reference | decimal_literal of decimal_literal | delay_mechanism of delay_mechanism | design_file of design_file | design_unit of design_unit | designator of designator | direction of direction | disconnection_specification of disconnection_specification | discrete_range of discrete_range | discrete_incomplete_type_definition of discrete_incomplete_type_definition | element_array_mode_view_indication of element_array_mode_view_indication | element_association of element_association | element_constraint of element_constraint | element_declaration of element_declaration | element_mode_indication of element_mode_indication | element_mode_view_indication of element_mode_view_indication | element_record_mode_view_indication of element_record_mode_view_indication | element_resolution of element_resolution | element_resolution_seq of element_resolution list | element_subtype_definition of element_subtype_definition | entity_aspect of entity_aspect | entity_class of entity_class | entity_class_entry of entity_class_entry | entity_class_entry_list of entity_class_entry_list | entity_declaration of entity_declaration | entity_declarative_item of entity_declarative_item | entity_declarative_part of entity_declarative_part | entity_designator of entity_designator | entity_header of entity_header | entity_name_list of entity_name_list | entity_specification of entity_specification | entity_statement of entity_statement | entity_statement_part of entity_statement_part | entity_tag of entity_tag | enumeration_literal of enumeration_literal | enumeration_type_definition of enumeration_type_definition | exit_statement of exit_statement | exponent of exponent | expression of expression | expression_or_unaffected of expression_or_unaffected | extended_digit of extended_digit | extended_identifier of extended_identifier | external_name of external_name | external_constant_name of external_constant_name | external_signal_name of external_signal_name | external_variable_name of external_variable_name | external_pathname of external_pathname | factor of factor | file_declaration of file_declaration | file_incomplete_type_definition of file_incomplete_type_definition | file_logical_name of file_logical_name | file_open_information of file_open_information | file_type_definition of file_type_definition | floating_incomplete_type_definition of floating_incomplete_type_definition | floating_type_definition of floating_type_definition | for_generate_statement of for_generate_statement | force_mode of force_mode | formal_designator of formal_designator | formal_parameter_list of formal_parameter_list | formal_part of formal_part | full_type_declaration of full_type_declaration | function_call of function_call | function_specification of function_specification | generate_specification of generate_specification | generate_statement of generate_statement | generate_statement_body of generate_statement_body | generic_clause of generic_clause | generic_list of generic_list | generic_map_aspect of generic_map_aspect | graphic_character of graphic_character | group_constituent of group_constituent | group_constituent_list of group_constituent_list | group_declaration of group_declaration | group_template_declaration of group_template_declaration | guarded_signal_specification of guarded_signal_specification | identifier of identifier | identifier_list of identifier_list | if_generate_statement of if_generate_statement | if_statement of if_statement | incomplete_subtype_indication of incomplete_subtype_indication | incomplete_type_declaration of incomplete_type_declaration | incomplete_type_definition of incomplete_type_definition | incomplete_type_mark of incomplete_type_mark | index_constraint of index_constraint | index_subtype_definition of index_subtype_definition | indexed_name of indexed_name | instantiated_unit of instantiated_unit | instantiation_list of instantiation_list | integer of integer | integer_incomplete_type_definition of integer_incomplete_type_definition | integer_type_definition of integer_type_definition | interface_constant_declaration of interface_constant_declaration | interface_declaration of interface_declaration | interface_element of interface_element | interface_file_declaration of interface_file_declaration | interface_function_specification of interface_function_specification | interface_incomplete_type_declaration of interface_incomplete_type_declaration | interface_list of interface_list | interface_object_declaration of interface_object_declaration | interface_package_declaration of interface_package_declaration | interface_package_generic_map_aspect of interface_package_generic_map_aspect | interface_procedure_specification of interface_procedure_specification | interface_signal_declaration of interface_signal_declaration | interface_subprogram_declaration of interface_subprogram_declaration | interface_type_declaration of interface_type_declaration | interface_type_indication of interface_type_indication | interface_variable_declaration of interface_variable_declaration | iteration_scheme of iteration_scheme | label of label | letter of letter | letter_or_digit of letter_or_digit | library_clause of library_clause | library_unit of library_unit | literal of literal | logical_expression of logical_expression | logical_name of logical_name | logical_name_list of logical_name_list | logical_operator of logical_operator | loop_statement of loop_statement | miscellaneous_operator of miscellaneous_operator | mode of mode 
| mode_indication of mode_indication | mode_view_declaration of mode_view_declaration | mode_view_element_definition of mode_view_element_definition | mode_view_indication of mode_view_indication | multiplying_operator of multiplying_operator | name of name | next_statement of next_statement | null_statement of null_statement | numeric_literal of numeric_literal | object_declaration of object_declaration | operator_symbol of operator_symbol | package_body of package_body | package_body_declarative_item of package_body_declarative_item | package_body_declarative_part of package_body_declarative_part | package_declaration of package_declaration | package_declarative_item of package_declarative_item | package_declarative_part of package_declarative_part | package_header of package_header | package_instantiation_declaration of package_instantiation_declaration | package_pathname of package_pathname | parameter_map_aspect of parameter_map_aspect | parameter_specification of parameter_specification | partial_pathname of partial_pathname | pathname_element of pathname_element | physical_incomplete_type_definition of physical_incomplete_type_definition | physical_literal of physical_literal | physical_type_definition of physical_type_definition | plain_return_statement of plain_return_statement | port_clause of port_clause | port_list of port_list | port_map_aspect of port_map_aspect | prefix of prefix | primary of primary | primary_unit of primary_unit | primary_unit_declaration of primary_unit_declaration | private_variable_declaration of private_variable_declaration | private_incomplete_type_definition of private_incomplete_type_definition | procedure_call of procedure_call | procedure_call_statement of procedure_call_statement | procedure_specification of procedure_specification | process_declarative_item of process_declarative_item | process_declarative_part of process_declarative_part | process_sensitivity_list of process_sensitivity_list | process_statement of process_statement | process_statement_part of process_statement_part | protected_type_body of protected_type_body | protected_type_body_declarative_item of protected_type_body_declarative_item | protected_type_body_declarative_part of protected_type_body_declarative_part | protected_type_declaration of protected_type_declaration | protected_type_declarative_item of protected_type_declarative_item | protected_type_declarative_part of protected_type_declarative_part | protected_type_definition of protected_type_definition | protected_type_header of protected_type_header | protected_type_instantiation_definition of protected_type_instantiation_definition | qualified_expression of qualified_expression | range of range | range_constraint of range_constraint | record_constraint of record_constraint | record_element_constraint of record_element_constraint | record_element_list of record_element_list | record_element_resolution of record_element_resolution | record_resolution of record_resolution | record_type_definition of record_type_definition | record_mode_view_indication of record_mode_view_indication | relation of relation | relational_operator of relational_operator | relative_pathname of relative_pathname | report_statement of report_statement | resolution_indication of resolution_indication | return_statement of return_statement | scalar_incomplete_type_definition of scalar_incomplete_type_definition | scalar_type_definition of scalar_type_definition | secondary_unit of secondary_unit | secondary_unit_declaration of secondary_unit_declaration | selected_expressions of selected_expressions | selected_force_assignment of selected_force_assignment | selected_name of selected_name | selected_signal_assignment of selected_signal_assignment | selected_variable_assignment of selected_variable_assignment | selected_waveform_assignment of selected_waveform_assignment | selected_waveforms of selected_waveforms | sensitivity_clause of sensitivity_clause | sensitivity_list of sensitivity_list | sequence_of_statements of sequence_of_statements | sequential_block_statement of sequential_block_statement | sequential_block_declarative_part of sequential_block_declarative_part | sequential_block_statement_part of sequential_block_statement_part | sequential_statement of sequential_statement | sequential_statement_body of sequential_statement_body | sequential_statement_declarative_part of sequential_statement_declarative_part | shared_variable_declaration of shared_variable_declaration | shift_expression of shift_expression | shift_operator of shift_operator | sign of sign | signal_assignment_statement of signal_assignment_statement | signal_association_target of signal_association_target | signal_declaration of signal_declaration | signal_kind of signal_kind | signal_list of signal_list | signatur of signatur | simple_configuration_specification of simple_configuration_specification | simple_expression of simple_expression | simple_force_assignment of simple_force_assignment | simple_mode_indication of simple_mode_indication | simple_name of simple_name | simple_range of simple_range | simple_release_assignment of simple_release_assignment | simple_signal_assignment of simple_signal_assignment | simple_waveform_assignment of simple_waveform_assignment | simple_variable_assignment of simple_variable_assignment | slice_name of slice_name | string_literal of string_literal | subprogram_body of subprogram_body | subprogram_declaration of subprogram_declaration | subprogram_declarative_item of subprogram_declarative_item | subprogram_declarative_part of subprogram_declarative_part | subprogram_header of subprogram_header | subprogram_instantiation_declaration of subprogram_instantiation_declaration | subprogram_kind of subprogram_kind | subprogram_specification of subprogram_specification | subprogram_statement_part of subprogram_statement_part | subtype_declaration of subtype_declaration | subtype_indication of subtype_indication | suffix of suffix | target of target | term of term | timeout_clause of timeout_clause | tool_directive of tool_directive | type_conversion of type_conversion | type_declaration of type_declaration | type_definition of type_definition | type_mark of type_mark | unary_expression of unary_expression | unary_miscellaneous_operator of unary_miscellaneous_operator | unbounded_array_definition of unbounded_array_definition | use_clause of use_clause | value_return_statement of value_return_statement | variable_assignment_statement of variable_assignment_statement | variable_declaration of variable_declaration | verification_unit_binding_indication of verification_unit_binding_indication | verification_unit_list of verification_unit_list | wait_statement of wait_statement | waveform of waveform | waveform_element of waveform_element | selected_name_seq of selected_name list | name_seq of name list | waveform_element_seq of waveform_element list | index_subtype_definition_seq of index_subtype_definition list | graphic_character_seq of graphic_character list | multiplying_operator_factor_seq of (multiplying_operator * factor) list | sequential_statement_seq of sequential_satement list | subprogram_declarative_item_seq of subprogram_declarative_item list | adding_operator_term_seq of (adding_operator * term) list | type_mark_seq of type_mark list | record_element_constraint_seq of record_element_constraint list | simple_name_seq of simple_name list | record_element_resolution_seq of record_element_resolution list | element_declaration_seq of element_declaration list | carrot_dot_seq of (CARROT * DOT) list | ex_when_choices_seq of (expression * choices) list | wave_when_choices_seq of (waveform * choices) list | process_declarative_item_seq of process_declarative_item list | package_declarative_item_seq of package_declarative_item list | array_index_incomplete_type_seq of array_index_incomplete list | association_element_seq of association_element list | block_declarative_item_seq of block_declarative_item list | case_generate_alternative_seq of case_generate_alternative list | case_statement_alternative_seq of case_statement_alternative list | choice_seq of choice list | concurrent_statement_seq of concurrent_statement list | conditional_expression_seq of conditional_expression list | conditional_or_unaffected_expression_seq of conditional_or_unaffected_expression list | conditional_waveforms_seq of conditional_waveforms list | configuration_declarative_item_seq of configuration_declarative_item list | configuration_item_seq of configuration_item list | context_item_seq of context_item list | design_unit_seq of design_unit list | discrete_range_seq of discrete_range list | element_association_seq of element_association list | entity_class_entry_seq of entity_class_entry list | entity_declarative_item_seq of entity_declarative_item list | entity_designator_seq of entity_designator list | entity_statement_seq of entity_statement list | enumeration_literal_seq of enumeration_literal list | expression_seq of expression list | extended_digit_seq of extended_digit list | group_constituent_seq of group_constituent list | identifier_seq of identifier list | if_generate_statement1_seq of if_generate_statement1 list | if_generate_statement2_seq of if_generate_statement2 list | if_statement_seq of if_statement list | digit_seq of digit list | interface_element_seq of interface_element list | label_seq of label list | letter_or_digit_seq of letter_or_digit list | logical_name_seq of logical_name list | mode_view_element_definition_seq of mode_view_element_definition list | conditional_expression_1 of conditional_expression_1 | conditional_or_unaffected_expression_1 of conditional_or_unaffected_expression_1 | conditional_waveforms_1 of conditional_waveforms_1 | if_generate_statement1 of if_generate_statement1 | if_generate_statement2 of if_generate_statement2 | if_statement1 of if_statement1 | special_character | digit | upper_case_letter | lower_case_letter
| verification_unit_binding_indication_seq of verification_unit_binding_indication list | graphic_character_seq1 of graphic_character list | interface_subprogram_default of interface_subprogram_default | interface_subprogram_specification of interface_subprogram_specification | relation1_seq of relation list | relation2_seq of relation list | relation3_seq of relation list | relation4_seq of relation list | package_body_declarative_item_seq of package_body_declarative_item | p_simple_name_seq of simple_name list | pathname_element_seq of pathname_element list | secondary_unit_declaration_seq of secondary_unit_declaration list | protected_type_body_declarative_item_seq of protected_type_body_declarative_item list | protected_type_declarative_item_seq of protected_type_declarative_item list | use_clause_seq of use_clause list | root of root

%pos int

(*optional declarations *)
%eop EOF
%noshift EOF

(* %header  *)
%left COMMA
%left OR
%left AND
%left EQ NEQ
%left LT GT LE GE
%left PLUS MINUS
%left DIV MOD MULT
%nonassoc LPARAN RPARAN

(*%start root *)

%verbose
%arg (fileName): string

%%

root : design_file ((W_datatypes.ROOT(design_file)))

special_character : AMP                   ((W_datatypes.AMP()))
                  | TICK                  ((W_datatypes.TICK()))
                  | LPARAN                ((W_datatypes.LPARAN()))
                  | RPARAN                ((W_datatypes.RPARAN()))
                  | MULT                  ((W_datatypes.MULT()))
                  | PLUS                  ((W_datatypes.PLUS()))
                  | COMMA                 ((W_datatypes.COMMA()))
                  | MINUS                 ((W_datatypes.MINUS()))
                  | DOT                   ((W_datatypes.DOT()))
                  | DIV                   ((W_datatypes.DIV()))
                  | COLON                 ((W_datatypes.COLON()))
                  | SEMICOLON             ((W_datatypes.SEMICOLON()))
                  | LT                    ((W_datatypes.LT()))
                  | EQ                    ((W_datatypes.EQ()))
                  | GT                    ((W_datatypes.GT()))
                  | BAR                   ((W_datatypes.BAR()))
                  | LSQUARE               ((W_datatypes.LSQUARE()))
                  | RSQUARE               ((W_datatypes.RSQUARE()))
                  | UNDERSCORE            ((W_datatypes.UNDERSCORE()))       
                  | HASH                  ((W_datatypes.HASH()))
                  | INVERTEDCOMMA         ((W_datatypes.INVERTEDCOMMA()))       

lower_case_letter : LOWER_CASE            ((W_datatypes.LOWER_CASE_LETTER()))

upper_case_letter : UPPER_CASE            ((W_datatypes.UPPER_CASE_LETTER()))

digit : NUM                               ((W_datatypes.DIGIT()))

absolute_pathname : DOT partial_pathname   (W_datatypes.ABSOLUTE_PATHNAME(partial_pathname))

abstract_literal : decimal_literal         ((W_datatypes.DECIMAL_LITERAL(decimal_literal)))
                 | based_literal           ((W_datatypes.BASED_LITERAL(based_literal)))

access_incomplete_type_definition : ACCESS incomplete_subtype_indication    ((W_datatypes.INCOMPLETE_SUBTYPE_INDICATION(incomplete_subtype_indication)))

access_type_definition : ACCESS subtype_indication  ((W_datatypes.ACCESS_SUBTYPE_INDICATION(subtype_indication)))

actual_designator : INERTIAL expression   ((W_datatypes.EXPRESSION1(expression)))  
                  | expression            ((W_datatypes.EXPRESSION1(expression)))      
                  | name                  ((W_datatypes.NAME(name)))                  
                  | subtype_indication    ((W_datatypes.SUBTYPE_INDICATION(subtype_indication)))
                  | OPEN                  ((W_datatypes.OPEN()))          

actual_part : actual_designator                             ((W_datatypes.ACTUAL_DESIGNATOR(actual_designator)))                          
            | name LPARAN actual_designator RPARAN          ((W_datatypes.FUNCTION_NAME(name, actual_designator)))                          
            | type_mark LPARAN actual_designator RPARAN     ((W_datatypes.TYPE_MARK1(type_mark, actual_designator)))                  

adding_operator : PLUS    ((W_datatypes.PLUS()))                    
                | MINUS   ((W_datatypes.MINUS()))                    
                | AMP     ((W_datatypes.AMP()))

aggregate : LPARAN element_association_seq RPARAN     ((W_datatypes.ELEMENT_ASSOCIATION(element_association_seq)))                    

alias_declaration : ALIAS alias_designator COLON subtype_indication IS name signatur SEMICOLON      ((W_datatypes.ALIAS_2( alias_designator, subtype_indication, name, signatur)))                    
                  | ALIAS alias_designator IS name signatur SEMICOLON       ((W_datatypes.ALIAS_3( alias_designator, name, signatur)))                    
                  | ALIAS alias_designator IS name SEMICOLON        ((W_datatypes.ALIAS_1( alias_designator, name)))                    
                  | ALIAS alias_designator COLON subtype_indication IS name SEMICOLON       ((W_datatypes.ALIAS_4( alias_designator, subtype_indication, name)))                    

alias_designator : identifier           ((W_datatypes.ALIAS_DESIGNATOR_1(identifier)))                    
                 | character_literal    ((W_datatypes.ALIAS_DESIGNATOR_2(character_literal)))                    
                 | operator_symbol      ((W_datatypes.ALIAS_DESIGNATOR_3(operator_symbol)))                    

allocator : NEW subtype_indication      ((W_datatypes.SUBTYPE_INDICATION(subtype_indication)))
          | NEW qualified_expression    ((W_datatypes.QUALIFIED_EXPRESSION(qualified_expression)))

anonymous_type_indication : TYPE IS incomplete_type_definition      ((W_datatypes.INCOMPLETE_TYPE_DEFINITION(incomplete_type_definition)))

architecture_body : ARCHITECTURE identifier OF name IS architecture_declarative_part BEGIN architecture_statement_part END ARCHITECTURE simple_name SEMICOLON    ((W_datatypes.ARCHITECTURE_2(identifier, name, architecture_declarative_part, architecture_statement_part)))
                  | ARCHITECTURE identifier OF name IS architecture_declarative_part BEGIN architecture_statement_part END simple_name SEMICOLON                 ((W_datatypes.ARCHITECTURE_2(identifier, name, architecture_declarative_part, architecture_statement_part)))
                  | ARCHITECTURE identifier OF name IS architecture_declarative_part BEGIN architecture_statement_part END SEMICOLON                             ((W_datatypes.ARCHITECTURE_1(identifier, name, architecture_declarative_part, architecture_statement_part, simple_name)))        
                  | ARCHITECTURE identifier OF name IS architecture_declarative_part BEGIN architecture_statement_part END ARCHITECTURE SEMICOLON                ((W_datatypes.ARCHITECTURE_1(identifier, name, architecture_declarative_part, architecture_statement_part, simple_name)))

architecture_declarative_part : block_declarative_item_seq      ((W_datatypes.BLOCK_DECLARATIVE_ITEM(block_declarative_item_seq)))

architecture_path_name : simple_name LPARAN simple_name RPARAN      ((W_datatypes.ARCHITECTURE_PATH_NAME(simple_name1, simple_name2)))

architecture_statement_part : concurrent_statement_seq              ((W_datatypes.ARCHITECTURE_STATEMENT_PART(concurrent_statement_seq)))

array_constraint : index_constraint array_element_constraint       ((W_datatypes.ARRAY_INDEX_CONSTRAINT_1(index_constraint, array_element_constraint)))         
                 | index_constraint                                    ((W_datatypes.ARRAY_INDEX_CONSTRAINT_2(index_constraint)))                 
                 | LPARAN OPEN RPARAN array_element_constraint         ((W_datatypes.ARRAY_INDEX_CONSTRAINT_3(array_element_constraint)))         
                 | LPARAN OPEN RPARAN                                  ((W_datatypes.OPEN()))         

array_element_constraint : element_constraint       ((W_datatypes.ARRAY_ELEMENT_CONSTRAINT(element_constraint)))

array_element_resolution : resolution_indication    ((W_datatypes.ARRAY_RESOLUTION_INDICATION(resolution_indication)))

array_incomplete_type_definition : ARRAY LPARAN array_index_incomplete_type_list RPARAN OF incomplete_subtype_indication        ((W_datatypes.ARRAY_INCOMPLETE_TYPE_DEF(array_index_incomplete_type_list, incomplete_subtype_indication)))

array_index_incomplete_type_seq : array_index_incomplete_type array_index_incomplete_type_seq       (array_index_incomplete_type :: array_index_incomplete_type_seq)
                                |     ([])

array_index_incomplete_type : index_subtype_definition      ((W_datatypes.ARRAY_INDEX_SUBTYPE_DEFINITION(index_subtype_definition)))
                            | index_constraint              ((W_datatypes.ARRAY_INDEX_CONSTRAINT(index_constraint)))
                            | anonymous_type_indication     ((W_datatypes.ARRAY_ANONYMOUS_TYPE_INDICATION(anonymous_type_indication)))

array_index_incomplete_type_list : array_index_incomplete_type_seq          ((W_datatypes.ARRAY_INDEX_INCOMPLETE_TYPE_LIST(array_index_incomplete_type_seq)))

array_mode_view_indication : VIEW LPARAN name RPARAN OF subtype_indication          ((W_datatypes.ARRAY_MODE_VIEW_IND(name, subtype_indication)))

array_type_definition : unbounded_array_definition      ((W_datatypes.ARRAY_TYPE_DEFINITION_1(unbounded_array_definition)))
                      | constrained_array_definition    ((W_datatypes.ARRAY_TYPE_DEFINITION_2(constrained_array_definition)))

assertion : ASSERT condition REPORT expression SEVERITY expression      ((W_datatypes.ASSERT_1(condition, expression1, expression2)))
          | ASSERT condition REPORT expression                          ((W_datatypes.ASSERT_2(condition, expression)))
          | ASSERT condition SEVERITY expression                        ((W_datatypes.ASSERT_2(condition, expression)))
          | ASSERT condition                                            ((W_datatypes.ASSERT_3(condition)))

assertion_statement : label COLON assertion SEMICOLON       ((W_datatypes.ASSERTION_STM_1(label, assertion)))
                    | assertion SEMICOLON                   ((W_datatypes.ASSERTION_STM_2(assertion)))

association_element_seq : association_element association_element_seq       (association_element :: association_element_seq)
                        |     ([])

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

base : integer              ((W_datatypes.BASE(integer)))

base_specifier : B     ((W_datatypes.B()))      
               | O     ((W_datatypes.O()))
               | X     ((W_datatypes.X()))
               | UB    ((W_datatypes.UB()))
               | UO    ((W_datatypes.UO()))
               | UX    ((W_datatypes.UX()))
               | SB    ((W_datatypes.SB()))
               | SO    ((W_datatypes.SO()))
               | SX    ((W_datatypes.SX()))
               | D     ((W_datatypes.D()))

based_integer : extended_digit extended_digit_seq             ((W_datatypes.EXTENDED_DIGIT_LIST(extended_digit, extended_digit_seq)))     

based_literal : base HASH based_integer DOT based_integer HASH exponent        ((W_datatypes.BASED_LITERAL_1(base, based_integer1, based_integer2, exponent)))     
              | base HASH based_integer DOT based_integer HASH                 ((W_datatypes.BASED_LITERAL_2(base, based_integer1, based_integer2))) 
              | base HASH based_integer HASH exponent                          ((W_datatypes.BASED_LITERAL_3(base, based_integer, exponent)))     
              | base HASH based_integer HASH                                   ((W_datatypes.BASED_LITERAL_4(base, based_integer)))     

basic_character : basic_graphic_character       ((W_datatypes.BASIC_CHARACTER_1(basic_graphic_character)))

basic_graphic_character : upper_case_letter        ((W_datatypes.BASIC_GRAPHIC_CHARACTER_1(upper_case_letter)))                 
                        | digit                    ((W_datatypes.BASIC_GRAPHIC_CHARACTER_2(digit)))     
                        | special_character        ((W_datatypes.BASIC_GRAPHIC_CHARACTER_3(special_character)))             

basic_identifier : letter letter_or_digit_seq       ((W_datatypes.BASIC_IDENTIFIER(letter, letter_or_digit_seq)))

binding_indication : USE entity_aspect generic_map_aspect port_map_aspect       ((W_datatypes.BINDING_INDICATION_1(entity_aspect, generic_map_aspect, port_map_aspect)))                                        
                   | USE entity_aspect generic_map_aspect                       ((W_datatypes.BINDING_INDICATION_2(entity_aspect, generic_map_aspect)))                        
                   | USE entity_aspect port_map_aspect                          ((W_datatypes.BINDING_INDICATION_3(entity_aspect, port_map_aspect)))                    
                   | generic_map_aspect port_map_aspect                         ((W_datatypes.BINDING_INDICATION_4(generic_map_aspect, port_map_aspect)))                    
                   | USE entity_aspect                                          ((W_datatypes.BINDING_INDICATION_5(entity_aspect)))    
                   | port_map_aspect                                            ((W_datatypes.BINDING_INDICATION_6(port_map_aspect)))    
                   | generic_map_aspect                                         ((W_datatypes.BINDING_INDICATION_7(generic_map_aspect)))    
                   |    ([])

bit_string_literal : integer base_specifier INVERTEDCOMMA bit_value INVERTEDCOMMA      ((W_datatypes.BIT_STRING_LITERAL_1(integer, base_specifier, bit_value )))                             
                   | integer base_specifier INVERTEDCOMMA INVERTEDCOMMA                ((W_datatypes.BIT_STRING_LITERAL_2(integer, base_specifier)))                 
                   | base_specifier INVERTEDCOMMA INVERTEDCOMMA                        ((W_datatypes.BIT_STRING_LITERAL_3(base_specifier)))         
                   | base_specifier INVERTEDCOMMA bit_value INVERTEDCOMMA              ((W_datatypes.BIT_STRING_LITERAL_4(base_specifier, bit_value )))                     

bit_value : graphic_character graphic_character_seq           ((W_datatypes.BIT_VALUE(graphic_character, graphic_character_seq))) 

block_configuration : FOR block_specification use_clause_seq configuration_item_seq END FOR SEMICOLON       ((W_datatypes.BLOCK_CONFIGURATION(block_specification, use_clause_seq, configuration_item_seq)))

block_declarative_item_seq : block_declarative_item block_declarative_item_seq       (block_declarative_item :: block_declarative_item_seq)
                           |  ([])

block_declarative_item : subprogram_declaration                   ((W_datatypes.BLOCK_DECLARATIVE_ITEM_1(subprogram_declaration)))              
                       | subprogram_body                          ((W_datatypes.BLOCK_DECLARATIVE_ITEM_2(subprogram_body)))          
                       | subprogram_instantiation_declaration     ((W_datatypes.BLOCK_DECLARATIVE_ITEM_3(subprogram_instantiation_declaration)))                              
                       | package_declaration                      ((W_datatypes.BLOCK_DECLARATIVE_ITEM_4(package_declaration)))              
                       | package_body                             ((W_datatypes.BLOCK_DECLARATIVE_ITEM_5(package_body)))      
                       | package_instantiation_declaration        ((W_datatypes.BLOCK_DECLARATIVE_ITEM_6(package_instantiation_declaration)))                          
                       | type_declaration                         ((W_datatypes.BLOCK_DECLARATIVE_ITEM_7(type_declaration)))          
                       | subtype_declaration                      ((W_datatypes.BLOCK_DECLARATIVE_ITEM_8(subtype_declaration)))              
                       | constant_declaration                     ((W_datatypes.BLOCK_DECLARATIVE_ITEM_9(constant_declaration)))              
                       | signal_declaration                       ((W_datatypes.BLOCK_DECLARATIVE_ITEM_10(signal_declaration)))          
                       | variable_declaration                     ((W_datatypes.BLOCK_DECLARATIVE_ITEM_11(variable_declaration)))              
                       | file_declaration                         ((W_datatypes.BLOCK_DECLARATIVE_ITEM_12(file_declaration)))          
                       | alias_declaration                        ((W_datatypes.BLOCK_DECLARATIVE_ITEM_13(alias_declaration)))          
                       | component_declaration                    ((W_datatypes.BLOCK_DECLARATIVE_ITEM_14(component_declaration)))              
                       | attribute_declaration                    ((W_datatypes.BLOCK_DECLARATIVE_ITEM_15(attribute_declaration)))              
                       | attribute_specification                  ((W_datatypes.BLOCK_DECLARATIVE_ITEM_16(attribute_specification)))                  
                       | configuration_specification              ((W_datatypes.BLOCK_DECLARATIVE_ITEM_17(configuration_specification)))                      
                       | disconnection_specification              ((W_datatypes.BLOCK_DECLARATIVE_ITEM_18(disconnection_specification)))                      
                       | use_clause                               ((W_datatypes.BLOCK_DECLARATIVE_ITEM_19(use_clause)))  
                       | group_template_declaration               ((W_datatypes.BLOCK_DECLARATIVE_ITEM_20(group_template_declaration)))                  
                       | group_declaration                        ((W_datatypes.BLOCK_DECLARATIVE_ITEM_21(group_declaration)))          

block_declarative_part : block_declarative_item_seq               ((W_datatypes.BLOCK_DECLARATIVE_PART(block_declarative_item_seq)))

block_header : generic_clause generic_map_aspect SEMICOLON port_clause port_map_aspect SEMICOLON      ((W_datatypes.BLOCK_HEADER_1(generic_clause, generic_map_aspect, port_clause, port_map_aspect)))                                                                              
             | generic_clause port_clause port_map_aspect SEMICOLON                                   ((W_datatypes.BLOCK_HEADER_2(generic_clause, port_clause, port_map_aspect)))                                              
             | port_clause port_map_aspect SEMICOLON                                                  ((W_datatypes.BLOCK_HEADER_3(port_clause, port_map_aspect)))                                  
             | generic_clause generic_map_aspect SEMICOLON port_clause                                ((W_datatypes.BLOCK_HEADER_4(generic_clause, generic_map_aspect, port_clause)))                                                  
             | generic_clause port_clause                                                             ((W_datatypes.BLOCK_HEADER_5(generic_clause, port_clause)))                      
             | port_clause                                                                            ((W_datatypes.BLOCK_HEADER_6(port_clause)))      
             | generic_clause generic_map_aspect SEMICOLON                                            ((W_datatypes.BLOCK_HEADER_7(generic_clause, generic_map_aspect)))                                      
             | generic_clause                                                                         ((W_datatypes.BLOCK_HEADER_8(generic_clause)))          

block_specification : name                                            ((W_datatypes.BLOCK_SPECIFICATION_1(name)))                             
                    | label                                           ((W_datatypes.BLOCK_SPECIFICATION_2(label)))                              
                    | label LPARAN generate_specification RPARAN      ((W_datatypes.BLOCK_SPECIFICATION_3(label, generate_specification)))                                                                   

block_statement : label COLON BLOCK LPARAN condition RPARAN IS block_header block_declarative_part BEGIN block_statement_part END BLOCK label SEMICOLON       ((W_datatypes.BLOCK_STATEMENT_1(label1, condition, block_header, block_declarative_part, block_statement_part, label2)))                                  
                | label COLON BLOCK IS block_header block_declarative_part BEGIN block_statement_part END BLOCK label SEMICOLON                               ((W_datatypes.BLOCK_STATEMENT_2(label1, block_header, block_declarative_part, block_statement_part, label2)))          
                | label COLON BLOCK IS block_header block_declarative_part BEGIN block_statement_part END BLOCK SEMICOLON                                     ((W_datatypes.BLOCK_STATEMENT_3(label, block_header, block_declarative_part, block_statement_part)))      
                | label COLON BLOCK LPARAN condition RPARAN IS block_header block_declarative_part BEGIN block_statement_part END BLOCK SEMICOLON             ((W_datatypes.BLOCK_STATEMENT_4(label, condition, block_header, block_declarative_part, block_statement_part)))                              
                | label COLON BLOCK LPARAN condition RPARAN block_header block_declarative_part BEGIN block_statement_part END BLOCK label SEMICOLON       ((W_datatypes.BLOCK_STATEMENT_1(label1, condition, block_header, block_declarative_part, block_statement_part, label2)))                                  
                | label COLON BLOCK block_header block_declarative_part BEGIN block_statement_part END BLOCK label SEMICOLON                               ((W_datatypes.BLOCK_STATEMENT_2(label1, block_header, block_declarative_part, block_statement_part, label2)))          
                | label COLON BLOCK block_header block_declarative_part BEGIN block_statement_part END BLOCK SEMICOLON                                     ((W_datatypes.BLOCK_STATEMENT_3(label, block_header, block_declarative_part, block_statement_part)))      
                | label COLON BLOCK LPARAN condition RPARAN block_header block_declarative_part BEGIN block_statement_part END BLOCK SEMICOLON             ((W_datatypes.BLOCK_STATEMENT_4(label, condition, block_header, block_declarative_part, block_statement_part)))                              

block_statement_part : concurrent_statement_seq         ((W_datatypes.BLOCK_STATEMENT_PART(concurrent_statement_seq)))

case_generate_alternative_seq : case_generate_alternative case_generate_alternative_seq     (case_generate_alternative :: case_generate_alternative_seq)
                                |     ([])

case_generate_alternative : WHEN label COLON choices ARROW generate_statement_body      ((W_datatypes.CASE_GENERATE_ALTERNATIVE_1(label, choices, generate_statement_body)))            
                          | WHEN choices ARROW generate_statement_body                  ((W_datatypes.CASE_GENERATE_ALTERNATIVE_2(choices, generate_statement_body)))

case_generate_statement : label COLON CASE expression GENERATE case_generate_alternative_seq END GENERATE label SEMICOLON       ((W_datatypes.CASE_GENERATE_STATEMENT_1(label1, expression, case_generate_alternative_seq, label2)))        
                        | label COLON CASE expression GENERATE case_generate_alternative_seq END GENERATE SEMICOLON             ((W_datatypes.CASE_GENERATE_STATEMENT_2(label, expression, case_generate_alternative_seq)))
                        | label COLON CASE expression GENERATE case_generate_alternative_seq END GENERATE SEMICOLON             ((W_datatypes.CASE_GENERATE_STATEMENT_3(label, expression, case_generate_alternative_seq)))
                        | label COLON CASE expression GENERATE case_generate_alternative_seq END GENERATE SEMICOLON             ((W_datatypes.CASE_GENERATE_STATEMENT_4(label, expression, case_generate_alternative_seq)))

case_statement : label COLON CASE QUESTION expression IS case_statement_alternative_seq END CASE QUESTION label SEMICOLON       ((W_datatypes.CASE_STATEMENT_1(label1, expression, case_statement_alternative_seq, label2)))                    
               | CASE QUESTION expression IS case_statement_alternative_seq END CASE QUESTION label SEMICOLON                   ((W_datatypes.CASE_STATEMENT_2(expression, case_statement_alternative_seq, label)))        
               | CASE QUESTION expression IS case_statement_alternative_seq END CASE QUESTION SEMICOLON                         ((W_datatypes.CASE_STATEMENT_3(expression, case_statement_alternative_seq)))
               | label COLON CASE QUESTION expression IS case_statement_alternative_seq END CASE QUESTION SEMICOLON             ((W_datatypes.CASE_STATEMENT_4(label, expression, case_statement_alternative_seq)))            
               | label COLON CASE expression IS case_statement_alternative_seq END CASE QUESTION label SEMICOLON       ((W_datatypes.CASE_STATEMENT_1(label1, expression, case_statement_alternative_seq, label2)))                    
               | CASE expression IS case_statement_alternative_seq END CASE QUESTION label SEMICOLON                   ((W_datatypes.CASE_STATEMENT_2(expression, case_statement_alternative_seq, label)))        
               | CASE expression IS case_statement_alternative_seq END CASE QUESTION SEMICOLON                         ((W_datatypes.CASE_STATEMENT_3(expression, case_statement_alternative_seq)))
               | label COLON CASE expression IS case_statement_alternative_seq END CASE QUESTION SEMICOLON             ((W_datatypes.CASE_STATEMENT_4(label, expression, case_statement_alternative_seq)))            
               | label COLON CASE QUESTION expression IS case_statement_alternative_seq END CASE label SEMICOLON       ((W_datatypes.CASE_STATEMENT_1(label1, expression, case_statement_alternative_seq, label2)))                    
               | CASE QUESTION expression IS case_statement_alternative_seq END CASE label SEMICOLON                   ((W_datatypes.CASE_STATEMENT_2(expression, case_statement_alternative_seq, label)))        
               | CASE QUESTION expression IS case_statement_alternative_seq END CASE SEMICOLON                         ((W_datatypes.CASE_STATEMENT_3(expression, case_statement_alternative_seq)))
               | label COLON CASE QUESTION expression IS case_statement_alternative_seq END CASE SEMICOLON             ((W_datatypes.CASE_STATEMENT_4(label, expression, case_statement_alternative_seq)))            

case_statement_alternative_seq : case_statement_alternative case_statement_alternative_seq      (case_statement_alternative :: case_statement_alternative_seq)
                                |    ([])

case_statement_alternative : WHEN choices ARROW sequence_of_statements          ((W_datatypes.CASE_STATEMENT_ALTERNATIVE(choices, sequential_statement_body)))

character_literal : TICK graphic_character TICK             ((W_datatypes.CHARACTER_LITERAL(graphic_character)))

choice_seq : choice choice_seq      (choice :: choice_seq)
           |   ([])

choice : simple_expression      ((W_datatypes.CHOICE_1(simple_expression)))            
       | discrete_range         ((W_datatypes.CHOICE_2(discrete_range)))        
       | simple_name    ((W_datatypes.CHOICE_3(simple_name)))                
       | OTHERS                  ((W_datatypes.OTHERS()))

choices : choice choice_seq     ((W_datatypes.CHOICES(choice, choice_seq)))

component_configuration : FOR component_specification binding_indication SEMICOLON verification_unit_binding_indication_seq block_configuration END FOR SEMICOLON       ((W_datatypes.COMPONENT_CONFIGURATION_1(component_specification, binding_indication, verification_unit_binding_indication_seq, block_configuration)))                                                
                        | FOR component_specification verification_unit_binding_indication_seq block_configuration END FOR SEMICOLON                                    ((W_datatypes.COMPONENT_CONFIGURATION_2(component_specification, verification_unit_binding_indication_seq, block_configuration)))                    
                        | FOR component_specification verification_unit_binding_indication_seq END FOR SEMICOLON                                                        ((W_datatypes.COMPONENT_CONFIGURATION_3(component_specification, verification_unit_binding_indication_seq)))
                        | FOR component_specification binding_indication SEMICOLON verification_unit_binding_indication_seq END FOR SEMICOLON                           ((W_datatypes.COMPONENT_CONFIGURATION_4(component_specification, binding_indication, verification_unit_binding_indication_seq)))                            

component_declaration : COMPONENT identifier IS generic_clause port_clause END COMPONENT simple_name SEMICOLON     ((W_datatypes.COMPONENT_DECLARATION_1(identifier, generic_clause, port_clause, simple_name)))                                         
                      | COMPONENT identifier IS port_clause END COMPONENT simple_name SEMICOLON                    ((W_datatypes.COMPONENT_DECLARATION_2(identifier, port_clause, simple_name)))                         
                      | COMPONENT identifier IS generic_clause END COMPONENT simple_name SEMICOLON                 ((W_datatypes.COMPONENT_DECLARATION_3(identifier, generic_clause, simple_name)))                             
                      | COMPONENT identifier IS END COMPONENT simple_name SEMICOLON                                ((W_datatypes.COMPONENT_DECLARATION_4(identifier, simple_name)))             
                      | COMPONENT identifier IS generic_clause END COMPONENT SEMICOLON                             ((W_datatypes.COMPONENT_DECLARATION_5(identifier, generic_clause)))                 
                      | COMPONENT identifier IS END COMPONENT SEMICOLON                                            ((W_datatypes.COMPONENT_DECLARATION_6(identifier))) 
                      | COMPONENT identifier IS generic_clause port_clause END COMPONENT SEMICOLON                 ((W_datatypes.COMPONENT_DECLARATION_7(identifier, generic_clause, port_clause)))                             
                      | COMPONENT identifier IS port_clause END COMPONENT SEMICOLON                                ((W_datatypes.COMPONENT_DECLARATION_8(identifier, port_clause)))             
                      | COMPONENT identifier generic_clause port_clause END COMPONENT simple_name SEMICOLON     ((W_datatypes.COMPONENT_DECLARATION_1(identifier, generic_clause, port_clause, simple_name)))                                         
                      | COMPONENT identifier port_clause END COMPONENT simple_name SEMICOLON                    ((W_datatypes.COMPONENT_DECLARATION_2(identifier, port_clause, simple_name)))                         
                      | COMPONENT identifier generic_clause END COMPONENT simple_name SEMICOLON                 ((W_datatypes.COMPONENT_DECLARATION_3(identifier, generic_clause, simple_name)))                             
                      | COMPONENT identifier END COMPONENT simple_name SEMICOLON                                ((W_datatypes.COMPONENT_DECLARATION_4(identifier, simple_name)))             
                      | COMPONENT identifier generic_clause END COMPONENT SEMICOLON                             ((W_datatypes.COMPONENT_DECLARATION_5(identifier, generic_clause)))                 
                      | COMPONENT identifier END COMPONENT SEMICOLON                                            ((W_datatypes.COMPONENT_DECLARATION_6(identifier))) 
                      | COMPONENT identifier generic_clause port_clause END COMPONENT SEMICOLON                 ((W_datatypes.COMPONENT_DECLARATION_7(identifier, generic_clause, port_clause)))                             
                      | COMPONENT identifier port_clause END COMPONENT SEMICOLON                                ((W_datatypes.COMPONENT_DECLARATION_8(identifier, port_clause)))             

component_instantiation_statement : label COLON instantiated_unit generic_map_aspect port_map_aspect SEMICOLON     ((W_datatypes.COMPONENT_INSTANTIATION_STATEMENT_1(label, instantiated_unit, generic_map_aspect, port_map_aspect)))                                     
                                  | label COLON instantiated_unit port_map_aspect SEMICOLON                        ((W_datatypes.COMPONENT_INSTANTIATION_STATEMENT_2(label, instantiated_unit, port_map_aspect)))                 
                                  | label COLON instantiated_unit SEMICOLON                                        ((W_datatypes.COMPONENT_INSTANTIATION_STATEMENT_3(label, instantiated_unit))) 
                                  | label COLON instantiated_unit generic_map_aspect SEMICOLON                     ((W_datatypes.COMPONENT_INSTANTIATION_STATEMENT_4(label, instantiated_unit, generic_map_aspect)))                     

component_specification : instantiation_list COLON name         ((W_datatypes.COMPONENT_SPECIFICATION(instantiation_list, name)))

composite_type_definition : array_type_definition       ((W_datatypes.COMPOSITE_TYPE_DEFINITION_1(array_type_definition)))
                          | record_type_definition      ((W_datatypes.COMPOSITE_TYPE_DEFINITION_2(record_type_definition)))

compound_configuration_specification : FOR component_specification binding_indication SEMICOLON verification_unit_binding_indication_seq END FOR SEMICOLON          ((W_datatypes.COMPOUND_CONFIGURATION_SPECIFICATION(component_specification, binding_indication, verification_unit_binding_indication_seq)))

concurrent_assertion_statement : label COLON POSTPONED assertion SEMICOLON       ((W_datatypes.CONCURRENT_ASSERTION_STATEMENT_1(label, assertion)))               
                               | POSTPONED assertion SEMICOLON                   ((W_datatypes.CONCURRENT_ASSERTION_STATEMENT_2(assertion)))   
                               | label COLON assertion SEMICOLON       ((W_datatypes.CONCURRENT_ASSERTION_STATEMENT_1(label, assertion)))               
                               | assertion SEMICOLON                   ((W_datatypes.CONCURRENT_ASSERTION_STATEMENT_2(assertion)))   

concurrent_conditional_signal_assignment : target LE GUARDED delay_mechanism conditional_waveforms SEMICOLON       ((W_datatypes.CONCURRENT_CONDITIONAL_SIGNAL_ASSIGNMENT_1(target, delay_mechanism, conditional_waveforms)))                 
                                         | target LE GUARDED conditional_waveforms SEMICOLON                       ((W_datatypes.CONCURRENT_CONDITIONAL_SIGNAL_ASSIGNMENT_2(target, conditional_waveforms))) 
                                         | target LE delay_mechanism conditional_waveforms SEMICOLON       ((W_datatypes.CONCURRENT_CONDITIONAL_SIGNAL_ASSIGNMENT_1(target, delay_mechanism, conditional_waveforms)))                 
                                         | target LE conditional_waveforms SEMICOLON                       ((W_datatypes.CONCURRENT_CONDITIONAL_SIGNAL_ASSIGNMENT_2(target, conditional_waveforms))) 

concurrent_procedure_call_statement : label COLON POSTPONED procedure_call SEMICOLON        ((W_datatypes.CONCURRENT_PROCEDURE_CALL_STATEMENT_1(label, procedure_call)))
                                    | POSTPONED procedure_call SEMICOLON              ((W_datatypes.CONCURRENT_PROCEDURE_CALL_STATEMENT_2(procedure_call)))
                                    | label COLON procedure_call SEMICOLON        ((W_datatypes.CONCURRENT_PROCEDURE_CALL_STATEMENT_1(label, procedure_call)))
                                    | procedure_call SEMICOLON              ((W_datatypes.CONCURRENT_PROCEDURE_CALL_STATEMENT_2(procedure_call)))

concurrent_selected_signal_assignment : WITH expression SELECT QUESTION target LE GUARDED delay_mechanism selected_waveforms SEMICOLON      ((W_datatypes.CONCURRENT_SELECTED_SIGNAL_ASSIGNMENT_1(expression, target, delay_mechanism, selected_waveforms)))                
                                      | WITH expression SELECT QUESTION target LE GUARDED selected_waveforms SEMICOLON                      ((W_datatypes.CONCURRENT_SELECTED_SIGNAL_ASSIGNMENT_1(expression, target, selected_waveforms)))
                                      | WITH expression SELECT target LE GUARDED delay_mechanism selected_waveforms SEMICOLON      ((W_datatypes.CONCURRENT_SELECTED_SIGNAL_ASSIGNMENT_1(expression, target, delay_mechanism, selected_waveforms)))                
                                      | WITH expression SELECT target LE GUARDED selected_waveforms SEMICOLON                      ((W_datatypes.CONCURRENT_SELECTED_SIGNAL_ASSIGNMENT_1(expression, target, selected_waveforms)))
                                      | WITH expression SELECT QUESTION target LE delay_mechanism selected_waveforms SEMICOLON      ((W_datatypes.CONCURRENT_SELECTED_SIGNAL_ASSIGNMENT_1(expression, target, delay_mechanism, selected_waveforms)))                
                                      | WITH expression SELECT QUESTION target LE selected_waveforms SEMICOLON                      ((W_datatypes.CONCURRENT_SELECTED_SIGNAL_ASSIGNMENT_1(expression, target, selected_waveforms)))

concurrent_signal_assignment_statement : label COLON POSTPONED concurrent_simple_signal_assignment             ((W_datatypes.CONCURRENT_SIGNAL_ASSIGNMENT_STATEMENT_1(label, concurrent_simple_signal_assignment)))             
                                       | POSTPONED concurrent_simple_signal_assignment                         ((W_datatypes.CONCURRENT_SIGNAL_ASSIGNMENT_STATEMENT_2(concurrent_simple_signal_assignment))) 
                                       | label COLON concurrent_simple_signal_assignment             ((W_datatypes.CONCURRENT_SIGNAL_ASSIGNMENT_STATEMENT_1(label, concurrent_simple_signal_assignment)))             
                                       | concurrent_simple_signal_assignment                         ((W_datatypes.CONCURRENT_SIGNAL_ASSIGNMENT_STATEMENT_2(concurrent_simple_signal_assignment))) 
                                       | label COLON POSTPONED concurrent_conditional_signal_assignment        ((W_datatypes.CONCURRENT_SIGNAL_ASSIGNMENT_STATEMENT_3(label, concurrent_conditional_signal_assignment)))                 
                                       | POSTPONED concurrent_conditional_signal_assignment                    ((W_datatypes.CONCURRENT_SIGNAL_ASSIGNMENT_STATEMENT_4(concurrent_conditional_signal_assignment)))     
                                       | label COLON concurrent_conditional_signal_assignment        ((W_datatypes.CONCURRENT_SIGNAL_ASSIGNMENT_STATEMENT_3(label, concurrent_conditional_signal_assignment)))                 
                                       | concurrent_conditional_signal_assignment                    ((W_datatypes.CONCURRENT_SIGNAL_ASSIGNMENT_STATEMENT_4(concurrent_conditional_signal_assignment)))     
                                       | label COLON POSTPONED concurrent_selected_signal_assignment           ((W_datatypes.CONCURRENT_SIGNAL_ASSIGNMENT_STATEMENT_5(label, concurrent_selected_signal_assignment)))                 
                                       | POSTPONED concurrent_selected_signal_assignment                       ((W_datatypes.CONCURRENT_SIGNAL_ASSIGNMENT_STATEMENT_6(concurrent_selected_signal_assignment)))     
                                       | label COLON concurrent_selected_signal_assignment           ((W_datatypes.CONCURRENT_SIGNAL_ASSIGNMENT_STATEMENT_5(label, concurrent_selected_signal_assignment)))                 
                                       | concurrent_selected_signal_assignment                       ((W_datatypes.CONCURRENT_SIGNAL_ASSIGNMENT_STATEMENT_6(concurrent_selected_signal_assignment)))     

concurrent_signal_association_statement : label COLON concurrent_simple_signal_association          ((W_datatypes.CONCURRENT_SIGNAL_ASSOCIATION_STATEMENT_1(label, concurrent_simple_signal_association)))            
                                        | concurrent_simple_signal_association                      ((W_datatypes.CONCURRENT_SIGNAL_ASSOCIATION_STATEMENT_2(concurrent_simple_signal_association)))

concurrent_simple_signal_assignment : target LE GUARDED delay_mechanism waveform SEMICOLON      ((W_datatypes.CONCURRENT_SIMPLE_SIGNAL_ASSIGNMENT_1(target, delay_mechanism, waveform)))                
                                    | target LE GUARDED waveform SEMICOLON                      ((W_datatypes.CONCURRENT_SIMPLE_SIGNAL_ASSIGNMENT_2(target, waveform)))
                                    | target LE delay_mechanism waveform SEMICOLON      ((W_datatypes.CONCURRENT_SIMPLE_SIGNAL_ASSIGNMENT_1(target, delay_mechanism, waveform)))                
                                    | target LE waveform SEMICOLON                      ((W_datatypes.CONCURRENT_SIMPLE_SIGNAL_ASSIGNMENT_2(target, waveform)))

concurrent_simple_signal_association : signal_association_target DOUBLEARROW signal_association_target SEMICOLON            ((W_datatypes.CONCURRENT_SIMPLE_SIGNAL_ASSOCIATION(signal_association_target1, signal_association_target2)))

concurrent_statement_seq : concurrent_statement concurrent_statement_seq         (concurrent_statement::concurrent_statement_seq)
                         |     ([])

concurrent_statement : block_statement                             ((W_datatypes.CONCURRENT_STATEMENT_1(block_statement))) 
                     | process_statement                           ((W_datatypes.CONCURRENT_STATEMENT_2(process_statement)))     
                     | concurrent_procedure_call_statement         ((W_datatypes.CONCURRENT_STATEMENT_3(concurrent_procedure_call_statement)))                     
                     | concurrent_assertion_statement              ((W_datatypes.CONCURRENT_STATEMENT_4(concurrent_assertion_statement)))                 
                     | concurrent_signal_assignment_statement      ((W_datatypes.CONCURRENT_STATEMENT_5(concurrent_signal_assignment_statement)))                         
                     | concurrent_signal_association_statement     ((W_datatypes.CONCURRENT_STATEMENT_6(concurrent_signal_association_statement)))                         
                     | component_instantiation_statement           ((W_datatypes.CONCURRENT_STATEMENT_7(component_instantiation_statement)))                     
                     | generate_statement                          ((W_datatypes.CONCURRENT_STATEMENT_8(generate_statement)))     

condition : expression               ((W_datatypes.CONDITION(expression)))       

condition_clause : UNTIL condition      ((W_datatypes.CONDITION_CLAUSE(condition)))

conditional_expression_1 : WHEN condition ELSE expression       ((W_datatypes.CONDITIONAL_EXPRESSION_1(condition, expression)))
conditional_expression_seq : conditional_expression_1 conditional_expression_seq         (conditional_expression_1 :: conditional_expression_seq)
                            |    ([])
conditional_expression : expression conditional_expression_seq    ((W_datatypes.CONDITIONAL_EXPRESSION(expression, conditional_expression_seq)))

conditional_or_unaffected_expression_1 : WHEN condition ELSE expression_or_unaffected       ((W_datatypes.CONDITIONAL_OR_UNAFFECTED_EXPRESSION_1(condition, expression_or_unaffected)))
conditional_or_unaffected_expression_seq : conditional_or_unaffected_expression_1 conditional_or_unaffected_expression_seq    (conditional_or_unaffected_expression_1 :: conditional_or_unaffected_expression_seq)
                                        |    ([])
conditional_or_unaffected_expression : expression_or_unaffected conditional_or_unaffected_expression_seq WHEN condition         ((W_datatypes.CONDITIONAL_OR_UNAFFECTED_EXPRESSION(expression_or_unaffected, conditional_or_unaffected_expression_seq, condition)))
                                     | expression_or_unaffected conditional_or_unaffected_expression_seq                        ((W_datatypes.CONDITIONAL_OR_UNAFFECTED_EXPRESSION1(expression_or_unaffected, conditional_or_unaffected_expression_seq)))

conditional_signal_assignment : target LE delay_mechanism conditional_waveforms SEMICOLON       ((W_datatypes.CONDITIONAL_SIGNAL_ASSIGNMENT_1(target, delay_mechanism, conditional_waveforms)))                
                              | target LE conditional_waveforms SEMICOLON                       ((W_datatypes.CONDITIONAL_SIGNAL_ASSIGNMENT_2(target, conditional_waveforms)))

conditional_waveforms_1 : ELSE waveform WHEN condition              ((W_datatypes.CONDITIONAL_WAVEFORMS_1(waveform, condition)))
conditional_waveforms_seq : conditional_waveforms_1 conditional_waveforms_seq       (conditional_waveforms_1 :: conditional_waveforms_seq)
                            |      ([])
conditional_waveforms : waveform WHEN condition conditional_waveforms_seq ELSE waveform      ((W_datatypes.CONDITIONAL_WAVEFORMS(waveform1, condition, conditional_waveforms_seq, waveform2)))               
                      | waveform WHEN condition conditional_waveforms_seq                    ((W_datatypes.CONDITIONAL_WAVEFORMS1(waveform, condition, conditional_waveforms_seq)))   

configuration_declaration : CONFIGURATION identifier OF name IS configuration_declarative_part verification_unit_binding_indication_seq block_configuration END CONFIGURATION simple_name SEMICOLON         ((W_datatypes.CONFIGURATION_DECLARATION_1(identifier, name, configuration_declarative_part, verification_unit_binding_indication_seq, block_configuration, simple_name)))
                          | CONFIGURATION identifier OF name IS configuration_declarative_part verification_unit_binding_indication_seq block_configuration END CONFIGURATION SEMICOLON         ((W_datatypes.CONFIGURATION_DECLARATION_2(identifier, name, configuration_declarative_part, verification_unit_binding_indication_seq, block_configuration)))
                          | CONFIGURATION identifier OF name IS configuration_declarative_part verification_unit_binding_indication_seq block_configuration END simple_name SEMICOLON           ((W_datatypes.CONFIGURATION_DECLARATION_1(identifier, name, configuration_declarative_part, verification_unit_binding_indication_seq, block_configuration, simple_name)))
                          | CONFIGURATION identifier OF name IS configuration_declarative_part verification_unit_binding_indication_seq block_configuration END SEMICOLON                        ((W_datatypes.CONFIGURATION_DECLARATION_2(identifier, name, configuration_declarative_part, verification_unit_binding_indication_seq, block_configuration)))

configuration_declarative_item_seq : configuration_declarative_item configuration_declarative_item_seq          (configuration_declarative_item :: configuration_declarative_item_seq)
                                    |           ([])

configuration_declarative_item : use_clause                  ((W_datatypes.CONFIGURATION_DECLARATIVE_ITEM_1(use_clause)))   
                               | attribute_specification     ((W_datatypes.CONFIGURATION_DECLARATIVE_ITEM_2(attribute_specification)))                   
                               | group_declaration           ((W_datatypes.CONFIGURATION_DECLARATIVE_ITEM_3(group_declaration)))           

configuration_declarative_part : configuration_declarative_item_seq         ((W_datatypes.CONFIGURATION_DECLARATIVE_PART(configuration_declarative_item_seq)))

configuration_item_seq : configuration_item configuration_item_seq                  (configuration_item :: configuration_item_seq)

configuration_item : block_configuration        ((W_datatypes.CONFIGURATION_ITEM_1(block_configuration)))
                   | component_configuration    ((W_datatypes.CONFIGURATION_ITEM_2(component_configuration)))    

configuration_specification : simple_configuration_specification            ((W_datatypes.CONFIGURATION_SPECIFICATION_1(simple_configuration_specification)))
                            | compound_configuration_specification          ((W_datatypes.CONFIGURATION_SPECIFICATION_2(compound_configuration_specification)))

constant_declaration : CONSTANT identifier_list COLON subtype_indication ASSIGN conditional_expression SEMICOLON        ((W_datatypes.CONSTANT_DECLARATION_1(identifier_list, subtype_indication, conditional_expression)))                                    
                     | CONSTANT identifier_list COLON subtype_indication SEMICOLON                                      ((W_datatypes.CONSTANT_DECLARATION_2(identifier_list, subtype_indication)))    

constrained_array_definition : ARRAY index_constraint OF subtype_indication         ((W_datatypes.CONSTRAINED_ARRAY_DEFINITION(index_constraint, subtype_indication)))

constraint : range_constraint       ((W_datatypes.CONSTRAINT_1(range_constraint)))
           | array_constraint       ((W_datatypes.CONSTRAINT_2(array_constraint)))
           | record_constraint      ((W_datatypes.CONSTRAINT_3(record_constraint)))

context_clause : context_item_seq       ((W_datatypes.CONTEXT_CLAUSE(context_item_seq)))

context_declaration : CONTEXT identifier IS context_clause END CONTEXT simple_name SEMICOLON       ((W_datatypes.CONTEXT_DECLARATION_1(identifier, context_clause, simple_name)))             
                    | CONTEXT identifier IS context_clause END CONTEXT SEMICOLON                   ((W_datatypes.CONTEXT_DECLARATION_2(identifier, context_clause))) 
                    | CONTEXT identifier IS context_clause END simple_name SEMICOLON       ((W_datatypes.CONTEXT_DECLARATION_1(identifier, context_clause, simple_name)))             
                    | CONTEXT identifier IS context_clause END SEMICOLON                   ((W_datatypes.CONTEXT_DECLARATION_2(identifier, context_clause))) 

context_item_seq : context_item context_item_seq        (context_item :: context_item_seq)
                    |       ([])

context_item : library_clause         ((W_datatypes.CONTEXT_ITEM_1(library_clause)))      
             | use_clause             ((W_datatypes.CONTEXT_ITEM_2(use_clause)))  
             | context_reference      ((W_datatypes.CONTEXT_ITEM_3(context_reference)))          

context_reference : CONTEXT selected_name selected_name_seq SEMICOLON       ((W_datatypes.CONTEXT_REFERENCE(selected_name, selected_name_seq)))

decimal_literal : integer DOT integer exponent      ((W_datatypes.DECIMAL_LITERAL_1(integer1, integer2, exponent)))                    
                | integer exponent                  ((W_datatypes.DECIMAL_LITERAL_2(integer, exponent)))        
                | integer                           ((W_datatypes.DECIMAL_LITERAL_3(integer)))
                | integer DOT integer               ((W_datatypes.DECIMAL_LITERAL_4(integer1, integer2)))            

delay_mechanism : TRANSPORT                         ((W_datatypes.DELAY_MECHANISM_1()))
                | REJECT expression INERTIAL        ((W_datatypes.DELAY_MECHANISM_2(expression)))

design_file : design_unit_seq                       ((W_datatypes.DESIGN_FILE(design_unit_seq)))

design_unit_seq : design_unit design_unit_seq       (design_unit :: design_unit_seq)
                |       ([])

design_unit : context_clause library_unit           ((W_datatypes.DESIGN_UNIT(context_clause, library_unit)))

designator : identifier            ((W_datatypes.DESIGNATOR_1(identifier )))     
           | operator_symbol       ((W_datatypes.DESIGNATOR_2(operator_symbol)))         

direction : TO                     ((W_datatypes.TO()))                                 
          | DOWNTO                 ((W_datatypes.DOWNTO()))             

disconnection_specification : DISCONNECT guarded_signal_specification AFTER expression SEMICOLON        ((W_datatypes.DISCONNECTION_SPECIFICATION(guarded_signal_specification, expression)))

discrete_range_seq : COMMA discrete_range discrete_range_seq          (discrete_range :: discrete_range_seq)
                     |             ([])

discrete_range : subtype_indication         ((W_datatypes.DISCRETE_RANGE_1(subtype_indication)))                
               | range                      ((W_datatypes.DISCRETE_RANGE_2(range)))

discrete_incomplete_type_definition : LPARAN BOX RPARAN         ((W_datatypes.BOX()))

element_array_mode_view_indication : VIEW LPARAN name RPARAN        ((W_datatypes.ELEMENT_ARRAY_MODE_VIEW_INDICATION(name)))

element_association_seq : element_association element_association_seq (element_association :: element_association_seq)
                        | ([])

element_association : choices ARROW expression      ((W_datatypes.ELEMENT_ASSOCIATION_1(choices, expression)))                
                    | expression                    ((W_datatypes.ELEMENT_ASSOCIATION_2(expression)))    

element_constraint : array_constraint       ((W_datatypes.ELEMENT_CONSTRAINT_1(array_constraint)))
                   | record_constraint      ((W_datatypes.ELEMENT_CONSTRAINT_2(record_constraint)))

element_declaration : identifier_list COLON element_subtype_definition SEMICOLON        ((W_datatypes.ELEMENT_DECLARATION(identifier_list, element_subtype_definition)))

element_mode_indication : mode                              ((W_datatypes.ELEMENT_MODE_INDICATION_1(mode)))    
                        | element_mode_view_indication      ((W_datatypes.ELEMENT_MODE_INDICATION_2(element_mode_view_indication)))                            

element_mode_view_indication : element_record_mode_view_indication      ((W_datatypes.ELEMENT_MODE_VIEW_INDICATION_1(element_record_mode_view_indication)))
                             | element_array_mode_view_indication       ((W_datatypes.ELEMENT_MODE_VIEW_INDICATION_2(element_array_mode_view_indication)))

element_record_mode_view_indication : VIEW name             ((W_datatypes.ELEMENT_RECORD_MODE_VIEW_INDICATION(name)))

element_resolution : array_element_resolution               ((W_datatypes.ELEMENT_RESOLUTION_1(array_element_resolution)))        
                   | record_resolution                      ((W_datatypes.ELEMENT_RESOLUTION_2(record_resolution)))

element_subtype_definition : subtype_indication             ((W_datatypes.ELEMENT_SUBTYPE_DEFINITION(subtype_indication)))

entity_aspect : ENTITY name LPARAN identifier RPARAN    ((W_datatypes.ENTITY_ASPECT_1(name, identifier)))                                
              | ENTITY name                             ((W_datatypes.ENTITY_ASPECT_2(name)))    
              | CONFIGURATION name                      ((W_datatypes.ENTITY_ASPECT_2(name)))            
              | OPEN                                    ((W_datatypes.OPEN()))

entity_class : ENTITY            ((W_datatypes.ENTITY()))           
             | ARCHITECTURE      ((W_datatypes.ARCHITECTURE()))               
             | CONFIGURATION     ((W_datatypes.CONFIGURATION()))                   
             | PROCEDURE         ((W_datatypes.PROCEDURE()))               
             | FUNCTION          ((W_datatypes.FUNCTION()))           
             | PACKAGE           ((W_datatypes.PACKAGE()))           
             | TYPE              ((W_datatypes.TYPE()))       
             | SUBTYPE           ((W_datatypes.SUBTYPE()))           
             | CONSTANT          ((W_datatypes.CONSTANT()))           
             | SIGNAL            ((W_datatypes.SIGNAL()))           
             | VARIABLE          ((W_datatypes.VARIABLE()))           
             | COMPONENT         ((W_datatypes.COMPONENT()))               
             | LABEL             ((W_datatypes.LABEL()))           
             | LITERAL           ((W_datatypes.LITERAL()))           
             | UNITS             ((W_datatypes.UNITS()))           
             | GROUP             ((W_datatypes.GROUP()))           
             | FILE              ((W_datatypes.FILE()))       
             | PROPERTY          ((W_datatypes.PROPERTY()))           
             | SEQUENCE          ((W_datatypes.SEQUENCE()))           

entity_class_entry_seq : COMMA  entity_class_entry entity_class_entry_seq       (entity_class_entry :: entity_class_entry_seq)
                        |       ([])

entity_class_entry : entity_class BOX           ((W_datatypes.ENTITY_CLASS_ENTRY(entity_class)))
                   | entity_class          ((W_datatypes.ENTITY_CLASS_ENTRY(entity_class)))

entity_class_entry_list : entity_class_entry entity_class_entry_seq         ((W_datatypes.ENTITY_CLASS_ENTRY_LIST(entity_class_entry, entity_class_entry_seq)))

entity_declaration : ENTITY identifier IS entity_header entity_declarative_part BEGIN entity_statement_part END ENTITY name SEMICOLON       ((W_datatypes.ENTITY_DECLARATION_1(identifier, entity_header, entity_declarative_part, entity_statement_part, name)))
                   | ENTITY identifier IS entity_header entity_declarative_part END ENTITY name SEMICOLON                                   ((W_datatypes.ENTITY_DECLARATION_2(identifier, entity_header, entity_declarative_part, name)))
                   | ENTITY identifier IS entity_header entity_declarative_part END ENTITY SEMICOLON                                        ((W_datatypes.ENTITY_DECLARATION_3(identifier, entity_header, entity_declarative_part)))
                   | ENTITY identifier IS entity_header entity_declarative_part BEGIN entity_statement_part END ENTITY SEMICOLON            ((W_datatypes.ENTITY_DECLARATION_4(identifier, entity_header, entity_declarative_part, entity_statement_part)))
                   | ENTITY identifier IS entity_header entity_declarative_part BEGIN entity_statement_part END name SEMICOLON       ((W_datatypes.ENTITY_DECLARATION_1(identifier, entity_header, entity_declarative_part, entity_statement_part, name)))
                   | ENTITY identifier IS entity_header entity_declarative_part END name SEMICOLON                                   ((W_datatypes.ENTITY_DECLARATION_2(identifier, entity_header, entity_declarative_part, name)))
                   | ENTITY identifier IS entity_header entity_declarative_part END SEMICOLON                                        ((W_datatypes.ENTITY_DECLARATION_3(identifier, entity_header, entity_declarative_part)))
                   | ENTITY identifier IS entity_header entity_declarative_part BEGIN entity_statement_part END SEMICOLON            ((W_datatypes.ENTITY_DECLARATION_4(identifier, entity_header, entity_declarative_part, entity_statement_part)))

entity_declarative_item_seq : entity_declarative_item entity_declarative_item_seq           (entity_declarative_item :: entity_declarative_item_seq)
                            |           ([])

entity_declarative_item : subprogram_declaration                   ((W_datatypes.ENTITY_DECLARATIVE_ITEM_1(subprogram_declaration)))             
                        | subprogram_body                          ((W_datatypes.ENTITY_DECLARATIVE_ITEM_2(subprogram_body)))     
                        | subprogram_instantiation_declaration     ((W_datatypes.ENTITY_DECLARATIVE_ITEM_3(subprogram_instantiation_declaration)))                         
                        | package_declaration                      ((W_datatypes.ENTITY_DECLARATIVE_ITEM_4(package_declaration)))         
                        | package_body                             ((W_datatypes.ENTITY_DECLARATIVE_ITEM_5(package_body))) 
                        | package_instantiation_declaration        ((W_datatypes.ENTITY_DECLARATIVE_ITEM_6(package_instantiation_declaration)))                     
                        | type_declaration                         ((W_datatypes.ENTITY_DECLARATIVE_ITEM_7(type_declaration)))     
                        | subtype_declaration                      ((W_datatypes.ENTITY_DECLARATIVE_ITEM_8(subtype_declaration)))         
                        | subtype_declaration                      ((W_datatypes.ENTITY_DECLARATIVE_ITEM_9(mode_view_declaration)))         
                        | constant_declaration                     ((W_datatypes.ENTITY_DECLARATIVE_ITEM_10(constant_declaration)))         
                        | signal_declaration                       ((W_datatypes.ENTITY_DECLARATIVE_ITEM_11(signal_declaration)))         
                        | variable_declaration                     ((W_datatypes.ENTITY_DECLARATIVE_ITEM_12(variable_declaration)))         
                        | file_declaration                         ((W_datatypes.ENTITY_DECLARATIVE_ITEM_14(file_declaration)))     
                        | alias_declaration                        ((W_datatypes.ENTITY_DECLARATIVE_ITEM_14(alias_declaration)))     
                        | attribute_declaration                    ((W_datatypes.ENTITY_DECLARATIVE_ITEM_15(attribute_declaration)))         
                        | attribute_specification                  ((W_datatypes.ENTITY_DECLARATIVE_ITEM_16(attribute_specification)))             
                        | disconnection_specification              ((W_datatypes.ENTITY_DECLARATIVE_ITEM_17(disconnection_specification)))                 
                        | use_clause                               ((W_datatypes.ENTITY_DECLARATIVE_ITEM_18(use_clause))) 
                        | group_template_declaration               ((W_datatypes.ENTITY_DECLARATIVE_ITEM_19(group_template_declaration)))                 
                        | group_declaration                        ((W_datatypes.ENTITY_DECLARATIVE_ITEM_20(group_declaration)))     

entity_declarative_part : entity_declarative_item_seq               ((W_datatypes.ENTITY_DECLARATIVE_PART(entity_declarative_item_seq)))

entity_designator_seq : COMMA entity_designator entity_designator_seq       (entity_designator :: entity_designator_seq)
                        |       ([])

entity_designator : entity_tag signatur    ((W_datatypes.ENTITY_DESIGNATOR_1(entity_tag, signatur)))         
                  | entity_tag             ((W_datatypes.ENTITY_DESIGNATOR_2(entity_tag))) 

entity_header : generic_clause port_clause     ((W_datatypes.ENTITY_HEADER_1(generic_clause port_clause)))                     
              | port_clause                    ((W_datatypes.ENTITY_HEADER_2(port_clause)))     
              | generic_clause                 ((W_datatypes.ENTITY_HEADER_3(generic_clause)))         
              | ([])

entity_name_list : entity_designator  entity_designator_seq       ((W_datatypes.ENTITY_NAME_LIST(entity_designator, entity_designator_seq)))                                      
                 | OTHERS                                         ((W_datatypes.OTHERS()))      
                 | ALL                                            ((W_datatypes.ALL()))  

entity_specification : entity_name_list COLON entity_class          ((W_datatypes.ENTITY_SPECIFICATION(entity_name_list, entity_class)))

entity_statement_seq : entity_statement entity_statement_seq        (entity_statement :: entity_statement_seq)
                        |       ([])

entity_statement : concurrent_assertion_statement           ((W_datatypes.ENTITY_STATEMENT_1(concurrent_assertion_statement)))                
                 | concurrent_procedure_call_statement      ((W_datatypes.ENTITY_STATEMENT_2(concurrent_procedure_call_statement)))                    
                 | process_statement                        ((W_datatypes.ENTITY_STATEMENT_3(process_statement)))    

entity_statement_part : entity_statement_seq                ((W_datatypes.ENTITY_STATEMENT_PART(entity_statement_seq)))

entity_tag : simple_name            ((W_datatypes.ENTITY_TAG_1(simple_name)))
           | character_literal      ((W_datatypes.ENTITY_TAG_2(character_literal)))    
           | operator_symbol        ((W_datatypes.ENTITY_TAG_3(operator_symbol)))    

enumeration_literal_seq : COMMA enumeration_literal enumeration_literal_seq         (enumeration_literal :: enumeration_literal_seq)
                        |       ([])

enumeration_literal : identifier            ((W_datatypes.ENUMERATION_LITERAL_1(identifier)))
                    | character_literal     ((W_datatypes.ENUMERATION_LITERAL_2(character_literal)))    

enumeration_type_definition : LPARAN enumeration_literal enumeration_literal_seq RPARAN         ((W_datatypes.ENUMERATION_TYPE_DEFINITION(enumeration_literal, enumeration_literal_seq)))

exit_statement : label COLON EXIT label WHEN condition SEMICOLON     ((W_datatypes.EXIT_STATEMENT_1(label1, label2, condition)))                                       
               | EXIT label WHEN condition SEMICOLON                 ((W_datatypes.EXIT_STATEMENT_2(label, condition)))                           
               | label COLON EXIT WHEN condition SEMICOLON           ((W_datatypes.EXIT_STATEMENT_2(label, condition)))                               
               | EXIT WHEN condition SEMICOLON                       ((W_datatypes.EXIT_STATEMENT_3(condition)))                   
               | label COLON EXIT SEMICOLON                          ((W_datatypes.EXIT_STATEMENT_5(label)))               
               | EXIT SEMICOLON                                      ((W_datatypes.EXIT()))   
               | label COLON EXIT label SEMICOLON                    ((W_datatypes.EXIT_STATEMENT_4(label1, label2)))                       
               | EXIT label SEMICOLON                                ((W_datatypes.EXIT_STATEMENT_5(label)))           

exponent : E PLUS integer                               ((W_datatypes.EXPONENT(integer)))        
         | E integer                                    ((W_datatypes.EXPONENT(integer)))
         | E MINUS integer                              ((W_datatypes.EXPONENT(integer)))    

expression_seq : COMMA expression expression_seq               (expression :: expression_seq)
               |     ([])

expression : DOUBLEQUES primary     ((W_datatypes.EXPRESSION_1(primary)))        
           | logical_expression             ((W_datatypes.EXPRESSION_2(logical_expression)))

expression_or_unaffected : expression       ((W_datatypes.EXPRESSION_OR_UNAFFECTED(expression)))
                         | UNAFFECTED       ((W_datatypes.UNAFFECTED()))

extended_digit_seq : UNDERSCORE extended_digit extended_digit_seq           (extended_digit :: extended_digit_seq)
                   |     ([])

extended_digit : digit          ((W_datatypes.EXTENDED_DIGIT_1(digit)))
               | letter         ((W_datatypes.EXTENDED_DIGIT_2(letter)))

extended_identifier : BACKSLASH graphic_character_seq1 BACKSLASH        ((W_datatypes.EXTENDED_IDENTIFIER(graphic_character_seq1)))

external_name : external_constant_name          ((W_datatypes.EXTERNAL_NAME_1(external_constant_name)))
              | external_signal_name            ((W_datatypes.EXTERNAL_NAME_2(external_signal_name)))
              | external_variable_name          ((W_datatypes.EXTERNAL_NAME_3(external_variable_name)))

external_constant_name : RIGHTDOUBLE CONSTANT external_pathname COLON subtype_indication LEFTDOUBLE        ((W_datatypes.EXTERNAL_CONSTANT_NAME(external_pathname, subtype_indication))) 

external_signal_name : RIGHTDOUBLE SIGNAL external_pathname COLON subtype_indication LEFTDOUBLE            ((W_datatypes.EXTERNAL_SIGNAL_NAME(external_pathname, subtype_indication)))     

external_variable_name : RIGHTDOUBLE VARIABLE external_pathname COLON subtype_indication LEFTDOUBLE        ((W_datatypes.EXTERNAL_VARIABLE_NAME(external_pathname, subtype_indication)))         

external_pathname : package_pathname        ((W_datatypes.EXTERNAL_PATHNAME_1(package_pathname)))
                  | absolute_pathname       ((W_datatypes.EXTERNAL_PATHNAME_2(absolute_pathname)))
                  | relative_pathname       ((W_datatypes.EXTERNAL_PATHNAME_3(relative_pathname)))

factor : unary_expression EXPT unary_expression      ((W_datatypes.FACTOR_1(unary_expression1, unary_expression2)))                       
       | unary_expression                            ((W_datatypes.FACTOR_2(unary_expression)))   

file_declaration : FILE identifier_list COLON subtype_indication file_open_information SEMICOLON       ((W_datatypes.FILE_DECLARATION_1(identifier_list, subtype_indication, file_open_information)))                             
                 | FILE identifier_list COLON subtype_indication SEMICOLON                             ((W_datatypes.FILE_DECLARATION_1(identifier_list, subtype_indication)))     

file_incomplete_type_definition : FILE OF type_mark             ((W_datatypes.FILE_INCOMPLETE_TYPE_DEFINITION(type_mark)))

file_logical_name : expression              ((W_datatypes.FILE_LOGICAL_NAME(expression)))

file_open_information : OPEN expression IS file_logical_name      ((W_datatypes.FILE_OPEN_INFORMATION_1(expression, file_logical_name)))                 
                      | IS file_logical_name                      ((W_datatypes.FILE_OPEN_INFORMATION_2(file_logical_name)))   

file_type_definition : FILE OF type_mark                ((W_datatypes.FILE_TYPE_DEFINITION(type_mark)))

floating_incomplete_type_definition : RANGE BOX DOT BOX        ((W_datatypes.FLOATING_INCOMPLETE_TYPE_DEFINITION()))

floating_type_definition : range_constraint                    ((W_datatypes.FLOATING_TYPE_DEFINITION(range_constraint)))

for_generate_statement : label COLON FOR parameter_specification GENERATE generate_statement_body END GENERATE label SEMICOLON       ((W_datatypes.FOR_GENERATE_STATEMENT_1(label1, parameter_specification, generate_statement_body, label2)))              
                       | label COLON FOR parameter_specification GENERATE generate_statement_body END GENERATE SEMICOLON             ((W_datatypes.FOR_GENERATE_STATEMENT_2(label, parameter_specification, generate_statement_body)))        

force_mode : IN                    ((W_datatypes.IN()))
           | OUT                   ((W_datatypes.OUT()))

formal_designator : name signatur     ((W_datatypes.FORMAL_DESIGNATOR_1(name, signatur)))          
                  | name              ((W_datatypes.FORMAL_DESIGNATOR_2(name)))   

formal_parameter_list : interface_list                  ((W_datatypes.FORMAL_PARAMETER_LIST(interface_list)))

formal_part : formal_designator                              ((W_datatypes.FORMAL_PART_1(formal_designator)))                
            | name LPARAN formal_designator RPARAN           ((W_datatypes.FORMAL_PART_2(name, formal_designator)))                                     
            | type_mark LPARAN formal_designator RPARAN      ((W_datatypes.FORMAL_PART_3(type_mark, formal_designator)))                                     

full_type_declaration : TYPE identifier IS type_definition SEMICOLON         ((W_datatypes.FULL_TYPE_DECLARATION(identifier, type_definition)))

function_call : name generic_map_aspect parameter_map_aspect       ((W_datatypes.FUNCTION_CALL_1(name, generic_map_aspect, parameter_map_aspect)))                                             
              | name parameter_map_aspect                          ((W_datatypes.FUNCTION_CALL_1(name, parameter_map_aspect)))                        
              | name                                               ((W_datatypes.FUNCTION_CALL_1(name)))   
              | name generic_map_aspect                            ((W_datatypes.FUNCTION_CALL_1(name, generic_map_aspect)))                        

function_specification : PURE FUNCTION designator subprogram_header PARAMETER LPARAN formal_parameter_list RPARAN RETURN identifier OF type_mark        ((W_datatypes.FUNCTION_SPECIFICATION_1(designator, subprogram_header, formal_parameter_list, identifier, type_mark)))                                     
                       | PURE FUNCTION designator subprogram_header LPARAN formal_parameter_list RPARAN RETURN identifier OF type_mark        ((W_datatypes.FUNCTION_SPECIFICATION_1(designator, subprogram_header, formal_parameter_list, identifier, type_mark)))                                     
                       | PURE FUNCTION designator subprogram_header PARAMETER RETURN identifier OF type_mark                                            ((W_datatypes.FUNCTION_SPECIFICATION_2(designator, subprogram_header, identifier, type_mark)))  
                       | IMPURE FUNCTION designator subprogram_header PARAMETER LPARAN formal_parameter_list RPARAN RETURN identifier OF type_mark        ((W_datatypes.FUNCTION_SPECIFICATION_1(designator, subprogram_header, formal_parameter_list, identifier, type_mark)))                                     
                       | IMPURE FUNCTION designator subprogram_header LPARAN formal_parameter_list RPARAN RETURN identifier OF type_mark        ((W_datatypes.FUNCTION_SPECIFICATION_1(designator, subprogram_header, formal_parameter_list, identifier, type_mark)))                                     
                       | IMPURE FUNCTION designator subprogram_header PARAMETER RETURN identifier OF type_mark                                            ((W_datatypes.FUNCTION_SPECIFICATION_2(designator, subprogram_header, identifier, type_mark)))  
                       | FUNCTION designator subprogram_header PARAMETER LPARAN formal_parameter_list RPARAN RETURN identifier OF type_mark        ((W_datatypes.FUNCTION_SPECIFICATION_1(designator, subprogram_header, formal_parameter_list, identifier, type_mark)))                                     
                       | FUNCTION designator subprogram_header LPARAN formal_parameter_list RPARAN RETURN identifier OF type_mark        ((W_datatypes.FUNCTION_SPECIFICATION_1(designator, subprogram_header, formal_parameter_list, identifier, type_mark)))                                     
                       | FUNCTION designator subprogram_header PARAMETER RETURN identifier OF type_mark                                            ((W_datatypes.FUNCTION_SPECIFICATION_2(designator, subprogram_header, identifier, type_mark)))  
                       | PURE FUNCTION designator subprogram_header PARAMETER LPARAN formal_parameter_list RPARAN RETURN type_mark        ((W_datatypes.FUNCTION_SPECIFICATION_3(designator, subprogram_header, formal_parameter_list, type_mark)))                                     
                       | PURE FUNCTION designator subprogram_header LPARAN formal_parameter_list RPARAN RETURN type_mark        ((W_datatypes.FUNCTION_SPECIFICATION_3(designator, subprogram_header, formal_parameter_list, type_mark)))                                     
                       | PURE FUNCTION designator subprogram_header PARAMETER RETURN type_mark                                            ((W_datatypes.FUNCTION_SPECIFICATION_4(designator, subprogram_header, type_mark)))  
                       | IMPURE FUNCTION designator subprogram_header PARAMETER LPARAN formal_parameter_list RPARAN RETURN type_mark        ((W_datatypes.FUNCTION_SPECIFICATION_3(designator, subprogram_header, formal_parameter_list, type_mark)))                                     
                       | IMPURE FUNCTION designator subprogram_header LPARAN formal_parameter_list RPARAN RETURN type_mark        ((W_datatypes.FUNCTION_SPECIFICATION_3(designator, subprogram_header, formal_parameter_list, type_mark)))                                     
                       | IMPURE FUNCTION designator subprogram_header PARAMETER RETURN type_mark                                            ((W_datatypes.FUNCTION_SPECIFICATION_4(designator, subprogram_header, type_mark)))  
                       | FUNCTION designator subprogram_header PARAMETER LPARAN formal_parameter_list RPARAN RETURN type_mark        ((W_datatypes.FUNCTION_SPECIFICATION_3(designator, subprogram_header, formal_parameter_list, type_mark)))                                     
                       | FUNCTION designator subprogram_header LPARAN formal_parameter_list RPARAN RETURN type_mark        ((W_datatypes.FUNCTION_SPECIFICATION_3(designator, subprogram_header, formal_parameter_list, type_mark)))                                     
                       | FUNCTION designator subprogram_header PARAMETER RETURN type_mark                                            ((W_datatypes.FUNCTION_SPECIFICATION_4(designator, subprogram_header, type_mark)))  

generate_specification : discrete_range     ((W_datatypes.GENERATE_SPECIFICATION_1(discrete_range)))            
                       | expression         ((W_datatypes.GENERATE_SPECIFICATION_2(expression)))            
                       | label              ((W_datatypes.GENERATE_SPECIFICATION_3(label)))     

generate_statement : for_generate_statement             ((W_datatypes.GENERATE_STATEMENT_1(for_generate_statement)))
                   | if_generate_statement              ((W_datatypes.GENERATE_STATEMENT_2(if_generate_statement)))
                   | case_generate_statement            ((W_datatypes.GENERATE_STATEMENT_3(case_generate_statement)))

generate_statement_body : block_declarative_part BEGIN concurrent_statement_seq END label SEMICOLON             ((W_datatypes.GENERATE_STATEMENT_BODY_1(block_declarative_part, concurrent_statement_seq, label)))
                        | block_declarative_part BEGIN concurrent_statement_seq END SEMICOLON             ((W_datatypes.GENERATE_STATEMENT_BODY_2(block_declarative_part, concurrent_statement_seq)))
                        | concurrent_statement_seq END SEMICOLON             ((W_datatypes.GENERATE_STATEMENT_BODY_3(concurrent_statement_seq)))
                        | concurrent_statement_seq END label SEMICOLON             ((W_datatypes.GENERATE_STATEMENT_BODY_4(concurrent_statement_seq, label)))
                        | block_declarative_part BEGIN concurrent_statement_seq SEMICOLON             ((W_datatypes.GENERATE_STATEMENT_BODY_2(block_declarative_part, concurrent_statement_seq)))
                        | concurrent_statement_seq SEMICOLON             ((W_datatypes.GENERATE_STATEMENT_BODY_3(concurrent_statement_seq)))

generic_clause : GENERIC LPARAN generic_list RPARAN SEMICOLON         ((W_datatypes.GENERIC_CLAUSE(generic_list)))

generic_list : interface_list                    ((W_datatypes.GENERIC_LIST(interface_list)))

generic_map_aspect : GENERIC MAP LPARAN association_list RPARAN         ((W_datatypes.GENERIC_MAP_ASPECT(association_list)))

graphic_character_seq : UNDERSCORE graphic_character graphic_character_seq     (graphic_character, graphic_character_seq)
                      |        ([])

graphic_character_seq1 : graphic_character graphic_character_seq1     (graphic_character, graphic_character_seq1)
                      |        ([])

graphic_character : basic_graphic_character      ((W_datatypes.GRAPHIC_CHARACTER_1(basic_graphic_character)))       
                  | lower_case_letter            ((W_datatypes.GRAPHIC_CHARACTER_2(lower_case_letter)))

group_constituent_seq : COMMA group_constituent group_constituent_seq               (group_constituent :: group_constituent_seq)
                     |     ([])

group_constituent : name                         ((W_datatypes.GROUP_CONSTITUENT_1(name)))
                  | character_literal            ((W_datatypes.GROUP_CONSTITUENT_2(character_literal)))              

group_constituent_list : group_constituent group_constituent_seq             ((W_datatypes.GROUP_CONSTITUENT_LIST(group_constituent, group_constituent_seq)))

group_declaration : GROUP identifier COLON name LPARAN group_constituent_list RPARAN SEMICOLON           ((W_datatypes.GROUP_DECLARATION(identifier, name, group_constituent_list)))

group_template_declaration : GROUP identifier IS LPARAN entity_class_entry_list RPARAN SEMICOLON         ((W_datatypes.GROUP_TEMPLATE_DECLARATION(identifier, entity_class_entry_list)))

guarded_signal_specification : signal_list COLON type_mark            ((W_datatypes.GUARDED_SIGNAL_SPECIFICATION(signal_list, type_mark)))

identifier_seq : COMMA identifier identifier_seq        (identifier :: identifier_seq)
              |      ([])

identifier : basic_identifier             ((W_datatypes.IDENTIFIER_1(basic_identifier)))
           | extended_identifier          ((W_datatypes.IDENTIFIER_2(extended_identifier)))

identifier_list : identifier identifier_seq      ((W_datatypes.IDENTIFIER_LIST(identifier, identifier_seq)))

if_generate_statement1 : ELSIF label COLON condition GENERATE generate_statement_body      ((W_datatypes.IF_GENERATE_STATEMENT1(label, condition, generate_statement_body)))                     
if_generate_statement2 : ELSIF condition GENERATE generate_statement_body                  ((W_datatypes.IF_GENERATE_STATEMENT2(condition, generate_statement_body)))       

if_generate_statement1_seq : if_generate_statement1 if_generate_statement1_seq                (if_generate_statement1 :: if_generate_statement1_seq)
                            |             ([])
if_generate_statement2_seq : if_generate_statement2 if_generate_statement2_seq                (if_generate_statement2 :: if_generate_statement2_seq)
                            |             ([])

if_generate_statement : label COLON IF label COLON condition GENERATE generate_statement_body if_generate_statement1_seq ELSE label COLON GENERATE generate_statement_body END GENERATE label SEMICOLON      ((W_datatypes.IF_GENERATE_STATEMENT_1(label1, label2, condition, generate_statement_body1, if_generate_statement1_seq, label3, generate_statement_body2, label4)))                                                                                                       
                      | label COLON IF label COLON condition GENERATE generate_statement_body if_generate_statement1_seq ELSE GENERATE generate_statement_body END GENERATE label SEMICOLON                  ((W_datatypes.IF_GENERATE_STATEMENT_2(label1, label2, condition, generate_statement_body1, if_generate_statement1_seq, generate_statement_body2, label3)))                                                                                         
                      | label COLON IF label COLON condition GENERATE generate_statement_body if_generate_statement1_seq ELSE label SEMICOLON                                                                ((W_datatypes.IF_GENERATE_STATEMENT_3(label1, label2, condition, generate_statement_body, if_generate_statement1_seq, label3)))                                               
                      | label COLON IF label COLON condition GENERATE generate_statement_body if_generate_statement2_seq ELSE label COLON GENERATE generate_statement_body END GENERATE label SEMICOLON      ((W_datatypes.IF_GENERATE_STATEMENT_4(label1, label2, condition, generate_statement_body1, if_generate_statement2_seq, label3, generate_statement_body2, label4)))                                                                                                       
                      | label COLON IF label COLON condition GENERATE generate_statement_body if_generate_statement2_seq ELSE GENERATE generate_statement_body END GENERATE label SEMICOLON                  ((W_datatypes.IF_GENERATE_STATEMENT_5(label1, label2, condition, generate_statement_body1, if_generate_statement2_seq, generate_statement_body2, label3)))                                                                                         
                      | label COLON IF label COLON condition GENERATE generate_statement_body if_generate_statement2_seq ELSE label SEMICOLON                                                                ((W_datatypes.IF_GENERATE_STATEMENT_6(label1, label2, condition, generate_statement_body, if_generate_statement2_seq, label3)))                                               
                      | label COLON IF label COLON condition GENERATE generate_statement_body if_generate_statement2_seq ELSE label COLON GENERATE generate_statement_body END GENERATE SEMICOLON            ((W_datatypes.IF_GENERATE_STATEMENT_7(label1, label2, condition, generate_statement_body1, if_generate_statement2_seq, label3, generate_statement_body2)))                                                                                                
                      | label COLON IF label COLON condition GENERATE generate_statement_body if_generate_statement2_seq ELSE GENERATE generate_statement_body END GENERATE SEMICOLON                        ((W_datatypes.IF_GENERATE_STATEMENT_8(label1, label2, condition, generate_statement_body1, if_generate_statement2_seq, generate_statement_body2)))                                                                                  
                      | label COLON IF label COLON condition GENERATE generate_statement_body if_generate_statement2_seq ELSE SEMICOLON                                                                      ((W_datatypes.IF_GENERATE_STATEMENT_9(label1, label2, condition, generate_statement_body, if_generate_statement2_seq)))                                        
                      | label COLON IF label COLON condition GENERATE generate_statement_body if_generate_statement1_seq ELSE label COLON GENERATE generate_statement_body END GENERATE SEMICOLON            ((W_datatypes.IF_GENERATE_STATEMENT_10(label1, label2, condition, generate_statement_body1, if_generate_statement1_seq, label, generate_statement_body2)))                                                                                                
                      | label COLON IF label COLON condition GENERATE generate_statement_body if_generate_statement1_seq ELSE GENERATE generate_statement_body END GENERATE SEMICOLON                        ((W_datatypes.IF_GENERATE_STATEMENT_11(label1, label2, condition, generate_statement_body1, if_generate_statement1_seq, generate_statement_body2)))                                                                                  
                      | label COLON IF label COLON condition GENERATE generate_statement_body if_generate_statement1_seq ELSE SEMICOLON                                                                      ((W_datatypes.IF_GENERATE_STATEMENT_12(label1, label2, condition, generate_statement_body, if_generate_statement1_seq)))                                        
                      | label COLON IF condition GENERATE generate_statement_body if_generate_statement1_seq ELSE label COLON GENERATE generate_statement_body END GENERATE label SEMICOLON                  ((W_datatypes.IF_GENERATE_STATEMENT_13(label1, condition, generate_statement_body1, if_generate_statement1_seq, label2, generate_statement_body2, label3)))                                                                                         
                      | label COLON IF condition GENERATE generate_statement_body if_generate_statement1_seq ELSE GENERATE generate_statement_body END GENERATE label SEMICOLON                              ((W_datatypes.IF_GENERATE_STATEMENT_14(label1, condition, generate_statement_body1, if_generate_statement1_seq, generate_statement_body2, label2)))                                                                                  
                      | label COLON IF condition GENERATE generate_statement_body if_generate_statement1_seq ELSE label SEMICOLON                                                                            ((W_datatypes.IF_GENERATE_STATEMENT_15(label1, condition, generate_statement_body, if_generate_statement1_seq, label2)))                                 
                      | label COLON IF condition GENERATE generate_statement_body if_generate_statement2_seq ELSE label COLON GENERATE generate_statement_body END GENERATE label SEMICOLON                  ((W_datatypes.IF_GENERATE_STATEMENT_16(label1, condition, generate_statement_body1, if_generate_statement2_seq, label2, generate_statement_body2, label3)))                                                                                         
                      | label COLON IF condition GENERATE generate_statement_body if_generate_statement2_seq ELSE GENERATE generate_statement_body END GENERATE label SEMICOLON                              ((W_datatypes.IF_GENERATE_STATEMENT_17(label1, condition, generate_statement_body1, if_generate_statement2_seq, generate_statement_body2, label2)))                                                                                  
                      | label COLON IF condition GENERATE generate_statement_body if_generate_statement2_seq ELSE label SEMICOLON                                                                            ((W_datatypes.IF_GENERATE_STATEMENT_18(label1, condition, generate_statement_body, if_generate_statement2_seq, label2)))                                 
                      | label COLON IF condition GENERATE generate_statement_body if_generate_statement2_seq ELSE label COLON GENERATE generate_statement_body END GENERATE SEMICOLON                        ((W_datatypes.IF_GENERATE_STATEMENT_19(label1, condition, generate_statement_body1, if_generate_statement2_seq, label2, generate_statement_body2)))                                                                                  
                      | label COLON IF condition GENERATE generate_statement_body if_generate_statement2_seq ELSE GENERATE generate_statement_body END GENERATE SEMICOLON                                    ((W_datatypes.IF_GENERATE_STATEMENT_20(label, condition, generate_statement_body1, if_generate_statement2_seq, generate_statement_body2)))                                                                           
                      | label COLON IF condition GENERATE generate_statement_body if_generate_statement2_seq ELSE SEMICOLON                                                                                  ((W_datatypes.IF_GENERATE_STATEMENT_21(label, condition, generate_statement_body, if_generate_statement2_seq )))                          
                      | label COLON IF condition GENERATE generate_statement_body if_generate_statement1_seq ELSE label COLON GENERATE generate_statement_body END GENERATE SEMICOLON                        ((W_datatypes.IF_GENERATE_STATEMENT_22(label1, condition, generate_statement_body1, if_generate_statement1_seq, label2, generate_statement_body2)))                                                                                  
                      | label COLON IF condition GENERATE generate_statement_body if_generate_statement1_seq ELSE GENERATE generate_statement_body END GENERATE SEMICOLON                                    ((W_datatypes.IF_GENERATE_STATEMENT_23(label, condition, generate_statement_body1, if_generate_statement1_seq, generate_statement_body2)))                                                                           
                      | label COLON IF condition GENERATE generate_statement_body if_generate_statement1_seq ELSE SEMICOLON                                                                                  ((W_datatypes.IF_GENERATE_STATEMENT_24(label, condition, generate_statement_body, if_generate_statement1_seq)))                          

if_statement1 : ELSIF condition THEN sequential_statement_body        ((W_datatypes.IF_STATEMENT1(condition, sequential_statement_body)))
if_statement_seq : if_statement1 if_statement_seq                     (if_statement1 :: if_statement_seq)
                     |             ([])

if_statement : label COLON IF condition THEN sequential_statement_body if_statement_seq ELSE sequential_statement_body END IF label SEMICOLON        ((W_datatypes.IF_STATEMENT_1(label1, condition, sequential_statement_body1, if_statement1_seq, sequential_statement_body2, label2)))                                                             
             | IF condition THEN sequential_statement_body if_statement_seq ELSE sequential_statement_body END IF label SEMICOLON                    ((W_datatypes.IF_STATEMENT_2(condition, sequential_statement_body1, if_statement1_seq, sequential_statement_body2, label)))                                               
             | label COLON IF condition THEN sequential_statement_body if_statement_seq END IF label SEMICOLON                                       ((W_datatypes.IF_STATEMENT_3(label1, condition, sequential_statement_body, if_statement1_seq, label2)))                          
             | IF condition THEN sequential_statement_body if_statement_seq END IF label SEMICOLON                                                   ((W_datatypes.IF_STATEMENT_4(condition, sequential_statement_body, if_statement1_seq, label)))                   
             | label COLON IF condition THEN sequential_statement_body if_statement_seq END IF SEMICOLON                                             ((W_datatypes.IF_STATEMENT_5(label, condition, sequential_statement_body, if_statement1_seq)))                   
             | IF condition THEN sequential_statement_body if_statement_seq END IF SEMICOLON                                                         ((W_datatypes.IF_STATEMENT_6(condition, sequential_statement_body, if_statement1_seq)))            
             | label COLON IF condition THEN sequential_statement_body if_statement_seq ELSE sequential_statement_body END IF SEMICOLON              ((W_datatypes.IF_STATEMENT_7(label, condition, sequential_statement_body1, if_statement1_seq, sequential_statement_body2)))                                                      
             | IF condition THEN sequential_statement_body if_statement_seq ELSE sequential_statement_body END IF SEMICOLON                          ((W_datatypes.IF_STATEMENT_8(condition, sequential_statement_body1, if_statement1_seq, sequential_statement_body2)))                                        

incomplete_type_declaration : subtype_indication               ((W_datatypes.INCOMPLETE_SUBTYPE_INDICATION_1(subtype_indication)))
                            | anonymous_type_indication        ((W_datatypes.INCOMPLETE_SUBTYPE_INDICATION_2(anonymous_type_indication)))       

incomplete_type_declaration : TYPE identifier SEMICOLON        ((W_datatypes.INCOMPLETE_TYPE_DECLARATION(identifier)))

incomplete_type_definition : private_incomplete_type_definition       ((W_datatypes.INCOMPLETE_TYPE_DEFINITION_1(private_incomplete_type_definition)))       
                           | scalar_incomplete_type_definition        ((W_datatypes.INCOMPLETE_TYPE_DEFINITION_2(scalar_incomplete_type_definition)))
                           | discrete_incomplete_type_definition      ((W_datatypes.INCOMPLETE_TYPE_DEFINITION_3(discrete_incomplete_type_definition)))       
                           | integer_incomplete_type_definition       ((W_datatypes.INCOMPLETE_TYPE_DEFINITION_4(integer_incomplete_type_definition)))       
                           | physical_incomplete_type_definition      ((W_datatypes.INCOMPLETE_TYPE_DEFINITION_5(physical_incomplete_type_definition)))       
                           | floating_incomplete_type_definition      ((W_datatypes.INCOMPLETE_TYPE_DEFINITION_6(floating_incomplete_type_definition)))       
                           | array_incomplete_type_definition         ((W_datatypes.INCOMPLETE_TYPE_DEFINITION_7(array_incomplete_type_definition)))
                           | access_incomplete_type_definition        ((W_datatypes.INCOMPLETE_TYPE_DEFINITION_8(access_incomplete_type_definition)))
                           | file_incomplete_type_definition          ((W_datatypes.INCOMPLETE_TYPE_DEFINITION_9(file_incomplete_type_definition)))

incomplete_type_mark : type_mark                            ((W_datatypes.INCOMPLETE_TYPE_MARK_1(type_mark)))  
                     | anonymous_type_indication            ((W_datatypes.INCOMPLETE_TYPE_MARK_2(anonymous_type_indication)))                

index_constraint : LPARAN discrete_range discrete_range_seq RPARAN    ((W_datatypes.INDEX_CONSTRAINT(discrete_range, discrete_range_seq)))

index_subtype_definition : type_mark RANGE BOX                        ((W_datatypes.INDEX_SUBTYPE_DEFINITION(type_mark )))

indexed_name : prefix LPARAN expression expression_seq RPARAN         ((W_datatypes.INDEXED_NAME(prefix, expression, expression_seq)))

instantiated_unit : COMPONENT name                                    ((W_datatypes.INSTANTIATED_UNIT_1(name)))
                  | name                                              ((W_datatypes.INSTANTIATED_UNIT_1(name)))
                  | ENTITY name LPARAN identifier RPARAN              ((W_datatypes.INSTANTIATED_UNIT_2(name, identifier)))                            
                  | ENTITY name                                       ((W_datatypes.INSTANTIATED_UNIT_1(name)))
                  | CONFIGURATION name                                ((W_datatypes.INSTANTIATED_UNIT_1(name)))       

instantiation_list : label label_seq       ((W_datatypes.INSTANTIATION_LIST(label, label_seq)))                    
                   | OTHERS                ((W_datatypes.OTHERS()))      
                   | ALL                   ((W_datatypes.ALL()))      

digit_seq : UNDERSCORE digit digit_seq     (digit :: digit_seq)
              |   ([])

integer : digit digit_seq                  ((W_datatypes.INTEGER(digit, digit_seq)))

integer_incomplete_type_definition : RANGE BOX          ((W_datatypes.RANGE()))

integer_type_definition : range_constraint              ((W_datatypes.INTEGER_TYPE_DEFINITION(range_constraint)))

interface_constant_declaration : CONSTANT identifier_list COLON IN interface_type_indication ASSIGN conditional_expression         ((W_datatypes.INTERFACE_CONSTANT_DECLARATION_1(identifier_list, interface_type_indication, conditional_expression)))                              
                               | CONSTANT identifier_list COLON IN interface_type_indication                                       ((W_datatypes.INTERFACE_CONSTANT_DECLARATION_2(identifier_list, interface_type_indication)))  
                               | identifier_list COLON IN interface_type_indication ASSIGN conditional_expression         ((W_datatypes.INTERFACE_CONSTANT_DECLARATION_1(identifier_list, interface_type_indication, conditional_expression)))                              
                               | identifier_list COLON IN interface_type_indication                                       ((W_datatypes.INTERFACE_CONSTANT_DECLARATION_2(identifier_list, interface_type_indication)))  
                               | identifier_list COLON interface_type_indication ASSIGN conditional_expression         ((W_datatypes.INTERFACE_CONSTANT_DECLARATION_1(identifier_list, interface_type_indication, conditional_expression)))                              
                               | identifier_list COLON interface_type_indication                                       ((W_datatypes.INTERFACE_CONSTANT_DECLARATION_2(identifier_list, interface_type_indication)))  
                               | CONSTANT identifier_list COLON interface_type_indication ASSIGN conditional_expression         ((W_datatypes.INTERFACE_CONSTANT_DECLARATION_1(identifier_list, interface_type_indication, conditional_expression)))                              
                               | CONSTANT identifier_list COLON interface_type_indication                                       ((W_datatypes.INTERFACE_CONSTANT_DECLARATION_2(identifier_list, interface_type_indication)))  

interface_declaration : interface_object_declaration              ((W_datatypes.INTERFACE_DECLARATION_1(interface_object_declaration)))    
                      | interface_type_declaration                ((W_datatypes.INTERFACE_DECLARATION_2(interface_type_declaration)))    
                      | interface_subprogram_declaration          ((W_datatypes.INTERFACE_DECLARATION_3(interface_subprogram_declaration)))           
                      | interface_package_declaration             ((W_datatypes.INTERFACE_DECLARATION_4(interface_package_declaration)))    

interface_element_seq : SEMICOLON interface_element interface_element_seq           (interface_element :: interface_element_seq)
                     |             ([])

interface_element : interface_declaration               ((W_datatypes.INTERFACE_ELEMENT(interface_declaration)))

interface_file_declaration : FILE identifier_list COLON subtype_indication          ((W_datatypes.INTERFACE_FILE_DECLARATION(identifier_list, subtype_indication)))

interface_function_specification : PURE FUNCTION designator PARAMETER LPARAN formal_parameter_list RPARAN RETURN type_mark          ((W_datatypes.INTERFACE_FUNCTION_SPECIFICATION_1(designator, formal_parameter_list, type_mark)))                                                         
                                 | PURE FUNCTION designator LPARAN formal_parameter_list RPARAN RETURN type_mark                    ((W_datatypes.INTERFACE_FUNCTION_SPECIFICATION_1(designator, formal_parameter_list, type_mark)))                                                         
                                 | PURE FUNCTION designator RETURN type_mark                                                        ((W_datatypes.INTERFACE_FUNCTION_SPECIFICATION_2(designator, type_mark)))        
                                 | IMPURE FUNCTION designator PARAMETER LPARAN formal_parameter_list RPARAN RETURN type_mark          ((W_datatypes.INTERFACE_FUNCTION_SPECIFICATION_1(designator, formal_parameter_list, type_mark)))                                                         
                                 | IMPURE FUNCTION designator LPARAN formal_parameter_list RPARAN RETURN type_mark                    ((W_datatypes.INTERFACE_FUNCTION_SPECIFICATION_1(designator, formal_parameter_list, type_mark)))                                                         
                                 | IMPURE FUNCTION designator RETURN type_mark                                                        ((W_datatypes.INTERFACE_FUNCTION_SPECIFICATION_2(designator, type_mark)))        
                                 | FUNCTION designator PARAMETER LPARAN formal_parameter_list RPARAN RETURN type_mark          ((W_datatypes.INTERFACE_FUNCTION_SPECIFICATION_1(designator, formal_parameter_list, type_mark)))                                                         
                                 | FUNCTION designator LPARAN formal_parameter_list RPARAN RETURN type_mark                    ((W_datatypes.INTERFACE_FUNCTION_SPECIFICATION_1(designator, formal_parameter_list, type_mark)))                                                         
                                 | FUNCTION designator RETURN type_mark                                                        ((W_datatypes.INTERFACE_FUNCTION_SPECIFICATION_2(designator, type_mark)))        

interface_incomplete_type_declaration : TYPE identifier               ((W_datatypes.INTERFACE_INCOMPLETE_TYPE_DECLARATION(identifier)))

interface_list : interface_element interface_element_seq              ((W_datatypes.INTERFACE_LIST(interface_element, interface_element_seq)))

interface_object_declaration : interface_constant_declaration         ((W_datatypes.INTERFACE_OBJECT_DECLARATION_1(interface_constant_declaration)))
                             | interface_signal_declaration           ((W_datatypes.INTERFACE_OBJECT_DECLARATION_2(interface_signal_declaration)))
                             | interface_variable_declaration         ((W_datatypes.INTERFACE_OBJECT_DECLARATION_3(interface_variable_declaration)))
                             | interface_file_declaration             ((W_datatypes.INTERFACE_OBJECT_DECLARATION_4(interface_file_declaration)))

interface_package_declaration : PACKAGE identifier IS NEW name interface_package_generic_map_aspect        ((W_datatypes.INTERFACE_PACKAGE_DECLARATION(identifier, name, interface_package_generic_map_aspect)))

interface_package_generic_map_aspect : generic_map_aspect                           ((W_datatypes.INTERFACE_PACKAGE_GENERIC_MAP_ASPECT_1(generic_map_aspect)))
                                     | GENERIC MAP LPARAN BOX RPARAN                ((W_datatypes.INTERFACE_PACKAGE_GENERIC_MAP_ASPECT_2()))       
                                     | GENERIC MAP LPARAN DEFAULT RPARAN            ((W_datatypes.INTERFACE_PACKAGE_GENERIC_MAP_ASPECT_3()))              

interface_procedure_specification : PROCEDURE designator PARAMETER LPARAN formal_parameter_list RPARAN        ((W_datatypes.INTERFACE_PROCEDURE_SPECIFICATION_1(designator,  formal_parameter_list)))                              
                                  | PROCEDURE designator LPARAN formal_parameter_list RPARAN                  ((W_datatypes.INTERFACE_PROCEDURE_SPECIFICATION_1(designator,  formal_parameter_list)))                                     
                                  | PROCEDURE designator                                                      ((W_datatypes.INTERFACE_PROCEDURE_SPECIFICATION_2(designator)))         

interface_signal_declaration : SIGNAL identifier_list COLON MODE interface_type_indication BUS ASSIGN conditional_expression         ((W_datatypes.INTERFACE_SIGNAL_DECLARATION_1(identifier_list, interface_type_indication, conditional_expression)))                            
                             | SIGNAL identifier_list COLON MODE interface_type_indication BUS                                       ((W_datatypes.INTERFACE_SIGNAL_DECLARATION_2(identifier_list, interface_type_indication)))
                             | identifier_list COLON MODE interface_type_indication BUS ASSIGN conditional_expression         ((W_datatypes.INTERFACE_SIGNAL_DECLARATION_1(identifier_list, interface_type_indication, conditional_expression)))                            
                             | identifier_list COLON MODE interface_type_indication BUS                                       ((W_datatypes.INTERFACE_SIGNAL_DECLARATION_2(identifier_list, interface_type_indication)))
                             | SIGNAL identifier_list COLON interface_type_indication BUS ASSIGN conditional_expression         ((W_datatypes.INTERFACE_SIGNAL_DECLARATION_1(identifier_list, interface_type_indication, conditional_expression)))                            
                             | SIGNAL identifier_list COLON interface_type_indication BUS                                       ((W_datatypes.INTERFACE_SIGNAL_DECLARATION_2(identifier_list, interface_type_indication)))
                             | identifier_list COLON interface_type_indication BUS ASSIGN conditional_expression         ((W_datatypes.INTERFACE_SIGNAL_DECLARATION_1(identifier_list, interface_type_indication, conditional_expression)))                            
                             | identifier_list COLON interface_type_indication BUS                                       ((W_datatypes.INTERFACE_SIGNAL_DECLARATION_2(identifier_list, interface_type_indication)))
                             | SIGNAL identifier_list COLON interface_type_indication ASSIGN conditional_expression         ((W_datatypes.INTERFACE_SIGNAL_DECLARATION_1(identifier_list, interface_type_indication, conditional_expression)))                            
                             | SIGNAL identifier_list COLON interface_type_indication                                       ((W_datatypes.INTERFACE_SIGNAL_DECLARATION_2(identifier_list, interface_type_indication)))
                             | identifier_list COLON interface_type_indication ASSIGN conditional_expression         ((W_datatypes.INTERFACE_SIGNAL_DECLARATION_1(identifier_list, interface_type_indication, conditional_expression)))                            
                             | identifier_list COLON interface_type_indication                                       ((W_datatypes.INTERFACE_SIGNAL_DECLARATION_2(identifier_list, interface_type_indication)))
                             | SIGNAL identifier_list COLON MODE interface_type_indication ASSIGN conditional_expression         ((W_datatypes.INTERFACE_SIGNAL_DECLARATION_1(identifier_list, interface_type_indication, conditional_expression)))                            
                             | SIGNAL identifier_list COLON MODE interface_type_indication                                       ((W_datatypes.INTERFACE_SIGNAL_DECLARATION_2(identifier_list, interface_type_indication)))
                             | identifier_list COLON MODE interface_type_indication ASSIGN conditional_expression         ((W_datatypes.INTERFACE_SIGNAL_DECLARATION_1(identifier_list, interface_type_indication, conditional_expression)))                            
                             | identifier_list COLON MODE interface_type_indication                                       ((W_datatypes.INTERFACE_SIGNAL_DECLARATION_2(identifier_list, interface_type_indication)))

interface_subprogram_declaration : interface_subprogram_specification IS interface_subprogram_default           ((W_datatypes.INTERFACE_SUBPROGRAM_DECLARATION_1(interface_subprogram_specification, interface_subprogram_default)))                                          
                                 | interface_subprogram_specification                                           ((W_datatypes.INTERFACE_SUBPROGRAM_DECLARATION_2(interface_subprogram_specification)))       

interface_subprogram_default : name                    ((W_datatypes.INTERFACE_SUBPROGRAM_DEFAULT_1(name)))                      
                             | BOX                     ((W_datatypes.INTERFACE_SUBPROGRAM_DEFAULT_2()))        

interface_subprogram_specification : interface_procedure_specification          ((W_datatypes.INTERFACE_SUBPROGRAM_SPECIFICATION_1(interface_procedure_specification)))           
                                   | interface_function_specification           ((W_datatypes.INTERFACE_SUBPROGRAM_SPECIFICATION_2(interface_function_specification)))    

interface_type_declaration : interface_incomplete_type_declaration              ((W_datatypes.INTERFACE_TYPE_DECLARATION(interface_incomplete_type_declaration)))

interface_type_indication : subtype_indication                     ((W_datatypes.INTERFACE_TYPE_INDICATION_1(subtype_indication)))   
                          | anonymous_type_indication              ((W_datatypes.INTERFACE_TYPE_INDICATION_2(anonymous_type_indication)))          

interface_variable_declaration : VARIABLE identifier_list COLON MODE interface_type_indication ASSIGN expression             ((W_datatypes.INTERFACE_VARIABLE_DECLARATION_1(identifier_list, interface_type_indication, expression)))                             
                               | VARIABLE identifier_list COLON MODE interface_type_indication                               ((W_datatypes.INTERFACE_VARIABLE_DECLARATION_2(identifier_list, interface_type_indication))) 

iteration_scheme : WHILE condition                      ((W_datatypes.ITERATION_SCHEME_1(condition)))       
                 | FOR parameter_specification          ((W_datatypes.ITERATION_SCHEME_2(parameter_specification)))                     

label_seq : COMMA label label_seq                (label :: label_seq)
              |             ([])

label : identifier                               ((W_datatypes.LABEL(identifier)))

letter : upper_case_letter                       ((W_datatypes.LETTER_1(upper_case_letter)))
       | lower_case_letter                       ((W_datatypes.LETTER_2(lower_case_letter)))

letter_or_digit_seq : UNDERSCORE letter_or_digit letter_or_digit_seq       (letter_or_digit :: letter_or_digit_seq)
                    |    ([])

letter_or_digit : letter           ((W_datatypes.LETTER_OR_DIGIT_1(letter)))
                | digit            ((W_datatypes.LETTER_OR_DIGIT_2(digit)))

library_clause : LIBRARY logical_name_list SEMICOLON       ((W_datatypes.LIBRARY_CLAUSE(logical_name_list)))

library_unit : primary_unit            ((W_datatypes.LIBRARY_UNIT_1(primary_unit)))   
             | secondary_unit          ((W_datatypes.LIBRARY_UNIT_2(secondary_unit)))          

literal : numeric_literal               ((W_datatypes.LITERAL_1(numeric_literal)))         
        | enumeration_literal           ((W_datatypes.LITERAL_2(enumeration_literal)))                
        | string_literal                ((W_datatypes.LITERAL_3(string_literal)))         
        | bit_string_literal            ((W_datatypes.LITERAL_4(bit_string_literal)))                
        | NULL                          ((W_datatypes.LITERAL_5()))  

relation1_seq : AND relation relation1_seq              (relation :: relation1_seq)
              |      ([])

relation2_seq : OR relation relation2_seq              (relation :: relation2_seq)
              |      ([])

relation3_seq : XOR relation relation3_seq              (relation :: relation3_seq)
              |      ([])

relation4_seq : XNOR relation relation4_seq              (relation :: relation4_seq)
              |      ([])                            

logical_expression : relation relation1_seq            ((W_datatypes.LOGICAL_EXPRESSION_1(relation, relation1_seq)))                      
                   | relation relation2_seq            ((W_datatypes.LOGICAL_EXPRESSION_1(relation, relation2_seq)))                      
                   | relation relation3_seq            ((W_datatypes.LOGICAL_EXPRESSION_1(relation, relation3_seq)))                      
                   | relation NAND relation            ((W_datatypes.LOGICAL_EXPRESSION_2(relation1, relation2)))                      
                   | relation NOR relation             ((W_datatypes.LOGICAL_EXPRESSION_2(relation1, relation2)))                      
                   | relation                          ((W_datatypes.LOGICAL_EXPRESSION_3(relation)))        
                   | relation relation4_seq            ((W_datatypes.LOGICAL_EXPRESSION_1(relation, relation4_seq)))                      

logical_name_seq : logical_name logical_name_seq          (logical_name :: logical_name_seq)
              |             ([])

logical_name : identifier                        ((W_datatypes.LOGICAL_NAME(identifier)))

logical_name_list : logical_name logical_name_seq              ((W_datatypes.LOGICAL_NAME_LIST(logical_name, logical_name_seq)))

logical_operator : AND             ((W_datatypes.AND()))
                 | OR              ((W_datatypes.OR()))
                 | NAND            ((W_datatypes.NAND()))
                 | NOR             ((W_datatypes.NOR()))
                 | XOR             ((W_datatypes.XOR()))
                 | XNOR            ((W_datatypes.XNOR()))

loop_statement : label COLON iteration_scheme LOOP sequence_of_statements END LOOP label SEMICOLON            ((W_datatypes.LOOP_STATEMENT_1(label1, iteration_scheme, sequential_statement_body, label2)))                                            
               | label COLON LOOP sequence_of_statements END LOOP label SEMICOLON                             ((W_datatypes.LOOP_STATEMENT_2(label1, sequential_statement_body, label2)))                       
               | label COLON iteration_scheme LOOP sequence_of_statements END LOOP SEMICOLON                  ((W_datatypes.LOOP_STATEMENT_3(label, iteration_scheme, sequential_statement_body)))                                     
               | label COLON LOOP sequence_of_statements END LOOP SEMICOLON                                   ((W_datatypes.LOOP_STATEMENT_4(label, sequential_statement_body)))                
               | iteration_scheme LOOP sequence_of_statements END LOOP SEMICOLON                              ((W_datatypes.LOOP_STATEMENT_5(iteration_scheme, sequential_statement_body)))                       
               | LOOP sequence_of_statements END LOOP SEMICOLON                                               ((W_datatypes.LOOP_STATEMENT_6(sequential_statement_body)))         
               | iteration_scheme LOOP sequence_of_statements END LOOP label SEMICOLON                        ((W_datatypes.LOOP_STATEMENT_7(iteration_scheme, sequential_statement_body, label)))                              
               | LOOP sequence_of_statements END LOOP label SEMICOLON                                         ((W_datatypes.LOOP_STATEMENT_8(sequential_statement_body, label)))         

miscellaneous_operator : EXP              ((W_datatypes.EXPT()))
                       | ABS              ((W_datatypes.ABS()))
                       | NOT              ((W_datatypes.NOT()))

mode : IN                  ((W_datatypes.IN())) 
     | OUT                 ((W_datatypes.OUT())) 
     | INOUT               ((W_datatypes.INOUT())) 
     | BUFFER              ((W_datatypes.BUFFER()))        
     | LINKAGE             ((W_datatypes.LINKAGE()))        

mode_indication : simple_mode_indication                ((W_datatypes.MODE_INDICATION_1(simple_mode_indication)))
                | mode_view_indication                  ((W_datatypes.MODE_INDICATION_2(mode_view_indication)))

mode_view_declaration : VIEW identifier OF subtype_indication IS mode_view_element_definition_seq END VIEW simple_name SEMICOLON           ((W_datatypes.MODE_VIEW_DECLARATION_1(identifier, subtype_indication, mode_view_element_definition list, simple_name)))               
                      | VIEW identifier OF subtype_indication IS mode_view_element_definition_seq END VIEW SEMICOLON                       ((W_datatypes.MODE_VIEW_DECLARATION_2(identifier, subtype_indication, mode_view_element_definition list))) 

mode_view_element_definition_seq : mode_view_element_definition mode_view_element_definition_seq                (mode_view_element_definition :: mode_view_element_definition_seq)
                                   |             ([])

mode_view_element_definition : record_element_list COLON element_mode_indication SEMICOLON               ((W_datatypes.MODE_VIEW_ELEMENT_DEFINITION(record_element_list, element_mode_indication)))

mode_view_indication : record_mode_view_indication             ((W_datatypes.MODE_VIEW_INDICATION_1(record_mode_view_indication)))
                     | array_mode_view_indication              ((W_datatypes.MODE_VIEW_INDICATION_2(array_mode_view_indication)))

multiplying_operator : MULT            ((W_datatypes.MULT()))          
                     | DIV             ((W_datatypes.DIV()))   
                     | MOD             ((W_datatypes.MOD()))   
                     | REM             ((W_datatypes.REM()))   

name : simple_name                      ((W_datatypes.NAME_1(simple_name)))  
     | operator_symbol                  ((W_datatypes.NAME_2(operator_symbol)))         
     | character_literal                ((W_datatypes.NAME_3(character_literal)))         
     | selected_name                    ((W_datatypes.NAME_4(selected_name)))  
     | indexed_name                     ((W_datatypes.NAME_5(indexed_name)))  
     | slice_name                       ((W_datatypes.NAME_6(slice_name)))  
     | attribute_name                   ((W_datatypes.NAME_7(attribute_name)))         
     | external_name                    ((W_datatypes.NAME_8(external_name)))  

next_statement : label COLON NEXT label WHEN condition SEMICOLON         ((W_datatypes.NEXT_STATEMENT_1(label1, label2, condition)))                                       
               | NEXT label WHEN condition SEMICOLON                     ((W_datatypes.NEXT_STATEMENT_2(label, condition)))                         
               | label COLON NEXT WHEN condition SEMICOLON               ((W_datatypes.NEXT_STATEMENT_2(label, condition)))                                
               | NEXT WHEN condition SEMICOLON                           ((W_datatypes.NEXT_STATEMENT_3(condition)))                  
               | label COLON NEXT SEMICOLON                              ((W_datatypes.NEXT_STATEMENT_4(label)))                  
               | NEXT label SEMICOLON                                    ((W_datatypes.NEXT_STATEMENT_4(label)))           
               | label COLON NEXT label SEMICOLON                        ((W_datatypes.NEXT_STATEMENT_5(label1, label2)))                         
               | NEXT SEMICOLON                                          ((W_datatypes.NEXT_STATEMENT_6()))  

null_statement : label COLON NULL SEMICOLON                  ((W_datatypes.NULL_STATEMENT_1(label)))                
               | NULL SEMICOLON                              ((W_datatypes.NULL_STATEMENT_2()))  

numeric_literal : abstract_literal              ((W_datatypes.NUMERIC_LITERAL_1(abstract_literal)))       
                | physical_literal              ((W_datatypes.NUMERIC_LITERAL_2(physical_literal)))

object_declaration : constant_declaration        ((W_datatypes.OBJECT_DECLARATION_1(constant_declaration)))
                   | signal_declaration          ((W_datatypes.OBJECT_DECLARATION_2(signal_declaration)))
                   | variable_declaration        ((W_datatypes.OBJECT_DECLARATION_3(variable_declaration)))
                   | file_declaration            ((W_datatypes.OBJECT_DECLARATION_4(file_declaration)))

operator_symbol : string_literal                 ((W_datatypes.OPERATOR_SYMBOL(string_literal)))

package_body : PACKAGE BODY simple_name IS package_body_declarative_part END PACKAGE BODY simple_name SEMICOLON         ((W_datatypes.PACKAGE_BODY_1(simple_name, package_body_declarative_part, simple_name)))             
             | PACKAGE BODY simple_name IS package_body_declarative_part END PACKAGE BODY SEMICOLON                     ((W_datatypes.PACKAGE_BODY_2(simple_name, package_body_declarative_part)))      
             | PACKAGE BODY simple_name IS package_body_declarative_part END simple_name SEMICOLON         ((W_datatypes.PACKAGE_BODY_1(simple_name, package_body_declarative_part, simple_name)))             
             | PACKAGE BODY simple_name IS package_body_declarative_part END SEMICOLON                     ((W_datatypes.PACKAGE_BODY_2(simple_name, package_body_declarative_part)))      

package_body_declarative_item_seq : package_body_declarative_item package_body_declarative_item_seq             (package_body_declarative_item :: package_body_declarative_item_seq)
                                   |             ([])

package_body_declarative_item : subprogram_declaration                          ((W_datatypes.PACKAGE_BODY_DECLARATIVE_ITEM_1(subprogram_declaration)))           
                              | subprogram_body                                 ((W_datatypes.PACKAGE_BODY_DECLARATIVE_ITEM_2(subprogram_body)))    
                              | subprogram_instantiation_declaration            ((W_datatypes.PACKAGE_BODY_DECLARATIVE_ITEM_3(subprogram_instantiation_declaration)))                         
                              | package_declaration                             ((W_datatypes.PACKAGE_BODY_DECLARATIVE_ITEM_4(package_declaration)))           
                              | package_body                                    ((W_datatypes.PACKAGE_BODY_DECLARATIVE_ITEM_5(package_body)))    
                              | package_instantiation_declaration               ((W_datatypes.PACKAGE_BODY_DECLARATIVE_ITEM_6(package_instantiation_declaration)))                         
                              | type_declaration                                ((W_datatypes.PACKAGE_BODY_DECLARATIVE_ITEM_7(type_declaration)))    
                              | subtype_declaration                             ((W_datatypes.PACKAGE_BODY_DECLARATIVE_ITEM_8(subtype_declaration)))           
                              | mode_view_declaration                           ((W_datatypes.PACKAGE_BODY_DECLARATIVE_ITEM_8(mode_view_declaration)))           
                              | constant_declaration                            ((W_datatypes.PACKAGE_BODY_DECLARATIVE_ITEM_10(constant_declaration)))           
                              | variable_declaration                            ((W_datatypes.PACKAGE_BODY_DECLARATIVE_ITEM_11(variable_declaration)))           
                              | file_declaration                                ((W_datatypes.PACKAGE_BODY_DECLARATIVE_ITEM_12(file_declaration)))    
                              | alias_declaration                               ((W_datatypes.PACKAGE_BODY_DECLARATIVE_ITEM_13(alias_declaration)))           
                              | attribute_declaration                           ((W_datatypes.PACKAGE_BODY_DECLARATIVE_ITEM_14(attribute_declaration)))           
                              | attribute_specification                         ((W_datatypes.PACKAGE_BODY_DECLARATIVE_ITEM_15(attribute_specification)))           
                              | use_clause                                      ((W_datatypes.PACKAGE_BODY_DECLARATIVE_ITEM_16(use_clause)))    
                              | group_template_declaration                      ((W_datatypes.PACKAGE_BODY_DECLARATIVE_ITEM_17(group_template_declaration)))                  
                              | group_declaration                               ((W_datatypes.PACKAGE_BODY_DECLARATIVE_ITEM_18(group_declaration)))           

package_body_declarative_part : package_body_declarative_item_seq                   ((W_datatypes.PACKAGE_BODY_DECLARATIVE_PART(package_body_declarative_item_seq)))

package_declaration : PACKAGE identifier IS package_header package_declarative_part END PACKAGE simple_name SEMICOLON            ((W_datatypes.PACKAGE_DECLARATION_1(identifier, package_header, package_declarative_part, simple_name)))           
                    | PACKAGE identifier IS package_header package_declarative_part END PACKAGE SEMICOLON                        ((W_datatypes.PACKAGE_DECLARATION_2(identifier, package_header, package_declarative_part)))     
                    | PACKAGE identifier IS package_header package_declarative_part END simple_name SEMICOLON            ((W_datatypes.PACKAGE_DECLARATION_1(identifier, package_header, package_declarative_part, simple_name)))           
                    | PACKAGE identifier IS package_header package_declarative_part END SEMICOLON                        ((W_datatypes.PACKAGE_DECLARATION_2(identifier, package_header, package_declarative_part)))     

package_declarative_item_seq : package_declarative_item package_declarative_item_seq              (package_declarative_item :: package_declarative_item_seq)
                            |             ([])

package_declarative_item : subprogram_declaration                             ((W_datatypes.PACKAGE_DECLARATIVE_ITEM_1(subprogram_declaration)))             
                         | subprogram_instantiation_declaration               ((W_datatypes.PACKAGE_DECLARATIVE_ITEM_2(subprogram_instantiation_declaration)))                           
                         | package_declaration                                ((W_datatypes.PACKAGE_DECLARATIVE_ITEM_3(package_declaration)))      
                         | package_instantiation_declaration                  ((W_datatypes.PACKAGE_DECLARATIVE_ITEM_4(package_instantiation_declaration)))                    
                         | type_declaration                                   ((W_datatypes.PACKAGE_DECLARATIVE_ITEM_5(type_declaration)))      
                         | subtype_declaration                                ((W_datatypes.PACKAGE_DECLARATIVE_ITEM_6(subtype_declaration)))      
                         | constant_declaration                               ((W_datatypes.PACKAGE_DECLARATIVE_ITEM_7(constant_declaration)))      
                         | signal_declaration                                 ((W_datatypes.PACKAGE_DECLARATIVE_ITEM_8(signal_declaration)))      
                         | variable_declaration                               ((W_datatypes.PACKAGE_DECLARATIVE_ITEM_9(variable_declaration)))      
                         | file_declaration                                   ((W_datatypes.PACKAGE_DECLARATIVE_ITEM_10(file_declaration)))      
                         | alias_declaration                                  ((W_datatypes.PACKAGE_DECLARATIVE_ITEM_11(alias_declaration)))      
                         | component_declaration                              ((W_datatypes.PACKAGE_DECLARATIVE_ITEM_12(component_declaration)))      
                         | attribute_declaration                              ((W_datatypes.PACKAGE_DECLARATIVE_ITEM_13(attribute_declaration)))      
                         | attribute_specification                            ((W_datatypes.PACKAGE_DECLARATIVE_ITEM_14(attribute_specification)))             
                         | disconnection_specification                        ((W_datatypes.PACKAGE_DECLARATIVE_ITEM_15(disconnection_specification)))             
                         | use_clause                                         ((W_datatypes.PACKAGE_DECLARATIVE_ITEM_16(use_clause)))
                         | group_template_declaration                         ((W_datatypes.PACKAGE_DECLARATIVE_ITEM_17(group_template_declaration)))             
                         | group_declaration                                  ((W_datatypes.PACKAGE_DECLARATIVE_ITEM_18(group_declaration)))      

package_declarative_part : package_declarative_item_seq                      ((W_datatypes.PACKAGE_DECLARATIVE_PART(package_declarative_item_seq)))

package_header : generic_clause generic_map_aspect SEMICOLON ((W_datatypes.PACKAGE_HEADER_1(generic_clause,generic_map_aspect)))
               | generic_clause ((W_datatypes.PACKAGE_HEADER_3(generic_clause)))
               | ((W_datatypes.PACKAGE_HEADER_4()))

package_instantiation_declaration : PACKAGE identifier IS NEW name generic_map_aspect SEMICOLON ((W_datatypes.PACKAGE_INSTANTIATION_DECLARATION_1(identifier,name,generic_map_aspect)))
                                  | PACKAGE identifier IS NEW name SEMICOLON ((W_datatypes.PACKAGE_INSTANTIATION_DECLARATION_2(identifier,name)))

p_simple_name_seq : simple_name DOT p_simple_name_seq          (simple_name :: p_simple_name_seq)
                     |      ([])

package_pathname : ADT name DOT p_simple_name_seq simple_name ((W_datatypes.PACKAGE_PATHNAME(name,p_simple_name_seq,simple_name)))

parameter_map_aspect : PARAMETER MAP LPARAN association_list RPARAN ((W_datatypes.PARAMETER_MAP_ASPECT(association_list)))
                     | LPARAN association_list RPARAN ((W_datatypes.PARAMETER_MAP_ASPECT(association_list)))

parameter_specification : identifier IN discrete_range ((W_datatypes.PARAMETER_SPECIFICATION(identifier,discrete_range)))

pathname_element_seq : pathname_element DOT pathname_element_seq             (pathname_element :: pathname_element_seq)
                     |      ([])

partial_pathname : pathname_element_seq simple_name ((W_datatypes.PARTIAL_PATHNAME(pathname_element_seq,simple_name)))

pathname_element : simple_name ((W_datatypes.PATHNAME_ELEMENT_1(simple_name)))
                 | label ((W_datatypes.PATHNAME_ELEMENT_3(label)))
                 | label LPARAN expression RPARAN ((W_datatypes.PATHNAME_ELEMENT_2(label,expression)))

physical_incomplete_type_definition : UNITS BOX ((W_datatypes.PHYSICAL_INCOMPLETE_TYPE_DEFINITION()))

physical_literal : abstract_literal name ((W_datatypes.PHYSICAL_LITERAL_1(abstract_literal,name)))
                 | name ((W_datatypes.PHYSICAL_LITERAL_2(name)))

secondary_unit_declaration_seq : secondary_unit_declaration secondary_unit_declaration_seq                      (secondary_unit_declaration_seq :: secondary_unit_declaration_seq)
                                   |             ([])

physical_type_definition : range_constraint UNITS primary_unit_declaration secondary_unit_declaration_seq END UNITS simple_name ((W_datatypes.PHYSICAL_TYPE_DEFINITION_1(range_constraint,primary_unit_declaration,secondary_unit_declaration_seq,simple_name)))
                         | range_constraint UNITS primary_unit_declaration secondary_unit_declaration_seq END UNITS ((W_datatypes.PHYSICAL_TYPE_DEFINITION_2(range_constraint,primary_unit_declaration,secondary_unit_declaration_seq)))

plain_return_statement : label COLON RETURN WHEN condition SEMICOLON ((W_datatypes.PLAIN_RETURN_STATEMENT_1(label,condition)))
                       | label COLON RETURN SEMICOLON ((W_datatypes.PLAIN_RETURN_STATEMENT_3(label)))
                       | RETURN WHEN condition SEMICOLON ((W_datatypes.PLAIN_RETURN_STATEMENT_2(condition)))
                       | RETURN SEMICOLON ((W_datatypes.PLAIN_RETURN_STATEMENT_4()))

port_clause : PORT LPARAN port_list RPARAN SEMICOLON ((W_datatypes.PORT_CLAUSE(port_list)))

port_list : interface_list ((W_datatypes.PORT_LIST(interface_list)))

port_map_aspect : PORT MAP LPARAN association_list RPARAN ((W_datatypes.PORT_MAP_ASPECT(association_list)))

prefix : name ((W_datatypes.PREFIX_1(name)))
       | function_call ((W_datatypes.PREFIX_2(function_call)))

primary : name ((W_datatypes.PRIMARY_1(name)))
        | literal ((W_datatypes.PRIMARY_2(literal)))
        | aggregate ((W_datatypes.PRIMARY_3(aggregate)))
        | function_call ((W_datatypes.PRIMARY_4(function_call)))
        | qualified_expression ((W_datatypes.PRIMARY_5(qualified_expression)))
        | type_conversion ((W_datatypes.PRIMARY_6(type_conversion)))
        | allocator ((W_datatypes.PRIMARY_7(allocator)))
        | LPARAN conditional_expression RPARAN ((W_datatypes.PRIMARY_8(conditional_expression)))

primary_unit : entity_declaration ((W_datatypes.PRIMARY_UNIT_1(entity_declaration)))
             | configuration_declaration ((W_datatypes.PRIMARY_UNIT_2(configuration_declaration)))
             | package_declaration ((W_datatypes.PRIMARY_UNIT_3(package_declaration)))
             | package_instantiation_declaration ((W_datatypes.PRIMARY_UNIT_4(package_instantiation_declaration)))
             | context_declaration ((W_datatypes.PRIMARY_UNIT_5(context_declaration)))

primary_unit_declaration : identifier SEMICOLON ((W_datatypes.PRIMARY_UNIT_DECLARATION(identifier)))

private_variable_declaration : PRIVATE variable_declaration ((W_datatypes.PRIVATE_VARIABLE_DECLARATION(variable_declaration)))

private_incomplete_type_definition : PRIVATE ((W_datatypes.PRIVATE_INCOMPLETE_TYPE_DEFINITION()))

procedure_call : name parameter_map_aspect ((W_datatypes.PROCEDURE_CALL_1(name,parameter_map_aspect)))
               | name ((W_datatypes.PROCEDURE_CALL_2(name)))

procedure_call_statement : label COLON procedure_call SEMICOLON ((W_datatypes.PROCEDURE_CALL_STATEMENT_1(label,procedure_call)))
                         | procedure_call SEMICOLON ((W_datatypes.PROCEDURE_CALL_STATEMENT_2(procedure_call)))

procedure_specification : PROCEDURE designator subprogram_header PARAMETER LPARAN formal_parameter_list RPARAN ((W_datatypes.PROCEDURE_SPECIFICATION_1(designator,subprogram_header,formal_parameter_list)))
                        | PROCEDURE designator subprogram_header LPARAN formal_parameter_list RPARAN ((W_datatypes.PROCEDURE_SPECIFICATION_1(designator,subprogram_header,formal_parameter_list)))
                        | PROCEDURE designator subprogram_header ((W_datatypes.PROCEDURE_SPECIFICATION_2(designator,subprogram_header)))

process_declarative_item : subprogram_declaration ((W_datatypes.PROCESS_DECLARATIVE_ITEM_1(subprogram_declaration)))
                         | subprogram_body ((W_datatypes.PROCESS_DECLARATIVE_ITEM_2(subprogram_body)))
                         | subprogram_instantiation_declaration ((W_datatypes.PROCESS_DECLARATIVE_ITEM_3(subprogram_instantiation_declaration)))
                         | package_declaration ((W_datatypes.PROCESS_DECLARATIVE_ITEM_4(package_declaration)))
                         | package_body ((W_datatypes.PROCESS_DECLARATIVE_ITEM_5(package_body)))
                         | package_instantiation_declaration ((W_datatypes.PROCESS_DECLARATIVE_ITEM_6(package_instantiation_declaration)))
                         | type_declaration ((W_datatypes.PROCESS_DECLARATIVE_ITEM_7(type_declaration)))
                         | subtype_declaration ((W_datatypes.PROCESS_DECLARATIVE_ITEM_8(subtype_declaration)))
                         | constant_declaration ((W_datatypes.PROCESS_DECLARATIVE_ITEM_9(constant_declaration)))
                         | variable_declaration ((W_datatypes.PROCESS_DECLARATIVE_ITEM_10(variable_declaration)))
                         | file_declaration ((W_datatypes.PROCESS_DECLARATIVE_ITEM_11(file_declaration)))
                         | alias_declaration ((W_datatypes.PROCESS_DECLARATIVE_ITEM_12(alias_declaration)))
                         | attribute_declaration ((W_datatypes.PROCESS_DECLARATIVE_ITEM_13(attribute_declaration)))
                         | attribute_specification ((W_datatypes.PROCESS_DECLARATIVE_ITEM_14(attribute_specification)))
                         | use_clause ((W_datatypes.PROCESS_DECLARATIVE_ITEM_15(use_clause)))
                         | group_template_declaration ((W_datatypes.PROCESS_DECLARATIVE_ITEM_16(group_template_declaration)))
                         | group_declaration ((W_datatypes.PROCESS_DECLARATIVE_ITEM_17(group_declaration)))

process_declarative_part : process_declarative_item_seq ((W_datatypes.PROCESS_DECLARATIVE_PART(process_declarative_item_seq)))

process_sensitivity_list : ALL ((W_datatypes.PROCESS_SENSITIVITY_LIST_2()))
                         | sensitivity_list ((W_datatypes.PROCESS_SENSITIVITY_LIST_1(sensitivity_list)))

process_statement : label COLON POSTPONED PROCESS LPARAN process_sensitivity_list RPARAN IS process_declarative_part BEGIN process_statement_part END POSTPONED PROCESS label SEMICOLON ((W_datatypes.PROCESS_STATEMENT_2(label1,process_sensitivity_list,process_declarative_part,process_statement_part,label2)))
                  | POSTPONED PROCESS LPARAN process_sensitivity_list RPARAN IS process_declarative_part BEGIN process_statement_part END POSTPONED PROCESS label SEMICOLON ((W_datatypes.PROCESS_STATEMENT_1(process_sensitivity_list,process_declarative_part,process_statement_part,label)))
                  | POSTPONED PROCESS IS process_declarative_part BEGIN process_statement_part END POSTPONED PROCESS label SEMICOLON ((W_datatypes.PROCESS_STATEMENT_3(process_declarative_part,process_statement_part,label)))
                  | label COLON POSTPONED PROCESS IS process_declarative_part BEGIN process_statement_part END POSTPONED PROCESS label SEMICOLON ((W_datatypes.PROCESS_STATEMENT_4(label1,process_declarative_part,process_statement_part,label2)))
                  | POSTPONED PROCESS IS process_declarative_part BEGIN process_statement_part END POSTPONED PROCESS SEMICOLON ((W_datatypes.PROCESS_STATEMENT_5(process_declarative_part,process_statement_part)))
                  | label COLON POSTPONED PROCESS IS process_declarative_part BEGIN process_statement_part END POSTPONED PROCESS SEMICOLON ((W_datatypes.PROCESS_STATEMENT_6(label,process_declarative_part,process_statement_part)))
                  | POSTPONED PROCESS LPARAN process_sensitivity_list RPARAN IS process_declarative_part BEGIN process_statement_part END POSTPONED PROCESS SEMICOLON ((W_datatypes.PROCESS_STATEMENT_7(process_sensitivity_list,process_declarative_part,process_statement_part)))
                  | label COLON POSTPONED PROCESS LPARAN process_sensitivity_list RPARAN IS process_declarative_part BEGIN process_statement_part END POSTPONED PROCESS SEMICOLON ((W_datatypes.PROCESS_STATEMENT_8(label,process_sensitivity_list,process_declarative_part,process_statement_part)))

                  |label COLON PROCESS LPARAN process_sensitivity_list RPARAN IS process_declarative_part BEGIN process_statement_part END POSTPONED PROCESS label SEMICOLON ((W_datatypes.PROCESS_STATEMENT_2(label1,process_sensitivity_list,process_declarative_part,process_statement_part,label2)))
                  | PROCESS LPARAN process_sensitivity_list RPARAN IS process_declarative_part BEGIN process_statement_part END POSTPONED PROCESS label SEMICOLON ((W_datatypes.PROCESS_STATEMENT_1(process_sensitivity_list,process_declarative_part,process_statement_part,label)))
                  | PROCESS IS process_declarative_part BEGIN process_statement_part END POSTPONED PROCESS label SEMICOLON ((W_datatypes.PROCESS_STATEMENT_3(process_declarative_part,process_statement_part,label)))
                  | label COLON PROCESS IS process_declarative_part BEGIN process_statement_part END POSTPONED PROCESS label SEMICOLON ((W_datatypes.PROCESS_STATEMENT_4(label1,process_declarative_part,process_statement_part,label2)))
                  | PROCESS IS process_declarative_part BEGIN process_statement_part END POSTPONED PROCESS SEMICOLON ((W_datatypes.PROCESS_STATEMENT_5(process_declarative_part,process_statement_part)))
                  | label COLON PROCESS IS process_declarative_part BEGIN process_statement_part END POSTPONED PROCESS SEMICOLON ((W_datatypes.PROCESS_STATEMENT_6(label,process_declarative_part,process_statement_part)))
                  | PROCESS LPARAN process_sensitivity_list RPARAN IS process_declarative_part BEGIN process_statement_part END POSTPONED PROCESS SEMICOLON ((W_datatypes.PROCESS_STATEMENT_7(process_sensitivity_list,process_declarative_part,process_statement_part)))
                  | label COLON PROCESS LPARAN process_sensitivity_list RPARAN IS process_declarative_part BEGIN process_statement_part END POSTPONED PROCESS SEMICOLON ((W_datatypes.PROCESS_STATEMENT_8(label,process_sensitivity_list,process_declarative_part,process_statement_part)))

                  | label COLON POSTPONED PROCESS LPARAN process_sensitivity_list RPARAN process_declarative_part BEGIN process_statement_part END POSTPONED PROCESS label SEMICOLON ((W_datatypes.PROCESS_STATEMENT_2(label1,process_sensitivity_list,process_declarative_part,process_statement_part,label2)))
                  | POSTPONED PROCESS LPARAN process_sensitivity_list RPARAN process_declarative_part BEGIN process_statement_part END POSTPONED PROCESS label SEMICOLON ((W_datatypes.PROCESS_STATEMENT_1(process_sensitivity_list,process_declarative_part,process_statement_part,label)))
                  | POSTPONED PROCESS process_declarative_part BEGIN process_statement_part END POSTPONED PROCESS label SEMICOLON ((W_datatypes.PROCESS_STATEMENT_3(process_declarative_part,process_statement_part,label)))
                  | label COLON POSTPONED PROCESS process_declarative_part BEGIN process_statement_part END POSTPONED PROCESS label SEMICOLON ((W_datatypes.PROCESS_STATEMENT_4(label1,process_declarative_part,process_statement_part,label2)))
                  | POSTPONED PROCESS process_declarative_part BEGIN process_statement_part END POSTPONED PROCESS SEMICOLON ((W_datatypes.PROCESS_STATEMENT_5(process_declarative_part,process_statement_part)))
                  | label COLON POSTPONED PROCESS process_declarative_part BEGIN process_statement_part END POSTPONED PROCESS SEMICOLON ((W_datatypes.PROCESS_STATEMENT_6(label,process_declarative_part,process_statement_part)))
                  | POSTPONED PROCESS LPARAN process_sensitivity_list RPARAN process_declarative_part BEGIN process_statement_part END POSTPONED PROCESS SEMICOLON ((W_datatypes.PROCESS_STATEMENT_7(process_sensitivity_list,process_declarative_part,process_statement_part)))
                  | label COLON POSTPONED PROCESS LPARAN process_sensitivity_list RPARAN process_declarative_part BEGIN process_statement_part END POSTPONED PROCESS SEMICOLON ((W_datatypes.PROCESS_STATEMENT_8(label,process_sensitivity_list,process_declarative_part,process_statement_part)))

                  | label COLON POSTPONED PROCESS LPARAN process_sensitivity_list RPARAN IS process_declarative_part BEGIN process_statement_part END PROCESS label SEMICOLON ((W_datatypes.PROCESS_STATEMENT_2(label1,process_sensitivity_list,process_declarative_part,process_statement_part,label2)))
                  | POSTPONED PROCESS LPARAN process_sensitivity_list RPARAN IS process_declarative_part BEGIN process_statement_part END PROCESS label SEMICOLON ((W_datatypes.PROCESS_STATEMENT_1(process_sensitivity_list,process_declarative_part,process_statement_part,label)))
                  | POSTPONED PROCESS IS process_declarative_part BEGIN process_statement_part END PROCESS label SEMICOLON ((W_datatypes.PROCESS_STATEMENT_3(process_declarative_part,process_statement_part,label)))
                  | label COLON POSTPONED PROCESS IS process_declarative_part BEGIN process_statement_part END PROCESS label SEMICOLON ((W_datatypes.PROCESS_STATEMENT_4(label1,process_declarative_part,process_statement_part,label2)))
                  | POSTPONED PROCESS IS process_declarative_part BEGIN process_statement_part END PROCESS SEMICOLON ((W_datatypes.PROCESS_STATEMENT_5(process_declarative_part,process_statement_part)))
                  | label COLON POSTPONED PROCESS IS process_declarative_part BEGIN process_statement_part END PROCESS SEMICOLON ((W_datatypes.PROCESS_STATEMENT_6(label,process_declarative_part,process_statement_part)))
                  | POSTPONED PROCESS LPARAN process_sensitivity_list RPARAN IS process_declarative_part BEGIN process_statement_part END PROCESS SEMICOLON ((W_datatypes.PROCESS_STATEMENT_7(process_sensitivity_list,process_declarative_part,process_statement_part)))
                  | label COLON POSTPONED PROCESS LPARAN process_sensitivity_list RPARAN IS process_declarative_part BEGIN process_statement_part END PROCESS SEMICOLON ((W_datatypes.PROCESS_STATEMENT_8(label,process_sensitivity_list,process_declarative_part,process_statement_part)))

                  |label COLON PROCESS LPARAN process_sensitivity_list RPARAN process_declarative_part BEGIN process_statement_part END POSTPONED PROCESS label SEMICOLON ((W_datatypes.PROCESS_STATEMENT_2(label1,process_sensitivity_list,process_declarative_part,process_statement_part,label2)))
                  | PROCESS LPARAN process_sensitivity_list RPARAN process_declarative_part BEGIN process_statement_part END POSTPONED PROCESS label SEMICOLON ((W_datatypes.PROCESS_STATEMENT_1(process_sensitivity_list,process_declarative_part,process_statement_part,label)))
                  | PROCESS process_declarative_part BEGIN process_statement_part END POSTPONED PROCESS label SEMICOLON ((W_datatypes.PROCESS_STATEMENT_3(process_declarative_part,process_statement_part,label)))
                  | label COLON PROCESS process_declarative_part BEGIN process_statement_part END POSTPONED PROCESS label SEMICOLON ((W_datatypes.PROCESS_STATEMENT_4(label1,process_declarative_part,process_statement_part,label2)))
                  | PROCESS process_declarative_part BEGIN process_statement_part END POSTPONED PROCESS SEMICOLON ((W_datatypes.PROCESS_STATEMENT_5(process_declarative_part,process_statement_part)))
                  | label COLON PROCESS process_declarative_part BEGIN process_statement_part END POSTPONED PROCESS SEMICOLON ((W_datatypes.PROCESS_STATEMENT_6(label,process_declarative_part,process_statement_part)))
                  | PROCESS LPARAN process_sensitivity_list RPARAN process_declarative_part BEGIN process_statement_part END POSTPONED PROCESS SEMICOLON ((W_datatypes.PROCESS_STATEMENT_7(process_sensitivity_list,process_declarative_part,process_statement_part)))
                  | label COLON PROCESS LPARAN process_sensitivity_list RPARAN process_declarative_part BEGIN process_statement_part END POSTPONED PROCESS SEMICOLON ((W_datatypes.PROCESS_STATEMENT_8(label,process_sensitivity_list,process_declarative_part,process_statement_part)))

                  | label COLON POSTPONED PROCESS LPARAN process_sensitivity_list RPARAN process_declarative_part BEGIN process_statement_part END PROCESS label SEMICOLON ((W_datatypes.PROCESS_STATEMENT_2(label1,process_sensitivity_list,process_declarative_part,process_statement_part,label2)))
                  | POSTPONED PROCESS LPARAN process_sensitivity_list RPARAN process_declarative_part BEGIN process_statement_part END PROCESS label SEMICOLON ((W_datatypes.PROCESS_STATEMENT_1(process_sensitivity_list,process_declarative_part,process_statement_part,label)))
                  | POSTPONED PROCESS process_declarative_part BEGIN process_statement_part END PROCESS label SEMICOLON ((W_datatypes.PROCESS_STATEMENT_3(process_declarative_part,process_statement_part,label)))
                  | label COLON POSTPONED PROCESS process_declarative_part BEGIN process_statement_part END PROCESS label SEMICOLON ((W_datatypes.PROCESS_STATEMENT_4(label1,process_declarative_part,process_statement_part,label2)))
                  | POSTPONED PROCESS process_declarative_part BEGIN process_statement_part END PROCESS SEMICOLON ((W_datatypes.PROCESS_STATEMENT_5(process_declarative_part,process_statement_part)))
                  | label COLON POSTPONED PROCESS process_declarative_part BEGIN process_statement_part END PROCESS SEMICOLON ((W_datatypes.PROCESS_STATEMENT_6(label,process_declarative_part,process_statement_part)))
                  | POSTPONED PROCESS LPARAN process_sensitivity_list RPARAN process_declarative_part BEGIN process_statement_part END PROCESS SEMICOLON ((W_datatypes.PROCESS_STATEMENT_7(process_sensitivity_list,process_declarative_part,process_statement_part)))
                  | label COLON POSTPONED PROCESS LPARAN process_sensitivity_list RPARAN process_declarative_part BEGIN process_statement_part END PROCESS SEMICOLON ((W_datatypes.PROCESS_STATEMENT_8(label,process_sensitivity_list,process_declarative_part,process_statement_part)))

                  |label COLON PROCESS LPARAN process_sensitivity_list RPARAN IS process_declarative_part BEGIN process_statement_part END PROCESS label SEMICOLON ((W_datatypes.PROCESS_STATEMENT_2(label1,process_sensitivity_list,process_declarative_part,process_statement_part,label2)))
                  | PROCESS LPARAN process_sensitivity_list RPARAN IS process_declarative_part BEGIN process_statement_part END PROCESS label SEMICOLON ((W_datatypes.PROCESS_STATEMENT_1(process_sensitivity_list,process_declarative_part,process_statement_part,label)))
                  | PROCESS IS process_declarative_part BEGIN process_statement_part END PROCESS label SEMICOLON ((W_datatypes.PROCESS_STATEMENT_3(process_declarative_part,process_statement_part,label)))
                  | label COLON PROCESS IS process_declarative_part BEGIN process_statement_part END PROCESS label SEMICOLON ((W_datatypes.PROCESS_STATEMENT_4(label1,process_declarative_part,process_statement_part,label2)))
                  | PROCESS IS process_declarative_part BEGIN process_statement_part END PROCESS SEMICOLON ((W_datatypes.PROCESS_STATEMENT_5(process_declarative_part,process_statement_part)))
                  | label COLON PROCESS IS process_declarative_part BEGIN process_statement_part END PROCESS SEMICOLON ((W_datatypes.PROCESS_STATEMENT_6(label,process_declarative_part,process_statement_part)))
                  | PROCESS LPARAN process_sensitivity_list RPARAN IS process_declarative_part BEGIN process_statement_part END PROCESS SEMICOLON ((W_datatypes.PROCESS_STATEMENT_7(process_sensitivity_list,process_declarative_part,process_statement_part)))
                  | label COLON PROCESS LPARAN process_sensitivity_list RPARAN IS process_declarative_part BEGIN process_statement_part END PROCESS SEMICOLON ((W_datatypes.PROCESS_STATEMENT_8(label,process_sensitivity_list,process_declarative_part,process_statement_part)))

                  |label COLON PROCESS LPARAN process_sensitivity_list RPARAN process_declarative_part BEGIN process_statement_part END PROCESS label SEMICOLON ((W_datatypes.PROCESS_STATEMENT_2(label1,process_sensitivity_list,process_declarative_part,process_statement_part,label2)))
                  | PROCESS LPARAN process_sensitivity_list RPARAN process_declarative_part BEGIN process_statement_part END PROCESS label SEMICOLON ((W_datatypes.PROCESS_STATEMENT_1(process_sensitivity_list,process_declarative_part,process_statement_part,label)))
                  | PROCESS process_declarative_part BEGIN process_statement_part END PROCESS label SEMICOLON ((W_datatypes.PROCESS_STATEMENT_3(process_declarative_part,process_statement_part,label)))
                  | label COLON PROCESS process_declarative_part BEGIN process_statement_part END PROCESS label SEMICOLON ((W_datatypes.PROCESS_STATEMENT_4(label1,process_declarative_part,process_statement_part,label2)))
                  | PROCESS process_declarative_part BEGIN process_statement_part END PROCESS SEMICOLON ((W_datatypes.PROCESS_STATEMENT_5(process_declarative_part,process_statement_part)))
                  | label COLON PROCESS process_declarative_part BEGIN process_statement_part END PROCESS SEMICOLON ((W_datatypes.PROCESS_STATEMENT_6(label,process_declarative_part,process_statement_part)))
                  | PROCESS LPARAN process_sensitivity_list RPARAN process_declarative_part BEGIN process_statement_part END PROCESS SEMICOLON ((W_datatypes.PROCESS_STATEMENT_7(process_sensitivity_list,process_declarative_part,process_statement_part)))
                  | label COLON PROCESS LPARAN process_sensitivity_list RPARAN process_declarative_part BEGIN process_statement_part END PROCESS SEMICOLON ((W_datatypes.PROCESS_STATEMENT_8(label,process_sensitivity_list,process_declarative_part,process_statement_part)))

process_statement_part : sequential_statement_seq ((W_datatypes.PROCESS_STATEMENT_PART(sequential_statement_seq)))

protected_type_body : PROTECTED BODY protected_type_body_declarative_part END PROTECTED BODY simple_name ((W_datatypes.PROTECTED_TYPE_BODY_1(protected_type_body_declarative_part,simple_name)))
                    | PROTECTED BODY protected_type_body_declarative_part END PROTECTED BODY ((W_datatypes.PROTECTED_TYPE_BODY_2(protected_type_body_declarative_part)))

protected_type_body_declarative_item : subprogram_declaration ((W_datatypes.PROTECTED_TYPE_BODY_DECLARATIVE_ITEM_1(subprogram_declaration)))
                                     | subprogram_body ((W_datatypes.PROTECTED_TYPE_BODY_DECLARATIVE_ITEM_2(subprogram_body)))
                                     | subprogram_instantiation_declaration ((W_datatypes.PROTECTED_TYPE_BODY_DECLARATIVE_ITEM_3(subprogram_instantiation_declaration)))
                                     | package_declaration ((W_datatypes.PROTECTED_TYPE_BODY_DECLARATIVE_ITEM_4(package_declaration)))
                                     | package_body ((W_datatypes.PROTECTED_TYPE_BODY_DECLARATIVE_ITEM_5(package_body)))
                                     | package_instantiation_declaration ((W_datatypes.PROTECTED_TYPE_BODY_DECLARATIVE_ITEM_6(package_instantiation_declaration)))
                                     | type_declaration ((W_datatypes.PROTECTED_TYPE_BODY_DECLARATIVE_ITEM_7(type_declaration)))
                                     | subtype_declaration ((W_datatypes.PROTECTED_TYPE_BODY_DECLARATIVE_ITEM_8(subtype_declaration)))
                                     | constant_declaration ((W_datatypes.PROTECTED_TYPE_BODY_DECLARATIVE_ITEM_9(constant_declaration)))
                                     | variable_declaration ((W_datatypes.PROTECTED_TYPE_BODY_DECLARATIVE_ITEM_10(variable_declaration)))
                                     | file_declaration ((W_datatypes.PROTECTED_TYPE_BODY_DECLARATIVE_ITEM_11(file_declaration)))
                                     | alias_declaration ((W_datatypes.PROTECTED_TYPE_BODY_DECLARATIVE_ITEM_12(alias_declaration)))
                                     | attribute_declaration ((W_datatypes.PROTECTED_TYPE_BODY_DECLARATIVE_ITEM_13(attribute_declaration)))
                                     | attribute_specification ((W_datatypes.PROTECTED_TYPE_BODY_DECLARATIVE_ITEM_14(attribute_specification)))
                                     | use_clause ((W_datatypes.PROTECTED_TYPE_BODY_DECLARATIVE_ITEM_15(use_clause)))
                                     | group_template_declaration ((W_datatypes.PROTECTED_TYPE_BODY_DECLARATIVE_ITEM_16(group_template_declaration)))
                                     | group_declaration ((W_datatypes.PROTECTED_TYPE_BODY_DECLARATIVE_ITEM_17(group_declaration)))

protected_type_body_declarative_item_seq : protected_type_body_declarative_item protected_type_body_declarative_item_seq                    (protected_type_body_declarative_item :: protected_type_body_declarative_item_seq)
                                          |             ([])

protected_type_body_declarative_part : protected_type_body_declarative_item_seq ((W_datatypes.PROTECTED_TYPE_BODY_DECLARATIVE_PART(protected_type_body_declarative_item_seq)))

protected_type_declaration : PROTECTED protected_type_header protected_type_declarative_part END PROTECTED simple_name ((W_datatypes.PROTECTED_TYPE_DECLARATION_1(protected_type_header,protected_type_declarative_part,simple_name)))
                           | PROTECTED protected_type_header protected_type_declarative_part END PROTECTED ((W_datatypes.PROTECTED_TYPE_DECLARATION_2(protected_type_header,protected_type_declarative_part)))

protected_type_declarative_item : subprogram_declaration ((W_datatypes.PROTECTED_TYPE_DECLARATIVE_ITEM_1(subprogram_declaration)))
                                | subprogram_instantiation_declaration ((W_datatypes.PROTECTED_TYPE_DECLARATIVE_ITEM_2(subprogram_instantiation_declaration)))
                                | attribute_specification ((W_datatypes.PROTECTED_TYPE_DECLARATIVE_ITEM_3(attribute_specification)))
                                | use_clause ((W_datatypes.PROTECTED_TYPE_DECLARATIVE_ITEM_4(use_clause)))
                                | private_variable_declaration ((W_datatypes.PROTECTED_TYPE_DECLARATIVE_ITEM_5(private_variable_declaration)))
                                | alias_declaration ((W_datatypes.PROTECTED_TYPE_DECLARATIVE_ITEM_6(alias_declaration)))

protected_type_declarative_item_seq : protected_type_declarative_item protected_type_declarative_item_seq              (protected_type_declarative_item :: protected_type_declarative_item_seq)
                                   |             ([])

protected_type_declarative_part : protected_type_declarative_item_seq ((W_datatypes.PROTECTED_TYPE_DECLARATIVE_PART(protected_type_declarative_item_seq)))

protected_type_definition : protected_type_declaration ((W_datatypes.PROTECTED_TYPE_DEFINITION_1(protected_type_declaration)))
                          | protected_type_body ((W_datatypes.PROTECTED_TYPE_DEFINITION_2(protected_type_body)))

protected_type_header : generic_clause generic_map_aspect SEMICOLON ((W_datatypes.PROTECTED_TYPE_HEADER_1(generic_clause,generic_map_aspect)))
                      | generic_clause ((W_datatypes.PROTECTED_TYPE_HEADER_3(generic_clause)))
                      | ((W_datatypes.PROTECTED_TYPE_HEADER_4()))

protected_type_instantiation_definition : NEW name generic_map_aspect ((W_datatypes.PROTECTED_TYPE_INSTANTIATION_DEFINITION_2(name,generic_map_aspect)))
                                        | NEW name ((W_datatypes.PROTECTED_TYPE_INSTANTIATION_DEFINITION_1(name)))

qualified_expression : type_mark LPARAN EXPRESSION RPARAN BAR TYPE_MARK aggregate ((W_datatypes.QUALIFIED_EXPRESSION_2(type_mark,aggregate)))
                     | type_mark TICK LPARAN RPARAN ((W_datatypes.QUALIFIED_EXPRESSION_1(type_mark)))

range : attribute_name ((W_datatypes.RANGE_1(attribute_name)))
      | simple_range ((W_datatypes.RANGE_2(simple_range)))
      | expression ((W_datatypes.RANGE_3(expression)))

range_constraint : RANGE range ((W_datatypes.RANGE_CONSTRAINT(range)))

record_constraint : LPARAN record_element_constraint_seq RPARAN ((W_datatypes.RECORD_CONSTRAINT(record_element_constraint_seq)))

record_element_constraint : simple_name element_constraint ((W_datatypes.RECORD_ELEMENT_CONSTRAINT(simple_name,element_constraint)))

record_element_list : simple_name_seq ((W_datatypes.RECORD_ELEMENT_LIST(simple_name_seq)))

record_element_resolution : simple_name resolution_indication ((W_datatypes.RECORD_ELEMENT_RESOLUTION(simple_name,resolution_indication)))

record_resolution : record_element_resolution_seq ((W_datatypes.RECORD_RESOLUTION(record_element_resolution_seq)))

record_type_definition : RECORD element_declaration_seq END RECORD simple_name ((W_datatypes.RECORD_TYPE_DEFINITION_1(element_declaration_seq,simple_name)))
                       | RECORD element_declaration_seq END RECORD ((W_datatypes.RECORD_TYPE_DEFINITION_2(element_declaration_seq)))

record_mode_view_indication : VIEW name OF subtype_indication ((W_datatypes.RECORD_MODE_VIEW_INDICATION_1(name,subtype_indication)))
                            | VIEW name ((W_datatypes.RECORD_MODE_VIEW_INDICATION_2(name)))

relation : shift_expression relational_operator shift_expression ((W_datatypes.RELATION_1(shift_expression1,relational_operator,shift_expression2)))
         | shift_expression ((W_datatypes.RELATION_2(shift_expression)))

relational_operator : EQ ((W_datatypes.EQ()))
                    | NEQ ((W_datatypes.NEQ()))
                    | GT ((W_datatypes.GT()))
                    | LT ((W_datatypes.LT()))
                    | LE ((W_datatypes.LE()))
                    | GE ((W_datatypes.GE()))
                    | RELOP1   ((W_datatypes.RELO1()))
                    | RELOP2   ((W_datatypes.RELO2()))
                    | RELOP3   ((W_datatypes.RELO3()))
                    | RELOP4   ((W_datatypes.RELO4()))
                    | RELOP5   ((W_datatypes.RELO5()))
                    | RELOP6   ((W_datatypes.RELO6()))

relative_pathname : carrot_dot_seq partial_pathname ((W_datatypes.RELATVIE_PATHNAME(partial_pathname)))

report_statement : label COLON REPORT expression SEVERITY expression SEMICOLON ((W_datatypes.REPORT_STATEMENT_3(label,expression1,expression2)))
                 | label COLON REPORT expression SEMICOLON ((W_datatypes.REPORT_STATEMENT_2(label,expression)))
                 | REPORT expression SEVERITY expression SEMICOLON ((W_datatypes.REPORT_STATEMENT_1(expression1,expression2)))
                 | REPORT expression SEMICOLON ((W_datatypes.REPORT_STATEMENT_4(expression)))

resolution_indication : name ((W_datatypes.RESOLUTION_INDICATION_1(name)))
                      | LPARAN element_resolution RPARAN ((W_datatypes.RESOLUTION_INDICATION_2(element_resolution)))

return_statement : plain_return_statement ((W_datatypes.RETURN_STATEMENT_1(plain_return_statement)))
                 | value_return_statement ((W_datatypes.RETURN_STATEMENT_2(value_return_statement)))

scalar_incomplete_type_definition : BOX ((W_datatypes.SCALAR_INCOMPLETE_TYPE_DEFINITION()))

scalar_type_definition : enumeration_type_definition ((W_datatypes.SCALAR_TYPE_DEFINITION_1(enumeration_type_definition)))
                       | integer_type_definition ((W_datatypes.SCALAR_TYPE_DEFINITION_2(integer_type_definition)))
                       | floating_type_definition ((W_datatypes.SCALAR_TYPE_DEFINITION_3(floating_type_definition)))
                       | physical_type_definition ((W_datatypes.SCALAR_TYPE_DEFINITION_4(physical_type_definition)))

secondary_unit : architecture_body ((W_datatypes.SECONDARY_UNIT_1(architecture_body)))
               | package_body ((W_datatypes.SECONDARY_UNIT_2(package_body)))

secondary_unit_declaration : identifier EQ physical_literal SEMICOLON ((W_datatypes.SECONDARY_UNIT_DECLARATION(identifier,physical_literal)))

selected_expressions : ex_when_choices_seq ((W_datatypes.SELECTED_EXPRESSIONS(ex_when_choices_seq)))

selected_force_assignment : WITH expression SELECT QUESTION target LE FORCE force_mode selected_expressions SEMICOLON ((W_datatypes.SELECTED_FORCE_ASIGNMENT_1(expression,target,force_mode,selected_expressions)))
                          | WITH expression SELECT target LE FORCE force_mode selected_expressions SEMICOLON ((W_datatypes.SELECTED_FORCE_ASIGNMENT_1(expression,target,force_mode,selected_expressions)))
                          | WITH expression SELECT QUESTION target LE FORCE selected_expressions SEMICOLON ((W_datatypes.SELECTED_FORCE_ASIGNMENT_2(expression,target,selected_expressions)))
                          | WITH expression SELECT target LE FORCE selected_expressions SEMICOLON ((W_datatypes.SELECTED_FORCE_ASIGNMENT_2(expression,target,selected_expressions)))

selected_name_seq : COMMA selected_name selected_name_seq         (selected_name :: selected_name_seq)

selected_name : prefix DOT suffix ((W_datatypes.SELECTED_NAME(prefix,suffix)))

selected_signal_assignment : selected_waveform_assignment ((W_datatypes.SELECTED_SIGNAL_ASSIGNMENT_1(selected_waveform_assignment)))
                           | selected_force_assignment ((W_datatypes.SELECTED_SIGNAL_ASSIGNMENT_2(selected_force_assignment)))

selected_variable_assignment : WITH expression SELECT QUESTION target ASSIGN selected_expressions SEMICOLON ((W_datatypes.SELECTED_VARIABLE_ASSIGNMENT(expression,target,selected_expressions)))
                             | WITH expression SELECT target ASSIGN selected_expressions SEMICOLON ((W_datatypes.SELECTED_VARIABLE_ASSIGNMENT(expression,target,selected_expressions)))

selected_waveform_assignment : WITH expression SELECT QUESTION target ASSIGN delay_mechanism selected_waveforms SEMICOLON ((W_datatypes.SELECTED_WAVEFORM_ASSIGNMENT_1(expression,target,delay_mechanism,selected_waveforms)))
                             | WITH expression SELECT target ASSIGN delay_mechanism selected_waveforms SEMICOLON ((W_datatypes.SELECTED_WAVEFORM_ASSIGNMENT_1(expression,target,delay_mechanism,selected_waveforms)))
                             | WITH expression SELECT QUESTION target ASSIGN selected_waveforms SEMICOLON ((W_datatypes.SELECTED_WAVEFORM_ASSIGNMENT_2(expression,target,selected_waveforms)))
                             | WITH expression SELECT target ASSIGN selected_waveforms SEMICOLON ((W_datatypes.SELECTED_WAVEFORM_ASSIGNMENT_2(expression,target,selected_waveforms)))

selected_waveforms : wave_when_choices_seq ((W_datatypes.SELECTED_WAVEFORMS(wave_when_choices_seq)))

sensitivity_clause : ON sensitivity_list ((W_datatypes.SENSITIVITY_CLAUSE(sensitivity_list)))

sensitivity_list : name_seq ((W_datatypes.SENSITIVITY_LIST(name_seq)))

sequence_of_statements : sequential_statement_seq ((W_datatypes.SEQUENCE_OF_STATEMENTS(sequential_statement_seq)))

sequential_block_statement : label COLON BLOCK IS sequential_block_declarative_part BEGIN sequential_block_statement_part END BLOCK label SEMICOLON  ((W_datatypes.SEQUENTIAL_BLOCK_STATEMENT_1(label1, sequential_block_statement_part, sequential_block_statement_part,label2)))
                           | label COLON BLOCK IS sequential_block_declarative_part BEGIN sequential_block_statement_part END label SEMICOLON  ((W_datatypes.SEQUENTIAL_BLOCK_STATEMENT_1(label1, sequential_block_statement_part, sequential_block_statement_part,label2)))
                           | label COLON BLOCK sequential_block_declarative_part BEGIN sequential_block_statement_part END BLOCK label SEMICOLON  ((W_datatypes.SEQUENTIAL_BLOCK_STATEMENT_1(label1, sequential_block_statement_part, sequential_block_statement_part,label2)))
                           | label COLON BLOCK sequential_block_declarative_part BEGIN sequential_block_statement_part END label SEMICOLON  ((W_datatypes.SEQUENTIAL_BLOCK_STATEMENT_1(label1, sequential_block_statement_part, sequential_block_statement_part,label2)))
                           | BLOCK IS sequential_block_declarative_part BEGIN sequential_block_statement_part END BLOCK label SEMICOLON  ((W_datatypes.SEQUENTIAL_BLOCK_STATEMENT_2(sequential_block_statement_part, sequential_block_statement_part,label)))
                           | BLOCK sequential_block_declarative_part BEGIN sequential_block_statement_part END BLOCK label SEMICOLON  ((W_datatypes.SEQUENTIAL_BLOCK_STATEMENT_2(sequential_block_statement_part, sequential_block_statement_part,label)))
                           | BLOCK IS sequential_block_declarative_part BEGIN sequential_block_statement_part END label SEMICOLON  ((W_datatypes.SEQUENTIAL_BLOCK_STATEMENT_2(sequential_block_statement_part, sequential_block_statement_part,label)))
                           | BLOCK sequential_block_declarative_part BEGIN sequential_block_statement_part END label SEMICOLON  ((W_datatypes.SEQUENTIAL_BLOCK_STATEMENT_2(sequential_block_statement_part, sequential_block_statement_part,label)))
                           | BLOCK IS sequential_block_declarative_part BEGIN sequential_block_statement_part END BLOCK SEMICOLON  ((W_datatypes.SEQUENTIAL_BLOCK_STATEMENT_3(sequential_block_statement_part, sequential_block_statement_part)))
                           | BLOCK sequential_block_declarative_part BEGIN sequential_block_statement_part END BLOCK SEMICOLON  ((W_datatypes.SEQUENTIAL_BLOCK_STATEMENT_3(sequential_block_statement_part, sequential_block_statement_part)))
                           | BLOCK IS sequential_block_declarative_part BEGIN sequential_block_statement_part END SEMICOLON  ((W_datatypes.SEQUENTIAL_BLOCK_STATEMENT_3(sequential_block_statement_part, sequential_block_statement_part)))
                           | BLOCK sequential_block_declarative_part BEGIN sequential_block_statement_part END SEMICOLON  ((W_datatypes.SEQUENTIAL_BLOCK_STATEMENT_3(sequential_block_statement_part, sequential_block_statement_part)))
                           | label COLON BLOCK IS sequential_block_declarative_part BEGIN sequential_block_statement_part END BLOCK SEMICOLON  ((W_datatypes.SEQUENTIAL_BLOCK_STATEMENT_4(label, sequential_block_statement_part, sequential_block_statement_part)))
                           | label COLON BLOCK sequential_block_declarative_part BEGIN sequential_block_statement_part END BLOCK SEMICOLON  ((W_datatypes.SEQUENTIAL_BLOCK_STATEMENT_4(label, sequential_block_statement_part, sequential_block_statement_part)))
                           | label COLON BLOCK IS sequential_block_declarative_part BEGIN sequential_block_statement_part END SEMICOLON  ((W_datatypes.SEQUENTIAL_BLOCK_STATEMENT_4(label, sequential_block_statement_part, sequential_block_statement_part)))
                           | label COLON BLOCK sequential_block_declarative_part BEGIN sequential_block_statement_part END SEMICOLON  ((W_datatypes.SEQUENTIAL_BLOCK_STATEMENT_4(label, sequential_block_statement_part, sequential_block_statement_part)))

sequential_block_declarative_part : process_declarative_item_seq ((W_datatypes.SEQUENTIAL_BLOCK_DECLARATIVE_PART(process_declarative_item_seq)))

sequential_block_statement_part : sequential_statement_seq ((W_datatypes.SEQUENTIAL_BLOCK_STATEMENT_PART(sequential_statement_seq)))

sequential_statement : wait_statement ((W_datatypes.SEQUENTIAL_STATEMENT_1(wait_statement)))
                     | assertion_statement ((W_datatypes.SEQUENTIAL_STATEMENT_2(assertion_statement)))
                     | report_statement ((W_datatypes.SEQUENTIAL_STATEMENT_3(report_statement)))
                     | signal_assignment_statement ((W_datatypes.SEQUENTIAL_STATEMENT_4(signal_assignment_statement)))
                     | variable_assignment_statement ((W_datatypes.SEQUENTIAL_STATEMENT_5(variable_assignment_statement)))
                     | procedure_call_statement ((W_datatypes.SEQUENTIAL_STATEMENT_6(procedure_call_statement)))
                     | if_statement ((W_datatypes.SEQUENTIAL_STATEMENT_7(if_statement)))
                     | case_statement ((W_datatypes.SEQUENTIAL_STATEMENT_8(case_statement)))
                     | loop_statement ((W_datatypes.SEQUENTIAL_STATEMENT_9(loop_statement)))
                     | next_statement ((W_datatypes.SEQUENTIAL_STATEMENT_10(next_statement)))
                     | exit_statement ((W_datatypes.SEQUENTIAL_STATEMENT_11(exit_statement)))
                     | return_statement ((W_datatypes.SEQUENTIAL_STATEMENT_12(return_statement)))
                     | null_statement ((W_datatypes.SEQUENTIAL_STATEMENT_13(null_statement)))
                     | sequential_block_statement ((W_datatypes.SEQUENTIAL_STATEMENT_14(sequential_block_statement)))

sequential_statement_body : sequential_statement_declarative_part BEGIN sequence_of_statements ((W_datatypes.SEQUENTIAL_STATEMENT_BODY_1(sequential_statement_declarative_part,sequence_of_statements)))
                          | sequence_of_statements ((W_datatypes.SEQUENTIAL_STATEMENT_BODY_2(sequence_of_statements)))

sequential_statement_declarative_part : process_declarative_item_seq ((W_datatypes.SEQUENTIAL_STATEMENT_DECLARATIVE_PART(process_declarative_item_seq)))

shared_variable_declaration : SHARED VARIABLE identifier_list COLON subtype_indication generic_map_aspect ASSIGN conditional_expression SEMICOLON ((W_datatypes.SHARED_VARIABLE_DECLARATION_1(identifier_list,subtype_indication,generic_map_aspect,conditional_expression)))
                            | VARIABLE identifier_list COLON subtype_indication generic_map_aspect ASSIGN conditional_expression SEMICOLON ((W_datatypes.SHARED_VARIABLE_DECLARATION_1(identifier_list,subtype_indication,generic_map_aspect,conditional_expression)))
                            | SHARED VARIABLE identifier_list COLON subtype_indication ASSIGN conditional_expression SEMICOLON ((W_datatypes.SHARED_VARIABLE_DECLARATION_2(identifier_list,subtype_indication,conditional_expression)))
                            | VARIABLE identifier_list COLON subtype_indication ASSIGN conditional_expression SEMICOLON ((W_datatypes.SHARED_VARIABLE_DECLARATION_2(identifier_list,subtype_indication,conditional_expression)))
                            | SHARED VARIABLE identifier_list COLON subtype_indication SEMICOLON ((W_datatypes.SHARED_VARIABLE_DECLARATION_3(identifier_list,subtype_indication)))
                            | VARIABLE identifier_list COLON subtype_indication SEMICOLON ((W_datatypes.SHARED_VARIABLE_DECLARATION_3(identifier_list,subtype_indication)))
                            | SHARED VARIABLE identifier_list COLON subtype_indication generic_map_aspect SEMICOLON ((W_datatypes.SHARED_VARIABLE_DECLARATION_4(identifier_list,subtype_indication,generic_map_aspect)))
                            | VARIABLE identifier_list COLON subtype_indication generic_map_aspect SEMICOLON ((W_datatypes.SHARED_VARIABLE_DECLARATION_4(identifier_list,subtype_indication,generic_map_aspect)))

shift_expression : simple_expression shift_operator simple_expression ((W_datatypes.SHIFT_EXPRESSION_1(simple_expression1,shift_operator,simple_expression2)))
                 | simple_expression ((W_datatypes.SHIFT_EXPRESSION_2(simple_expression)))

shift_operator : SLL ((W_datatypes.SLL()))
               | SRL ((W_datatypes.SRL()))
               | SLA ((W_datatypes.SLA()))
               | SRA ((W_datatypes.SRA()))
               | ROL ((W_datatypes.ROL()))
               | ROR ((W_datatypes.ROR()))

sign : PLUS ((W_datatypes.PLUS()))
     | MINUS ((W_datatypes.MINUS()))

signal_assignment_statement : label COLON simple_signal_assignment ((W_datatypes.SIGNAL_ASSIGNMENT_STATEMENT_1(label, simple_signal_assignment)))
                            | simple_signal_assignment ((W_datatypes.SIGNAL_ASSIGNMENT_STATEMENT_2(simple_signal_assignment)))
                            | label COLON conditional_signal_assignment ((W_datatypes.SIGNAL_ASSIGNMENT_STATEMENT_3(label,conditional_signal_assignment)))
                            | conditional_signal_assignment ((W_datatypes.SIGNAL_ASSIGNMENT_STATEMENT_4(conditional_signal_assignment)))
                            | label COLON selected_signal_assignment ((W_datatypes.SIGNAL_ASSIGNMENT_STATEMENT_5(label, selected_signal_assignment)))
                            | selected_signal_assignment ((W_datatypes.SIGNAL_ASSIGNMENT_STATEMENT_6(selected_signal_assignment)))

signal_association_target : name ((W_datatypes.SIGNAL_ASSOCIATION_TARGET(name)))

signal_declaration : SIGNAL identifier_list COLON subtype_indication signal_kind ASSIGN expression SEMICOLON ((W_datatypes.SIGNAL_DECLARATION_1(identifier_list,subtype_indication,signal_kind,expression)))
                   | SIGNAL identifier_list COLON subtype_indication signal_kind SEMICOLON ((W_datatypes.SIGNAL_DECLARATION_4(identifier_list,subtype_indication,signal_kind)))
                   | SIGNAL identifier_list COLON subtype_indication ASSIGN expression SEMICOLON ((W_datatypes.SIGNAL_DECLARATION_2(identifier_list,subtype_indication,expression)))
                   | SIGNAL identifier_list COLON subtype_indication SEMICOLON ((W_datatypes.SUBTYPE_DECLARATION_3(identifier_list,subtype_indication)))

signal_kind : REGISTER ((W_datatypes.REGISTER()))
            | BUS ((W_datatypes.BUS()))

signal_list : name_seq ((W_datatypes.SIGNAL_LIST_1(name_seq)))
            | OTHERS ((W_datatypes.SIGNAL_LIST_2()))
            | ALL ((W_datatypes.SIGNAL_LIST_3()))

signatur : type_mark_seq RETURN type_mark ((W_datatypes.SIGNATURE_1(type_mark_seq,type_mark)))
         | type_mark ((W_datatypes.SIGNATURE_2(type_mark)))
         | type_mark_seq ((W_datatypes.SIGNATURE_3(type_mark_seq)))
         | ((W_datatypes.SIGNATURE_4()))

simple_configuration_specification : FOR component_specification binding_indication SEMICOLON END FOR SEMICOLON ((W_datatypes.SIMPLE_CONFIGURATION_SPECIFICATION(component_specification,binding_indication)))
                                   | FOR component_specification binding_indication SEMICOLON ((W_datatypes.SIMPLE_CONFIGURATION_SPECIFICATION(component_specification,binding_indication)))

simple_expression : sign term adding_operator_term_seq ((W_datatypes.SIMPLE_EXPRESSION_1(sign,term, adding_operator_term_seq)))
                  | term adding_operator_term_seq ((W_datatypes.SIMPLE_EXPRESSION_2(term, adding_operator_term_seq)))

simple_force_assignment : target LE FORCE force_mode conditional_or_unaffected_expression SEMICOLON ((W_datatypes.SIMPLE_FORCE_ASSIGNMENT_1(target,force_mode,conditional_or_unaffected_expression)))
                        | target LE FORCE conditional_or_unaffected_expression SEMICOLON ((W_datatypes.SIMPLE_FORCE_ASSIGNMENT_2(target,conditional_or_unaffected_expression)))

simple_mode_indication : mode subtype_indication interface_type_indication BUS ASSIGN expression ((W_datatypes.SIMPLE_MODE_INDICATION_1(mode,subtype_indication,interface_type_indication,expression)))
                       | mode subtype_indication interface_type_indication BUS ((W_datatypes.SIMPLE_MODE_INDICATION_4(mode,subtype_indication,interface_type_indication)))
                       | mode subtype_indication interface_type_indication ASSIGN expression ((W_datatypes.SIMPLE_MODE_INDICATION_1(mode,subtype_indication,interface_type_indication,expression)))
                       | mode subtype_indication interface_type_indication ((W_datatypes.SIMPLE_MODE_INDICATION_4(mode,subtype_indication,interface_type_indication)))
                       | subtype_indication interface_type_indication BUS ASSIGN expression ((W_datatypes.SIMPLE_MODE_INDICATION_2(subtype_indication,interface_type_indication,expression)))
                       | subtype_indication interface_type_indication BUS ((W_datatypes.SIMPLE_MODE_INDICATION_3(subtype_indication,interface_type_indication)))
                       | subtype_indication interface_type_indication ASSIGN expression ((W_datatypes.SIMPLE_MODE_INDICATION_2(subtype_indication,interface_type_indication,expression)))
                       | subtype_indication interface_type_indication ((W_datatypes.SIMPLE_MODE_INDICATION_3(subtype_indication,interface_type_indication)))

simple_name : identifier ((W_datatypes.SIMPLE_NAME(identifier)))

simple_range : simple_expression direction simple_expression ((W_datatypes.SIMPLE_RANGE(simple_expression1,direction,simple_expression2)))

simple_release_assignment : target LE RELEASE force_mode SEMICOLON ((W_datatypes.SIMPLE_RELEASE_ASSIGNMENT_1(target,force_mode)))
                          | target LE RELEASE SEMICOLON ((W_datatypes.SIMPLE_RELEASE_ASSIGNMENT_2(target)))

simple_signal_assignment : simple_waveform_assignment ((W_datatypes.SIMPLE_SIGNAL_ASSIGNMENT_1(simple_waveform_assignment)))
                         | simple_force_assignment ((W_datatypes.SIMPLE_SIGNAL_ASSIGNMENT_2(simple_force_assignment)))
                         | simple_release_assignment ((W_datatypes.SIMPLE_SIGNAL_ASSIGNMENT_3(simple_release_assignment)))

simple_waveform_assignment : target LE delay_mechanism waveform SEMICOLON ((W_datatypes.SIMPLE_WAVEFORM_ASSIGNMENT_1(target,delay_mechanism,waveform)))
                           | target LE waveform SEMICOLON ((W_datatypes.SIMPLE_WAVEFORM_ASSIGNMENT_2(target,waveform)))

simple_variable_assignment : target ASSIGN conditional_or_unaffected_expression SEMICOLON ((W_datatypes.SIMPLE_VARAIBLE_ASSIGNMENT(target,conditional_or_unaffected_expression)))

slice_name : prefix LPARAN discrete_range RPARAN ((W_datatypes.SLICE_NAME(prefix,discrete_range)))

string_literal : INVERTEDCOMMA graphic_character_seq INVERTEDCOMMA ((W_datatypes.STRING_LITERAL(graphic_character_seq)))

subprogram_body : subprogram_specification IS subprogram_declarative_part BEGIN subprogram_statement_part END subprogram_kind designator SEMICOLON ((W_datatypes.SUBPROGRAM_BODY_1(subprogram_specification,subprogram_declarative_part,subprogram_statement_part,subprogram_kind,designator)))
                | subprogram_specification IS subprogram_declarative_part BEGIN subprogram_statement_part END designator SEMICOLON ((W_datatypes.SUBPROGRAM_BODY_2(subprogram_specification, subprogram_declarative_part, subprogram_statement_part,designator)))
                | subprogram_specification IS subprogram_declarative_part BEGIN subprogram_statement_part END SEMICOLON ((W_datatypes.SUBPROGRAM_BODY_3(subprogram_specification,subprogram_declarative_part,subprogram_statement_part)))
                | subprogram_specification IS subprogram_declarative_part BEGIN subprogram_statement_part END subprogram_kind SEMICOLON ((W_datatypes.SUBPROGRAM_BODY_4(subprogram_specification,subprogram_declarative_part,subprogram_statement_part,subprogram_kind)))

subprogram_declaration : subprogram_specification SEMICOLON ((W_datatypes.SUBPROGRAM_DECLARATION(subprogram_specification)))

subprogram_declarative_item : subprogram_declaration ((W_datatypes.SUBPROGRAM_DECLARATIVE_ITEM_1(subprogram_declaration)))
                            | subprogram_body ((W_datatypes.SUBPROGRAM_DECLARATIVE_ITEM_2(subprogram_body)))
                            | subprogram_instantiation_declaration ((W_datatypes.SUBPROGRAM_DECLARATIVE_ITEM_3(subprogram_instantiation_declaration)))
                            | package_declaration ((W_datatypes.SUBPROGRAM_DECLARATIVE_ITEM_4(package_declaration)))
                            | package_body ((W_datatypes.SUBPROGRAM_DECLARATIVE_ITEM_5(package_body)))
                            | package_instantiation_declaration ((W_datatypes.SUBPROGRAM_DECLARATIVE_ITEM_6(package_instantiation_declaration)))
                            | type_declaration ((W_datatypes.SUBPROGRAM_DECLARATIVE_ITEM_7(type_declaration)))
                            | subtype_declaration ((W_datatypes.SUBPROGRAM_DECLARATIVE_ITEM_8(subtype_declaration)))
                            | constant_declaration ((W_datatypes.SUBPROGRAM_DECLARATIVE_ITEM_9(constant_declaration)))
                            | variable_declaration ((W_datatypes.SUBPROGRAM_DECLARATIVE_ITEM_10(variable_declaration)))
                            | file_declaration ((W_datatypes.SUBPROGRAM_DECLARATIVE_ITEM_11(file_declaration)))
                            | alias_declaration ((W_datatypes.SUBPROGRAM_DECLARATIVE_ITEM_12(alias_declaration)))
                            | attribute_declaration ((W_datatypes.SUBPROGRAM_DECLARATIVE_ITEM_13(attribute_declaration)))
                            | attribute_specification ((W_datatypes.SUBPROGRAM_DECLARATIVE_ITEM_14(attribute_specification)))
                            | use_clause ((W_datatypes.SUBPROGRAM_DECLARATIVE_ITEM_15(use_clause)))
                            | group_template_declaration ((W_datatypes.SUBPROGRAM_DECLARATIVE_ITEM_16(group_template_declaration)))
                            | group_declaration ((W_datatypes.SUBPROGRAM_DECLARATIVE_ITEM_17(group_declaration)))

subprogram_declarative_part : subprogram_declarative_item_seq ((W_datatypes.SUBPROGRAM_DECLARATIVE_PART(subprogram_declarative_item_seq)))

subprogram_header : GENERIC LPARAN generic_list RPARAN generic_map_aspect ((W_datatypes.SUBPROGRAM_HEADER_1(generic_list,generic_map_aspect)))
                  | GENERIC LPARAN generic_list RPARAN ((W_datatypes.SUBPROGRAM_HEADER_2(generic_list)))
                  | ((W_datatypes.SUBPROGRAM_HEADER_3()))

subprogram_instantiation_declaration : subprogram_kind identifier IS NEW name signatur generic_map_aspect SEMICOLON  ((W_datatypes.SUBPROGRAM_INSTANTIATION_DECLARATION_1(subprogram_kind,identifier,name,signatur,generic_map_aspect)))
                                     | subprogram_kind identifier IS NEW name signatur SEMICOLON  ((W_datatypes.SUBPROGRAM_INSTANTIATION_DECLARATION_4(subprogram_kind,identifier,name,signatur)))
                                     | subprogram_kind identifier IS NEW name generic_map_aspect SEMICOLON  ((W_datatypes.SUBPROGRAM_INSTANTIATION_DECLARATION_2(subprogram_kind,identifier,name,generic_map_aspect)))
                                     | subprogram_kind identifier IS NEW name SEMICOLON  ((W_datatypes.SUBPROGRAM_INSTANTIATION_DECLARATION_3(subprogram_kind,identifier,name)))

subprogram_kind : PROCEDURE  ((W_datatypes.PROCEDURE()))
                | FUNCTION ((W_datatypes.FUNCTION()))

subprogram_specification : procedure_specification ((W_datatypes.SUBPROGRAM_SPECIFICATION_1(procedure_specification)))
                         | function_specification  ((W_datatypes.SUBPROGRAM_SPECIFICATION_2(function_specification)))

subprogram_statement_part : sequential_statement_seq ((W_datatypes.SUBPROGRAM_STATEMENT_PART(sequential_statement_seq)))

subtype_declaration : SUBTYPE identifier IS subtype_indication SEMICOLON ((W_datatypes.SUBTYPE_DECLARATION(identifier,subtype_indication)))

subtype_indication : resolution_indication type_mark constraint ((W_datatypes.SUBTYPE_INDICATION_1(resolution_indication,type_mark,constraint)))
                   | resolution_indication type_mark ((W_datatypes.SUBTYPE_INDICATION_4(resolution_indication,type_mark)))
                   | type_mark constraint ((W_datatypes.SUBTYPE_INDICATION_2(type_mark,constraint)))
                   | type_mark ((W_datatypes.SUBTYPE_INDICATION_3(type_mark)))

suffix : simple_name ((W_datatypes.SUFFIX_1(simple_name)))
       | character_literal ((W_datatypes.SUFFIX_2(character_literal)))
       | operator_symbol ((W_datatypes.SUFFIX_3(operator_symbol)))
       | ALL ((W_datatypes.SUFFIX_4()))

target : name ((W_datatypes.TARGET_1(name)))
       | aggregate ((W_datatypes.TARGET_2(aggregate)))

term : factor multiplying_operator_factor_seq ((W_datatypes.TERM(factor,multiplying_operator_factor_seq)))

timeout_clause : FOR expression ((W_datatypes.TIMEOUT_CLAUSE(expression)))

tool_directive : BACKTICK identifier graphic_character_seq ((W_datatypes.TOOL_DIRECTIVE(identifier,graphic_character_seq)))

type_conversion : type_mark LPARAN expression RPARAN ((W_datatypes.TYPE_CONVERSION(type_mark,expression)))

type_declaration : full_type_declaration ((W_datatypes.TYPE_DECLARATION_1(full_type_declaration)))
                 | incomplete_type_declaration ((W_datatypes.TYPE_DECLARATION_2(incomplete_type_declaration)))

type_definition : scalar_type_definition  ((W_datatypes.TYPE_DEFINTIION_1(scalar_type_definition)))
                | composite_type_definition  ((W_datatypes.TYPE_DEFINTIION_2(composite_type_definition)))
                | access_type_definition  ((W_datatypes.TYPE_DEFINTIION_3(access_type_definition)))
                | file_type_definition  ((W_datatypes.TYPE_DEFINTIION_4(file_type_definition)))
                | protected_type_definition  ((W_datatypes.TYPE_DEFINTIION_5(protected_type_definition)))
                | protected_type_instantiation_definition  ((W_datatypes.TYPE_DEFINTIION_6(protected_type_instantiation_definition)))

type_mark : name ((W_datatypes.TYPE_MARK(name)))

unary_expression : primary  ((W_datatypes.UNARY_EXPRESSION_1(primary)))
                 | ABS primary  ((W_datatypes.UNARY_EXPRESSION_1(primary)))
                 | NOT primary ((W_datatypes.UNARY_EXPRESSION_1(primary)))
                 | logical_operator primary  ((W_datatypes.UNARY_EXPRESSION_2(logical_operator,primary)))

unary_miscellaneous_operator : ABS   ((W_datatypes.ABS()))
                             | NOT  ((W_datatypes.NOT()))
                             | logical_operator ((W_datatypes.UNARY_MISCELLANEOUS_OPERATOR(logical_operator)))

unbounded_array_definition : ARRAY LPARAN index_subtype_definition_seq RPARAN OF subtype_indication ((W_datatypes.UNBOUNDED_ARRAY_DEFINITION(index_subtype_definition_seq,subtype_indication)))

use_clause_seq : use_clause use_clause_seq      (use_clause :: use_clause_seq)
               |     ([])

use_clause : USE selected_name_seq SEMICOLON ((W_datatypes.USE_CLUASE(selected_name)))

value_return_statement : label COLON RETURN conditional_or_unaffected_expression SEMICOLON   ((W_datatypes.VALUE_RETURN_STATEMENT_1(label, conditional_or_unaffected_expression)))
                       | RETURN conditional_or_unaffected_expression SEMICOLON     ((W_datatypes.VALUE_RETURN_STATEMENT_2(conditional_or_unaffected_expression)))

variable_assignment_statement : label COLON simple_variable_assignment              ((W_datatypes.VAVARIABLE_ASSIGNMENT_STATEMENT_1(label,simple_variable_assignment)))
                              | label COLON selected_variable_assignment              ((W_datatypes.VAVARIABLE_ASSIGNMENT_STATEMENT_3(label,selected_variable_assignment)))
                              | simple_variable_assignment          ((W_datatypes.VAVARIABLE_ASSIGNMENT_STATEMENT_2(simple_variable_assignment)))
                              | selected_variable_assignment         ((W_datatypes.VAVARIABLE_ASSIGNMENT_STATEMENT_4(selected_variable_assignment)))

variable_declaration : SHARED VARIABLE identifier_list COLON subtype_indication ASSIGN expression SEMICOLON     ((W_datatypes.VARIABLE_DECLARATION_1(identifier_list,subtype_indication,expression)))
                     | VARIABLE identifier_list COLON subtype_indication ASSIGN expression SEMICOLON    ((W_datatypes.VARIABLE_DECLARATION_1(identifier_list,subtype_indication,expression)))
                     | SHARED VARIABLE identifier_list COLON subtype_indication SEMICOLON      ((W_datatypes.VARIABLE_DECLARATION_2(identifier_list,subtype_indication)))
                     | VARIABLE identifier_list COLON subtype_indication SEMICOLON      ((W_datatypes.VARIABLE_DECLARATION_2(identifier_list,subtype_indication)))

verification_unit_binding_indication_seq : verification_unit_binding_indication SEMICOLON verification_unit_binding_indication_seq        (verification_unit_binding_indication :: verification_unit_binding_indication_seq)
                                         |      ([])

verification_unit_binding_indication : USE VUNIT verification_unit_list ((W_datatypes.VERIFICATION_UNIT_BINDING_INDICATION(verification_unit_list)))

verification_unit_list : name_seq ((W_datatypes.VERIFICATION_UNIT_LIST(name_seq)))

wait_statement : label COLON WAIT sensitivity_clause condition_clause timeout_clause SEMICOLON ((W_datatypes.WAIT_STATEMENT_4(label,sensitivity_clause,condition_clause,timeout_clause)))
               | label COLON WAIT condition_clause timeout_clause SEMICOLON  ((W_datatypes.WAIT_STATEMENT_2(label,condition_clause,timeout_clause)))
               | label COLON WAIT sensitivity_clause timeout_clause SEMICOLON  ((W_datatypes.WAIT_STATEMENT_8(label,sensitivity_clause,timeout_clause)))
               | label COLON WAIT SEMICOLON ((W_datatypes.WAIT_STATEMENT_9(label)))
               | label COLON WAIT sensitivity_clause condition_clause SEMICOLON ((W_datatypes.WAIT_STATEMENT_15(label,sensitivity_clause,condition_clause)))
               | label COLON WAIT sensitivity_clause SEMICOLON ((W_datatypes.WAIT_STATEMENT_11(label,sensitivity_clause)))
               | label COLON WAIT condition_clause SEMICOLON ((W_datatypes.WAIT_STATEMENT_13(label,condition_clause)))
               | label COLON WAIT timeout_clause SEMICOLON ((W_datatypes.WAIT_STATEMENT_6(label,timeout_clause)))
               | WAIT sensitivity_clause condition_clause timeout_clause SEMICOLON ((W_datatypes.WAIT_STATEMENT_3(sensitivity_clause,condition_clause,timeout_clause)))
               | WAIT sensitivity_clause timeout_clause SEMICOLON ((W_datatypes.WAIT_STATEMENT_7(sensitivity_clause,timeout_clause)))
               | WAIT condition_clause timeout_clause SEMICOLON ((W_datatypes.WAIT_STATEMENT_1(condition_clause, timeout_clause)))
               | WAIT SEMICOLON ((W_datatypes.WAIT_STATEMENT_16()))
               | WAIT sensitivity_clause condition_clause SEMICOLON ((W_datatypes.WAIT_STATEMENT_14(sensitivity_clause,condition_clause)))
               | WAIT sensitivity_clause SEMICOLON ((W_datatypes.WAIT_STATEMENT_10(sensitivity_clause)))
               | WAIT condition_clause SEMICOLON ((W_datatypes.WAIT_STATEMENT_12(condition_clause)))
               | WAIT timeout_clause SEMICOLON ((W_datatypes.WAIT_STATEMENT_5(timeout_clause)))

waveform : waveform_element_seq ((W_datatypes.WAVEFORM(waveform_element_seq)))
         | UNAFFECTED ((W_datatypes.UNAFFECTED()))

waveform_element : expression AFTER expression ((W_datatypes.WAVEFORM_ELEMENT_1(expression1,expression2)))
                 | expression ((W_datatypes.WAVEFORM_ELEMENT_2(expression)))
                 | NULL AFTER expression ((W_datatypes.WAVEFORM_ELEMENT_2(expression)))
                 | NULL ((W_datatypes.WAVEFORM_ELEMENT_3()))
open W_datatypes
open Symbol_Table
%%
%name Whl
%term LOWER_CASE of string * int | UPPER_CASE of string * int | NUM of string * int | EOF of int | ARROW of int | EXPT of int | ASSIGN of int | NEQ of int | GE of int | LE of int | BOX of int | AMP of int | TICK of int | UNDERSCORE of int | BACKTICK of int | HASH of int | INVERTEDCOMMA of int | QUESTION of int | DOUBLEARROW of int | DOUBLEQUES of int | LPARAN of int | RPARAN of int | MULT of int | PLUS of int | COMMA of int | MINUS of int | DOT of int | DIV of int | COLON of int | SEMICOLON of int | LT of int | EQ of int | GT of int | BAR of int | LSQUARE of int | RSQUARE of int | ABS of int | ACCESS of int | ACROSS of int | AFTER of int | ALIAS of int | ALL of int | AND of int | ARCHITECTURE of int | ARRAY of int | ASSERT of int | ATTRIBUTE of int | BEGIN of int | BLOCK of int | BODY of int | BUFFER of int | BUS of int | CASE of int | COMPONENT of int | CONFIGURATION of int | CONSTANT of int | DISCONNECT of int | DOWNTO of int | ELSE of int | ELSIF of int | END of int | ENTITY of int | EXIT of int | FILE of int | FOR of int | FUNCTION of int | GENERATE of int | GENERIC of int | GROUP of int | GUARDED of int | IF of int | IMPURE of int | IN of int | INERTIAL of int | INOUT of int | IS of int | LABEL of int | LIBRARY of int | LINKAGE of int | LITERAL of int | LOOP of int | MAP of int | MOD of int | NAND of int | NEW of int | NEXT of int | NOR of int | NOT of int | NULL of int | OF of int | ON of int | OPEN of int | OR of int | OTHERS of int | OUT of int | PACKAGE of int | PORT of int | POSTPONED of int | PROCEDURE of int | PROCESS of int | PROTECTED of int | PURE of int | RANGE of int | RECORD of int | REGISTER of int | REJECT of int | REM of int | REPORT of int | RETURN of int | ROL of int | ROR of int | SELECT of int | SEVERITY of int | SHARED of int | SIGNAL of int | SLA of int | SLL of int | SRA of int | SRL of int | SUBTYPE of int | THEN of int | TO of int | TRANSPORT of int | TYPE of int | UNAFFECTED of int | UNITS of int | UNTIL of int | USE of int | VARIABLE of int | WAIT of int | WHEN of int | WHILE of int | WITH of int | XNOR of int | XOR of int | VUNIT of int | VAL of int | LST of int | ELT of int | POS of int | LEN of int | E of int | INT of string * int | REAL_NUM of int | HEX_NUM of int | OCT_NUM of int | BIN_NUM of int | REALEXP_NUM of int | BIN_VEC of int | DEC_VEC of int | HEX_VEC of int | ELEMENT of int | STRINGG of int | ID of int | CARROT of int | BACKSLASH of int | RIGHTDOUBLE of int | LEFTDOUBLE of int | RELOP1 of int | RELOP2 of int | RELOP3 of int | RELOP4 of int | RELOP5 of int | RELOP6 of int | ADT of int | RELEASE of int | FORCE of int | VIEW of int | EXPRESSION of int | TYPE_MARK of int | PARAMETER of int | PRIVATE of int | EXP of int | CONTEXT of int | SEQUENCE of int | PROPERTY of int | DEFAULT of int | THROUGH of int | SPECTRUM of int | TOLERANCE of int | QUANTITY of int | BREAK of int | NATURE of int | TERMINAL of int | SUBNATURE of int | REFERENCE of int | PROCEDURAL of int | NOISE of int | LIMIT of int
| BASE_LITERAL of string * int | BIT_STRING_LITERAL of string * int | REAL_LITERAL of string * int | BASIC_IDENTIFIER of string * int | EXTENDED_IDENTIFIER of string * int | CHARACTER_LITERAL of string * int | STRING_LITERAL of string * int | EXPONENT of string * int | INTEGER of string * int

%nonterm absolute_pathname | abstract_literal of abstract_literal | access_incomplete_type_definition | access_type_definition of access_type_definition | actual_designator of actual_designator | actual_part of actual_part | adding_operator of adding_operator | aggregate of aggregate | alias_declaration of alias_declaration | alias_designator of alias_designator | allocator of allocator | anonymous_type_indication | architecture_body of architecture_body | architecture_declarative_part of architecture_declarative_part | architecture_path_name | architecture_statement_part of architecture_statement_part | array_constraint | array_element_constraint | array_element_resolution | array_incomplete_type_definition | array_index_incomplete_type | array_index_incomplete_type_list | array_mode_view_indication | array_type_definition of array_type_definition | assertion of assertion | assertion_statement of assertion_statement | association_element of association_element | association_list of association_list | attribute_declaration of attribute_declaration | attribute_designator of attribute_designator | attribute_name | attribute_specification of attribute_specification | base | base_specifier | based_integer | based_literal of based_literal | basic_character | basic_graphic_character | basic_identifier of basic_identifier | binary_miscellaneous_operator | binding_indication of binding_indication | bit_string_literal of bit_string_literal | bit_value | block_configuration of block_configuration | block_declarative_item of block_declarative_item | block_declarative_part of block_declarative_part | block_header of block_header | block_specification of block_specification | block_statement of block_statement | block_statement_part of block_statement_part | case_generate_alternative | case_generate_statement | case_statement of case_statement | case_statement_alternative of case_statement_alternative | character_literal of character_literal | choice of choice | choices of choices | component_configuration of component_configuration | component_declaration of component_declaration | component_instantiation_statement of component_instantiation_statement | component_specification of component_specification | composite_type_definition of composite_type_definition | compound_configuration_specification | concurrent_assertion_statement of concurrent_assertion_statement | concurrent_conditional_signal_assignment | concurrent_procedure_call_statement of concurrent_procedure_call_statement | concurrent_selected_signal_assignment | concurrent_signal_assignment_statement of concurrent_signal_assignment_statement | concurrent_signal_association_statement | concurrent_simple_signal_assignment | concurrent_simple_signal_association | concurrent_statement | condition of condition | condition_clause of condition_clause | conditional_expression | conditional_or_unaffected_expression | conditional_signal_assignment of conditional_signal_assignment | conditional_waveforms of conditional_waveforms | configuration_declaration of configuration_declaration | configuration_declarative_item of configuration_declarative_item | configuration_declarative_part of configuration_declarative_part | configuration_item of configuration_item | configuration_specification of configuration_specification | constant_declaration of constant_declaration | constrained_array_definition of constrained_array_definition | constraint of constraint | context_clause of context_clause | context_declaration | context_item of context_item | context_reference | decimal_literal of decimal_literal | delay_mechanism of delay_mechanism | design_file of design_file | design_unit of design_unit | designator of designator | direction of direction | disconnection_specification of disconnection_specification | discrete_range of discrete_range | discrete_incomplete_type_definition | element_array_mode_view_indication | element_association of element_association | element_constraint | element_declaration of element_declaration | element_mode_indication | element_mode_view_indication | element_record_mode_view_indication | element_resolution | element_subtype_definition of element_subtype_definition | entity_aspect of entity_aspect | entity_class of entity_class | entity_class_entry of entity_class_entry | entity_class_entry_list of entity_class_entry_list | entity_declaration of entity_declaration | entity_declarative_item of entity_declarative_item | entity_declarative_part of entity_declarative_part | entity_designator of entity_designator | entity_header of entity_header | entity_name_list of entity_name_list | entity_specification of entity_specification | entity_statement of entity_statement | entity_statement_part of entity_statement_part | entity_tag of entity_tag | enumeration_literal of enumeration_literal | enumeration_type_definition of enumeration_type_definition | exit_statement of exit_statement | expression of expression | expression_or_unaffected | extended_digit | extended_identifier of extended_identifier | external_name | factor of factor | file_declaration of file_declaration | file_incomplete_type_definition | file_logical_name of file_logical_name | file_open_information of file_open_information | file_type_definition of file_type_definition | floating_incomplete_type_definition | floating_type_definition | for_generate_statement | force_mode | formal_designator | formal_parameter_list of formal_parameter_list | formal_part of formal_part | full_type_declaration | function_call | function_specification of function_specification | generate_specification | generate_statement of generate_statement | generate_statement_body | generic_clause of generic_clause | generic_list of generic_list | generic_map_aspect of generic_map_aspect | graphic_character | group_constituent of group_constituent | group_constituent_list of group_constituent_list | group_declaration of group_declaration | group_template_declaration of group_template_declaration | guarded_signal_specification of guarded_signal_specification | identifier of identifier | identifier_list of identifier_list | if_generate_statement | if_statement of if_statement | index_constraint of index_constraint | index_subtype_definition of index_subtype_definition | indexed_name | instantiated_unit of instantiated_unit | instantiation_list of instantiation_list | integer of integer | integer_incomplete_type_definition | integer_type_definition | interface_constant_declaration of interface_constant_declaration | interface_declaration of interface_declaration | interface_element of interface_element | interface_file_declaration of interface_file_declaration | interface_function_specification | interface_incomplete_type_declaration | interface_list of interface_list | interface_object_declaration of interface_object_declaration | interface_package_declaration | interface_package_generic_map_aspect | interface_procedure_specification | interface_signal_declaration of interface_signal_declaration | interface_subprogram_declaration | interface_type_declaration | interface_type_indication | interface_variable_declaration of interface_variable_declaration | iteration_scheme of iteration_scheme | library_clause of library_clause | library_unit of library_unit | literal of literal | logical_expression | logical_name of logical_name | logical_name_list of logical_name_list | logical_operator of logical_operator | loop_statement of loop_statement | miscellaneous_operator | mode |
multiplying_operator of multiplying_operator | name of name | next_statement of next_statement | null_statement | numeric_literal of numeric_literal | object_declaration of object_declaration | operator_symbol | package_body of package_body | package_body_declarative_item of package_body_declarative_item | package_body_declarative_part of package_body_declarative_part | package_declaration of package_declaration | package_declarative_item of package_declarative_item | package_declarative_part of package_declarative_part | package_header | package_instantiation_declaration | package_pathname | parameter_map_aspect | parameter_specification of parameter_specification | partial_pathname | pathname_element | physical_incomplete_type_definition | physical_literal of physical_literal | physical_type_definition of physical_type_definition | plain_return_statement | port_clause of port_clause | port_list of port_list | port_map_aspect of port_map_aspect | prefix | primary of primary | primary_unit of primary_unit | primary_unit_declaration | procedure_call of procedure_call | procedure_call_statement of procedure_call_statement | procedure_specification of procedure_specification | process_declarative_item of process_declarative_item | process_declarative_part of process_declarative_part | process_sensitivity_list | process_statement of process_statement | process_statement_part of process_statement_part | qualified_expression of qualified_expression | range | range_constraint of range_constraint | record_constraint | record_type_definition of record_type_definition | record_mode_view_indication | relation of relation | relational_operator of relational_operator | relative_pathname | report_statement of report_statement | resolution_indication | return_statement of return_statement | scalar_incomplete_type_definition | scalar_type_definition of scalar_type_definition | secondary_unit of secondary_unit | secondary_unit_declaration of secondary_unit_declaration | selected_expressions | selected_force_assignment | selected_name of selected_name | selected_signal_assignment of selected_signal_assignment | selected_variable_assignment | selected_waveform_assignment | selected_waveforms of selected_waveforms | sensitivity_clause of sensitivity_clause | sensitivity_list of sensitivity_list | sequence_of_statements of sequence_of_statements | sequential_block_statement | sequential_block_declarative_part | sequential_block_statement_part | sequential_statement of sequential_statement | sequential_statement_body | sequential_statement_declarative_part | shared_variable_declaration | shift_expression of shift_expression | shift_operator of shift_operator | sign | signal_assignment_statement of signal_assignment_statement | signal_association_target | signal_declaration of signal_declaration | signal_kind of signal_kind | signal_list of signal_list | signatur of signatur | simple_configuration_specification | simple_expression of simple_expression | simple_force_assignment | simple_mode_indication | simple_name | simple_range | simple_release_assignment | simple_signal_assignment | simple_waveform_assignment | simple_variable_assignment | slice_name | string_literal of string_literal | subprogram_body of subprogram_body | subprogram_declaration of subprogram_declaration | subprogram_declarative_item of subprogram_declarative_item | subprogram_declarative_part of subprogram_declarative_part | subprogram_header | subprogram_instantiation_declaration | subprogram_kind of subprogram_kind | subprogram_specification of subprogram_specification | subprogram_statement_part of subprogram_statement_part | subtype_declaration of subtype_declaration | subtype_indication of subtype_indication | suffix of suffix | target of target | term of term | timeout_clause of timeout_clause | tool_directive | type_conversion | type_declaration of type_declaration | type_definition of type_definition | type_mark | unary_expression | unary_miscellaneous_operator | unbounded_array_definition | use_clause of use_clause | value_return_statement | variable_assignment_statement of variable_assignment_statement | variable_declaration of variable_declaration | verification_unit_binding_indication | verification_unit_list | wait_statement of wait_statement | waveform of waveform | waveform_element of waveform_element | selected_name_seq of selected_name list | name_seq of name list | waveform_element_seq of waveform_element list | index_subtype_definition_seq of index_subtype_definition list | graphic_character_seq | multiplying_operator_factor_seq of multiplying_operator_factor list | sequential_statement_seq of sequential_statement list | subprogram_declarative_item_seq of subprogram_declarative_item list | adding_operator_term_seq of adding_operator_term list | type_mark_seq | record_element_constraint_seq | simple_name_seq | record_element_resolution_seq | element_declaration_seq of element_declaration list | carrot_dot_seq of (special_character * special_character) list | ex_when_choices_seq of ex_when_choices list | wave_when_choices_seq of wave_when_choices list | process_declarative_item_seq of process_declarative_item list | package_declarative_item_seq of package_declarative_item list | array_index_incomplete_type_seq | association_element_seq of association_element list | block_declarative_item_seq of block_declarative_item list | case_generate_alternative_seq | case_statement_alternative_seq of case_statement_alternative list | choice_seq of choice list | concurrent_statement_seq | conditional_expression_seq | conditional_or_unaffected_expression_seq | conditional_waveforms_seq | configuration_declarative_item_seq of configuration_declarative_item list | configuration_item_seq of configuration_item list | context_item_seq of context_item list | design_unit_seq of design_unit list | discrete_range_seq of discrete_range list | element_association_seq of element_association list | entity_class_entry_seq of entity_class_entry list | entity_declarative_item_seq of entity_declarative_item list | entity_designator_seq of entity_designator list | entity_statement_seq of entity_statement list | enumeration_literal_seq of enumeration_literal list | expression_seq of expression list | extended_digit_seq | group_constituent_seq of group_constituent list | identifier_seq of identifier list | if_generate_statement1_seq | if_generate_statement2_seq | if_statement_seq of if_statement1 list | digit_seq of digit list | interface_element_seq of interface_element list | label_seq | letter_or_digit_seq | logical_name_seq of logical_name list | mode_view_element_definition_seq | conditional_expression_1 | conditional_or_unaffected_expression_1 | conditional_waveforms_1 | if_generate_statement1 | if_generate_statement2 | if_statement1 of if_statement1 | special_character of special_character 
| digit of digit | upper_case_letter of upper_case_letter | lower_case_letter of lower_case_letter | verification_unit_binding_indication_seq | graphic_character_seq1 | interface_subprogram_default | interface_subprogram_specification | relation1_seq of relation list | relation2_seq of relation list | relation3_seq of relation list | relation4_seq of relation list | package_body_declarative_item_seq of package_body_declarative_item list | p_simple_name_seq | pathname_element_seq | secondary_unit_declaration_seq of secondary_unit_declaration list | protected_type_body_declarative_item_seq | protected_type_declarative_item_seq | use_clause_seq of use_clause list | root of root | wave_when_choices of wave_when_choices | adding_operator_term of adding_operator_term | multiplying_operator_factor of multiplying_operator_factor | ex_when_choices of ex_when_choices | tolerance_aspect of tolerance_aspect | across_aspect of across_aspect | actual_parameter_part of actual_parameter_part | subnature_indication of subnature_indication | label_colon of label_colon | alias_indication of alias_indication | architecture_statement of architecture_statement | concurrent_break_statement of concurrent_break_statement | simultaneous_statement of simultaneous_statement | architecture_statement_seq of architecture_statement list | unconstrained_nature_definition of unconstrained_nature_definition | array_nature_definition of array_nature_definition | constrained_nature_definition of constrained_nature_definition | base_unit_declaration of base_unit_declaration | step_limit_specification of step_limit_specification | unconstrained_array_definition of unconstrained_array_definition | nature_declaration of nature_declaration | subnature_declaration of subnature_declaration | quantity_declaration of quantity_declaration | index_specification of index_specification | terminal_aspect of terminal_aspect | through_aspect of through_aspect | branch_quantity_declaration of branch_quantity_declaration | break_element of break_element | break_selector_clause of break_selector_clause | terminal_declaration of terminal_declaration | break_list of break_list | break_element_seq of break_element list | break_statement of break_statement | composite_nature_definition of composite_nature_definition | record_nature_definition of record_nature_definition | opts of opts | range_decl of range_decl | element_subnature_definition of element_subnature_definition | relation_logic_seq of (logical_operator * relation) list | explicit_range of explicit_range | free_quantity_declaration of free_quantity_declaration | generation_scheme of generation_scheme | interface_constant_declaration_seq of interface_constant_declaration list | interface_terminal_declaration of interface_terminal_declaration | interface_quantity_declaration of interface_quantity_declaration | interface_signal_declaration_seq of interface_signal_declaration list | interface_signal_list of interface_signal_list | interface_port_declaration of interface_port_declaration | signal_mode of signal_mode | interface_port_list of interface_port_list | interface_port_declaration_seq of interface_port_declaration list | name_part_seq of name_part list | name_part of name_part | selected_name_part of selected_name_part | function_call_or_indexed_name_part of function_call_or_indexed_name_part | slice_name_part of slice_name_part | attribute_name_part of attribute_name_part | suffix_seq of suffix list | nature_definition of nature_definition | scalar_nature_definition of scalar_nature_definition | simple_simultaneous_statement of simple_simultaneous_statement | simultaneous_statement_part of simultaneous_statement_part | simultaneous_alternative of simultaneous_alternative | simultaneous_alternative_seq of simultaneous_alternative list | simultaneous_case_statement of simultaneous_case_statement | condition_simultaneous_statement_part of condition_simultaneous_statement_part | condition_simultaneous_statement_part_seq of condition_simultaneous_statement_part list | simultaneous_if_statement of simultaneous_if_statement | procedural_statement_part of procedural_statement_part | procedural_declarative_part of procedural_declarative_part | simultaneous_procedural_statement of simultaneous_procedural_statement | source_aspect of source_aspect | quantity_specification of quantity_specification | simultaneous_statement_seq of simultaneous_statement list | source_quantity_declaration of source_quantity_declaration | nature_element_declaration of nature_element_declaration | nature_element_declaration_seq of nature_element_declaration list | quantity_list of quantity_list | procedural_declarative_item_seq of procedural_declarative_item list | procedural_declarative_item of procedural_declarative_item

%pos int

(*optional declarations *)
%eop EOF
%noshift EOF

(* %header  *)
%left COMMA
%left AND OR NAND NOR XOR XNOR
%left EQ NEQ LT GT LE GE
%right SLL SRL SLA SRA ROL ROR
%left PLUS MINUS AMP
%left MULT DIV MOD REM
%right EXPT ABS NOT
%nonassoc LPARAN RPARAN

(*%start root *)

%verbose
%arg (fileName): string

%%

root : design_file ((W_datatypes.ROOT(design_file)))

(*special_character : TICK                  ((W_datatypes.Tick()))
                  | LPARAN                ((W_datatypes.Lparan()))
                  | RPARAN                ((W_datatypes.Rparan()))
                  | COMMA                 ((W_datatypes.Comma()))
                  | DOT                   ((W_datatypes.Dot()))
                  | COLON                 ((W_datatypes.Colon()))
                  | SEMICOLON             ((W_datatypes.Semicolon()))
                  | BAR                   ((W_datatypes.Bar()))
                  | LSQUARE               ((W_datatypes.Lsquare()))
                  | RSQUARE               ((W_datatypes.Rsquare()))
                  | UNDERSCORE            ((W_datatypes.Underscore()))       
                  | HASH                  ((W_datatypes.Hash()))
                  | INVERTEDCOMMA         ((W_datatypes.Invertedcomma()))       
                  | CARROT                ((W_datatypes.Carrot()))       

lower_case_letter : LOWER_CASE            ((W_datatypes.Lower_case_letter()))

upper_case_letter : UPPER_CASE            ((W_datatypes.Upper_case_letter()))

digit : NUM                               ((W_datatypes.Digit()))

absolute_pathname : DOT partial_pathname   (W_datatypes.ABSOLUTE_PATHNAME(partial_pathname))*)

character_literal : CHARACTER_LITERAL             ((W_datatypes.Character_literal(#1 CHARACTER_LITERAL)))

string_literal : STRING_LITERAL         ((W_datatypes.String_literal(#1 STRING_LITERAL)))

bit_string_literal : BIT_STRING_LITERAL ((W_datatypes.Bit_string_literal(#1 BIT_STRING_LITERAL)))

based_literal : BASE_LITERAL      ((W_datatypes.Base_literal(#1 BASE_LITERAL)))

basic_identifier : BASIC_IDENTIFIER       ((W_datatypes.Basic_identifier(#1 BASIC_IDENTIFIER)))

extended_identifier : EXTENDED_IDENTIFIER        ((W_datatypes.Extended_identifier(#1 EXTENDED_IDENTIFIER)))

abstract_literal : decimal_literal         ((W_datatypes.DECIMAL_LITERAL(decimal_literal)))
                 | based_literal           ((W_datatypes.BASED_LITERAL(based_literal)))
                 | integer                 ((W_datatypes.INTEGER_LITERAL(integer)))

decimal_literal : REAL_LITERAL      ((W_datatypes.Real_literal(#1 REAL_LITERAL)))

integer : INTEGER                  ((W_datatypes.Integer(#1 INTEGER)))

(*access_incomplete_type_definition : ACCESS incomplete_subtype_indication    ((W_datatypes.INCOMPLETE_SUBTYPE_INDICATION(incomplete_subtype_indication)))*)

access_type_definition : ACCESS subtype_indication  ((W_datatypes.ACCESS_SUBTYPE_INDICATION(subtype_indication)))

across_aspect : identifier_list tolerance_aspect ASSIGN expression ACROSS (W_datatypes.ACROSS_ASPECT())
              | identifier_list ASSIGN expression ACROSS (W_datatypes.ACROSS_ASPECT())
              | identifier_list tolerance_aspect ACROSS (W_datatypes.ACROSS_ASPECT())
              | identifier_list ACROSS (W_datatypes.ACROSS_ASPECT())

actual_designator : expression            ((W_datatypes.Expression(expression))) 
                  | OPEN                  ((W_datatypes.Open1()))
                  (*| name                  ((W_datatypes.NAME(name)))
                  | INERTIAL expression   ((W_datatypes.Expression(expression)))   *)

actual_parameter_part : association_list  ((W_datatypes.ACTUAL_PARAMETER_PART(association_list)))

actual_part : actual_designator                             ((W_datatypes.ACTUAL_DESIGNATOR(actual_designator)))                          
            | name LPARAN actual_designator RPARAN          ((W_datatypes.FUNCTION_NAME(name,actual_designator)))                          
(*            | type_mark LPARAN actual_designator RPARAN     ((W_datatypes.Type_mark(type_mark,actual_designator)))     *)             


adding_operator : AMP     ((W_datatypes.Amp()))
                | PLUS    ((W_datatypes.Plus()))
                | MINUS   ((W_datatypes.Minus()))

aggregate : LPARAN element_association element_association_seq RPARAN     ((W_datatypes.ELEMENT_ASSOCIATION(element_association,element_association_seq)))                    

alias_declaration : ALIAS alias_designator COLON alias_indication IS name signatur SEMICOLON      ((W_datatypes.ALIAS_2(alias_designator,alias_indication,name,signatur)))                    
                  | ALIAS alias_designator IS name signatur SEMICOLON       ((W_datatypes.ALIAS_3(alias_designator,name,signatur)))                    
                  | ALIAS alias_designator IS name SEMICOLON        ((W_datatypes.ALIAS_1(alias_designator,name)))                    
                  | ALIAS alias_designator COLON alias_indication IS name SEMICOLON       ((W_datatypes.ALIAS_4(alias_designator,alias_indication,name)))                    

alias_designator : identifier           ((W_datatypes.ALIAS_DESIGNATOR_1(identifier)))                    
                 | character_literal    ((W_datatypes.ALIAS_DESIGNATOR_2(character_literal)))                    
                 | string_literal      ((W_datatypes.ALIAS_DESIGNATOR_3(string_literal)))

alias_indication : subnature_indication (W_datatypes.ALIAS_INDICATION_2(subnature_indication))
                 | subtype_indication   (W_datatypes.ALIAS_INDICATION_1(subtype_indication))           

allocator : NEW subtype_indication      ((W_datatypes.SUBTYPE_INDICATION(subtype_indication)))
          | NEW qualified_expression    ((W_datatypes.QUALIFIED_EXPRESSION(qualified_expression)))

(*anonymous_type_indication : TYPE IS incomplete_type_definition      ((W_datatypes.INCOMPLETE_TYPE_DEFINITION(incomplete_type_definition)))*)

architecture_body : ARCHITECTURE identifier OF identifier IS architecture_declarative_part BEGIN architecture_statement_part END ARCHITECTURE identifier SEMICOLON    ((W_datatypes.ARCHITECTURE_2(identifier,identifier,architecture_declarative_part,architecture_statement_part,identifier)))
                  | ARCHITECTURE identifier OF identifier IS architecture_declarative_part BEGIN architecture_statement_part END identifier SEMICOLON                 ((W_datatypes.ARCHITECTURE_2(identifier,identifier,architecture_declarative_part,architecture_statement_part,identifier)))
                  | ARCHITECTURE identifier OF identifier IS architecture_declarative_part BEGIN architecture_statement_part END SEMICOLON                             ((W_datatypes.ARCHITECTURE_1(identifier,identifier,architecture_declarative_part,architecture_statement_part)))        
                  | ARCHITECTURE identifier OF identifier IS architecture_declarative_part BEGIN architecture_statement_part END ARCHITECTURE SEMICOLON                ((W_datatypes.ARCHITECTURE_1(identifier,identifier,architecture_declarative_part,architecture_statement_part)))

architecture_declarative_part : block_declarative_item_seq      ((W_datatypes.BLOCK_DECLARATIVE_ITEM(block_declarative_item_seq)))

(* architecture_path_name : simple_name LPARAN simple_name RPARAN      ((W_datatypes.ARCHITECTURE_PATH_NAME(simple_name1,simple_name2))) *)

label_colon : identifier COLON ((W_datatypes.LABEL_COLON(identifier)))

architecture_statement : block_statement  ((W_datatypes.ARCHITECTURE_STATEMENT_1(block_statement))) 
                     | process_statement  ((W_datatypes.ARCHITECTURE_STATEMENT_2(process_statement)))     
                     | label_colon concurrent_procedure_call_statement  ((W_datatypes.ARCHITECTURE_STATEMENT_3(label_colon,concurrent_procedure_call_statement)))
                     | concurrent_procedure_call_statement   ((W_datatypes.ARCHITECTURE_STATEMENT_4(concurrent_procedure_call_statement)))                     
                     | label_colon concurrent_assertion_statement  ((W_datatypes.ARCHITECTURE_STATEMENT_5(label_colon,concurrent_assertion_statement)))
                     | concurrent_assertion_statement              ((W_datatypes.ARCHITECTURE_STATEMENT_6(concurrent_assertion_statement)))  
                     | label_colon concurrent_signal_assignment_statement  ((W_datatypes.ARCHITECTURE_STATEMENT_7(label_colon,concurrent_signal_assignment_statement)))                           
                     | concurrent_signal_assignment_statement  ((W_datatypes.ARCHITECTURE_STATEMENT_8(concurrent_signal_assignment_statement)))
                     | label_colon POSTPONED concurrent_signal_assignment_statement  ((W_datatypes.ARCHITECTURE_STATEMENT_7(label_colon,concurrent_signal_assignment_statement)))                           
                     | POSTPONED concurrent_signal_assignment_statement  ((W_datatypes.ARCHITECTURE_STATEMENT_8(concurrent_signal_assignment_statement))) 
                     | component_instantiation_statement           ((W_datatypes.ARCHITECTURE_STATEMENT_9(component_instantiation_statement)))    
                     | generate_statement                          ((W_datatypes.ARCHITECTURE_STATEMENT_10(generate_statement)))  
                     | concurrent_break_statement      ((W_datatypes.ARCHITECTURE_STATEMENT_11(concurrent_break_statement)))
                     | simultaneous_statement          ((W_datatypes.ARCHITECTURE_STATEMENT_12(simultaneous_statement)))   

architecture_statement_seq : architecture_statement architecture_statement_seq       (architecture_statement :: architecture_statement_seq)
                           |  ([])

architecture_statement_part : architecture_statement_seq           ((W_datatypes.ARCHITECTURE_STATEMENT_PART(architecture_statement_seq)))

array_nature_definition : unconstrained_nature_definition  ((W_datatypes.ARRAY_NATURE_DEFINITION_1(unconstrained_nature_definition)))      
                        | constrained_nature_definition     ((W_datatypes.ARRAY_NATURE_DEFINITION_2(constrained_nature_definition)))

array_type_definition : unconstrained_array_definition      ((W_datatypes.ARRAY_TYPE_DEFINITION_1(unconstrained_array_definition)))
                      | constrained_array_definition    ((W_datatypes.ARRAY_TYPE_DEFINITION_2(constrained_array_definition)))

(*array_constraint : index_constraint array_element_constraint       ((W_datatypes.ARRAY_INDEX_CONSTRAINT_1(index_constraint,array_element_constraint)))         
                 | index_constraint                                    ((W_datatypes.ARRAY_INDEX_CONSTRAINT_2(index_constraint)))                 
                 | LPARAN OPEN RPARAN array_element_constraint         ((W_datatypes.ARRAY_ELEMENT_CONSTRAINT_1(array_element_constraint)))         
                 | LPARAN OPEN RPARAN                                  ((W_datatypes.ARRAY_INDEX_CONSTRAINT_3()))         

array_element_constraint : element_constraint       ((W_datatypes.ARRAY_ELEMENT_CONSTRAINT(element_constraint)))

array_element_resolution : resolution_indication    ((W_datatypes.ARRAY_RESOLUTION_INDICATION(resolution_indication)))

array_incomplete_type_definition : ARRAY LPARAN array_index_incomplete_type_list RPARAN OF incomplete_subtype_indication        ((W_datatypes.ARRAY_INCOMPLETE_TYPE_DEF(array_index_incomplete_type_list,incomplete_subtype_indication)))

array_index_incomplete_type_seq : array_index_incomplete_type array_index_incomplete_type_seq       (array_index_incomplete_type :: array_index_incomplete_type_seq)
                                |     ([])

array_index_incomplete_type : index_subtype_definition      ((W_datatypes.ARRAY_INDEX_SUBTYPE_DEFINITION(index_subtype_definition)))
                            | index_constraint              ((W_datatypes.ARRAY_INDEX_CONSTRAINT(index_constraint)))
                            | anonymous_type_indication     ((W_datatypes.ARRAY_ANONYMOUS_TYPE_INDICATION(anonymous_type_indication)))

array_index_incomplete_type_list : array_index_incomplete_type_seq          ((W_datatypes.ARRAY_INDEX_INCOMPLETE_TYPE_LIST(array_index_incomplete_type_seq)))

 array_mode_view_indication : VIEW LPARAN name RPARAN OF subtype_indication          ((W_datatypes.ARRAY_MODE_VIEW_IND(name,subtype_indication))) 

array_type_definition : unbounded_array_definition      ((W_datatypes.ARRAY_TYPE_DEFINITION_1(unbounded_array_definition)))
                      | constrained_array_definition    ((W_datatypes.ARRAY_TYPE_DEFINITION_2(constrained_array_definition)))*)

assertion : ASSERT condition REPORT expression SEVERITY expression      ((W_datatypes.ASSERT_1(condition,expression1,expression2)))
          | ASSERT condition REPORT expression                          ((W_datatypes.ASSERT_2(condition,expression)))
          | ASSERT condition SEVERITY expression                        ((W_datatypes.ASSERT_2(condition,expression)))
          | ASSERT condition                                            ((W_datatypes.ASSERT_3(condition)))

assertion_statement : label_colon assertion SEMICOLON       ((W_datatypes.ASSERTION_STM_1(label_colon,assertion)))
                    | assertion SEMICOLON                   ((W_datatypes.ASSERTION_STM_2(assertion)))

association_element_seq : COMMA association_element association_element_seq       (association_element :: association_element_seq)
                        |     ([])

association_element : formal_part ARROW actual_part      ((W_datatypes.ASSOCIATION_ELE_1(formal_part,actual_part)))      
                    | actual_part                        ((W_datatypes.ASSOCIATION_ELE_2(actual_part)))  

association_list : association_element association_element_seq               ((W_datatypes.ASSOCIATION_ELE_LiST(association_element,association_element_seq)))

attribute_declaration : ATTRIBUTE label_colon name SEMICOLON      ((W_datatypes.Attribute(label_colon,name)))

(*type_mark : name  ((W_datatypes.TYPE_MARK(name)))*)

attribute_designator : identifier ((W_datatypes.ATTRIBUTE_DESIGNATOR(identifier)))
                     | RANGE    ((W_datatypes.Range()))
(*                     | ACROSS ()
                     | TOLERANCE ()
                     | THROUGH ()
                     | REFERENCE ()
                     | REVERSE_RANGE ()*)

(*attribute_name : prefix signatur TICK attribute_designator LPARAN expression RPARAN     ((W_datatypes.ATTRIBUTE_NAME_1(prefix,signatur,attribute_designator,expression)))
               | prefix TICK attribute_designator LPARAN expression RPARAN              ((W_datatypes.ATTRIBUTE_NAME_2(prefix,attribute_designator,expression)))
               | prefix signatur TICK attribute_designator                              ((W_datatypes.ATTRIBUTE_NAME_3(prefix,signatur,attribute_designator)))
               | prefix TICK attribute_designator                                       ((W_datatypes.ATTRIBUTE_NAME_4(prefix,attribute_designator)))*)

attribute_specification : ATTRIBUTE attribute_designator OF entity_specification IS expression SEMICOLON        ((W_datatypes.ATTRIBUTE_SPECIFICATION(attribute_designator,entity_specification,expression)))

(*base : integer              ((W_datatypes.BASE(integer)))

base_specifier : B     ((W_datatypes.B_()))      
               | O     ((W_datatypes.O_()))
               | X     ((W_datatypes.X_()))
               | UB    ((W_datatypes.Ub()))
               | UO    ((W_datatypes.Uo()))
               | UX    ((W_datatypes.Ux()))
               | SB    ((W_datatypes.Sb()))
               | SO    ((W_datatypes.So()))
               | SX    ((W_datatypes.Sx()))
               | D     ((W_datatypes.D_()))

based_integer : extended_digit extended_digit_seq             ((W_datatypes.EXTENDED_DIGIT_LIST(extended_digit,extended_digit_seq)))     *)

(*base HASH based_integer DOT based_integer HASH exponent        ((W_datatypes.BASED_LITERAL_1(base,based_integer1,based_integer2,exponent)))     
              | base HASH based_integer DOT based_integer HASH                 ((W_datatypes.BASED_LITERAL_2(base,based_integer1,based_integer2))) 
              | base HASH based_integer HASH exponent                          ((W_datatypes.BASED_LITERAL_3(base,based_integer,exponent)))     
              | base HASH based_integer HASH                                   ((W_datatypes.BASED_LITERAL_4(base,based_integer)))     *)

(* basic_character : basic_graphic_character       ((W_datatypes.BASIC_CHARACTER_1(basic_graphic_character))) *)
(*
basic_graphic_character : upper_case_letter        ((W_datatypes.BASIC_GRAPHIC_CHARACTER_1(upper_case_letter)))                 
                        | digit                    ((W_datatypes.BASIC_GRAPHIC_CHARACTER_2(digit)))     
                        | special_character        ((W_datatypes.BASIC_GRAPHIC_CHARACTER_3(special_character)))   *)          

base_unit_declaration : identifier SEMICOLON  ((W_datatypes.BASE_UNIT_DECLARATION(identifier)))

binding_indication : USE entity_aspect generic_map_aspect port_map_aspect       ((W_datatypes.BINDING_INDICATION_1(entity_aspect,generic_map_aspect,port_map_aspect)))                                        
                   | USE entity_aspect generic_map_aspect                       ((W_datatypes.BINDING_INDICATION_2(entity_aspect,generic_map_aspect)))                        
                   | USE entity_aspect port_map_aspect                          ((W_datatypes.BINDING_INDICATION_3(entity_aspect,port_map_aspect)))                    
                   | generic_map_aspect port_map_aspect                         ((W_datatypes.BINDING_INDICATION_4(generic_map_aspect,port_map_aspect)))                    
                   | USE entity_aspect                                          ((W_datatypes.BINDING_INDICATION_5(entity_aspect)))    
                   | port_map_aspect                                            ((W_datatypes.BINDING_INDICATION_6(port_map_aspect)))    
                   | generic_map_aspect                                         ((W_datatypes.BINDING_INDICATION_7(generic_map_aspect)))    

(*bit_string_literal : integer base_specifier INVERTEDCOMMA bit_value INVERTEDCOMMA      ((W_datatypes.BIT_STRING_LITERAL_1(integer,base_specifier,bit_value )))                             
                   | integer base_specifier INVERTEDCOMMA INVERTEDCOMMA                ((W_datatypes.BIT_STRING_LITERAL_2(integer,base_specifier)))                 
                   | base_specifier INVERTEDCOMMA INVERTEDCOMMA                        ((W_datatypes.BIT_STRING_LITERAL_3(base_specifier)))         
                   | base_specifier INVERTEDCOMMA bit_value INVERTEDCOMMA              ((W_datatypes.BIT_STRING_LITERAL_4(base_specifier,bit_value )))     *)                

(*bit_value : graphic_character graphic_character_seq           ((W_datatypes.BIT_VALUE(graphic_character,graphic_character_seq))) *)

block_configuration : FOR block_specification use_clause_seq configuration_item_seq END FOR SEMICOLON       ((W_datatypes.BLOCK_CONFIGURATION(block_specification,use_clause_seq,configuration_item_seq)))

block_declarative_item_seq : block_declarative_item block_declarative_item_seq       (block_declarative_item :: block_declarative_item_seq)
                           |  ([])

block_declarative_item : subprogram_declaration                   ((W_datatypes.BLOCK_DECLARATIVE_ITEM_1(subprogram_declaration)))              
                       | subprogram_body                          ((W_datatypes.BLOCK_DECLARATIVE_ITEM_2(subprogram_body)))          
(*                       | subprogram_instantiation_declaration     ((W_datatypes.BLOCK_DECLARATIVE_ITEM_3(subprogram_instantiation_declaration)))                              
                       | package_declaration                      ((W_datatypes.BLOCK_DECLARATIVE_ITEM_4(package_declaration)))              
                       | package_body                             ((W_datatypes.BLOCK_DECLARATIVE_ITEM_5(package_body)))      
                       | package_instantiation_declaration        ((W_datatypes.BLOCK_DECLARATIVE_ITEM_6(package_instantiation_declaration))) *)                         
                       | type_declaration                         ((W_datatypes.BLOCK_DECLARATIVE_ITEM_7(type_declaration)))          
                       | subtype_declaration                      ((W_datatypes.BLOCK_DECLARATIVE_ITEM_8(subtype_declaration)))              
(*                       | mode_view_declaration                      ((W_datatypes.BLOCK_DECLARATIVE_ITEM_9(mode_view_declaration))) *)             
                       | constant_declaration                     ((W_datatypes.BLOCK_DECLARATIVE_ITEM_10(constant_declaration)))              
                       | signal_declaration                       ((W_datatypes.BLOCK_DECLARATIVE_ITEM_11(signal_declaration)))          
                       | variable_declaration                     ((W_datatypes.BLOCK_DECLARATIVE_ITEM_12(variable_declaration)))              
                       | file_declaration                         ((W_datatypes.BLOCK_DECLARATIVE_ITEM_13(file_declaration)))          
                       | alias_declaration                        ((W_datatypes.BLOCK_DECLARATIVE_ITEM_14(alias_declaration)))          
                       | component_declaration                    ((W_datatypes.BLOCK_DECLARATIVE_ITEM_15(component_declaration)))              
                       | attribute_declaration                    ((W_datatypes.BLOCK_DECLARATIVE_ITEM_16(attribute_declaration)))              
                       | attribute_specification                  ((W_datatypes.BLOCK_DECLARATIVE_ITEM_17(attribute_specification)))                  
                       | configuration_specification              ((W_datatypes.BLOCK_DECLARATIVE_ITEM_18(configuration_specification)))                      
                       | disconnection_specification              ((W_datatypes.BLOCK_DECLARATIVE_ITEM_19(disconnection_specification)))                      
                       | use_clause                               ((W_datatypes.BLOCK_DECLARATIVE_ITEM_20(use_clause)))  
                       | group_template_declaration               ((W_datatypes.BLOCK_DECLARATIVE_ITEM_21(group_template_declaration)))                  
                       | group_declaration                        ((W_datatypes.BLOCK_DECLARATIVE_ITEM_22(group_declaration)))
                       | step_limit_specification     ((W_datatypes.BLOCK_DECLARATIVE_ITEM_23(step_limit_specification)))
                       | nature_declaration         ((W_datatypes.BLOCK_DECLARATIVE_ITEM_24(nature_declaration)))
                       | subnature_declaration      ((W_datatypes.BLOCK_DECLARATIVE_ITEM_25(subnature_declaration)))
                       | quantity_declaration       ((W_datatypes.BLOCK_DECLARATIVE_ITEM_26(quantity_declaration)))
                       | terminal_declaration       ((W_datatypes.BLOCK_DECLARATIVE_ITEM_27(terminal_declaration)))

block_declarative_part : block_declarative_item_seq               ((W_datatypes.BLOCK_DECLARATIVE_PART(block_declarative_item_seq)))

block_header : generic_clause generic_map_aspect SEMICOLON port_clause port_map_aspect SEMICOLON      ((W_datatypes.BLOCK_HEADER_1(generic_clause,generic_map_aspect,port_clause,port_map_aspect)))                                                                              
             | generic_clause port_clause port_map_aspect SEMICOLON                                   ((W_datatypes.BLOCK_HEADER_2(generic_clause,port_clause,port_map_aspect)))                                              
             | port_clause port_map_aspect SEMICOLON                                                  ((W_datatypes.BLOCK_HEADER_3(port_clause,port_map_aspect)))                                  
             | generic_clause generic_map_aspect SEMICOLON port_clause                                ((W_datatypes.BLOCK_HEADER_4(generic_clause,generic_map_aspect,port_clause)))                                                  
             | generic_clause port_clause                                                             ((W_datatypes.BLOCK_HEADER_5(generic_clause,port_clause)))                      
             | port_clause                                                                            ((W_datatypes.BLOCK_HEADER_6(port_clause)))      
             | generic_clause generic_map_aspect SEMICOLON                                            ((W_datatypes.BLOCK_HEADER_7(generic_clause,generic_map_aspect)))                                      
             | generic_clause                                                                         ((W_datatypes.BLOCK_HEADER_8(generic_clause)))
             |           ((W_datatypes.BLOCK_HEADER_9()))        

block_specification : identifier LPARAN index_specification RPARAN  ((W_datatypes.BLOCK_SPECIFICATION_3(identifier,index_specification)))
                    | identifier     ((W_datatypes.BLOCK_SPECIFICATION_2(identifier)))
                    | name      ((W_datatypes.BLOCK_SPECIFICATION_1(name)))   

block_statement : label_colon BLOCK LPARAN expression RPARAN IS block_header block_declarative_part BEGIN block_statement_part END BLOCK identifier SEMICOLON       ((W_datatypes.BLOCK_STATEMENT_1(label_colon,expression,block_header,block_declarative_part,block_statement_part,identifier)))                                  
                | label_colon BLOCK IS block_header block_declarative_part BEGIN block_statement_part END BLOCK identifier SEMICOLON                               ((W_datatypes.BLOCK_STATEMENT_2(label_colon,block_header,block_declarative_part,block_statement_part,identifier)))          
                | label_colon BLOCK IS block_header block_declarative_part BEGIN block_statement_part END BLOCK SEMICOLON                                     ((W_datatypes.BLOCK_STATEMENT_3(label_colon,block_header,block_declarative_part,block_statement_part)))      
                | label_colon BLOCK LPARAN expression RPARAN IS block_header block_declarative_part BEGIN block_statement_part END BLOCK SEMICOLON             ((W_datatypes.BLOCK_STATEMENT_4(label_colon,expression,block_header,block_declarative_part,block_statement_part)))                              
                | label_colon BLOCK LPARAN expression RPARAN block_header block_declarative_part BEGIN block_statement_part END BLOCK identifier SEMICOLON       ((W_datatypes.BLOCK_STATEMENT_1(label_colon,expression,block_header,block_declarative_part,block_statement_part,identifier)))                                  
                | label_colon BLOCK block_header block_declarative_part BEGIN block_statement_part END BLOCK identifier SEMICOLON                               ((W_datatypes.BLOCK_STATEMENT_2(label_colon,block_header,block_declarative_part,block_statement_part,identifier)))          
                | label_colon BLOCK block_header block_declarative_part BEGIN block_statement_part END BLOCK SEMICOLON                                     ((W_datatypes.BLOCK_STATEMENT_3(label_colon,block_header,block_declarative_part,block_statement_part)))      
                | label_colon BLOCK LPARAN expression RPARAN block_header block_declarative_part BEGIN block_statement_part END BLOCK SEMICOLON             ((W_datatypes.BLOCK_STATEMENT_4(label_colon,expression,block_header,block_declarative_part,block_statement_part)))                              

block_statement_part : architecture_statement_seq         ((W_datatypes.BLOCK_STATEMENT_PART(architecture_statement_seq)))

branch_quantity_declaration : QUANTITY across_aspect through_aspect terminal_aspect SEMICOLON (W_datatypes.BRANCH_QUANTITY_DECLARATION_5())
                            | QUANTITY across_aspect terminal_aspect SEMICOLON (W_datatypes.BRANCH_QUANTITY_DECLARATION_5())
                            | QUANTITY through_aspect terminal_aspect SEMICOLON (W_datatypes.BRANCH_QUANTITY_DECLARATION_5())
                            | QUANTITY terminal_aspect SEMICOLON (W_datatypes.BRANCH_QUANTITY_DECLARATION_5())

break_element : break_selector_clause name ARROW expression (W_datatypes.BREAK_ELEMENT_1(break_selector_clause,name,expression))
              | name ARROW expression (W_datatypes.BREAK_ELEMENT_2(name,expression))

break_list : break_element_seq (W_datatypes.BREAK_LIST(break_element_seq))

break_element_seq : break_element COMMA break_element_seq (break_element :: break_element_seq)
                  | break_element ([break_element])

break_selector_clause : FOR name USE (W_datatypes.BREAK_SELECTOR_CLAUSE(name))

break_statement : label_colon BREAK break_list WHEN condition SEMICOLON (W_datatypes.BREAK_STATEMENT_1(label_colon,break_list,condition))
                | label_colon BREAK break_list SEMICOLON (W_datatypes.BREAK_STATEMENT_2(label_colon,break_list))
                | label_colon BREAK WHEN condition SEMICOLON (W_datatypes.BREAK_STATEMENT_3(label_colon,condition))
                | label_colon BREAK SEMICOLON (W_datatypes.BREAK_STATEMENT_4(label_colon)) 
                | BREAK break_list WHEN condition SEMICOLON (W_datatypes.BREAK_STATEMENT_5(break_list,condition))
                | BREAK break_list SEMICOLON (W_datatypes.BREAK_STATEMENT_6(break_list))
                | BREAK WHEN condition SEMICOLON (W_datatypes.BREAK_STATEMENT_7(condition))
                | BREAK SEMICOLON (BREAK_STATEMENT_8())

(*case_generate_alternative_seq : case_generate_alternative case_generate_alternative_seq     (case_generate_alternative :: case_generate_alternative_seq)
                                |     ([])

case_generate_alternative : WHEN label COLON choices ARROW generate_statement_body      ((W_datatypes.CASE_GENERATE_ALTERNATIVE_1(label,choices,generate_statement_body)))            
                          | WHEN choices ARROW generate_statement_body                  ((W_datatypes.CASE_GENERATE_ALTERNATIVE_2(choices,generate_statement_body)))

case_generate_statement : label COLON CASE expression GENERATE case_generate_alternative_seq END GENERATE label SEMICOLON       ((W_datatypes.CASE_GENERATE_STATEMENT_1(label1,expression,case_generate_alternative_seq,label2)))        
                        | label COLON CASE expression GENERATE case_generate_alternative_seq END GENERATE SEMICOLON             ((W_datatypes.CASE_GENERATE_STATEMENT_2(label,expression,case_generate_alternative_seq)))*)

case_statement : label_colon CASE expression IS case_statement_alternative_seq END CASE identifier SEMICOLON       ((W_datatypes.CASE_STATEMENT_1(label_colon,expression,case_statement_alternative_seq,identifier)))                    
               | CASE expression IS case_statement_alternative_seq END CASE identifier SEMICOLON                   ((W_datatypes.CASE_STATEMENT_2(expression,case_statement_alternative_seq,identifier)))        
               | CASE expression IS case_statement_alternative_seq END CASE SEMICOLON                         ((W_datatypes.CASE_STATEMENT_3(expression,case_statement_alternative_seq)))
               | label_colon CASE expression IS case_statement_alternative_seq END CASE SEMICOLON             ((W_datatypes.CASE_STATEMENT_4(label_colon,expression,case_statement_alternative_seq)))            
               | label_colon CASE expression IS case_statement_alternative_seq END CASE identifier SEMICOLON       ((W_datatypes.CASE_STATEMENT_1(label_colon,expression,case_statement_alternative_seq,identifier)))                    
               | CASE expression IS case_statement_alternative_seq END CASE identifier SEMICOLON                   ((W_datatypes.CASE_STATEMENT_2(expression,case_statement_alternative_seq,identifier)))        
               | CASE expression IS case_statement_alternative_seq END CASE SEMICOLON                         ((W_datatypes.CASE_STATEMENT_3(expression,case_statement_alternative_seq)))
               | label_colon CASE expression IS case_statement_alternative_seq END CASE SEMICOLON             ((W_datatypes.CASE_STATEMENT_4(label_colon,expression,case_statement_alternative_seq)))            
               | label_colon CASE expression IS case_statement_alternative_seq END CASE identifier SEMICOLON       ((W_datatypes.CASE_STATEMENT_1(label_colon,expression,case_statement_alternative_seq,identifier)))                    
               | CASE expression IS case_statement_alternative_seq END CASE identifier SEMICOLON                   ((W_datatypes.CASE_STATEMENT_2(expression,case_statement_alternative_seq,identifier)))        
               | CASE expression IS case_statement_alternative_seq END CASE SEMICOLON                         ((W_datatypes.CASE_STATEMENT_3(expression,case_statement_alternative_seq)))
               | label_colon CASE expression IS case_statement_alternative_seq END CASE SEMICOLON             ((W_datatypes.CASE_STATEMENT_4(label_colon,expression,case_statement_alternative_seq)))            

case_statement_alternative_seq : case_statement_alternative case_statement_alternative_seq      (case_statement_alternative :: case_statement_alternative_seq)
                               | case_statement_alternative   ([case_statement_alternative])

case_statement_alternative : WHEN choices ARROW sequence_of_statements          ((W_datatypes.CASE_STATEMENT_ALTERNATIVE(choices,sequence_of_statements)))

choice_seq : BAR choice choice_seq      (choice :: choice_seq)
           |   ([])

choice : simple_expression      ((W_datatypes.CHOICE_1(simple_expression)))            
       | discrete_range         ((W_datatypes.CHOICE_2(discrete_range)))        
       | identifier           ((W_datatypes.CHOICE_3(identifier)))                
       | OTHERS                  ((W_datatypes.Others1()))

choices : choice choice_seq     ((W_datatypes.CHOICES(choice,choice_seq)))

component_configuration : FOR component_specification binding_indication SEMICOLON block_configuration END FOR SEMICOLON       ((W_datatypes.COMPONENT_CONFIGURATION_1(component_specification,binding_indication,block_configuration)))                                                
                        | FOR component_specification block_configuration END FOR SEMICOLON                                    ((W_datatypes.COMPONENT_CONFIGURATION_2(component_specification,block_configuration)))                    
                        | FOR component_specification END FOR SEMICOLON                                                        ((W_datatypes.COMPONENT_CONFIGURATION_3(component_specification)))
                        | FOR component_specification binding_indication SEMICOLON END FOR SEMICOLON                           ((W_datatypes.COMPONENT_CONFIGURATION_4(component_specification,binding_indication)))                            

component_declaration : COMPONENT identifier IS generic_clause port_clause END COMPONENT identifier SEMICOLON     ((W_datatypes.COMPONENT_DECLARATION_1(identifier1,generic_clause,port_clause,identifier2)))                                         
                      | COMPONENT identifier IS port_clause END COMPONENT identifier SEMICOLON                    ((W_datatypes.COMPONENT_DECLARATION_2(identifier1,port_clause,identifier2)))                         
                      | COMPONENT identifier IS generic_clause END COMPONENT identifier SEMICOLON                 ((W_datatypes.COMPONENT_DECLARATION_3(identifier1,generic_clause,identifier2)))                             
                      | COMPONENT identifier IS END COMPONENT identifier SEMICOLON                                ((W_datatypes.COMPONENT_DECLARATION_4(identifier1,identifier2)))             
                      | COMPONENT identifier IS generic_clause END COMPONENT SEMICOLON                             ((W_datatypes.COMPONENT_DECLARATION_5(identifier,generic_clause)))                 
                      | COMPONENT identifier IS END COMPONENT SEMICOLON                                            ((W_datatypes.COMPONENT_DECLARATION_6(identifier))) 
                      | COMPONENT identifier IS generic_clause port_clause END COMPONENT SEMICOLON                 ((W_datatypes.COMPONENT_DECLARATION_7(identifier,generic_clause,port_clause)))                             
                      | COMPONENT identifier IS port_clause END COMPONENT SEMICOLON                                ((W_datatypes.COMPONENT_DECLARATION_8(identifier,port_clause)))             
                      | COMPONENT identifier generic_clause port_clause END COMPONENT identifier SEMICOLON     ((W_datatypes.COMPONENT_DECLARATION_1(identifier1,generic_clause,port_clause,identifier2)))                                         
                      | COMPONENT identifier port_clause END COMPONENT identifier SEMICOLON                    ((W_datatypes.COMPONENT_DECLARATION_2(identifier1,port_clause,identifier2)))                         
                      | COMPONENT identifier generic_clause END COMPONENT identifier SEMICOLON                 ((W_datatypes.COMPONENT_DECLARATION_3(identifier1,generic_clause,identifier2)))                             
                      | COMPONENT identifier END COMPONENT identifier SEMICOLON                                ((W_datatypes.COMPONENT_DECLARATION_4(identifier1,identifier2)))             
                      | COMPONENT identifier generic_clause END COMPONENT SEMICOLON                             ((W_datatypes.COMPONENT_DECLARATION_5(identifier,generic_clause)))                 
                      | COMPONENT identifier END COMPONENT SEMICOLON                                            ((W_datatypes.COMPONENT_DECLARATION_6(identifier))) 
                      | COMPONENT identifier generic_clause port_clause END COMPONENT SEMICOLON                 ((W_datatypes.COMPONENT_DECLARATION_7(identifier,generic_clause,port_clause)))                             
                      | COMPONENT identifier port_clause END COMPONENT SEMICOLON                                ((W_datatypes.COMPONENT_DECLARATION_8(identifier,port_clause)))             

component_instantiation_statement : label_colon instantiated_unit generic_map_aspect port_map_aspect SEMICOLON     ((W_datatypes.COMPONENT_INSTANTIATION_STATEMENT_1(label_colon,instantiated_unit,generic_map_aspect,port_map_aspect)))                                     
                                  | label_colon instantiated_unit port_map_aspect SEMICOLON                        ((W_datatypes.COMPONENT_INSTANTIATION_STATEMENT_2(label_colon,instantiated_unit,port_map_aspect)))                 
                                  | label_colon instantiated_unit SEMICOLON                                        ((W_datatypes.COMPONENT_INSTANTIATION_STATEMENT_3(label_colon,instantiated_unit))) 
                                  | label_colon instantiated_unit generic_map_aspect SEMICOLON                     ((W_datatypes.COMPONENT_INSTANTIATION_STATEMENT_4(label_colon,instantiated_unit,generic_map_aspect)))                     

component_specification : instantiation_list COLON name         ((W_datatypes.COMPONENT_SPECIFICATION(instantiation_list,name)))

composite_nature_definition : array_nature_definition       ((W_datatypes.COMPOSITE_NATURE_DEFINITION_1(array_nature_definition)))
                          | record_nature_definition      ((W_datatypes.COMPOSITE_NATURE_DEFINITION_2(record_nature_definition)))

composite_type_definition : array_type_definition       ((W_datatypes.COMPOSITE_TYPE_DEFINITION_1(array_type_definition)))
                          | record_type_definition      ((W_datatypes.COMPOSITE_TYPE_DEFINITION_2(record_type_definition)))

(*compound_configuration_specification : FOR component_specification binding_indication SEMICOLON verification_unit_binding_indication_seq END FOR SEMICOLON          ((W_datatypes.COMPOUND_CONFIGURATION_SPECIFICATION(component_specification,binding_indication,verification_unit_binding_indication_seq)))*)

concurrent_assertion_statement : label_colon POSTPONED assertion SEMICOLON       ((W_datatypes.CONCURRENT_ASSERTION_STATEMENT_1(label_colon,assertion)))               
                               | POSTPONED assertion SEMICOLON                   ((W_datatypes.CONCURRENT_ASSERTION_STATEMENT_2(assertion)))   
                               | label_colon assertion SEMICOLON       ((W_datatypes.CONCURRENT_ASSERTION_STATEMENT_1(label_colon,assertion)))               
                               | assertion SEMICOLON                   ((W_datatypes.CONCURRENT_ASSERTION_STATEMENT_2(assertion)))   

(*concurrent_conditional_signal_assignment : target LE GUARDED delay_mechanism conditional_waveforms SEMICOLON       ((W_datatypes.CONCURRENT_CONDITIONAL_SIGNAL_ASSIGNMENT_1(target,delay_mechanism,conditional_waveforms)))                 
                                         | target LE GUARDED conditional_waveforms SEMICOLON                       ((W_datatypes.CONCURRENT_CONDITIONAL_SIGNAL_ASSIGNMENT_2(target,conditional_waveforms))) 
                                         | target LE delay_mechanism conditional_waveforms SEMICOLON       ((W_datatypes.CONCURRENT_CONDITIONAL_SIGNAL_ASSIGNMENT_1(target,delay_mechanism,conditional_waveforms)))                 
                                         | target LE conditional_waveforms SEMICOLON                       ((W_datatypes.CONCURRENT_CONDITIONAL_SIGNAL_ASSIGNMENT_2(target,conditional_waveforms)))*) 
concurrent_break_statement : label_colon BREAK break_list sensitivity_clause WHEN condition SEMICOLON (W_datatypes.CONCURRENT_BREAK_STATEMENT_1(label_colon,break_list,sensitivity_clause,condition))
                           | label_colon BREAK break_list sensitivity_clause SEMICOLON (W_datatypes.CONCURRENT_BREAK_STATEMENT_3(label_colon,break_list,sensitivity_clause))
                           | label_colon BREAK break_list WHEN condition SEMICOLON (W_datatypes.CONCURRENT_BREAK_STATEMENT_2(label_colon,break_list,condition))
                           | label_colon BREAK break_list SEMICOLON (W_datatypes.CONCURRENT_BREAK_STATEMENT_4(label_colon,break_list))
                           | label_colon BREAK sensitivity_clause WHEN condition SEMICOLON (W_datatypes.CONCURRENT_BREAK_STATEMENT_5(label_colon,sensitivity_clause,condition))
                           | label_colon BREAK sensitivity_clause SEMICOLON (W_datatypes.CONCURRENT_BREAK_STATEMENT_7(label_colon,sensitivity_clause))
                           | label_colon BREAK WHEN condition SEMICOLON (W_datatypes.CONCURRENT_BREAK_STATEMENT_6(label_colon,condition))
                           | label_colon BREAK SEMICOLON (W_datatypes.CONCURRENT_BREAK_STATEMENT_8(label_colon))
                           | BREAK break_list sensitivity_clause WHEN condition SEMICOLON (W_datatypes.CONCURRENT_BREAK_STATEMENT_9(break_list,sensitivity_clause,condition))
                           | BREAK break_list sensitivity_clause SEMICOLON (W_datatypes.CONCURRENT_BREAK_STATEMENT_11(break_list,sensitivity_clause))
                           | BREAK break_list WHEN condition SEMICOLON (W_datatypes.CONCURRENT_BREAK_STATEMENT_10(break_list,condition))
                           | BREAK break_list SEMICOLON (W_datatypes.CONCURRENT_BREAK_STATEMENT_12(break_list))
                           | BREAK sensitivity_clause WHEN condition SEMICOLON (W_datatypes.CONCURRENT_BREAK_STATEMENT_13(sensitivity_clause,condition))
                           | BREAK sensitivity_clause SEMICOLON (W_datatypes.CONCURRENT_BREAK_STATEMENT_15(sensitivity_clause))
                           | BREAK WHEN condition SEMICOLON (W_datatypes.CONCURRENT_BREAK_STATEMENT_14(condition))
                           | BREAK SEMICOLON (W_datatypes.CONCURRENT_BREAK_STATEMENT_16())

concurrent_procedure_call_statement : label_colon POSTPONED procedure_call SEMICOLON        ((W_datatypes.CONCURRENT_PROCEDURE_CALL_STATEMENT_1(label_colon,procedure_call)))
                                    | POSTPONED procedure_call SEMICOLON              ((W_datatypes.CONCURRENT_PROCEDURE_CALL_STATEMENT_2(procedure_call)))
                                    | label_colon procedure_call SEMICOLON        ((W_datatypes.CONCURRENT_PROCEDURE_CALL_STATEMENT_1(label_colon,procedure_call)))
                                    | procedure_call SEMICOLON              ((W_datatypes.CONCURRENT_PROCEDURE_CALL_STATEMENT_2(procedure_call)))

(*concurrent_selected_signal_assignment : WITH expression SELECT QUESTION target LE GUARDED delay_mechanism selected_waveforms SEMICOLON      ((W_datatypes.CONCURRENT_SELECTED_SIGNAL_ASSIGNMENT_1(expression,target,delay_mechanism,selected_waveforms)))                
                                      | WITH expression SELECT QUESTION target LE GUARDED selected_waveforms SEMICOLON                      ((W_datatypes.CONCURRENT_SELECTED_SIGNAL_ASSIGNMENT_2(expression,target,selected_waveforms)))
                                      | WITH expression SELECT target LE GUARDED delay_mechanism selected_waveforms SEMICOLON      ((W_datatypes.CONCURRENT_SELECTED_SIGNAL_ASSIGNMENT_1(expression,target,delay_mechanism,selected_waveforms)))                
                                      | WITH expression SELECT target LE GUARDED selected_waveforms SEMICOLON                      ((W_datatypes.CONCURRENT_SELECTED_SIGNAL_ASSIGNMENT_2(expression,target,selected_waveforms)))
                                      | WITH expression SELECT QUESTION target LE delay_mechanism selected_waveforms SEMICOLON      ((W_datatypes.CONCURRENT_SELECTED_SIGNAL_ASSIGNMENT_1(expression,target,delay_mechanism,selected_waveforms)))                
                                      | WITH expression SELECT QUESTION target LE selected_waveforms SEMICOLON                      ((W_datatypes.CONCURRENT_SELECTED_SIGNAL_ASSIGNMENT_2(expression,target,selected_waveforms)))*)



(*concurrent_signal_association_statement : label COLON concurrent_simple_signal_association          ((W_datatypes.CONCURRENT_SIGNAL_ASSOCIATION_STATEMENT_1(label,concurrent_simple_signal_association)))            
                                        | concurrent_simple_signal_association                      ((W_datatypes.CONCURRENT_SIGNAL_ASSOCIATION_STATEMENT_2(concurrent_simple_signal_association)))

concurrent_simple_signal_assignment : target LE GUARDED delay_mechanism waveform SEMICOLON      ((W_datatypes.CONCURRENT_SIMPLE_SIGNAL_ASSIGNMENT_1(target,delay_mechanism,waveform)))                
                                    | target LE GUARDED waveform SEMICOLON                      ((W_datatypes.CONCURRENT_SIMPLE_SIGNAL_ASSIGNMENT_2(target,waveform)))
                                    | target LE delay_mechanism waveform SEMICOLON      ((W_datatypes.CONCURRENT_SIMPLE_SIGNAL_ASSIGNMENT_1(target,delay_mechanism,waveform)))                
                                    | target LE waveform SEMICOLON                      ((W_datatypes.CONCURRENT_SIMPLE_SIGNAL_ASSIGNMENT_2(target,waveform)))*)
(*
concurrent_simple_signal_association : signal_association_target DOUBLEARROW signal_association_target SEMICOLON            ((W_datatypes.CONCURRENT_SIMPLE_SIGNAL_ASSOCIATION(signal_association_target1,signal_association_target2)))*)

concurrent_signal_assignment_statement : label_colon POSTPONED conditional_signal_assignment        ((W_datatypes.CONCURRENT_SIGNAL_ASSIGNMENT_STATEMENT_3(label_colon,conditional_signal_assignment)))                 
                                       | POSTPONED conditional_signal_assignment                    ((W_datatypes.CONCURRENT_SIGNAL_ASSIGNMENT_STATEMENT_4(conditional_signal_assignment)))     
                                       | label_colon conditional_signal_assignment        ((W_datatypes.CONCURRENT_SIGNAL_ASSIGNMENT_STATEMENT_3(label_colon,conditional_signal_assignment)))                 
                                       | conditional_signal_assignment                    ((W_datatypes.CONCURRENT_SIGNAL_ASSIGNMENT_STATEMENT_4(conditional_signal_assignment)))     
                                       | label_colon POSTPONED selected_signal_assignment           ((W_datatypes.CONCURRENT_SIGNAL_ASSIGNMENT_STATEMENT_5(label_colon,selected_signal_assignment)))                 
                                       | POSTPONED selected_signal_assignment                       ((W_datatypes.CONCURRENT_SIGNAL_ASSIGNMENT_STATEMENT_6(selected_signal_assignment)))     
                                       | label_colon selected_signal_assignment           ((W_datatypes.CONCURRENT_SIGNAL_ASSIGNMENT_STATEMENT_5(label_colon,selected_signal_assignment)))                 
                                       | selected_signal_assignment                       ((W_datatypes.CONCURRENT_SIGNAL_ASSIGNMENT_STATEMENT_6(selected_signal_assignment)))     

(*concurrent_statement_seq : concurrent_statement concurrent_statement_seq         (concurrent_statement::concurrent_statement_seq)
                         |     ([])

concurrent_statement : block_statement                             ((W_datatypes.CONCURRENT_STATEMENT_1(block_statement))) 
                     | process_statement                           ((W_datatypes.CONCURRENT_STATEMENT_2(process_statement)))     
                     | concurrent_procedure_call_statement         ((W_datatypes.CONCURRENT_STATEMENT_3(concurrent_procedure_call_statement)))                     
                     | concurrent_assertion_statement              ((W_datatypes.CONCURRENT_STATEMENT_4(concurrent_assertion_statement)))                 
                     | concurrent_signal_assignment_statement      ((W_datatypes.CONCURRENT_STATEMENT_5(concurrent_signal_assignment_statement)))                         
                     | concurrent_signal_association_statement     ((W_datatypes.CONCURRENT_STATEMENT_6(concurrent_signal_association_statement)))                         
                     | component_instantiation_statement           ((W_datatypes.CONCURRENT_STATEMENT_7(component_instantiation_statement)))                     
                     | generate_statement                          ((W_datatypes.CONCURRENT_STATEMENT_8(generate_statement)))     *)

condition : expression               ((W_datatypes.CONDITION(expression)))       

condition_clause : UNTIL condition      ((W_datatypes.CONDITION_CLAUSE(condition)))

(*conditional_expression_1 : WHEN condition ELSE expression       ((W_datatypes.CONDITIONAL_EXPRESSION_1(condition,expression)))
conditional_expression_seq : conditional_expression_1 conditional_expression_seq         (conditional_expression_1 :: conditional_expression_seq)
                            |    ([])
conditional_expression : expression conditional_expression_seq    ((W_datatypes.CONDITIONAL_EXPRESSION(expression,conditional_expression_seq)))

conditional_or_unaffected_expression_1 : WHEN condition ELSE expression_or_unaffected       ((W_datatypes.CONDITIONAL_OR_UNAFFECTED_EXPRESSION_1(condition,expression_or_unaffected)))
conditional_or_unaffected_expression_seq : conditional_or_unaffected_expression_1 conditional_or_unaffected_expression_seq    (conditional_or_unaffected_expression_1 :: conditional_or_unaffected_expression_seq)
                                        |    ([])
conditional_or_unaffected_expression : expression_or_unaffected conditional_or_unaffected_expression_seq WHEN condition         ((W_datatypes.CONDITIONAL_OR_UNAFFECTED_EXPRESSION(expression_or_unaffected,conditional_or_unaffected_expression_seq,condition)))
                                     | expression_or_unaffected conditional_or_unaffected_expression_seq                        ((W_datatypes.CONDITIONAL_OR_UNAFFECTED_EXPRESSION1(expression_or_unaffected,conditional_or_unaffected_expression_seq)))*)

conditional_signal_assignment : target LE opts conditional_waveforms SEMICOLON       ((W_datatypes.CONDITIONAL_SIGNAL_ASSIGNMENT_1(target,opts,conditional_waveforms)))                
(*                              | target LE conditional_waveforms SEMICOLON                       ((W_datatypes.CONDITIONAL_SIGNAL_ASSIGNMENT_2(target,conditional_waveforms)))*)

(*conditional_waveforms_1 : ELSE waveform WHEN condition              ((W_datatypes.CONDITIONAL_WAVEFORMS_1(waveform,condition)))
conditional_waveforms_seq : conditional_waveforms_1 conditional_waveforms_seq       (conditional_waveforms_1 :: conditional_waveforms_seq)
                            |      ([])*)
conditional_waveforms : waveform WHEN condition ELSE conditional_waveforms      ((W_datatypes.CONDITIONAL_WAVEFORMS_1(waveform,condition,conditional_waveforms)))               
                      | waveform WHEN condition    ((W_datatypes.CONDITIONAL_WAVEFORMS_2(waveform,condition)))   
                      | waveform  ((W_datatypes.CONDITIONAL_WAVEFORMS_3(waveform)))

configuration_declaration : CONFIGURATION identifier OF name IS configuration_declarative_part block_configuration END CONFIGURATION identifier SEMICOLON         ((W_datatypes.CONFIGURATION_DECLARATION_1(identifier,name,configuration_declarative_part,block_configuration,identifier)))
                          | CONFIGURATION identifier OF name IS configuration_declarative_part block_configuration END CONFIGURATION SEMICOLON         ((W_datatypes.CONFIGURATION_DECLARATION_2(identifier,name,configuration_declarative_part,block_configuration)))
                          | CONFIGURATION identifier OF name IS configuration_declarative_part block_configuration END identifier SEMICOLON           ((W_datatypes.CONFIGURATION_DECLARATION_1(identifier,name,configuration_declarative_part,block_configuration,identifier)))
                          | CONFIGURATION identifier OF name IS configuration_declarative_part block_configuration END SEMICOLON                        ((W_datatypes.CONFIGURATION_DECLARATION_2(identifier,name,configuration_declarative_part,block_configuration)))

configuration_declarative_item_seq : configuration_declarative_item configuration_declarative_item_seq          (configuration_declarative_item :: configuration_declarative_item_seq)
                                    |           ([])

configuration_declarative_item : use_clause                  ((W_datatypes.CONFIGURATION_DECLARATIVE_ITEM_1(use_clause)))   
                               | attribute_specification     ((W_datatypes.CONFIGURATION_DECLARATIVE_ITEM_2(attribute_specification)))                   
                               | group_declaration           ((W_datatypes.CONFIGURATION_DECLARATIVE_ITEM_3(group_declaration)))           

configuration_declarative_part : configuration_declarative_item_seq         ((W_datatypes.CONFIGURATION_DECLARATIVE_PART(configuration_declarative_item_seq)))

configuration_item_seq : configuration_item configuration_item_seq                  (configuration_item :: configuration_item_seq)

configuration_item : block_configuration        ((W_datatypes.CONFIGURATION_ITEM_1(block_configuration)))
                   | component_configuration    ((W_datatypes.CONFIGURATION_ITEM_2(component_configuration)))    

configuration_specification : FOR component_specification binding_indication SEMICOLON          ((W_datatypes.CONFIGURATION_SPECIFICATION(component_specification,binding_indication)))

(*simple_configuration_specification            ((W_datatypes.CONFIGURATION_SPECIFICATION_1(simple_configuration_specification)))
                            | compound_configuration_specification          ((W_datatypes.CONFIGURATION_SPECIFICATION_2(compound_configuration_specification)))
*)
constant_declaration : CONSTANT identifier_list COLON subtype_indication ASSIGN expression SEMICOLON        ((W_datatypes.CONSTANT_DECLARATION_1(identifier_list,subtype_indication,expression)))                                    
                     | CONSTANT identifier_list COLON subtype_indication SEMICOLON                                      ((W_datatypes.CONSTANT_DECLARATION_2(identifier_list,subtype_indication)))    

constrained_array_definition : ARRAY index_constraint OF subtype_indication         ((W_datatypes.CONSTRAINED_ARRAY_DEFINITION(index_constraint,subtype_indication)))

constrained_nature_definition : ARRAY index_constraint OF subnature_indication         ((W_datatypes.CONSTRAINED_NATURE_DEFINITION(index_constraint,subnature_indication)))

constraint : range_constraint       ((W_datatypes.CONSTRAINT_1(range_constraint)))
           | index_constraint       ((W_datatypes.CONSTRAINT_2(index_constraint)))
(*           | record_constraint      ((W_datatypes.CONSTRAINT_3(record_constraint)))*)

context_clause : context_item_seq       ((W_datatypes.CONTEXT_CLAUSE(context_item_seq)))

(*context_declaration : CONTEXT identifier IS context_clause END CONTEXT simple_name SEMICOLON       ((W_datatypes.CONTEXT_DECLARATION_1(identifier,context_clause,simple_name)))             
                    | CONTEXT identifier IS context_clause END CONTEXT SEMICOLON                   ((W_datatypes.CONTEXT_DECLARATION_2(identifier,context_clause))) 
                    | CONTEXT identifier IS context_clause END simple_name SEMICOLON       ((W_datatypes.CONTEXT_DECLARATION_1(identifier,context_clause,simple_name)))             
                    | CONTEXT identifier IS context_clause END SEMICOLON                   ((W_datatypes.CONTEXT_DECLARATION_2(identifier,context_clause)))*) 

context_item_seq : context_item context_item_seq        (context_item :: context_item_seq)
                    |       ([])

context_item : library_clause         ((W_datatypes.CONTEXT_ITEM_1(library_clause)))      
             | use_clause             ((W_datatypes.CONTEXT_ITEM_2(use_clause)))  
(*             | context_reference      ((W_datatypes.CONTEXT_ITEM_3(context_reference)))  *)        

(*context_reference : CONTEXT selected_name selected_name_seq SEMICOLON       ((W_datatypes.CONTEXT_REFERENCE(selected_name,selected_name_seq)))
*)

(*decimal_literal : integer DOT integer exponent      ((W_datatypes.DECIMAL_LITERAL_1(integer1,integer2,exponent)))                    
                | integer exponent                  ((W_datatypes.DECIMAL_LITERAL_2(integer,exponent)))        
                | integer                           ((W_datatypes.DECIMAL_LITERAL_3(integer)))
                | integer DOT integer               ((W_datatypes.DECIMAL_LITERAL_4(integer1,integer2)))   *)         

delay_mechanism : TRANSPORT                         ((W_datatypes.Transport()))
                | REJECT expression INERTIAL        ((W_datatypes.DELAY_MECHANISM_2(expression)))
                | INERTIAL                          ((W_datatypes.Inertial()))

design_file : design_unit_seq                       ((W_datatypes.DESIGN_FILE(design_unit_seq)))

design_unit_seq : design_unit design_unit_seq       (design_unit :: design_unit_seq)
                |       ([])

design_unit : context_clause library_unit           ((W_datatypes.DESIGN_UNIT(context_clause,library_unit)))

designator : identifier            ((W_datatypes.DESIGNATOR_1(identifier)))     
           | string_literal       ((W_datatypes.DESIGNATOR_2(string_literal)))         

direction : TO                     ((W_datatypes.To()))                                 
          | DOWNTO                 ((W_datatypes.Downto()))             

disconnection_specification : DISCONNECT guarded_signal_specification AFTER expression SEMICOLON        ((W_datatypes.DISCONNECTION_SPECIFICATION(guarded_signal_specification,expression)))

discrete_range_seq : COMMA discrete_range discrete_range_seq          (discrete_range :: discrete_range_seq)
                     |             ([])

discrete_range : subtype_indication         ((W_datatypes.DISCRETE_RANGE_1(subtype_indication)))                
               | range_decl                      ((W_datatypes.DISCRETE_RANGE_2(range_decl)))

(*discrete_incomplete_type_definition : LPARAN BOX RPARAN         ((W_datatypes.Box()))
*)
(*element_array_mode_view_indication : VIEW LPARAN name RPARAN        ((W_datatypes.ELEMENT_ARRAY_MODE_VIEW_INDICATION(name)))
*)
element_association_seq : COMMA element_association element_association_seq (element_association :: element_association_seq)
                        | ([])

element_association : choices ARROW expression      ((W_datatypes.ELEMENT_ASSOCIATION_1(choices,expression)))                
                    | expression                    ((W_datatypes.ELEMENT_ASSOCIATION_2(expression)))    

(*element_constraint : array_constraint       ((W_datatypes.ELEMENT_CONSTRAINT_1(array_constraint)))
                   | record_constraint      ((W_datatypes.ELEMENT_CONSTRAINT_2(record_constraint)))*)

element_declaration : identifier_list COLON element_subtype_definition SEMICOLON        ((W_datatypes.ELEMENT_DECLARATION(identifier_list,element_subtype_definition)))

(*element_mode_indication : mode                              ((W_datatypes.ELEMENT_MODE_INDICATION_1(mode)))    
                        | element_mode_view_indication      ((W_datatypes.ELEMENT_MODE_INDICATION_2(element_mode_view_indication))) *)                           

(*element_mode_view_indication : element_record_mode_view_indication      ((W_datatypes.ELEMENT_MODE_VIEW_INDICATION_1(element_record_mode_view_indication)))
                             | element_array_mode_view_indication       ((W_datatypes.ELEMENT_MODE_VIEW_INDICATION_2(element_array_mode_view_indication)))

element_record_mode_view_indication : VIEW name             ((W_datatypes.ELEMENT_RECORD_MODE_VIEW_INDICATION(name)))

element_resolution : array_element_resolution               ((W_datatypes.ELEMENT_RESOLUTION_1(array_element_resolution)))        
                   | record_resolution                      ((W_datatypes.ELEMENT_RESOLUTION_2(record_resolution)))*)

element_subtype_definition : subtype_indication             ((W_datatypes.ELEMENT_SUBTYPE_DEFINITION(subtype_indication)))

element_subnature_definition : subnature_indication             ((W_datatypes.ELEMENT_SUBNATURE_DEFINITION(subnature_indication)))

entity_aspect : ENTITY name LPARAN identifier RPARAN    ((W_datatypes.ENTITY_ASPECT_1(name,identifier)))                                
              | ENTITY name                             ((W_datatypes.ENTITY_ASPECT_2(name)))    
              | CONFIGURATION name                      ((W_datatypes.ENTITY_ASPECT_2(name)))            
              | OPEN                                    ((W_datatypes.Open2()))

entity_class : ENTITY            ((W_datatypes.Entity()))           
             | ARCHITECTURE      ((W_datatypes.Architecture()))               
             | CONFIGURATION     ((W_datatypes.Configuration()))                   
             | PROCEDURE         ((W_datatypes.Procedure1()))               
             | FUNCTION          ((W_datatypes.Function1()))           
             | PACKAGE           ((W_datatypes.Package()))           
             | TYPE              ((W_datatypes.Type()))       
             | SUBTYPE           ((W_datatypes.Subtype()))           
             | CONSTANT          ((W_datatypes.Constant()))           
             | SIGNAL            ((W_datatypes.Signal()))           
             | VARIABLE          ((W_datatypes.Variable()))           
             | COMPONENT         ((W_datatypes.Component()))               
             | LABEL             ((W_datatypes.Label()))           
             | LITERAL           ((W_datatypes.Literal()))           
             | UNITS             ((W_datatypes.Units()))           
             | GROUP             ((W_datatypes.Group()))           
             | FILE              ((W_datatypes.File()))       
(*             | PROPERTY          ((W_datatypes.Property()))           
             | SEQUENCE          ((W_datatypes.Sequence()))*)
(*             | NATURE            ()
             | SUBNATURE         ()
             | QUANTITY          ()
             | TERMINAL          ()   *) 

entity_class_entry_seq : COMMA  entity_class_entry entity_class_entry_seq       (entity_class_entry :: entity_class_entry_seq)
                        |       ([])

entity_class_entry : entity_class BOX           ((W_datatypes.ENTITY_CLASS_ENTRY(entity_class)))
                   | entity_class          ((W_datatypes.ENTITY_CLASS_ENTRY(entity_class)))

entity_class_entry_list : entity_class_entry entity_class_entry_seq         ((W_datatypes.ENTITY_CLASS_ENTRY_LIST(entity_class_entry,entity_class_entry_seq)))

entity_declaration : ENTITY identifier IS entity_header entity_declarative_part BEGIN entity_statement_part END ENTITY identifier SEMICOLON       ((W_datatypes.ENTITY_DECLARATION_1(identifier1,entity_header,entity_declarative_part,entity_statement_part,identifier2)))
                   | ENTITY identifier IS entity_header entity_declarative_part END ENTITY identifier SEMICOLON                                   ((W_datatypes.ENTITY_DECLARATION_2(identifier1,entity_header,entity_declarative_part,identifier2)))
                   | ENTITY identifier IS entity_header entity_declarative_part END ENTITY SEMICOLON                                        ((W_datatypes.ENTITY_DECLARATION_3(identifier,entity_header,entity_declarative_part)))
                   | ENTITY identifier IS entity_header entity_declarative_part BEGIN entity_statement_part END ENTITY SEMICOLON            ((W_datatypes.ENTITY_DECLARATION_4(identifier,entity_header,entity_declarative_part,entity_statement_part)))
                   | ENTITY identifier IS entity_header entity_declarative_part BEGIN entity_statement_part END identifier SEMICOLON       ((W_datatypes.ENTITY_DECLARATION_1(identifier1,entity_header,entity_declarative_part,entity_statement_part,identifier)))
                   | ENTITY identifier IS entity_header entity_declarative_part END identifier SEMICOLON                                   ((W_datatypes.ENTITY_DECLARATION_2(identifier1,entity_header,entity_declarative_part,identifier2)))
                   | ENTITY identifier IS entity_header entity_declarative_part END SEMICOLON                                        ((W_datatypes.ENTITY_DECLARATION_3(identifier,entity_header,entity_declarative_part)))
                   | ENTITY identifier IS entity_header entity_declarative_part BEGIN entity_statement_part END SEMICOLON            ((W_datatypes.ENTITY_DECLARATION_4(identifier,entity_header,entity_declarative_part,entity_statement_part)))

entity_declarative_item_seq : entity_declarative_item entity_declarative_item_seq           (entity_declarative_item :: entity_declarative_item_seq)
                            |           ([])

entity_declarative_item : subprogram_declaration                   ((W_datatypes.ENTITY_DECLARATIVE_ITEM_1(subprogram_declaration)))             
                        | subprogram_body                          ((W_datatypes.ENTITY_DECLARATIVE_ITEM_2(subprogram_body)))     
(*                        | subprogram_instantiation_declaration     ((W_datatypes.ENTITY_DECLARATIVE_ITEM_3(subprogram_instantiation_declaration)))                         
                        | package_declaration                      ((W_datatypes.ENTITY_DECLARATIVE_ITEM_4(package_declaration)))         
                        | package_body                             ((W_datatypes.ENTITY_DECLARATIVE_ITEM_5(package_body))) 
                        | package_instantiation_declaration        ((W_datatypes.ENTITY_DECLARATIVE_ITEM_6(package_instantiation_declaration)))     *)                
                        | type_declaration                         ((W_datatypes.ENTITY_DECLARATIVE_ITEM_7(type_declaration)))     
                        | subtype_declaration                      ((W_datatypes.ENTITY_DECLARATIVE_ITEM_8(subtype_declaration)))         
(*                        | mode_view_declaration                      ((W_datatypes.ENTITY_DECLARATIVE_ITEM_9(mode_view_declaration)))   *)      
                        | constant_declaration                     ((W_datatypes.ENTITY_DECLARATIVE_ITEM_10(constant_declaration)))         
                        | signal_declaration                       ((W_datatypes.ENTITY_DECLARATIVE_ITEM_11(signal_declaration)))         
                        | variable_declaration                     ((W_datatypes.ENTITY_DECLARATIVE_ITEM_12(variable_declaration)))         
                        | file_declaration                         ((W_datatypes.ENTITY_DECLARATIVE_ITEM_13(file_declaration)))     
                        | alias_declaration                        ((W_datatypes.ENTITY_DECLARATIVE_ITEM_14(alias_declaration)))     
                        | attribute_declaration                    ((W_datatypes.ENTITY_DECLARATIVE_ITEM_15(attribute_declaration)))         
                        | attribute_specification                  ((W_datatypes.ENTITY_DECLARATIVE_ITEM_16(attribute_specification)))             
                        | disconnection_specification              ((W_datatypes.ENTITY_DECLARATIVE_ITEM_17(disconnection_specification)))                 
                        | use_clause                               ((W_datatypes.ENTITY_DECLARATIVE_ITEM_18(use_clause))) 
                        | group_template_declaration               ((W_datatypes.ENTITY_DECLARATIVE_ITEM_19(group_template_declaration)))                 
                        | group_declaration                        ((W_datatypes.ENTITY_DECLARATIVE_ITEM_20(group_declaration))) 
                        | step_limit_specification     ((W_datatypes.ENTITY_DECLARATIVE_ITEM_21(step_limit_specification)))
                        | nature_declaration         ((W_datatypes.ENTITY_DECLARATIVE_ITEM_22(nature_declaration)))
                        | subnature_declaration      ((W_datatypes.ENTITY_DECLARATIVE_ITEM_23(subnature_declaration)))
                        | quantity_declaration       ((W_datatypes.ENTITY_DECLARATIVE_ITEM_24(quantity_declaration)))
                        | terminal_declaration       ((W_datatypes.ENTITY_DECLARATIVE_ITEM_25(terminal_declaration)))    

entity_declarative_part : entity_declarative_item_seq               ((W_datatypes.ENTITY_DECLARATIVE_PART(entity_declarative_item_seq)))

entity_designator_seq : COMMA entity_designator entity_designator_seq       (entity_designator :: entity_designator_seq)
                        |       ([])

entity_designator : entity_tag signatur    ((W_datatypes.ENTITY_DESIGNATOR_1(entity_tag,signatur)))         
                  | entity_tag             ((W_datatypes.ENTITY_DESIGNATOR_2(entity_tag))) 

entity_header : generic_clause port_clause     ((W_datatypes.ENTITY_HEADER_1(generic_clause,port_clause)))                     
              | port_clause                    ((W_datatypes.ENTITY_HEADER_2(port_clause)))     
              | generic_clause                 ((W_datatypes.ENTITY_HEADER_3(generic_clause)))         
              |                                ((W_datatypes.ENTITY_HEADER_4()))         

entity_name_list : entity_designator  entity_designator_seq       ((W_datatypes.ENTITY_NAME_LIST(entity_designator,entity_designator_seq)))                                      
                 | OTHERS                                         ((W_datatypes.Others2()))      
                 | ALL                                            ((W_datatypes.All1()))  

entity_specification : entity_name_list COLON entity_class          ((W_datatypes.ENTITY_SPECIFICATION(entity_name_list,entity_class)))

entity_statement_seq : entity_statement entity_statement_seq        (entity_statement :: entity_statement_seq)
                        |       ([])

entity_statement : concurrent_assertion_statement           ((W_datatypes.ENTITY_STATEMENT_1(concurrent_assertion_statement)))                
                 | concurrent_procedure_call_statement      ((W_datatypes.ENTITY_STATEMENT_2(concurrent_procedure_call_statement)))                    
                 | process_statement                        ((W_datatypes.ENTITY_STATEMENT_3(process_statement)))    

entity_statement_part : entity_statement_seq                ((W_datatypes.ENTITY_STATEMENT_PART(entity_statement_seq)))

entity_tag : identifier            ((W_datatypes.ENTITY_TAG_1(identifier)))
           | character_literal      ((W_datatypes.ENTITY_TAG_2(character_literal)))    
           | string_literal        ((W_datatypes.ENTITY_TAG_3(string_literal)))    

enumeration_literal_seq : COMMA enumeration_literal enumeration_literal_seq         (enumeration_literal :: enumeration_literal_seq)
                        |       ([])

enumeration_literal : identifier            ((W_datatypes.ENUMERATION_LITERAL_1(identifier)))
                    | character_literal     ((W_datatypes.ENUMERATION_LITERAL_2(character_literal)))    

enumeration_type_definition : LPARAN enumeration_literal enumeration_literal_seq RPARAN         ((W_datatypes.ENUMERATION_TYPE_DEFINITION(enumeration_literal,enumeration_literal_seq)))

exit_statement : label_colon EXIT identifier WHEN condition SEMICOLON     ((W_datatypes.EXIT_STATEMENT_1(label_colon,identifier,condition)))                                       
               | EXIT identifier WHEN condition SEMICOLON                 ((W_datatypes.EXIT_STATEMENT_2(identifier,condition)))                           
               | label_colon EXIT WHEN condition SEMICOLON           ((W_datatypes.EXIT_STATEMENT_7(label_colon,condition)))                               
               | EXIT WHEN condition SEMICOLON                       ((W_datatypes.EXIT_STATEMENT_3(condition)))                   
               | label_colon EXIT SEMICOLON                          ((W_datatypes.EXIT_STATEMENT_5(label_colon)))               
               | EXIT SEMICOLON                                      ((W_datatypes.Exit()))   
               | label_colon EXIT identifier SEMICOLON                    ((W_datatypes.EXIT_STATEMENT_4(label_colon,identifier)))                       
               | EXIT identifier SEMICOLON                                ((W_datatypes.EXIT_STATEMENT_6(identifier)))           

(*exponent : E PLUS integer                               ((W_datatypes.EXPONENT(integer)))        
         | E integer                                    ((W_datatypes.EXPONENT(integer)))
         | E MINUS integer                              ((W_datatypes.EXPONENT(integer)))   *) 

(*expression_seq : COMMA expression expression_seq               (expression :: expression_seq)
               |     ([])*)

relation_logic_seq : logical_operator relation relation_logic_seq (((logical_operator,relation)::relation_logic_seq))
				   | ([])

expression : relation relation_logic_seq ((W_datatypes.EXPRESSION_3(relation,relation_logic_seq)))
(*DOUBLEQUES primary     ((W_datatypes.EXPRESSION_1(primary)))        
           | logical_expression             ((W_datatypes.EXPRESSION_2(logical_expression)))*)

(*expression_or_unaffected : expression       ((W_datatypes.EXPRESSION_OR_UNAFFECTED(expression)))
                         | UNAFFECTED       ((W_datatypes.Unaffected()))

extended_digit_seq : UNDERSCORE extended_digit extended_digit_seq           (extended_digit :: extended_digit_seq)
                   |     ([])

extended_digit : digit          ((W_datatypes.EXTENDED_DIGIT_1(digit)))
               | letter         ((W_datatypes.EXTENDED_DIGIT_2(letter)))*)

(*external_name : external_constant_name          ((W_datatypes.EXTERNAL_NAME_1(external_constant_name)))
              | external_signal_name            ((W_datatypes.EXTERNAL_NAME_2(external_signal_name)))
              | external_variable_name          ((W_datatypes.EXTERNAL_NAME_3(external_variable_name)))

external_constant_name : RIGHTDOUBLE CONSTANT external_pathname COLON subtype_indication LEFTDOUBLE        ((W_datatypes.EXTERNAL_CONSTANT_NAME(external_pathname,subtype_indication))) 

external_signal_name : RIGHTDOUBLE SIGNAL external_pathname COLON subtype_indication LEFTDOUBLE            ((W_datatypes.EXTERNAL_SIGNAL_NAME(external_pathname,subtype_indication)))     

external_variable_name : RIGHTDOUBLE VARIABLE external_pathname COLON subtype_indication LEFTDOUBLE        ((W_datatypes.EXTERNAL_VARIABLE_NAME(external_pathname,subtype_indication)))         

external_pathname : package_pathname        ((W_datatypes.EXTERNAL_PATHNAME_1(package_pathname)))
                  | absolute_pathname       ((W_datatypes.EXTERNAL_PATHNAME_2(absolute_pathname)))
                  | relative_pathname       ((W_datatypes.EXTERNAL_PATHNAME_3(relative_pathname)))*)

factor : primary EXPT primary      ((W_datatypes.FACTOR_1(primary1,primary2)))                       
       | primary                            ((W_datatypes.FACTOR_2(primary)))
       | ABS primary                        ((W_datatypes.FACTOR_2(primary)))
       | NOT primary                        ((W_datatypes.FACTOR_2(primary)))

file_declaration : FILE identifier_list COLON subtype_indication file_open_information SEMICOLON       ((W_datatypes.FILE_DECLARATION_1(identifier_list,subtype_indication,file_open_information)))                             
                 | FILE identifier_list COLON subtype_indication SEMICOLON                             ((W_datatypes.FILE_DECLARATION_2(identifier_list,subtype_indication)))     
(*
file_incomplete_type_definition : FILE OF type_mark             ((W_datatypes.FILE_INCOMPLETE_TYPE_DEFINITION(type_mark)))*)

file_logical_name : expression              ((W_datatypes.FILE_LOGICAL_NAME(expression)))

file_open_information : OPEN expression IS file_logical_name      ((W_datatypes.FILE_OPEN_INFORMATION_1(expression,file_logical_name)))                 
                      | IS file_logical_name                      ((W_datatypes.FILE_OPEN_INFORMATION_2(file_logical_name)))   

file_type_definition : FILE OF subtype_indication                ((W_datatypes.FILE_TYPE_DEFINITION(subtype_indication)))
(*
floating_incomplete_type_definition : RANGE BOX DOT BOX        ((W_datatypes.FLOATING_INCOMPLETE_TYPE_DEFINITION()))*)

(* floating_type_definition : range_constraint                    ((W_datatypes.FLOATING_TYPE_DEFINITION(range_constraint))) *)

(*for_generate_statement : label COLON FOR parameter_specification GENERATE generate_statement_body END GENERATE label SEMICOLON       ((W_datatypes.FOR_GENERATE_STATEMENT_1(label1,parameter_specification,generate_statement_body,label2)))              
                       | label COLON FOR parameter_specification GENERATE generate_statement_body END GENERATE SEMICOLON             ((W_datatypes.FOR_GENERATE_STATEMENT_2(label,parameter_specification,generate_statement_body)))        *)

(*force_mode : IN                    ((W_datatypes.In()))
           | OUT                   ((W_datatypes.Out()))

formal_designator : name signatur     ((W_datatypes.FORMAL_DESIGNATOR_1(name,signatur)))          
                  | name              ((W_datatypes.FORMAL_DESIGNATOR_2(name)))  *) 

formal_parameter_list : interface_list                  ((W_datatypes.FORMAL_PARAMETER_LIST(interface_list)))

formal_part : identifier                              ((W_datatypes.FORMAL_PART_1(identifier)))                
            | identifier LPARAN explicit_range RPARAN           ((W_datatypes.FORMAL_PART_2(identifier,explicit_range)))                                     
(*            | type_mark LPARAN formal_designator RPARAN      ((W_datatypes.FORMAL_PART_3(type_mark,formal_designator))) *)                                    

(*full_type_declaration : TYPE identifier IS type_definition SEMICOLON         ((W_datatypes.FULL_TYPE_DECLARATION(identifier,type_definition)))*)

(*function_call : name generic_map_aspect parameter_map_aspect       ((W_datatypes.FUNCTION_CALL_1(name,generic_map_aspect,parameter_map_aspect)))                                             
              | name parameter_map_aspect                          ((W_datatypes.FUNCTION_CALL_2(name,parameter_map_aspect)))                        
              | name                                               ((W_datatypes.FUNCTION_CALL_3(name)))   
              | name generic_map_aspect                            ((W_datatypes.FUNCTION_CALL_4(name,generic_map_aspect)))                        

function_specification : PURE FUNCTION designator subprogram_header PARAMETER LPARAN formal_parameter_list RPARAN RETURN identifier OF type_mark        ((W_datatypes.FUNCTION_SPECIFICATION_1(designator,subprogram_header,formal_parameter_list,identifier,type_mark)))                                     
                       | PURE FUNCTION designator subprogram_header LPARAN formal_parameter_list RPARAN RETURN identifier OF type_mark        ((W_datatypes.FUNCTION_SPECIFICATION_1(designator,subprogram_header,formal_parameter_list,identifier,type_mark)))                                     
                       | PURE FUNCTION designator subprogram_header PARAMETER RETURN identifier OF type_mark                                            ((W_datatypes.FUNCTION_SPECIFICATION_2(designator,subprogram_header,identifier,type_mark)))  
                       | IMPURE FUNCTION designator subprogram_header PARAMETER LPARAN formal_parameter_list RPARAN RETURN identifier OF type_mark        ((W_datatypes.FUNCTION_SPECIFICATION_1(designator,subprogram_header,formal_parameter_list,identifier,type_mark)))                                     
                       | IMPURE FUNCTION designator subprogram_header LPARAN formal_parameter_list RPARAN RETURN identifier OF type_mark        ((W_datatypes.FUNCTION_SPECIFICATION_1(designator,subprogram_header,formal_parameter_list,identifier,type_mark)))                                     
                       | IMPURE FUNCTION designator subprogram_header PARAMETER RETURN identifier OF type_mark                                            ((W_datatypes.FUNCTION_SPECIFICATION_2(designator,subprogram_header,identifier,type_mark)))  
                       | FUNCTION designator subprogram_header PARAMETER LPARAN formal_parameter_list RPARAN RETURN identifier OF type_mark        ((W_datatypes.FUNCTION_SPECIFICATION_1(designator,subprogram_header,formal_parameter_list,identifier,type_mark)))                                     
                       | FUNCTION designator subprogram_header LPARAN formal_parameter_list RPARAN RETURN identifier OF type_mark        ((W_datatypes.FUNCTION_SPECIFICATION_1(designator,subprogram_header,formal_parameter_list,identifier,type_mark)))                                     
                       | FUNCTION designator subprogram_header PARAMETER RETURN identifier OF type_mark                                            ((W_datatypes.FUNCTION_SPECIFICATION_2(designator,subprogram_header,identifier,type_mark)))  
                       | PURE FUNCTION designator subprogram_header PARAMETER LPARAN formal_parameter_list RPARAN RETURN type_mark        ((W_datatypes.FUNCTION_SPECIFICATION_3(designator,subprogram_header,formal_parameter_list,type_mark)))                                     
                       | PURE FUNCTION designator subprogram_header LPARAN formal_parameter_list RPARAN RETURN type_mark        ((W_datatypes.FUNCTION_SPECIFICATION_3(designator,subprogram_header,formal_parameter_list,type_mark)))                                     
                       | PURE FUNCTION designator subprogram_header PARAMETER RETURN type_mark                                            ((W_datatypes.FUNCTION_SPECIFICATION_4(designator,subprogram_header,type_mark)))  
                       | IMPURE FUNCTION designator subprogram_header PARAMETER LPARAN formal_parameter_list RPARAN RETURN type_mark        ((W_datatypes.FUNCTION_SPECIFICATION_3(designator,subprogram_header,formal_parameter_list,type_mark)))                                     
                       | IMPURE FUNCTION designator subprogram_header LPARAN formal_parameter_list RPARAN RETURN type_mark        ((W_datatypes.FUNCTION_SPECIFICATION_3(designator,subprogram_header,formal_parameter_list,type_mark)))                                     
                       | IMPURE FUNCTION designator subprogram_header PARAMETER RETURN type_mark                                            ((W_datatypes.FUNCTION_SPECIFICATION_4(designator,subprogram_header,type_mark)))  
                       | FUNCTION designator subprogram_header PARAMETER LPARAN formal_parameter_list RPARAN RETURN type_mark        ((W_datatypes.FUNCTION_SPECIFICATION_3(designator,subprogram_header,formal_parameter_list,type_mark)))                                     
                       | FUNCTION designator subprogram_header LPARAN formal_parameter_list RPARAN RETURN type_mark        ((W_datatypes.FUNCTION_SPECIFICATION_3(designator,subprogram_header,formal_parameter_list,type_mark)))                                     
                       | FUNCTION designator subprogram_header PARAMETER RETURN type_mark                                            ((W_datatypes.FUNCTION_SPECIFICATION_4(designator,subprogram_header,type_mark)))  *)

free_quantity_declaration : QUANTITY identifier_list COLON subtype_indication ASSIGN expression SEMICOLON (W_datatypes.FREE_QUANTITY_DECLARATION_1(identifier_list,subtype_indication,expression))
                          | QUANTITY identifier_list COLON subtype_indication SEMICOLON (W_datatypes.FREE_QUANTITY_DECLARATION_2(identifier_list,subtype_indication))

(*generate_specification : discrete_range     ((W_datatypes.GENERATE_SPECIFICATION_1(discrete_range)))            
                       | expression         ((W_datatypes.GENERATE_SPECIFICATION_2(expression)))            
                       | label              ((W_datatypes.GENERATE_SPECIFICATION_3(label)))     
*)
generate_statement : label_colon generation_scheme GENERATE block_declarative_item_seq BEGIN architecture_statement_seq END GENERATE identifier SEMICOLON             ((W_datatypes.GENERATE_STATEMENT_1(label_colon,generation_scheme,block_declarative_item_seq,architecture_statement_seq,identifier)))
                   | label_colon generation_scheme GENERATE BEGIN architecture_statement_seq END GENERATE identifier SEMICOLON             ((W_datatypes.GENERATE_STATEMENT_2(label_colon,generation_scheme,architecture_statement_seq,identifier)))
                   | label_colon generation_scheme GENERATE block_declarative_item_seq BEGIN architecture_statement_seq END GENERATE SEMICOLON             ((W_datatypes.GENERATE_STATEMENT_3(label_colon,generation_scheme,block_declarative_item_seq,architecture_statement_seq)))
                   | label_colon generation_scheme GENERATE BEGIN architecture_statement_seq END GENERATE SEMICOLON             ((W_datatypes.GENERATE_STATEMENT_4(label_colon,generation_scheme,architecture_statement_seq)))

generation_scheme : FOR parameter_specification  ((W_datatypes.GENERATION_SCHEME_1(parameter_specification)))
                  | IF condition  ((W_datatypes.GENERATION_SCHEME_2(condition)))

(*generate_statement_body : block_declarative_part BEGIN concurrent_statement_seq END label SEMICOLON             ((W_datatypes.GENERATE_STATEMENT_BODY_1(block_declarative_part,concurrent_statement_seq,label)))
                        | block_declarative_part BEGIN concurrent_statement_seq END SEMICOLON             ((W_datatypes.GENERATE_STATEMENT_BODY_2(block_declarative_part,concurrent_statement_seq)))
                        | concurrent_statement_seq END SEMICOLON             ((W_datatypes.GENERATE_STATEMENT_BODY_3(concurrent_statement_seq)))
                        | concurrent_statement_seq END label SEMICOLON             ((W_datatypes.GENERATE_STATEMENT_BODY_4(concurrent_statement_seq,label)))
                        | block_declarative_part BEGIN concurrent_statement_seq SEMICOLON             ((W_datatypes.GENERATE_STATEMENT_BODY_2(block_declarative_part,concurrent_statement_seq)))
                        | concurrent_statement_seq SEMICOLON             ((W_datatypes.GENERATE_STATEMENT_BODY_3(concurrent_statement_seq)))*)

generic_clause : GENERIC LPARAN generic_list RPARAN SEMICOLON         ((W_datatypes.GENERIC_CLAUSE(generic_list)))

generic_list : interface_constant_declaration interface_constant_declaration_seq                    ((W_datatypes.GENERIC_LIST(interface_constant_declaration,interface_constant_declaration_seq)))

interface_constant_declaration_seq : SEMICOLON interface_constant_declaration interface_constant_declaration_seq           (interface_constant_declaration :: interface_constant_declaration_seq)
                     |             ([])

generic_map_aspect : GENERIC MAP LPARAN association_list RPARAN         ((W_datatypes.GENERIC_MAP_ASPECT(association_list)))

(*graphic_character_seq : UNDERSCORE graphic_character graphic_character_seq     (graphic_character :: graphic_character_seq)
                      |        ([])

graphic_character_seq1 : graphic_character graphic_character_seq1     (graphic_character :: graphic_character_seq1)
                      |        ([])

graphic_character : basic_graphic_character      ((W_datatypes.GRAPHIC_CHARACTER_1(basic_graphic_character)))       
                  | lower_case_letter            ((W_datatypes.GRAPHIC_CHARACTER_2(lower_case_letter)))
*)
group_constituent_seq : COMMA group_constituent group_constituent_seq               (group_constituent :: group_constituent_seq)
                     |     ([])

group_constituent : name                         ((W_datatypes.GROUP_CONSTITUENT_1(name)))
                  | character_literal            ((W_datatypes.GROUP_CONSTITUENT_2(character_literal)))              

group_constituent_list : group_constituent group_constituent_seq             ((W_datatypes.GROUP_CONSTITUENT_LIST(group_constituent,group_constituent_seq)))

group_declaration : GROUP label_colon name LPARAN group_constituent_list RPARAN SEMICOLON           ((W_datatypes.GROUP_DECLARATION(label_colon,name,group_constituent_list)))

group_template_declaration : GROUP identifier IS LPARAN entity_class_entry_list RPARAN SEMICOLON         ((W_datatypes.GROUP_TEMPLATE_DECLARATION(identifier,entity_class_entry_list)))

guarded_signal_specification : signal_list COLON name            ((W_datatypes.GUARDED_SIGNAL_SPECIFICATION(signal_list,name)))

identifier_seq : COMMA identifier identifier_seq        (identifier :: identifier_seq)
              |      ([])

identifier : basic_identifier             ((W_datatypes.IDENTIFIER_1(basic_identifier)))
           | extended_identifier          ((W_datatypes.IDENTIFIER_2(extended_identifier)))

identifier_list : identifier identifier_seq      ((W_datatypes.IDENTIFIER_LIST(identifier,identifier_seq)))

(*if_generate_statement1 : ELSIF label COLON condition GENERATE generate_statement_body      ((W_datatypes.IF_GENERATE_STATEMENT1(label,condition,generate_statement_body)))                     
if_generate_statement2 : ELSIF condition GENERATE generate_statement_body                  ((W_datatypes.IF_GENERATE_STATEMENT2(condition,generate_statement_body)))       

if_generate_statement1_seq : if_generate_statement1 if_generate_statement1_seq                (if_generate_statement1 :: if_generate_statement1_seq)
                            |             ([])
if_generate_statement2_seq : if_generate_statement2 if_generate_statement2_seq                (if_generate_statement2 :: if_generate_statement2_seq)
                            |             ([])

if_generate_statement : label COLON IF label COLON condition GENERATE generate_statement_body if_generate_statement1_seq ELSE label COLON GENERATE generate_statement_body END GENERATE label SEMICOLON      ((W_datatypes.IF_GENERATE_STATEMENT_1(label1,label2,condition,generate_statement_body1,if_generate_statement1_seq,label3,generate_statement_body2,label4)))                                                                                                       
                      | label COLON IF label COLON condition GENERATE generate_statement_body if_generate_statement1_seq ELSE GENERATE generate_statement_body END GENERATE label SEMICOLON                  ((W_datatypes.IF_GENERATE_STATEMENT_2(label1,label2,condition,generate_statement_body1,if_generate_statement1_seq,generate_statement_body2,label3)))                                                                                         
                      | label COLON IF label COLON condition GENERATE generate_statement_body if_generate_statement1_seq ELSE label SEMICOLON                                                                ((W_datatypes.IF_GENERATE_STATEMENT_3(label1,label2,condition,generate_statement_body,if_generate_statement1_seq,label3)))                                               
                      | label COLON IF label COLON condition GENERATE generate_statement_body if_generate_statement2_seq ELSE label COLON GENERATE generate_statement_body END GENERATE label SEMICOLON      ((W_datatypes.IF_GENERATE_STATEMENT_4(label1,label2,condition,generate_statement_body1,if_generate_statement2_seq,label3,generate_statement_body2,label4)))                                                                                                       
                      | label COLON IF label COLON condition GENERATE generate_statement_body if_generate_statement2_seq ELSE GENERATE generate_statement_body END GENERATE label SEMICOLON                  ((W_datatypes.IF_GENERATE_STATEMENT_5(label1,label2,condition,generate_statement_body1,if_generate_statement2_seq,generate_statement_body2,label3)))                                                                                         
                      | label COLON IF label COLON condition GENERATE generate_statement_body if_generate_statement2_seq ELSE label SEMICOLON                                                                ((W_datatypes.IF_GENERATE_STATEMENT_6(label1,label2,condition,generate_statement_body,if_generate_statement2_seq,label3)))                                               
                      | label COLON IF label COLON condition GENERATE generate_statement_body if_generate_statement2_seq ELSE label COLON GENERATE generate_statement_body END GENERATE SEMICOLON            ((W_datatypes.IF_GENERATE_STATEMENT_7(label1,label2,condition,generate_statement_body1,if_generate_statement2_seq,label3,generate_statement_body2)))                                                                                                
                      | label COLON IF label COLON condition GENERATE generate_statement_body if_generate_statement2_seq ELSE GENERATE generate_statement_body END GENERATE SEMICOLON                        ((W_datatypes.IF_GENERATE_STATEMENT_8(label1,label2,condition,generate_statement_body1,if_generate_statement2_seq,generate_statement_body2)))                                                                                  
                      | label COLON IF label COLON condition GENERATE generate_statement_body if_generate_statement2_seq ELSE SEMICOLON                                                                      ((W_datatypes.IF_GENERATE_STATEMENT_9(label1,label2,condition,generate_statement_body,if_generate_statement2_seq)))                                        
                      | label COLON IF label COLON condition GENERATE generate_statement_body if_generate_statement1_seq ELSE label COLON GENERATE generate_statement_body END GENERATE SEMICOLON            ((W_datatypes.IF_GENERATE_STATEMENT_10(label1,label2,condition,generate_statement_body1,if_generate_statement1_seq,label,generate_statement_body2)))                                                                                                
                      | label COLON IF label COLON condition GENERATE generate_statement_body if_generate_statement1_seq ELSE GENERATE generate_statement_body END GENERATE SEMICOLON                        ((W_datatypes.IF_GENERATE_STATEMENT_11(label1,label2,condition,generate_statement_body1,if_generate_statement1_seq,generate_statement_body2)))                                                                                  
                      | label COLON IF label COLON condition GENERATE generate_statement_body if_generate_statement1_seq ELSE SEMICOLON                                                                      ((W_datatypes.IF_GENERATE_STATEMENT_12(label1,label2,condition,generate_statement_body,if_generate_statement1_seq)))                                        
                      | label COLON IF condition GENERATE generate_statement_body if_generate_statement1_seq ELSE label COLON GENERATE generate_statement_body END GENERATE label SEMICOLON                  ((W_datatypes.IF_GENERATE_STATEMENT_13(label1,condition,generate_statement_body1,if_generate_statement1_seq,label2,generate_statement_body2,label3)))                                                                                         
                      | label COLON IF condition GENERATE generate_statement_body if_generate_statement1_seq ELSE GENERATE generate_statement_body END GENERATE label SEMICOLON                              ((W_datatypes.IF_GENERATE_STATEMENT_14(label1,condition,generate_statement_body1,if_generate_statement1_seq,generate_statement_body2,label2)))                                                                                  
                      | label COLON IF condition GENERATE generate_statement_body if_generate_statement1_seq ELSE label SEMICOLON                                                                            ((W_datatypes.IF_GENERATE_STATEMENT_15(label1,condition,generate_statement_body,if_generate_statement1_seq,label2)))                                 
                      | label COLON IF condition GENERATE generate_statement_body if_generate_statement2_seq ELSE label COLON GENERATE generate_statement_body END GENERATE label SEMICOLON                  ((W_datatypes.IF_GENERATE_STATEMENT_16(label1,condition,generate_statement_body1,if_generate_statement2_seq,label2,generate_statement_body2,label3)))                                                                                         
                      | label COLON IF condition GENERATE generate_statement_body if_generate_statement2_seq ELSE GENERATE generate_statement_body END GENERATE label SEMICOLON                              ((W_datatypes.IF_GENERATE_STATEMENT_17(label1,condition,generate_statement_body1,if_generate_statement2_seq,generate_statement_body2,label2)))                                                                                  
                      | label COLON IF condition GENERATE generate_statement_body if_generate_statement2_seq ELSE label SEMICOLON                                                                            ((W_datatypes.IF_GENERATE_STATEMENT_18(label1,condition,generate_statement_body,if_generate_statement2_seq,label2)))                                 
                      | label COLON IF condition GENERATE generate_statement_body if_generate_statement2_seq ELSE label COLON GENERATE generate_statement_body END GENERATE SEMICOLON                        ((W_datatypes.IF_GENERATE_STATEMENT_19(label1,condition,generate_statement_body1,if_generate_statement2_seq,label2,generate_statement_body2)))                                                                                  
                      | label COLON IF condition GENERATE generate_statement_body if_generate_statement2_seq ELSE GENERATE generate_statement_body END GENERATE SEMICOLON                                    ((W_datatypes.IF_GENERATE_STATEMENT_20(label,condition,generate_statement_body1,if_generate_statement2_seq,generate_statement_body2)))                                                                           
                      | label COLON IF condition GENERATE generate_statement_body if_generate_statement2_seq ELSE SEMICOLON                                                                                  ((W_datatypes.IF_GENERATE_STATEMENT_21(label,condition,generate_statement_body,if_generate_statement2_seq )))                          
                      | label COLON IF condition GENERATE generate_statement_body if_generate_statement1_seq ELSE label COLON GENERATE generate_statement_body END GENERATE SEMICOLON                        ((W_datatypes.IF_GENERATE_STATEMENT_22(label1,condition,generate_statement_body1,if_generate_statement1_seq,label2,generate_statement_body2)))                                                                                  
                      | label COLON IF condition GENERATE generate_statement_body if_generate_statement1_seq ELSE GENERATE generate_statement_body END GENERATE SEMICOLON                                    ((W_datatypes.IF_GENERATE_STATEMENT_23(label,condition,generate_statement_body1,if_generate_statement1_seq,generate_statement_body2)))                                                                           
                      | label COLON IF condition GENERATE generate_statement_body if_generate_statement1_seq ELSE SEMICOLON                                                                                  ((W_datatypes.IF_GENERATE_STATEMENT_24(label,condition,generate_statement_body,if_generate_statement1_seq)))   *)                       

if_statement1 : ELSIF condition THEN sequence_of_statements        ((W_datatypes.IF_STATEMENT1(condition,sequence_of_statements)))
if_statement_seq : if_statement1 if_statement_seq                     (if_statement1 :: if_statement_seq)
                     |             ([])

if_statement : label_colon IF condition THEN sequence_of_statements if_statement_seq ELSE sequence_of_statements END IF identifier SEMICOLON        ((W_datatypes.IF_STATEMENT_1(label_colon,condition,sequence_of_statements1,if_statement_seq,sequence_of_statements2,identifier)))                                                             
             | IF condition THEN sequence_of_statements if_statement_seq ELSE sequence_of_statements END IF identifier SEMICOLON                    ((W_datatypes.IF_STATEMENT_2(condition,sequence_of_statements1,if_statement_seq,sequence_of_statements2,identifier)))                                               
             | label_colon IF condition THEN sequence_of_statements if_statement_seq END IF identifier SEMICOLON                                       ((W_datatypes.IF_STATEMENT_3(label_colon,condition,sequence_of_statements,if_statement_seq,identifier)))                          
             | IF condition THEN sequence_of_statements if_statement_seq END IF identifier SEMICOLON                                                   ((W_datatypes.IF_STATEMENT_4(condition,sequence_of_statements,if_statement_seq,identifier)))                   
             | label_colon IF condition THEN sequence_of_statements if_statement_seq END IF SEMICOLON                                             ((W_datatypes.IF_STATEMENT_5(label_colon,condition,sequence_of_statements,if_statement_seq)))                   
             | IF condition THEN sequence_of_statements if_statement_seq END IF SEMICOLON                                                         ((W_datatypes.IF_STATEMENT_6(condition,sequence_of_statements,if_statement_seq)))            
             | label_colon IF condition THEN sequence_of_statements if_statement_seq ELSE sequence_of_statements END IF SEMICOLON              ((W_datatypes.IF_STATEMENT_7(label_colon,condition,sequence_of_statements1,if_statement_seq,sequence_of_statements2)))                                                      
             | IF condition THEN sequence_of_statements if_statement_seq ELSE sequence_of_statements END IF SEMICOLON                          ((W_datatypes.IF_STATEMENT_8(condition,sequence_of_statements1,if_statement_seq,sequence_of_statements2)))                                        

(*incomplete_type_declaration : TYPE identifier SEMICOLON        ((W_datatypes.INCOMPLETE_TYPE_DECLARATION(identifier)))

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
                     | anonymous_type_indication            ((W_datatypes.INCOMPLETE_TYPE_MARK_2(anonymous_type_indication)))   *)             

index_constraint : LPARAN discrete_range discrete_range_seq RPARAN    ((W_datatypes.INDEX_CONSTRAINT(discrete_range,discrete_range_seq)))

index_specification : discrete_range ((W_datatypes.INDEX_SPECIFICATION_1(discrete_range)))
                    | expression ((W_datatypes.INDEX_SPECIFICATION_2(expression))) 

index_subtype_definition : name RANGE BOX                        ((W_datatypes.INDEX_SUBTYPE_DEFINITION(name)))

(*indexed_name : prefix LPARAN expression expression_seq RPARAN         ((W_datatypes.INDEXED_NAME(prefix,expression,expression_seq)))*)

instantiated_unit : COMPONENT name                                    ((W_datatypes.INSTANTIATED_UNIT_1(name)))
                  | name                                              ((W_datatypes.INSTANTIATED_UNIT_1(name)))
                  | ENTITY name LPARAN identifier RPARAN              ((W_datatypes.INSTANTIATED_UNIT_2(name,identifier)))                            
                  | ENTITY name                                       ((W_datatypes.INSTANTIATED_UNIT_1(name)))
                  | CONFIGURATION name                                ((W_datatypes.INSTANTIATED_UNIT_1(name)))       

instantiation_list : identifier identifier_seq       ((W_datatypes.INSTANTIATION_LIST(identifier,identifier_seq)))                    
                   | OTHERS                ((W_datatypes.Others3()))      
                   | ALL                   ((W_datatypes.All2()))      

(*digit_seq : UNDERSCORE digit digit_seq     (digit :: digit_seq)
              |   ([])*)

(*integer_incomplete_type_definition : RANGE BOX          ((W_datatypes.Range()))

integer_type_definition : range_constraint              ((W_datatypes.INTEGER_TYPE_DEFINITION(range_constraint)))*)

interface_constant_declaration : CONSTANT identifier_list COLON IN subtype_indication ASSIGN expression         ((W_datatypes.INTERFACE_CONSTANT_DECLARATION_1(identifier_list,subtype_indication,expression)))                              
                               | CONSTANT identifier_list COLON IN subtype_indication ((W_datatypes.INTERFACE_CONSTANT_DECLARATION_2(identifier_list,subtype_indication)))  
                               | identifier_list COLON IN subtype_indication ASSIGN expression ((W_datatypes.INTERFACE_CONSTANT_DECLARATION_1(identifier_list,subtype_indication,expression)))                              
                               | identifier_list COLON IN subtype_indication       ((W_datatypes.INTERFACE_CONSTANT_DECLARATION_2(identifier_list,subtype_indication)))  
                               | CONSTANT identifier_list COLON subtype_indication ASSIGN expression     ((W_datatypes.INTERFACE_CONSTANT_DECLARATION_1(identifier_list,subtype_indication,expression)))                              
                               | CONSTANT identifier_list COLON subtype_indication     ((W_datatypes.INTERFACE_CONSTANT_DECLARATION_2(identifier_list,subtype_indication)))
                               | identifier_list COLON subtype_indication ASSIGN expression ((W_datatypes.INTERFACE_CONSTANT_DECLARATION_1(identifier_list,subtype_indication,expression)))                              
                               | identifier_list COLON subtype_indication       ((W_datatypes.INTERFACE_CONSTANT_DECLARATION_2(identifier_list,subtype_indication)))  

interface_declaration : interface_constant_declaration              ((W_datatypes.INTERFACE_DECLARATION_1(interface_constant_declaration)))    
                      | interface_signal_declaration                ((W_datatypes.INTERFACE_DECLARATION_2(interface_signal_declaration)))    
                      | interface_variable_declaration          ((W_datatypes.INTERFACE_DECLARATION_3(interface_variable_declaration)))           
                      | interface_file_declaration             ((W_datatypes.INTERFACE_DECLARATION_4(interface_file_declaration)))
                      | interface_terminal_declaration             ((W_datatypes.INTERFACE_DECLARATION_5(interface_terminal_declaration)))  
                      | interface_quantity_declaration             ((W_datatypes.INTERFACE_DECLARATION_6(interface_quantity_declaration)))  

interface_element_seq : SEMICOLON interface_element interface_element_seq           (interface_element :: interface_element_seq)
                     |             ([])

interface_element : interface_declaration               ((W_datatypes.INTERFACE_ELEMENT(interface_declaration)))

interface_file_declaration : FILE identifier_list COLON subtype_indication          ((W_datatypes.INTERFACE_FILE_DECLARATION(identifier_list,subtype_indication)))

(*interface_function_specification : PURE FUNCTION designator PARAMETER LPARAN formal_parameter_list RPARAN RETURN type_mark          ((W_datatypes.INTERFACE_FUNCTION_SPECIFICATION_1(designator,formal_parameter_list,type_mark)))                                                         
                                 | PURE FUNCTION designator LPARAN formal_parameter_list RPARAN RETURN type_mark                    ((W_datatypes.INTERFACE_FUNCTION_SPECIFICATION_1(designator,formal_parameter_list,type_mark)))                                                         
                                 | PURE FUNCTION designator RETURN type_mark                                                        ((W_datatypes.INTERFACE_FUNCTION_SPECIFICATION_2(designator,type_mark)))        
                                 | IMPURE FUNCTION designator PARAMETER LPARAN formal_parameter_list RPARAN RETURN type_mark          ((W_datatypes.INTERFACE_FUNCTION_SPECIFICATION_1(designator,formal_parameter_list,type_mark)))                                                         
                                 | IMPURE FUNCTION designator LPARAN formal_parameter_list RPARAN RETURN type_mark                    ((W_datatypes.INTERFACE_FUNCTION_SPECIFICATION_1(designator,formal_parameter_list,type_mark)))                                                         
                                 | IMPURE FUNCTION designator RETURN type_mark                                                        ((W_datatypes.INTERFACE_FUNCTION_SPECIFICATION_2(designator,type_mark)))        
                                 | FUNCTION designator PARAMETER LPARAN formal_parameter_list RPARAN RETURN type_mark          ((W_datatypes.INTERFACE_FUNCTION_SPECIFICATION_1(designator,formal_parameter_list,type_mark)))                                                         
                                 | FUNCTION designator LPARAN formal_parameter_list RPARAN RETURN type_mark                    ((W_datatypes.INTERFACE_FUNCTION_SPECIFICATION_1(designator,formal_parameter_list,type_mark)))                                                         
                                 | FUNCTION designator RETURN type_mark                                                        ((W_datatypes.INTERFACE_FUNCTION_SPECIFICATION_2(designator,type_mark)))   *)     

interface_signal_list : interface_signal_declaration interface_signal_declaration_seq ((W_datatypes.INTERFACE_SIGNAL_LIST(interface_signal_declaration,interface_signal_declaration_seq)))

interface_signal_declaration_seq : SEMICOLON interface_signal_declaration interface_signal_declaration_seq           (interface_signal_declaration :: interface_signal_declaration_seq)
                     |             ([])

interface_port_list : interface_port_declaration interface_port_declaration_seq ((W_datatypes.INTERFACE_PORT_LIST(interface_port_declaration,interface_port_declaration_seq)))

interface_port_declaration_seq : SEMICOLON interface_port_declaration interface_port_declaration_seq           (interface_port_declaration :: interface_port_declaration_seq)
                     |             ([])
(*
interface_incomplete_type_declaration : TYPE identifier               ((W_datatypes.INTERFACE_INCOMPLETE_TYPE_DECLARATION(identifier)))*)

interface_list : interface_element interface_element_seq              ((W_datatypes.INTERFACE_LIST(interface_element,interface_element_seq)))

(*interface_object_declaration : interface_constant_declaration         ((W_datatypes.INTERFACE_OBJECT_DECLARATION_1(interface_constant_declaration)))
                             | interface_signal_declaration           ((W_datatypes.INTERFACE_OBJECT_DECLARATION_2(interface_signal_declaration)))
                             | interface_variable_declaration         ((W_datatypes.INTERFACE_OBJECT_DECLARATION_3(interface_variable_declaration)))
                             | interface_file_declaration             ((W_datatypes.INTERFACE_OBJECT_DECLARATION_4(interface_file_declaration)))*)

(*interface_package_declaration : PACKAGE identifier IS NEW name interface_package_generic_map_aspect        ((W_datatypes.INTERFACE_PACKAGE_DECLARATION(identifier,name,interface_package_generic_map_aspect)))

interface_package_generic_map_aspect : generic_map_aspect                           ((W_datatypes.INTERFACE_PACKAGE_GENERIC_MAP_ASPECT_1(generic_map_aspect)))
                                     | GENERIC MAP LPARAN BOX RPARAN                ((W_datatypes.INTERFACE_PACKAGE_GENERIC_MAP_ASPECT_2()))       
                                     | GENERIC MAP LPARAN DEFAULT RPARAN            ((W_datatypes.INTERFACE_PACKAGE_GENERIC_MAP_ASPECT_3()))              

interface_procedure_specification : PROCEDURE designator PARAMETER LPARAN formal_parameter_list RPARAN        ((W_datatypes.INTERFACE_PROCEDURE_SPECIFICATION_1(designator, formal_parameter_list)))                              
                                  | PROCEDURE designator LPARAN formal_parameter_list RPARAN                  ((W_datatypes.INTERFACE_PROCEDURE_SPECIFICATION_1(designator, formal_parameter_list)))                                     
                                  | PROCEDURE designator                                                      ((W_datatypes.INTERFACE_PROCEDURE_SPECIFICATION_2(designator)))     *)    

interface_quantity_declaration : QUANTITY identifier_list COLON IN subtype_indication ASSIGN expression (W_datatypes.INTERFACE_QUANTITY_DECLARATION_3())
                               | QUANTITY identifier_list COLON OUT subtype_indication ASSIGN expression (W_datatypes.INTERFACE_QUANTITY_DECLARATION_3())
                               | QUANTITY identifier_list COLON subtype_indication ASSIGN expression (W_datatypes.INTERFACE_QUANTITY_DECLARATION_3())
                               | QUANTITY identifier_list COLON IN subtype_indication (W_datatypes.INTERFACE_QUANTITY_DECLARATION_3())
                               | QUANTITY identifier_list COLON OUT subtype_indication (W_datatypes.INTERFACE_QUANTITY_DECLARATION_3())
                               | QUANTITY identifier_list COLON subtype_indication (W_datatypes.INTERFACE_QUANTITY_DECLARATION_3())

interface_port_declaration : identifier_list COLON signal_mode subtype_indication BUS ASSIGN expression ((W_datatypes.INTERFACE_PORT_DECLARATION_1(identifier_list,signal_mode,subtype_indication,expression)))
                           | identifier_list COLON signal_mode subtype_indication ASSIGN expression ((W_datatypes.INTERFACE_PORT_DECLARATION_1(identifier_list,signal_mode,subtype_indication,expression)))
                           | identifier_list COLON signal_mode subtype_indication BUS ((W_datatypes.INTERFACE_PORT_DECLARATION_2(identifier_list,signal_mode,subtype_indication)))
                           | identifier_list COLON signal_mode subtype_indication ((W_datatypes.INTERFACE_PORT_DECLARATION_2(identifier_list,signal_mode,subtype_indication)))
                           | identifier_list COLON subtype_indication BUS ASSIGN expression ((W_datatypes.INTERFACE_PORT_DECLARATION_3(identifier_list,subtype_indication,expression)))
                           | identifier_list COLON subtype_indication ASSIGN expression ((W_datatypes.INTERFACE_PORT_DECLARATION_3(identifier_list,subtype_indication,expression)))
                           | identifier_list COLON subtype_indication BUS ((W_datatypes.INTERFACE_PORT_DECLARATION_4(identifier_list,subtype_indication)))
                           | identifier_list COLON subtype_indication ((W_datatypes.INTERFACE_PORT_DECLARATION_4(identifier_list,subtype_indication)))

interface_signal_declaration : SIGNAL identifier_list COLON signal_mode subtype_indication BUS ASSIGN expression         ((W_datatypes.INTERFACE_SIGNAL_DECLARATION_3(identifier_list,signal_mode,subtype_indication,expression)))                            
                             | SIGNAL identifier_list COLON signal_mode subtype_indication BUS                                       ((W_datatypes.INTERFACE_SIGNAL_DECLARATION_4(identifier_list,signal_mode,subtype_indication)))
                             | SIGNAL identifier_list COLON subtype_indication BUS ASSIGN expression         ((W_datatypes.INTERFACE_SIGNAL_DECLARATION_1(identifier_list,subtype_indication,expression)))                            
                             | SIGNAL identifier_list COLON subtype_indication BUS                                       ((W_datatypes.INTERFACE_SIGNAL_DECLARATION_2(identifier_list,subtype_indication)))
                             | SIGNAL identifier_list COLON subtype_indication ASSIGN expression         ((W_datatypes.INTERFACE_SIGNAL_DECLARATION_1(identifier_list,subtype_indication,expression)))                            
                             | SIGNAL identifier_list COLON subtype_indication                                       ((W_datatypes.INTERFACE_SIGNAL_DECLARATION_2(identifier_list,subtype_indication)))
                             | SIGNAL identifier_list COLON signal_mode subtype_indication ASSIGN expression         ((W_datatypes.INTERFACE_SIGNAL_DECLARATION_3(identifier_list,signal_mode,subtype_indication,expression)))                            
                             | SIGNAL identifier_list COLON signal_mode subtype_indication                                       ((W_datatypes.INTERFACE_SIGNAL_DECLARATION_4(identifier_list,signal_mode,subtype_indication)))

interface_terminal_declaration : TERMINAL identifier_list COLON subnature_indication (W_datatypes.INTERFACE_TERMINAL_DECLARATION(identifier_list,subnature_indication))

(*interface_subprogram_declaration : interface_subprogram_specification IS interface_subprogram_default           ((W_datatypes.INTERFACE_SUBPROGRAM_DECLARATION_1(interface_subprogram_specification,interface_subprogram_default)))                                          
                                 | interface_subprogram_specification                                           ((W_datatypes.INTERFACE_SUBPROGRAM_DECLARATION_2(interface_subprogram_specification)))       

interface_subprogram_default : name                    ((W_datatypes.INTERFACE_SUBPROGRAM_DEFAULT_1(name)))                      
                             | BOX                     ((W_datatypes.INTERFACE_SUBPROGRAM_DEFAULT_2()))        

interface_subprogram_specification : interface_procedure_specification          ((W_datatypes.INTERFACE_SUBPROGRAM_SPECIFICATION_1(interface_procedure_specification)))           
                                   | interface_function_specification           ((W_datatypes.INTERFACE_SUBPROGRAM_SPECIFICATION_2(interface_function_specification)))    

interface_type_declaration : interface_incomplete_type_declaration              ((W_datatypes.INTERFACE_TYPE_DECLARATION(interface_incomplete_type_declaration)))

interface_type_indication : subtype_indication                     ((W_datatypes.INTERFACE_TYPE_INDICATION_1(subtype_indication)))   
                          | anonymous_type_indication              ((W_datatypes.INTERFACE_TYPE_INDICATION_2(anonymous_type_indication)))   *)       

interface_variable_declaration : VARIABLE identifier_list COLON signal_mode subtype_indication ASSIGN expression             ((W_datatypes.INTERFACE_VARIABLE_DECLARATION_1(identifier_list,signal_mode ,subtype_indication,expression)))                             
                               | VARIABLE identifier_list COLON signal_mode subtype_indication                               ((W_datatypes.INTERFACE_VARIABLE_DECLARATION_2(identifier_list,signal_mode,subtype_indication))) 
                               | VARIABLE identifier_list COLON subtype_indication ASSIGN expression             ((W_datatypes.INTERFACE_VARIABLE_DECLARATION_3(identifier_list ,subtype_indication,expression)))
                               | VARIABLE identifier_list COLON subtype_indication              ((W_datatypes.INTERFACE_VARIABLE_DECLARATION_4(identifier_list,subtype_indication)))
                               | identifier_list COLON signal_mode subtype_indication ASSIGN expression             ((W_datatypes.INTERFACE_VARIABLE_DECLARATION_1(identifier_list,signal_mode ,subtype_indication,expression)))                             
                               | identifier_list COLON signal_mode subtype_indication                               ((W_datatypes.INTERFACE_VARIABLE_DECLARATION_2(identifier_list,signal_mode,subtype_indication))) 
                               | identifier_list COLON subtype_indication ASSIGN expression             ((W_datatypes.INTERFACE_VARIABLE_DECLARATION_3(identifier_list ,subtype_indication,expression)))
                               | identifier_list COLON subtype_indication              ((W_datatypes.INTERFACE_VARIABLE_DECLARATION_4(identifier_list,subtype_indication)))

iteration_scheme : WHILE condition                      ((W_datatypes.ITERATION_SCHEME_1(condition)))       
                 | FOR parameter_specification          ((W_datatypes.ITERATION_SCHEME_2(parameter_specification)))                     

(*label_seq : COMMA label label_seq                (label :: label_seq)
              |             ([])

label : identifier                               ((W_datatypes.LABEL(identifier)))

letter : upper_case_letter                       ((W_datatypes.LETTER_1(upper_case_letter)))
       | lower_case_letter                       ((W_datatypes.LETTER_2(lower_case_letter)))

letter_or_digit_seq : UNDERSCORE letter_or_digit letter_or_digit_seq       (letter_or_digit :: letter_or_digit_seq)
                    |    ([])

letter_or_digit : letter           ((W_datatypes.LETTER_OR_DIGIT_1(letter)))
                | digit            ((W_datatypes.LETTER_OR_DIGIT_2(digit)))*)

library_clause : LIBRARY logical_name_list SEMICOLON       ((W_datatypes.LIBRARY_CLAUSE(logical_name_list)))

library_unit : primary_unit            ((W_datatypes.LIBRARY_UNIT_1(primary_unit)))   
             | secondary_unit          ((W_datatypes.LIBRARY_UNIT_2(secondary_unit)))          

literal : NULL                          ((W_datatypes.Null()))  
		| bit_string_literal            ((W_datatypes.LITERAL_4(bit_string_literal)))
		| string_literal                ((W_datatypes.LITERAL_3(string_literal)))
		| numeric_literal               ((W_datatypes.LITERAL_1(numeric_literal)))         
        | enumeration_literal           ((W_datatypes.LITERAL_2(enumeration_literal)))              

(*relation1_seq : AND relation relation1_seq              (relation :: relation1_seq)
              |      ([])

relation2_seq : OR relation relation2_seq              (relation :: relation2_seq)
              |      ([])

relation3_seq : XOR relation relation3_seq              (relation :: relation3_seq)
              |      ([])

relation4_seq : XNOR relation relation4_seq              (relation :: relation4_seq)
              |      ([])                            

logical_expression : relation relation1_seq            ((W_datatypes.LOGICAL_EXPRESSION_1(relation,relation1_seq)))                      
                   | relation relation2_seq            ((W_datatypes.LOGICAL_EXPRESSION_1(relation,relation2_seq)))                      
                   | relation relation3_seq            ((W_datatypes.LOGICAL_EXPRESSION_1(relation,relation3_seq)))                      
                   | relation NAND relation            ((W_datatypes.LOGICAL_EXPRESSION_2(relation1,relation2)))                      
                   | relation NOR relation             ((W_datatypes.LOGICAL_EXPRESSION_2(relation1,relation2)))     *)                 
                   (* | relation                          ((W_datatypes.LOGICAL_EXPRESSION_3(relation)))         *)
(*                   | relation relation4_seq            ((W_datatypes.LOGICAL_EXPRESSION_1(relation,relation4_seq)))  *)                    

logical_name_seq : COMMA logical_name logical_name_seq          (logical_name :: logical_name_seq)
              |             ([])

logical_name : identifier                        ((W_datatypes.LOGICAL_NAME(identifier)))

logical_name_list : logical_name logical_name_seq              ((W_datatypes.LOGICAL_NAME_LIST(logical_name,logical_name_seq)))

logical_operator : AND             ((W_datatypes.And()))
                 | OR              ((W_datatypes.Or()))
                 | NAND            ((W_datatypes.Nand()))
                 | NOR             ((W_datatypes.Nor()))
                 | XOR             ((W_datatypes.Xor()))
                 | XNOR            ((W_datatypes.Xnor()))

loop_statement : label_colon iteration_scheme LOOP sequence_of_statements END LOOP identifier SEMICOLON            ((W_datatypes.LOOP_STATEMENT_1(label_colon,iteration_scheme,sequence_of_statements,identifier)))                                            
               | label_colon LOOP sequence_of_statements END LOOP identifier SEMICOLON                             ((W_datatypes.LOOP_STATEMENT_2(label_colon,sequence_of_statements,identifier)))                       
               | label_colon iteration_scheme LOOP sequence_of_statements END LOOP SEMICOLON                  ((W_datatypes.LOOP_STATEMENT_3(label_colon,iteration_scheme,sequence_of_statements)))                                     
               | label_colon LOOP sequence_of_statements END LOOP SEMICOLON                                   ((W_datatypes.LOOP_STATEMENT_4(label_colon,sequence_of_statements)))                
               | iteration_scheme LOOP sequence_of_statements END LOOP SEMICOLON                              ((W_datatypes.LOOP_STATEMENT_5(iteration_scheme,sequence_of_statements)))                       
               | LOOP sequence_of_statements END LOOP SEMICOLON                                               ((W_datatypes.LOOP_STATEMENT_6(sequence_of_statements)))         
               | iteration_scheme LOOP sequence_of_statements END LOOP identifier SEMICOLON                        ((W_datatypes.LOOP_STATEMENT_7(iteration_scheme,sequence_of_statements,identifier)))                              
               | LOOP sequence_of_statements END LOOP identifier SEMICOLON                                         ((W_datatypes.LOOP_STATEMENT_8(sequence_of_statements,identifier)))         
(*
miscellaneous_operator : EXP              ((W_datatypes.Expt()))
                       | ABS              ((W_datatypes.Abs()))
                       | NOT              ((W_datatypes.Not()))*)

signal_mode : IN                  ((W_datatypes.In1())) 
            | OUT                 ((W_datatypes.Out1())) 
            | INOUT               ((W_datatypes.Inout())) 
            | BUFFER              ((W_datatypes.Buffer()))        
            | LINKAGE             ((W_datatypes.Linkage()))        

(* mode_indication : simple_mode_indication                ((W_datatypes.MODE_INDICATION_1(simple_mode_indication)))
                | mode_view_indication                  ((W_datatypes.MODE_INDICATION_2(mode_view_indication))) *)

(*mode_view_declaration : VIEW identifier OF subtype_indication IS mode_view_element_definition_seq END VIEW simple_name SEMICOLON           ((W_datatypes.MODE_VIEW_DECLARATION_1(identifier,subtype_indication,mode_view_element_definition_seq,simple_name)))               
                      | VIEW identifier OF subtype_indication IS mode_view_element_definition_seq END VIEW SEMICOLON                       ((W_datatypes.MODE_VIEW_DECLARATION_2(identifier,subtype_indication,mode_view_element_definition_seq))) 

mode_view_element_definition_seq : mode_view_element_definition mode_view_element_definition_seq                (mode_view_element_definition :: mode_view_element_definition_seq)
                                   |             ([])

mode_view_element_definition : record_element_list COLON element_mode_indication SEMICOLON               ((W_datatypes.MODE_VIEW_ELEMENT_DEFINITION(record_element_list,element_mode_indication)))*)

(* mode_view_indication : record_mode_view_indication             ((W_datatypes.MODE_VIEW_INDICATION_1(record_mode_view_indication)))
                     | array_mode_view_indication              ((W_datatypes.MODE_VIEW_INDICATION_2(array_mode_view_indication))) *)

multiplying_operator : MULT            ((W_datatypes.Mult()))          
                     | DIV             ((W_datatypes.Div()))   
                     | MOD             ((W_datatypes.Mod()))   
                     | REM             ((W_datatypes.Rem()))   

name_seq : COMMA name name_seq            (name :: name_seq)
       |      ([])

name_part_seq : name_part name_part_seq (name_part :: name_part_seq)
              | ([])

name : identifier name_part_seq        ((W_datatypes.NAME_9(identifier,name_part_seq)))
     | string_literal name_part_seq    ((W_datatypes.NAME_10(string_literal,name_part_seq)))
(*     | simple_name                      ((W_datatypes.NAME_1(simple_name)))  
     | operator_symbol                  ((W_datatypes.NAME_2(operator_symbol)))         
     | character_literal                ((W_datatypes.NAME_3(character_literal)))         
     | selected_name                    ((W_datatypes.NAME_4(selected_name)))  
     | indexed_name                     ((W_datatypes.NAME_5(indexed_name)))  
     | slice_name                       ((W_datatypes.NAME_6(slice_name)))  
     | attribute_name                   ((W_datatypes.NAME_7(attribute_name)))         
     | external_name                    ((W_datatypes.NAME_8(external_name))) *)

name_part : selected_name_part  ((W_datatypes.NAME_PART_1(selected_name_part)))
          | function_call_or_indexed_name_part  ((W_datatypes.NAME_PART_2(function_call_or_indexed_name_part)))
          | slice_name_part  ((W_datatypes.NAME_PART_3(slice_name_part)))
          | attribute_name_part  ((W_datatypes.NAME_PART_4(attribute_name_part)))

selected_name : identifier suffix_seq ((W_datatypes.SELECTED_NAME(identifier,suffix_seq)))

selected_name_seq : COMMA selected_name selected_name_seq (selected_name :: selected_name_seq)
				  | ([])

suffix_seq : DOT suffix suffix_seq (suffix::suffix_seq)
           | ([])

selected_name_part : DOT suffix suffix_seq ((W_datatypes.SELECTED_NAME_PART(suffix::suffix_seq)))

function_call_or_indexed_name_part : LPARAN actual_parameter_part RPARAN ((W_datatypes.FCINP(actual_parameter_part)))

slice_name_part : LPARAN discrete_range RPARAN ((W_datatypes.SLICE_NAME_PART(discrete_range)))

attribute_name_part : signatur TICK attribute_designator LPARAN expression RPARAN ((W_datatypes.ATTRIBUTE_NAME_PART_1(signatur,attribute_designator,expression)))
                    | signatur TICK attribute_designator ((W_datatypes.ATTRIBUTE_NAME_PART_2(signatur,attribute_designator)))
                    | TICK attribute_designator LPARAN expression RPARAN ((W_datatypes.ATTRIBUTE_NAME_PART_3(attribute_designator,expression)))
                    | TICK attribute_designator ((W_datatypes.ATTRIBUTE_NAME_PART_4(attribute_designator)))

nature_declaration : NATURE identifier IS nature_definition SEMICOLON ((W_datatypes.NATURE_DECLARATION(identifier,nature_definition)))

nature_definition : scalar_nature_definition ((W_datatypes.NATURE_DEFINITION_1(scalar_nature_definition)))
                  | composite_nature_definition ((W_datatypes.NATURE_DEFINITION_2(composite_nature_definition)))

nature_element_declaration : identifier_list COLON element_subnature_definition ((W_datatypes.NATURE_ELEMENT_DECLARATION(identifier_list,element_subnature_definition)))

next_statement : label_colon NEXT identifier WHEN condition SEMICOLON         ((W_datatypes.NEXT_STATEMENT_1(label_colon,identifier,condition)))                                       
               | NEXT identifier WHEN condition SEMICOLON                     ((W_datatypes.NEXT_STATEMENT_8(identifier,condition)))                         
               | label_colon NEXT WHEN condition SEMICOLON               ((W_datatypes.NEXT_STATEMENT_2(label_colon,condition)))                                
               | NEXT WHEN condition SEMICOLON                           ((W_datatypes.NEXT_STATEMENT_3(condition)))                  
               | label_colon NEXT SEMICOLON                              ((W_datatypes.NEXT_STATEMENT_4(label_colon)))                  
               | NEXT identifier SEMICOLON                                    ((W_datatypes.NEXT_STATEMENT_7(identifier)))           
               | label_colon NEXT identifier SEMICOLON                        ((W_datatypes.NEXT_STATEMENT_5(label_colon,identifier)))                         
               | NEXT SEMICOLON                                          ((W_datatypes.NEXT_STATEMENT_6()))  
(*
null_statement : label COLON NULL SEMICOLON                  ((W_datatypes.NULL_STATEMENT_1(label)))                
               | NULL SEMICOLON                              ((W_datatypes.NULL_STATEMENT_2()))  *)

numeric_literal : abstract_literal              ((W_datatypes.NUMERIC_LITERAL_1(abstract_literal)))       
                | physical_literal              ((W_datatypes.NUMERIC_LITERAL_2(physical_literal)))

(* object_declaration : constant_declaration        ((W_datatypes.OBJECT_DECLARATION_1(constant_declaration)))
                   | signal_declaration          ((W_datatypes.OBJECT_DECLARATION_2(signal_declaration)))
                   | variable_declaration        ((W_datatypes.OBJECT_DECLARATION_3(variable_declaration)))
                   | file_declaration            ((W_datatypes.OBJECT_DECLARATION_4(file_declaration))) *)

(*operator_symbol : string_literal                 ((W_datatypes.OPERATOR_SYMBOL(string_literal)))*)

opts : GUARDED delay_mechanism ((W_datatypes.OPTS_1(delay_mechanism)))
     | GUARDED ((W_datatypes.OPTS_2()))
     | delay_mechanism ((W_datatypes.OPTS_1(delay_mechanism)))
     | ((W_datatypes.OPTS_2()))

package_body : PACKAGE BODY identifier IS package_body_declarative_part END PACKAGE BODY identifier SEMICOLON         ((W_datatypes.PACKAGE_BODY_1(identifier1,package_body_declarative_part,identifier2)))             
             | PACKAGE BODY identifier IS package_body_declarative_part END PACKAGE BODY SEMICOLON                     ((W_datatypes.PACKAGE_BODY_2(identifier,package_body_declarative_part)))      
             | PACKAGE BODY identifier IS package_body_declarative_part END identifier SEMICOLON         ((W_datatypes.PACKAGE_BODY_1(identifier1,package_body_declarative_part,identifier2)))             
             | PACKAGE BODY identifier IS package_body_declarative_part END SEMICOLON                     ((W_datatypes.PACKAGE_BODY_2(identifier,package_body_declarative_part)))      

package_body_declarative_item_seq : package_body_declarative_item package_body_declarative_item_seq             (package_body_declarative_item :: package_body_declarative_item_seq)
                                   |             ([])

package_body_declarative_item : subprogram_declaration                          ((W_datatypes.PACKAGE_BODY_DECLARATIVE_ITEM_1(subprogram_declaration)))           
                              | subprogram_body                                 ((W_datatypes.PACKAGE_BODY_DECLARATIVE_ITEM_2(subprogram_body)))    
                              (*| subprogram_instantiation_declaration            ((W_datatypes.PACKAGE_BODY_DECLARATIVE_ITEM_3(subprogram_instantiation_declaration)))                         
                              | package_declaration                             ((W_datatypes.PACKAGE_BODY_DECLARATIVE_ITEM_4(package_declaration)))           
                              | package_body                                    ((W_datatypes.PACKAGE_BODY_DECLARATIVE_ITEM_5(package_body)))    
                              | package_instantiation_declaration               ((W_datatypes.PACKAGE_BODY_DECLARATIVE_ITEM_6(package_instantiation_declaration)))          *)               
                              | type_declaration                                ((W_datatypes.PACKAGE_BODY_DECLARATIVE_ITEM_3(type_declaration)))    
                              | subtype_declaration                             ((W_datatypes.PACKAGE_BODY_DECLARATIVE_ITEM_4(subtype_declaration)))           
               (*               | mode_view_declaration                           ((W_datatypes.PACKAGE_BODY_DECLARATIVE_ITEM_9(mode_view_declaration)))      *)     
                              | constant_declaration                            ((W_datatypes.PACKAGE_BODY_DECLARATIVE_ITEM_5(constant_declaration)))           
                              | variable_declaration                            ((W_datatypes.PACKAGE_BODY_DECLARATIVE_ITEM_6(variable_declaration)))           
                              | file_declaration                                ((W_datatypes.PACKAGE_BODY_DECLARATIVE_ITEM_7(file_declaration)))    
                              | alias_declaration                               ((W_datatypes.PACKAGE_BODY_DECLARATIVE_ITEM_8(alias_declaration)))           
  (*                            | attribute_declaration                           ((W_datatypes.PACKAGE_BODY_DECLARATIVE_ITEM_14(attribute_declaration)))           
                              | attribute_specification                         ((W_datatypes.PACKAGE_BODY_DECLARATIVE_ITEM_15(attribute_specification))) *)          
                              | use_clause                                      ((W_datatypes.PACKAGE_BODY_DECLARATIVE_ITEM_9(use_clause)))    
                              | group_template_declaration                      ((W_datatypes.PACKAGE_BODY_DECLARATIVE_ITEM_10(group_template_declaration)))                  
                              | group_declaration                               ((W_datatypes.PACKAGE_BODY_DECLARATIVE_ITEM_11(group_declaration)))           

package_body_declarative_part : package_body_declarative_item_seq                   ((W_datatypes.PACKAGE_BODY_DECLARATIVE_PART(package_body_declarative_item_seq)))

package_declaration : PACKAGE identifier IS package_declarative_part END PACKAGE identifier SEMICOLON            ((W_datatypes.PACKAGE_DECLARATION_1(identifier1,package_declarative_part,identifier2)))           
                    | PACKAGE identifier IS package_declarative_part END PACKAGE SEMICOLON                        ((W_datatypes.PACKAGE_DECLARATION_2(identifier,package_declarative_part)))     
                    | PACKAGE identifier IS package_declarative_part END identifier SEMICOLON            ((W_datatypes.PACKAGE_DECLARATION_1(identifier1,package_declarative_part,identifier2)))           
                    | PACKAGE identifier IS package_declarative_part END SEMICOLON                        ((W_datatypes.PACKAGE_DECLARATION_2(identifier,package_declarative_part)))     

package_declarative_item_seq : package_declarative_item package_declarative_item_seq              (package_declarative_item :: package_declarative_item_seq)
                            |             ([])

package_declarative_item : subprogram_declaration          ((W_datatypes.PACKAGE_DECLARATIVE_ITEM_1(subprogram_declaration)))             
                         | subprogram_body ((W_datatypes.PACKAGE_DECLARATIVE_ITEM_2(subprogram_body)))                           
                         (*| package_declaration                                ((W_datatypes.PACKAGE_DECLARATIVE_ITEM_3(package_declaration)))      
                         | package_instantiation_declaration                  ((W_datatypes.PACKAGE_DECLARATIVE_ITEM_4(package_instantiation_declaration)))*)                    
                         | type_declaration                                   ((W_datatypes.PACKAGE_DECLARATIVE_ITEM_3(type_declaration)))      
                         | subtype_declaration                                ((W_datatypes.PACKAGE_DECLARATIVE_ITEM_4(subtype_declaration)))      
                         | constant_declaration                               ((W_datatypes.PACKAGE_DECLARATIVE_ITEM_5(constant_declaration)))      
                         | signal_declaration                                 ((W_datatypes.PACKAGE_DECLARATIVE_ITEM_6(signal_declaration)))      
                         | variable_declaration                               ((W_datatypes.PACKAGE_DECLARATIVE_ITEM_7(variable_declaration)))      
                         | file_declaration                                   ((W_datatypes.PACKAGE_DECLARATIVE_ITEM_8(file_declaration)))      
                         | alias_declaration                                  ((W_datatypes.PACKAGE_DECLARATIVE_ITEM_9(alias_declaration)))      
                         | component_declaration                              ((W_datatypes.PACKAGE_DECLARATIVE_ITEM_10(component_declaration)))      
                         | attribute_declaration                              ((W_datatypes.PACKAGE_DECLARATIVE_ITEM_11(attribute_declaration)))      
                         | attribute_specification                            ((W_datatypes.PACKAGE_DECLARATIVE_ITEM_12(attribute_specification)))             
                         | disconnection_specification                        ((W_datatypes.PACKAGE_DECLARATIVE_ITEM_13(disconnection_specification)))             
                         | use_clause                                         ((W_datatypes.PACKAGE_DECLARATIVE_ITEM_14(use_clause)))
                         | group_template_declaration                         ((W_datatypes.PACKAGE_DECLARATIVE_ITEM_15(group_template_declaration)))             
                         | group_declaration                                  ((W_datatypes.PACKAGE_DECLARATIVE_ITEM_16(group_declaration))) 
                         | nature_declaration                                  ((W_datatypes.PACKAGE_DECLARATIVE_ITEM_17(nature_declaration)))   
                         | subnature_declaration                                  ((W_datatypes.PACKAGE_DECLARATIVE_ITEM_18(subnature_declaration)))    
                         | terminal_declaration                                  ((W_datatypes.PACKAGE_DECLARATIVE_ITEM_19(terminal_declaration))) 

package_declarative_part : package_declarative_item_seq                      ((W_datatypes.PACKAGE_DECLARATIVE_PART(package_declarative_item_seq)))

(*package_header : generic_clause generic_map_aspect SEMICOLON ((W_datatypes.PACKAGE_HEADER_1(generic_clause,generic_map_aspect)))
               | generic_clause ((W_datatypes.PACKAGE_HEADER_3(generic_clause)))
               | ((W_datatypes.PACKAGE_HEADER_4()))*)

(*package_instantiation_declaration : PACKAGE identifier IS NEW name generic_map_aspect SEMICOLON ((W_datatypes.PACKAGE_INSTANTIATION_DECLARATION_1(identifier,name,generic_map_aspect)))
                                  | PACKAGE identifier IS NEW name SEMICOLON ((W_datatypes.PACKAGE_INSTANTIATION_DECLARATION_2(identifier,name)))

p_simple_name_seq : simple_name DOT p_simple_name_seq          (simple_name :: p_simple_name_seq)
                     |      ([])

package_pathname : ADT name DOT p_simple_name_seq simple_name ((W_datatypes.PACKAGE_PATHNAME(name,p_simple_name_seq,simple_name)))

parameter_map_aspect : PARAMETER MAP LPARAN association_list RPARAN ((W_datatypes.PARAMETER_MAP_ASPECT(association_list)))
                     | LPARAN association_list RPARAN ((W_datatypes.PARAMETER_MAP_ASPECT(association_list)))*)

parameter_specification : identifier IN discrete_range ((W_datatypes.PARAMETER_SPECIFICATION(identifier,discrete_range)))

(*pathname_element_seq : pathname_element DOT pathname_element_seq             (pathname_element :: pathname_element_seq)
                     |      ([])

partial_pathname : pathname_element_seq simple_name ((W_datatypes.PARTIAL_PATHNAME(pathname_element_seq,simple_name)))

pathname_element : simple_name ((W_datatypes.PATHNAME_ELEMENT_1(simple_name)))
                 | label ((W_datatypes.PATHNAME_ELEMENT_3(label)))
                 | label LPARAN expression RPARAN ((W_datatypes.PATHNAME_ELEMENT_2(label,expression)))*)

(*physical_incomplete_type_definition : UNITS BOX ((W_datatypes.PHYSICAL_INCOMPLETE_TYPE_DEFINITION()))*)

physical_literal : abstract_literal identifier ((W_datatypes.PHYSICAL_LITERAL_1(abstract_literal,identifier)))
                 | identifier ((W_datatypes.PHYSICAL_LITERAL_2(identifier)))

secondary_unit_declaration_seq : secondary_unit_declaration secondary_unit_declaration_seq                      (secondary_unit_declaration :: secondary_unit_declaration_seq)
                                   |             ([])

physical_type_definition : range_constraint UNITS base_unit_declaration secondary_unit_declaration_seq END UNITS identifier ((W_datatypes.PHYSICAL_TYPE_DEFINITION_2(range_constraint,base_unit_declaration,secondary_unit_declaration_seq,identifier)))
                         | range_constraint UNITS base_unit_declaration secondary_unit_declaration_seq END UNITS ((W_datatypes.PHYSICAL_TYPE_DEFINITION_1(range_constraint,base_unit_declaration,secondary_unit_declaration_seq)))

(*plain_return_statement : label COLON RETURN WHEN condition SEMICOLON ((W_datatypes.PLAIN_RETURN_STATEMENT_1(label,condition)))
                       | label COLON RETURN SEMICOLON ((W_datatypes.PLAIN_RETURN_STATEMENT_3(label)))
                       | RETURN WHEN condition SEMICOLON ((W_datatypes.PLAIN_RETURN_STATEMENT_2(condition)))
                       | RETURN SEMICOLON ((W_datatypes.PLAIN_RETURN_STATEMENT_4()))*)

port_clause : PORT LPARAN port_list RPARAN SEMICOLON ((W_datatypes.PORT_CLAUSE(port_list)))

port_list : interface_port_list ((W_datatypes.PORT_LIST(interface_port_list)))

port_map_aspect : PORT MAP LPARAN association_list RPARAN ((W_datatypes.PORT_MAP_ASPECT(association_list)))

(*prefix : name ((W_datatypes.PREFIX_1(name)))
       | function_call ((W_datatypes.PREFIX_2(function_call)))*)

primary : literal ((W_datatypes.PRIMARY_1(literal)))
(*        | function_call ((W_datatypes.PRIMARY_4(function_call)))*)
        | qualified_expression ((W_datatypes.PRIMARY_2(qualified_expression)))
(*        | type_conversion ((W_datatypes.PRIMARY_6(type_conversion)))*)
        | LPARAN expression RPARAN ((W_datatypes.PRIMARY_3(expression)))
        | allocator ((W_datatypes.PRIMARY_4(allocator)))
        | aggregate ((W_datatypes.PRIMARY_5(aggregate)))
        | name ((W_datatypes.PRIMARY_6(name)))

primary_unit : entity_declaration ((W_datatypes.PRIMARY_UNIT_1(entity_declaration)))
             | configuration_declaration ((W_datatypes.PRIMARY_UNIT_2(configuration_declaration)))
             | package_declaration ((W_datatypes.PRIMARY_UNIT_3(package_declaration)))
(*             | package_instantiation_declaration ((W_datatypes.PRIMARY_UNIT_4(package_instantiation_declaration)))
             | context_declaration ((W_datatypes.PRIMARY_UNIT_5(context_declaration)))*)

(*primary_unit_declaration : identifier SEMICOLON ((W_datatypes.PRIMARY_UNIT_DECLARATION(identifier)))

private_variable_declaration : PRIVATE variable_declaration ((W_datatypes.PRIVATE_VARIABLE_DECLARATION(variable_declaration)))

private_incomplete_type_definition : PRIVATE ((W_datatypes.PRIVATE_INCOMPLETE_TYPE_DEFINITION()))

procedure_specification : PROCEDURE designator subprogram_header PARAMETER LPARAN formal_parameter_list RPARAN ((W_datatypes.PROCEDURE_SPECIFICATION_1(designator,subprogram_header,formal_parameter_list)))
                        | PROCEDURE designator subprogram_header LPARAN formal_parameter_list RPARAN ((W_datatypes.PROCEDURE_SPECIFICATION_1(designator,subprogram_header,formal_parameter_list)))
                        | PROCEDURE designator subprogram_header ((W_datatypes.PROCEDURE_SPECIFICATION_2(designator,subprogram_header)))*)

procedural_declarative_item : subprogram_declaration ((W_datatypes.PROCEDURAL_DECLARATIVE_ITEM_1(subprogram_declaration)))
							| subprogram_body ((W_datatypes.PROCEDURAL_DECLARATIVE_ITEM_2(subprogram_body)))
							| type_declaration ((W_datatypes.PROCEDURAL_DECLARATIVE_ITEM_3(type_declaration)))
							| subtype_declaration ((W_datatypes.PROCEDURAL_DECLARATIVE_ITEM_4(subtype_declaration)))
							| constant_declaration ((W_datatypes.PROCEDURAL_DECLARATIVE_ITEM_5(constant_declaration)))
							| variable_declaration ((W_datatypes.PROCEDURAL_DECLARATIVE_ITEM_6(variable_declaration)))
							| alias_declaration ((W_datatypes.PROCEDURAL_DECLARATIVE_ITEM_7(alias_declaration)))
							| attribute_declaration ((W_datatypes.PROCEDURAL_DECLARATIVE_ITEM_8(attribute_declaration)))
							| attribute_specification ((W_datatypes.PROCEDURAL_DECLARATIVE_ITEM_9(attribute_specification)))
							| use_clause ((W_datatypes.PROCEDURAL_DECLARATIVE_ITEM_10(use_clause)))
							| group_template_declaration ((W_datatypes.PROCEDURAL_DECLARATIVE_ITEM_11(group_template_declaration)))
							| group_declaration ((W_datatypes.PROCEDURAL_DECLARATIVE_ITEM_12(group_declaration)))

procedural_declarative_item_seq : procedural_declarative_item procedural_declarative_item_seq              (procedural_declarative_item :: procedural_declarative_item_seq)
                            |             ([])

procedural_declarative_part : procedural_declarative_item_seq ((W_datatypes.PROCEDURAL_DECLARATIVE_PART(procedural_declarative_item_seq)))

procedural_statement_part : sequential_statement_seq ((W_datatypes.PROCEDURAL_STATEMENT_PART(sequential_statement_seq)))

procedure_call : selected_name LPARAN actual_parameter_part RPARAN ((W_datatypes.PROCEDURE_CALL_2(selected_name,actual_parameter_part)))
               | selected_name ((W_datatypes.PROCEDURE_CALL_1(selected_name)))

procedure_call_statement : label_colon procedure_call SEMICOLON ((W_datatypes.PROCEDURE_CALL_STATEMENT_1(label_colon,procedure_call)))
                         | procedure_call SEMICOLON ((W_datatypes.PROCEDURE_CALL_STATEMENT_2(procedure_call)))

process_declarative_item_seq : process_declarative_item process_declarative_item_seq              (process_declarative_item :: process_declarative_item_seq)
                            |             ([])

process_declarative_item : subprogram_declaration ((W_datatypes.PROCESS_DECLARATIVE_ITEM_1(subprogram_declaration)))
                         | subprogram_body ((W_datatypes.PROCESS_DECLARATIVE_ITEM_2(subprogram_body)))
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
(*
process_sensitivity_list : ALL ((W_datatypes.PROCESS_SENSITIVITY_LIST_2()))
                         | sensitivity_list ((W_datatypes.PROCESS_SENSITIVITY_LIST_1(sensitivity_list)))*)

process_statement : label_colon POSTPONED PROCESS LPARAN sensitivity_list RPARAN IS process_declarative_part BEGIN process_statement_part END POSTPONED PROCESS identifier SEMICOLON ((W_datatypes.PROCESS_STATEMENT_2(label_colon,sensitivity_list,process_declarative_part,process_statement_part,identifier)))
                  | POSTPONED PROCESS LPARAN sensitivity_list RPARAN IS process_declarative_part BEGIN process_statement_part END POSTPONED PROCESS identifier SEMICOLON ((W_datatypes.PROCESS_STATEMENT_1(sensitivity_list,process_declarative_part,process_statement_part,identifier)))
                  | POSTPONED PROCESS IS process_declarative_part BEGIN process_statement_part END POSTPONED PROCESS identifier SEMICOLON ((W_datatypes.PROCESS_STATEMENT_3(process_declarative_part,process_statement_part,identifier)))
                  | label_colon POSTPONED PROCESS IS process_declarative_part BEGIN process_statement_part END POSTPONED PROCESS identifier SEMICOLON ((W_datatypes.PROCESS_STATEMENT_4(label_colon,process_declarative_part,process_statement_part,identifier)))
                  | POSTPONED PROCESS IS process_declarative_part BEGIN process_statement_part END POSTPONED PROCESS SEMICOLON ((W_datatypes.PROCESS_STATEMENT_5(process_declarative_part,process_statement_part)))
                  | label_colon POSTPONED PROCESS IS process_declarative_part BEGIN process_statement_part END POSTPONED PROCESS SEMICOLON ((W_datatypes.PROCESS_STATEMENT_6(label_colon,process_declarative_part,process_statement_part)))
                  | POSTPONED PROCESS LPARAN sensitivity_list RPARAN IS process_declarative_part BEGIN process_statement_part END POSTPONED PROCESS SEMICOLON ((W_datatypes.PROCESS_STATEMENT_7(sensitivity_list,process_declarative_part,process_statement_part)))
                  | label_colon POSTPONED PROCESS LPARAN sensitivity_list RPARAN IS process_declarative_part BEGIN process_statement_part END POSTPONED PROCESS SEMICOLON ((W_datatypes.PROCESS_STATEMENT_8(label_colon,sensitivity_list,process_declarative_part,process_statement_part)))

                  | label_colon PROCESS LPARAN sensitivity_list RPARAN IS process_declarative_part BEGIN process_statement_part END POSTPONED PROCESS identifier SEMICOLON ((W_datatypes.PROCESS_STATEMENT_2(label_colon,sensitivity_list,process_declarative_part,process_statement_part,identifier)))
                  | PROCESS LPARAN sensitivity_list RPARAN IS process_declarative_part BEGIN process_statement_part END POSTPONED PROCESS identifier SEMICOLON ((W_datatypes.PROCESS_STATEMENT_1(sensitivity_list,process_declarative_part,process_statement_part,identifier)))
                  | PROCESS IS process_declarative_part BEGIN process_statement_part END POSTPONED PROCESS identifier SEMICOLON ((W_datatypes.PROCESS_STATEMENT_3(process_declarative_part,process_statement_part,identifier)))
                  | label_colon PROCESS IS process_declarative_part BEGIN process_statement_part END POSTPONED PROCESS identifier SEMICOLON ((W_datatypes.PROCESS_STATEMENT_4(label_colon,process_declarative_part,process_statement_part,identifier)))
                  | PROCESS IS process_declarative_part BEGIN process_statement_part END POSTPONED PROCESS SEMICOLON ((W_datatypes.PROCESS_STATEMENT_5(process_declarative_part,process_statement_part)))
                  | label_colon PROCESS IS process_declarative_part BEGIN process_statement_part END POSTPONED PROCESS SEMICOLON ((W_datatypes.PROCESS_STATEMENT_6(label_colon,process_declarative_part,process_statement_part)))
                  | PROCESS LPARAN sensitivity_list RPARAN IS process_declarative_part BEGIN process_statement_part END POSTPONED PROCESS SEMICOLON ((W_datatypes.PROCESS_STATEMENT_7(sensitivity_list,process_declarative_part,process_statement_part)))
                  | label_colon PROCESS LPARAN sensitivity_list RPARAN IS process_declarative_part BEGIN process_statement_part END POSTPONED PROCESS SEMICOLON ((W_datatypes.PROCESS_STATEMENT_8(label_colon,sensitivity_list,process_declarative_part,process_statement_part)))

                  | label_colon POSTPONED PROCESS LPARAN sensitivity_list RPARAN process_declarative_part BEGIN process_statement_part END POSTPONED PROCESS identifier SEMICOLON ((W_datatypes.PROCESS_STATEMENT_2(label_colon,sensitivity_list,process_declarative_part,process_statement_part,identifier)))
                  | POSTPONED PROCESS LPARAN sensitivity_list RPARAN process_declarative_part BEGIN process_statement_part END POSTPONED PROCESS identifier SEMICOLON ((W_datatypes.PROCESS_STATEMENT_1(sensitivity_list,process_declarative_part,process_statement_part,identifier)))
                  | POSTPONED PROCESS process_declarative_part BEGIN process_statement_part END POSTPONED PROCESS identifier SEMICOLON ((W_datatypes.PROCESS_STATEMENT_3(process_declarative_part,process_statement_part,identifier)))
                  | label_colon POSTPONED PROCESS process_declarative_part BEGIN process_statement_part END POSTPONED PROCESS identifier SEMICOLON ((W_datatypes.PROCESS_STATEMENT_4(label_colon,process_declarative_part,process_statement_part,identifier)))
                  | POSTPONED PROCESS process_declarative_part BEGIN process_statement_part END POSTPONED PROCESS SEMICOLON ((W_datatypes.PROCESS_STATEMENT_5(process_declarative_part,process_statement_part)))
                  | label_colon POSTPONED PROCESS process_declarative_part BEGIN process_statement_part END POSTPONED PROCESS SEMICOLON ((W_datatypes.PROCESS_STATEMENT_6(label_colon,process_declarative_part,process_statement_part)))
                  | POSTPONED PROCESS LPARAN sensitivity_list RPARAN process_declarative_part BEGIN process_statement_part END POSTPONED PROCESS SEMICOLON ((W_datatypes.PROCESS_STATEMENT_7(sensitivity_list,process_declarative_part,process_statement_part)))
                  | label_colon POSTPONED PROCESS LPARAN sensitivity_list RPARAN process_declarative_part BEGIN process_statement_part END POSTPONED PROCESS SEMICOLON ((W_datatypes.PROCESS_STATEMENT_8(label_colon,sensitivity_list,process_declarative_part,process_statement_part)))

                  | label_colon POSTPONED PROCESS LPARAN sensitivity_list RPARAN IS process_declarative_part BEGIN process_statement_part END PROCESS identifier SEMICOLON ((W_datatypes.PROCESS_STATEMENT_2(label_colon,sensitivity_list,process_declarative_part,process_statement_part,identifier)))
                  | POSTPONED PROCESS LPARAN sensitivity_list RPARAN IS process_declarative_part BEGIN process_statement_part END PROCESS identifier SEMICOLON ((W_datatypes.PROCESS_STATEMENT_1(sensitivity_list,process_declarative_part,process_statement_part,identifier)))
                  | POSTPONED PROCESS IS process_declarative_part BEGIN process_statement_part END PROCESS identifier SEMICOLON ((W_datatypes.PROCESS_STATEMENT_3(process_declarative_part,process_statement_part,identifier)))
                  | label_colon POSTPONED PROCESS IS process_declarative_part BEGIN process_statement_part END PROCESS identifier SEMICOLON ((W_datatypes.PROCESS_STATEMENT_4(label_colon,process_declarative_part,process_statement_part,identifier)))
                  | POSTPONED PROCESS IS process_declarative_part BEGIN process_statement_part END PROCESS SEMICOLON ((W_datatypes.PROCESS_STATEMENT_5(process_declarative_part,process_statement_part)))
                  | label_colon POSTPONED PROCESS IS process_declarative_part BEGIN process_statement_part END PROCESS SEMICOLON ((W_datatypes.PROCESS_STATEMENT_6(label_colon,process_declarative_part,process_statement_part)))
                  | POSTPONED PROCESS LPARAN sensitivity_list RPARAN IS process_declarative_part BEGIN process_statement_part END PROCESS SEMICOLON ((W_datatypes.PROCESS_STATEMENT_7(sensitivity_list,process_declarative_part,process_statement_part)))
                  | label_colon POSTPONED PROCESS LPARAN sensitivity_list RPARAN IS process_declarative_part BEGIN process_statement_part END PROCESS SEMICOLON ((W_datatypes.PROCESS_STATEMENT_8(label_colon,sensitivity_list,process_declarative_part,process_statement_part)))

                  | label_colon PROCESS LPARAN sensitivity_list RPARAN process_declarative_part BEGIN process_statement_part END POSTPONED PROCESS identifier SEMICOLON ((W_datatypes.PROCESS_STATEMENT_2(label_colon,sensitivity_list,process_declarative_part,process_statement_part,identifier)))
                  | PROCESS LPARAN sensitivity_list RPARAN process_declarative_part BEGIN process_statement_part END POSTPONED PROCESS identifier SEMICOLON ((W_datatypes.PROCESS_STATEMENT_1(sensitivity_list,process_declarative_part,process_statement_part,identifier)))
                  | PROCESS process_declarative_part BEGIN process_statement_part END POSTPONED PROCESS identifier SEMICOLON ((W_datatypes.PROCESS_STATEMENT_3(process_declarative_part,process_statement_part,identifier)))
                  | label_colon PROCESS process_declarative_part BEGIN process_statement_part END POSTPONED PROCESS identifier SEMICOLON ((W_datatypes.PROCESS_STATEMENT_4(label_colon,process_declarative_part,process_statement_part,identifier)))
                  | PROCESS process_declarative_part BEGIN process_statement_part END POSTPONED PROCESS SEMICOLON ((W_datatypes.PROCESS_STATEMENT_5(process_declarative_part,process_statement_part)))
                  | label_colon PROCESS process_declarative_part BEGIN process_statement_part END POSTPONED PROCESS SEMICOLON ((W_datatypes.PROCESS_STATEMENT_6(label_colon,process_declarative_part,process_statement_part)))
                  | PROCESS LPARAN sensitivity_list RPARAN process_declarative_part BEGIN process_statement_part END POSTPONED PROCESS SEMICOLON ((W_datatypes.PROCESS_STATEMENT_7(sensitivity_list,process_declarative_part,process_statement_part)))
                  | label_colon PROCESS LPARAN sensitivity_list RPARAN process_declarative_part BEGIN process_statement_part END POSTPONED PROCESS SEMICOLON ((W_datatypes.PROCESS_STATEMENT_8(label_colon,sensitivity_list,process_declarative_part,process_statement_part)))

                  | label_colon POSTPONED PROCESS LPARAN sensitivity_list RPARAN process_declarative_part BEGIN process_statement_part END PROCESS identifier SEMICOLON ((W_datatypes.PROCESS_STATEMENT_2(label_colon,sensitivity_list,process_declarative_part,process_statement_part,identifier)))
                  | POSTPONED PROCESS LPARAN sensitivity_list RPARAN process_declarative_part BEGIN process_statement_part END PROCESS identifier SEMICOLON ((W_datatypes.PROCESS_STATEMENT_1(sensitivity_list,process_declarative_part,process_statement_part,identifier)))
                  | POSTPONED PROCESS process_declarative_part BEGIN process_statement_part END PROCESS identifier SEMICOLON ((W_datatypes.PROCESS_STATEMENT_3(process_declarative_part,process_statement_part,identifier)))
                  | label_colon POSTPONED PROCESS process_declarative_part BEGIN process_statement_part END PROCESS identifier SEMICOLON ((W_datatypes.PROCESS_STATEMENT_4(label_colon,process_declarative_part,process_statement_part,identifier)))
                  | POSTPONED PROCESS process_declarative_part BEGIN process_statement_part END PROCESS SEMICOLON ((W_datatypes.PROCESS_STATEMENT_5(process_declarative_part,process_statement_part)))
                  | label_colon POSTPONED PROCESS process_declarative_part BEGIN process_statement_part END PROCESS SEMICOLON ((W_datatypes.PROCESS_STATEMENT_6(label_colon,process_declarative_part,process_statement_part)))
                  | POSTPONED PROCESS LPARAN sensitivity_list RPARAN process_declarative_part BEGIN process_statement_part END PROCESS SEMICOLON ((W_datatypes.PROCESS_STATEMENT_7(sensitivity_list,process_declarative_part,process_statement_part)))
                  | label_colon POSTPONED PROCESS LPARAN sensitivity_list RPARAN process_declarative_part BEGIN process_statement_part END PROCESS SEMICOLON ((W_datatypes.PROCESS_STATEMENT_8(label_colon,sensitivity_list,process_declarative_part,process_statement_part)))

                  | label_colon PROCESS LPARAN sensitivity_list RPARAN IS process_declarative_part BEGIN process_statement_part END PROCESS identifier SEMICOLON ((W_datatypes.PROCESS_STATEMENT_2(label_colon,sensitivity_list,process_declarative_part,process_statement_part,identifier)))
                  | PROCESS LPARAN sensitivity_list RPARAN IS process_declarative_part BEGIN process_statement_part END PROCESS identifier SEMICOLON ((W_datatypes.PROCESS_STATEMENT_1(sensitivity_list,process_declarative_part,process_statement_part,identifier)))
                  | PROCESS IS process_declarative_part BEGIN process_statement_part END PROCESS identifier SEMICOLON ((W_datatypes.PROCESS_STATEMENT_3(process_declarative_part,process_statement_part,identifier)))
                  | label_colon PROCESS IS process_declarative_part BEGIN process_statement_part END PROCESS identifier SEMICOLON ((W_datatypes.PROCESS_STATEMENT_4(label_colon,process_declarative_part,process_statement_part,identifier)))
                  | PROCESS IS process_declarative_part BEGIN process_statement_part END PROCESS SEMICOLON ((W_datatypes.PROCESS_STATEMENT_5(process_declarative_part,process_statement_part)))
                  | label_colon PROCESS IS process_declarative_part BEGIN process_statement_part END PROCESS SEMICOLON ((W_datatypes.PROCESS_STATEMENT_6(label_colon,process_declarative_part,process_statement_part)))
                  | PROCESS LPARAN sensitivity_list RPARAN IS process_declarative_part BEGIN process_statement_part END PROCESS SEMICOLON ((W_datatypes.PROCESS_STATEMENT_7(sensitivity_list,process_declarative_part,process_statement_part)))
                  | label_colon PROCESS LPARAN sensitivity_list RPARAN IS process_declarative_part BEGIN process_statement_part END PROCESS SEMICOLON ((W_datatypes.PROCESS_STATEMENT_8(label_colon,sensitivity_list,process_declarative_part,process_statement_part)))

                  | label_colon PROCESS LPARAN sensitivity_list RPARAN process_declarative_part BEGIN process_statement_part END PROCESS identifier SEMICOLON ((W_datatypes.PROCESS_STATEMENT_2(label_colon,sensitivity_list,process_declarative_part,process_statement_part,identifier)))
                  | PROCESS LPARAN sensitivity_list RPARAN process_declarative_part BEGIN process_statement_part END PROCESS identifier SEMICOLON ((W_datatypes.PROCESS_STATEMENT_1(sensitivity_list,process_declarative_part,process_statement_part,identifier)))
                  | PROCESS process_declarative_part BEGIN process_statement_part END PROCESS identifier SEMICOLON ((W_datatypes.PROCESS_STATEMENT_3(process_declarative_part,process_statement_part,identifier)))
                  | label_colon PROCESS process_declarative_part BEGIN process_statement_part END PROCESS identifier SEMICOLON ((W_datatypes.PROCESS_STATEMENT_4(label_colon,process_declarative_part,process_statement_part,identifier)))
                  | PROCESS process_declarative_part BEGIN process_statement_part END PROCESS SEMICOLON ((W_datatypes.PROCESS_STATEMENT_5(process_declarative_part,process_statement_part)))
                  | label_colon PROCESS process_declarative_part BEGIN process_statement_part END PROCESS SEMICOLON ((W_datatypes.PROCESS_STATEMENT_6(label_colon,process_declarative_part,process_statement_part)))
                  | PROCESS LPARAN sensitivity_list RPARAN process_declarative_part BEGIN process_statement_part END PROCESS SEMICOLON ((W_datatypes.PROCESS_STATEMENT_7(sensitivity_list,process_declarative_part,process_statement_part)))
                  | label_colon PROCESS LPARAN sensitivity_list RPARAN process_declarative_part BEGIN process_statement_part END PROCESS SEMICOLON ((W_datatypes.PROCESS_STATEMENT_8(label_colon,sensitivity_list,process_declarative_part,process_statement_part)))

sequential_statement_seq : sequential_statement sequential_statement_seq                   (sequential_statement :: sequential_statement_seq)
                            |             ([])

process_statement_part : sequential_statement_seq ((W_datatypes.PROCESS_STATEMENT_PART(sequential_statement_seq)))

(*protected_type_body : PROTECTED BODY protected_type_body_declarative_part END PROTECTED BODY simple_name ((W_datatypes.PROTECTED_TYPE_BODY_1(protected_type_body_declarative_part,simple_name)))
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

protected_type_declaration : PROTECTED protected_type_header protected_type_declarative_part END PROTECTED simple_name ((W_datatypes.PROTECTED_TYPE_DECLARATION_2(protected_type_header,protected_type_declarative_part,simple_name)))
                           | PROTECTED protected_type_header protected_type_declarative_part END PROTECTED ((W_datatypes.PROTECTED_TYPE_DECLARATION_1(protected_type_header,protected_type_declarative_part)))

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
                                        | NEW name ((W_datatypes.PROTECTED_TYPE_INSTANTIATION_DEFINITION_1(name)))*)

qualified_expression : subtype_indication TICK LPARAN expression RPARAN ((W_datatypes.QUALIFIED_EXPRESSION_2(subtype_indication,expression)))
                     | subtype_indication TICK aggregate ((W_datatypes.QUALIFIED_EXPRESSION_1(subtype_indication,aggregate)))

quantity_declaration : free_quantity_declaration ((W_datatypes.QUANTITY_DECLARATION_1(free_quantity_declaration)))
					 | branch_quantity_declaration ((W_datatypes.QUANTITY_DECLARATION_2(branch_quantity_declaration)))
					 | source_quantity_declaration ((W_datatypes.QUANTITY_DECLARATION_3(source_quantity_declaration)))

quantity_list : name name_seq ((W_datatypes.QUANTITY_LIST_1(name,name_seq)))
			  | OTHERS ((W_datatypes.QUANTITY_LIST_2()))
			  | ALL ((W_datatypes.QUANTITY_LIST_3()))

quantity_specification : quantity_list COLON name ((W_datatypes.QUANTITY_SPECIFICATION(quantity_list,name)))

range_decl : explicit_range ((W_datatypes.RANGE_DECL_1(explicit_range)))
		   | name ((W_datatypes.RANGE_DECL_2(name)))

explicit_range : simple_expression direction simple_expression ((W_datatypes.EXPLICIT_RANGE_1(simple_expression1,direction,simple_expression2)))
			   | simple_expression ((W_datatypes.EXPLICIT_RANGE_2(simple_expression)))

(*range : attribute_name ((W_datatypes.RANGE_1(attribute_name)))
      | simple_range ((W_datatypes.RANGE_2(simple_range)))
      | expression ((W_datatypes.RANGE_3(expression)))*)

range_constraint : RANGE range_decl ((W_datatypes.RANGE_CONSTRAINT(range_decl)))

(*record_constraint : LPARAN record_element_constraint record_element_constraint_seq RPARAN ((W_datatypes.RECORD_CONSTRAINT(record_element_constraint,record_element_constraint_seq)))

record_element_constraint_seq : COMMA record_element_constraint record_element_constraint_seq            (record_element_constraint :: record_element_constraint_seq)
                                   |             ([])

record_element_constraint : simple_name element_constraint ((W_datatypes.RECORD_ELEMENT_CONSTRAINT(simple_name,element_constraint)))

record_element_list : simple_name_seq ((W_datatypes.RECORD_ELEMENT_LIST(simple_name_seq)))

record_element_resolution_seq : COMMA record_element_resolution record_element_resolution_seq            (record_element_resolution :: record_element_resolution_seq)
                            |             ([])

record_element_resolution : simple_name resolution_indication ((W_datatypes.RECORD_ELEMENT_RESOLUTION(simple_name,resolution_indication)))

record_resolution : record_element_resolution_seq ((W_datatypes.RECORD_RESOLUTION(record_element_resolution_seq)))*)

element_declaration_seq : element_declaration element_declaration_seq                      (element_declaration :: element_declaration_seq)
                     |             ([])

nature_element_declaration_seq : nature_element_declaration nature_element_declaration_seq                      (nature_element_declaration :: nature_element_declaration_seq)
                     |             ([])

record_nature_definition : RECORD nature_element_declaration nature_element_declaration_seq END RECORD identifier ((W_datatypes.RECORD_NATURE_DEFINITION_1(nature_element_declaration,nature_element_declaration_seq,identifier)))
                       | RECORD nature_element_declaration nature_element_declaration_seq END RECORD ((W_datatypes.RECORD_NATURE_DEFINITION_2(nature_element_declaration,nature_element_declaration_seq)))

record_type_definition : RECORD element_declaration element_declaration_seq END RECORD identifier ((W_datatypes.RECORD_TYPE_DEFINITION_1(element_declaration,element_declaration_seq,identifier)))
                       | RECORD element_declaration element_declaration_seq END RECORD ((W_datatypes.RECORD_TYPE_DEFINITION_2(element_declaration,element_declaration_seq)))

(* record_mode_view_indication : VIEW name OF subtype_indication ((W_datatypes.RECORD_MODE_VIEW_INDICATION_1(name,subtype_indication)))
                            | VIEW name ((W_datatypes.RECORD_MODE_VIEW_INDICATION_2(name))) *)

relation : shift_expression relational_operator shift_expression ((W_datatypes.RELATION_1(shift_expression1,relational_operator,shift_expression2)))
         | shift_expression ((W_datatypes.RELATION_2(shift_expression)))

relational_operator : EQ ((W_datatypes.Eq()))
                    | NEQ ((W_datatypes.Neq()))
                    | GT ((W_datatypes.Gt()))
                    | LT ((W_datatypes.Lt()))
                    | LE ((W_datatypes.Le()))
                    | GE ((W_datatypes.Ge()))
(*                    | RELOP1   ((W_datatypes.Relo1()))
                    | RELOP2   ((W_datatypes.Relo2()))
                    | RELOP3   ((W_datatypes.Relo3()))
                    | RELOP4   ((W_datatypes.Relo4()))
                    | RELOP5   ((W_datatypes.Relo5()))
                    | RELOP6   ((W_datatypes.Relo6()))*)

(*carrot_dot_seq : CARROT DOT carrot_dot_seq                     (carrot_dot_seq)
              |             ([])

relative_pathname : carrot_dot_seq partial_pathname ((W_datatypes.RELATIVE_PATHNAME(partial_pathname)))
*)




report_statement : label_colon REPORT expression SEVERITY expression SEMICOLON ((W_datatypes.REPORT_STATEMENT_3(label_colon,expression1,expression2)))
                 | label_colon REPORT expression SEMICOLON ((W_datatypes.REPORT_STATEMENT_2(label_colon,expression)))
                 | REPORT expression SEVERITY expression SEMICOLON ((W_datatypes.REPORT_STATEMENT_1(expression1,expression2)))
                 | REPORT expression SEMICOLON ((W_datatypes.REPORT_STATEMENT_4(expression)))

return_statement : label_colon RETURN expression SEMICOLON ((W_datatypes.RETURN_STATEMENT_1(label_colon,expression)))
				 | label_colon RETURN SEMICOLON ((W_datatypes.RETURN_STATEMENT_4(label_colon)))
				 | RETURN expression SEMICOLON ((W_datatypes.RETURN_STATEMENT_2(expression)))
				 | RETURN SEMICOLON ((W_datatypes.RETURN_STATEMENT_3()))

(* plain_return_statement ((W_datatypes.RETURN_STATEMENT_1(plain_return_statement)))
                 | value_return_statement ((W_datatypes.RETURN_STATEMENT_2(value_return_statement)))*)

scalar_nature_definition : name ACROSS name THROUGH name REFERENCE                  ((W_datatypes.SCALAR_NATURE_DEFINITION(name1 ,name2 ,name3)))

scalar_type_definition : enumeration_type_definition ((W_datatypes.SCALAR_TYPE_DEFINITION_1(enumeration_type_definition)))
                       | range_constraint ((W_datatypes.SCALAR_TYPE_DEFINITION_2(range_constraint)))
                       | physical_type_definition ((W_datatypes.SCALAR_TYPE_DEFINITION_3(physical_type_definition)))

secondary_unit : architecture_body ((W_datatypes.SECONDARY_UNIT_1(architecture_body)))
               | package_body ((W_datatypes.SECONDARY_UNIT_2(package_body)))

secondary_unit_declaration : identifier EQ physical_literal SEMICOLON ((W_datatypes.SECONDARY_UNIT_DECLARATION(identifier,physical_literal)))

(*ex_when_choices : expression WHEN choices              ((W_datatypes.EX_WHEN_CHOICES(expression,choices)))

ex_when_choices_seq : ex_when_choices COMMA ex_when_choices_seq             (ex_when_choices :: ex_when_choices_seq)
                     |  ex_when_choices           ([ex_when_choices])*)

selected_signal_assignment : WITH expression SELECT target LE opts selected_waveforms SEMICOLON          ((W_datatypes.SELECTED_SIGNAL_ASSIGNMENT(expression ,target ,opts ,selected_waveforms)))

wave_when_choices : waveform WHEN choices         ((W_datatypes.WAVE_WHEN_CHOICES(waveform,choices)))

wave_when_choices_seq : COMMA wave_when_choices wave_when_choices_seq        (wave_when_choices :: wave_when_choices_seq)
                     | wave_when_choices            ([wave_when_choices])

selected_waveforms : waveform WHEN choices wave_when_choices_seq ((W_datatypes.SELECTED_WAVEFORMS(waveform,choices,wave_when_choices_seq)))

sensitivity_clause : ON sensitivity_list ((W_datatypes.SENSITIVITY_CLAUSE(sensitivity_list)))

sensitivity_list : name name_seq ((W_datatypes.SENSITIVITY_LIST(name,name_seq)))

sequence_of_statements : sequential_statement_seq ((W_datatypes.SEQUENCE_OF_STATEMENTS(sequential_statement_seq)))

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
                     | label_colon NULL SEMICOLON ((W_datatypes.SEQUENTIAL_STATEMENT_13(label_colon)))
                     | NULL SEMICOLON ((W_datatypes.SEQUENTIAL_STATEMENT_14()))
                     | break_statement ((W_datatypes.SEQUENTIAL_STATEMENT_15(break_statement)))

shift_expression : simple_expression shift_operator simple_expression ((W_datatypes.SHIFT_EXPRESSION_1(simple_expression1,shift_operator,simple_expression2)))
                 | simple_expression ((W_datatypes.SHIFT_EXPRESSION_2(simple_expression)))

shift_operator : SLL ((W_datatypes.Sll()))
               | SRL ((W_datatypes.Srl()))
               | SLA ((W_datatypes.Sla()))
               | SRA ((W_datatypes.Sra()))
               | ROL ((W_datatypes.Rol()))
               | ROR ((W_datatypes.Ror()))

signal_assignment_statement : label_colon target LE delay_mechanism waveform SEMICOLON                 ((W_datatypes.SIGNAL_ASSIGNMENT_STATEMENT_1(label_colon ,target ,delay_mechanism ,waveform)))                              
                            | target LE delay_mechanism waveform SEMICOLON                             ((W_datatypes.SIGNAL_ASSIGNMENT_STATEMENT_2(target ,delay_mechanism ,waveform)))                
                            | target LE waveform SEMICOLON                                             ((W_datatypes.SIGNAL_ASSIGNMENT_STATEMENT_3(target,waveform)))  
                            | label_colon target LE waveform SEMICOLON                                 ((W_datatypes.SIGNAL_ASSIGNMENT_STATEMENT_4(label_colon,target,waveform)))                
                            

(*signal_association_target : name ((W_datatypes.SIGNAL_ASSOCIATION_TARGET(name)))*)

signal_declaration : SIGNAL identifier_list COLON subtype_indication signal_kind ASSIGN expression SEMICOLON ((W_datatypes.SIGNAL_DECLARATION_1(identifier_list,subtype_indication,signal_kind,expression)))
                   | SIGNAL identifier_list COLON subtype_indication signal_kind SEMICOLON ((W_datatypes.SIGNAL_DECLARATION_4(identifier_list,subtype_indication,signal_kind)))
                   | SIGNAL identifier_list COLON subtype_indication ASSIGN expression SEMICOLON ((W_datatypes.SIGNAL_DECLARATION_2(identifier_list,subtype_indication,expression)))
                   | SIGNAL identifier_list COLON subtype_indication SEMICOLON ((W_datatypes.SIGNAL_DECLARATION_3(identifier_list,subtype_indication)))

signal_kind : REGISTER ((W_datatypes.Register()))
            | BUS ((W_datatypes.Bus()))

signal_list : name name_seq ((W_datatypes.SIGNAL_LIST_1(name,name_seq)))
            | OTHERS ((W_datatypes.SIGNAL_LIST_2()))
            | ALL ((W_datatypes.SIGNAL_LIST_3()))

(*type_mark_seq : COMMA type_mark type_mark_seq           (type_mark :: type_mark_seq)
              |             ([])*)

signatur : LSQUARE name name_seq RETURN name RSQUARE           ((W_datatypes.SIGNATURE_1(name,name_seq,name)))                            
         | LSQUARE RETURN name RSQUARE                         ((W_datatypes.SIGNATURE_2(name)))              
         | LSQUARE RSQUARE                                     ((W_datatypes.SIGNATURE_3()))
         | LSQUARE name name_seq RSQUARE                       ((W_datatypes.SIGNATURE_4(name,name_seq)))              


adding_operator_term : adding_operator term             ((W_datatypes.ADDING_OPERATOR_TERM(adding_operator,term)))

adding_operator_term_seq : adding_operator_term adding_operator_term_seq            (adding_operator_term :: adding_operator_term_seq)
                            |             ([])

simple_expression : PLUS term adding_operator_term_seq              ((W_datatypes.SIMPLE_EXPRESSION(term ,adding_operator_term_seq)))  
                  | MINUS term adding_operator_term_seq            ((W_datatypes.SIMPLE_EXPRESSION(term ,adding_operator_term_seq)))         
                  | term adding_operator_term_seq                   ((W_datatypes.SIMPLE_EXPRESSION(term ,adding_operator_term_seq)))  

simple_simultaneous_statement : label_colon simple_expression ASSIGN simple_expression tolerance_aspect SEMICOLON          ((W_datatypes.SIMPLE_SIMULTANEOUS_STATEMENT_1(label_colon ,simple_expression1 ,simple_expression2 ,tolerance_aspect)))                             
                              | simple_expression ASSIGN simple_expression tolerance_aspect SEMICOLON                      ((W_datatypes.SIMPLE_SIMULTANEOUS_STATEMENT_2(simple_expression1,simple_expression2 ,tolerance_aspect)))               
                              | simple_expression ASSIGN simple_expression SEMICOLON                                       ((W_datatypes.SIMPLE_SIMULTANEOUS_STATEMENT_3(simple_expression1 ,simple_expression2))) 
                              | label_colon simple_expression ASSIGN simple_expression SEMICOLON                           ((W_datatypes.SIMPLE_SIMULTANEOUS_STATEMENT_4(label_colon ,simple_expression1 ,simple_expression2)))               

simultaneous_alternative : WHEN choices ARROW simultaneous_statement_part           ((W_datatypes.SIMULTANEOUS_ALTERNATIVE(choices ,simultaneous_statement_part)))

simultaneous_alternative_seq : simultaneous_alternative simultaneous_alternative_seq       (simultaneous_alternative :: simultaneous_alternative_seq)
							 | simultaneous_alternative  ([simultaneous_alternative])

simultaneous_case_statement : label_colon CASE expression USE simultaneous_alternative simultaneous_alternative_seq END CASE identifier SEMICOLON             ((W_datatypes.SIMULTANEOUS_CASE_STATEMENT_1(label_colon ,expression ,simultaneous_alternative ,simultaneous_alternative_seq ,identifier)))                               
                            | CASE expression USE simultaneous_alternative simultaneous_alternative_seq END CASE identifier SEMICOLON                         ((W_datatypes.SIMULTANEOUS_CASE_STATEMENT_2(expression ,simultaneous_alternative ,simultaneous_alternative_seq ,identifier)))                        
                            | CASE expression USE simultaneous_alternative simultaneous_alternative_seq END CASE SEMICOLON                                    ((W_datatypes.SIMULTANEOUS_CASE_STATEMENT_3(expression ,simultaneous_alternative ,simultaneous_alternative_seq)))          
                            | label_colon CASE expression USE simultaneous_alternative simultaneous_alternative_seq END CASE SEMICOLON                        ((W_datatypes.SIMULTANEOUS_CASE_STATEMENT_4(label_colon ,expression ,simultaneous_alternative ,simultaneous_alternative_seq)))                        

condition_simultaneous_statement_part : ELSIF condition USE simultaneous_statement_part           ((W_datatypes.CONDITION_SIMULTANEOUS_STATEMENT_PART(condition,simultaneous_statement_part)))

condition_simultaneous_statement_part_seq : condition_simultaneous_statement_part condition_simultaneous_statement_part_seq                 (condition_simultaneous_statement_part :: condition_simultaneous_statement_part_seq)
										  | ([])

simultaneous_if_statement : label_colon IF condition USE simultaneous_statement_part condition_simultaneous_statement_part_seq ELSE simultaneous_statement_part END USE identifier SEMICOLON             ((W_datatypes.SIMULTANEOUS_IF_STATEMENT_1(label_colon ,condition ,simultaneous_statement_part ,condition_simultaneous_statement_part_seq ,simultaneous_statement_part ,identifier)))                              
                          | IF condition USE simultaneous_statement_part condition_simultaneous_statement_part_seq ELSE simultaneous_statement_part END USE identifier SEMICOLON                         ((W_datatypes.SIMULTANEOUS_IF_STATEMENT_2(condition ,simultaneous_statement_part ,condition_simultaneous_statement_part_seq ,simultaneous_statement_part ,identifier)))                       
                          | IF condition USE simultaneous_statement_part condition_simultaneous_statement_part_seq ELSE simultaneous_statement_part END USE SEMICOLON                                    ((W_datatypes.SIMULTANEOUS_IF_STATEMENT_8(condition ,simultaneous_statement_part ,condition_simultaneous_statement_part_seq ,simultaneous_statement_part)))         
                          | label_colon IF condition USE simultaneous_statement_part condition_simultaneous_statement_part_seq ELSE simultaneous_statement_part END USE SEMICOLON                        ((W_datatypes.SIMULTANEOUS_IF_STATEMENT_7(label_colon ,condition ,simultaneous_statement_part ,condition_simultaneous_statement_part_seq ,simultaneous_statement_part)))                       
                          | label_colon IF condition USE simultaneous_statement_part condition_simultaneous_statement_part_seq END USE identifier SEMICOLON             ((W_datatypes.SIMULTANEOUS_IF_STATEMENT_3(label_colon ,condition ,simultaneous_statement_part ,condition_simultaneous_statement_part_seq ,identifier)))                              
                          | IF condition USE simultaneous_statement_part condition_simultaneous_statement_part_seq END USE identifier SEMICOLON                         ((W_datatypes.SIMULTANEOUS_IF_STATEMENT_4(condition ,simultaneous_statement_part ,condition_simultaneous_statement_part_seq ,identifier)))                       
                          | IF condition USE simultaneous_statement_part condition_simultaneous_statement_part_seq END USE SEMICOLON                                    ((W_datatypes.SIMULTANEOUS_IF_STATEMENT_6(condition ,simultaneous_statement_part ,condition_simultaneous_statement_part_seq)))         
                          | label_colon IF condition USE simultaneous_statement_part condition_simultaneous_statement_part_seq END USE SEMICOLON                        ((W_datatypes.SIMULTANEOUS_IF_STATEMENT_5(label_colon ,condition ,simultaneous_statement_part ,condition_simultaneous_statement_part_seq)))                       

simultaneous_procedural_statement : label_colon PROCEDURAL IS procedural_declarative_part BEGIN procedural_statement_part END PROCEDURAL identifier SEMICOLON           ((W_datatypes.SIMULTANEOUS_PROCEDURAL_STATEMENT_1(label_colon ,procedural_declarative_part ,procedural_statement_part ,identifier)))                            
                                  | PROCEDURAL IS procedural_declarative_part BEGIN procedural_statement_part END PROCEDURAL SEMICOLON                                  ((W_datatypes.SIMULTANEOUS_PROCEDURAL_STATEMENT_3(procedural_declarative_part ,procedural_statement_part)))       
                                  | PROCEDURAL IS procedural_declarative_part BEGIN procedural_statement_part END PROCEDURAL identifier SEMICOLON                       ((W_datatypes.SIMULTANEOUS_PROCEDURAL_STATEMENT_2(procedural_declarative_part ,procedural_statement_part ,identifier)))              
                                  | label_colon PROCEDURAL IS procedural_declarative_part BEGIN procedural_statement_part END PROCEDURAL SEMICOLON                      ((W_datatypes.SIMULTANEOUS_PROCEDURAL_STATEMENT_4(label_colon ,procedural_declarative_part ,procedural_statement_part)))              
                                  | label_colon PROCEDURAL procedural_declarative_part BEGIN procedural_statement_part END PROCEDURAL identifier SEMICOLON           ((W_datatypes.SIMULTANEOUS_PROCEDURAL_STATEMENT_1(label_colon ,procedural_declarative_part ,procedural_statement_part ,identifier)))                            
                                  | PROCEDURAL procedural_declarative_part BEGIN procedural_statement_part END PROCEDURAL SEMICOLON                                  ((W_datatypes.SIMULTANEOUS_PROCEDURAL_STATEMENT_3(procedural_declarative_part ,procedural_statement_part)))       
                                  | PROCEDURAL procedural_declarative_part BEGIN procedural_statement_part END PROCEDURAL identifier SEMICOLON                       ((W_datatypes.SIMULTANEOUS_PROCEDURAL_STATEMENT_2(procedural_declarative_part ,procedural_statement_part ,identifier)))              
                                  | label_colon PROCEDURAL procedural_declarative_part BEGIN procedural_statement_part END PROCEDURAL SEMICOLON                      ((W_datatypes.SIMULTANEOUS_PROCEDURAL_STATEMENT_4(label_colon ,procedural_declarative_part ,procedural_statement_part)))              

simultaneous_statement : simple_simultaneous_statement                              ((W_datatypes.SIMULTANEOUS_STATEMENT_1(simple_simultaneous_statement)))              
                       | simultaneous_if_statement                                  ((W_datatypes.SIMULTANEOUS_STATEMENT_2(simultaneous_if_statement)))              
                       | simultaneous_case_statement                                ((W_datatypes.SIMULTANEOUS_STATEMENT_3(simultaneous_case_statement)))              
                       | simultaneous_procedural_statement                          ((W_datatypes.SIMULTANEOUS_STATEMENT_4(simultaneous_procedural_statement)))                     
                       | label_colon NULL SEMICOLON                                 ((W_datatypes.SIMULTANEOUS_STATEMENT_5(label_colon)))              

simultaneous_statement_seq : simultaneous_statement simultaneous_statement_seq             (simultaneous_statement :: simultaneous_statement_seq)
						   | ([])

simultaneous_statement_part : simultaneous_statement_seq                            ((W_datatypes.SIMULTANEOUS_STATEMENT_PART(simultaneous_statement_seq)))

source_aspect : SPECTRUM simple_expression COMMA simple_expression                  ((W_datatypes.SOURCE_ASPECT_1(simple_expression,simple_expression)))                            
              | NOISE simple_expression                                             ((W_datatypes.SOURCE_ASPECT_2(simple_expression)))

source_quantity_declaration : QUANTITY identifier_list COLON subtype_indication source_aspect SEMICOLON                ((W_datatypes.SOURCE_QUANTITY_DECLARATION(identifier_list ,subtype_indication ,source_aspect)))

step_limit_specification : LIMIT quantity_specification WITH expression SEMICOLON                 ((W_datatypes.STEP_LIMIT_SPECIFICATION(quantity_specification ,expression)))

subnature_declaration : SUBNATURE identifier IS subnature_indication SEMICOLON                    ((W_datatypes.SUBNATURE_DECLARATION(identifier ,subnature_indication)))

subnature_indication : name index_constraint TOLERANCE expression ACROSS expression THROUGH       ((W_datatypes.SUBNATURE_INDICATION_1(name ,index_constraint ,expression ,expression)))                                                               
                     | name TOLERANCE expression ACROSS expression THROUGH                        ((W_datatypes.SUBNATURE_INDICATION_2(name ,expression ,expression)))                                          
                     | name                                                                       ((W_datatypes.SUBNATURE_INDICATION_3(name)))
                     | name index_constraint                                                      ((W_datatypes.SUBNATURE_INDICATION_4(name ,index_constraint)))              

subprogram_body : subprogram_specification IS subprogram_declarative_part BEGIN subprogram_statement_part END subprogram_kind designator SEMICOLON ((W_datatypes.SUBPROGRAM_BODY_1(subprogram_specification,subprogram_declarative_part,subprogram_statement_part,subprogram_kind,designator)))
                | subprogram_specification IS subprogram_declarative_part BEGIN subprogram_statement_part END designator SEMICOLON ((W_datatypes.SUBPROGRAM_BODY_2(subprogram_specification,subprogram_declarative_part,subprogram_statement_part,designator)))
                | subprogram_specification IS subprogram_declarative_part BEGIN subprogram_statement_part END SEMICOLON ((W_datatypes.SUBPROGRAM_BODY_3(subprogram_specification,subprogram_declarative_part,subprogram_statement_part)))
                | subprogram_specification IS subprogram_declarative_part BEGIN subprogram_statement_part END subprogram_kind SEMICOLON ((W_datatypes.SUBPROGRAM_BODY_4(subprogram_specification,subprogram_declarative_part,subprogram_statement_part,subprogram_kind)))

subprogram_declaration : subprogram_specification SEMICOLON ((W_datatypes.SUBPROGRAM_DECLARATION(subprogram_specification)))

subprogram_declarative_item_seq : subprogram_declarative_item subprogram_declarative_item_seq            (subprogram_declarative_item :: subprogram_declarative_item_seq)
                                   |             ([])

subprogram_declarative_item : subprogram_declaration ((W_datatypes.SUBPROGRAM_DECLARATIVE_ITEM_1(subprogram_declaration)))
                            | subprogram_body ((W_datatypes.SUBPROGRAM_DECLARATIVE_ITEM_2(subprogram_body)))
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

subprogram_kind : PROCEDURE  ((W_datatypes.Procedure()))
                | FUNCTION ((W_datatypes.Function()))

subprogram_specification : procedure_specification ((W_datatypes.SUBPROGRAM_SPECIFICATION_1(procedure_specification)))
                         | function_specification  ((W_datatypes.SUBPROGRAM_SPECIFICATION_2(function_specification)))

procedure_specification : PROCEDURE designator LPARAN formal_parameter_list RPARAN               ((W_datatypes.PROCEDURE_SPECIFICATION_1(designator ,formal_parameter_list)))                                    
                        | PROCEDURE designator                                                   ((W_datatypes.PROCEDURE_SPECIFICATION_2(designator))) 

function_specification : PURE FUNCTION designator LPARAN formal_parameter_list RPARAN RETURN subtype_indication         ((W_datatypes.FUNCTION_SPECIFICATION_1(designator ,formal_parameter_list ,subtype_indication)))                                         
                       | PURE FUNCTION designator RETURN subtype_indication                                             ((W_datatypes.FUNCTION_SPECIFICATION_2(designator ,subtype_indication)))      
                       | IMPURE FUNCTION designator LPARAN formal_parameter_list RPARAN RETURN subtype_indication         ((W_datatypes.FUNCTION_SPECIFICATION_1(designator ,formal_parameter_list ,subtype_indication)))                                         
                       | IMPURE FUNCTION designator RETURN subtype_indication                                             ((W_datatypes.FUNCTION_SPECIFICATION_2(designator ,subtype_indication)))      
                       | FUNCTION designator LPARAN formal_parameter_list RPARAN RETURN subtype_indication         ((W_datatypes.FUNCTION_SPECIFICATION_1(designator ,formal_parameter_list ,subtype_indication)))                                         
                       | FUNCTION designator RETURN subtype_indication                                             ((W_datatypes.FUNCTION_SPECIFICATION_2(designator ,subtype_indication)))      

subprogram_statement_part : sequential_statement_seq ((W_datatypes.SUBPROGRAM_STATEMENT_PART(sequential_statement_seq)))

subtype_declaration : SUBTYPE identifier IS subtype_indication SEMICOLON ((W_datatypes.SUBTYPE_DECLARATION(identifier,subtype_indication)))

subtype_indication : selected_name selected_name constraint tolerance_aspect           ((W_datatypes.SUBTYPE_INDICATION_1(selected_name ,selected_name ,constraint ,tolerance_aspect)))                                                 
                   | selected_name constraint tolerance_aspect                         ((W_datatypes.SUBTYPE_INDICATION_2(selected_name ,constraint ,tolerance_aspect)))                                   
                   | selected_name selected_name tolerance_aspect                      ((W_datatypes.SUBTYPE_INDICATION_3(selected_name ,selected_name ,tolerance_aspect)))                                   
                   | selected_name tolerance_aspect                                    ((W_datatypes.SUBTYPE_INDICATION_4(selected_name ,tolerance_aspect)))                     
                   | selected_name selected_name                                       ((W_datatypes.SUBTYPE_INDICATION_5(selected_name ,selected_name)))                     
                   | selected_name                                                     ((W_datatypes.SUBTYPE_INDICATION_6(selected_name)))
                   | selected_name selected_name constraint                            ((W_datatypes.SUBTYPE_INDICATION_7(selected_name ,selected_name ,constraint)))                                   
                   | selected_name constraint                                          ((W_datatypes.SUBTYPE_INDICATION_8(selected_name ,constraint)))              

suffix : identifier ((W_datatypes.SUFFIX_1(identifier)))
       | character_literal ((W_datatypes.SUFFIX_3(character_literal)))
       | string_literal   ((W_datatypes.SUFFIX_4(string_literal)))
       | ALL                ((W_datatypes.SUFFIX_2()))

target : name ((W_datatypes.TARGET_1(name)))
       | aggregate ((W_datatypes.TARGET_2(aggregate)))

multiplying_operator_factor : multiplying_operator factor             ((W_datatypes.MULTIPLYING_OPERATOR_FACTOR(multiplying_operator,factor)))

multiplying_operator_factor_seq : multiplying_operator_factor multiplying_operator_factor_seq            (multiplying_operator_factor :: multiplying_operator_factor_seq)
                                   |             ([])

term : factor multiplying_operator_factor_seq ((W_datatypes.TERM(factor,multiplying_operator_factor_seq)))

terminal_aspect : name TO name                         ((W_datatypes.TERMINAL_ASPECT_1(name,name)))        
                | name                                 ((W_datatypes.TERMINAL_ASPECT_2(name))) 

terminal_declaration : TERMINAL identifier_list COLON subnature_indication SEMICOLON      ((W_datatypes.TERMINAL_DECLARATION(identifier_list ,subnature_indication)))

through_aspect : identifier_list tolerance_aspect ASSIGN expression THROUGH         ((W_datatypes.THROUGH_ASPECT_1(identifier_list ,tolerance_aspect ,expression)))                                         
               | identifier_list ASSIGN expression THROUGH                          ((W_datatypes.THROUGH_ASPECT_2(identifier_list ,expression)))                           
               | identifier_list THROUGH                                             ((W_datatypes.THROUGH_ASPECT_3(identifier_list)))      
               | identifier_list tolerance_aspect THROUGH                            ((W_datatypes.THROUGH_ASPECT_4(identifier_list ,tolerance_aspect)))                           

timeout_clause : FOR expression ((W_datatypes.TIMEOUT_CLAUSE(expression)))

tolerance_aspect : TOLERANCE expression          ((W_datatypes.TOLERANCE_ASPECT(expression)))

type_declaration : TYPE identifier IS type_definition SEMICOLON        ((W_datatypes.TYPE_DECLARATION_1(identifier,type_definition)))
                 | TYPE identifier SEMICOLON                                ((W_datatypes.TYPE_DECLARATION_2(identifier)))

type_definition : scalar_type_definition  ((W_datatypes.TYPE_DEFINITION_1(scalar_type_definition)))
                | composite_type_definition  ((W_datatypes.TYPE_DEFINITION_2(composite_type_definition)))
                | access_type_definition  ((W_datatypes.TYPE_DEFINITION_3(access_type_definition)))
                | file_type_definition  ((W_datatypes.TYPE_DEFINITION_4(file_type_definition)))

index_subtype_definition_seq : COMMA index_subtype_definition index_subtype_definition_seq               (index_subtype_definition :: index_subtype_definition_seq)
                            |             ([])

unconstrained_array_definition : ARRAY LPARAN index_subtype_definition index_subtype_definition_seq RPARAN OF subtype_indication      ((W_datatypes.UNCONSTRAINED_ARRAY_DEFINITION(index_subtype_definition,index_subtype_definition_seq,subtype_indication)))

unconstrained_nature_definition : ARRAY LPARAN index_subtype_definition index_subtype_definition_seq RPARAN OF subnature_indication      ((W_datatypes.UNCONSTRAINED_NATURE_DEFINITION(index_subtype_definition,index_subtype_definition_seq,subnature_indication)))

use_clause_seq : use_clause use_clause_seq      (use_clause :: use_clause_seq)
               |     ([])

use_clause : USE selected_name selected_name_seq SEMICOLON ((W_datatypes.USE_CLAUSE(selected_name,selected_name_seq)))

variable_assignment_statement : label_colon target ASSIGN expression SEMICOLON                ((W_datatypes.VARIABLE_ASSIGNMENT_STATEMENT_1(label_colon,target,expression)))
                              | target ASSIGN expression SEMICOLON                            ((W_datatypes.VARIABLE_ASSIGNMENT_STATEMENT_2(target,expression)))   

variable_declaration : SHARED VARIABLE identifier_list COLON subtype_indication ASSIGN expression SEMICOLON     ((W_datatypes.VARIABLE_DECLARATION_1(identifier_list,subtype_indication,expression)))
                     | VARIABLE identifier_list COLON subtype_indication ASSIGN expression SEMICOLON    ((W_datatypes.VARIABLE_DECLARATION_1(identifier_list,subtype_indication,expression)))
                     | SHARED VARIABLE identifier_list COLON subtype_indication SEMICOLON      ((W_datatypes.VARIABLE_DECLARATION_2(identifier_list,subtype_indication)))
                     | VARIABLE identifier_list COLON subtype_indication SEMICOLON      ((W_datatypes.VARIABLE_DECLARATION_2(identifier_list,subtype_indication)))

wait_statement : label_colon WAIT sensitivity_clause condition_clause timeout_clause SEMICOLON ((W_datatypes.WAIT_STATEMENT_4(label_colon,sensitivity_clause,condition_clause,timeout_clause)))
               | label_colon WAIT condition_clause timeout_clause SEMICOLON  ((W_datatypes.WAIT_STATEMENT_2(label_colon,condition_clause,timeout_clause)))
               | label_colon WAIT sensitivity_clause timeout_clause SEMICOLON  ((W_datatypes.WAIT_STATEMENT_8(label_colon,sensitivity_clause,timeout_clause)))
               | label_colon WAIT SEMICOLON ((W_datatypes.WAIT_STATEMENT_9(label_colon)))
               | label_colon WAIT sensitivity_clause condition_clause SEMICOLON ((W_datatypes.WAIT_STATEMENT_15(label_colon,sensitivity_clause,condition_clause)))
               | label_colon WAIT sensitivity_clause SEMICOLON ((W_datatypes.WAIT_STATEMENT_11(label_colon,sensitivity_clause)))
               | label_colon WAIT condition_clause SEMICOLON ((W_datatypes.WAIT_STATEMENT_13(label_colon,condition_clause)))
               | label_colon WAIT timeout_clause SEMICOLON ((W_datatypes.WAIT_STATEMENT_6(label_colon,timeout_clause)))
               | WAIT sensitivity_clause condition_clause timeout_clause SEMICOLON ((W_datatypes.WAIT_STATEMENT_3(sensitivity_clause,condition_clause,timeout_clause)))
               | WAIT sensitivity_clause timeout_clause SEMICOLON ((W_datatypes.WAIT_STATEMENT_7(sensitivity_clause,timeout_clause)))
               | WAIT condition_clause timeout_clause SEMICOLON ((W_datatypes.WAIT_STATEMENT_1(condition_clause,timeout_clause)))
               | WAIT SEMICOLON ((W_datatypes.WAIT_STATEMENT_16()))
               | WAIT sensitivity_clause condition_clause SEMICOLON ((W_datatypes.WAIT_STATEMENT_14(sensitivity_clause,condition_clause)))
               | WAIT sensitivity_clause SEMICOLON ((W_datatypes.WAIT_STATEMENT_10(sensitivity_clause)))
               | WAIT condition_clause SEMICOLON ((W_datatypes.WAIT_STATEMENT_12(condition_clause)))
               | WAIT timeout_clause SEMICOLON ((W_datatypes.WAIT_STATEMENT_5(timeout_clause)))

waveform : waveform_element waveform_element_seq ((W_datatypes.WAVEFORM(waveform_element,waveform_element_seq)))
         | UNAFFECTED ((W_datatypes.Unaffected1()))

waveform_element_seq : COMMA waveform_element waveform_element_seq           (waveform_element :: waveform_element_seq)
                     |             ([])

waveform_element : expression AFTER expression ((W_datatypes.WAVEFORM_ELEMENT_1(expression1,expression2)))
                 | expression ((W_datatypes.WAVEFORM_ELEMENT_2(expression)))
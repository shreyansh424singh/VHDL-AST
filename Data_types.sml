structure W_datatypes =
struct

  datatype  AST = ROOT of DESIGN_FILE

    and   absolute_pathname = ABSOLUTE_PATHNAME of Par_PathName

    and   abstract_literal  = DECIMAL_LITERAL of decimal_literal
                              | BASED_LITERAL of based_literal

    and   access_incomplete_type_definition = INCOMPLETE_SUBTYPE_INDICATION of incomplete_subtype_indication

    and   access_type_definition = SUBTYPE_INDICATION of subtype_indication

    and   actual_designator = EXPRESSION of expression
                              | NAME of name
                              | SUBTYPE_INDICATION of subtype_indication
                              | OPEN

    and   actual_part = ACTUAL_DESIGNATOR of actual_designator
                        | FUNCTION_NAME of name * actual_designator
                        | TYPE_MARK of  type_mark * actual_designator

    and   adding_operator = PLUS | MINUS | AMP

    and   aggregate = ELEMENT_ASSOCIATION of element_association list

    and   alias_declaration = ALIAS_1 of alias_designator * name         
                              | ALIAS_2 of alias_designator * subtype_indication * name * signatur
                              | ALIAS_3 of alias_designator * name * signatur
                              | ALIAS_4 of alias_designator * subtype_indication * name

    and   alias_designator = IDENTIFIER of identifier
                             | CHARACTER_LITERAL of character_literal
                             | OPERATOR_SYMBOL of operator_symbol

    and   allocator = SUBTYPE_INDICATION of subtype_indication
                      | QUALIFIED_EXPRESSION of qualified_expression

    and   anonymous_type_indication = INCOMPLETE_TYPE_DEFINITION of incomplete_type_definition

    and   architecture_body = ARCHITECTURE_1 of identifier * name * architecture_declarative_part * architecture_statement_part
                              | ARCHITECTURE_2 of identifier * name * architecture_declarative_part * architecture_statement_part * simple_name

    and   architecture_declarative_part = BLOCK_DECLARATIVE_ITEM of block_declarative_item list

    and   architecture_path_name = ARCHITECTURE_PATH_NAME of simple_name * simple_name

    and   architecture_statement_part = ARCHITECTURE_STATEMENT_PART of concurrent_statement list

    and   array_constraint = ARRAY_INDEX_CONSTRAINT_1 of index_constraint * array_element_constraint
                             | ARRAY_INDEX_CONSTRAINT_2 of index_constraint
                             | ARRAY_ELEMENT_CONSTRAINT_1 of array_element_constraint 
                             | OPEN 

    and   array_element_constraint = ARRAY_ELEMENT_CONSTRAINT of element_constraint

    and   array_element_resolution = ARRAY_RESOLUTION_INDICATION of resolution_indication

    and   array_incomplete_type_definition = ARRAY_INCOMPLETE_TYPE_DEF of array_index_incomplete_type_list * incomplete_subtype_indication

    and   array_index_incomplete_type = ARRAY_INDEX_SUBTYPE_DEFINITION of index_subtype_definition
                                        | ARRAY_INDEX_CONSTRAINT of index_constraint
                                        | ARRAY_ANONYMOUS_TYPE_INDICATION of anonymous_type_indication

    and   array_index_incomplete_type_list = ARRAY_INDEX_INCOMPLETE_TYPE_LIST of array_index_incomplete_type list

    and   array_mode_view_indication = ARRAY_MODE_VIEW_IND of name * subtype_indication

    and   array_type_definition = UNBOUNDED_ARRAY_DEFINITION of unbounded_array_definition
                                  | CONSTRAINED_ARRAY_DEFINITION of constrained_array_definition

    and   assertion = ASSERT_1 of condition * expression * expression                                 
                      | ASSERT_2 of condition * expression

    and   assertion_statement = ASSERTION_STM_1 of label * assertion                      
                                | ASSERTION_STM_2 of assertion

    and   association_element = ASSOCIATION_ELE_1 of formal_part * actual_part                                
                                | ASSOCIATION_ELE_2 of actual_part

    and   association_list = ASSOCIATION_ELE_LiST of association_element list

    and   attribute_declaration = ATTRIBUTE of identifier * type_mark

    and   attribute_designator = ATTRIBUTE_DESIGNATOR of simple_name

    and   attribute_name = ATTRIBUTE_NAME_1 of prefix * signatur * attribute_designator * expression
                           | ATTRIBUTE_NAME_2 of prefix * attribute_designator * expression
                           | ATTRIBUTE_NAME_3 of prefix * signatur * attribute_designator
                           | ATTRIBUTE_NAME_4 of prefix * attribute_designator

    and   attribute_specification = ATTRIBUTE_SPECIFICATION of attribute_designator *  entity_specification * conditional_expression

    and   base = BASE of integer 
    
    and   base_specifier = B | O | X | UB | UO | UX | SB | SO | SX | D

    and   based_integer = EXTENDED_DIGIT_LIST of extended_digit list

    and   based_literal = BASED_LITERAL_1 of base * based_integer * based_integer * exponent
                          | BASED_LITERAL_2 of base * based_integer * based_integer 
                          | BASED_LITERAL_3 of base * based_integer * exponent
                          | BASED_LITERAL_4 of base * based_integer

    and   basic_character = BASIC_CHARACTER_1 of basic_graphic_character
                            | BASIC_CHARACTER_2 of format_effector

    and   basic_graphic_character = BASIC_GRAPHIC_CHARACTER_1 of upper_case_letter
                                    | BASIC_GRAPHIC_CHARACTER_2 of digit
                                    | BASIC_GRAPHIC_CHARACTER_3 of special_character
                                    | BASIC_GRAPHIC_CHARACTER_4 of space_character                         

    and   basic_identifier = BASIC_IDENTIFIER of letter * letter_or_digit list

    and   binary_miscellaneous_operator = EXPT

    and   binding_indication = BINDING_INDICATION_1 of entity_aspect * generic_map_aspect * port_map_aspect                                   
                               | BINDING_INDICATION_2 of entity_aspect * generic_map_aspect                                   
                               | BINDING_INDICATION_3 of entity_aspect * port_map_aspect                                   
                               | BINDING_INDICATION_4 of generic_map_aspect * port_map_aspect                                   
                               | BINDING_INDICATION_5 of entity_aspect
                               | BINDING_INDICATION_6 of port_map_aspect                                   
                               | BINDING_INDICATION_7 of generic_map_aspect    

    and   bit_string_literal = BIT_STRING_LITERAL_1 of integer * base_specifier * bit_value                               
                               | BIT_STRING_LITERAL_2 of integer * base_specifier
                               | BIT_STRING_LITERAL_3 of base_specifier
                               | BIT_STRING_LITERAL_4 of base_specifier * bit_value                               

    and   bit_value = BIT_VALUE of graphic_character list

    and   block_configuration = BLOCK_CONFIGURATION of block_specification * use_clause list * configuration_item list

    and   block_declarative_item = BLOCK_DECLARATIVE_ITEM_1 of subprogram_declaration
                                   | BLOCK_DECLARATIVE_ITEM_2 of subprogram_body
                                   | BLOCK_DECLARATIVE_ITEM_3 of subprogram_instantiation_declaration
                                   | BLOCK_DECLARATIVE_ITEM_4 of package_declaration
                                   | BLOCK_DECLARATIVE_ITEM_5 of package_body
                                   | BLOCK_DECLARATIVE_ITEM_6 of package_instantiation_declaration
                                   | BLOCK_DECLARATIVE_ITEM_7 of type_declaration
                                   | BLOCK_DECLARATIVE_ITEM_8 of subtype_declaration
                                   | BLOCK_DECLARATIVE_ITEM_9 of mode_view_declaration
                                   | BLOCK_DECLARATIVE_ITEM_10 of constant_declaration
                                   | BLOCK_DECLARATIVE_ITEM_11 of signal_declaration
                                   | BLOCK_DECLARATIVE_ITEM_12 of variable_declaration
                                   | BLOCK_DECLARATIVE_ITEM_13 of file_declaration
                                   | BLOCK_DECLARATIVE_ITEM_14 of alias_declaration
                                   | BLOCK_DECLARATIVE_ITEM_15 of component_declaration
                                   | BLOCK_DECLARATIVE_ITEM_16 of attribute_declaration
                                   | BLOCK_DECLARATIVE_ITEM_17 of attribute_specification
                                   | BLOCK_DECLARATIVE_ITEM_18 of configuration_specification
                                   | BLOCK_DECLARATIVE_ITEM_19 of disconnection_specification
                                   | BLOCK_DECLARATIVE_ITEM_20 of use_clause
                                   | BLOCK_DECLARATIVE_ITEM_21 of group_template_declaration
                                   | BLOCK_DECLARATIVE_ITEM_22 of group_declaration
                                   | BLOCK_DECLARATIVE_ITEM_23 of PSL_Property_Declaration
                                   | BLOCK_DECLARATIVE_ITEM_24 of PSL_Sequence_Declaration
                                   | BLOCK_DECLARATIVE_ITEM_25 of PSL_Clock_Declaration

    and   block_declarative_part = BLOCK_DECLARATIVE_PART of block_declarative_item list

    and   block_header = BLOCK_HEADER_1 of generic_clause * generic_map_aspect * port_clause * port_map_aspect
                         | BLOCK_HEADER_2 of generic_clause * port_clause * port_map_aspect
                         | BLOCK_HEADER_3 of port_clause * port_map_aspect
                         | BLOCK_HEADER_4 of generic_clause * generic_map_aspect * port_clause
                         | BLOCK_HEADER_5 of generic_clause * port_clause
                         | BLOCK_HEADER_6 of port_clause
                         | BLOCK_HEADER_7 of generic_clause * generic_map_aspect
                         | BLOCK_HEADER_8 of generic_clause

    and   block_specification = BLOCK_SPECIFICATION_1 of name
                                | BLOCK_SPECIFICATION_2 of label
                                | BLOCK_SPECIFICATION_3 of label * generate_specification

    and   block_statement = BLOCK_STATEMENT_1 of label * condition * block_header * block_declarative_part * block_statement_part * label                                
                            | BLOCK_STATEMENT_2 of label * block_header * block_declarative_part * block_statement_part * label                                
                            | BLOCK_STATEMENT_3 of label * block_header * block_declarative_part * block_statement_part                                
                            | BLOCK_STATEMENT_4 of label * condition * block_header * block_declarative_part * block_statement_part                                

    and   block_statement_part = BLOCK_STATEMENT_PART of concurrent_statement list

    and   case_generate_alternative = CASE_GENERATE_ALTERNATIVE_1 of label * choices * generate_statement_body                            
                                      | CASE_GENERATE_ALTERNATIVE_2 of choices * generate_statement_body                            

    and   case_generate_statement = CASE_GENERATE_STATEMENT_1 of label * expression * case_generate_alternative list * label                                      
                                    | CASE_GENERATE_STATEMENT_2 of label * expression * case_generate_alternative list

    and   case_statement = CASE_STATEMENT_1 of label * expression * case_statement_alternative list * label                               
                           | CASE_STATEMENT_2 of expression * case_statement_alternative list * label                               
                           | CASE_STATEMENT_3 of expression * case_statement_alternative list                               
                           | CASE_STATEMENT_4 of label * expression * case_statement_alternative list                               

    and   case_statement_alternative = CASE_STATEMENT_ALTERNATIVE of choices * sequential_statement_body

    and   character_literal = CHARACTER_LITERAL of  graphic_character 

    and   choice = CHOICE_1 of simple_expression
                   | CHOICE_2 of discrete_range
                   | CHOICE_3 of element_simple_name
                   | others

    and   choices = CHOICES of choice list

    and   component_configuration = COMPONENT_CONFIGURATION_1 of component_specification * binding_indication * verification_unit_binding_indication list * block_configuration                   
                                    | COMPONENT_CONFIGURATION_2 of component_specification * verification_unit_binding_indication list * block_configuration                   
                                    | COMPONENT_CONFIGURATION_3 of component_specification * verification_unit_binding_indication list                   
                                    | COMPONENT_CONFIGURATION_4 of component_specification * binding_indication * verification_unit_binding_indication list                   

    and   component_declaration = COMPONENT_DECLARATION_1 of identifier * generic_clause * port_clause * simple_name                                  
                                  | COMPONENT_DECLARATION_2 of identifier * port_clause * simple_name                                  
                                  | COMPONENT_DECLARATION_3 of identifier * port_clause                                  
                                  | COMPONENT_DECLARATION_4 of identifier * generic_clause * port_clause                                  

    and   component_instantiation_statement = COMPONENT_INSTANTIATION_STATEMENT_1 of label * instantiated_unit * generic_map_aspect * port_map_aspect                                   
                                              | COMPONENT_INSTANTIATION_STATEMENT_2 of label * instantiated_unit * port_map_aspect                                   
                                              | COMPONENT_INSTANTIATION_STATEMENT_3 of label * instantiated_unit                                   
                                              | COMPONENT_INSTANTIATION_STATEMENT_4 of label * instantiated_unit * generic_map_aspect                                   

    and   component_specification = COMPONENT_SPECIFICATION of instantiation_list * name                                              

    and   composite_type_definition = COMPOSITE_TYPE_DEFINITION_1 of array_type_definition
                                      | COMPOSITE_TYPE_DEFINITION_2 of record_type_definition

    and   compound_configuration_specification = COMPOUND_CONFIGURATION_SPECIFICATION of component_specification binding_indication * verification_unit_binding_indication list                                          

    and   concurrent_assertion_statement = CONCURRENT_ASSERTION_STATEMENT_1 of label * assertion
                                         | CONCURRENT_ASSERTION_STATEMENT_2 of assertion

    and   concurrent_conditional_signal_assignment = CONCURRENT_CONDITIONAL_SIGNAL_ASSIGNMENT_1 of target * delay_mechanism * conditional_waveforms                                  
                                                   | CONCURRENT_CONDITIONAL_SIGNAL_ASSIGNMENT_2 of target * conditional_waveforms                                  

    and   concurrent_procedure_call_statement = CONCURRENT_PROCEDURE_CALL_STATEMENT_1 of label * procedure_call                                                    
                                              | CONCURRENT_PROCEDURE_CALL_STATEMENT_2 of procedure_call                                                    

    and   concurrent_selected_signal_assignment = CONCURRENT_SELECTED_SIGNAL_ASSIGNMENT_1 of expression * target * delay_mechanism *  selected_waveforms                                              
                                                | CONCURRENT_SELECTED_SIGNAL_ASSIGNMENT_2 of expression * target * selected_waveforms                                              

    and   concurrent_signal_assignment_statement = CONCURRENT_SIGNAL_ASSIGNMENT_STATEMENT_1 of label * concurrent_simple_signal_assignment
                                                 | CONCURRENT_SIGNAL_ASSIGNMENT_STATEMENT_2 of concurrent_simple_signal_assignment
                                                 | CONCURRENT_SIGNAL_ASSIGNMENT_STATEMENT_3 of label * concurrent_conditional_signal_assignment
                                                 | CONCURRENT_SIGNAL_ASSIGNMENT_STATEMENT_4 of concurrent_conditional_signal_assignment
                                                 | CONCURRENT_SIGNAL_ASSIGNMENT_STATEMENT_5 of label * concurrent_selected_signal_assignment
                                                 | CONCURRENT_SIGNAL_ASSIGNMENT_STATEMENT_6 of concurrent_selected_signal_assignment

    and   concurrent_signal_association_statement = CONCURRENT_SIGNAL_ASSOCIATION_STATEMENT_1 of  label * concurrent_simple_signal_association                                                 
                                                  | CONCURRENT_SIGNAL_ASSOCIATION_STATEMENT_2 of concurrent_simple_signal_association                                                 

    and   concurrent_simple_signal_assignment = CONCURRENT_SIMPLE_SIGNAL_ASSIGNMENT_1 of target * delay_mechanism * waveform                                                  
                                              | CONCURRENT_SIMPLE_SIGNAL_ASSIGNMENT_2 of target * waveform                                                  

    and   concurrent_simple_signal_association = CONCURRENT_SIMPLE_SIGNAL_ASSOCIATION of signal_association_target * signal_association_target                                              

    and   concurrent_statement = CONCURRENT_STATEMENT_1 of block_statement
                               | CONCURRENT_STATEMENT_2 of process_statement
                               | CONCURRENT_STATEMENT_3 of concurrent_procedure_call_statement
                               | CONCURRENT_STATEMENT_4 of concurrent_assertion_statement
                               | CONCURRENT_STATEMENT_5 of concurrent_signal_assignment_statement
                               | CONCURRENT_STATEMENT_6 of concurrent_signal_association_statement
                               | CONCURRENT_STATEMENT_7 of component_instantiation_statement
                               | CONCURRENT_STATEMENT_8 of generate_statement
                               | CONCURRENT_STATEMENT_9 of PSL_Directive

    and   condition = CONDITION of expression

    and   condition_clause = CONDITION_CLAUSE of condition

    and   conditional_expression = CONDITIONAL_EXPRESSION of condition list * expression list

    and   conditional_or_unaffected_expression = CONDITIONAL_OR_UNAFFECTED_EXPRESSION of condition list * expression_or_unaffected list                            

    and   conditional_signal_assignment = CONDITIONAL_SIGNAL_ASSIGNMENT_1 of target * delay_mechanism * conditional_waveforms
                                        | CONDITIONAL_SIGNAL_ASSIGNMENT_2 of target * conditional_waveforms

    and   conditional_waveforms = CONDITIONAL_WAVEFORMS of waveform list * condition list 

    and   configuration_declaration = CONFIGURATION_DECLARATION of identifier * name * configuration_declarative_part * verification_unit_binding_indication list * block_configuration * simple_name   

    and   configuration_declarative_item = CONFIGURATION_DECLARATIVE_ITEM_1 of use_clause
                                         | CONFIGURATION_DECLARATIVE_ITEM_2 of attribute_specification
                                         | CONFIGURATION_DECLARATIVE_ITEM_3 of group_declaration                                    

    and   configuration_declarative_part = CONFIGURATION_DECLARATIVE_PART of configuration_declarative_item list

    and   configuration_item = CONFIGURATION_ITEM_1 of block_configuration
                             | CONFIGURATION_ITEM_2 of component_configuration                                          

    and   configuration_specification = CONFIGURATION_SPECIFICATION_1 of simple_configuration_specification
                                      | CONFIGURATION_SPECIFICATION_2 of compound_configuration_specification                             

    and   constant_declaration = CONSTANT_DECLARATION_1 of identifier_list * subtype_indication * conditional_expression                                       
                               | CONSTANT_DECLARATION_2 of identifier_list * subtype_indication                                     

    and   constrained_array_definition = CONSTRAINED_ARRAY_DEFINITION of index_constraint * subtype_indication

    and   constraint = CONSTRAINT_1 of range_constraint
                     | CONSTRAINT_2 of array_constraint
                     | CONSTRAINT_3 of record_constraint                             

    and   context_clause = CONTEXT_CLAUSE of context_item list

    and   context_declaration = CONTEXT_DECLARATION_1 of identifier * context_clause * simple_name                     
                              | CONTEXT_DECLARATION_2 of identifier * context_clause

    and   context_item = CONTEXT_ITEM_1 of library_clause
                       | CONTEXT_ITEM_2 of use_clause
                       | CONTEXT_ITEM_3 of context_reference   

    and   context_reference = CONTEXT_REFERENCE of selected_name list                                           

    (* and   decimal_literal = DECIMAL_LITERAL of  *)

    and   delay_mechanism = DELAY_MECHANISM of expression

    and   design_file = DESIGN_FILE of design_unit list

    and   design_unit = DESIGN_UNIT of context_clause library_unit

    and   designator = DESIGNATOR_1 of identifier
                     | DESIGNATOR_2 of operator_symbol

    and   direction = TO | DOWNTO

    and   disconnection_specification = DISCONNECTION_SPECIFICATION of guarded_signal_specification * expression
    
    and   discrete_range = DISCRETE_RANGE_1 of subtype_indication
                         | DISCRETE_RANGE_2 of range                     

    and   discrete_incomplete_type_definition = BOX

    and   element_array_mode_view_indication = ELEMENT_ARRAY_MODE_VIEW_INDICATION of name

    and   element_association = ELEMENT_ASSOCIATION_1 of choices * expression                         
                              | ELEMENT_ASSOCIATION_2 of expression

    and   element_constraint = ELEMENT_CONSTRAINT_1 of array_constraint
                             | ELEMENT_CONSTRAINT_2 of record_constraint                              

    and   element_declaration = ELEMENT_DECLARATION of identifier_list * element_subtype_definition 

    and   element_mode_indication = ELEMENT_MODE_INDICATION_1 of mode
                                  | ELEMENT_MODE_INDICATION_2 of element_mode_view_indication                              

    and   element_mode_view_indication = ELEMENT_MODE_VIEW_INDICATION_1 of element_record_mode_view_indication
                                       | ELEMENT_MODE_VIEW_INDICATION_2 of element_array_mode_view_indication                                    

    and   element_record_mode_view_indication = ELEMENT_RECORD_MODE_VIEW_INDICATION of name

    and   element_resolution = ELEMENT_RESOLUTION_1 of array_element_resolution
                             | ELEMENT_RESOLUTION_2 of record_resolution                                       

    and   element_subtype_definition = ELEMENT_SUBTYPE_DEFINITION of subtype_indication

    and   entity_aspect = ENTITY_ASPECT_1 of name * identifier
                        | ENTITY_ASPECT_2 of name                              
                        | OPEN

    and   entity_class = ENTITY
                       | ARCHITECTURE
                       | CONFIGURATION
                       | PROCEDURE
                       | FUNCTION
                       | PACKAGE
                       | TYPE
                       | SUBTYPE
                       | CONSTANT
                       | VARIABLE
                       | COMPONENT
                       | LABEL
                       | LITERAL
                       | UNITS
                       | GROUP
                       | FILE
                       | PROPERTY
                       | SEQUENCE

    and   entity_class_entry = ENTITY_CLASS_ENTRY of entity_class

    and   entity_class_entry_list = ENTITY_CLASS_ENTRY_LIST of entity_class_entry list

    and   entity_declaration = ENTITY_DECLARATION_1 of  identifier * entity_header * entity_declarative_part * entity_statement_part * name                       
                             | ENTITY_DECLARATION_2 of  identifier * entity_header * entity_declarative_part * name                       
                             | ENTITY_DECLARATION_3 of  identifier * entity_header * entity_declarative_part                        
                             | ENTITY_DECLARATION_4 of  identifier * entity_header * entity_declarative_part * entity_statement_part                        

    and   entity_declarative_item = ENTITY_DECLARATIVE_ITEM_1 of subprogram_declaration
                                  | ENTITY_DECLARATIVE_ITEM_2 of subprogram_body
                                  | ENTITY_DECLARATIVE_ITEM_3 of subprogram_instantiation_declaration
                                  | ENTITY_DECLARATIVE_ITEM_4 of package_declaration
                                  | ENTITY_DECLARATIVE_ITEM_5 of package_body
                                  | ENTITY_DECLARATIVE_ITEM_6 of package_instantiation_declaration
                                  | ENTITY_DECLARATIVE_ITEM_7 of type_declaration
                                  | ENTITY_DECLARATIVE_ITEM_8 of subtype_declaration
                                  | ENTITY_DECLARATIVE_ITEM_9 of mode_view_declaration
                                  | ENTITY_DECLARATIVE_ITEM_10 of constant_declaration
                                  | ENTITY_DECLARATIVE_ITEM_11 of signal_declaration
                                  | ENTITY_DECLARATIVE_ITEM_12 of variable_declaration
                                  | ENTITY_DECLARATIVE_ITEM_13 of file_declaration
                                  | ENTITY_DECLARATIVE_ITEM_14 of alias_declaration
                                  | ENTITY_DECLARATIVE_ITEM_15 of attribute_declaration
                                  | ENTITY_DECLARATIVE_ITEM_16 of attribute_specification
                                  | ENTITY_DECLARATIVE_ITEM_17 of disconnection_specification
                                  | ENTITY_DECLARATIVE_ITEM_18 of use_clause
                                  | ENTITY_DECLARATIVE_ITEM_19 of group_template_declaration
                                  | ENTITY_DECLARATIVE_ITEM_20 of group_declaration
                                  | ENTITY_DECLARATIVE_ITEM_21 of PSL_Property_Declaration
                                  | ENTITY_DECLARATIVE_ITEM_22 of PSL_Sequence_Declaration
                                  | ENTITY_DECLARATIVE_ITEM_23 of PSL_Clock_Declaration

    and   entity_declarative_part = ENTITY_DECLARATIVE_PART of entity_declarative_item list                                  

    and   entity_designator = ENTITY_DESIGNATOR_1 of entity_tag * signatur
                            | ENTITY_DESIGNATOR_2 of entity_tag

    and   entity_header = ENTITY_HEADER_1 of generic_clause * port_clause                            
                        | ENTITY_HEADER_2 of port_clause                            
                        | ENTITY_HEADER_3 of generic_clause                            

    and   entity_name_list = ENTITY_NAME_LIST of entity_designator list                        
                           | OTHERS 
                           | ALL

    and   entity_specification = ENTITY_SPECIFICATION of entity_name_list * entity_class                           

    and   entity_statement = ENTITY_STATEMENT_1 of concurrent_assertion_statement
                           | ENTITY_STATEMENT_2 of concurrent_procedure_call_statement
                           | ENTITY_STATEMENT_3 of process_statement
                           | ENTITY_STATEMENT_4 of PSL_Directive

    and   entity_statement_part = ENTITY_STATEMENT_PART of entity_statement list

    and   entity_tag = ENTITY_TAG_1 of simple_name
                     | ENTITY_TAG_2 of character_literal
                     | ENTITY_TAG_3 of operator_symbol                           

    and   enumeration_literal = ENUMERATION_LITERAL_1 of identifier
                              | ENUMERATION_LITERAL_2 of character_literal                      

    and   enumeration_type_definition = ENUMERATION_TYPE_DEFINITION of enumeration_literal list

    and   exit_statement = EXIT_STATEMENT_1 of label * label * condition                               
                         | EXIT_STATEMENT_2 of label * condition                               
                         | EXIT_STATEMENT_3 of condition                               
                         | EXIT_STATEMENT_4 of label * label                               
                         | EXIT_STATEMENT_5 of label                               
                         (* | EXIT_STATEMENT_6 of     null????    or EXIT                              *)

    and   exponent = EXPONENT of integer

    and   expression = EXPRESSION_1 of condition_operator primary
                     | EXPRESSION_2 of logical_expression                         

    and   expression_or_unaffected = EXPRESSION_OR_UNAFFECTED of expression
                                   | UNAFFECTED

    and   extended_digit = EXTENDED_DIGIT_1 of digit
                         | EXTENDED_DIGIT_2 of letter

    and   extended_identifier = EXTENDED_IDENTIFIER of graphic_character list

    and   external_name = EXTERNAL_NAME_1 of external_constant_name
                        | EXTERNAL_NAME_2 of external_signal_name
                        | EXTERNAL_NAME_3 of external_variable_name                                                              

    and   external_constant_name = EXTERNAL_CONSTANT_NAME of external_pathname * subtype_indication                        

    and   external_signal_name = EXTERNAL_SIGNAL_NAME of external_pathname * subtype_indication

    and   external_variable_name = EXTERNAL_VARIABLE_NAME of external_pathname * subtype_indication 

    and   external_pathname = EXTERNAL_PATHNAME_1 of package_pathname
                            | EXTERNAL_PATHNAME_2 of absolute_pathname
                            | EXTERNAL_PATHNAME_3 of relative_pathname

    and   factor = FACTOR_1 of unary_expression * unary_expression                            
                 | FACTOR_2 of unary_expression

    and   file_declaration = FILE_DECLARATION_1 of  identifier_list * subtype_indication * file_open_information                  
                           | FILE_DECLARATION_2 of  identifier_list * subtype_indication

    and   file_incomplete_type_definition = FILE_INCOMPLETE_TYPE_DEFINITION of type_mark

    and   file_logical_name = FILE_LOGICAL_NAME of expression

    and   file_open_information = FILE_OPEN_INFORMATION_1 of expression * file_logical_name                           
                                | FILE_OPEN_INFORMATION_2 of file_logical_name

    and   file_type_definition = FILE_TYPE_DEFINITION of type_mark

    (* and   floating_incomplete_type_definition = FLOATING_INCOMPLETE_TYPE_DEFINITION of null                                 *)

    and   floating_type_definition = FLOATING_TYPE_DEFINITION of range_constraint

    and   for_generate_statement = FOR_GENERATE_STATEMENT_1 of label * parameter_specification * generate_statement_body * label
                                 | FOR_GENERATE_STATEMENT_2 of label * parameter_specification * generate_statement_body

    and   force_mode = IN | OUT

    and   formal_designator = FORMAL_DESIGNATOR_1 of name * signatur                                 
                            | FORMAL_DESIGNATOR_2 of name                              

    and   formal_parameter_list = FORMAL_PARAMETER_LIST of interface_list

    and   formal_part = FORMAL_PART_1 of formal_designator
                      | FORMAL_PART_2 of name * formal_designator
                      | FORMAL_PART_3 of type_mark * formal_designator                             

    and   full_type_declaration = FULL_TYPE_DECLARATION of identifier * type_definition

    and   function_call = FUNCTION_CALL_1 of name * generic_map_aspect * parameter_map_aspect                       
                        | FUNCTION_CALL_2 of name * parameter_map_aspect                       
                        | FUNCTION_CALL_3 of name                       
                        | FUNCTION_CALL_4 of name * generic_map_aspect                       

    and   function_specification = FUNCTION_SPECIFICATION of designator subprogram_header * formal_parameter_list * identifier * type_mark

    and   generate_specification = GENERATE_SPECIFICATION_1 of discrete_range
                                 | GENERATE_SPECIFICATION_2 of expression
                                 | GENERATE_SPECIFICATION_3 of label                       

    and   generate_statement = GENERATE_STATEMENT_1 of for_generate_statement
                             | GENERATE_STATEMENT_2 of if_generate_statement
                             | GENERATE_STATEMENT_3 of case_generate_statement                                 

    and   generate_statement_body = GENERATE_STATEMENT_BODY_1 of  block_declarative_part * concurrent_statement list * label
                                  | GENERATE_STATEMENT_BODY_2 of  block_declarative_part * concurrent_statement list
                                  | GENERATE_STATEMENT_BODY_3 of  concurrent_statement list
                                  | GENERATE_STATEMENT_BODY_4 of  concurrent_statement list * label

    and   generic_clause = GENERIC_CLAUSE of generic_list

    and   generic_list = GENERIC_LIST of interface_list

    and   generic_map_aspect = GENERIC_MAP_ASPECT of association_list

    and   graphic_character = GRAPHIC_CHARACTER_1 of basic_graphic_character
                            | GRAPHIC_CHARACTER_2 of lower_case_letter
                            | GRAPHIC_CHARACTER_3 of other_special_character                                  

    and   group_constituent = GROUP_CONSTITUENT_1 of name                            
                            | GROUP_CONSTITUENT_2 of character_literal                           

    and   group_constituent_list = GROUP_CONSTITUENT_LIST of group_constituent list

    and   group_declaration = GROUP_DECLARATION of identifier * name * group_constituent_list

    and   group_template_declaration = GROUP_TEMPLATE_DECLARATION of identifier * entity_class_entry_list

    and   guarded_signal_specification = GUARDED_SIGNAL_SPECIFICATION of signal_list * type_mark

    and   identifier = IDENTIFIER_1 of basic_identifier
                     | IDENTIFIER_2 of extended_identifier

    and   identifier_list = IDENTIFIER_LIST of identifier list

    and   if_generate_statement = IF_GENERATE_STATEMENT_1 of label * label * condition * generate_statement_body * label list * condition list * generate_statement_body list * label * generate_statement_body * label
                                | IF_GENERATE_STATEMENT_2 of label * label * condition * generate_statement_body * label list * condition list * generate_statement_body list * generate_statement_body * label
                                | IF_GENERATE_STATEMENT_3 of label * label * condition * generate_statement_body * label list * condition list * generate_statement_body list * label
                                | IF_GENERATE_STATEMENT_4 of label * label * condition * generate_statement_body * condition list * generate_statement_body list * label * generate_statement_body * label
                                | IF_GENERATE_STATEMENT_5 of label * label * condition * generate_statement_body * condition list * generate_statement_body list * generate_statement_body * label
                                | IF_GENERATE_STATEMENT_6 of label * label * condition * generate_statement_body * condition list * generate_statement_body list * label
                                | IF_GENERATE_STATEMENT_7 of label * label * condition * generate_statement_body * condition list * generate_statement_body list * label * generate_statement_body
                                | IF_GENERATE_STATEMENT_8 of label * label * condition * generate_statement_body * condition list * generate_statement_body list * generate_statement_body
                                | IF_GENERATE_STATEMENT_9 of label * label * condition * generate_statement_body * condition list * generate_statement_body list
                                | IF_GENERATE_STATEMENT_10 of label * label * condition * generate_statement_body * label list * condition list * generate_statement_body list * label * generate_statement_body
                                | IF_GENERATE_STATEMENT_11 of label * label * condition * generate_statement_body * label list * condition list * generate_statement_body list * generate_statement_body
                                | IF_GENERATE_STATEMENT_12 of label * label * condition * generate_statement_body * label list * condition list * generate_statement_body list
                                | IF_GENERATE_STATEMENT_13 of label * condition * generate_statement_body * label list * condition list * generate_statement_body list * label * generate_statement_body * label
                                | IF_GENERATE_STATEMENT_14 of label * condition * generate_statement_body * label list * condition list * generate_statement_body list * generate_statement_body * label
                                | IF_GENERATE_STATEMENT_15 of label * condition * generate_statement_body * label list * condition list * generate_statement_body list * label
                                | IF_GENERATE_STATEMENT_16 of label * condition * generate_statement_body * condition list * generate_statement_body list * label * generate_statement_body * label
                                | IF_GENERATE_STATEMENT_17 of label * condition * generate_statement_body * condition list * generate_statement_body list * generate_statement_body * label
                                | IF_GENERATE_STATEMENT_18 of label * condition * generate_statement_body * condition list * generate_statement_body list * label
                                | IF_GENERATE_STATEMENT_19 of label * condition * generate_statement_body * condition list * generate_statement_body list * label * generate_statement_body
                                | IF_GENERATE_STATEMENT_20 of label * condition * generate_statement_body * condition list * generate_statement_body list * generate_statement_body
                                | IF_GENERATE_STATEMENT_21 of label * condition * generate_statement_body * condition list * generate_statement_body list 
                                | IF_GENERATE_STATEMENT_22 of label * condition * generate_statement_body * label list * condition list * generate_statement_body list * label * generate_statement_body
                                | IF_GENERATE_STATEMENT_23 of label * condition * generate_statement_body * label list * condition list * generate_statement_body list * generate_statement_body
                                | IF_GENERATE_STATEMENT_24 of label * condition * generate_statement_body * label list * condition list * generate_statement_body list
end
   


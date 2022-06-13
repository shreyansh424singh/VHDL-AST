structure W_datatypes =
struct

  datatype  absolute_pathname = ABSOLUTE_PATHNAME of Par_PathName

    and     abstract_literal  = DECIMAL_LITERAL of decimal_literal
                              | BASED_LITERAL of based_literal

    and     access_incomplete_type_definition = INCOMPLETE_SUBTYPE_INDICATION of incomplete_subtype_indication

    and     access_type_definition = SUBTYPE_INDICATION of subtype_indication

    and     actual_designator = EXPRESSION of expression
                              | NAME of name
                              | SUBTYPE_INDICATION of subtype_indication
                              | OPEN

    and     actual_part = ACTUAL_DESIGNATOR of actual_designator
                        | FUNCTION_NAME of name * actual_designator
                        | TYPE_MARK of  type_mark * actual_designator

    and     adding_operator = PLUS | MINUS | AMP

    and     aggregate = ELEMENT_ASSOCIATION of element_association list

    and     alias_declaration = ALIAS_1 of alias_designator * name         
                              | ALIAS_2 of alias_designator * subtype_indication * name * signatur
                              | ALIAS_3 of alias_designator * name * signatur
                              | ALIAS_4 of alias_designator * subtype_indication * name

    and     alias_designator = IDENTIFIER of identifier
                             | CHARACTER_LITERAL of character_literal
                             | OPERATOR_SYMBOL of operator_symbol

    and     allocator = SUBTYPE_INDICATION of subtype_indication
                      | QUALIFIED_EXPRESSION of qualified_expression

    and     anonymous_type_indication = INCOMPLETE_TYPE_DEFINITION of incomplete_type_definition

    and     architecture_body = ARCHITECTURE_1 of identifier * name * architecture_declarative_part * architecture_statement_part
                              | ARCHITECTURE_2 of identifier * name * architecture_declarative_part * architecture_statement_part * simple_name

    and     architecture_declarative_part = BLOCK_DECLARATIVE_ITEM of block_declarative_item list

    and     architecture_path_name = ARCHITECTURE_PATH_NAME of simple_name * simple_name

    and     architecture_statement_part = ARCHITECTURE_STATEMENT_PART of concurrent_statement list

    and     array_constraint = ARRAY_INDEX_CONSTRAINT_1 of index_constraint * array_element_constraint
                             | ARRAY_INDEX_CONSTRAINT_2 of index_constraint
                             | ARRAY_ELEMENT_CONSTRAINT_1 of array_element_constraint 
                             | OPEN 

    and     array_element_constraint = ARRAY_ELEMENT_CONSTRAINT of element_constraint

    and     array_element_resolution = ARRAY_RESOLUTION_INDICATION of resolution_indication

    and     array_incomplete_type_definition = ARRAY_INCOMPLETE_TYPE_DEF of array_index_incomplete_type_list * incomplete_subtype_indication

    and     array_index_incomplete_type = ARRAY_INDEX_SUBTYPE_DEFINITION of index_subtype_definition
                                        | ARRAY_INDEX_CONSTRAINT of index_constraint
                                        | ARRAY_ANONYMOUS_TYPE_INDICATION of anonymous_type_indication

    and     array_index_incomplete_type_list = ARRAY_INDEX_INCOMPLETE_TYPE_LIST of array_index_incomplete_type list

    and     array_mode_view_indication = ARRAY_MODE_VIEW_IND of name * subtype_indication

    and     array_type_definition = UNBOUNDED_ARRAY_DEFINITION of unbounded_array_definition
                                  | CONSTRAINED_ARRAY_DEFINITION of constrained_array_definition

    and     assertion = ASSERT_1 of condition * expression * expression                                 
                      | ASSERT_2 of condition * expression

    and     assertion_statement = ASSERTION_STM_1 of label * assertion                      
                                | ASSERTION_STM_2 of assertion

    and     association_element = ASSOCIATION_ELE_1 of formal_part * actual_part                                
                                | ASSOCIATION_ELE_2 of actual_part

    and     association_list = ASSOCIATION_ELE_LiST of association_element list

    and     attribute_declaration = ATTRIBUTE of identifier * type_mark

    and     attribute_designator = ATTRIBUTE_DESIGNATOR of simple_name

    and     attribute_name = ATTRIBUTE_NAME_1 of prefix * signatur * attribute_designator * expression
                           | ATTRIBUTE_NAME_2 of prefix * attribute_designator * expression
                           | ATTRIBUTE_NAME_3 of prefix * signatur * attribute_designator
                           | ATTRIBUTE_NAME_4 of prefix * attribute_designator

    and     attribute_specification = ATTRIBUTE_SPECIFICATION of attribute_designator *  entity_specification * conditional_expression

    and     base = BASE of integer 
    
    and     base_specifier = B | O | X | UB | UO | UX | SB | SO | SX | D

    and     based_integer = EXTENDED_DIGIT_LIST of extended_digit list

    and     based_literal = BASED_LITERAL_1 of base * based_integer * based_integer * exponent
                          | BASED_LITERAL_2 of base * based_integer * based_integer 
                          | BASED_LITERAL_3 of base * based_integer * exponent
                          | BASED_LITERAL_4 of base * based_integer

    and     basic_character = BASIC_CHARACTER_1 of basic_graphic_character
                            | BASIC_CHARACTER_1 of format_effector

    and     basic_graphic_character = BASIC_GRAPHIC_CHARACTER_1 of upper_case_letter
                                    | BASIC_GRAPHIC_CHARACTER_2 of digit
                                    | BASIC_GRAPHIC_CHARACTER_3 of special_character
                                    | BASIC_GRAPHIC_CHARACTER_4 of space_character                         

    and     basic_identifier = BASIC_IDENTIFIER of letter * letter_or_digit list

    and     binary_miscellaneous_operator = EXPT

    and     binding_indication = BINDING_INDICATION_1 of entity_aspect * generic_map_aspect * port_map_aspect                                   
                               | BINDING_INDICATION_2 of entity_aspect * generic_map_aspect                                   
                               | BINDING_INDICATION_3 of entity_aspect * port_map_aspect                                   
                               | BINDING_INDICATION_4 of generic_map_aspect * port_map_aspect                                   
                               | BINDING_INDICATION_5 of entity_aspect
                               | BINDING_INDICATION_6 of port_map_aspect                                   
                               | BINDING_INDICATION_7 of generic_map_aspect    

    and     bit_string_literal = BIT_STRING_LITERAL_1 of integer * base_specifier * bit_value                               
                               | BIT_STRING_LITERAL_2 of integer * base_specifier
                               | BIT_STRING_LITERAL_3 of base_specifier
                               | BIT_STRING_LITERAL_4 of base_specifier * bit_value                               

    and     bit_value = BIT_VALUE of graphic_character list

    and     block_configuration = BLOCK_CONFIGURATION of block_specification * use_clause list * configuration_item list

    and     block_declarative_item = BLOCK_DECLARATIVE_ITEM_1 of subprogram_declaration
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

    and     block_declarative_part = BLOCK_DECLARATIVE_PART of block_declarative_item list

    and     block_header = BLOCK_HEADER_1 of generic_clause * generic_map_aspect * port_clause * port_map_aspect
                         | BLOCK_HEADER_2 of generic_clause * port_clause * port_map_aspect
                         | BLOCK_HEADER_3 of port_clause * port_map_aspect
                         | BLOCK_HEADER_4 of generic_clause * generic_map_aspect * port_clause
                         | BLOCK_HEADER_5 of generic_clause * port_clause
                         | BLOCK_HEADER_6 of port_clause
                         | BLOCK_HEADER_7 of generic_clause * generic_map_aspect
                         | BLOCK_HEADER_8 of generic_clause

    and     block_specification = BLOCK_SPECIFICATION_1 of name
                                | BLOCK_SPECIFICATION_2 of label
                                | BLOCK_SPECIFICATION_3 of label * generate_specification

    and     block_statement = BLOCK_STATEMENT_1 of label * condition * block_header * block_declarative_part * block_statement_part * label                                
                            | BLOCK_STATEMENT_2 of label * block_header * block_declarative_part * block_statement_part * label                                
                            | BLOCK_STATEMENT_3 of label * block_header * block_declarative_part * block_statement_part                                
                            | BLOCK_STATEMENT_4 of label * condition * block_header * block_declarative_part * block_statement_part                                

    and     block_statement_part = BLOCK_STATEMENT_PART of concurrent_statement list

    and     case_generate_alternative = CASE_GENERATE_ALTERNATIVE_1 of label * choices * generate_statement_body                            
                                      | CASE_GENERATE_ALTERNATIVE_2 of choices * generate_statement_body                            

    and     case_generate_statement = CASE_GENERATE_STATEMENT_1 of label * expression * case_generate_alternative list * label                                      
                                    | CASE_GENERATE_STATEMENT_2 of label * expression * case_generate_alternative list

    and     case_statement = CASE_STATEMENT_1 of label * expression * case_statement_alternative list * label                               
                           | CASE_STATEMENT_2 of expression * case_statement_alternative list * label                               
                           | CASE_STATEMENT_3 of expression * case_statement_alternative list                               
                           | CASE_STATEMENT_4 of label * expression * case_statement_alternative list                               

    and     case_statement_alternative = CASE_STATEMENT_ALTERNATIVE of choices * sequential_statement_body

    and     character_literal = CHARACTER_LITERAL of  graphic_character 

    and     choice = CHOICE_1 of simple_expression
                   | CHOICE_2 of discrete_range
                   | CHOICE_3 of element_simple_name
                   | others

    and     choices = CHOICES of choice list

    and     component_configuration = COMPONENT_CONFIGURATION_1 of component_specification * binding_indication * verification_unit_binding_indication list * block_configuration                   
                                    | COMPONENT_CONFIGURATION_2 of component_specification * verification_unit_binding_indication list * block_configuration                   
                                    | COMPONENT_CONFIGURATION_3 of component_specification * verification_unit_binding_indication list                   
                                    | COMPONENT_CONFIGURATION_4 of component_specification * binding_indication * verification_unit_binding_indication list                   

    and     component_declaration = COMPONENT_DECLARATION_1 of identifier * generic_clause * port_clause * simple_name                                  
                                  | COMPONENT_DECLARATION_2 of identifier * port_clause * simple_name                                  
                                  | COMPONENT_DECLARATION_3 of identifier * port_clause                                  
                                  | COMPONENT_DECLARATION_4 of identifier * generic_clause * port_clause                                  

    and     component_instantiation_statement = COMPONENT_INSTANTIATION_STATEMENT_1 of label * instantiated_unit * generic_map_aspect * port_map_aspect                                   
                                              | COMPONENT_INSTANTIATION_STATEMENT_2 of label * instantiated_unit * port_map_aspect                                   
                                              | COMPONENT_INSTANTIATION_STATEMENT_3 of label * instantiated_unit                                   
                                              | COMPONENT_INSTANTIATION_STATEMENT_4 of label * instantiated_unit * generic_map_aspect                                   

    and     component_specification = COMPONENT_SPECIFICATION of instantiation_list * name                                              

    and     composite_type_definition = COMPOSITE_TYPE_DEFINITION_1 of array_type_definition
                                      | COMPOSITE_TYPE_DEFINITION_2 of record_type_definition

    and     compound_configuration_specification = COMPOUND_CONFIGURATION_SPECIFICATION of component_specification binding_indication * verification_unit_binding_indication list                                          

    and     
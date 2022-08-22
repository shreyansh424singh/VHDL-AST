structure W_datatypes =
struct

  datatype  special_character = Tick  of unit
                              | Lparan  of unit
                              | Rparan  of unit
                              | Comma of unit
                              | Dot of unit
                              | Colon of unit
                              | Semicolon of unit
                              | Bar of unit
                              | Lsquare of unit
                              | Rsquare of unit
                              | Underscore of unit
                              | Hash of unit
                              | Invertedcomma of unit
                              | Carrot of unit

    and   lower_case_letter = Lower_case_letter of unit

    and   upper_case_letter = Upper_case_letter of unit                              

    and   digit = Digit of unit                              
  
(*    and   absolute_pathname = ABSOLUTE_PATHNAME of partial_pathname*)

    and   abstract_literal = DECIMAL_LITERAL of decimal_literal
                           | BASED_LITERAL of based_literal
                           | INTEGER_LITERAL of integer

(*    and   access_incomplete_type_definition = INCOMPLETE_SUBTYPE_INDICATION of incomplete_subtype_indication
*)
    and   access_type_definition = ACCESS_SUBTYPE_INDICATION of subtype_indication

    and   actual_designator = Expression of expression
                              | NAME of name
                              | Open1 of unit

    and   actual_parameter_part = ACTUAL_PARAMETER_PART of association_list

    and   actual_part = ACTUAL_DESIGNATOR of actual_designator
                        | FUNCTION_NAME of name * actual_designator
         (*               | Type_mark of  type_mark * actual_designator
*)
    and      across_aspect = ACROSS_ASPECT of unit

    and   adding_operator = Amp of unit
                         | Plus of unit
                         | Minus of unit

    and   aggregate = ELEMENT_ASSOCIATION of element_association * element_association list

    and   alias_declaration = ALIAS_1 of alias_designator * name         
                              | ALIAS_2 of alias_designator * alias_indication * name * signatur
                              | ALIAS_3 of alias_designator * name * signatur
                              | ALIAS_4 of alias_designator * alias_indication * name

    and   alias_designator = ALIAS_DESIGNATOR_1 of identifier
                             | ALIAS_DESIGNATOR_2 of character_literal
                             | ALIAS_DESIGNATOR_3 of string_literal

    and   alias_indication = ALIAS_INDICATION_1 of subtype_indication
                           | ALIAS_INDICATION_2 of subnature_indication

    and   allocator = SUBTYPE_INDICATION of subtype_indication
                      | QUALIFIED_EXPRESSION of qualified_expression

(*    and   anonymous_type_indication = INCOMPLETE_TYPE_DEFINITION of incomplete_type_definition
*)
    and   architecture_body = ARCHITECTURE_1 of identifier * identifier * architecture_declarative_part * architecture_statement_part
                              | ARCHITECTURE_2 of identifier * identifier * architecture_declarative_part * architecture_statement_part * identifier

    and   architecture_declarative_part = BLOCK_DECLARATIVE_ITEM of block_declarative_item list

(*    and   architecture_path_name = ARCHITECTURE_PATH_NAME of simple_name * simple_name
*)
    and   architecture_statement_part = ARCHITECTURE_STATEMENT_PART of architecture_statement list

    and   label_colon = LABEL_COLON of identifier

    and   architecture_statement = ARCHITECTURE_STATEMENT_1 of block_statement
                                 | ARCHITECTURE_STATEMENT_2 of process_statement
                                 | ARCHITECTURE_STATEMENT_3 of label_colon * concurrent_procedure_call_statement
                                 | ARCHITECTURE_STATEMENT_4 of concurrent_procedure_call_statement
                                 | ARCHITECTURE_STATEMENT_5 of label_colon * concurrent_assertion_statement
                                 | ARCHITECTURE_STATEMENT_6 of concurrent_assertion_statement
                                 | ARCHITECTURE_STATEMENT_7 of label_colon * concurrent_signal_assignment_statement
                                 | ARCHITECTURE_STATEMENT_8 of concurrent_signal_assignment_statement
                                 | ARCHITECTURE_STATEMENT_9 of component_instantiation_statement
                                 | ARCHITECTURE_STATEMENT_10 of generate_statement
                                 | ARCHITECTURE_STATEMENT_11 of concurrent_break_statement
                                 | ARCHITECTURE_STATEMENT_12 of simultaneous_statement

(*    and   array_constraint = ARRAY_INDEX_CONSTRAINT_1 of index_constraint * array_element_constraint
                             | ARRAY_INDEX_CONSTRAINT_2 of index_constraint
                             | ARRAY_ELEMENT_CONSTRAINT_1 of array_element_constraint 
                             | ARRAY_INDEX_CONSTRAINT_3 of unit

    and   array_element_constraint = ARRAY_ELEMENT_CONSTRAINT of element_constraint

    and   array_element_resolution = ARRAY_RESOLUTION_INDICATION of resolution_indication

    and   array_incomplete_type_definition = ARRAY_INCOMPLETE_TYPE_DEF of array_index_incomplete_type_list * incomplete_subtype_indication

    and   array_index_incomplete_type = ARRAY_INDEX_SUBTYPE_DEFINITION of index_subtype_definition
                                        | ARRAY_INDEX_CONSTRAINT of index_constraint
                                        | ARRAY_ANONYMOUS_TYPE_INDICATION of anonymous_type_indication

    and   array_index_incomplete_type_list = ARRAY_INDEX_INCOMPLETE_TYPE_LIST of array_index_incomplete_type list

    and   array_mode_view_indication = ARRAY_MODE_VIEW_IND of name * subtype_indication*)

    and   array_nature_definition = ARRAY_NATURE_DEFINITION_1 of unconstrained_nature_definition
                                | ARRAY_NATURE_DEFINITION_2 of constrained_nature_definition

    and   array_type_definition = ARRAY_TYPE_DEFINITION_1 of unconstrained_array_definition
                                | ARRAY_TYPE_DEFINITION_2 of constrained_array_definition

    and   assertion = ASSERT_1 of condition * expression * expression                                 
                      | ASSERT_2 of condition * expression
                      | ASSERT_3 of condition

    and   assertion_statement = ASSERTION_STM_1 of label_colon * assertion                      
                                | ASSERTION_STM_2 of assertion

    and   association_element = ASSOCIATION_ELE_1 of formal_part * actual_part                                
                                | ASSOCIATION_ELE_2 of actual_part

    and   association_list = ASSOCIATION_ELE_LiST of association_element * association_element list

    and   attribute_declaration = Attribute of label_colon * name

    and   attribute_designator = ATTRIBUTE_DESIGNATOR of identifier
                                | Range of unit

(*    and   attribute_name = ATTRIBUTE_NAME_1 of prefix * signatur * attribute_designator * expression
                           | ATTRIBUTE_NAME_2 of prefix * attribute_designator * expression
                           | ATTRIBUTE_NAME_3 of prefix * signatur * attribute_designator
                           | ATTRIBUTE_NAME_4 of prefix * attribute_designator*)

    and   attribute_specification = ATTRIBUTE_SPECIFICATION of attribute_designator *  entity_specification * expression

    (*and   base = BASE of integer 
    
    and   base_specifier = B_  of unit
                         | O_  of unit
                         | X_  of unit
                         | Ub  of unit
                         | Uo  of unit
                         | Ux  of unit
                         | Sb  of unit
                         | So of unit
                         | Sx  of unit
                         | D_  of unit

    and   based_integer = EXTENDED_DIGIT_LIST of extended_digit * extended_digit list*)

    and   based_literal = Base_literal of string
    (*BASED_LITERAL_1 of base * based_integer * based_integer * exponent
                          | BASED_LITERAL_2 of base * based_integer * based_integer 
                          | BASED_LITERAL_3 of base * based_integer * exponent
                          | BASED_LITERAL_4 of base * based_integer*)

    (*and   basic_character = BASIC_CHARACTER_1 of basic_graphic_character

    and   basic_graphic_character = BASIC_GRAPHIC_CHARACTER_1 of upper_case_letter
                                    | BASIC_GRAPHIC_CHARACTER_2 of digit
                                    | BASIC_GRAPHIC_CHARACTER_3 of special_character*)

    and   basic_identifier = Basic_identifier of string

    and   base_unit_declaration = BASE_UNIT_DECLARATION of identifier

(*    and   binary_miscellaneous_operator = Expt of unit
*)
    and   binding_indication = BINDING_INDICATION_1 of entity_aspect * generic_map_aspect * port_map_aspect                                   
                               | BINDING_INDICATION_2 of entity_aspect * generic_map_aspect                                   
                               | BINDING_INDICATION_3 of entity_aspect * port_map_aspect                                   
                               | BINDING_INDICATION_4 of generic_map_aspect * port_map_aspect                                   
                               | BINDING_INDICATION_5 of entity_aspect
                               | BINDING_INDICATION_6 of port_map_aspect                                   
                               | BINDING_INDICATION_7 of generic_map_aspect    

    and   bit_string_literal = Bit_string_literal of string                         

    (*and   bit_value = BIT_VALUE of graphic_character * graphic_character list*)

    and   block_configuration = BLOCK_CONFIGURATION of block_specification * use_clause list * configuration_item list

    and   block_declarative_item = BLOCK_DECLARATIVE_ITEM_1 of subprogram_declaration
                                   | BLOCK_DECLARATIVE_ITEM_2 of subprogram_body
(*                                   | BLOCK_DECLARATIVE_ITEM_3 of subprogram_instantiation_declaration
*)                                   | BLOCK_DECLARATIVE_ITEM_4 of package_declaration
                                   | BLOCK_DECLARATIVE_ITEM_5 of package_body
(*                                   | BLOCK_DECLARATIVE_ITEM_6 of package_instantiation_declaration
*)                                   | BLOCK_DECLARATIVE_ITEM_7 of type_declaration
                                   | BLOCK_DECLARATIVE_ITEM_8 of subtype_declaration
(*                                   | BLOCK_DECLARATIVE_ITEM_9 of mode_view_declaration
*)                                   | BLOCK_DECLARATIVE_ITEM_10 of constant_declaration
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
                                   | BLOCK_DECLARATIVE_ITEM_23 of step_limit_specification
                                   | BLOCK_DECLARATIVE_ITEM_24 of nature_declaration
                                   | BLOCK_DECLARATIVE_ITEM_25 of subnature_declaration
                                   | BLOCK_DECLARATIVE_ITEM_26 of quantity_declaration
                                   | BLOCK_DECLARATIVE_ITEM_27 of terminal_declaration

    and   block_declarative_part = BLOCK_DECLARATIVE_PART of block_declarative_item list

    and   block_header = BLOCK_HEADER_1 of generic_clause * generic_map_aspect * port_clause * port_map_aspect
                         | BLOCK_HEADER_2 of generic_clause * port_clause * port_map_aspect
                         | BLOCK_HEADER_3 of port_clause * port_map_aspect
                         | BLOCK_HEADER_4 of generic_clause * generic_map_aspect * port_clause
                         | BLOCK_HEADER_5 of generic_clause * port_clause
                         | BLOCK_HEADER_6 of port_clause
                         | BLOCK_HEADER_7 of generic_clause * generic_map_aspect
                         | BLOCK_HEADER_8 of generic_clause
                         | BLOCK_HEADER_9 of unit

    and   block_specification = BLOCK_SPECIFICATION_1 of name
                                | BLOCK_SPECIFICATION_2 of identifier
                                | BLOCK_SPECIFICATION_3 of identifier * index_specification

    and   block_statement = BLOCK_STATEMENT_1 of label_colon * expression * block_header * block_declarative_part * block_statement_part * identifier                                
                            | BLOCK_STATEMENT_2 of label_colon * block_header * block_declarative_part * block_statement_part * identifier                                
                            | BLOCK_STATEMENT_3 of label_colon * block_header * block_declarative_part * block_statement_part                                
                            | BLOCK_STATEMENT_4 of label_colon * expression * block_header * block_declarative_part * block_statement_part                                

    and   block_statement_part = BLOCK_STATEMENT_PART of architecture_statement list

    (*and   case_generate_alternative = CASE_GENERATE_ALTERNATIVE_1 of identifier * choices * generate_statement_body                            
                                      | CASE_GENERATE_ALTERNATIVE_2 of choices * generate_statement_body                            

    and   case_generate_statement = CASE_GENERATE_STATEMENT_1 of identifier * expression * case_generate_alternative list * identifier                                      
                                    | CASE_GENERATE_STATEMENT_2 of identifier * expression * case_generate_alternative list*)

    and   branch_quantity_declaration = BRANCH_QUANTITY_DECLARATION_1 of across_aspect * through_aspect * terminal_aspect
                                      | BRANCH_QUANTITY_DECLARATION_2 of across_aspect *terminal_aspect
                                      | BRANCH_QUANTITY_DECLARATION_3 of through_aspect * terminal_aspect
                                      | BRANCH_QUANTITY_DECLARATION_4 of terminal_aspect
                                      | BRANCH_QUANTITY_DECLARATION_5 of unit

    and   break_element = BREAK_ELEMENT_1 of break_selector_clause * name * expression
                        | BREAK_ELEMENT_2 of name * expression

    and   break_selector_clause = BREAK_SELECTOR_CLAUSE of name


    and   break_statement = BREAK_STATEMENT_1 of label_colon * break_list *condition
                          | BREAK_STATEMENT_2 of label_colon * break_list
                          | BREAK_STATEMENT_3 of label_colon * condition
                          | BREAK_STATEMENT_4 of label_colon
                          | BREAK_STATEMENT_5 of break_list *condition
                          | BREAK_STATEMENT_6 of break_list
                          | BREAK_STATEMENT_7 of condition
                          | BREAK_STATEMENT_8 of unit

    and   break_list = BREAK_LIST of break_element list

    and   case_statement = CASE_STATEMENT_1 of label_colon * expression * case_statement_alternative list * identifier                              
                           | CASE_STATEMENT_2 of expression * case_statement_alternative list * identifier                              
                           | CASE_STATEMENT_3 of expression * case_statement_alternative list                               
                           | CASE_STATEMENT_4 of label_colon * expression * case_statement_alternative list                               

    and   case_statement_alternative = CASE_STATEMENT_ALTERNATIVE of choices * sequence_of_statements

    and   character_literal = Character_literal of string 

    and   string_literal = String_literal of string

    and   choice = CHOICE_1 of simple_expression
                   | CHOICE_2 of discrete_range
                   | CHOICE_3 of identifier
                   | Others1 of unit

    and   choices = CHOICES of choice * choice list

    and   component_configuration = COMPONENT_CONFIGURATION_1 of component_specification * binding_indication * block_configuration                   
                                    | COMPONENT_CONFIGURATION_2 of component_specification  * block_configuration                   
                                    | COMPONENT_CONFIGURATION_3 of component_specification                   
                                    | COMPONENT_CONFIGURATION_4 of component_specification * binding_indication                   

    and   component_declaration =   COMPONENT_DECLARATION_1 of identifier * generic_clause * port_clause * identifier                                  
                                  | COMPONENT_DECLARATION_2 of identifier * port_clause * identifier                                  
                                  | COMPONENT_DECLARATION_3 of identifier * generic_clause * identifier                                  
                                  | COMPONENT_DECLARATION_4 of identifier * identifier                                  
                                  | COMPONENT_DECLARATION_5 of identifier * generic_clause                                  
                                  | COMPONENT_DECLARATION_6 of identifier                                  
                                  | COMPONENT_DECLARATION_7 of identifier * generic_clause * port_clause                                  
                                  | COMPONENT_DECLARATION_8 of identifier * port_clause                                  

    and   component_instantiation_statement = COMPONENT_INSTANTIATION_STATEMENT_1 of label_colon * instantiated_unit * generic_map_aspect * port_map_aspect                                   
                                              | COMPONENT_INSTANTIATION_STATEMENT_2 of label_colon * instantiated_unit * port_map_aspect                                   
                                              | COMPONENT_INSTANTIATION_STATEMENT_3 of label_colon * instantiated_unit                                   
                                              | COMPONENT_INSTANTIATION_STATEMENT_4 of label_colon * instantiated_unit * generic_map_aspect                                   

    and   component_specification = COMPONENT_SPECIFICATION of instantiation_list * name                                              

    and   composite_type_definition = COMPOSITE_TYPE_DEFINITION_1 of array_type_definition
                                      | COMPOSITE_TYPE_DEFINITION_2 of record_type_definition

    and   composite_nature_definition = COMPOSITE_NATURE_DEFINITION_1 of array_nature_definition
                                      | COMPOSITE_NATURE_DEFINITION_2 of record_nature_definition

(*    and   compound_configuration_specification = COMPOUND_CONFIGURATION_SPECIFICATION of component_specification * binding_indication * verification_unit_binding_indication list                                          
*)
    and   concurrent_break_statement = CONCURRENT_BREAK_STATEMENT_1 of label_colon * break_list * sensitivity_clause * condition
                                     | CONCURRENT_BREAK_STATEMENT_2 of label_colon * break_list * condition
                                     | CONCURRENT_BREAK_STATEMENT_3 of label_colon * break_list * sensitivity_clause
                                     | CONCURRENT_BREAK_STATEMENT_4 of label_colon * break_list
                                     | CONCURRENT_BREAK_STATEMENT_5 of label_colon * sensitivity_clause * condition
                                     | CONCURRENT_BREAK_STATEMENT_6 of label_colon * condition
                                     | CONCURRENT_BREAK_STATEMENT_7 of label_colon * sensitivity_clause
                                     | CONCURRENT_BREAK_STATEMENT_8 of label_colon
                                     | CONCURRENT_BREAK_STATEMENT_9 of break_list * sensitivity_clause * condition
                                     | CONCURRENT_BREAK_STATEMENT_10 of break_list * condition
                                     | CONCURRENT_BREAK_STATEMENT_11 of break_list * sensitivity_clause
                                     | CONCURRENT_BREAK_STATEMENT_12 of break_list
                                     | CONCURRENT_BREAK_STATEMENT_13 of sensitivity_clause * condition
                                     | CONCURRENT_BREAK_STATEMENT_14 of condition
                                     | CONCURRENT_BREAK_STATEMENT_15 of sensitivity_clause
                                     | CONCURRENT_BREAK_STATEMENT_16 of unit

    and   concurrent_assertion_statement = CONCURRENT_ASSERTION_STATEMENT_1 of label_colon * assertion
                                         | CONCURRENT_ASSERTION_STATEMENT_2 of assertion

    (*and   concurrent_conditional_signal_assignment = CONCURRENT_CONDITIONAL_SIGNAL_ASSIGNMENT_1 of target * delay_mechanism * conditional_waveforms                                  
                                                   | CONCURRENT_CONDITIONAL_SIGNAL_ASSIGNMENT_2 of target * conditional_waveforms             *)                     

    and   concurrent_procedure_call_statement = CONCURRENT_PROCEDURE_CALL_STATEMENT_1 of label_colon * procedure_call                                                    
                                              | CONCURRENT_PROCEDURE_CALL_STATEMENT_2 of procedure_call                                                    

   (* and *)  (*concurrent_selected_signal_assignment = CONCURRENT_SELECTED_SIGNAL_ASSIGNMENT_1 of expression * target * delay_mechanism *  selected_waveforms                                              
                                                | CONCURRENT_SELECTED_SIGNAL_ASSIGNMENT_2 of expression * target * selected_waveforms            *)                                  

    and   concurrent_signal_assignment_statement = CONCURRENT_SIGNAL_ASSIGNMENT_STATEMENT_1 of identifier * conditional_signal_assignment
                                                 | CONCURRENT_SIGNAL_ASSIGNMENT_STATEMENT_2 of conditional_signal_assignment
                                                 | CONCURRENT_SIGNAL_ASSIGNMENT_STATEMENT_3 of label_colon * conditional_signal_assignment
                                                 | CONCURRENT_SIGNAL_ASSIGNMENT_STATEMENT_4 of conditional_signal_assignment
                                                 | CONCURRENT_SIGNAL_ASSIGNMENT_STATEMENT_5 of label_colon * selected_signal_assignment
                                                 | CONCURRENT_SIGNAL_ASSIGNMENT_STATEMENT_6 of selected_signal_assignment

    (*and   concurrent_signal_association_statement = CONCURRENT_SIGNAL_ASSOCIATION_STATEMENT_1 of  identifier * concurrent_simple_signal_association                                                 
                                                  | CONCURRENT_SIGNAL_ASSOCIATION_STATEMENT_2 of concurrent_simple_signal_association                                                 

    and   concurrent_simple_signal_assignment = CONCURRENT_SIMPLE_SIGNAL_ASSIGNMENT_1 of target * delay_mechanism * waveform                                                  
                                              | CONCURRENT_SIMPLE_SIGNAL_ASSIGNMENT_2 of target * waveform              *)                                    

(*    and   concurrent_simple_signal_association = CONCURRENT_SIMPLE_SIGNAL_ASSOCIATION of signal_association_target * signal_association_target                                              
*)
    (*and   concurrent_statement = CONCURRENT_STATEMENT_1 of block_statement
                               | CONCURRENT_STATEMENT_2 of process_statement
                               | CONCURRENT_STATEMENT_3 of concurrent_procedure_call_statement
                               | CONCURRENT_STATEMENT_4 of concurrent_assertion_statement
                               | CONCURRENT_STATEMENT_5 of concurrent_signal_assignment_statement
                               | CONCURRENT_STATEMENT_6 of concurrent_signal_association_statement
                               | CONCURRENT_STATEMENT_7 of component_instantiation_statement
                               | CONCURRENT_STATEMENT_8 of generate_statement*)

    and   condition = CONDITION of expression

    and   condition_clause = CONDITION_CLAUSE of condition

   (* and   conditional_expression = CONDITIONAL_EXPRESSION of expression * conditional_expression_1 list
    and   conditional_expression_1 = CONDITIONAL_EXPRESSION_1 of condition * expression

    and   conditional_or_unaffected_expression = CONDITIONAL_OR_UNAFFECTED_EXPRESSION of expression_or_unaffected * conditional_or_unaffected_expression_1 list * condition
                                               | CONDITIONAL_OR_UNAFFECTED_EXPRESSION1 of expression_or_unaffected * conditional_or_unaffected_expression_1 list
    and   conditional_or_unaffected_expression_1 = CONDITIONAL_OR_UNAFFECTED_EXPRESSION_1 of condition * expression_or_unaffected*)

    and   conditional_signal_assignment = CONDITIONAL_SIGNAL_ASSIGNMENT_1 of target * opts * conditional_waveforms
                                        | CONDITIONAL_SIGNAL_ASSIGNMENT_2 of target * conditional_waveforms

    and   conditional_waveforms = CONDITIONAL_WAVEFORMS_1 of waveform * condition * conditional_waveforms
                                | CONDITIONAL_WAVEFORMS_2 of waveform * condition
                                | CONDITIONAL_WAVEFORMS_3 of waveform

    and   configuration_declaration = CONFIGURATION_DECLARATION_1 of identifier * name * configuration_declarative_part  * block_configuration * identifier 
                                    | CONFIGURATION_DECLARATION_2 of identifier * name * configuration_declarative_part * block_configuration  

    and   configuration_declarative_item = CONFIGURATION_DECLARATIVE_ITEM_1 of use_clause
                                         | CONFIGURATION_DECLARATIVE_ITEM_2 of attribute_specification
                                         | CONFIGURATION_DECLARATIVE_ITEM_3 of group_declaration                                    

    and   configuration_declarative_part = CONFIGURATION_DECLARATIVE_PART of configuration_declarative_item list

    and   configuration_item = CONFIGURATION_ITEM_1 of block_configuration
                             | CONFIGURATION_ITEM_2 of component_configuration                                          

    and   configuration_specification = CONFIGURATION_SPECIFICATION of component_specification * binding_indication
                              (*        | CONFIGURATION_SPECIFICATION_1 of simple_configuration_specification
                                      | CONFIGURATION_SPECIFICATION_2 of compound_configuration_specification *)                            

    and   constant_declaration = CONSTANT_DECLARATION_1 of identifier_list * subtype_indication * expression                                       
                               | CONSTANT_DECLARATION_2 of identifier_list * subtype_indication                                     

    and   constrained_array_definition = CONSTRAINED_ARRAY_DEFINITION of index_constraint * subtype_indication

    and   constrained_nature_definition = CONSTRAINED_NATURE_DEFINITION of index_constraint * subnature_indication

    and   constraint = CONSTRAINT_1 of range_constraint
                     | CONSTRAINT_2 of index_constraint
(*                     | CONSTRAINT_3 of record_constraint        *)                     

    and   context_clause = CONTEXT_CLAUSE of context_item list

(*    and   context_declaration = CONTEXT_DECLARATION_1 of identifier * context_clause * simple_name                     
*)    (*                          | CONTEXT_DECLARATION_2 of identifier * context_clause*)

    and   context_item = CONTEXT_ITEM_1 of library_clause
                       | CONTEXT_ITEM_2 of use_clause
           (*            | CONTEXT_ITEM_3 of context_reference   *)

    (*and   context_reference = CONTEXT_REFERENCE of selected_name * selected_name list          *)                                 

    and   decimal_literal = Real_literal of string

    and   delay_mechanism = Transport of unit
                          | DELAY_MECHANISM_2 of expression
                          | Inertial of unit

    and   design_file = DESIGN_FILE of design_unit list

    and   design_unit = DESIGN_UNIT of context_clause * library_unit

    and   designator = DESIGNATOR_1 of identifier
                     | DESIGNATOR_2 of string_literal

    and   direction = To  of unit
                    | Downto of unit

    and   disconnection_specification = DISCONNECTION_SPECIFICATION of guarded_signal_specification * expression
    
    and   discrete_range = DISCRETE_RANGE_1 of subtype_indication
                         | DISCRETE_RANGE_2 of range_decl                     

 (*   and   discrete_incomplete_type_definition = Box of unit*)

    (*and   element_array_mode_view_indication = ELEMENT_ARRAY_MODE_VIEW_INDICATION of name*)

    and   element_association = ELEMENT_ASSOCIATION_1 of choices * expression                         
                              | ELEMENT_ASSOCIATION_2 of expression

(*    and   element_constraint = ELEMENT_CONSTRAINT_1 of array_constraint
                             | ELEMENT_CONSTRAINT_2 of record_constraint   *)                           

    and   element_declaration = ELEMENT_DECLARATION of identifier_list * element_subtype_definition 

    (*and   element_mode_indication = ELEMENT_MODE_INDICATION_1 of signal_mode
                                  | ELEMENT_MODE_INDICATION_2 of element_mode_view_indication                              

    and   element_mode_view_indication = ELEMENT_MODE_VIEW_INDICATION_1 of element_record_mode_view_indication
                                       | ELEMENT_MODE_VIEW_INDICATION_2 of element_array_mode_view_indication                                    

    and   element_record_mode_view_indication = ELEMENT_RECORD_MODE_VIEW_INDICATION of name*)

(*    and   element_resolution = ELEMENT_RESOLUTION_1 of array_element_resolution
                             | ELEMENT_RESOLUTION_2 of record_resolution    *)                                   

    and   element_subtype_definition = ELEMENT_SUBTYPE_DEFINITION of subtype_indication

    and   element_subnature_definition = ELEMENT_SUBNATURE_DEFINITION of subnature_indication

    and   entity_aspect = ENTITY_ASPECT_1 of name * identifier
                        | ENTITY_ASPECT_2 of name                              
                        | Open2 of unit

    and   entity_class = Entity of unit
                       | Architecture of unit
                       | Configuration of unit
                       | Procedure1 of unit
                       | Function1 of unit
                       | Package of unit
                       | Type of unit
                       | Subtype of unit
                       | Constant of unit
                       | Variable of unit
                       | Component of unit
                       | Label of unit
                       | Signal of unit
                       | Literal of unit
                       | Units of unit
                       | Group of unit
                       | File of unit
                       | Property of unit
                       | Sequence of unit

    and   entity_class_entry = ENTITY_CLASS_ENTRY of entity_class

    and   entity_class_entry_list = ENTITY_CLASS_ENTRY_LIST of entity_class_entry * entity_class_entry list

    and   entity_declaration = ENTITY_DECLARATION_1 of  identifier * entity_header * entity_declarative_part * entity_statement_part * identifier                       
                             | ENTITY_DECLARATION_2 of  identifier * entity_header * entity_declarative_part * identifier                       
                             | ENTITY_DECLARATION_3 of  identifier * entity_header * entity_declarative_part                        
                             | ENTITY_DECLARATION_4 of  identifier * entity_header * entity_declarative_part * entity_statement_part                        

    and   entity_declarative_item = ENTITY_DECLARATIVE_ITEM_1 of subprogram_declaration
                                  | ENTITY_DECLARATIVE_ITEM_2 of subprogram_body
(*                                  | ENTITY_DECLARATIVE_ITEM_3 of subprogram_instantiation_declaration
*)                                  | ENTITY_DECLARATIVE_ITEM_4 of package_declaration
                                  | ENTITY_DECLARATIVE_ITEM_5 of package_body
(*                                  | ENTITY_DECLARATIVE_ITEM_6 of package_instantiation_declaration
*)                                  | ENTITY_DECLARATIVE_ITEM_7 of type_declaration
                                  | ENTITY_DECLARATIVE_ITEM_8 of subtype_declaration
(*                                  | ENTITY_DECLARATIVE_ITEM_9 of mode_view_declaration
*)                                  | ENTITY_DECLARATIVE_ITEM_10 of constant_declaration
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
                                  | ENTITY_DECLARATIVE_ITEM_21 of step_limit_specification
                                  | ENTITY_DECLARATIVE_ITEM_22 of nature_declaration
                                   | ENTITY_DECLARATIVE_ITEM_23 of subnature_declaration
                                   | ENTITY_DECLARATIVE_ITEM_24 of quantity_declaration
                                   | ENTITY_DECLARATIVE_ITEM_25 of terminal_declaration

    and   entity_declarative_part = ENTITY_DECLARATIVE_PART of entity_declarative_item list                                  

    and   entity_designator = ENTITY_DESIGNATOR_1 of entity_tag * signatur
                            | ENTITY_DESIGNATOR_2 of entity_tag

    and   entity_header = ENTITY_HEADER_1 of generic_clause * port_clause                            
                        | ENTITY_HEADER_2 of port_clause                            
                        | ENTITY_HEADER_3 of generic_clause                            
                        | ENTITY_HEADER_4 of unit                          

    and   entity_name_list = ENTITY_NAME_LIST of entity_designator * entity_designator list                        
                           | Others2 of unit
                           | All1 of unit

    and   entity_specification = ENTITY_SPECIFICATION of entity_name_list * entity_class                           

    and   entity_statement = ENTITY_STATEMENT_1 of concurrent_assertion_statement
                           | ENTITY_STATEMENT_2 of concurrent_procedure_call_statement
                           | ENTITY_STATEMENT_3 of process_statement

    and   entity_statement_part = ENTITY_STATEMENT_PART of entity_statement list

    and   entity_tag = ENTITY_TAG_1 of identifier
                     | ENTITY_TAG_2 of character_literal
                     | ENTITY_TAG_3 of string_literal                           

    and   enumeration_literal = ENUMERATION_LITERAL_1 of identifier
                              | ENUMERATION_LITERAL_2 of character_literal                      

    and   enumeration_type_definition = ENUMERATION_TYPE_DEFINITION of enumeration_literal * enumeration_literal list

    and   exit_statement = EXIT_STATEMENT_1 of label_colon * identifier * condition                               
                         | EXIT_STATEMENT_2 of identifier * condition                               
                         | EXIT_STATEMENT_3 of condition                               
                         | EXIT_STATEMENT_4 of label_colon * identifier                               
                         | EXIT_STATEMENT_5 of label_colon
                         | EXIT_STATEMENT_6 of identifier
                         | EXIT_STATEMENT_7 of label_colon * condition                               
                         | Exit of unit                            

(*    and   exponent = EXPONENT of integer*)

    and   expression = EXPRESSION_1 of primary
(*                     | EXPRESSION_2 of logical_expression 
*)                     | EXPRESSION_3 of relation * (logical_operator * relation) list                        

    (*and   expression_or_unaffected = EXPRESSION_OR_UNAFFECTED of expression
                                   | Unaffected of unit

    and   extended_digit = EXTENDED_DIGIT_1 of digit
                         | EXTENDED_DIGIT_2 of letter*)

    and   extended_identifier = Extended_identifier of string(*

    and   external_name = EXTERNAL_NAME_1 of external_constant_name
                        | EXTERNAL_NAME_2 of external_signal_name
                        | EXTERNAL_NAME_3 of external_variable_name                                                              

    and   external_constant_name = EXTERNAL_CONSTANT_NAME of external_pathname * subtype_indication                        

    and   external_signal_name = EXTERNAL_SIGNAL_NAME of external_pathname * subtype_indication

    and   external_variable_name = EXTERNAL_VARIABLE_NAME of external_pathname * subtype_indication *)

(*    and   external_pathname = EXTERNAL_PATHNAME_1 of package_pathname
                            | EXTERNAL_PATHNAME_2 of absolute_pathname
                            | EXTERNAL_PATHNAME_3 of relative_pathname*)

    and   factor = FACTOR_1 of primary * primary                            
                 | FACTOR_2 of primary

    and   file_declaration = FILE_DECLARATION_1 of  identifier_list * subtype_indication * file_open_information                  
                           | FILE_DECLARATION_2 of  identifier_list * subtype_indication

(*    and   file_incomplete_type_definition = FILE_INCOMPLETE_TYPE_DEFINITION of type_mark
*)
    and   file_logical_name = FILE_LOGICAL_NAME of expression

    and   file_open_information = FILE_OPEN_INFORMATION_1 of expression * file_logical_name                           
                                | FILE_OPEN_INFORMATION_2 of file_logical_name

    and   file_type_definition = FILE_TYPE_DEFINITION of subtype_indication

(*    and   floating_incomplete_type_definition = FLOATING_INCOMPLETE_TYPE_DEFINITION of unit                                

    and   floating_type_definition = FLOATING_TYPE_DEFINITION of range_constraint

    and   for_generate_statement = FOR_GENERATE_STATEMENT_1 of identifier * parameter_specification * generate_statement_body * identifier
                                 | FOR_GENERATE_STATEMENT_2 of identifier * parameter_specification * generate_statement_body

    and   force_mode = In of unit
                     | Out of unit

    and   formal_designator = FORMAL_DESIGNATOR_1 of name * signatur                                 
                            | FORMAL_DESIGNATOR_2 of name  *)                            

    and   formal_parameter_list = FORMAL_PARAMETER_LIST of interface_list

    and   formal_part = FORMAL_PART_1 of identifier
                      | FORMAL_PART_2 of identifier * explicit_range
   (*                   | FORMAL_PART_3 of type_mark * formal_designator *)

    and    free_quantity_declaration = FREE_QUANTITY_DECLARATION_1 of identifier_list * subtype_indication * expression
                                     | FREE_QUANTITY_DECLARATION_2 of identifier_list * subtype_indication                            

   and   full_type_declaration = FULL_TYPE_DECLARATION of identifier * type_definition

   (* and   function_call = FUNCTION_CALL_1 of name * generic_map_aspect * parameter_map_aspect                       
                        | FUNCTION_CALL_2 of name * parameter_map_aspect                       
                        | FUNCTION_CALL_3 of name                       
                        | FUNCTION_CALL_4 of name * generic_map_aspect                       

    and   generate_specification = GENERATE_SPECIFICATION_1 of discrete_range
                                 | GENERATE_SPECIFICATION_2 of expression
                                 | GENERATE_SPECIFICATION_3 of identifier    *)                   

    and   generate_statement = GENERATE_STATEMENT_1 of label_colon * generation_scheme  *  block_declarative_item list * architecture_statement list * identifier
                             | GENERATE_STATEMENT_2 of label_colon * generation_scheme  *  architecture_statement list * identifier
                             | GENERATE_STATEMENT_3 of label_colon * generation_scheme  *  block_declarative_item list * architecture_statement list
                             | GENERATE_STATEMENT_4 of label_colon * generation_scheme  *  architecture_statement list

    and   generation_scheme = GENERATION_SCHEME_1 of parameter_specification
                            | GENERATION_SCHEME_2 of condition 

    (*and   generate_statement_body = GENERATE_STATEMENT_BODY_1 of  block_declarative_part * concurrent_statement list * identifier
                                  | GENERATE_STATEMENT_BODY_2 of  block_declarative_part * concurrent_statement list
                                  | GENERATE_STATEMENT_BODY_3 of  concurrent_statement list
                                  | GENERATE_STATEMENT_BODY_4 of  concurrent_statement list * identifier*)

    and   generic_clause = GENERIC_CLAUSE of generic_list

    and   generic_list = GENERIC_LIST of interface_constant_declaration * interface_constant_declaration list

    and   generic_map_aspect = GENERIC_MAP_ASPECT of association_list
(*
    and   graphic_character = GRAPHIC_CHARACTER_1 of basic_graphic_character
                            | GRAPHIC_CHARACTER_2 of lower_case_letter*)

    and   group_constituent = GROUP_CONSTITUENT_1 of name                            
                            | GROUP_CONSTITUENT_2 of character_literal                           

    and   group_constituent_list = GROUP_CONSTITUENT_LIST of group_constituent * group_constituent list

    and   group_declaration = GROUP_DECLARATION of label_colon * name * group_constituent_list

    and   group_template_declaration = GROUP_TEMPLATE_DECLARATION of identifier * entity_class_entry_list

    and   guarded_signal_specification = GUARDED_SIGNAL_SPECIFICATION of signal_list * name

    and   identifier = IDENTIFIER_1 of basic_identifier
                     | IDENTIFIER_2 of extended_identifier

    and   identifier_list = IDENTIFIER_LIST of identifier * identifier list

    (*and   if_generate_statement1 = IF_GENERATE_STATEMENT1 of identifier * condition * generate_statement_body
    and   if_generate_statement2 = IF_GENERATE_STATEMENT2 of condition * generate_statement_body

    and   if_generate_statement = IF_GENERATE_STATEMENT_1 of identifier * identifier * condition * generate_statement_body * if_generate_statement1 list * identifier * generate_statement_body * identifier
                                | IF_GENERATE_STATEMENT_2 of identifier * identifier * condition * generate_statement_body * if_generate_statement1 list * generate_statement_body * identifier
                                | IF_GENERATE_STATEMENT_3 of identifier * identifier * condition * generate_statement_body * if_generate_statement1 list * identifier
                                | IF_GENERATE_STATEMENT_4 of identifier * identifier * condition * generate_statement_body * if_generate_statement2 list * identifier * generate_statement_body * identifier
                                | IF_GENERATE_STATEMENT_5 of identifier * identifier * condition * generate_statement_body * if_generate_statement2 list * generate_statement_body * identifier
                                | IF_GENERATE_STATEMENT_6 of identifier * identifier * condition * generate_statement_body * if_generate_statement2 list * identifier
                                | IF_GENERATE_STATEMENT_7 of identifier * identifier * condition * generate_statement_body * if_generate_statement2 list * identifier * generate_statement_body
                                | IF_GENERATE_STATEMENT_8 of identifier * identifier * condition * generate_statement_body * if_generate_statement2 list * generate_statement_body
                                | IF_GENERATE_STATEMENT_9 of identifier * identifier * condition * generate_statement_body * if_generate_statement2 list
                                | IF_GENERATE_STATEMENT_10 of identifier * identifier * condition * generate_statement_body * if_generate_statement1 list * identifier * generate_statement_body
                                | IF_GENERATE_STATEMENT_11 of identifier * identifier * condition * generate_statement_body * if_generate_statement1 list * generate_statement_body
                                | IF_GENERATE_STATEMENT_12 of identifier * identifier * condition * generate_statement_body * if_generate_statement1 list
                                | IF_GENERATE_STATEMENT_13 of identifier * condition * generate_statement_body * if_generate_statement1 list * identifier * generate_statement_body * identifier
                                | IF_GENERATE_STATEMENT_14 of identifier * condition * generate_statement_body * if_generate_statement1 list * generate_statement_body * identifier
                                | IF_GENERATE_STATEMENT_15 of identifier * condition * generate_statement_body * if_generate_statement1 list * identifier
                                | IF_GENERATE_STATEMENT_16 of identifier * condition * generate_statement_body * if_generate_statement2 list * identifier * generate_statement_body * identifier
                                | IF_GENERATE_STATEMENT_17 of identifier * condition * generate_statement_body * if_generate_statement2 list * generate_statement_body * identifier
                                | IF_GENERATE_STATEMENT_18 of identifier * condition * generate_statement_body * if_generate_statement2 list * identifier
                                | IF_GENERATE_STATEMENT_19 of identifier * condition * generate_statement_body * if_generate_statement2 list * identifier * generate_statement_body
                                | IF_GENERATE_STATEMENT_20 of identifier * condition * generate_statement_body * if_generate_statement2 list * generate_statement_body
                                | IF_GENERATE_STATEMENT_21 of identifier * condition * generate_statement_body * if_generate_statement2 list 
                                | IF_GENERATE_STATEMENT_22 of identifier * condition * generate_statement_body * if_generate_statement1 list * identifier * generate_statement_body
                                | IF_GENERATE_STATEMENT_23 of identifier * condition * generate_statement_body * if_generate_statement1 list * generate_statement_body
                                | IF_GENERATE_STATEMENT_24 of identifier * condition * generate_statement_body * if_generate_statement1 list*)

    and   if_statement1 = IF_STATEMENT1 of condition * sequence_of_statements

    and   if_statement = IF_STATEMENT_1 of label_colon * condition * sequence_of_statements * if_statement1 list * sequence_of_statements * identifier
                       | IF_STATEMENT_2 of condition * sequence_of_statements * if_statement1 list * sequence_of_statements * identifier
                       | IF_STATEMENT_3 of label_colon * condition * sequence_of_statements * if_statement1 list * identifier
                       | IF_STATEMENT_4 of condition * sequence_of_statements * if_statement1 list * identifier
                       | IF_STATEMENT_5 of label_colon * condition * sequence_of_statements * if_statement1 list
                       | IF_STATEMENT_6 of condition * sequence_of_statements * if_statement1 list
                       | IF_STATEMENT_7 of label_colon * condition * sequence_of_statements * if_statement1 list * sequence_of_statements
                       | IF_STATEMENT_8 of condition * sequence_of_statements * if_statement1 list * sequence_of_statements

    (*and   incomplete_subtype_indication = INCOMPLETE_SUBTYPE_INDICATION_1 of subtype_indication
                                        | INCOMPLETE_SUBTYPE_INDICATION_2 of anonymous_type_indication                       

    and   incomplete_type_declaration = INCOMPLETE_TYPE_DECLARATION of identifier*)

    (*and   incomplete_type_definition = INCOMPLETE_TYPE_DEFINITION_1 of private_incomplete_type_definition
                                     | INCOMPLETE_TYPE_DEFINITION_2 of scalar_incomplete_type_definition
                                     | INCOMPLETE_TYPE_DEFINITION_3 of discrete_incomplete_type_definition
                                     | INCOMPLETE_TYPE_DEFINITION_4 of integer_incomplete_type_definition
                                     | INCOMPLETE_TYPE_DEFINITION_5 of physical_incomplete_type_definition
                                     | INCOMPLETE_TYPE_DEFINITION_6 of floating_incomplete_type_definition
                                     | INCOMPLETE_TYPE_DEFINITION_7 of array_incomplete_type_definition
                                     | INCOMPLETE_TYPE_DEFINITION_8 of access_incomplete_type_definition
                                     | INCOMPLETE_TYPE_DEFINITION_9 of file_incomplete_type_definition    *)                                      

    (*and   incomplete_type_mark = INCOMPLETE_TYPE_MARK_1 of type_mark
                               | INCOMPLETE_TYPE_MARK_2 of anonymous_type_indication              *)                       

    and   index_constraint = INDEX_CONSTRAINT of discrete_range * discrete_range list

    and   index_specification = INDEX_SPECIFICATION_1 of discrete_range
                              | INDEX_SPECIFICATION_2 of expression

    and   index_subtype_definition = INDEX_SUBTYPE_DEFINITION of name

(*    and   indexed_name = INDEXED_NAME of prefix * expression * expression list
*)
    and   instantiated_unit = INSTANTIATED_UNIT_1 of name
                            | INSTANTIATED_UNIT_2 of name * identifier

    and   instantiation_list = INSTANTIATION_LIST of identifier * identifier list                                                           
                             | Others3 of unit
                             | All2 of unit

    and   integer = Integer of string

(*    and   integer_type_definition = INTEGER_TYPE_DEFINITION of range_constraint
*)
    and   interface_constant_declaration = INTERFACE_CONSTANT_DECLARATION_1 of identifier_list * subtype_indication * expression                               
                                         | INTERFACE_CONSTANT_DECLARATION_2 of identifier_list * subtype_indication

    and   interface_declaration = INTERFACE_DECLARATION_1 of interface_constant_declaration
                                | INTERFACE_DECLARATION_2 of interface_signal_declaration
                                | INTERFACE_DECLARATION_3 of interface_variable_declaration
                                | INTERFACE_DECLARATION_4 of interface_file_declaration   
                                | INTERFACE_DECLARATION_5 of interface_terminal_declaration 
                                | INTERFACE_DECLARATION_6 of interface_quantity_declaration                                     

    and   interface_element = INTERFACE_ELEMENT of interface_declaration

    and   interface_file_declaration = INTERFACE_FILE_DECLARATION of identifier_list * subtype_indication                                

    (*and   interface_function_specification = INTERFACE_FUNCTION_SPECIFICATION_1 of designator * formal_parameter_list * type_mark
                                           | INTERFACE_FUNCTION_SPECIFICATION_2 of designator * type_mark

    and   interface_incomplete_type_declaration = INTERFACE_INCOMPLETE_TYPE_DECLARATION of identifier*)

    and   interface_list = INTERFACE_LIST of interface_element * interface_element list

    and   interface_signal_list = INTERFACE_SIGNAL_LIST of interface_signal_declaration * interface_signal_declaration list

    and   interface_port_list = INTERFACE_PORT_LIST of interface_port_declaration * interface_port_declaration list

    and   interface_quantity_declaration = INTERFACE_QUANTITY_DECLARATION_1 of identifier_list * subtype_indication * expression 
                                         | INTERFACE_QUANTITY_DECLARATION_2 of identifier_list * subtype_indication
                                         | INTERFACE_QUANTITY_DECLARATION_3 of unit

    and   interface_port_declaration = INTERFACE_PORT_DECLARATION_1 of identifier_list * signal_mode * subtype_indication * expression 
                                     | INTERFACE_PORT_DECLARATION_2 of identifier_list * signal_mode * subtype_indication 
                                     | INTERFACE_PORT_DECLARATION_3 of identifier_list * subtype_indication * expression 
                                     | INTERFACE_PORT_DECLARATION_4 of identifier_list * subtype_indication

    and   interface_object_declaration = INTERFACE_OBJECT_DECLARATION_1 of interface_constant_declaration
                                       | INTERFACE_OBJECT_DECLARATION_2 of interface_signal_declaration
                                       | INTERFACE_OBJECT_DECLARATION_3 of interface_variable_declaration
                                       | INTERFACE_OBJECT_DECLARATION_4 of interface_file_declaration                                           

  (*  and   interface_package_declaration = INTERFACE_PACKAGE_DECLARATION of identifier * name * interface_package_generic_map_aspect

    and   interface_package_generic_map_aspect = INTERFACE_PACKAGE_GENERIC_MAP_ASPECT_1 of generic_map_aspect
                                               | INTERFACE_PACKAGE_GENERIC_MAP_ASPECT_2 of unit
                                               | INTERFACE_PACKAGE_GENERIC_MAP_ASPECT_3 of unit

    and   interface_procedure_specification = INTERFACE_PROCEDURE_SPECIFICATION_1 of designator *  formal_parameter_list                                                
                                            | INTERFACE_PROCEDURE_SPECIFICATION_2 of designator *)

    and   interface_signal_declaration = INTERFACE_SIGNAL_DECLARATION_1 of identifier_list * subtype_indication * expression                                             
                                       | INTERFACE_SIGNAL_DECLARATION_2 of identifier_list * subtype_indication 
                                       | INTERFACE_SIGNAL_DECLARATION_3 of identifier_list * signal_mode * subtype_indication * expression 
                                       | INTERFACE_SIGNAL_DECLARATION_4 of identifier_list * signal_mode * subtype_indication 

    and   interface_terminal_declaration = INTERFACE_TERMINAL_DECLARATION of identifier_list * subnature_indication

    (*and   interface_subprogram_default = INTERFACE_SUBPROGRAM_DEFAULT_1 of name
                                       | INTERFACE_SUBPROGRAM_DEFAULT_2 of unit

    and   interface_subprogram_specification = INTERFACE_SUBPROGRAM_SPECIFICATION_1 of interface_procedure_specification
                                             | INTERFACE_SUBPROGRAM_SPECIFICATION_2 of interface_function_specification                    

    and   interface_type_declaration = INTERFACE_TYPE_DECLARATION of interface_incomplete_type_declaration

    and   interface_type_indication = INTERFACE_TYPE_INDICATION_1 of subtype_indication
                                    | INTERFACE_TYPE_INDICATION_2 of anonymous_type_indication            *)                               

    and   interface_variable_declaration = INTERFACE_VARIABLE_DECLARATION_1 of  identifier_list * signal_mode * subtype_indication * expression                                    
                                         | INTERFACE_VARIABLE_DECLARATION_2 of  identifier_list * signal_mode * subtype_indication
                                         | INTERFACE_VARIABLE_DECLARATION_3 of  identifier_list * subtype_indication * expression                                    
                                         | INTERFACE_VARIABLE_DECLARATION_4 of  identifier_list * subtype_indication

    and   iteration_scheme = ITERATION_SCHEME_1 of condition                                          
                           | ITERATION_SCHEME_2 of parameter_specification

    and   library_clause = LIBRARY_CLAUSE of logical_name_list

    and   library_unit = LIBRARY_UNIT_1 of primary_unit                                           
                       | LIBRARY_UNIT_2 of secondary_unit                                           

    and   literal = LITERAL_1 of numeric_literal
                  | LITERAL_2 of enumeration_literal
                  | LITERAL_3 of string_literal
                  | LITERAL_4 of bit_string_literal
                  | Null of unit 

    and   logical_name = LOGICAL_NAME of identifier

    and   logical_name_list = LOGICAL_NAME_LIST of logical_name * logical_name list

    and   logical_operator = And of unit
                           | Or of unit
                           | Nand of unit
                           | Nor of unit
                           | Xor of unit
                           | Xnor of unit

    and   loop_statement = LOOP_STATEMENT_1 of label_colon * iteration_scheme * sequence_of_statements * identifier                           
                         | LOOP_STATEMENT_2 of label_colon * sequence_of_statements * identifier                           
                         | LOOP_STATEMENT_3 of label_colon * iteration_scheme * sequence_of_statements
                         | LOOP_STATEMENT_4 of label_colon * sequence_of_statements
                         | LOOP_STATEMENT_5 of iteration_scheme * sequence_of_statements
                         | LOOP_STATEMENT_6 of sequence_of_statements
                         | LOOP_STATEMENT_7 of iteration_scheme * sequence_of_statements * identifier                           
                         | LOOP_STATEMENT_8 of sequence_of_statements * identifier                           

(*    and   miscellaneous_operator = Abs of unit
                                 | Not of unit*)

    and   signal_mode = In1 of unit 
                      | Out1 of unit
                      | Inout of unit
                      | Buffer of unit
                      | Linkage of unit
(*
    and   mode_indication = MODE_INDICATION_1 of simple_mode_indication
                          | MODE_INDICATION_2 of mode_view_indication      *)                                     

(*    and   mode_view_declaration = MODE_VIEW_DECLARATION_1 of identifier * subtype_indication * mode_view_element_definition list * simple_name                           
                                | MODE_VIEW_DECLARATION_2 of identifier * subtype_indication * mode_view_element_definition list*)

    (*and   mode_view_element_definition = MODE_VIEW_ELEMENT_DEFINITION of record_element_list * element_mode_indication

    and   mode_view_indication = MODE_VIEW_INDICATION_1 of record_mode_view_indication
                               | MODE_VIEW_INDICATION_2 of array_mode_view_indication*)

    and   multiplying_operator = Mult of unit
                               | Div of unit
                               | Mod of unit
                               | Rem of unit

    and   name = (*NAME_1 of simple_name
               | NAME_2 of operator_symbol
               | NAME_3 of character_literal
               | NAME_4 of selected_name
               | NAME_5 of indexed_name
               | NAME_6 of slice_name
               | NAME_7 of attribute_name
               | NAME_8 of external_name 
               | *)NAME_9 of identifier * name_part list
               | NAME_10 of string_literal * name_part list

    and   name_part = NAME_PART_1 of selected_name_part
                    | NAME_PART_2 of function_call_or_indexed_name_part
                    | NAME_PART_3 of slice_name_part
                    | NAME_PART_4 of attribute_name_part

    and selected_name = SELECTED_NAME of identifier * suffix list

    and function_call_or_indexed_name_part = FCINP of actual_parameter_part

    and selected_name_part = SELECTED_NAME_PART of suffix list

    and slice_name_part = SLICE_NAME_PART of discrete_range

    and   attribute_name_part = ATTRIBUTE_NAME_PART_1 of signatur * attribute_designator * expression
                              | ATTRIBUTE_NAME_PART_2 of signatur * attribute_designator
                              | ATTRIBUTE_NAME_PART_3 of attribute_designator * expression
                              | ATTRIBUTE_NAME_PART_4 of attribute_designator

    and   next_statement = NEXT_STATEMENT_1 of label_colon * identifier * condition                
                         | NEXT_STATEMENT_2 of label_colon * condition                
                         | NEXT_STATEMENT_3 of condition                
                         | NEXT_STATEMENT_4 of label_colon                
                         | NEXT_STATEMENT_5 of label_colon * identifier                
                         | NEXT_STATEMENT_6 of unit
                         | NEXT_STATEMENT_7 of identifier
                         | NEXT_STATEMENT_8 of identifier * condition

    and   nature_declaration = NATURE_DECLARATION of identifier * nature_definition

    and   nature_definition = NATURE_DEFINITION_1 of scalar_nature_definition
                            | NATURE_DEFINITION_2 of composite_nature_definition

    and   nature_element_declaration = NATURE_ELEMENT_DECLARATION of identifier_list * element_subnature_definition

    and   numeric_literal = NUMERIC_LITERAL_1 of abstract_literal
                          | NUMERIC_LITERAL_2 of physical_literal                         

    and   object_declaration = OBJECT_DECLARATION_1 of constant_declaration
                             | OBJECT_DECLARATION_2 of signal_declaration
                             | OBJECT_DECLARATION_3 of variable_declaration
                             | OBJECT_DECLARATION_4 of file_declaration                          

 (*   and   operator_symbol = OPERATOR_SYMBOL of string_literal*)

    and   opts = OPTS_1 of delay_mechanism
               | OPTS_2 of unit

    and   package_body = PACKAGE_BODY_1 of identifier * package_body_declarative_part * identifier                              
                       | PACKAGE_BODY_2 of identifier * package_body_declarative_part 

    and   package_body_declarative_item = PACKAGE_BODY_DECLARATIVE_ITEM_1 of subprogram_declaration
                                        | PACKAGE_BODY_DECLARATIVE_ITEM_2 of subprogram_body
                                        | PACKAGE_BODY_DECLARATIVE_ITEM_3 of type_declaration
                                        | PACKAGE_BODY_DECLARATIVE_ITEM_4 of subtype_declaration
                                        | PACKAGE_BODY_DECLARATIVE_ITEM_5 of constant_declaration
                                        | PACKAGE_BODY_DECLARATIVE_ITEM_6 of variable_declaration
                                        | PACKAGE_BODY_DECLARATIVE_ITEM_7 of file_declaration
                                        | PACKAGE_BODY_DECLARATIVE_ITEM_8 of alias_declaration
                                        | PACKAGE_BODY_DECLARATIVE_ITEM_9 of use_clause
                                        | PACKAGE_BODY_DECLARATIVE_ITEM_10 of group_template_declaration
                                        | PACKAGE_BODY_DECLARATIVE_ITEM_11 of group_declaration                       

    and   package_body_declarative_part = PACKAGE_BODY_DECLARATIVE_PART of package_body_declarative_item list                                        

    and   package_declaration = PACKAGE_DECLARATION_1 of identifier * package_declarative_part * identifier 
                              | PACKAGE_DECLARATION_2 of identifier * package_declarative_part

    and   package_declarative_item = PACKAGE_DECLARATIVE_ITEM_1  of subprogram_declaration
                                   | PACKAGE_DECLARATIVE_ITEM_2  of subprogram_body
                                   | PACKAGE_DECLARATIVE_ITEM_3  of type_declaration
                                   | PACKAGE_DECLARATIVE_ITEM_4  of subtype_declaration
                                   | PACKAGE_DECLARATIVE_ITEM_5  of constant_declaration
                                   | PACKAGE_DECLARATIVE_ITEM_6  of signal_declaration
                                   | PACKAGE_DECLARATIVE_ITEM_7  of variable_declaration
                                   | PACKAGE_DECLARATIVE_ITEM_8  of file_declaration
                                   | PACKAGE_DECLARATIVE_ITEM_9  of alias_declaration
                                   | PACKAGE_DECLARATIVE_ITEM_10 of component_declaration
                                   | PACKAGE_DECLARATIVE_ITEM_11 of attribute_declaration
                                   | PACKAGE_DECLARATIVE_ITEM_12 of attribute_specification
                                   | PACKAGE_DECLARATIVE_ITEM_13 of disconnection_specification
                                   | PACKAGE_DECLARATIVE_ITEM_14 of use_clause
                                   | PACKAGE_DECLARATIVE_ITEM_15 of group_template_declaration
                                   | PACKAGE_DECLARATIVE_ITEM_16 of group_declaration
                                   | PACKAGE_DECLARATIVE_ITEM_17 of nature_declaration
                                   | PACKAGE_DECLARATIVE_ITEM_18 of subnature_declaration
                                   | PACKAGE_DECLARATIVE_ITEM_19 of terminal_declaration

    and   package_declarative_part = PACKAGE_DECLARATIVE_PART of package_declarative_item list

    and   parameter_specification = PARAMETER_SPECIFICATION of identifier * discrete_range

    and   physical_literal = PHYSICAL_LITERAL_1 of abstract_literal * identifier
                           | PHYSICAL_LITERAL_2 of identifier

    and   physical_type_definition = PHYSICAL_TYPE_DEFINITION_1 of range_constraint * base_unit_declaration * secondary_unit_declaration list                            
                                   | PHYSICAL_TYPE_DEFINITION_2 of range_constraint * base_unit_declaration * secondary_unit_declaration list * identifier

    and   port_clause = PORT_CLAUSE of port_list                                 

    and   port_list = PORT_LIST of interface_port_list

    and   port_map_aspect = PORT_MAP_ASPECT of association_list

    and   primary = PRIMARY_1 of literal
                  | PRIMARY_2 of qualified_expression
                  | PRIMARY_3 of expression
                  | PRIMARY_4 of allocator
                  | PRIMARY_5 of aggregate
                  | PRIMARY_6 of name

    and   primary_unit = PRIMARY_UNIT_1 of entity_declaration
                       | PRIMARY_UNIT_2 of configuration_declaration
                       | PRIMARY_UNIT_3 of package_declaration

    and   procedural_declarative_item = PROCEDURAL_DECLARATIVE_ITEM_1 of subprogram_declaration
                                      | PROCEDURAL_DECLARATIVE_ITEM_2 of subprogram_body
                                      | PROCEDURAL_DECLARATIVE_ITEM_3 of type_declaration
                                      | PROCEDURAL_DECLARATIVE_ITEM_4 of subtype_declaration
                                      | PROCEDURAL_DECLARATIVE_ITEM_5 of constant_declaration
                                      | PROCEDURAL_DECLARATIVE_ITEM_6 of variable_declaration
                                      | PROCEDURAL_DECLARATIVE_ITEM_7 of alias_declaration
                                      | PROCEDURAL_DECLARATIVE_ITEM_8 of attribute_declaration
                                      | PROCEDURAL_DECLARATIVE_ITEM_9 of attribute_specification
                                      | PROCEDURAL_DECLARATIVE_ITEM_10 of use_clause
                                      | PROCEDURAL_DECLARATIVE_ITEM_11 of group_template_declaration
                                      | PROCEDURAL_DECLARATIVE_ITEM_12 of group_declaration

    and   procedural_declarative_part = PROCEDURAL_DECLARATIVE_PART of procedural_declarative_item list

    and   procedural_statement_part = PROCEDURAL_STATEMENT_PART of sequential_statement list

    and   procedure_call = PROCEDURE_CALL_1 of selected_name 
                         | PROCEDURE_CALL_2 of selected_name *  actual_parameter_part

    and   procedure_call_statement = PROCEDURE_CALL_STATEMENT_1 of label_colon * procedure_call
                                   | PROCEDURE_CALL_STATEMENT_2 of procedure_call                          

    and   process_declarative_item = PROCESS_DECLARATIVE_ITEM_1 of subprogram_declaration
                                   | PROCESS_DECLARATIVE_ITEM_2 of subprogram_body
                                   | PROCESS_DECLARATIVE_ITEM_7 of type_declaration
                                   | PROCESS_DECLARATIVE_ITEM_8 of subtype_declaration
                                   | PROCESS_DECLARATIVE_ITEM_9 of constant_declaration
                                   | PROCESS_DECLARATIVE_ITEM_10 of variable_declaration
                                   | PROCESS_DECLARATIVE_ITEM_11 of file_declaration
                                   | PROCESS_DECLARATIVE_ITEM_12 of alias_declaration
                                   | PROCESS_DECLARATIVE_ITEM_13 of attribute_declaration
                                   | PROCESS_DECLARATIVE_ITEM_14 of attribute_specification
                                   | PROCESS_DECLARATIVE_ITEM_15 of use_clause
                                   | PROCESS_DECLARATIVE_ITEM_16 of group_template_declaration
                                   | PROCESS_DECLARATIVE_ITEM_17 of group_declaration

    and   process_declarative_part =  PROCESS_DECLARATIVE_PART of process_declarative_item list

    and   process_statement = PROCESS_STATEMENT_2 of label_colon * sensitivity_list * process_declarative_part * process_statement_part * identifier
                            | PROCESS_STATEMENT_1 of sensitivity_list * process_declarative_part * process_statement_part * identifier
                            | PROCESS_STATEMENT_4 of label_colon * process_declarative_part * process_statement_part * identifier
                            | PROCESS_STATEMENT_3 of process_declarative_part * process_statement_part * identifier
                            | PROCESS_STATEMENT_6 of label_colon * process_declarative_part * process_statement_part
                            | PROCESS_STATEMENT_5 of process_declarative_part * process_statement_part
                            | PROCESS_STATEMENT_8 of label_colon * sensitivity_list * process_declarative_part * process_statement_part
                            | PROCESS_STATEMENT_7 of sensitivity_list * process_declarative_part * process_statement_part

    and   process_statement_part = PROCESS_STATEMENT_PART of sequential_statement list                            

    and   qualified_expression = QUALIFIED_EXPRESSION_1 of subtype_indication * aggregate
                               | QUALIFIED_EXPRESSION_2 of subtype_indication * expression

    and   quantity_declaration = QUANTITY_DECLARATION_1 of free_quantity_declaration
                               | QUANTITY_DECLARATION_2 of branch_quantity_declaration
                               | QUANTITY_DECLARATION_3 of source_quantity_declaration

    and   quantity_list = QUANTITY_LIST_1 of name * name list
                        | QUANTITY_LIST_2 of unit
                        | QUANTITY_LIST_3 of unit

    and   quantity_specification = QUANTITY_SPECIFICATION of quantity_list * name

    and   range_decl = RANGE_DECL_1 of explicit_range
                     | RANGE_DECL_2 of name

    and   explicit_range = EXPLICIT_RANGE_1 of simple_expression * direction * simple_expression
                         | EXPLICIT_RANGE_2 of simple_expression

    and   range_constraint = RANGE_CONSTRAINT of range_decl

    and   record_nature_definition = RECORD_NATURE_DEFINITION_1 of nature_element_declaration * nature_element_declaration list * identifier
                                   | RECORD_NATURE_DEFINITION_2 of nature_element_declaration * nature_element_declaration list

    and   record_type_definition = RECORD_TYPE_DEFINITION_1 of element_declaration * element_declaration list * identifier
                                 | RECORD_TYPE_DEFINITION_2 of element_declaration * element_declaration list

    and   relation = RELATION_1 of shift_expression * relational_operator * shift_expression                                      
                   | RELATION_2 of shift_expression

    and   relational_operator = Eq of unit
                              | Neq of unit
                              | Gt of unit
                              | Lt of unit
                              | Ge of unit
                              | Le of unit

    and   report_statement = REPORT_STATEMENT_1 of  expression * expression                              
                           | REPORT_STATEMENT_2 of  label_colon * expression                           
                           | REPORT_STATEMENT_3 of  label_colon * expression * expression                          
                           | REPORT_STATEMENT_4 of  expression                     

    and   return_statement = RETURN_STATEMENT_1 of label_colon * expression
                           | RETURN_STATEMENT_2 of expression
                           | RETURN_STATEMENT_3 of unit
                           | RETURN_STATEMENT_4 of label_colon

    and   scalar_nature_definition = SCALAR_NATURE_DEFINITION of name * name * name

    and   scalar_type_definition = SCALAR_TYPE_DEFINITION_1 of enumeration_type_definition
                                 | SCALAR_TYPE_DEFINITION_2 of range_constraint
                                 | SCALAR_TYPE_DEFINITION_3 of physical_type_definition

    and   secondary_unit = SECONDARY_UNIT_1 of architecture_body
                         | SECONDARY_UNIT_2 of package_body                                 

    and   secondary_unit_declaration = SECONDARY_UNIT_DECLARATION of identifier * physical_literal

    and   ex_when_choices = EX_WHEN_CHOICES of expression * choices

    and   selected_signal_assignment = SELECTED_SIGNAL_ASSIGNMENT of expression * target * opts * selected_waveforms

    and   wave_when_choices = WAVE_WHEN_CHOICES of waveform * choices

    and   selected_waveforms = SELECTED_WAVEFORMS of waveform * choices * wave_when_choices list

    and   sensitivity_clause = SENSITIVITY_CLAUSE of sensitivity_list

    and   sensitivity_list = SENSITIVITY_LIST of name * name list

    and   sequence_of_statements = SEQUENCE_OF_STATEMENTS of sequential_statement list

    and   sequential_statement = SEQUENTIAL_STATEMENT_1 of wait_statement
                               | SEQUENTIAL_STATEMENT_2 of assertion_statement
                               | SEQUENTIAL_STATEMENT_3 of report_statement
                               | SEQUENTIAL_STATEMENT_4 of signal_assignment_statement
                               | SEQUENTIAL_STATEMENT_5 of variable_assignment_statement
                               | SEQUENTIAL_STATEMENT_6 of procedure_call_statement
                               | SEQUENTIAL_STATEMENT_7 of if_statement
                               | SEQUENTIAL_STATEMENT_8 of case_statement
                               | SEQUENTIAL_STATEMENT_9 of loop_statement
                               | SEQUENTIAL_STATEMENT_10 of next_statement
                               | SEQUENTIAL_STATEMENT_11 of exit_statement
                               | SEQUENTIAL_STATEMENT_12 of return_statement
                               | SEQUENTIAL_STATEMENT_13 of label_colon
                               | SEQUENTIAL_STATEMENT_14 of unit
                               | SEQUENTIAL_STATEMENT_15 of break_statement
                               
    and   shift_expression = SHIFT_EXPRESSION_1 of simple_expression * shift_operator * simple_expression                                       
                           | SHIFT_EXPRESSION_2 of simple_expression

    and   shift_operator = Sll of unit
                         | Srl of unit
                         | Sla of unit
                         | Sra of unit
                         | Rol of unit
                         | Ror of unit

    and   signal_assignment_statement = SIGNAL_ASSIGNMENT_STATEMENT_1 of label_colon * target * delay_mechanism * waveform
                                      | SIGNAL_ASSIGNMENT_STATEMENT_2 of target * delay_mechanism * waveform
                                      | SIGNAL_ASSIGNMENT_STATEMENT_3 of target * waveform
                                      | SIGNAL_ASSIGNMENT_STATEMENT_4 of label_colon * target * waveform

    and   signal_declaration = SIGNAL_DECLARATION_1 of identifier_list * subtype_indication * signal_kind * expression                                      
                             | SIGNAL_DECLARATION_2 of identifier_list * subtype_indication * expression                                      
                             | SIGNAL_DECLARATION_3 of identifier_list * subtype_indication                                      
                             | SIGNAL_DECLARATION_4 of identifier_list * subtype_indication * signal_kind             

    and   signal_kind = Register of unit
                      | Bus of unit

    and   signal_list = SIGNAL_LIST_1 of name * name list
                      | SIGNAL_LIST_2 of unit
                      | SIGNAL_LIST_3 of unit

    and   signatur = SIGNATURE_1 of name * name list * name
                   | SIGNATURE_2 of name
                   | SIGNATURE_3 of unit
                   | SIGNATURE_4 of name * name list

    and   adding_operator_term = ADDING_OPERATOR_TERM of adding_operator * term

    and   simple_expression = SIMPLE_EXPRESSION of term * adding_operator_term list

    and   simple_simultaneous_statement = SIMPLE_SIMULTANEOUS_STATEMENT_1 of label_colon * simple_expression * simple_expression * tolerance_aspect
                                        | SIMPLE_SIMULTANEOUS_STATEMENT_2 of simple_expression * simple_expression * tolerance_aspect
                                        | SIMPLE_SIMULTANEOUS_STATEMENT_3 of simple_expression * simple_expression
                                        | SIMPLE_SIMULTANEOUS_STATEMENT_4 of label_colon * simple_expression * simple_expression

    and   simultaneous_alternative = SIMULTANEOUS_ALTERNATIVE of choices * simultaneous_statement_part

    and   simultaneous_case_statement = SIMULTANEOUS_CASE_STATEMENT_1 of label_colon * expression * simultaneous_alternative * simultaneous_alternative list * identifier
                                      | SIMULTANEOUS_CASE_STATEMENT_2 of expression * simultaneous_alternative * simultaneous_alternative list * identifier
                                      | SIMULTANEOUS_CASE_STATEMENT_3 of expression * simultaneous_alternative * simultaneous_alternative list
                                      | SIMULTANEOUS_CASE_STATEMENT_4 of label_colon * expression * simultaneous_alternative * simultaneous_alternative list

    and   condition_simultaneous_statement_part = CONDITION_SIMULTANEOUS_STATEMENT_PART of condition * simultaneous_statement_part

    and   simultaneous_if_statement = SIMULTANEOUS_IF_STATEMENT_1 of label_colon * condition * simultaneous_statement_part * condition_simultaneous_statement_part list * simultaneous_statement_part * identifier
                                    | SIMULTANEOUS_IF_STATEMENT_2 of condition * simultaneous_statement_part * condition_simultaneous_statement_part list * simultaneous_statement_part * identifier
                                    | SIMULTANEOUS_IF_STATEMENT_3 of label_colon * condition * simultaneous_statement_part * condition_simultaneous_statement_part list * identifier
                                    | SIMULTANEOUS_IF_STATEMENT_4 of condition * simultaneous_statement_part * condition_simultaneous_statement_part list * identifier
                                    | SIMULTANEOUS_IF_STATEMENT_5 of label_colon * condition * simultaneous_statement_part * condition_simultaneous_statement_part list
                                    | SIMULTANEOUS_IF_STATEMENT_6 of condition * simultaneous_statement_part * condition_simultaneous_statement_part list
                                    | SIMULTANEOUS_IF_STATEMENT_7 of label_colon * condition * simultaneous_statement_part * condition_simultaneous_statement_part list * simultaneous_statement_part
                                    | SIMULTANEOUS_IF_STATEMENT_8 of condition * simultaneous_statement_part * condition_simultaneous_statement_part list * simultaneous_statement_part

    and   simultaneous_procedural_statement = SIMULTANEOUS_PROCEDURAL_STATEMENT_1 of label_colon * procedural_declarative_part * procedural_statement_part * identifier
                                            | SIMULTANEOUS_PROCEDURAL_STATEMENT_2 of procedural_declarative_part * procedural_statement_part * identifier
                                            | SIMULTANEOUS_PROCEDURAL_STATEMENT_3 of procedural_declarative_part * procedural_statement_part
                                            | SIMULTANEOUS_PROCEDURAL_STATEMENT_4 of label_colon * procedural_declarative_part * procedural_statement_part

    and   simultaneous_statement = SIMULTANEOUS_STATEMENT_1 of simple_simultaneous_statement
                                 | SIMULTANEOUS_STATEMENT_2 of simultaneous_if_statement
                                 | SIMULTANEOUS_STATEMENT_3 of simultaneous_case_statement
                                 | SIMULTANEOUS_STATEMENT_4 of simultaneous_procedural_statement
                                 | SIMULTANEOUS_STATEMENT_5 of label_colon

    and   simultaneous_statement_part = SIMULTANEOUS_STATEMENT_PART of simultaneous_statement list

    and   source_aspect = SOURCE_ASPECT_1 of simple_expression * simple_expression
                        | SOURCE_ASPECT_2 of simple_expression

    and   source_quantity_declaration = SOURCE_QUANTITY_DECLARATION of identifier_list * subtype_indication * source_aspect

    and   step_limit_specification = STEP_LIMIT_SPECIFICATION of quantity_specification * expression

    and   subnature_declaration = SUBNATURE_DECLARATION of identifier * subnature_indication

    and   subnature_indication = SUBNATURE_INDICATION_1 of name * index_constraint * expression * expression
                               | SUBNATURE_INDICATION_2 of name * expression * expression
                               | SUBNATURE_INDICATION_3 of name
                               | SUBNATURE_INDICATION_4 of name * index_constraint

    and   subprogram_body = SUBPROGRAM_BODY_1 of subprogram_specification * subprogram_declarative_part * subprogram_statement_part * subprogram_kind * designator
                          | SUBPROGRAM_BODY_2 of subprogram_specification * subprogram_declarative_part * subprogram_statement_part * designator
                          | SUBPROGRAM_BODY_3 of subprogram_specification * subprogram_declarative_part * subprogram_statement_part
                          | SUBPROGRAM_BODY_4 of subprogram_specification * subprogram_declarative_part * subprogram_statement_part * subprogram_kind

    and   subprogram_declaration = SUBPROGRAM_DECLARATION of subprogram_specification

    and   subprogram_declarative_item = SUBPROGRAM_DECLARATIVE_ITEM_1 of subprogram_declaration
                                      | SUBPROGRAM_DECLARATIVE_ITEM_2 of subprogram_body
                                      | SUBPROGRAM_DECLARATIVE_ITEM_7 of type_declaration
                                      | SUBPROGRAM_DECLARATIVE_ITEM_8 of subtype_declaration
                                      | SUBPROGRAM_DECLARATIVE_ITEM_9 of constant_declaration
                                      | SUBPROGRAM_DECLARATIVE_ITEM_10 of variable_declaration
                                      | SUBPROGRAM_DECLARATIVE_ITEM_11 of file_declaration
                                      | SUBPROGRAM_DECLARATIVE_ITEM_12 of alias_declaration
                                      | SUBPROGRAM_DECLARATIVE_ITEM_13 of attribute_declaration
                                      | SUBPROGRAM_DECLARATIVE_ITEM_14 of attribute_specification
                                      | SUBPROGRAM_DECLARATIVE_ITEM_15 of use_clause
                                      | SUBPROGRAM_DECLARATIVE_ITEM_16 of group_template_declaration
                                      | SUBPROGRAM_DECLARATIVE_ITEM_17 of group_declaration                          

    and   subprogram_declarative_part = SUBPROGRAM_DECLARATIVE_PART of subprogram_declarative_item list

    and   subprogram_kind = Procedure of unit
                          | Function of unit                                                    

    and   subprogram_specification = SUBPROGRAM_SPECIFICATION_1 of procedure_specification
                                   | SUBPROGRAM_SPECIFICATION_2 of function_specification                                            

    and   procedure_specification = PROCEDURE_SPECIFICATION_1 of  designator * formal_parameter_list                                     
                                  | PROCEDURE_SPECIFICATION_2 of  designator

    and   function_specification = FUNCTION_SPECIFICATION_1 of designator * formal_parameter_list * subtype_indication
                                 | FUNCTION_SPECIFICATION_2 of designator * subtype_indication

    and   subprogram_statement_part = SUBPROGRAM_STATEMENT_PART of sequential_statement list

    and   subtype_declaration = SUBTYPE_DECLARATION of identifier * subtype_indication

    and   subtype_indication = SUBTYPE_INDICATION_1 of selected_name * selected_name * constraint * tolerance_aspect
                             | SUBTYPE_INDICATION_2 of selected_name * constraint * tolerance_aspect
                             | SUBTYPE_INDICATION_3 of selected_name * selected_name * tolerance_aspect
                             | SUBTYPE_INDICATION_4 of selected_name * tolerance_aspect
                             | SUBTYPE_INDICATION_5 of selected_name * selected_name
                             | SUBTYPE_INDICATION_6 of selected_name
                             | SUBTYPE_INDICATION_7 of selected_name * selected_name * constraint
                             | SUBTYPE_INDICATION_8 of selected_name * constraint

    and   suffix = SUFFIX_1 of identifier
                 | SUFFIX_2 of unit
                 | SUFFIX_3 of character_literal
                 | SUFFIX_4 of string_literal

    and   target = TARGET_1 of name
                 | TARGET_2 of aggregate

    and   multiplying_operator_factor = MULTIPLYING_OPERATOR_FACTOR of multiplying_operator * factor

    and   term = TERM of factor * multiplying_operator_factor list

    and   terminal_aspect = TERMINAL_ASPECT_1 of name * name
                          | TERMINAL_ASPECT_2 of name

    and   terminal_declaration = TERMINAL_DECLARATION of identifier_list * subnature_indication

    and   through_aspect = THROUGH_ASPECT_1 of identifier_list * tolerance_aspect * expression                          
                         | THROUGH_ASPECT_2 of identifier_list * expression                          
                         | THROUGH_ASPECT_3 of identifier_list                          
                         | THROUGH_ASPECT_4 of identifier_list * tolerance_aspect                          

    and   timeout_clause = TIMEOUT_CLAUSE of expression

(*    and   type_mark = TYPE_MARK of name*)

    and   tolerance_aspect = TOLERANCE_ASPECT of expression

    and   type_declaration = TYPE_DECLARATION_1 of identifier * type_definition
                           | TYPE_DECLARATION_2 of identifier                                                           

    and   type_definition = TYPE_DEFINITION_1 of scalar_type_definition
                          | TYPE_DEFINITION_2 of composite_type_definition
                          | TYPE_DEFINITION_3 of access_type_definition
                          | TYPE_DEFINITION_4 of file_type_definition

    and   unconstrained_array_definition = UNCONSTRAINED_ARRAY_DEFINITION of index_subtype_definition * index_subtype_definition list * subtype_indication

    and   unconstrained_nature_definition = UNCONSTRAINED_NATURE_DEFINITION of index_subtype_definition * index_subtype_definition list * subnature_indication

    and   use_clause = USE_CLAUSE of selected_name * selected_name list

    and   variable_assignment_statement = VARIABLE_ASSIGNMENT_STATEMENT_1 of label_colon * target * expression
                                        | VARIABLE_ASSIGNMENT_STATEMENT_2 of target * expression

    and   variable_declaration = VARIABLE_DECLARATION_1 of identifier_list * subtype_indication * expression                                         
                               | VARIABLE_DECLARATION_2 of identifier_list * subtype_indication 

    and   wait_statement = WAIT_STATEMENT_1 of condition_clause * timeout_clause                               
                         | WAIT_STATEMENT_2 of label_colon * condition_clause * timeout_clause                               
                         | WAIT_STATEMENT_3 of sensitivity_clause * condition_clause * timeout_clause                               
                         | WAIT_STATEMENT_4 of label_colon * sensitivity_clause * condition_clause * timeout_clause                               
                         | WAIT_STATEMENT_5 of timeout_clause                               
                         | WAIT_STATEMENT_6 of label_colon * timeout_clause                               
                         | WAIT_STATEMENT_7 of sensitivity_clause * timeout_clause                               
                         | WAIT_STATEMENT_8 of label_colon * sensitivity_clause * timeout_clause                               
                         | WAIT_STATEMENT_9 of label_colon                               
                         | WAIT_STATEMENT_10 of sensitivity_clause                               
                         | WAIT_STATEMENT_11 of label_colon * sensitivity_clause                               
                         | WAIT_STATEMENT_12 of condition_clause                               
                         | WAIT_STATEMENT_13 of label_colon * condition_clause                               
                         | WAIT_STATEMENT_14 of sensitivity_clause * condition_clause                               
                         | WAIT_STATEMENT_15 of label_colon * sensitivity_clause * condition_clause                               
                         | WAIT_STATEMENT_16 of unit                     

    and   waveform = WAVEFORM of waveform_element * waveform_element list
                    | Unaffected1 of unit                         

    and   waveform_element = WAVEFORM_ELEMENT_1 of expression * expression                    
                           | WAVEFORM_ELEMENT_2 of expression 

    and root = ROOT of design_file

end
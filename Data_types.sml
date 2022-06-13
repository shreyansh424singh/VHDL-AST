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
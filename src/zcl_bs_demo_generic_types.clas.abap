CLASS zcl_bs_demo_generic_types DEFINITION
  PUBLIC FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.

    TYPES: BEGIN OF my_structure,
             ident TYPE c LENGTH 20,
             date  TYPE d,
             num   TYPE i,
             text  TYPE string,
           END OF my_structure.
    TYPES my_table TYPE STANDARD TABLE OF my_structure WITH EMPTY KEY.

    TYPES:
      BEGIN OF MESH my_mesh,
        simple TYPE my_table,
      END OF MESH my_mesh.

  PRIVATE SECTION.
    METHODS type_any
      IMPORTING generic TYPE any.

    METHODS type_data
      IMPORTING generic TYPE data.

    METHODS type_csequence
      IMPORTING generic TYPE csequence.

    METHODS type_xsequence
      IMPORTING generic TYPE xsequence.

    METHODS type_decfloat
      IMPORTING generic TYPE decfloat.

    METHODS type_numeric
      IMPORTING generic TYPE numeric.

    METHODS type_clike
      IMPORTING generic TYPE clike.

    METHODS type_simple
      IMPORTING generic TYPE simple.

    METHODS type_standard
      IMPORTING generic TYPE STANDARD TABLE.

    METHODS type_sorted
      IMPORTING generic TYPE SORTED TABLE.

    METHODS type_hashed
      IMPORTING generic TYPE HASHED TABLE.

    METHODS type_index
      IMPORTING generic TYPE INDEX TABLE.

    METHODS type_any_table
      IMPORTING generic TYPE ANY TABLE.

    METHODS type_object
      IMPORTING generic TYPE REF TO object.
ENDCLASS.


CLASS zcl_bs_demo_generic_types IMPLEMENTATION.
  METHOD if_oo_adt_classrun~main.
    DATA base_c          TYPE c LENGTH 20.
    DATA base_d          TYPE d.
    DATA base_n          TYPE n LENGTH 3.
    DATA base_t          TYPE t.
    DATA base_decfloat16 TYPE decfloat16.
    DATA base_decfloat34 TYPE decfloat34.
    DATA base_f          TYPE f.
    DATA base_i          TYPE i.
    DATA base_p          TYPE p LENGTH 10 DECIMALS 2.
    DATA base_x          TYPE x LENGTH 20.
    DATA base_xstring    TYPE xstring.
    DATA base_string     TYPE string.
    DATA base_structure  TYPE my_structure.
    DATA base_standard   TYPE STANDARD TABLE OF my_structure WITH EMPTY KEY.
    DATA base_sorted     TYPE SORTED TABLE OF my_structure WITH UNIQUE KEY ident.
    DATA base_hashed     TYPE HASHED TABLE OF my_structure WITH UNIQUE KEY ident.
    DATA base_mesh       TYPE my_mesh.
    DATA base_interface  TYPE REF TO if_xco_string.
    DATA base_class      TYPE REF TO xco_cp_message.

    type_csequence( base_c ).
*    type_csequence( base_d ).
*    type_csequence( base_n ).
*    type_csequence( base_t ).
*    type_csequence( base_decfloat16 ).
*    type_csequence( base_decfloat34 ).
*    type_csequence( base_f ).
*    type_csequence( base_i ).
*    type_csequence( base_p ).
*    type_csequence( base_x ).
*    type_csequence( base_xstring ).
    type_csequence( base_string ).
*    type_csequence( base_structure ).
*    type_csequence( base_standard ).
*    type_csequence( base_sorted ).
*    type_csequence( base_hashed ).
*    type_csequence( base_mesh ).
*    type_csequence( base_interface ).
*    type_csequence( base_class ).

*    type_xsequence( base_c ).
*    type_xsequence( base_d ).
*    type_xsequence( base_n ).
*    type_xsequence( base_t ).
*    type_xsequence( base_decfloat16 ).
*    type_xsequence( base_decfloat34 ).
*    type_xsequence( base_f ).
*    type_xsequence( base_i ).
*    type_xsequence( base_p ).
    type_xsequence( base_x ).
    type_xsequence( base_xstring ).
*    type_xsequence( base_string ).
*    type_xsequence( base_structure ).
*    type_xsequence( base_standard ).
*    type_xsequence( base_sorted ).
*    type_xsequence( base_hashed ).
*    type_xsequence( base_mesh ).
*    type_xsequence( base_interface ).
*    type_xsequence( base_class ).

*    type_decfloat( base_c ).
*    type_decfloat( base_d ).
*    type_decfloat( base_n ).
*    type_decfloat( base_t ).
    type_decfloat( base_decfloat16 ).
    type_decfloat( base_decfloat34 ).
*    type_decfloat( base_f ).
*    type_decfloat( base_i ).
*    type_decfloat( base_p ).
*    type_decfloat( base_x ).
*    type_decfloat( base_xstring ).
*    type_decfloat( base_string ).
*    type_decfloat( base_structure ).
*    type_decfloat( base_standard ).
*    type_decfloat( base_sorted ).
*    type_decfloat( base_hashed ).
*    type_decfloat( base_mesh ).
*    type_decfloat( base_interface ).
*    type_decfloat( base_class ).

*    type_numeric( base_c ).
*    type_numeric( base_d ).
*    type_numeric( base_n ).
*    type_numeric( base_t ).
    type_numeric( base_decfloat16 ).
    type_numeric( base_decfloat34 ).
    type_numeric( base_f ).
    type_numeric( base_i ).
    type_numeric( base_p ).
*    type_numeric( base_x ).
*    type_numeric( base_xstring ).
*    type_numeric( base_string ).
*    type_numeric( base_structure ).
*    type_numeric( base_standard ).
*    type_numeric( base_sorted ).
*    type_numeric( base_hashed ).
*    type_numeric( base_mesh ).
*    type_numeric( base_interface ).
*    type_numeric( base_class ).

    type_clike( base_c ).
    type_clike( base_d ).
    type_clike( base_n ).
    type_clike( base_t ).
*    type_clike( base_decfloat16 ).
*    type_clike( base_decfloat34 ).
*    type_clike( base_f ).
*    type_clike( base_i ).
*    type_clike( base_p ).
*    type_clike( base_x ).
*    type_clike( base_xstring ).
    type_clike( base_string ).
*    type_clike( base_structure ).
*    type_clike( base_standard ).
*    type_clike( base_sorted ).
*    type_clike( base_hashed ).
*    type_clike( base_mesh ).
*    type_clike( base_interface ).
*    type_clike( base_class ).

    type_simple( base_c ).
    type_simple( base_d ).
    type_simple( base_n ).
    type_simple( base_t ).
    type_simple( base_decfloat16 ).
    type_simple( base_decfloat34 ).
    type_simple( base_f ).
    type_simple( base_i ).
    type_simple( base_p ).
    type_simple( base_x ).
    type_simple( base_xstring ).
    type_simple( base_string ).
*    type_simple( base_structure ).
*    type_simple( base_standard ).
*    type_simple( base_sorted ).
*    type_simple( base_hashed ).
*    type_simple( base_mesh ).
*    type_simple( base_interface ).
*    type_simple( base_class ).

*    type_standard( base_c ).
*    type_standard( base_d ).
*    type_standard( base_n ).
*    type_standard( base_t ).
*    type_standard( base_decfloat16 ).
*    type_standard( base_decfloat34 ).
*    type_standard( base_f ).
*    type_standard( base_i ).
*    type_standard( base_p ).
*    type_standard( base_x ).
*    type_standard( base_xstring ).
*    type_standard( base_string ).
*    type_standard( base_structure ).
    type_standard( base_standard ).
*    type_standard( base_sorted ).
*    type_standard( base_hashed ).
*    type_standard( base_mesh ).
*    type_standard( base_interface ).
*    type_standard( base_class ).

*    type_sorted( base_c ).
*    type_sorted( base_d ).
*    type_sorted( base_n ).
*    type_sorted( base_t ).
*    type_sorted( base_decfloat16 ).
*    type_sorted( base_decfloat34 ).
*    type_sorted( base_f ).
*    type_sorted( base_i ).
*    type_sorted( base_p ).
*    type_sorted( base_x ).
*    type_sorted( base_xstring ).
*    type_sorted( base_string ).
*    type_sorted( base_structure ).
*    type_sorted( base_standard ).
    type_sorted( base_sorted ).
*    type_sorted( base_hashed ).
*    type_sorted( base_mesh ).
*    type_sorted( base_interface ).
*    type_sorted( base_class ).

*    type_hashed( base_c ).
*    type_hashed( base_d ).
*    type_hashed( base_n ).
*    type_hashed( base_t ).
*    type_hashed( base_decfloat16 ).
*    type_hashed( base_decfloat34 ).
*    type_hashed( base_f ).
*    type_hashed( base_i ).
*    type_hashed( base_p ).
*    type_hashed( base_x ).
*    type_hashed( base_xstring ).
*    type_hashed( base_string ).
*    type_hashed( base_structure ).
*    type_hashed( base_standard ).
*    type_hashed( base_sorted ).
    type_hashed( base_hashed ).
*    type_hashed( base_mesh ).
*    type_hashed( base_interface ).
*    type_hashed( base_class ).

*    type_index( base_c ).
*    type_index( base_d ).
*    type_index( base_n ).
*    type_index( base_t ).
*    type_index( base_decfloat16 ).
*    type_index( base_decfloat34 ).
*    type_index( base_f ).
*    type_index( base_i ).
*    type_index( base_p ).
*    type_index( base_x ).
*    type_index( base_xstring ).
*    type_index( base_string ).
*    type_index( base_structure ).
    type_index( base_standard ).
    type_index( base_sorted ).
*    type_index( base_hashed ).
*    type_index( base_mesh ).
*    type_index( base_interface ).
*    type_index( base_class ).

*    type_any_table( base_c ).
*    type_any_table( base_d ).
*    type_any_table( base_n ).
*    type_any_table( base_t ).
*    type_any_table( base_decfloat16 ).
*    type_any_table( base_decfloat34 ).
*    type_any_table( base_f ).
*    type_any_table( base_i ).
*    type_any_table( base_p ).
*    type_any_table( base_x ).
*    type_any_table( base_xstring ).
*    type_any_table( base_string ).
*    type_any_table( base_structure ).
    type_any_table( base_standard ).
    type_any_table( base_sorted ).
    type_any_table( base_hashed ).
*    type_any_table( base_mesh ).
*    type_any_table( base_interface ).
*    type_any_table( base_class ).

*    type_object( base_c ).
*    type_object( base_d ).
*    type_object( base_n ).
*    type_object( base_t ).
*    type_object( base_decfloat16 ).
*    type_object( base_decfloat34 ).
*    type_object( base_f ).
*    type_object( base_i ).
*    type_object( base_p ).
*    type_object( base_x ).
*    type_object( base_xstring ).
*    type_object( base_string ).
*    type_object( base_structure ).
*    type_object( base_standard ).
*    type_object( base_sorted ).
*    type_object( base_hashed ).
*    type_object( base_mesh ).
    type_object( base_interface ).
    type_object( base_class ).

    type_any( base_c ).
    type_any( base_d ).
    type_any( base_n ).
    type_any( base_t ).
    type_any( base_decfloat16 ).
    type_any( base_decfloat34 ).
    type_any( base_f ).
    type_any( base_i ).
    type_any( base_p ).
    type_any( base_x ).
    type_any( base_xstring ).
    type_any( base_string ).
    type_any( base_structure ).
    type_any( base_standard ).
    type_any( base_sorted ).
    type_any( base_hashed ).
    type_any( base_mesh ).
    type_any( base_interface ).
    type_any( base_class ).

    type_data( base_c ).
    type_data( base_d ).
    type_data( base_n ).
    type_data( base_t ).
    type_data( base_decfloat16 ).
    type_data( base_decfloat34 ).
    type_data( base_f ).
    type_data( base_i ).
    type_data( base_p ).
    type_data( base_x ).
    type_data( base_xstring ).
    type_data( base_string ).
    type_data( base_structure ).
    type_data( base_standard ).
    type_data( base_sorted ).
    type_data( base_hashed ).
    type_data( base_mesh ).
    type_data( base_interface ).
    type_data( base_class ).
  ENDMETHOD.


  METHOD type_any.
  ENDMETHOD.


  METHOD type_data.
  ENDMETHOD.


  METHOD type_any_table.
  ENDMETHOD.


  METHOD type_clike.
  ENDMETHOD.


  METHOD type_csequence.
  ENDMETHOD.


  METHOD type_decfloat.
  ENDMETHOD.


  METHOD type_hashed.
  ENDMETHOD.


  METHOD type_index.
  ENDMETHOD.


  METHOD type_numeric.
  ENDMETHOD.


  METHOD type_object.
  ENDMETHOD.


  METHOD type_simple.
  ENDMETHOD.


  METHOD type_sorted.
  ENDMETHOD.


  METHOD type_standard.
  ENDMETHOD.


  METHOD type_xsequence.
  ENDMETHOD.
ENDCLASS.

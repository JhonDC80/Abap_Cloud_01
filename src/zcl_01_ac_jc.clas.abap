CLASS zcl_01_ac_jc DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_01_ac_jc IMPLEMENTATION.
  METHOD if_oo_adt_classrun~main.
    out->write( 'Hola Mundo en Abp Cloud' ).
  ENDMETHOD.
ENDCLASS.

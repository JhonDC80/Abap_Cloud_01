CLASS zcl_jd_art_01 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_OO_adt_classrun.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_jd_art_01 IMPLEMENTATION.
  METHOD if_oo_adt_classrun~main.

  DATA: IT_ART TYPE STANDARD TABLE OF zdt_jd_art_01.


  IT_ART = VALUE #(
  ( client = sy-mandt
    id_art = 1
    descr  = 'Mini Colores'
    descr2 = 'Un mini estuche, con mini colores'
    color  = 'Varios'
    piezas = 12
    stock  = 10
    url    = 'https://lalibreteria.mx/collections/marcadores/products/stabilo-boss-original')
   ( client = sy-mandt
    id_art = 2
    descr  = 'Monthly Planner'
    descr2 = 'Ideal para planificar tus metas y proyectos'
    color  = 'Negro'
    piezas = 1
    stock  = 10
    url    = 'https://lalibreteria.mx/cdn/shop/products/la-libreteria-Libreta-MonthyPlanner-4_1200x.jpg?v=1700616264')
   ( client = sy-mandt
    id_art = 3
    descr  = 'Frontissa No.1'
    descr2 = 'Para tus notas importantes'
    color  = 'Cafe'
    piezas = 3
    stock  = 10
    url    = 'https://lalibreteria.mx/collections/porta-libretas/products/frontissa-no-1')

  ).

  inSERT zdt_jd_art_01 frOM tABLE @it_ART.
  IF sy-subrc = 0.
    out->write( 'Insert successful' ).
  else.
      out->write( 'Insert Wrong' ).
  endif.


  ENDMETHOD.
ENDCLASS.

CLASS zcl_libros_load_hfc DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_libros_load_hfc IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.
   DATA: lt_acc_cat    TYPE TABLE OF ztb_acc_cate_hfc,
         lt_catego     TYPE TABLE OF ztb_categori_hfc,
         lt_clientes   TYPE TABLE OF ztb_clientes_hfc,
         lt_clntslib   TYPE TABLE OF ztb_clntslib_hfc,
         lt_libros     TYPE TABLE OF ztb_libros_hfc.

** Categorias **
   lt_catego = VALUE #(
  ( BI_categ = '1' descipcion = 'Categ.1' )
  ( BI_categ = '4' descipcion = 'Categ.2' )
 ).

   DELETE FROM ztb_categori_hfc.
   modify ztb_categori_hfc FROM TABLE @lt_catego.
   SELECT * FROM ztb_categori_hfc INTO TABLE @lt_catego.

   out->write( sy-dbcnt ).
   out->write( 'ztb_categori_hfc data inserted successfully!').

** Acceso categoria **
    lt_acc_cat = VALUE #(
    ( bi_categ = '1'
      tipo_acceso = '1' )
   ( bi_categ = '2'
      tipo_acceso = '2' ) ).

    DELETE FROM ztb_acc_cate_hfc.
    INSERT ztb_acc_cate_hfc FROM TABLE @lt_acc_cat.
    SELECT * FROM ztb_acc_cate_hfc INTO TABLE @lt_acc_cat.

    out->write( sy-dbcnt ).
    out->write( 'ztb_acc_cat_hfc data inserted successfully!').



** Clientes **
   lt_clientes = VALUE #(
   ( id_cliente = '1' tipo_acceso = '1' nombre = 'Carlos' apellido = 'Fuente' email = '' url = ' ' )
   ( id_cliente = '2' tipo_acceso = '2' nombre = 'Cesar'  apellido = 'Perez' email = '' url = ' ' )
   ( id_cliente = '3' tipo_acceso = '2' nombre = 'Luis'   apellido = 'Diaz' email = '' url = ' ' )
   ( id_cliente = '4' tipo_acceso = '1' nombre = 'Pablo'  apellido = 'Sanchez' email = '' url = ' ' )
   ( id_cliente = '5' tipo_acceso = '2' nombre = 'Sergio' apellido = 'Matias' email = '' url = ' ' )

 ).

   DELETE FROM ztb_clientes_hfc.
   INSERT ztb_clientes_hfc FROM TABLE @lt_clientes.
   SELECT * FROM ztb_clientes_hfc INTO TABLE @lt_clientes.

   out->write( sy-dbcnt ).
   out->write( 'ztb_clientes_hfc data inserted successfully!').

** Clientes Libros **
  lt_clntslib = VALUE #(
  ( id_cliente = '1' id_libro = 'L5' )
  ( id_cliente = '2' id_libro = 'L3' )
  ( id_cliente = '3' id_libro = 'L4' )
  ( id_cliente = '4' id_libro = 'L2' )
  ( id_cliente = '5' id_libro = 'L1' ) ).

   DELETE FROM ztb_clntslib_hfc.
   INSERT ztb_clntslib_hfc FROM TABLE @lt_clntslib.
   SELECT * FROM ztb_clntslib_hfc INTO TABLE @lt_clntslib.

   out->write( sy-dbcnt ).
   out->write( 'ztb_clntslib_hfc data inserted successfully!').

** LIBROS **
  lt_libros = VALUE #(
  ( id_libro = '1' bi_categ = '1' titulo = 'Business as Unusual with SAP'
    autor = 'Thomas Saueressig, Peter Maier' editorial = 'SAP Press' idioma = 'EN' paginas = '307' precio = '74.99' moneda = 'USD' formato = 'E-book'
    url = 'https://s3-eu-west-1.amazonaws.com/cover2.galileo-press.de/print/9781493223893_800_2d.png' )
  ( id_libro = '2' bi_categ = '2' titulo = 'SAP Fiori: Implementation and Development'
    autor = 'Souvik Roy, Aleksandar Debelic, Gairik Acharya' editorial = 'SAP Press' idioma = 'EN' paginas = '570' precio = '84.99 ' moneda = 'USD' formato = 'E-book'
    url = 'https://s3-eu-west-1.amazonaws.com/cover2.galileo-press.de/print/9781493222049_800_2d.png' )
  ( id_libro = '3' bi_categ = '2' titulo = 'Application Development with SAP Business Technology Platform'
    autor = 'Gairik Acharya, Govind Bajaj, Avijit Dhar, Anup Ghosh, Asidhara Lahiri' editorial = 'SAP Press' idioma = 'EN' paginas = '574' precio = '84.99' moneda = 'USD' formato = 'E-book'
    url = 'https://s3-eu-west-1.amazonaws.com/cover2.galileo-press.de/print/9781493222551_800_2d.png' )
  ( id_libro = '4' bi_categ = '1' titulo = 'Vendor Invoice Management with SAP'
    autor = 'Matthias Niessen, Heather Reina, Mark Travers' editorial = 'SAP Press' idioma = 'EN' paginas = '446' precio = '84.99' moneda = 'USD' formato = 'E-book'
    url = 'https://s3-eu-west-1.amazonaws.com/cover2.galileo-press.de/print/9781493223510_800_2d.png' )
  ( id_libro = '5' bi_categ = '2' titulo = 'Auditing SAP S/4HANA'
    autor = 'Steve Biskie' editorial = 'SAP Press' idioma = 'EN' paginas = '509' precio = '114.99' moneda = 'USD' formato = 'E-book'
    url = 'https://s3-eu-west-1.amazonaws.com/cover2.galileo-press.de/print/9781493222643_800_2d.png' )  ).

  DELETE FROM ztb_libros_hfc.
   INSERT ztb_libros_hfc FROM TABLE @lt_libros.
   SELECT * FROM ztb_libros_hfc INTO TABLE @lt_libros.

   out->write( sy-dbcnt ).
   out->write( 'ztb_libros_hfc data inserted successfully!').


  ENDMETHOD.
ENDCLASS.

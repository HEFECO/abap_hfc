@AbapCatalog.sqlViewName: 'ZVCLNTSLIBHFC'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Clientes Libros'
define view zc_clntslib_hfc as select from ztb_clntslib_hfc
 {
     key id_libro,
     
         count(distinct id_cliente) as Ventas
}
group by 
  id_libro

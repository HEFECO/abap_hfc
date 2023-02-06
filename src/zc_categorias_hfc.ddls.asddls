@AbapCatalog.sqlViewName: 'ZVCATEGOHFC'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Categorias'
define view ZC_CATEGORIAS_hfc
  as select from ztb_categori_hfc
{
  key bi_categ   as Categoria,
      descipcion as Descripcion
}

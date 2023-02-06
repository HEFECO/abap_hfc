@AbapCatalog.sqlViewName: 'ZV_DETHCM_CUSTL'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Customer Details'
@Metadata.allowExtensions: true
define view z_b_det_custo_hfc
  as select from zrenthm_customer
{
  key doc_id    as ID,
  key matricula as Matricula,
      nombres   as Nombre,
      apellidos as Apellido,
      email     as Correo,
      cntr_type as TipoContrato
}

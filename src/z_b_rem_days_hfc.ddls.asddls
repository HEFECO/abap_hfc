@AbapCatalog.sqlViewName: 'ZV_HFC_REM_DAYSL'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Remaining days'
define view z_b_rem_days_hfc
  as select from zrenthm_cars
{
  key matricula as Matricula,
      marca     as Marca,
      case
      when alq_hasta <> ''
      then dats_days_between( cast($session.system_date as abap.dats ), alq_hasta)
      end       as Dias
}

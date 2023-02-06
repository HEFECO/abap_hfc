@AbapCatalog.sqlViewName: 'ZV_BRANDS_HFC'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Brands'
define view z_b_brands_hfc as select from zrenthm_brands {

    key marca as Marca,
    @UI.hidden: true
    url as Imagen
}

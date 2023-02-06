@AbapCatalog.sqlViewName: 'ZVCLIENTESHFC'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Clientes'
@Metadata.allowExtensions: true
@UI.headerInfo: {typeName        : 'Cliente',
                 title           : {type    : #STANDARD,
                                    value   : 'NombreCompleto'},
                 description     : {type    : #STANDARD,
                                    value   : 'IdCliente'},
                 imageUrl       : 'Imagen'       
                }
define view ZC_CLIENTES_HFC
  as select from ztb_clientes_hfc as clientes
    inner join   ztb_clntslib_hfc as clnts on clnts.id_cliente = clientes.id_cliente
{
      //Clnts
  key clnts.id_libro       as IdLibro,
  key clientes.id_cliente  as IdCliente,
  key clientes.tipo_acceso as Acceso,
      //Clientes
      clientes.nombre      as Nombre,
      clientes.apellido    as Apellido,
      clientes.email       as Email,
      clientes.url         as Imagen,
      concat_with_space(clientes.nombre, apellido, 1) as NombreCompleto
}

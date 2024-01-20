@EndUserText.label: 'Airline Basic View'
-- DCL
@AccessControl.authorizationCheck: #NOT_REQUIRED
-- Metadata
//@Metadata:{
// allowExtensions: true,
// ignorePropagatedAnnotations: true
//}
//-- Data Model
////@VDM.viewType: #BASIC
//-- Performance
//@ObjectModel.usageType:{
//    serviceQuality: #A,
//    dataClass: #MASTER,
//    sizeCategory: #L
//}
//-- Analytical
//@Analytics : {
//    dataCategory: #DIMENSION
//}
-- Value Help
-- @ObjectModel.representativeKey: 'AirlineID'
define view entity ZVKS_R_Airline
  as select from /dmo/carrier
  association [0..1] to I_Currency as _Currency on $projection.CurrencyCode = _Currency.Currency
{
      @ObjectModel.text:{ element: [ 'Name' ] }
  key carrier_id            as AirlineID,
      @Semantics.text: true
      name                  as Name,
      currency_code         as CurrencyCode,
      @Semantics.user.createdBy: true
      local_created_by      as LocalCreatedBy,
      @Semantics.systemDateTime.createdAt: true
      local_created_at      as LocalCreatedAt,
      @Semantics.user.lastChangedBy: true
      local_last_changed_by as LocalLastChangedBy,
      @Semantics.systemDateTime.localInstanceLastChangedAt: true
      local_last_changed_at as LocalLastChangedAt,
      @Semantics.systemDateTime.lastChangedAt: true
      last_changed_at       as LastChangedAt,

      /*Associations*/
      _Currency
}

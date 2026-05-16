@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Sales Order Projection'
@Metadata.ignorePropagatedAnnotations: true
define root view entity ZC_RAM_ORDER
  provider contract transactional_query
  as projection on ZR_RAM_ORDER
{
  key Ordno,
      Ordate,
      Customer,
      Payty,
      @Semantics.amount.currencyCode: 'Currency'
      Ordamt,
      Currency
}

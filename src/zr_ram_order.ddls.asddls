@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Order Header data'
@Metadata.ignorePropagatedAnnotations: true
define root view entity ZR_RAM_ORDER
  as select from zram_ord
  //composition of target_data_source_name as _association_name
{
  key ordno    as Ordno,
      ordate   as Ordate,
      customer as Customer,
      payty    as Payty,
      @Semantics.amount.currencyCode: 'Currency'
      ordamt   as Ordamt,
      currency as Currency
      //  _association_name // Make association public
}

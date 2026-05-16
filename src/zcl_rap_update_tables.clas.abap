CLASS zcl_rap_update_tables DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES:if_oo_adt_classrun.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_rap_update_tables IMPLEMENTATION.
  METHOD if_oo_adt_classrun~main.
    DATA: li_payment  TYPE STANDARD TABLE OF zram_payd,
          li_material TYPE STANDARD TABLE OF zram_mat,
          li_customer TYPE STANDARD TABLE OF zram_customer,
          li_ord      TYPE STANDARD TABLE OF zram_ord,
          li_ordd     TYPE STANDARD TABLE OF zram_ord_d,
          li_orditem  TYPE STANDARD TABLE OF zram_ord_item,
          li_matd     TYPE STANDARD TABLE OF zram_matd.


*Payment details update
    IF  1 = 2  .

      li_payment = VALUE #( ( payty = 'CC' paydesc = 'Credit Card' )
                            ( payty = 'DC' paydesc = 'Debit Card' )
                            ( payty = 'NB' paydesc = 'Net Banking' )
                            ( payty = 'CQ' paydesc = 'Cheque' )
                            ( payty = 'CA' paydesc = 'Cash' ) ).

      MODIFY zram_payd FROM TABLE @li_payment.
      IF sy-subrc = 0.

        out->write( |Sucessfully updated the Records| ) .

      ENDIF.
    ENDIF.

*Material update
*    IF  1 = 2 .
      li_material = VALUE #(
            ( matno = '80901'  mats = 'Chemical Industry' matty = 'Beverages' matunit = 'BT' )
            ( matno = '80902'  mats = 'Chemical Industry' matty = 'Beverages' matunit = 'BT' )
            ( matno = '80903'  mats = 'Chemical Industry' matty = 'Beverages' matunit = 'BT' )
            ( matno = '80904'  mats = 'Chemical Industry' matty = 'Beverages' matunit = 'BT' )
            ( matno = '80905'  mats = 'Chemical Industry' matty = 'Beverages' matunit = 'BT' )
            ( matno = '80906'  mats = 'Chemical Industry' matty = 'Beverages' matunit = 'BT' )
            ( matno = '80907'  mats = 'Chemical Industry' matty = 'Beverages' matunit = 'BT' )
            ( matno = '80908'  mats = 'Chemical Industry' matty = 'Beverages' matunit = 'BT' )
            ( matno = '80909'  mats = 'Chemical Industry' matty = 'Beverages' matunit = 'BT' )

             ).

      MODIFY zram_mat FROM TABLE @li_material.
      IF sy-subrc = 0.

        out->write( |Sucessfully updated the Records| ) .

      ENDIF.
*    ENDIF.

*Customer update details
    IF  1 = 2 .
      li_customer = VALUE #(
      ( cid = '20010' name = 'Ramana' address = 'Bangalore' phone = '8388484841' email = 'test@gmail.com' )
      (  cid = '20020' name = 'Ramana1' address = 'Bangalore' phone = '8388484841' email = 'test1@gmail.com' )

      (  cid = '20030' name = 'Ramana2' address = 'Bangalore' phone = '8388484841' email = 'test2@gmail.com' )

      (  cid = '20040' name = 'Ramana3' address = 'Bangalore' phone = '8388484841' email = 'test3@gmail.com' )

      (  cid = '20050' name = 'Ramana4' address = 'Bangalore' phone = '8388484841' email = 'test4@gmail.com' )

      ).


      MODIFY zram_customer FROM TABLE @li_customer.
      IF sy-subrc = 0.

        out->write( |Sucessfully updated the Records| ) .

      ENDIF.
    ENDIF.

*Order update
    IF  1 = 2 .
      li_ord  = VALUE #(

     ( ordno = '00001' ordate = '20260101' customer = '20040' payty = 'CC' ordamt = '2300.00'  currency = 'INR' )
     ( ordno = '00002' ordate = '20260103' customer = '20030' payty = 'CA' ordamt = '2390.00'  currency = 'INR' )
     ( ordno = '00003' ordate = '20260104' customer = '20020' payty = 'CQ' ordamt = '2380.00'  currency = 'INR' )
     ( ordno = '00004' ordate = '20260105' customer = '20020' payty = 'NB' ordamt = '2370.00'  currency = 'INR' )
     ( ordno = '00005' ordate = '20260105' customer = '20010' payty = 'DC' ordamt = '2370.00'  currency = 'INR' ) )   .
      MODIFY zram_ord FROM TABLE @li_ord.
      IF sy-subrc = 0.

        out->write( |Sucessfully updated the Records| ) .

      ENDIF.
    ENDIF.


*Item details
*    DELETE  FROM zram_ord_item WHERE  ordno = '00005'.

    IF  1 = 2 .
      li_orditem = VALUE #( ( ordno = '00001' itno = '80909' qty = '10' )
      ( ordno = '00001' itno = '80901' qty = '10' )
      ( ordno = '00001' itno = '80902' qty = '20' )
      ( ordno = '00002' itno = '80903' qty = '40' )
      ( ordno = '00002' itno = '80904' qty = '50' )
      ( ordno = '00002' itno = '80905' qty = '60' )
      ( ordno = '00003' itno = '80906' qty = '50' )
      ( ordno = '00004' itno = '80907' qty = '60' )
      ( ordno = '00005' itno = '80908' qty = '60' )
      ) .
      MODIFY zram_ord_item FROM TABLE @li_orditem.
      IF sy-subrc = 0.

        out->write( |Sucessfully updated the Records| ) .

      ENDIF.
    ENDIF.
* Material description
    IF  1 = 2 .
      li_matd = VALUE #( ( matno = '80901' matdesc = 'Scotch Whisky'  matid = 'Jony Walker' )
                         ( matno = '80902' matdesc = 'Scotch Whisky'   matid = 'Talisker'  )
                          ( matno = '80903' matdesc = 'Scotch Whisky'  matid = 'Lavavulin' )
                          ( matno = '80904' matdesc = 'Wisky'  matid = 'The Singleton' )
                          ( matno = '80905' matdesc = 'Wisky' matid = 'Mortlach' )
                          ( matno = '80906' matdesc = 'Gin'  matid = 'Buchanan' )
                          ( matno = '80907' matdesc = 'Gin'  matid = 'Bulleit' )
                          ( matno = '80908' matdesc = 'Beer'  matid = 'Crown Rayal' )
                          ( matno = '80909' matdesc = 'Beer'  matid = 'Don Julio' )
      ).
      MODIFY zram_matd FROM TABLE @li_matd.
      IF sy-subrc = 0.

        out->write( |Sucessfully updated the Records| ) .

      ENDIF.
    ENDIF.
*Oder description
    IF  1 = 2 .
      li_ordd  = VALUE #( ( ordno = '00001' orddesc = 'Scotch Whisky' )
                          ( ordno = '00002' orddesc = 'Whisky Beer' )
                          ( ordno = '00003' orddesc = 'Rum' )
                          ( ordno = '00004' orddesc = 'Non achohol' )
                          ( ordno = '00005' orddesc = 'Vodka' )
      ).

      MODIFY zram_ord_d FROM TABLE @li_ordd.
      IF sy-subrc = 0.

        out->write( |Sucessfully updated the Records| ) .

      ENDIF.
    ENDIF.
  ENDMETHOD.


ENDCLASS.

CLASS zvks_cl_airline DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun .

    TYPES:
      gty_tt_airline TYPE STANDARD TABLE OF zvks_a_airline WITH DEFAULT KEY.

    METHODS:
      get_airline_data RETURNING VALUE(rt_airline) TYPE gty_tt_airline,
      set_airline_data RETURNING VALUE(rt_airline) TYPE gty_tt_airline.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zvks_cl_airline IMPLEMENTATION.

  METHOD if_oo_adt_classrun~main.
    out->write( me->get_airline_data( ) ).
  ENDMETHOD.

  METHOD get_airline_data.

    DATA:
      lv_utc_tmstmpl TYPE tzntstmpl.

    rt_airline = VALUE #(
    ( airline_id = 'AA' airline_name = 'American Airlines Inc.'                 currency_code = 'USD' )
    ( airline_id = 'LH' airline_name = 'Deutsche Lufthansa AG'                  currency_code = 'EUR' )
    ( airline_id = 'SQ' airline_name = 'Singapore Airlines Limited'             currency_code = 'SGD' )
    ( airline_id = 'UA' airline_name = 'United Airlines, Inc.'                  currency_code = 'USD' )
    ( airline_id = 'AZ' airline_name = 'Alitalia Societa Aerea Italiana S.p.A.' currency_code = 'EUR' )
    ( airline_id = 'JL' airline_name = 'Japan Airlines Co., Ltd.'               currency_code = 'JPY' ) ).

    FINAL(lv_user_id)      = cl_abap_context_info=>get_user_technical_name( ).

    GET TIME STAMP FIELD lv_utc_tmstmpl.

    LOOP AT rt_airline ASSIGNING FIELD-SYMBOL(<lfs_airline>).

      "- Admin Data
      <lfs_airline>-client          = sy-mandt.
      <lfs_airline>-created_by      = lv_user_id.
      <lfs_airline>-created_at      = lv_utc_tmstmpl.
      "<lfs_airline>-last_changed_by = .
      "<lfs_airline>-last_changed_at = .
    ENDLOOP.


  ENDMETHOD.

  METHOD set_airline_data.

    DELETE FROM zvks_a_airline.
    COMMIT WORK AND WAIT.

    rt_airline = me->get_airline_data( ).

    IF rt_airline IS NOT INITIAL.
      MODIFY zvks_a_airline FROM TABLE @rt_airline.
      COMMIT WORK AND WAIT.
    ENDIF.

  ENDMETHOD.

ENDCLASS.

CLASS zvks_cl_flight DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.

    TYPES:
      gty_tt_flight TYPE STANDARD TABLE OF zvks_a_flight WITH DEFAULT KEY.

    METHODS:
      get_flight_data RETURNING VALUE(rt_flight) TYPE gty_tt_flight,
      set_flight_data RETURNING VALUE(rt_flight) TYPE gty_tt_flight.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.

CLASS zvks_cl_flight IMPLEMENTATION.

  METHOD if_oo_adt_classrun~main.
    out->write( me->get_flight_data( ) ).
  ENDMETHOD.

  METHOD get_flight_data.

    DATA:
      lv_utc_tmstmpl TYPE tzntstmpl,
      lt_flight      TYPE STANDARD TABLE OF zvks_a_flight.

    lt_flight = VALUE #(
    ( airport_from_id = 'SFO' airport_to_id = 'SIN' airline_id = 'SQ' departure_time = '011500' arrival_time = '115000' distance = '13523' price = '10818.00' currency_code = 'SGD' plane_type_id = '767-200'  seats_max = '260' seats_occupied = '223' )
    ( airport_from_id = 'SIN' airport_to_id = 'SFO' airline_id = 'SQ' departure_time = '063000' arrival_time = '091500' distance = '13523' price = '11765.00' currency_code = 'SGD' plane_type_id = '747-400'  seats_max = '385' seats_occupied = '350' )
    ( airport_from_id = 'NRT' airport_to_id = 'SIN' airline_id = 'SQ' departure_time = '145500' arrival_time = '205000' distance = '5363'  price = '2359.00'  currency_code = 'SGD' plane_type_id = '767-200'  seats_max = '260' seats_occupied = '132' )
    ( airport_from_id = 'SIN' airport_to_id = 'NRT' airline_id = 'SQ' departure_time = '095300' arrival_time = '175400' distance = '5363'  price = '4665.00'  currency_code = 'SGD' plane_type_id = '767-200'  seats_max = '260' seats_occupied = '236' )
    ( airport_from_id = 'SFO' airport_to_id = 'FRA' airline_id = 'UA' departure_time = '134500' arrival_time = '095500' distance = '9608'  price = '6629.00'  currency_code = 'USD' plane_type_id = '767-200'  seats_max = '260' seats_occupied = '200' )
    ( airport_from_id = 'FRA' airport_to_id = 'SFO' airline_id = 'UA' departure_time = '135500' arrival_time = '163000' distance = '9608'  price = '4131.00'  currency_code = 'USD' plane_type_id = 'A340-600' seats_max = '330' seats_occupied = '161' )
    ( airport_from_id = 'EWR' airport_to_id = 'MIA' airline_id = 'UA' departure_time = '215600' arrival_time = '004700' distance = '1752'  price = '893.00'   currency_code = 'USD' plane_type_id = 'A321-200' seats_max = '150' seats_occupied = '88'  )
    ( airport_from_id = 'MIA' airport_to_id = 'EWR' airline_id = 'AA' departure_time = '201700' arrival_time = '231900' distance = '1752'  price = '1103.00'  currency_code = 'USD' plane_type_id = 'A320-200' seats_max = '130' seats_occupied = '93'  )
    ( airport_from_id = 'MIA' airport_to_id = 'HAV' airline_id = 'AA' departure_time = '071900' arrival_time = '080300' distance = '520'   price = '462.00'   currency_code = 'USD' plane_type_id = 'A321-200' seats_max = '150' seats_occupied = '139' )
    ( airport_from_id = 'HAV' airport_to_id = 'MIA' airline_id = 'AA' departure_time = '061500' arrival_time = '103000' distance = '520'   price = '473.00'   currency_code = 'USD' plane_type_id = 'A321-200' seats_max = '150' seats_occupied = '141' )
    ( airport_from_id = 'JFK' airport_to_id = 'SFO' airline_id = 'AA' departure_time = '071300' arrival_time = '100400' distance = '4156'  price = '1911.00'  currency_code = 'USD' plane_type_id = '767-200'  seats_max = '260' seats_occupied = '137' )
    ( airport_from_id = 'SFO' airport_to_id = 'JFK' airline_id = 'AA' departure_time = '064000' arrival_time = '150600' distance = '4156'  price = '3781.00'  currency_code = 'USD' plane_type_id = 'A380-800' seats_max = '475' seats_occupied = '446' )
    ( airport_from_id = 'FRA' airport_to_id = 'JFK' airline_id = 'LH' departure_time = '101000' arrival_time = '113400' distance = '6162'  price = '5484.00'  currency_code = 'EUR' plane_type_id = 'A340-600' seats_max = '330' seats_occupied = '306' )
    ( airport_from_id = 'JFK' airport_to_id = 'FRA' airline_id = 'LH' departure_time = '183000' arrival_time = '074500' distance = '6162'  price = '3697.00'  currency_code = 'EUR' plane_type_id = '747-400'  seats_max = '385' seats_occupied = '265' )
    ( airport_from_id = 'FRA' airport_to_id = 'EWR' airline_id = 'LH' departure_time = '133000' arrival_time = '153500' distance = '6217'  price = '4911.00'  currency_code = 'EUR' plane_type_id = '767-200'  seats_max = '260' seats_occupied = '221' )
    ( airport_from_id = 'EWR' airport_to_id = 'FRA' airline_id = 'LH' departure_time = '180900' arrival_time = '073000' distance = '6217'  price = '2797.00'  currency_code = 'EUR' plane_type_id = 'A340-600' seats_max = '330' seats_occupied = '171' )
    ( airport_from_id = 'NRT' airport_to_id = 'FRA' airline_id = 'JL' departure_time = '132300' arrival_time = '155600' distance = '9379'  price = '5346.00'  currency_code = 'JPY' plane_type_id = '747-400'  seats_max = '385' seats_occupied = '254' )
    ( airport_from_id = 'FRA' airport_to_id = 'NRT' airline_id = 'JL' departure_time = '202500' arrival_time = '154000' distance = '9379'  price = '8159.00'  currency_code = 'JPY' plane_type_id = 'A380-800' seats_max = '475' seats_occupied = '432' )
    ( airport_from_id = 'VCE' airport_to_id = 'NRT' airline_id = 'AZ' departure_time = '132500' arrival_time = '101300' distance = '9595'  price = '7580.00'  currency_code = 'EUR' plane_type_id = '767-200'  seats_max = '260' seats_occupied = '221' )
    ( airport_from_id = 'NRT' airport_to_id = 'VCE' airline_id = 'AZ' departure_time = '142600' arrival_time = '213100' distance = '9595'  price = '8539.00'  currency_code = 'EUR' plane_type_id = 'A380-800' seats_max = '475' seats_occupied = '441' )
     ).

    FINAL(lv_user_id)     = cl_abap_context_info=>get_user_technical_name( ).
    DATA(lv_current_date) = cl_abap_context_info=>get_system_date( ).

    GET TIME STAMP FIELD lv_utc_tmstmpl.

    DO 7 TIMES. "1 Week

      LOOP AT lt_flight ASSIGNING FIELD-SYMBOL(<lfs_flight>).
        "- Admin Data
        <lfs_flight>-client          = sy-mandt.
        <lfs_flight>-created_by      = sy-uname.
        <lfs_flight>-created_at      = lv_utc_tmstmpl.
        "<lfs_flight>-last_changed_by = .
        "<lfs_flight>-last_changed_at = .

        "- Other Data
        <lfs_flight>-flight_date     = lv_current_date.
        <lfs_flight>-distance_unit = 'KM'.
        APPEND <lfs_flight> TO rt_flight.
      ENDLOOP.

      lv_current_date += 1.
    ENDDO.

    CLEAR lt_flight.

  ENDMETHOD.

  METHOD set_flight_data.

    DELETE FROM zvks_a_flight.
    COMMIT WORK AND WAIT.

    rt_flight = me->get_flight_data( ).

    IF rt_flight IS NOT INITIAL.
      MODIFY zvks_a_flight FROM TABLE @rt_flight.
      COMMIT WORK AND WAIT.
    ENDIF.

  ENDMETHOD.

ENDCLASS.

CLASS zvks_cl_agency DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.

    TYPES:
      gty_tt_agency TYPE STANDARD TABLE OF zvks_a_agency WITH DEFAULT KEY.

    METHODS:
      get_agency_data RETURNING VALUE(rt_agency) TYPE gty_tt_agency,
      set_agency_data RETURNING VALUE(rt_agency) TYPE gty_tt_agency.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.

CLASS zvks_cl_agency IMPLEMENTATION.

  METHOD if_oo_adt_classrun~main.
    DATA(rt_agency) = me->get_agency_data( ).
    out->write( rt_agency ).
  ENDMETHOD.

  METHOD get_agency_data.

    DATA:
      lv_utc_tmstmpl TYPE tzntstmpl.

    "25 Records
    rt_agency = VALUE #(
 ( agency_id = '070001' name = 'Sunshine Travel' street = '134 West Street' postal_code = '54323' city = 'Rochester' country_code = 'US' phone_number = '+1 901-632-5620' )
 ( agency_id = '070002' name = 'Fly High' street = 'Berliner Allee 11' postal_code = '40880' city = 'Duesseldorf' country_code = 'DE' phone_number = '+49 2102 69555' )
 ( agency_id = '070003' name = 'Happy Hopping' street = 'Calvinstr. 36' postal_code = '13467' city = 'Berlin' country_code = 'DE' phone_number = '+49 30-8853-0' )
 ( agency_id = '070004' name = 'Pink Panther' street = 'Auf der Schanz 54' postal_code = '65936' city = 'Frankfurt' country_code = 'DE' phone_number = '+49 69-467653-0' )
 ( agency_id = '070005' name = 'Your Choice' street = 'Gustav-Jung-Str. 425' postal_code = '90455' city = 'Nuernberg' country_code = 'DE' phone_number = '+49 9256-4548-0' )
 ( agency_id = '070006' name = 'Bella Italia' street = 'Via Marconi 123' postal_code = '00139' city = 'Roma' country_code = 'IT' phone_number = '+39 6 893546721' )
 ( agency_id = '070007' name = 'Hot Socks Travel' street = '224 Balnagask Rd' postal_code = '8053' city = 'Sydney' country_code = 'AU' phone_number = '+61 2 2004 5000' )
 ( agency_id = '070008' name = 'Burns Nuclear' street = '14 Science Park Drive' postal_code = '118228' city = 'Singapore' country_code = 'SG' phone_number = '+65 777-5566' )
 ( agency_id = '070009' name = 'Honauer Reisen GmbH' street = 'Baumgarten 8' postal_code = '4212' city = 'Neumarkt' country_code = 'AT' phone_number = '+43 7941 8903' )
 ( agency_id = '070010' name = 'Travel from Walldorf' street = 'Altonaer Str. 24' postal_code = '10557' city = 'Berlin' country_code = 'DE' phone_number = '+49 30-622860' )
 ( agency_id = '070011' name = 'Voyager Enterprises' street = 'Gustavslundsvaegen 151' postal_code = '70563' city = 'Stockholm' country_code = 'SE' phone_number = '+46 8/ 587 70000' )
 ( agency_id = '070012' name = 'Ben McCloskey Ltd.' street = '74 Court Oak Rd' postal_code = 'B17 9TN' city = 'Birmingham' country_code = 'GB' phone_number = '+44 121 365-2251' )
 ( agency_id = '070013' name = 'Pillepalle Trips' street = 'Gorki Park 4' postal_code = '8008' city = 'Zuerich' country_code = 'CH' phone_number = '+41 1 345-5321' )
 ( agency_id = '070014' name = 'Kangeroos' street = 'Lancaster drive 435' postal_code = '20001' city = 'London' country_code = 'GB' phone_number = '+44 171-2937638' )
 ( agency_id = '070015' name = 'Bavarian Castle' street = 'Pilnizerstr. 241' postal_code = '01069' city = 'Dresden' country_code = 'DE' phone_number = '+49 98-32832732' )
 ( agency_id = '070016' name = 'Ali Bazar' street = '45, Mac Arthur Boulevard' postal_code = '19113' city = 'Boston' country_code = 'US' phone_number = '+1 508-692-5200' )
 ( agency_id = '070017' name = 'Super Agency' street = '50 Cranworth St' postal_code = 'G12 8AG' city = 'Glasgow' country_code = 'GB' phone_number = '+44 141 711-5643' )
 ( agency_id = '070018' name = 'Wang Chong' street = 'Gagarine Park' postal_code = '150021' city = 'Moscow' country_code = 'RU' phone_number = '+7 3287-213321' )
 ( agency_id = '070019' name = 'Around the World' street = 'An der Breiten Wiese 122' postal_code = '30625' city = 'Hannover' country_code = 'DE' phone_number = '+49 511-347589-0' )
 ( agency_id = '070020' name = 'No Return' street = 'Wahnheider Str. 57' postal_code = '51105' city = 'Koeln' country_code = 'DE' phone_number = '+49 221-5689-100' )
 ( agency_id = '070021' name = 'Special Agency Peru' street = 'Triberger Str. 42' postal_code = '70569' city = 'Stuttgart' country_code = 'DE' phone_number = '+49 711-7100' )
 ( agency_id = '070022' name = 'Caribian Dreams' street = 'Deichstrasse 45' postal_code = '26721' city = 'Emden' country_code = 'DE' phone_number = '+49 2670-8560-0' )
 ( agency_id = '070023' name = 'Asia By Plane' street = '6-9 Iidabashi 7-chome' postal_code = '102-0072' city = 'Tokyo' country_code = 'JP' phone_number = '+81 3-3239-3501' )
 ( agency_id = '070024' name = 'Everywhere' street = 'Regensburger Platz 23' postal_code = '81679' city = 'Muenchen' country_code = 'DE' phone_number = '+49 89-2499239' )
 ( agency_id = '070025' name = 'Happy Holiday' street = 'Rastenburger Str. 12' postal_code = '28779' city = 'Bremen' country_code = 'DE' phone_number = '+49 3266-288817' )
 ).

    FINAL(lv_user_id)      = cl_abap_context_info=>get_user_technical_name( ).

    GET TIME STAMP FIELD lv_utc_tmstmpl.

    LOOP AT rt_agency ASSIGNING FIELD-SYMBOL(<lfs_agency>).

      "- Admin Data
      <lfs_agency>-client          = sy-mandt.
      <lfs_agency>-created_by      = lv_user_id.
      <lfs_agency>-created_at      = lv_utc_tmstmpl.
      "<lfs_agency>-last_changed_by = .
      "<lfs_agency>-last_changed_at = .

      "- Others
      DATA(lv_name) = <lfs_agency>-name.
      CONDENSE lv_name NO-GAPS.

      <lfs_agency>-email_address = |info@{ lv_name CASE = LOWER }.| &&
                                   |{ <lfs_agency>-country_code CASE = LOWER }|.
      <lfs_agency>-web_address   = |http://www.{ lv_name CASE = LOWER }.| &&
                                   |{ <lfs_agency>-country_code CASE = LOWER }|.
    ENDLOOP.

  ENDMETHOD.

  METHOD set_agency_data.

    DELETE FROM zvks_a_agency.
    COMMIT WORK AND WAIT.

    rt_agency = me->get_agency_data( ).

    IF rt_agency IS NOT INITIAL.
      MODIFY zvks_a_agency FROM TABLE @rt_agency.
      COMMIT WORK AND WAIT.
    ENDIF.

  ENDMETHOD.

ENDCLASS.

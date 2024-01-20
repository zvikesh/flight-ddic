CLASS zvks_cl_customer DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.

    TYPES:
      gty_tt_customer TYPE STANDARD TABLE OF zvks_a_customer WITH DEFAULT KEY.

    METHODS:
      get_customer_data RETURNING VALUE(rt_customer) TYPE gty_tt_customer,
      set_customer_data RETURNING VALUE(rt_customer) TYPE gty_tt_customer.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.

CLASS zvks_cl_customer IMPLEMENTATION.

  METHOD if_oo_adt_classrun~main.
    out->write( me->get_customer_data( ) ).
  ENDMETHOD.

  METHOD get_customer_data.

    DATA:
      lv_utc_tmstmpl TYPE tzntstmpl,
      lt_customer    TYPE gty_tt_customer.

    rt_customer = VALUE #(
( customer_id = '000001' first_name = 'Theresia'  last_name = 'Buchholm'  title = 'Mrs.' street = 'Lerchenstr. 82'                  postal_code = '71116'    city = 'Gaertringen'          country_code = 'DE' phone_number = '+49-341-184709' )
( customer_id = '000002' first_name = 'Johannes'  last_name = 'Buchholm'  title = 'Mr.'  street = 'Muehltalstr. 14'                 postal_code = '68723'    city = 'Schwetzingen'         country_code = 'DE' phone_number = '+49-291-299232' )
( customer_id = '000003' first_name = 'James'     last_name = 'Buchholm'  title = 'Mr.'  street = 'Froschstr. 91'                   postal_code = '90419'    city = 'Nuernberg'            country_code = 'DE' phone_number = '+49-601-130850' )
( customer_id = '000004' first_name = 'Thomas'    last_name = 'Buchholm'  title = 'Mr.'  street = 'Hauptstr. 84'                    postal_code = '63263'    city = 'Neu-Isenburg'         country_code = 'DE' phone_number = '+49-394-339928' )
( customer_id = '000005' first_name = 'Anna'      last_name = 'Buchholm'  title = 'Mrs.' street = 'Hasnerstrasse 13'                postal_code = '4020'     city = 'Linz'                 country_code = 'AT' phone_number = '+43-957-258037' )
( customer_id = '000006' first_name = 'Uli'       last_name = 'Buchholm'  title = 'Mrs.' street = 'Caspar-David-Friedrich-Str. 97'  postal_code = '75757'    city = 'Elsenz'               country_code = 'DE' phone_number = '+49-367-156738' )
( customer_id = '000007' first_name = 'Jean-Luc'  last_name = 'Buchholm'  title = 'Mr.'  street = 'Lake Shore Drive 92'             postal_code = '22334'    city = 'San Francisco'        country_code = 'US' phone_number = '+1-848-371606'  )
( customer_id = '000008' first_name = 'August'    last_name = 'Buchholm'  title = 'Mr.'  street = 'Lerchenstr. 23'                  postal_code = '64342'    city = 'Seeheim-Jugenheim'    country_code = 'DE' phone_number = '+49-184-089871' )
( customer_id = '000009' first_name = 'Achim'     last_name = 'Buchholm'  title = 'Mr.'  street = 'Stauboernchenstrasse 64'         postal_code = '76137'    city = 'Karlsruhe'            country_code = 'DE' phone_number = '+49-797-976779' )
( customer_id = '000010' first_name = 'Irmtraut'  last_name = 'Buchholm'  title = 'Mrs.' street = 'Franz-Marc-Str. 31'              postal_code = '69207'    city = 'Kurt'                 country_code = 'DE' phone_number = '+49-417-532827' )
( customer_id = '000011' first_name = 'Thilo'     last_name = 'Buchholm'  title = 'Mr.'  street = 'Golden Gate Drive 10'            postal_code = '17844'    city = 'Washington'           country_code = 'US' phone_number = '+1-178-451995'  )
( customer_id = '000012' first_name = 'Adam'      last_name = 'Buchholm'  title = 'Mr.'  street = 'Via Giulio Cesare 55'            postal_code = '00195'    city = 'Roma'                 country_code = 'IT' phone_number = '+39-599-068501' )
( customer_id = '000013' first_name = 'Christa'   last_name = 'Buchholm'  title = 'Mrs.' street = 'Zwischergasse 28'                postal_code = '64283'    city = 'Darmstadt'            country_code = 'DE' phone_number = '+49-202-786338' )
( customer_id = '000014' first_name = 'Andreas'   last_name = 'Vrsic'     title = 'Mr.'  street = 'Carl-Metz Strasse 19'            postal_code = '69190'    city = 'Walldorf'             country_code = 'DE' phone_number = '+49-290-279097' )
( customer_id = '000015' first_name = 'Adam'      last_name = 'Vrsic'     title = 'Mr.'  street = 'Via Giulio Cesare 55'            postal_code = '00195'    city = 'Roma'                 country_code = 'IT' phone_number = '+39-668-295457' )
( customer_id = '000016' first_name = 'Max'       last_name = 'Vrsic'     title = 'Mr.'  street = 'Caspar-David-Friedrich-Str. 100' postal_code = '15344'    city = 'Strausberg'           country_code = 'DE' phone_number = '+49-182-347044' )
( customer_id = '000017' first_name = 'Uli'       last_name = 'Vrsic'     title = 'Mrs.' street = 'Golden Gate Drive 96'            postal_code = '63728'    city = 'New Orleans'          country_code = 'US' phone_number = '+1-877-138602'  )
( customer_id = '000018' first_name = 'Max'       last_name = 'Vrsic'     title = 'Mr.'  street = 'Rankestr. 100'                   postal_code = '15344'    city = 'Strausberg'           country_code = 'DE' phone_number = '+49-778-692286' )
( customer_id = '000019' first_name = 'Uli'       last_name = 'Vrsic'     title = 'Mrs.' street = 'Franz-Marc-Str. 97'              postal_code = '75757'    city = 'Elsenz'               country_code = 'DE' phone_number = '+49-444-014771' )
( customer_id = '000020' first_name = 'Uli'       last_name = 'Jeremias'  title = 'Mrs.' street = 'Waldmann 97'                     postal_code = '75757'    city = 'Elsenz'               country_code = 'DE' phone_number = '+49-964-656127' )
( customer_id = '000021' first_name = 'Johann'    last_name = 'Jeremias'  title = 'Mr.'  street = 'Elzstrasse 16'                   postal_code = '68789'    city = 'St. Leon-Rot'         country_code = 'DE' phone_number = '+49-888-680507' )
( customer_id = '000022' first_name = 'Marta'     last_name = 'Jeremias'  title = 'Mrs.' street = 'Schillerstr. 73'                 postal_code = '69180'    city = 'Wiesloch'             country_code = 'DE' phone_number = '+49-597-642616' )
( customer_id = '000023' first_name = 'Uli'       last_name = 'Jeremias'  title = 'Mrs.' street = 'Schillerstr. 98'                 postal_code = '75757'    city = 'Elsenz'               country_code = 'DE' phone_number = '+49-402-216176' )
( customer_id = '000024' first_name = 'Siegfried' last_name = 'Jeremias'  title = 'Mr.'  street = 'Karl-Marx-Allee 99'              postal_code = '70111'    city = 'Reutlingen'           country_code = 'DE' phone_number = '+49-327-932455' )
( customer_id = '000025' first_name = 'Uli'       last_name = 'Jeremias'  title = 'Mrs.' street = 'Golden Gate Drive 96'            postal_code = '63728'    city = 'New Orleans'          country_code = 'US' phone_number = '+1-979-397077'  )
( customer_id = '000026' first_name = 'Andrej'    last_name = 'Jeremias'  title = 'Mr.'  street = 'Hasnerstrasse 11'                postal_code = '4020'     city = 'Linz'                 country_code = 'AT' phone_number = '+43-708-350117' )
( customer_id = '000027' first_name = 'Jean'      last_name = 'Jeremias'  title = 'Mr.'  street = 'Windstone Drive 49'              postal_code = '76018'    city = 'Arlington'            country_code = 'US' phone_number = '+1-507-627802'  )
( customer_id = '000028' first_name = 'Ruth'      last_name = 'Jeremias'  title = 'Mrs.' street = 'Akazienweg 80'                   postal_code = '71116'    city = 'Gaertringen'          country_code = 'DE' phone_number = '+49-561-068521' )
( customer_id = '000029' first_name = 'Ruth'      last_name = 'Jeremias'  title = 'Mrs.' street = 'Gartenstr. 81'                   postal_code = '71116'    city = 'Gaertringen'          country_code = 'DE' phone_number = '+49-992-843745' )
( customer_id = '000030' first_name = 'Holm'      last_name = 'Jeremias'  title = 'Mr.'  street = 'Raupelsweg 30'                   postal_code = '69207'    city = 'Kurt'                 country_code = 'DE' phone_number = '+49-361-117645' )
( customer_id = '000031' first_name = 'Johannes'  last_name = 'Jeremias'  title = 'Mr.'  street = 'Froschstr. 15'                   postal_code = '68789'    city = 'St. Leon-Rot'         country_code = 'DE' phone_number = '+49-379-419386' )
( customer_id = '000032' first_name = 'Simon'     last_name = 'Jeremias'  title = 'Mr.'  street = 'Rankestr. 1'                     postal_code = '23496'    city = 'Dielheim'             country_code = 'DE' phone_number = '+49-565-525925' )
( customer_id = '000033' first_name = 'Walter'    last_name = 'Jeremias'  title = 'Mr.'  street = 'Im Warmet 43'                    postal_code = '68163'    city = 'Mannheim-Lindenhof'   country_code = 'DE' phone_number = '+49-560-102459' )
( customer_id = '000034' first_name = 'Andrej'    last_name = 'Gutenberg' title = 'Mr.'  street = 'Hasnerstrasse 12'                postal_code = '4020'     city = 'Linz'                 country_code = 'AT' phone_number = '+43-541-295006' )
( customer_id = '000035' first_name = 'Jean-Luc'  last_name = 'Gutenberg' title = 'Mr.'  street = 'Voodoo Avenue 92'                postal_code = '22334'    city = 'San Francisco'        country_code = 'US' phone_number = '+1-724-243193'  )
( customer_id = '000036' first_name = 'Allen'     last_name = 'Gutenberg' title = 'Mr.'  street = 'Golden Gate Drive 64'            postal_code = '07666'    city = 'Teaneck'              country_code = 'US' phone_number = '+1-461-048473'  )
( customer_id = '000037' first_name = 'Astrid'    last_name = 'Gutenberg' title = 'Mrs.' street = 'Franz-Marc-Str. 80'              postal_code = '71116'    city = 'Gaertringen'          country_code = 'DE' phone_number = '+49-554-155645' )
( customer_id = '000038' first_name = 'Peter'     last_name = 'Gutenberg' title = 'Mr.'  street = 'Stauboernchenstrasse 88'         postal_code = '16233'    city = 'Potsdam'              country_code = 'DE' phone_number = '+49-936-608305' )
( customer_id = '000039' first_name = 'Uli'       last_name = 'Gutenberg' title = 'Mrs.' street = 'Ausserhalb 96'                   postal_code = '75757'    city = 'Elsenz'               country_code = 'DE' phone_number = '+49-727-032302' )
( customer_id = '000040' first_name = 'Cindy'     last_name = 'Gutenberg' title = 'Mrs.' street = 'rue Nieuport 51'                 postal_code = '06130'    city = 'Grasse'               country_code = 'FR' phone_number = '+33-614-244824' )
( customer_id = '000041' first_name = 'Lee'       last_name = 'Gutenberg' title = 'Mr.'  street = 'Oak Street 66'                   postal_code = '07666'    city = 'Teaneck'              country_code = 'US' phone_number = '+1-777-577758'  )
( customer_id = '000042' first_name = 'Ruth'      last_name = 'Gutenberg' title = 'Mrs.' street = 'Akazienweg 80'                   postal_code = '71116'    city = 'Gaertringen'          country_code = 'DE' phone_number = '+49-253-734727' )
( customer_id = '000043' first_name = 'Volker'    last_name = 'Gutenberg' title = 'Mr.'  street = 'Wilhelminentr. 4'                postal_code = '86343'    city = 'Koenigsbrunn'         country_code = 'DE' phone_number = '+49-216-423891' )
( customer_id = '000044' first_name = 'Kurt'      last_name = 'Gutenberg' title = 'Mr.'  street = 'Gruenlingweg 37'                 postal_code = '68753'    city = 'Amelie'               country_code = 'DE' phone_number = '+49-346-339582' )
( customer_id = '000045' first_name = 'Friedrich' last_name = 'Gutenberg' title = 'Mr.'  street = 'Ausserhalb 85'                   postal_code = '63263'    city = 'Neu-Isenburg'         country_code = 'DE' phone_number = '+49-929-637659' )
( customer_id = '000046' first_name = 'Mathilde'  last_name = 'Gutenberg' title = 'Mrs.' street = 'Melissenstr. 22'                 postal_code = '64342'    city = 'Seeheim-Jugenheim'    country_code = 'DE' phone_number = '+49-143-043896' )
( customer_id = '000047' first_name = 'Benjamin'  last_name = 'Gutenberg' title = 'Mr.'  street = 'Rue Balzac 94'                   postal_code = '75839'    city = 'Paris'                country_code = 'FR' phone_number = '+33-702-290855' )
( customer_id = '000048' first_name = 'Florian'   last_name = 'Fischmann' title = 'Mr.'  street = 'Sagamore St. 69'                 postal_code = '17758'    city = 'N. Massapequa'        country_code = 'US' phone_number = '+1-402-838641'  )
( customer_id = '000049' first_name = 'Guillermo' last_name = 'Fischmann' title = 'Mr.'  street = 'Lake Shore Drive 68'             postal_code = '17758'    city = 'N. Massapequa'        country_code = 'US' phone_number = '+1-658-201545'  )
( customer_id = '000050' first_name = 'Matthias'  last_name = 'Fischmann' title = 'Mr.'  street = 'Meerfeldstr. 40'                 postal_code = '67105'    city = 'Schifferstadt'        country_code = 'DE' phone_number = '+49-408-391502' )
( customer_id = '000051' first_name = 'Christine' last_name = 'Fischmann' title = 'Mrs.' street = 'Pza. Pablo Ruiz Picasso 76'      postal_code = '41006'    city = 'Sevilla'              country_code = 'ES' phone_number = '+34-575-380123' )
( customer_id = '000052' first_name = 'Salvador'  last_name = 'Fischmann' title = 'Mr.'  street = 'Camelias 75'                     postal_code = '08014'    city = 'Barcelona'            country_code = 'ES' phone_number = '+34-897-813632' )
( customer_id = '000053' first_name = 'Salvador'  last_name = 'Fischmann' title = 'Mr.'  street = 'Pza. Pablo Ruiz Picasso 75'      postal_code = '08014'    city = 'Barcelona'            country_code = 'ES' phone_number = '+34-267-608201' )
( customer_id = '000054' first_name = 'Chantal'   last_name = 'Columbo'   title = 'Mrs.' street = 'rue Voltaire 48'                 postal_code = 'B - 1030' city = 'Bruxelles'            country_code = 'BE' phone_number = '+32-516-362256' )
( customer_id = '000055' first_name = 'Matthias'  last_name = 'Columbo'   title = 'Mr.'  street = 'Franz-Marc-Str. 40'              postal_code = '67105'    city = 'Schifferstadt'        country_code = 'DE' phone_number = '+49-385-402292' )
( customer_id = '000056' first_name = 'Walter'    last_name = 'Columbo'   title = 'Mr.'  street = 'Im Warmet 43'                    postal_code = '68163'    city = 'Mannheim-Lindenhof'   country_code = 'DE' phone_number = '+49-257-613249' )
( customer_id = '000057' first_name = 'Lee'       last_name = 'Columbo'   title = 'Mr.'  street = 'Oak Street 66'                   postal_code = '07666'    city = 'Teaneck'              country_code = 'US' phone_number = '+1-883-722676'  )
( customer_id = '000058' first_name = 'Christoph' last_name = 'Columbo'   title = 'Mr.'  street = 'Erlengrund 18'                   postal_code = '69231'    city = 'Rauenberg'            country_code = 'DE' phone_number = '+49-306-848583' )
( customer_id = '000059' first_name = 'Christoph' last_name = 'Columbo'   title = 'Mr.'  street = 'Arndtstrasse 18'                 postal_code = '69231'    city = 'Rauenberg'            country_code = 'DE' phone_number = '+49-131-183282' )
( customer_id = '000060' first_name = 'Holm'      last_name = 'Columbo'   title = 'Mr.'  street = 'Karl-Schwaner-Str. 31'           postal_code = '69207'    city = 'Kurt'                 country_code = 'DE' phone_number = '+49-268-164747' )
( customer_id = '000061' first_name = 'Ulla'      last_name = 'Columbo'   title = 'Mrs.' street = 'Camelias 71'                     postal_code = '28020'    city = 'Madrid'               country_code = 'ES' phone_number = '+34-810-781441' )
( customer_id = '000062' first_name = 'Ruth'      last_name = 'Columbo'   title = 'Mrs.' street = 'Erlengrund 80'                   postal_code = '71116'    city = 'Gaertringen'          country_code = 'DE' phone_number = '+49-569-107478' )
( customer_id = '000063' first_name = 'Volker'    last_name = 'Columbo'   title = 'Mr.'  street = 'Im Warmet 4'                     postal_code = '86343'    city = 'Koenigsbrunn'         country_code = 'DE' phone_number = '+49-864-200980' )
( customer_id = '000064' first_name = 'Irmtraut'  last_name = 'Columbo'   title = 'Mrs.' street = 'Karl-Marx-Allee 32'              postal_code = '79104'    city = 'Freiburg'             country_code = 'DE' phone_number = '+49-435-675969' )
( customer_id = '000065' first_name = 'Christa'   last_name = 'Columbo'   title = 'Mrs.' street = 'Rankestr. 28'                    postal_code = '64283'    city = 'Darmstadt'            country_code = 'DE' phone_number = '+49-576-667502' )
( customer_id = '000066' first_name = 'Peter'     last_name = 'Columbo'   title = 'Mr.'  street = 'Goeckinghofstr. 88'              postal_code = '16233'    city = 'Potsdam'              country_code = 'DE' phone_number = '+49-373-908611' )
( customer_id = '000067' first_name = 'Jasmin'    last_name = 'Columbo'   title = 'Mrs.' street = 'Zwischergasse 5'                 postal_code = '86343'    city = 'Koenigsbrunn'         country_code = 'DE' phone_number = '+49-357-207833' )
( customer_id = '000068' first_name = 'Johann'    last_name = 'Columbo'   title = 'Mr.'  street = 'Ausfallstr. 15'                  postal_code = '68789'    city = 'St. Leon-Rot'         country_code = 'DE' phone_number = '+49-372-872364' )
( customer_id = '000069' first_name = 'Thilo'     last_name = 'Neubasler' title = 'Mr.'  street = 'Sagamore St. 10'                 postal_code = '17844'    city = 'Washington'           country_code = 'US' phone_number = '+1-726-883966'  )
( customer_id = '000070' first_name = 'Max'       last_name = 'Neubasler' title = 'Mr.'  street = 'Ausserhalb 100'                  postal_code = '15344'    city = 'Strausberg'           country_code = 'DE' phone_number = '+49-813-577391' )
( customer_id = '000071' first_name = 'Theresia'  last_name = 'Neubasler' title = 'Mrs.' street = 'Sagamore St. 83'                 postal_code = '60657'    city = 'Chicago'              country_code = 'US' phone_number = '+1-253-665685'  )
( customer_id = '000072' first_name = 'Theresia'  last_name = 'Neubasler' title = 'Mrs.' street = 'Voodoo Avenue 83'                postal_code = '60657'    city = 'Chicago'              country_code = 'US' phone_number = '+1-535-296054'  )
( customer_id = '000073' first_name = 'Florian'   last_name = 'Neubasler' title = 'Mr.'  street = 'Golden Gate Drive 70'            postal_code = '09765'    city = 'Boulder'              country_code = 'US' phone_number = '+1-335-171043'  )
( customer_id = '000074' first_name = 'Anna'      last_name = 'Neubasler' title = 'Mrs.' street = 'Hasnerstrasse 13'                postal_code = '4020'     city = 'Linz'                 country_code = 'AT' phone_number = '+43-439-079672' )
( customer_id = '000075' first_name = 'Irmtraut'  last_name = 'Neubasler' title = 'Mrs.' street = 'Karl-Marx-Allee 32'              postal_code = '79104'    city = 'Freiburg'             country_code = 'DE' phone_number = '+49-535-920873' )
( customer_id = '000076' first_name = 'Christine' last_name = 'Neubasler' title = 'Mrs.' street = 'Caspar-David-Friedrich-Str. 77'  postal_code = '75305'    city = 'Neuenburg'            country_code = 'DE' phone_number = '+49-840-161517' )
( customer_id = '000077' first_name = 'Hendrik'   last_name = 'Neubasler' title = 'Mr.'  street = 'Sagamore St. 96'                 postal_code = '63728'    city = 'New Orleans'          country_code = 'US' phone_number = '+1-208-624417'  )
( customer_id = '000078' first_name = 'Jean'      last_name = 'Neubasler' title = 'Mr.'  street = 'Sagamore St. 50'                 postal_code = '76018'    city = 'Arlington'            country_code = 'US' phone_number = '+1-966-548822'  )
( customer_id = '000079' first_name = 'Volker'    last_name = 'Neubasler' title = 'Mr.'  street = 'Zwischergasse 4'                 postal_code = '86343'    city = 'Koenigsbrunn'         country_code = 'DE' phone_number = '+49-963-864212' )
( customer_id = '000080' first_name = 'Lee'       last_name = 'Neubasler' title = 'Mr.'  street = 'Voodoo Avenue 67'                postal_code = '17758'    city = 'N. Massapequa'        country_code = 'US' phone_number = '+1-703-543129'  )
( customer_id = '000081' first_name = 'Sophie'    last_name = 'Neubasler' title = 'Mrs.' street = 'Rue Balzac 44'                   postal_code = '78140'    city = 'Vélizy'               country_code = 'FR' phone_number = '+33-757-179298' )
( customer_id = '000082' first_name = 'Anna'      last_name = 'Neubasler' title = 'Mrs.' street = 'Hasnerstrasse 13'                postal_code = '4020'     city = 'Linz'                 country_code = 'AT' phone_number = '+43-314-016658' )
( customer_id = '000083' first_name = 'Horst'     last_name = 'Neubasler' title = 'Mr.'  street = 'Karl-Schwaner-Str. 39'           postal_code = '68163'    city = 'Mannheim'             country_code = 'DE' phone_number = '+49-793-230198' )
( customer_id = '000084' first_name = 'Mathilde'  last_name = 'Martin'    title = 'Mrs.' street = 'Stiftsbogen 22'                  postal_code = '58332'    city = 'Schwelm'              country_code = 'DE' phone_number = '+49-538-792547' )
( customer_id = '000085' first_name = 'Christine' last_name = 'Martin'    title = 'Mrs.' street = 'Elzstrasse 77'                   postal_code = '75305'    city = 'Neuenburg'            country_code = 'DE' phone_number = '+49-817-725651' )
( customer_id = '000086' first_name = 'Jasmin'    last_name = 'Martin'    title = 'Mrs.' street = 'Gruenlingweg 6'                  postal_code = '86343'    city = 'Koenigsbrunn'         country_code = 'DE' phone_number = '+49-289-644110' )
( customer_id = '000087' first_name = 'Astrid'    last_name = 'Martin'    title = 'Mrs.' street = 'N7, 80'                          postal_code = '71116'    city = 'Gaertringen'          country_code = 'DE' phone_number = '+49-350-851827' )
( customer_id = '000088' first_name = 'Volker'    last_name = 'Martin'    title = 'Mr.'  street = 'Zwischergasse 4'                 postal_code = '86343'    city = 'Koenigsbrunn'         country_code = 'DE' phone_number = '+49-226-572643' )
( customer_id = '000089' first_name = 'Andreas'   last_name = 'Martin'    title = 'Mr.'  street = 'Carl-Metz Strasse 19'            postal_code = '69190'    city = 'Walldorf'             country_code = 'DE' phone_number = '+49-526-056032' )
( customer_id = '000090' first_name = 'Amelie'    last_name = 'Martin'    title = 'Mrs.' street = 'Caspar-David-Friedrich-Str. 41'  postal_code = '68163'    city = 'Mannheim-Lindenhof'   country_code = 'DE' phone_number = '+49-730-786042' )
( customer_id = '000091' first_name = 'Jean'      last_name = 'Detemple'  title = 'Mr.'  street = 'Federal Avenue 49'               postal_code = '76018'    city = 'Arlington'            country_code = 'US' phone_number = '+1-149-196991'  )
( customer_id = '000092' first_name = 'Claire'    last_name = 'Detemple'  title = 'Mrs.' street = 'rue de Moillebeau 46'            postal_code = '1211'     city = 'Genève'               country_code = 'CH' phone_number = '+41-197-711125' )
( customer_id = '000093' first_name = 'Sophie'    last_name = 'Detemple'  title = 'Mrs.' street = 'route de Pégomas 45'             postal_code = '78140'    city = 'Vélizy'               country_code = 'FR' phone_number = '+33-413-794457' )
( customer_id = '000094' first_name = 'Jean'      last_name = 'Detemple'  title = 'Mr.'  street = 'Windstone Drive 49'              postal_code = '76018'    city = 'Arlington'            country_code = 'US' phone_number = '+1-898-378215'  )
( customer_id = '000095' first_name = 'Allen'     last_name = 'Detemple'  title = 'Mr.'  street = '17th St. 65'                     postal_code = '07666'    city = 'Teaneck'              country_code = 'US' phone_number = '+1-632-320607'  )
( customer_id = '000096' first_name = 'Astrid'    last_name = 'Detemple'  title = 'Mrs.' street = 'Alte Reichsstr. 80'              postal_code = '71116'    city = 'Gaertringen'          country_code = 'DE' phone_number = '+49-448-790277' )
( customer_id = '000097' first_name = 'Ulla'      last_name = 'Detemple'  title = 'Mrs.' street = 'Pza. Pablo Ruiz Picasso 71'      postal_code = '28020'    city = 'Madrid'               country_code = 'ES' phone_number = '+34-438-265507' )
( customer_id = '000098' first_name = 'Jean-Luc'  last_name = 'Detemple'  title = 'Mr.'  street = '17th St. 93'                     postal_code = '22334'    city = 'San Francisco'        country_code = 'US' phone_number = '+1-756-085031'  )
( customer_id = '000099' first_name = 'Christine' last_name = 'Detemple'  title = 'Mrs.' street = 'Pza. Pablo Ruiz Picasso 76'      postal_code = '41006'    city = 'Sevilla'              country_code = 'ES' phone_number = '+34-262-297947' )
( customer_id = '000100' first_name = 'Ruth'      last_name = 'Detemple'  title = 'Mrs.' street = 'Lerchenstr. 81'                  postal_code = '71116'    city = 'Gaertringen'          country_code = 'DE' phone_number = '+49-959-584393' )
  ).

    FINAL(lv_user_id)      = cl_abap_context_info=>get_user_technical_name( ).

    GET TIME STAMP FIELD lv_utc_tmstmpl.

    LOOP AT rt_customer ASSIGNING FIELD-SYMBOL(<lfs_customer>).
      <lfs_customer>-client     = sy-mandt.

      "- Admin Data
      <lfs_customer>-created_by = sy-uname.
      <lfs_customer>-created_at = lv_utc_tmstmpl.
      "<lfs_customer>-last_changed_by = .
      "<lfs_customer>-last_changed_at = .

      "- Other Data
      <lfs_customer>-email_address = |{ <lfs_customer>-first_name CASE = LOWER }.| &&
                                     |{ <lfs_customer>-last_name CASE = LOWER }@flight.example.| &&
                                     |{ <lfs_customer>-country_code CASE = LOWER }|.
    ENDLOOP.

  ENDMETHOD.

  METHOD set_customer_data.

    DELETE FROM zvks_a_customer.
    COMMIT WORK AND WAIT.

    rt_customer = me->get_customer_data( ).

    IF rt_customer IS NOT INITIAL.
      MODIFY zvks_a_customer FROM TABLE @rt_customer.
      COMMIT WORK AND WAIT.
    ENDIF.

  ENDMETHOD.

ENDCLASS.

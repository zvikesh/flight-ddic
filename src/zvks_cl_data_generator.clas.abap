CLASS zvks_cl_data_generator DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.

  PRIVATE SECTION.
ENDCLASS.



CLASS zvks_cl_data_generator IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

    "Generate data and display in console

    """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
    " Master Data
    """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

    out->write( NEW zvks_cl_flight( )->set_flight_data( ) ).
    out->write( NEW zvks_cl_airline( )->set_airline_data( ) ).
    out->write( NEW zvks_cl_customer( )->set_customer_data( ) ).
    out->write( NEW zvks_cl_agency( )->set_agency_data( ) ).

    """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
    " Transactional Data
    """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


  ENDMETHOD.
ENDCLASS.

Documentation       Testataan dokumentaatiota
'''                 testi 

*** Settings ***

Resource    ../Resources/2_2_1_Valmistelu.resource
Resource    ../Resources/2_2_5_Lataa_tentin_tulokset.resource

*** Variables ***
${URL}    https://moodle.eoppimispalvelut.fi/


*** Tasks ***

2_2_5_2 Lataa tentin tulokset excelinä
  Paina nappia tulokset
  Tiedot exceliin
  Näytä raportti
  Lataa



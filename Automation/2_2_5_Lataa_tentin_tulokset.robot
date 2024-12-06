Documentation       Testataan dokumentaatiota
'''                 testi 

*** Settings ***

Resource    ../Resources/2_2_1_Valmistelu.resource
Resource    ../Resources/2_2_5_Lataa_tentin_tulokset.resource

*** Variables ***
${URL}    https://moodle.eoppimispalvelut.fi/


*** Test Cases ***

2_2_5_2 Lataa tentin tulokset excelinä
    @{EMPTY}

Paina nappia tulokset 
    @{EMPTY}
Tiedot exceliin
    @{EMPTY}
Näytä raportti
    @{EMPTY}

Lataa
     @{EMPTY}
     
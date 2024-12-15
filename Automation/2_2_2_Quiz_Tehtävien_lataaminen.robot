Documentation       Testataan dokumentaatiota
'''                 testi 

*** Settings ***
Library    Process

Resource    ../Resources/2_2_1_Valmistelu.resource
Resource    ../Resources/2_2_1_4_Avaa_arviointiexceli.resource


*** Variables ***
${URL}    https://moodle.eoppimispalvelut.fi/


*** Test Cases ***
2_2_1_4 Avaa arviointiexceli
        Open Excel With Specific File
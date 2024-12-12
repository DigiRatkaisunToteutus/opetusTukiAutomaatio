Documentation       Testataan dokumentaatiota
'''                 testi 

*** Settings ***

Resource    ../Resources/2_2_1_Valmistelu.resource
*** Variables ***
${URL}    https://moodle.eoppimispalvelut.fi/


*** Keywords ***
2_2_0_4 Klikkaa kurssin nimeä
    Log    Done.

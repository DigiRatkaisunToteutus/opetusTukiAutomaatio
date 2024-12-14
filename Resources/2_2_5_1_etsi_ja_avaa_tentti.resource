Documentation       Testataan dokumentaatiota
'''                 testi 

*** Settings ***

Resource    ../Resources/2_2_1_Valmistelu.resource
*** Variables ***
${URL}    https://moodle.eoppimispalvelut.fi/


*** Keywords ***
2_2_5_1 Etsi ja avaa tentti TENTINNIMI
    Log    Done.
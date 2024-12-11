Documentation       Testataan dokumentaatiota
'''                 testi 

*** Settings ***

Resource    ../Resources/2_2_2_3_kopioi_ladatusta_sähköpostiosoite_ja_moduulitentit-sarakkeetu.resource
Library    SeleniumLibrary

*** Variables ***
${URL}    https://moodle.eoppimispalvelut.fi/

*** Keywords ***
2_2_2_2 Avaa ladattu exceli
    Log    Done.
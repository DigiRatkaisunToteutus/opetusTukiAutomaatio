Documentation       Testataan dokumentaatiota
'''                 testi 
*** Settings ***
Documentation       Työnkulku 2_2_4: Lataa muut tehtävät
Suite Setup         Valmistele_sivu
Library             SeleniumLibrary
Library             OperatingSystem


Resource    ../Resources/2_2_1_Valmistelu.resource
Resource    ../Resources/2_2_4_1_lataa_ajankäyttösuunnitelmat.resource
Resource    ../Resources/2_2_4_2_lataa_miellekartat.resource
Resource    ../Resources/2_2_4_4_kopioi_juureen_ja_aja_handle_all_task_zips.resource

*** Variables ***
${URL}    https://moodle.eoppimispalvelut.fi/
${DOWNLOAD_DIR}     /path/to/download/folder
${DATA_DIR}         /path/to/data/folder
${SEARCH_INPUT_XPATH}     //input[@placeholder='Hae']
${SEARCH_LINK_XPATH}    //span[@title='Digitaalisen ratkaisun toteutus - T42T165OJ-3003']
${SEARCH_LINK_XPATH}  //a[contains(text(), 'Opiskelu/ajankäyttösuunnitelman palautus')]

*** Keywords ***
Valmistele_sivu
    Open Browser    ${URL}    edge
    Maximize Browser Window
    Wait Until Page Contains    Lapin AMK, Lapin yliopisto, REDU    timeout=10s

Siirrä tiedostot
    [Arguments]    ${SOURCE_DIR}    ${DEST_DIR}
    Move Files    ${SOURCE_DIR}/*    ${DEST_DIR}






*** Tasks ***
2_2_4 Lataa muut tehtävät
    2_2_4_1 Lataa ajankäyttösuunnitelmat
        Mene sivulle
        etsi kurssi
        valitse kurssi
        Klikkaa "opiskelu/ajankäyttösuunnitelman palautus"
        Klikkaa "Katso/arvioi kaikkia palautuksia"
        Klikkaa "Lataa kaikki palautukset"
        Siirrä tiedostot latauskansiosta datakansioon


#      2_2_4_2 lataa miellekartat
#   2_2_4_3 lataa projektinauhoitteet
    2_2_4_4 kopioi juureen ja aja handle_all_task_zips.py

*** Settings ***
Library    ../Resources/2_2_3_7_Nimeä_ladattu_juoksevalla_numerolla.py

*** Tasks ***
Rename Downloads JSON Files
    [Documentation]    Tämä testaa JSON-tiedostojen uudelleennimeämistä lisäämällä numeroinnin alkuun.
    ${result}=    manage_json_files_in_downloads
    Log    ${result}
*** Settings ***
Library    ../Resources/check_and_rename.py

*** Test Cases ***
Rename Downloads JSON Files
    [Documentation]    Tämä testaa JSON-tiedostojen uudelleennimeämistä lisäämällä numeroinnin alkuun.
    ${result}=    manage_json_files_in_downloads
    Log    ${result}
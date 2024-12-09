Documentation    Haetaan downloads -kansiosta viimeisin .json tiedosto. 
   ''            Tarkastetaan, onko siinä juokseva numerointi, 1. merkki ennen _ merkkiä.

*** Settings ***
Library    OperatingSystem
Library    BuiltIn

*** Variables ***
${USERPROFILE}    ${None}

*** Keywords ***
Check JSON Files in Directory
  Log    Aloitetaan JSON-tiedostojen tarkistus.
    ${user_profile}=    Get Environment Variable    USERPROFILE
    ${downloads_dir}=    Set Variable    ${user_profile}\\Downloads
    Log    Downloads directory: ${downloads_dir}
    ${files}=    List Directory    ${downloads_dir}    pattern=*.json
    Log    Found files: ${files}
    Run Keyword If    ${files} == []    Log    Ei JSON-tiedostoja.    WARN
    Log    JSON-tiedostojen tarkistus suoritettu.
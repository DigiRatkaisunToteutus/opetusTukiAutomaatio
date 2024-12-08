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
    ${files}=    List Directory    ${downloads_dir}    patterns=*.json
    Run Keyword If    '${files}' == '[]'    Log    Ei JSON-tiedostoja.    WARN
    ...    ELSE    Validate JSON Files Growing    ${files}
    Log    JSON-tiedostojen tarkistus suoritettu.

Validate JSON Files Growing
    [Arguments]    ${files}
    ${sorted_files}=   Sort List Numerically    ${files}
    ${latest_file}=    Get Latest File    ${sorted_files}
    Run Keyword If    '${latest_file}' == 'None'    Log    Viimeisin tiedosto on: ${latest_file}    WARN
    ...    ELSE    Log    Viimeisin tiedosto on numeroinnin mukainen: ${latest_file}

Sort List Numerically
    [Arguments]    ${files}
    ${file_numbers}=    Evaluate    [int(f.split('_')[0]) for f in ${files}]
    ${sorted_files}=    Evaluate    sorted(${file_numbers})
    ${sorted_fullnames}=    Evaluate    [f for _, f in sorted(zip(${file_numbers}, ${files}))]
    Return From Keyword    ${sorted_fullnames}

Get Latest File
    [Arguments]    ${sorted_files}
    ${latest_file}=    Evaluate    ${sorted_files}[-1] if ${sorted_files} else None
    Return From Keyword    ${latest_file}
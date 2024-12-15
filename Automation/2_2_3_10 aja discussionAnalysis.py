*** Settings ***
Library    OperatingSystem
Library    Process

*** Variables ***
${TARGET_FOLDER}        D:/automat
${DISCUSSION_SCRIPT}    discussionAnalysis.py
${PARTICIPANT_LIST}     osallistujat_lista.json

*** Test Cases ***
Aja discussionAnalysis.py osallistujalistalla
    [Documentation]    Tämä testitapaus suorittaa discussionAnalysis.py-skriptin ja antaa parametrina osallistujalistan.
    
    # Vaihe 1: Tarkista, että skripti ja osallistujalista ovat olemassa
    File Should Exist    ${TARGET_FOLDER}/${DISCUSSION_SCRIPT}
    File Should Exist    ${TARGET_FOLDER}/${PARTICIPANT_LIST}

    # Vaihe 2: Suorita Python-skripti ja anna parametrit
    Run Process    python    ${DISCUSSION_SCRIPT}    ${TARGET_FOLDER}    ${PARTICIPANT_LIST}    cwd=${TARGET_FOLDER}
    ${output}=    Get Process Output

    # Vaihe 3: Lokita tulosteet ja varmista suorituksen onnistuminen
    Log    ${output}
    Should Contain    ${output}    Program Name:
    Should Contain    ${output}    Files in the target folder:
    Should Contain    ${output}    All Discussions:

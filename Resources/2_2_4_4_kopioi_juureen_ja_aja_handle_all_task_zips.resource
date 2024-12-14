Documentation       Testataan dokumentaatiota
'''                 testi 

*** Settings ***
Library    OperatingSystem
Library    Process


*** Variables ***
${PYTHON_SCRIPT}    ../resources/handle_all_task_zips.py
${DATA_FOLDER}      ../data/

*** Keywords ***
2_2_4_4 kopioi juureen ja aja handle_all_task_zips.py
    Run Python Script with Parameters

Run Python Script with Parameters
    ${home_dir}=    Get Environment Variable    USERPROFILE
    ${downloads_folder}=    Set Variable    ${home_dir}/Downloads
    ${latest_file}=    Get Latest File From Folder    ${downloads_folder}
    Log    Latest file is: ${latest_file}
    Should Be JSON File    ${latest_file}
    ${current_folder}=    Get Current Directory
    Copy File    ${latest_file}    ${current_folder}/
    Log    Copied ${latest_file} to ${current_folder}
    ${file_name}=    Get File Name    ${latest_file}
    Run Python Script    ${file_name}

Get Latest File From Folder
    [Arguments]    ${folder_path}
    ${files}=    List Files In Directory    ${folder_path}
    ${latest_file}=    Run Keyword If    ${files}    Get File With Latest Modification Time    ${folder_path}    ${files}
    ...    ELSE    FAIL    No files found in ${folder_path}
    [Return]    ${latest_file}

Get File With Latest Modification Time
    [Arguments]    ${folder_path}    ${files}
    ${latest_time}=    0
    ${latest_file}=    NONE
    FOR    ${file}    IN    @{files}
        ${file_path}=    Set Variable    ${folder_path}/${file}
        ${mod_time}=    Get Modified Time    ${file_path}
        Run Keyword If    ${mod_time} > ${latest_time}    Set Variable    ${latest_time}=    ${mod_time}
        ...    ${latest_file}=    ${file_path}
    END
    [Return]    ${latest_file}

Should Be JSON File
    [Arguments]    ${file_path}
    ${extension}=    Get File Extension    ${file_path}
    Run Keyword If    ${extension.lower()} != ".json"    Fail    The file is not a JSON file: ${file_path}

Run Python Script
    [Arguments]    ${file_name}
    Run Process    python    ${PYTHON_SCRIPT}    ${DATA_FOLDER}    ${file_name}
    Log    Python script executed with parameters: ${DATA_FOLDER} and ${file_name}
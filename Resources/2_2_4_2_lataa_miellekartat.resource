Documentation       Testataan dokumentaatiota
'''                 testi

*** Settings ***
Library    OperatingSystem

*** Variables ***
${SOURCE_FOLDER}    ../data/miellekartat/
${TARGET_FOLDER}    ../data/

*** Keywords ***
2_2_4_2 Lataa miellekartat
    Copy Files    ${SOURCE_FOLDER}*.png    ${TARGET_FOLDER}
    Log    Miellekartat kopioitu ${TARGET_FOLDER}

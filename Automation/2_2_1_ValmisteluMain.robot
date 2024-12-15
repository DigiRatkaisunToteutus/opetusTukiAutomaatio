Documentation       Testataan dokumentaatiota
'''                 testi 

*** Settings ***
Resource    ../Resources/2_2_1_Valmistelu.resource
Resource    ../Resources/2_2_0_2_step.resource
Resource    ../Resources/2_2_3_11_avaa.resource



*** Tasks ***
2_2_1_0 Mene kurssisivulle
   Kirjaudu moodleen 
    
2_2_0_2 Näytä kaikki kurssit
    [Teardown]    Close Browser
    Avaa Kurssisivu
    Tarkista Kurssilista

2_2_3_11 avaa generoitu allDiscussions.xlsx
    Avaa Excel    ${EXCEL_FILE}

2_2_0_3 Etsi Kurssi
    Open Browser    ${URL}    Firefox
    Maximize Browser Window
2_2_3_10 aja discussionAnalysis
        Avaa Excel
     [Arguments]    ${EXCEL_FILE}
    ${workbook}=    Run Keyword    openpyxl.load_workbook    ${EXCEL_FILE}
    ${sheet_names}=    Run Keyword    list    ${workbook}.sheetnames
    Log    ${sheet_names}

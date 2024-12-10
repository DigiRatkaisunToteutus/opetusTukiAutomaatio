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


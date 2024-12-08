Documentation       Testataan dokumentaatiota
'''                 testi 

*** Settings ***

Resource    ../Resources/2_2_1_Valmistelu.resource
Resource    ../Resources/2_2_5_Lataa_tentin_tulokset.resource

*** Variables ***
${URL}    https://moodle.eoppimispalvelut.fi/


*** Tasks ***
2_2_5_1 Etsi ja avaa tentti TENTINNIMI
  Avaa selain
  Paina enter
  ##Paina tab   
  
 ## Wait Until Element Is Visible    xpath=//a[text()='Tentti'] 
  ##Scroll Page Until Element Is Visible   //a[contains(text(),'Tentti')]

 ## Scroll Element Into View    xpath=//a[text()='Tentti']
  Etsi tentti

  Avaa tentti
  [Teardown]  Sulje selain





2_2_5_2 Lataa tentin tulokset excelinä
  Avaa selain2
  Paina nappia tulokset
  Näytä raportti
  Tiedot exceliin
  Lataa
  Sulje selain
  



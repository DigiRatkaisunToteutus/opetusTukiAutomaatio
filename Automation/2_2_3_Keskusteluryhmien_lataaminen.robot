Documentation       Testataan dokumentaatiota
'''                 testi 

*** Settings ***
Resource    ../Resources/2_2_3_1_ListaaKaikkiForumAktiviteetit.resource
Resource    ../Resources/2_2_3_3_AvaaSeuraavaForum.resource

*** Variables ***
${URL}    https://moodle.eoppimispalvelut.fi/

*** Test Cases ***
2_2_3_1_Listaa kaikki forum aktiviteetit
    #Tässä ei käynyt ihan selväksi, millä tapaa kaikki piti listata, joten muodostettu niiden elementtien linkeistä lista jotka sisältävät "Yksilötehtävien"
    Open Site
    Sulje Virhe
    Avaa Keskustelualueet
    Open Site Yleiset Keskustelualueet
    Hae Lista Keskusteluiden linkeistä
    #Lopputuloksena saadaan listaan ${Yksilotehtavalista} kaikkien yksilötehtävien linkit joita voidaan käyttää 2_2_3_2 osiossa.
    
#2_2_3_2 Avaa seuraava forum
2_2_3_3 avaa seuraava forum
    Avaa sivu 1
    Paina seuraava foorumi
2_2_3_4 from-to ruksit pois
    #viestit lähtien täppä
    ${Fullxpath1}=  Set Variable  /html/body/div[4]/div[4]/div/div/div[3]/div/section/div[2]/form/div[4]/div[2]/fieldset/div/label/input
    #viestit mennessä täppä
    ${Fullxpath2}=  Set Variable  /html/body/div[4]/div[4]/div/div/div[3]/div/section/div[2]/form/div[5]/div[2]/fieldset/div/label/input
    Avaa sivu 2
    Klikataan valinnat pois   ${Fullxpath1}  ${Fullxpath2}
2_2_3_5 muihin kenttiin ruksit
    #html koodi täppä
    ${Fullxpath1}=  Set Variable  /html/body/div[4]/div[4]/div/div/div[3]/div/section/div[2]/form/fieldset/div[2]/div[1]/div[2]/div[1]/input
    #helposti luettavat päivänmäärät täppä
    ${Fullxpath2}=  Set Variable  /html/body/div[4]/div[4]/div/div/div[3]/div/section/div[2]/form/fieldset/div[2]/div[2]/div[2]/div[1]/input
    #Kommentoi alla oleva Avaa sivu 2 jos haluat ajaa testit yhdellä ikkuna aukeamisella kohdasta 2_2_3_4 from-to ruksit pois
    Avaa sivu 2
    Klikataan valintoja takaisin   ${Fullxpath1}  ${Fullxpath2}
    
2_2_3_6 valitaan json
     #Kommentoi alla oleva Avaa sivu 2 jos haluat ajaa testit yhdellä ikkuna aukeamisella kohdasta 2_2_3_4 from-to ruksit pois
    Avaa sivu 2
    Valitaan json listasta
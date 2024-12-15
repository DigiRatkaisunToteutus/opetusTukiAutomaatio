Documentation       Testataan dokumentaatiota
'''                 testi 

*** Settings ***
Resource    ../Resources/2_2_3_1_ListaaKaikkiForumAktiviteetit.resource

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

2_2_3_7_Nimeä_ladattu_juoksevalla_numerolla
    #Resourses ei saatu toimimaan, python ja robot toimivat
    Rename Downloads JSON Files
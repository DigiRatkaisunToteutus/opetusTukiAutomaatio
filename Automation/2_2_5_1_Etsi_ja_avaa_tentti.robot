Documentation       Testataan dokumentaatiota
'''                 testi

*** Settings ***

Resource    ../Resources/2_2_1_Valmistelu.resource
Resource    ../Resources/2_2_5_1_Etsi_ja_avaa_tentti.resource

*** Variables ***
${URL}    https://moodle.eoppimispalvelut.fi/

*** Tasks ***
2_2_5_1 Etsi ja avaa tentti
  Avaa selain
  Paina enter   #enterillä suljetaan sivustolle aukeava häiriöilmoitus
  Etsi tentti
  Avaa tentti
  [Teardown]  Sulje selain

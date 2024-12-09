*** Settings ***
Resource    Resources/2_2_3_7_Nimeä_ladattu_juoksevalla_numerolla.resource

*** Tasks ***
Validate JSON Files Test
    [Documentation]    Testaa, onko ladattu .json-tiedosto ja tarkistaa sen tiedostopäätteen.
    [Teardown]    Log    Tarkastus suoritettu.
    Check JSON Files in Directory
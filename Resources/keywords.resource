*** Keywords ***
Etsi Kurssi
    [Documentation]    Etsii tietyn kurssin ja varmistaa sen löytymisen.
    Open Browser    ${URL}    browser=Firefox
    Input Text      id=search-input    ${SEARCH_TERM}
    Click Button    id=search-button
    Close Browser
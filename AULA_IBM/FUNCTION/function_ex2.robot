*** Settings ***
Library     SeleniumLibrary

## -Palavras Chaves- 
*** Keywords ***

Acessar Robotizando
    Open Browser                       ${URL}  ${BROWSER}
    Maximize Browser Window

Pesquisar 
    Wait Until Element Is Visible              ${SEARCHBUTTON}
    Click Element                              ${SEARCHBUTTON}
    Wait Until Element Is Visible              ${INPUTTEXT}
    Input Text                                 ${INPUTTEXT}     ${SEARCHTEXT}
    Click Element                              ${CLICKBUTTON}

Post
    Wait Until Element Is Visible              ${POST}
    Click Element                              ${POST}
    Sleep  5

Fechar
    Close Browser
*** Settings ***
Library          SeleniumLibrary
Library          Collections
Documentation    ALL functions (Keywords)

## -Palavras Chaves-
*** Keywords ***
Login
    Open Browser               ${URL}    ${BROWSER}
    Maximize Browser Window

Criar Lista
    @{LISTA_COMPRA}        Create List
    Set Global Variable    ${LISTA_COMPRA}

Pesquisar
    Wait Until Page Contains Element    ${SEARCHBUTTON}
    Input Text                          ${TEXTBOXSEARCH}    ${TEXTSEARCH}
    Click Element                       ${SEARCHBUTTON}

Click Roupa
    Wait Until Page Contains Element    ${ROUPA}
    Click Element                       ${ROUPA}


Adicionar ao carrinho
    Wait Until Page Contains Element    ${ADDCART}
    Click Element                       ${ADDCART}
    Wait Until Page Contains Element    ${CHECKOUTBUTTON}
    Sleep                               5
    ${NOME_ITEM_VALUE1}                 Get Text             ${NOME_ITEM}
    Insert Into List                    ${LISTA_COMPRA}      0               ${NOME_ITEM_VALUE1}
    Wait Until Page Contains Element    ${CONTINUEBUTTON}
    Click Element                       ${CONTINUEBUTTON}

Pesquisar 2
    Wait Until Page Contains Element    ${SEARCHBUTTON}
    Input Text                          ${TEXTBOXSEARCH}    ${TEXTSEARCH2}
    Click Element                       ${SEARCHBUTTON}

Click Roupa 2
    Wait Until Page Contains Element    ${ROUPA2}
    Click Element                       ${ROUPA2}
    Sleep                               50

Adicionar ao carrinho 2
    Sleep                               10
    Wait Until Page Contains Element    ${ADDCART}
    Click Element                       ${ADDCART}



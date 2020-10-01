*** Settings ***
Library              SeleniumLibrary
Library              Collections
Documentation        Suite description

## -Palavras Chaves-
*** Keywords ***
Login
    Open Browser                        ${URL}                           ${BROWSER}
    Maximize Browser Window

Criar Lista
    @{LISTA_COMPRA}                     Create List
    Set Global Variable                 ${LISTA_COMPRA}

Pesquisar
    Wait Until Page Contains Element    ${SEARCHBUTTON}                  timeout=60.0
    Input Text                          ${TEXTBOXSEARCH}                 ${TEXTSEARCH}
    Click Element                       ${SEARCHBUTTON}

Click Roupa
    Wait Until Page Contains Element    ${ROUPA}                         timeout=60.0
    Click Element                       ${ROUPA}


Adicionar ao carrinho
    Wait Until Page Contains Element    ${ADDCART}                       timeout=60.0
    Click Element                       ${ADDCART}
    Wait Until Page Contains Element    ${CHECKOUTBUTTON}                timeout=60.0
    Sleep                               5
    ${NOME_ITEM_VALUE1}                 Get Text                         ${NOME_ITEM}
    Insert Into List                    ${LISTA_COMPRA}                  0                 ${NOME_ITEM_VALUE1}
    Wait Until Page Contains Element    ${CONTINUEBUTTON}                timeout=60.0
    Click Element                       ${CONTINUEBUTTON}

Pesquisar 4
    Wait Until Page Contains Element    ${SEARCHBUTTON}                  timeout=60.0
    Input Text                          ${TEXTBOXSEARCH}                 ${TEXTSEARCH4}
    Click Element                       ${SEARCHBUTTON}

Click Roupa 4
    Wait Until Page Contains Element    ${ROUPA4}                        timeout=60.0
    Click Element                       ${ROUPA4}

Adicionar ao carrinho 4
    Wait Until Page Contains Element    ${ADDCART}                       timeout=60.0
    Click Element                       ${ADDCART}
    Wait Until Page Contains Element    ${CHECKOUTBUTTON}                timeout=60.0
    Sleep                               5
    ${NOME_ITEM_VALUE2}                 Get Text                         ${NOME_ITEM}
    Insert Into List                    ${LISTA_COMPRA}                  0                 ${NOME_ITEM_VALUE2}
    Wait Until Page Contains Element    ${CHECKOUTBUTTON}                timeout=60.0
    Click Element                       ${CHECKOUTBUTTON}

Saldo Verificado
    ${VERIFICASALDO}=                   Run Keyword And Return Status    Compra Total
    Run Keyword If                      '${VERIFICASALDO}'=='True'       Run Keywords
    ...                                 Capture Page Screenshot          AND               Log To Console             Saldo Suficiente!
    ...                                 ELSE                             Run Keywords      Capture Page Screenshot    AND                  Log To Console    Saldo Insuficiente!
    Log                                 ${LISTA_COMPRA}

Compra Total
    Wait Until Page Contains Element    ${LIXEIRA}                       timeout=60.0
    Page Should Contain Element         ${SALDOTOTAL}


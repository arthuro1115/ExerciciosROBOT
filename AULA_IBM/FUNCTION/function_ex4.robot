*** Settings ***
Library    SeleniumLibrary

## -Palavras Chaves-
*** Keywords ***

Login
    Open Browser               ${URL}    ${BROWSER}
    Maximize Browser Window

Pesquisar
    Wait Until Page Contains Element    ${SEARCHBUTTON}
    Input Text                          ${TEXTBOXSEARCH}    ${TEXTSEARCH}
    Click Element                       ${SEARCHBUTTON}

Click Roupa
    Wait Until Page Contains Element    ${ROUPA}
    Click Element                       ${ROUPA}

Adicionar Roupa
    Wait Until Page Contains Element    ${ADDCART}
    Click Element                       ${ADDCART}
    Sleep                               5
    Click Element                       ${CHECKOUTBUTTON}
    Wait Until Page Contains Element    ${ADDROUPA}
    Click Element                       ${ADDROUPA}
    Verifica Saldo
    Sleep                               5

Verifica Saldo
    ${VERIFICAVALORTOTAL}=    Run Keyword And Return Status      Verifica Valor Total da Compra
    Run Keyword If            '${VERIFICAVALORTOTAL}'=='True'    Run Keywords
    ...                       Capture Page Screenshot            AND                               Log To Console             Saldo Suficiente!
    ...                       ELSE                               Run Keywords                      Capture Page Screenshot    AND    Log To Console    Saldo Insuficiente!
Verifica Valor Total da Compra
    Wait Until Page Contains Element    ${LIXEIRA}    timeout=60.0
    Page Should Contain Element         ${VALOR}

Fechar
    Close Browser



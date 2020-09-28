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

Comprar Roupa
    Wait Until Page Contains Element    ${ADDROUPA}
    Click Element                       ${ADDROUPA}
    Sleep                               1

Verifica Saldo
    ${VERIFICAVALORTOTAL}=    Run Keyword And Return Status      Verifica Valor Total da Compra
    Run Keyword If            '${VERIFICAVALORTOTAL}'=='True'    Run Keywords
    ...                       Capture Page Screenshot            AND                               Log To Console             Saldo Suficiente!
    ...                       ELSE                               Run Keywords                      Capture Page Screenshot    AND    Log To Console    Saldo Insuficiente!      AND      Compra ate 5
Verifica Valor Total da Compra
    Wait Until Page Contains Element    ${LIXEIRA}    timeout=60.0
    Page Should Contain Element         ${VALOR}

Compra ate 5
    FOR                                 ${INDEX}                           IN RANGE                          2                                      5
    Click Element                       ${ADDROUPA}
    END
    sleep    3
    Verifica Saldo

Continue Comprando
    Wait Until Page Contains Element    ${CONTINUEBUTTOM}
    Click Element                       ${CONTINUEBUTTOM}
    Sleep   5

Pesquisando Roupa 2
    Wait Until Page Contains Element    ${SEARCHBUTTON}
    Input Text                          ${TEXTBOXSEARCH}    ${TEXTSEARCH2}
    Click Element                       ${SEARCHBUTTON}

Click Roupa 2
    Wait Until Page Contains Element    ${ROUPA2} 
    Click Element                       ${ROUPA2}
    Sleep   2

Adicionar Roupa 2
    Wait Until Page Contains Element    ${ADDCART}
    Click Element                       ${ADDCART}
    Sleep   5
    Click Element                       ${CHECKOUTBUTTON}
    Sleep   2
    Compra ate 3

Compra ate 3
    FOR                                 ${INDEX2}                           IN RANGE                          1                                      3
    Click Element                       ${ADDROUPA2}
    END
    sleep   3
    
Print tela
    Capture Page Screenshot
    Sleep   2

Fechar
    Close Browser
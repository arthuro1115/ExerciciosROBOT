*** Settings ***
Library              SeleniumLibrary
Library              Collections
Documentation        Suite description

## -Variaveis-
*** Variable ***

${BROWSER}           chrome
${URL}               http://automationpractice.com/index.php
${SEARCHBUTTON}      //*[@id="searchbox"]/button
${TEXTBOXSEARCH}     //*[@id="search_query_top"]
${TEXTSEARCH}        FADED SHORT SLEEVE T-SHIRTS
${TEXTSEARCH2}       Blouse
${TEXTSEARCH3}       Printed Summer Dress
${TEXTSEARCH4}       Printed Chiffon Dress
${ROUPA}             //*[@id="center_column"]/ul/li/div/div[2]/h5/a
${ROUPA2}            //*[@id="center_column"]/ul/li/div/div[2]/h5/a
${ROUPA3}            //*[@id="center_column"]/ul/li/div/div[2]/h5/a
${ROUPA4}            //*[@id="center_column"]/ul/li/div/div[2]/h5/a
${NOME_ITEM}         //*[@id="layer_cart_product_title"]
${ADDCART}           //*[@id="add_to_cart"]/button
${CHECKOUTBUTTON}    //*[@class="btn btn-default button button-medium"]
${CONTINUEBUTTON}    //*[@id="layer_cart"]/div[1]/div[2]/div[4]/span
${SALDOTOTAL}        //*[@id="total_price"]//..//*[contains(text(),'$90.89')]
${LIXEIRA}           //*[@class="icon-trash"]


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

Pesquisar 2
    Wait Until Page Contains Element    ${SEARCHBUTTON}                  timeout=60.0
    Input Text                          ${TEXTBOXSEARCH}                 ${TEXTSEARCH2}
    Click Element                       ${SEARCHBUTTON}

Click Roupa 2
    Wait Until Page Contains Element    ${ROUPA2}                        timeout=60.0
    Click Element                       ${ROUPA2}

Adicionar ao carrinho 2
    Wait Until Page Contains Element    ${ADDCART}                       timeout=60.0
    Click Element                       ${ADDCART}
    Wait Until Page Contains Element    ${CHECKOUTBUTTON}                timeout=60.0
    Sleep                               5
    ${NOME_ITEM_VALUE2}                 Get Text                         ${NOME_ITEM}
    Insert Into List                    ${LISTA_COMPRA}                  0                 ${NOME_ITEM_VALUE2}
    Wait Until Page Contains Element    ${CONTINUEBUTTON}                timeout=60.0
    Click Element                       ${CONTINUEBUTTON}

Pesquisar 3
    Wait Until Page Contains Element    ${SEARCHBUTTON}                  timeout=60.0
    Input Text                          ${TEXTBOXSEARCH}                 ${TEXTSEARCH3}
    Click Element                       ${SEARCHBUTTON}

Click Roupa 3
    Wait Until Page Contains Element    ${ROUPA3}                        timeout=60.0
    Click Element                       ${ROUPA3}


Adicionar ao carrinho 3
    Wait Until Page Contains Element    ${ADDCART}                       timeout=60.0
    Click Element                       ${ADDCART}
    Wait Until Page Contains Element    ${CHECKOUTBUTTON}                timeout=60.0
    Sleep                               5
    ${NOME_ITEM_VALUE3}                 Get Text                         ${NOME_ITEM}
    Insert Into List                    ${LISTA_COMPRA}                  0                 ${NOME_ITEM_VALUE3}
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
    ${NOME_ITEM_VALUE3}                 Get Text                         ${NOME_ITEM}
    Insert Into List                    ${LISTA_COMPRA}                  0                 ${NOME_ITEM_VALUE3}
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



*** Test Cases ***

Entrar No Site
    Login

Lista
    Criar Lista

Pesquisar Roupa
    Pesquisar

Clicar Na Roupa
    Click Roupa

Add Cart
    Adicionar ao carrinho

Pesquisar Segunda Roupa
    Pesquisar 2

Clicar Na Roupa 2
    Click Roupa 2

Add Cart 2
    Adicionar ao carrinho 2

Pesquisar Terceira Roupa
    Pesquisar 3

Clicar Na Roupa 3
    Click Roupa 3

Add Cart 3
    Adicionar ao carrinho 3

Pesquisar Quarta Roupa
    Pesquisar 4

Clicar Na Roupa 4
    Click Roupa 4

Add Cart 4
    Adicionar ao carrinho 4

Saldo Verificado
    Saldo Verificado







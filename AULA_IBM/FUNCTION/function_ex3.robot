*** Settings ***
Library     SeleniumLibrary

## -Palavras Chaves- 
*** Keywords ***

Acessar o site hurb
    Open Browser                       ${URL}  ${BROWSER}
    Maximize Browser Window
    Go To                              ${URL}
 
Inserir Texto

    Wait Until Page Contains Element    ${INSERTTEXTDESTINO}
    Input Text                          ${INSERTTEXTDESTINO}    ${INSERTTEXTVALUE}

Entrada Saida
    
    Wait Until Page Contains Element    ${CLOSEBUTTON}
    Click Element                       ${CLOSEBUTTON}   
    Input Text                          ${INSERTDATADESTINO1}   ${INSERTDATAIN}
    Input Text                          ${INSERTDATADESTINO2}   ${INSERTDATAOUT}
    Sleep   5

Selecionar Guris

    Click Element                       ${SELECTGURIS} 
    Sleep   5

Search

    Click Element                       ${BUSCARBUTTON}
    Sleep   5

Print 

    Capture Page Screenshot
    Sleep     5
    Close Browser








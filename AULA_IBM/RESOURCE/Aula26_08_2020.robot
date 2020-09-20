*** Settings ***
Library     SeleniumLibrary

## -Variaveis- 
*** Variable ***
${BROWSER}              chrome
${URL}                  https://robotizandotestes.blogspot.com.br/  
${CABEÇALHO}            Header1
${BOTAO_LUPA}           css=.search-expand.touch-icon-button    
${CAMPO_PESQUISAR}      css=.search-input>input
${BOTAO_PESQUISAR}      css=.search-action.flat-button
${LINK_POST}            xpath=.//*[@id='Blog1']/div[1]/article/div/div/h3/a
${TITULO}               xpath=.//*[@id='Blog1']/div/article/div[1]/div/h3

## -Palavras Chaves- 
*** Keywords ***

Acessar blog robotizandotestes
    Open Browser                       ${URL}  ${BROWSER}
    Wait Until Element Is Visible      ${CABEÇALHO}
    Title Should Be                    Robotizando Testes
    
Fechar Navegador
    Close Browser                      ${URL}

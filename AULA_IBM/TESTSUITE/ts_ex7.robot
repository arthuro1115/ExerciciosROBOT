*** Settings ***
Library              SeleniumLibrary
Library              Collections
Documentation        Suite description
Resource        ../RESOURCE/res_ex7.Robot

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

Pesquisar Quarta Roupa
    Pesquisar 4

Clicar Na Roupa 4
    Click Roupa 4

Add Cart 4
    Adicionar ao carrinho 4

Saldo Verificado
    Saldo Verificado





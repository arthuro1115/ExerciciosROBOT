*** Settings *** 
##Importando Informações de Resource
Resource        ../RESOURCE/res_av1.Robot

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
*** Settings *** 
##Importando Informações de Resource
Resource        ../RESOURCE/res_ex6.Robot

*** Test Cases ***
Entrar No Site
    Login

Pesquisar Roupa
    Pesquisar

Clicar Na Roupa
    Click Roupa

Adicionar Roupa Ao Carrinho
    Adicionar Roupa 

Comprar Roupa
    Comprar Roupa

Conferir o Valor
    Verifica Saldo

Comprar Mais
    Continue Comprando

Pesquisar Roupa 2
    Pesquisando Roupa 2

Clicando na Roupa 2
    Click Roupa 2

Adicionar Roupa Ao Carrinho 2
    Adicionar Roupa 2

Print Final da tela
    Print tela

Fechar Navegador 
    Fechar
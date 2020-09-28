*** Settings *** 
##Importando Informações de Resource
Resource        ../RESOURCE/res_ex4.Robot

*** Test Cases ***
Entrar No Site
    Login

Pesquisar Roupa
    Pesquisar

Clicar Na Roupa
    Click Roupa

Adicionar Roupa Ao Carrinho
    Adicionar Roupa 

Conferir o Valor
    Verifica Saldo

Fechar Navegador
    Fechar
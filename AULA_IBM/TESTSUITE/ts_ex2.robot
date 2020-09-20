*** Settings *** 
##Importando Informações de Resource
Resource        ../RESOURCE/res_ex2.Robot

##Testes 
*** Test Cases ***
Acessar
    Acessar Robotizando

Clicar No Botao de pesquisa
    Pesquisar 

Clicar No Post
    Post

Fechar Browser 
    Fechar
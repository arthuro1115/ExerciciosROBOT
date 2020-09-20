*** Settings *** 
##Importando Informações de Resource
Resource        ../RESOURCE/res_ex1.Robot

##Testes 
*** Test Cases ***
Google and Search
    Open google 

Robot Framework
    Robot Site

Abrir Guia
    Nova Guia

Fechar
    Close Aba
    

##Validar pesquisa de postagens
##    Pesquisar a postagem "season premiere"
##    Clicar no post "Season Premere: Introdução ao Robot Framework" encontrado
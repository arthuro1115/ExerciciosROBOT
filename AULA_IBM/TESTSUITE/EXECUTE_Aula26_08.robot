*** Settings *** 
##Importando Informações de Resource
Resource        ../RESOURCE/Aula26_08_2020.robot
Suite Teardown  Fechar Navegador

##Testes 
*** Test Cases ***
Validar acesso ao blog robotizandotestes
    Acessar blog robotizandotestes
    
Fechar Navegador
    Close Browser                    

##Validar pesquisa de postagens
##    Pesquisar a postagem "season premiere"
##    Clicar no post "Season Premere: Introdução ao Robot Framework" encontrado
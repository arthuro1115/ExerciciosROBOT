*** Settings *** 
##Importando Informações de Resource
Resource        ../RESOURCE/res_ex3.Robot

##Testes 
*** Test Cases ***
Validar acesso a hurb
    Acessar o site hurb
                 
Pesquisar SP
    Inserir Texto

Data In Out
    Entrada Saida

Select Guris
    Selecionar Guris

Buscar Hotel
    Search

Printar e Fechar
    Print 
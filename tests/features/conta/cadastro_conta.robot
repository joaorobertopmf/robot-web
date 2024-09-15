Language: Brazilian Portuguese

*** Settings ***
Resource    ../../../resources/config/hooks.resource
Resource    ../../../resources/steps/conta_steps.resource

Test Setup       Abrir navegador
Test Teardown    Fechar navegador

*** Test Cases ***
Cadastro de conta com sucesso
    Dado que a página de adicionar uma conta está aberta
    Quando adicionar usando dados válidos
    Então a mensagem de conta adicionada com sucesso é mostrada

# Fazer
#Adicionar uma conta de mesmo nome
#    Dado que exista uma conta já cadastrada
#    E a página de adicionar uma conta está aberta
#    Quando adicionar outra conta usando o nome de uma já cadastrada
#    Então a mensagem de que existe outra conta de mesmo nome é mostrada
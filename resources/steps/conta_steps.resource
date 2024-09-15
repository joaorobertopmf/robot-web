*** Settings ***
Resource    ../pages/conta/cadastro_conta_page.resource
Resource    ../pages/conta/lista_conta_page.resource
Resource    ../pages/home_page.resource
Resource    ../steps/login_steps.resource
Resource    ../utils/gerador_de_massa.resource

*** Keywords ***
que a página de adicionar uma conta está aberta    
    Realizar login
    Acessar página de inserir conta

adicionar usando dados válidos
    Gerar Massa de conta
    cadastro_conta_page.Preencher nome    ${CONTA_NOME}
    cadastro_conta_page.Submeter formulário

a mensagem de conta adicionada com sucesso é mostrada
    Verificar mensagem de conta adicionada com sucesso

Realizar cadastro
    que a página de adicionar uma conta está aberta
    adicionar usando dados válidos
    
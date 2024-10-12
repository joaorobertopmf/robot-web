*** Settings ***
Resource    ../pages/conta/cadastro_conta_page.resource
Resource    ../pages/conta/lista_conta_page.resource
Resource    ../pages/menu_page.resource
Resource    ../steps/login_steps.resource
Resource    ../utils/gerador_de_massa.resource

*** Keywords ***
que a página de adicionar uma conta está aberta    
    Realizar login
    Acessar página adicionar conta

que exista uma conta já cadastrada
    Realizar cadastro

a página de adicionar uma conta está aberta
    Acessar página adicionar conta

adicionar outra conta usando o nome de uma já cadastrada
    ${conta_existente}=    Set Variable    ${CONTA_NOME}
    cadastro_conta_page.Preencher nome     ${conta_existente}
    cadastro_conta_page.Clicar no botão salvar

adicionar usando dados válidos
    Gerar Massa de conta
    Cadastrar conta    ${CONTA_NOME}

a mensagem de conta adicionada com sucesso é mostrada
    Verificar mensagem de conta adicionada com sucesso

a mensagem de que existe outra conta de mesmo nome é mostrada
    Verificar mensagem de que existe outra conta de mesmo nome

Realizar cadastro
    que a página de adicionar uma conta está aberta
    adicionar usando dados válidos
    
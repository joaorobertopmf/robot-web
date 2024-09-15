*** Settings ***
Resource    ../pages/usuario/cadastro_usuario_page.resource
Resource    ../pages/usuario/login_page.resource
Resource    ../utils/gerador_de_massa.resource
Variables    ../data/usuario_data.yml

*** Keywords ***
que exista um usuário já cadastrado
    Realizar cadastro

que a página de cadastro de usuário está aberta
    Acessar página de cadastro de usuário

cadastrar usando dados válidos
    Gerar Massa de usuário
    cadastro_usuario_page.Preencher nome      ${USUARIO}[nome]
    cadastro_usuario_page.Preencher e-mail    ${USUARIO}[email]
    cadastro_usuario_page.Preencher senha     ${USUARIO}[senha]
    cadastro_usuario_page.Submeter formulário

cadastrar com e-mail existente
    ${email_existente}=    Set Variable    ${USUARIO}[email]

    Gerar Massa de usuário
    cadastro_usuario_page.Preencher nome      ${USUARIO}[nome]
    cadastro_usuario_page.Preencher e-mail    ${email_existente}
    cadastro_usuario_page.Preencher senha     ${USUARIO}[senha]
    cadastro_usuario_page.Submeter formulário

a mensagem de confirmação de cadastro é mostrada    
    Verificar mensagem de confirmação de cadastro

a mensagem de e-mail já utilizado é mostrada
    Verificar mensagem de e-mail já utilizado de cadastro

Realizar cadastro
    que a página de cadastro de usuário está aberta
    cadastrar usando dados válidos
    
*** Settings ***
Resource    ../pages/usuario/cadastro_usuario_page.resource
Resource    ../pages/usuario/login_page.resource

*** Keywords ***
que exista um usuário já cadastrado
    Acessar página de cadastro de usuário
    Cadastrar usuário
    
que a página de cadastro de usuário está aberta
    Acessar página de cadastro de usuário

cadastrar usando dados válidos
    Gerar Massa de usuário
    Cadastrar usuário

cadastrar com e-mail existente
    ${email_existente}=    Set Variable       ${MASSA_USUARIO}[email]
    Gerar Massa de usuário
    Cadastrar usuário    email=${email_existente}

a mensagem de confirmação de cadastro é mostrada    
    Verificar mensagem de confirmação de cadastro

a mensagem de e-mail já utilizado é mostrada
    Verificar mensagem de e-mail já utilizado de cadastro
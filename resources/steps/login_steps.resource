*** Settings ***
Resource    ../pages/usuario/login_page.resource
Resource    ../pages/home_page.resource
Variables    ../data/login_data.yml

*** Keywords ***
a página de login está aberta
    Acessar página de login

logar com as credenciais ${email} e ${senha}
    login_page.Preencher e-mail    ${email}
    login_page.Preencher senha     ${senha}
    login_page.Submeter formulário

a mensagem de boas vindas do usuário "${nome}" é mostrada
    Verificar mensagem de boas-vindas    ${nome}

a ${mensagem} de e-mail com formato invalido é mostrada
    Verificar mensagem de e-mail com formato inválido    ${mensagem}

a ${mensagens} de erro é mostrada
    Verificar mensagem de erro    ${mensagens}

Realizar login
    a página de login está aberta
    logar com as credenciais ${EMAIL_CORRETO} e ${SENHA_CORRETA}
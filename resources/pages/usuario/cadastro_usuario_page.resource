*** Settings ***
Library    SeleniumLibrary
Variables    ../../locators/usuario_locators.yml
Resource    ../../utils/gerador_de_massa.resource
Resource    ../../utils/common.resource

*** Keywords ***
Preencher nome
    [Arguments]        ${nome}
    Preencher campo    ${USUARIO_INPUT_NOME}     ${nome}

Preencher e-mail
    [Arguments]        ${email}
    Preencher campo    ${USUARIO_INPUT_EMAIL}    ${email}

Preencher senha
    [Arguments]                      ${senha}
    Wait Until Element Is Visible    ${USUARIO_INPUT_SENHA}
    Input Password                   ${USUARIO_INPUT_SENHA}    ${senha}

Preencher formulário
    [Arguments]         ${nome}    ${email}    ${senha}
    Preencher nome      ${nome}
    Preencher e-mail    ${email}
    Preencher senha     ${senha}

Clicar no botão cadastrar
    Clicar no botão    ${USUARIO_BUTTON_CADASTRAR}

Verificar mensagem de confirmação de cadastro
    Validar texto do elemento           ${USUARIO_ALERT_SUCESSO}    Usuário inserido com sucesso

Verificar mensagem de e-mail já utilizado de cadastro
    Validar texto do elemento    ${USUARIO_ALERT_ERRO}    Endereço de email já utilizado

Cadastrar usuário
    [Arguments]         ${email}=${MASSA_USUARIO}[email]    
    Preencher nome      ${MASSA_USUARIO}[nome]
    Preencher e-mail    ${email}
    Preencher senha     ${MASSA_USUARIO}[senha]
    Clicar no botão cadastrar
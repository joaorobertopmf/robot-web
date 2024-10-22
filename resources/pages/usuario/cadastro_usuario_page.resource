
*** Settings ***
Library           SeleniumLibrary
Variables         ../../locators/usuario_locators.yml
Resource          ../../utils/gerador_de_massa.resource
Resource          ../../utils/common.resource

*** Keywords ***
Preencher formulário de cadastro
    [Arguments]    ${usuario}
    Preencher campo    ${USUARIO_INPUT_NOME}     ${usuario.nome}
    Preencher campo    ${USUARIO_INPUT_EMAIL}    ${usuario.email}
    Preencher senha    ${usuario.senha}

Preencher senha
    [Arguments]                      ${senha}
    Wait Until Element Is Visible    ${USUARIO_INPUT_SENHA}
    Input Password                   ${USUARIO_INPUT_SENHA}    ${senha}

Clicar no botão cadastrar
    Clicar no botão    ${USUARIO_BUTTON_CADASTRAR}

Verificar mensagem de confirmação de cadastro
    Validar texto do elemento    ${USUARIO_ALERT_SUCESSO}    Usuário inserido com sucesso

Verificar mensagem de e-mail já utilizado
    Validar texto do elemento    ${USUARIO_ALERT_ERRO}    Endereço de email já utilizado

Cadastrar usuário
    [Arguments]    ${usuario}    ${email}=${usuario.email}
    Preencher formulário de cadastro    ${usuario}
    Clicar no botão cadastrar
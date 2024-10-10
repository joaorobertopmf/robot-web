*** Settings ***
Library    SeleniumLibrary
Variables    ../../locators/usuario_locators.yml
Resource    ../../utils/gerador_de_massa.resource

*** Keywords ***
Preencher nome
    [Arguments]                      ${nome}
    Wait Until Element Is Visible    ${USUARIO_INPUT_NOME}
    Input Text                       ${USUARIO_INPUT_NOME}     ${nome}

Preencher e-mail
    [Arguments]                      ${email}
    Wait Until Element Is Visible    ${USUARIO_INPUT_EMAIL}
    Input Text                       ${USUARIO_INPUT_EMAIL}    ${email}

Preencher senha
    [Arguments]                      ${senha}
    Wait Until Element Is Visible    ${USUARIO_INPUT_SENHA}
    Input Password                   ${USUARIO_INPUT_SENHA}    ${senha}

Preencher formulário
    [Arguments]         ${nome}    ${email}    ${senha}
    Preencher nome      ${nome}
    Preencher e-mail    ${email}
    Preencher senha     ${senha}

Submeter formulário
    Click Button    ${USUARIO_BUTTON_CADASTRAR}

Verificar mensagem de confirmação de cadastro
    Wait Until Element Is Visible    ${USUARIO_ALERT_SUCESSO}
    Element Text Should Be           ${USUARIO_ALERT_SUCESSO}    Usuário inserido com sucesso

Verificar mensagem de e-mail já utilizado de cadastro
    Wait Until Element Is Visible    ${USUARIO_ALERT_ERRO}
    Element Text Should Be           ${USUARIO_ALERT_ERRO}    Endereço de email já utilizado

Cadastrar usuário
    [Arguments]    ${email}=${USUARIO}[email]    
    Preencher nome      ${USUARIO}[nome]
    Preencher e-mail    ${email}
    Preencher senha     ${USUARIO}[senha]
    Submeter formulário
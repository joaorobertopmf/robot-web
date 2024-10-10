*** Settings ***
Library    SeleniumLibrary
Variables    ../../locators/conta_locators.yml
Resource    ../../utils/common.resource

*** Keywords ***
Preencher nome
    [Arguments]        ${nome}
    Preencher campo    ${CONTA_INPUT_NOME}    ${nome}

Submeter formulário
    Clicar no botão    ${CONTA_BUTTON_SALVAR}

Verificar mensagem de que existe outra conta de mesmo nome
    Validar texto do elemento    ${CONTA_ALERT_DANGER}    Já existe uma conta com esse nome!
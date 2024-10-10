*** Settings ***
Library    SeleniumLibrary
Variables    ../../locators/conta_locators.yml
Resource    ../../utils/common.resource

*** Keywords ***
Verificar mensagem de conta adicionada com sucesso
    Validar texto do elemento    ${CONTA_ALERT_SUCCESS}    Conta adicionada com sucesso!
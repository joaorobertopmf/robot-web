*** Settings ***
Library    SeleniumLibrary
Variables    ../locators/home_locators.yml
Variables    ../locators/menu_navegacao_locators.yml
Resource    ../utils/common.resource

*** Keywords ***
Verificar mensagem de boas-vindas
    [Arguments]                  ${nome}
    Validar texto do elemento    ${HOME_ALERT_BEM_VINDO}    Bem vindo, ${nome}!
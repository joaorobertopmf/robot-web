*** Settings ***
Library    SeleniumLibrary
Variables    ../locators/home_locators.yml
Variables    ../locators/menu_navegacao_locators.yml

*** Keywords ***
Verificar mensagem de boas-vindas
    [Arguments]                      ${nome}
    Wait Until Element Is Visible    ${HOME_ALERT_BEM_VINDO}
    Element Text Should Be           ${HOME_ALERT_BEM_VINDO}    Bem vindo, ${nome}!

Acessar página de inserir conta
    Wait Until Element Is Visible    ${MENU_CONTAS}
    Click Element                    ${MENU_CONTAS}
    Wait Until Element Is Visible    ${MENU_CONTAS_ADICIONAR}
    Click Element                    ${MENU_CONTAS_ADICIONAR}
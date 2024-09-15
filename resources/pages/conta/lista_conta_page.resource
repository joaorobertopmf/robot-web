*** Settings ***
Library    SeleniumLibrary
Library    SeleniumScreenshots
Variables    ../../locators/conta_locators.yml

*** Keywords ***
Verificar mensagem de conta adicionada com sucesso
    Wait Until Element Is Visible    ${CONTA_ALERT_SUCCESS}    
    Element Text Should Be    ${CONTA_ALERT_SUCCESS}    Conta adicionada com sucesso!    
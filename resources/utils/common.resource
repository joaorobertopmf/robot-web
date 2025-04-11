*** Settings ***
Documentation    Aqui estão algumas keywords customizadas para evitar repetição de código de funções bastante usadas durante o projeto de automação
Resource    ../config/selenium.resource
Resource    ../config/screencap.resource    

*** Keywords ***
Validar texto do elemento
    [Arguments]                      ${locator}    ${mensagem}
    Wait Until Element Is Visible    ${locator}
    Element Text Should Be           ${locator}    ${mensagem}

Verificar se a página foi carregada
    [Arguments]                      ${locator}    ${pagina}
    Wait Until Element Is Visible    ${locator}
    Location Should Be               ${pagina}

Preencher campo
    [Arguments]                      ${locator}    ${text}
    Wait Until Element Is Visible    ${locator}
    Input Text                       ${locator}    ${text}

Clicar no botão
    [Arguments]                      ${locator}
    Wait Until Element Is Visible    ${locator}
    Wait Until Element Is Enabled    ${locator}
    Click Button                     ${locator}

Clicar no elemento
    [Arguments]                      ${locator}
    Wait Until Element Is Visible    ${locator}
    Wait Until Element Is Enabled    ${locator}
    Click Element                    ${locator}

Selecionar item do select
    [Arguments]                      ${locator}    ${label}
    Wait Until Element Is Visible    ${locator}
    Click Element                    ${locator}
    Wait Until Element Is Visible    xpath://div[@role="listbox"]//*[normalize-space(text())="${label}"]
    Click Element                    xpath://div[@role="listbox"]//*[normalize-space(text())="${label}"]
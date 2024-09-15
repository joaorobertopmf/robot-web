*** Settings ***
Library    SeleniumLibrary
Variables    ../../locators/conta_locators.yml

*** Keywords ***
Preencher nome
    [Arguments]                      ${nome}
    Wait Until Element Is Visible    ${CONTA_INPUT_NOME}
    Input Text                       ${CONTA_INPUT_NOME}     ${nome}

Submeter formulário
    Click Button    ${CONTA_BUTTON_SALVAR}
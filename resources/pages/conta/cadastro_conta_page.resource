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

Verificar mensagem de que existe outra conta de mesmo nome
    Wait Until Element Is Visible    ${CONTA_ALERT_DANGER}    
    Element Text Should Be           ${CONTA_ALERT_DANGER}    Já existe uma conta com esse nome!
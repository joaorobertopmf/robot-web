*** Settings ***
Variables    ../../locators/login_locators.yml
Library    SeleniumLibrary

*** Keywords ***
Acessar página de login
    Go To    https://seubarriga.wcaquino.me/login

Acessar página de cadastro de usuário
    Acessar página de login
    Click Element    ${LOGIN_HEADER_NOVO_USUARIO}    
    Wait Until Element Is Visible    ${LOGIN_HEADER_NOVO_USUARIO}

Preencher e-mail
    [Arguments]    ${email}
    Wait Until Element Is Visible    locator=${LOGIN_INPUT_EMAIL}
    Input Text    locator=${LOGIN_INPUT_EMAIL}    text=${email}

Preencher senha
    [Arguments]    ${senha}
    Wait Until Element Is Visible    locator=${LOGIN_INPUT_SENHA}
    Input Password    locator=${LOGIN_INPUT_SENHA}    password=${senha}

Submeter formulário
    Wait Until Element Is Visible    locator=${LOGIN_BUTTON_ENTRAR}
    Click Button    locator=${LOGIN_BUTTON_ENTRAR}

Verificar mensagem de erro
    [Arguments]    ${mensagens}
    Wait Until Element Is Visible   locator=${LOGIN_ALERT_DANGER}    
    
    Set Local Variable    ${indice}    ${0}
    ${alerts}=    Get WebElements    locator=${LOGIN_ALERT_DANGER}      
    FOR  ${alert}  IN  @{alerts}      
        ${texto_do_alert}=    Get Text    ${alert}
        Should Be Equal    ${texto_do_alert}    ${mensagens}[${indice}]
        ${indice}=    Evaluate    ${indice} + 1        
    END

Verificar mensagem de e-mail com formato inválido
    [Arguments]    ${mensagem_esperada}
    ${mensagemValidacao}=    Get Element Attribute    locator=${LOGIN_INPUT_EMAIL}    attribute=validationMessage
    Should Be Equal    ${mensagemValidacao}    ${mensagem_esperada}
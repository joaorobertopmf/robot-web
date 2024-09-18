Language: Brazilian Portuguese

*** Settings ***
Resource         ../../resources/config/hooks.resource
Resource         ../../resources/steps/login_steps.resource
Variables        ../../resources/data/login_data.yml
Test Template    Template: Login com credenciais inválidas

Test Setup       Abrir navegador
Test Teardown    Fechar navegador

*** Test Cases ***                    EMAIL                SENHA                MENSAGEM
Login com e-mail inválido             ${EMAIL_INCORRETO}   ${SENHA_CORRETA}     Problemas com o login do usuário    
Login com senha inválida              ${EMAIL_CORRETO}     ${SENHA_INCORRETA}   Problemas com o login do usuário    
Login com e-mail e senha inválidos    ${EMAIL_INCORRETO}   ${SENHA_INCORRETA}   Problemas com o login do usuário    
Login com e-mail vazio                ${EMPTY}             ${SENHA_CORRETA}     Email é um campo obrigatório
Login com senha vazia                 ${EMAIL_CORRETO}     ${EMPTY}             Senha é um campo obrigatório    
Login com e-mail e senha vazios       ${EMPTY}             ${EMPTY}             Email é um campo obrigatório    Senha é um campo obrigatório

Login com sucesso
    [Template]    NONE
    Dado a página de login está aberta
    Quando logar com as credenciais ${EMAIL_CORRETO} e ${SENHA_CORRETA}
    Então a mensagem de boas vindas do usuário "João Roberto" é mostrada


*** Keywords ***
Template: Login com credenciais inválidas
    [Arguments]    ${email}    ${senha}    @{mensagem}
    Dado a página de login está aberta
    Quando logar com as credenciais ${email} e ${senha}
    Então a @{mensagem} de erro é mostrada
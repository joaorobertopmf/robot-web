Language: Brazilian Portuguese

*** Settings ***
Documentation    Aqui ficarão os testes relacionados ao cadastro de usuário
Resource    ../../../resources/config/hooks.resource
Resource    ../../../resources/steps/usuario_steps.resource

Test Setup       Abrir navegador
Test Teardown    Fechar navegador

*** Test Cases ***
Cadastro de usuário com sucesso
    Dado que a página de cadastro de usuário está aberta
    Quando cadastrar usando dados válidos
    Então a mensagem de confirmação de cadastro é mostrada

Cadastro de usuário com e-mail já utilizado   
    Dado que exista um usuário já cadastrado
    E que a página de cadastro de usuário está aberta
    Quando cadastrar com e-mail existente    
    Então a mensagem de e-mail já utilizado é mostrada
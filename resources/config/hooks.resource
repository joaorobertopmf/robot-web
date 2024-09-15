*** Settings ***
Documentation    Este é o arquivo de configuração do robot

Library     SeleniumLibrary
Resource    selenium.resource
Resource    ../pages/usuario/login_page.resource

*** Keywords ***
Abrir navegador
    Open Browser    about:blank    chrome    
    Configurar selenium

Fechar navegador
    Close Browser
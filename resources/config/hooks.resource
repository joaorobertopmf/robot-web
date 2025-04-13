*** Settings ***
Documentation    Este é o arquivo que estão os hooks utilizados nos testes
Resource    ../utils/common.resource

*** Keywords ***
Preparar Setup
    Abrir Navegador
    Iniciar Gravação

Preparar Teardown
    Run Keyword If Test Failed    
    ...    Capture Page Screenshot    EMBED        
    Parar Gravação
    Close Browser
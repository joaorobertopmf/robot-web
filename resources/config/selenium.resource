*** Settings ***
Documentation    Este é o arquivo de configuração do selenium
Library    SeleniumLibrary       

*** Variables ***
${BROWSER}=        chrome

*** Keywords ***
Configurar selenium
    Maximize Browser Window
    Set Selenium Timeout    30s
    #Set Selenium Speed    0.2
    Set Screenshot Directory    ${EXECDIR}/results/screenshots
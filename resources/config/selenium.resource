*** Settings ***
Documentation    Este é o arquivo de configuração do selenium
Library    SeleniumLibrary       

*** Variables ***
${BROWSER}=        chrome
${WAIT_TIME}=      10s

*** Keywords ***
Configurar selenium
    Maximize Browser Window
    #Set Selenium Speed    0.2
    Set Screenshot Directory    ${EXECDIR}/results/screenshots
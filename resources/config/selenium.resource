*** Settings ***
Documentation    Este é o arquivo de configuração do selenium
Library    SeleniumLibrary

*** Variables ***
${BROWSER}=    headlesschrome

*** Keywords ***
Configurar selenium
    Maximize Browser Window
    #Set Selenium Speed    0.2
    Set Screenshot Directory    ${EXECDIR}/results/screenshots
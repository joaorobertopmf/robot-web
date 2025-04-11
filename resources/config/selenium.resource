*** Settings ***
Documentation    Este é o arquivo de configuração do selenium   
Library    SeleniumScreenshots
Library    SeleniumLibrary

*** Variables ***
${BROWSER}=    Chrome
${SCREENSHOT_LOCATION}=    ${OUTPUT_DIR}${/}screenshots
${CHROME_OPTIONS}=    add_experimental_option("prefs", {"intl.accept_languages":"pt-BR"});
 ...    add_argument("--ignore-certificate-errors");
 ...    add_argument("--ignore-ssl-errors");


*** Keywords ***
Configurar Selenium    
    Set Selenium Timeout    60s
    SeleniumLibrary.Set Screenshot Directory    ${SCREENSHOT_LOCATION}
    #Set Selenium Speed    0.1

Abrir Navegador
    Configurar Selenium
    Open Browser    about:blank    ${BROWSER}    options=${CHROME_OPTIONS}  
    Maximize Browser Window    
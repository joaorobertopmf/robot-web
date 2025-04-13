*** Settings ***
Documentation    Este é o arquivo de configuração do selenium
Library    ScreenCapLibrary
Library    OperatingSystem

*** Variables ***
${VIDEO_LOCATION}=    ${OUTPUT_DIR}${/}videos

*** Keywords ***
Configurar screencap
    Create Directory    ${VIDEO_LOCATION}
    ScreenCapLibrary.Set Screenshot Directory    ${VIDEO_LOCATION}

Iniciar Gravação
    Configurar screencap
    Start Video Recording    
    ...    alias=${TEST_NAME}    
    ...    name=${SUITE_NAME}.${TEST_NAME}    
    ...    fps=None    
    ...    size_percentage=1    
    ...    embed=True    
    ...    embed_width=100px    
    ...    monitor=1

Parar Gravação
    Stop Video Recording    alias=${TEST_NAME}

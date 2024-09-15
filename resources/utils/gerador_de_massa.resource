*** Settings ***
Library    ../../libraries/FakerBR.py
Library    Collections

*** Variables ***
&{USUARIO}=    nome=${EMPTY}    email=${EMPTY}    senha=${EMPTY}    
${CONTA_NOME}

*** Keywords ***
Gerar Nome
    ${nome}=     FakerBR.Name
    RETURN       ${nome}

Gerar Email
    ${email}=    FakerBR.Email
    RETURN       ${email}

Gerar Senha
    ${senha}=    FakerBR.Password
    RETURN       ${senha}

Gerar Massa de usuário
    ${nome}=     FakerBR.Name
    ${email}=    FakerBR.Email
    ${senha}=    FakerBR.Password
    Set To Dictionary    ${USUARIO}    
    ...    nome=${nome}    
    ...    email=${email}    
    ...    senha=${senha}

Gerar Massa de conta
    ${numero_aleatorio}=    FakerBR.Random Number    digits=10    fix_len=true
    ${conta_aleatoria}=       Set Variable    Conta - ${numero_aleatorio}
    Set Suite Variable    ${CONTA_NOME}    ${conta_aleatoria}
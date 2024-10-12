*** Settings ***
Variables    ../locators/menu_navegacao_locators.yml
Resource    ../utils/common.resource

*** Keywords ***
Acessar página adicionar conta
    Clicar no elemento    ${MENU_CONTAS}
    Clicar no elemento    ${MENU_CONTAS_ADICIONAR}

Acessar página listar conta
    Clicar no elemento    ${MENU_CONTAS}
    Clicar no elemento    ${MENU_CONTAS_LISTAR}

Acessar página criar movimentação
    Clicar no elemento    ${MENU_CRIAR_MOVIMENTACAO}

Acessar página resumo mensal
    Clicar no elemento    ${MENU_RESUMO_MENSAL}   

Acessar página logout
    Clicar no elemento    ${MENU_SAIR}
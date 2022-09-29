*** Settings ***
Library  SeleniumLibrary
Library  FakerLibrary/
Library  DebugLibrary
Documentation                                           URL da página: http://automationpractice.com/index.php
...                                                     Autor: Arlison Marreiro Nascimento

*** Keywords ***
Realizar login
    Wait Until Element Is Visible                       ${BTN_SIGNIN}
    Click Element                                       ${BTN_SIGNIN}
    Wait Until Element Is Visible                       ${LABEL_EMAIL}
    Input Text                                          ${LABEL_EMAIL}    ${EMAIL_INPUT}
    Input Text                                          ${LABEL_PASSWORD}    ${PASSWORD_INPUT}
    Click Element                                       ${BTM_SIGNIN_CONFIRM}
    Click Element                                       ${BTN_HOMEPAGE}
    Sleep                                               5


Pesquisar produto
    Input Text                                          ${LABEL_SEARCH}  ${PRODUTO}
    Click Button                                        ${BTN_SEARCH}

Adicionar produto ao carrinho
    Adicionar produto    






# Abrir e fechar navegador (Test Setup & Teardown)

Abrir navegador
    Open Browser        browser=${BROWSER}     url=${URL}       service_log_path=null
    Maximize Browser Window

#Fechar navegador
#    Close Browser
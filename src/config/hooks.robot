*** Settings ***
Documentation   Esse é o arquivo de configuração do robot

Resource    package.robot

*** Keywords ***

Abrir navegador
    Open Browser        browser=${BROWSER}     url=${URL}       service_log_path=null
    Maximize Browser Window

Fechar navegador
    Close Browser
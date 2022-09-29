*** Settings ***
Documentation           URL da página: http://automationpractice.com/index.php
...                     Autor: Arlison Marreiro Nascimento
Resource                ../Resources/automation_testing_resource.robot
Resource                ../Resources/variables.robot
Suite Setup              Abrir navegador
#Test Teardown           Fechar navegador


*** Test Cases ***

Validação de login de usuario
    [Documentation]         Teste de login de usuario
    [Tags]                  login
    Realizar login

Validação do fluxo de pedidos
    [Documentation]         Fluxo de pedidos
    [Tags]                  adicionar_carrinho
    Pesquisar produto
    Adicionar produto ao carrinho
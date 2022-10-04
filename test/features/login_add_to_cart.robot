*** Settings ***
Documentation           URL da página: http://automationpractice.com/index.php
...                     Autor: Arlison Marreiro Nascimento
Resource                ../../src/config/package.robot
Suite Setup             Abrir navegador
Suite Teardown          Fechar navegador

*** Test Cases ***

Validação de login de usuario
    [Documentation]         Teste de login de usuario
    [Tags]                  login
    Realizar login

Validação do fluxo de pedidos
    [Documentation]         Fluxo de pedido
    [Tags]                  adicionar_carrinho
    Pesquisar produto
    Adicionar produto ao carrinho
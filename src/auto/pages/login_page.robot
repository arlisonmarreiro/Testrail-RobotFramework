*** Settings ***
Documentation   Aqui estarão os objetos mapeados em variáveis da pagina de login do site

*** Variables ***

# Login
${BTN_SIGNIN}                                           //a[@class='login'][contains(.,'Sign in')]   
${LABEL_EMAIL}                                          email
${LABEL_PASSWORD}                                       //input[contains(@type,'password')]
${BTM_SIGNIN_CONFIRM}                                   //span[contains(.,'Sign in')]
# Dados do usuário
${EMAIL_INPUT}                                          teste.testando123@gmail.com
${PASSWORD_INPUT}                                       teste123.  

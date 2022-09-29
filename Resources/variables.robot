*** Variables ***
# Abrindo o navegador
${BROWSER}                                              chrome
${URL}                                                  http://automationpractice.com/index.php
${BTN_HOMEPAGE}                                         //img[contains(@class,'logo img-responsive')]      
# Login
${BTN_SIGNIN}                                           //a[@class='login'][contains(.,'Sign in')]   
${LABEL_EMAIL}                                          email
${LABEL_PASSWORD}                                       //input[contains(@type,'password')]
${BTM_SIGNIN_CONFIRM}                                   //span[contains(.,'Sign in')]
# Dados do usuário
${EMAIL_INPUT}                                          arlison.marreiro999@gmail.com
${PASSWORD_INPUT}                                       marreirohd   
# Selecionando os campos
${LABEL_SEARCH}                                         //input[@class='search_query form-control ac_input'][contains(@id,'top')]
${PRODUTO}                                              Blouse 
${PRODUTO_IMG}                                          //img[contains(@title,'Blouse')]        

# Botões
${BTN_SEARCH}                                           //button[@type='submit'][contains(.,'Search')]
${BTN_ADD_CART}                                         //span[contains(.,'Add to cart')]
${BTN_CHECKOUT}                                         //span[contains(.,'Proceed to checkout')]  
${BTN_CHECKOUT_2}                                       (//span[contains(.,'Proceed to checkout')])[2]
${CHECKBOX_TERMS}                                       //input[@type='checkbox'][contains(@id,'cgv')]
${BTN_PAY_BY_BANK}                                      //a[@class='bankwire'][contains(.,'Pay by bank wire (order processing will be longer)')]
${BTT_PAY_BY_CHECK}                                     //a[@class='cheque'][contains(.,'Pay by check (order processing will be longer)')]
${BTN_CONFIRM_ORDER}                                    //span[contains(.,'I confirm my order')]
${BTN_BACK_TO_ORDERS}                                   //a[@class='button-exclusive btn btn-default'][contains(.,'Back to orders')]


*** Keywords ***
Adicionar produto 
#    Debug
    Element Should Be Visible                           //span[@class='heading-counter'][contains(.,'1 result has been found.')]
    Execute Javascript                                  window.scrollTo(723,483)
    Mouse Over                                          ${PRODUTO_IMG}  
    Wait Until Element Is Visible                       ${BTN_ADD_CART}
    Click Element                                       ${BTN_ADD_CART}
    Wait Until Element Is Visible                       ${BTN_CHECKOUT}
    Click Element                                       ${BTN_CHECKOUT}
    Wait Until Element Is Visible                       ${BTN_CHECKOUT_2}
    Click Element                                       ${BTN_CHECKOUT_2}
    Execute Javascript                                  window.scrollTo(1214,601)
    Click Element                                       ${BTN_CHECKOUT_2}
    Execute Javascript                                  window.scrollTo(1214,601)
    Click Element                                       ${CHECKBOX_TERMS}
    Click Element                                       ${BTN_CHECKOUT_2}
    Execute Javascript                                  window.scrollTo(1214,601)
    Click Element                                       ${BTN_PAY_BY_BANK}
    Execute Javascript                                  window.scrollTo(1214,601)
    Click Element                                       ${BTN_CONFIRM_ORDER}
    Execute Javascript                                  window.scrollTo(1214,601)
    Click Element                                       ${BTN_BACK_TO_ORDERS}
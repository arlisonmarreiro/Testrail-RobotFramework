*** Settings ***
Documentation   Aqui estarão os objetos mapeados em variáveis da pagina de carrinho do site

*** Variables ***

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

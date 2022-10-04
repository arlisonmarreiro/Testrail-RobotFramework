
*** Settings ***
Documentation   Aqui estão as keywords relevantes para a automação da cart page

Resource        ../../config/package.robot

*** Keywords ***

Pesquisar produto
    Input Text                                          ${LABEL_SEARCH}  ${PRODUTO}
    Click Button                                        ${BTN_SEARCH}

Adicionar produto ao carrinho 
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
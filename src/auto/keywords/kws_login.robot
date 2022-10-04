*** Settings ***
Documentation   Aqui estão as keywords relevantes para a automação da login page

Resource        ../../config/package.robot

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

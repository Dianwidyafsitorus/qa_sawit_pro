*** Settings ***
Library    AppiumLibrary
Resource    ../resources/locators.robot

*** Keywords ***
Input Login Credentials
    [Arguments]    ${email}    ${password}
    Input Text     ${EMAIL_FIELD}    ${email}
    Input Text     ${PASSWORD_FIELD}    ${password}

Click Login Button
    Click Element  ${LOGIN_BUTTON}

Dashboard Should Be Visible
    Wait Until Page Contains Element    ${DASHBOARD_VIEW}

Logout
    Click Element  ${LOGOUT_BUTTON}

Login Page Should Be Visible
    Page Should Contain Element    ${LOGIN_BUTTON}

Error Message Should Be Displayed
    Page Should Contain Element    ${ERROR_MESSAGE}

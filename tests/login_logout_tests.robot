*** Settings ***
Resource    ../resources/variables.robot
Resource    ../resources/locators.robot
Resource    ../keywords/login_keywords.robot

Suite Setup     Open App
Suite Teardown  Close Application  

*** Keywords ***
Open App
    Open Application    http://localhost:4723/wd/hub
    ...    platformName=Android
    ...    deviceName=emulator-5554
    ...    app=/Users/bytedance/Downloads/app-debug.apk 

*** Test Cases ***
Successful Login and Logout
    Input Login Credentials    ${VALID_USER}    ${VALID_PASS}
    Click Login Button
    Dashboard Should Be Visible
    Logout
    Login Page Should Be Visible

Login With Wrong Password
    Input Login Credentials    ${VALID_USER}    ${INVALID_PASS}
    Click Login Button
    Error Message Should Be Displayed

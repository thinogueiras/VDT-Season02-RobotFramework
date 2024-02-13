*** Settings ***
Documentation               Helpers

Resource                    pages/login.resource

*** Keywords ***
Do Login
    [Arguments]                   ${email}        ${password}

    Fill Login Credentials        ${email}        ${password}
    Click On Enter Button

Do Login And Remember User Data
    [Arguments]                   ${email}        ${password}

    Fill Login Credentials        ${email}        ${password}
    Click On Remember My Data
    Click On Enter Button
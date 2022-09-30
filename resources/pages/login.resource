*** Settings ***
Library   Browser

Documentation        Login Page

*** Keywords ***

Submit Credentials
    [Arguments]        ${email}        ${password}
    Fill Text          css=input[name="email"]        ${email}
    Fill Text          css=input[name="password"]     ${password}
    Click              css=button >> text=Entrar

Toast Message Should Be
    [Arguments]            ${expected_message}
    ${locator}             
    ...                    Set Variable
    ...                    css=.Toastify__toast-body div >> text=${expected_message}    
    Wait For Elements State        ${locator}    visible    5    
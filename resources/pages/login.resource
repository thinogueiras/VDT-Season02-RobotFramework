*** Settings ***
Documentation          Login Page

Library                Browser

*** Variables ***
${email_field}=        css=input[name="email"]
${password_field}=     css=input[name="password"]
${btn_entrar}=         css=button >> text=Entrar
${label_remember}=     css=.input-block label

*** Keywords ***
Do Login
    Go to Login Page
    [Arguments]                     ${email}            ${password}
    Submit Credentials              ${email}            ${password}

Do Login Successfully
    Go to Login Page
    Submit Credentials              papito@gmail.com    vaibrasil
    User Logged In

Click the remember my data checkbox
    Go to Login Page
    Submit With Remember   papito@gmail.com            vaibrasil
    Click on Logout

Submit Credentials
    [Arguments]            ${email}                    ${password}
    Fill Text              ${email_field}              ${email}
    Fill Text              ${password_field}           ${password}
    Click                  ${btn_entrar}

Submit With Remember
    [Arguments]            ${email}                    ${password}
    Fill Text              css=input[name="email"]     ${email}
    Fill Text              css=input[name="password"]  ${password}
    ${lembrar_dados}       Set Variable
    ...                    css=input[name="remember"]
    Hover                  ${lembrar_dados}
    Sleep                  1           
    Click                  ${lembrar_dados}
    Highlight Elements     ${label_remember}   1   width=4px    style=solid    color=red
    Take Screenshot    
    Click                  ${btn_entrar}

Click on Logout
    ${logout}              Set Variable
    ...                    css=img[alt="Voltar"]
    Sleep                  1
    Highlight Elements     ${logout}   1   width=4px    style=solid    color=red       
    Take Screenshot    
    Click                  ${logout}

Toast Message Should Be
    [Arguments]            ${expected_message}
    ${locator}             
    ...                    Set Variable
    ...                    css=.Toastify__toast-body div >> text=${expected_message}    
    Wait For Elements State                ${locator}
    ...                    visible         5 

Check Value Of Fields
    [Arguments]        ${email}            ${password}
    Get Text           ${email_field}      equal         ${email}
    Get Text           ${password_field}   equal         ${password}

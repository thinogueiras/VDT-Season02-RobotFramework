*** Settings ***
Documentation          Login Page

Library                Browser

*** Variables ***
${email_field}=        css=input[name="email"]
${password_field}=     css=input[name="password"]
${btn_entrar}=         css=button >> text=Entrar
${label_remember}=     css=.input-block label

*** Keywords ***
Go To Login Page        
    New Page           https://trade-sticker-dev.vercel.app

Click Remember My Data Checkbox
    Go To Login Page
    Remember Submit Credentials        papito@gmail.com      vaibrasil
    Click on Logout

Fill Login Credentials
    [Arguments]                 ${email}                     ${password}
    
    Fill Text                   ${email_field}               ${email}
    Fill Text                   ${password_field}            ${password}
    Click                       ${btn_entrar}

Remember Submit Credentials
    [Arguments]                 ${email}                     ${password}
    
    Fill Text                   css=input[name="email"]      ${email}
    Fill Text                   css=input[name="password"]   ${password}
    ${lembrar_dados}            Set Variable                 css=input[name="remember"]
    Hover                       ${lembrar_dados}
    Wait For Elements State     ${lembrar_dados}        visible         5
    Click                       ${lembrar_dados}    
    Take Screenshot
    Wait For Elements State     ${lembrar_dados}        visible         5
    Click                       ${btn_entrar}    

Click on Logout
    ${logout}                   Set Variable                 css=img[alt="Voltar"]
    Wait For Elements State     ${logout}               visible         5
    Highlight Elements          ${logout}       2       width=4px       style=solid      color=red       
    Take Screenshot    
    Click                       ${logout}

Toast Message Should Be
    [Arguments]                 ${expected_message}
    
    ${locator}                  Set Variable            css=.Toastify__toast-body div >> text=${expected_message}    
    Wait For Elements State     ${locator}              visible         5 

Check Value Of Fields
    [Arguments]                 ${email}                ${password}
    
    Get Text                    ${email_field}          equal           ${email}
    Get Text                    ${password_field}       equal           ${password}

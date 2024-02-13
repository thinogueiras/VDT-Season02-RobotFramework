*** Settings ***
Documentation               Login Page

Library                     Browser

*** Variables ***
${email_selector}           css=input[name="email"]
${password_selector}        css=input[name="password"]
${btn_entrar}               css=button >> text=Entrar
${lembrar_dados}            css=input[name="remember"]

*** Keywords ***
Go To Page        
    New Page                https://trade-sticker-dev.vercel.app

Validate Page Title
    [Arguments]             ${expected_title}

    Get Title               equal        ${expected_title}

Validate Page Logo
    Wait For Elements State        css=img[alt="Encontre um User"]        visible

Validate Slogan Text
    [Arguments]                   ${expected_text}

    Get Text                      css=.logo-container h2        equal        ${expected_text}

Fill Login Credentials
    [Arguments]             ${email}        ${password}
    
    Fill Text               ${email_selector}        ${email}
    Fill Text               ${password_selector}     ${password}

Click On Enter Button
    Click                   ${btn_entrar}

Click On Remember My Data    
    Click                   ${lembrar_dados}

Toast Message Should Be
    [Arguments]             ${expected_message}

    ${locator}              Set Variable            css=.Toastify__toast-body div >> text=${expected_message}
    Wait For Elements State      ${locator}         visible         5 

Check Saved Credentials
    [Arguments]             ${email}        ${password}
    
    Get Text                ${email_selector}       equal           ${email}
    Get Text                ${password_selector}    equal           ${password}
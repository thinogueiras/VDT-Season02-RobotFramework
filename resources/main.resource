*** Settings ***
Documentation               Arquivo principal do projeto

Library                     Browser

Resource                    pages/login.resource
Resource                    pages/dashboard.resource

*** Variables ***
${BROWSER}

*** Keywords ***
Go to Login Page        
    New Page                https://trade-sticker-dev.vercel.app

Try Access Dashboard
    Go to Login Page
    Click                   css=button >> text=Entrar

Do Login
    Go to Login Page
    [Arguments]             ${email}            ${password}
    Submit Credentials      ${email}            ${password}

Do Login Successfully
    Go to Login Page
    Submit Credentials      papito@gmail.com    vaibrasil
    User Logged In

Start Test    
    New Browser             headless=False      browser=${BROWSER}

Finish Test
    Sleep                   1
    Take Screenshot
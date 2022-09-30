*** Settings ***
Library   Browser

Documentation        Arquivo principal do projeto

Resource    pages/login.resource
Resource    pages/dashboard.resource

*** Keywords ***
Go to Login Page        
    New Page                   https://trade-sticker-dev.vercel.app

Do Login
    Go to Login Page
    [Arguments]           ${email}            ${password}
    Submit Credentials    ${email}            ${password}

Do Login Successfuly
    Go to Login Page
    Submit Credentials        papito@gmail.com        vaibrasil
    User Logged In

Start Test    
    New Browser                headless=False        browser=${BROWSER}

Finish Test
    Sleep                1
    Take Screenshot
*** Settings ***
Documentation                  Arquivo principal do projeto

Library                        Browser

Resource                       pages/login.resource
Resource                       pages/dashboard.resource

*** Variables ***
${BROWSER}
${HEADLESS}

*** Keywords ***
Do Login
    Go To Login Page
    [Arguments]                ${email}               ${password}
    Fill Login Credentials     ${email}               ${password}

Start Test    
    New Browser                headless=${HEADLESS}   browser=${BROWSER}

Finish Test
    Sleep                      1
    Take Screenshot
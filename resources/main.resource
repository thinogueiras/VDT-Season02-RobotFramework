*** Settings ***
Documentation                  Arquivo principal do projeto

Library                        Browser

Resource                       pages/login.resource
Resource                       pages/dashboard.resource

*** Variables ***
${BROWSER}                    Chromium
${HEADLESS}                   False

*** Keywords ***
Do Login
    Go To Login Page
    [Arguments]                ${email}               ${password}

    Fill Login Credentials     ${email}               ${password}

Start Test    
    New Browser                browser=${BROWSER}     headless=${HEADLESS}

Finish Test
    Print Screen

Print Screen
    Sleep                      1
    Take Screenshot
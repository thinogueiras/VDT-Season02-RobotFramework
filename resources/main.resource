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

Start Test    
    New Browser             headless=False      browser=${BROWSER}

Finish Test
    Sleep                   1
    Take Screenshot
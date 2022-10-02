*** Settings ***
Documentation               Arquivo principal do projeto

Library                     Browser

Resource                    pages/login.resource
Resource                    pages/dashboard.resource

*** Variables ***
${BROWSER}
${HEADLESS}

*** Keywords ***
Go to Login Page        
    New Page                https://trade-sticker-dev.vercel.app

Start Test    
    New Browser             headless=${HEADLESS}      browser=${BROWSER}

Finish Test
    Sleep                   1
    Take Screenshot
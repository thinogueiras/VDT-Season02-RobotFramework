*** Settings ***
Documentation               Arquivo base do projeto

Library                     Browser

Resource                    helpers.resource
Resource                    pages/login.resource
Resource                    pages/dashboard.resource

*** Variables ***
${BROWSER}                  Chromium
${HEADLESS}                 True

*** Keywords ***
Start Test
    New Browser             browser=${BROWSER}        headless=${HEADLESS}    
    Go To Page

Finish Test
    Sleep    1
    Take Screenshot
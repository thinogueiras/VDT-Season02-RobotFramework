*** Settings ***
Documentation               Arquivo base do projeto

Library                     Browser

Resource                    pages/login.resource
Resource                    pages/dashboard.resource

# Resource                    variables.resource

*** Variables ***
${BROWSER}                  Chromium
${HEADLESS}                 True

*** Keywords ***
Start Test    
    New Browser                   browser=${BROWSER}        headless=${HEADLESS}
    Go To Page
    #Setup Browserstack

Do Login
    [Arguments]                   ${email}        ${password}

    Fill Login Credentials        ${email}        ${password}
    Click On Enter Button

Do Login With Option To Remember Data
    [Arguments]                   ${email}        ${password}

    Fill Login Credentials        ${email}        ${password}
    Click On Remember My Data
    Click On Enter Button

Finish Test
    Sleep                   1
    Take Screenshot

# Setup Browserstack
#     ${CAPS}                 Create Dictionary
#     ...                     os=Windows
#     ...                     os_version=11
#     ...                     browser=chrome
#     ...                     browserstack.username=${BROWSERSTACK_USERNAME}
#     ...                     browserstack.accessKey=${BROWSERSTACK_ACCESSKEY}
#     ...                     client.playwrightVersion=latest
#     ${BSENCODEDCAPS}        Evaluate    urllib.parse.quote( json.dumps(${CAPS}) )
#     Connect To Browser      wss://cdp.browserstack.com/playwright?caps=${BSENCODEDCAPS}
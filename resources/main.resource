*** Settings ***
Documentation                  Arquivo principal do projeto

Library                        Browser

Resource                       pages/login.resource
Resource                       pages/dashboard.resource

# Resource                       variables.resource

*** Variables ***
${BROWSER}                     Chromium
${HEADLESS}                    True

*** Keywords ***
Do Login
    Go To Login Page
    [Arguments]                ${email}               ${password}

    Fill Login Credentials     ${email}               ${password}

Start Test    
    New Browser                browser=${BROWSER}     headless=${HEADLESS}
    #Setup Browserstack

Finish Test
    Sleep                      1
    Take Screenshot

# Setup Browserstack
#     ${CAPS}                    Create Dictionary
#     ...                        os=Windows
#     ...                        os_version=11
#     ...                        browser=chrome
#     ...                        name=Test Execution
#     ...                        browserstack.username=${BROWSERSTACK_USERNAME}
#     ...                        browserstack.accessKey=${BROWSERSTACK_ACCESSKEY}
#     ...                        client.playwrightVersion=latest

#     ${BSENCODEDCAPS}        Evaluate    urllib.parse.quote( json.dumps(${CAPS}) )
    
#     Connect To Browser      wss://cdp.browserstack.com/playwright?caps=${BSENCODEDCAPS}
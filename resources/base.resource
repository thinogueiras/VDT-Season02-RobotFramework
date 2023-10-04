*** Settings ***
Documentation               Arquivo base do projeto

Library                     Browser

Resource                    pages/login.resource
Resource                    pages/dashboard.resource

*** Variables ***
${BS_USERNAME}              %{BROWSERSTACK_USERNAME}
${BS_ACCESS_KEY}            %{BROWSERSTACK_ACCESS_KEY}
${ENVIRONMENT}              local
${BROWSER}                  chromium
${HEADLESS}                 true

*** Keywords ***
Start Test
    IF  $ENVIRONMENT == 'remoto' or $ENVIRONMENT == 'browserstack'
        Start Browserstack Tests
    ELSE
        Start Local Tests
    END

Start Local Tests
    New Browser             browser=${BROWSER}        headless=${HEADLESS}    
    Go To Page

Start Browserstack Tests
    ${CAPS}                 Create Dictionary
    ...                     os=Windows
    ...                     os_version=11
    ...                     browser=chrome
    ...                     browserstack.username=${BS_USERNAME}
    ...                     browserstack.accessKey=${BS_ACCESS_KEY}
    ...                     name=Trade Sticker Tests with Robot Framework & Playwright
    ...                     build=tradesticker-e2e-tests
    ...                     client.playwrightVersion=latest
    ${BSENCODEDCAPS}        Evaluate    urllib.parse.quote( json.dumps(${CAPS}) )
    Connect To Browser      wss://cdp.browserstack.com/playwright?caps=${BSENCODEDCAPS}

    Go To Page

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
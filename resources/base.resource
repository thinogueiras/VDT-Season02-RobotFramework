*** Settings ***
Documentation               Arquivo base do projeto

Library                     Browser

Resource                    helpers.resource
Resource                    pages/login.resource
Resource                    pages/dashboard.resource

*** Variables ***
${BS_USERNAME}              %{BROWSERSTACK_USERNAME}
${BS_ACCESS_KEY}            %{BROWSERSTACK_ACCESS_KEY}
${ENV}                      ${EMPTY}
${BROWSER}                  Chromium
${HEADLESS}                 True

*** Keywords ***
Start Test
    IF  $ENV in ['BrowserStack', 'browserstack', 'BROWSERSTACK']
        Start BrowserStack Tests
    ELSE
        Start Local Tests
    END

Start Local Tests
    New Browser             browser=${BROWSER}        headless=${HEADLESS}    
    Go To Page

Start BrowserStack Tests
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

Finish Test
    Sleep    1
    Take Screenshot
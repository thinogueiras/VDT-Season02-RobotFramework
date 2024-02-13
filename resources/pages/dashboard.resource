*** Settings ***
Documentation               Dashboard Page

Library                     Browser

*** Variables ***
${logout}                   css=img[alt="Voltar"]

*** Keywords ***
User Logged In
    ${header_title}
    ...                     Set Variable
    ...                     Aquela figurinha incrível a um clique de distância.
    Get Text                css=.header-content strong    equal    ${header_title}

Click On Logout
    Wait For Elements State       ${logout}               visible         5
    Click                         ${logout}

Search Sticker
    [Arguments]             ${target}

    Fill Text               css=input[placeholder^="Busque"]        ${target}
    Click                   css=button[type="submit"] >> text=Buscar    

Select Sticker
    [Arguments]             ${name}

    ${locator}              Set Variable        xpath=//img[contains(@alt, "${name}")]/..
    Click                   ${locator}

Get In Touch
    Click                   css=button >> text=Entrar em contato

WhatsApp Sticker Message
    [Arguments]             ${sticker_name}

    ${expected_message}     Set Variable    Oi, achei o seu contato no Trade Sticker. Estou interessado(a) na figurinha do ${sticker_name}, bora negociar?

    Switch Page             NEW

    Wait For Condition      Text    xpath=//*[@id="main_block"]/p        equal       ${expected_message}

Validate Search Text Not Found
    [Arguments]                   ${expected_text}

    Get Text                      css=[class="error"]        equal        ${expected_text}

Click On The Back Button
    Click                         css=[type="button"] >> text=Voltar

Wait Until The Search Bar Is Visible
    Wait For Elements State       css=input[placeholder="Busque aqui..."]            visible

Check Number Of Stickers
    [Arguments]                   ${sticker_name}        ${count}

    Get Element Count             xpath=//img[contains(@alt, "${sticker_name}")]     equal        ${count}
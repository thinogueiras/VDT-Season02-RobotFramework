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

Search User
    [Arguments]             ${target}

    Fill Text               css=input[placeholder^="Busque"]    ${target}
    Click                   css=button[type="submit"] >> text=Buscar    

Select Sticker
    [Arguments]             ${name}

    ${locator}              Set Variable        xpath=//img[@alt="${name}"]/..
    Click                   ${locator}

Get In Touch
    Click                   css=button >> text=Entrar em contato

WhatsApp Sticker Message
    [Arguments]             ${sticker_name}

    ${expected_message}     Set Variable    Oi, achei o seu contato no Trade Sticker. Estou interessado(a) na figurinha do ${sticker_name}, bora negociar?

    Switch Page             NEW    
    Wait For Condition      Text    css=p >> text=${expected_message}    equal    ${expected_message}
*** Settings ***
Documentation         Dashboard Page

Library               Browser

*** Keywords ***
User Logged In
    ${header_title}
    ...               Set Variable
    ...               Aquela figurinha incrível a um clique de distância.
    Get Text          css=.header-content strong    equal    ${header_title}
    
Search User
    [Arguments]       ${target}
    Fill Text         css=input[placeholder^="Busque"]    ${target}
    Click             css=button[type="submit"] >> text=Buscar    

Select Sticker
    [Arguments]       ${name}
    ${locator}        Set Variable
    ...               xpath=//img[@alt="${name}"]/..
    Hover             ${locator}
    Sleep             2    
    Click             ${locator}
    Sleep             1
    Take Screenshot   

Get In Touch
    Click             css=button >> text=Entrar em contato

WhatsApp Sticker Message
    [Arguments]       ${sticker_name}

    ${expected_message}        Set Variable
    ...    Oi, achei o seu contato no Trade Sticker. Estou interessado(a) na figurinha do ${sticker_name}, bora negociar?

    Switch Page       NEW
    Wait For Elements State        
    ...               css=p >> text=${expected_message}
    ...               visible
    ...               10000
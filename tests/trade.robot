*** Settings ***
Documentation       Teste de negociação de figurinhas da copa

Resource            ../resources/main.resource

Test Setup          Start Test
Test Teardown       Finish Test

*** Test Cases ***
Deve negociar a figurinha Neymar Legend
    Do Login Successfully                       
    Search User                   legend
    Select Sticker                Neymar Jr
    Get In Touch
    WhatsApp Sticker Message      Neymar Jr

Deve negociar a figurinha Kylian Mbappé
    Do Login Successfully                       
    Search User                   Kylian
    Select Sticker                Kylian Mbappé
    Get In Touch
    WhatsApp Sticker Message      Kylian Mbappé
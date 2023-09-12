*** Settings ***
Documentation               Trade Tests

Resource                    ../resources/base.resource

Test Setup                  Start Test
Test Teardown               Finish Test

*** Test Cases ***
Deve negociar a figurinha Neymar Legend
    Do Login                      papito@gmail.com    vaibrasil                        
    Search User                   legend
    Select Sticker                Neymar Jr
    Get In Touch
    WhatsApp Sticker Message      Neymar Jr

Deve negociar a figurinha Kylian Mbappé
    Do Login                      papito@gmail.com    vaibrasil  
    Search User                   Kylian
    Select Sticker                Kylian Mbappé
    Get In Touch
    WhatsApp Sticker Message      Kylian Mbappé

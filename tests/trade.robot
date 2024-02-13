*** Settings ***
Documentation               Trade Tests

Resource                    ../resources/base.resource

Test Setup                  Run Keywords    Start Test    AND    Do Login    papito@gmail.com    vaibrasil

*** Test Cases ***
Deve negociar a figurinha Neymar Legend                        
    Search Sticker                legend
    Select Sticker                Neymar Jr
    Get In Touch
    WhatsApp Sticker Message      Neymar Jr

Deve negociar a figurinha Kylian Mbappé
    Search Sticker                Kylian
    Select Sticker                Mbappé
    Get In Touch
    WhatsApp Sticker Message      Kylian Mbappé

Deve negociar a figurinha Maradona
    Search Sticker                Maradona
    Select Sticker                Maradona
    Get In Touch
    WhatsApp Sticker Message      Maradona

Deve validar a mensagem quando não encontrar uma figurinha
    Search Sticker                Pelé
    Validate Search Text Not Found        Essa busca não retornou dados!

Deve retornar para a pesquisa quando não encontrar uma figurinha
    Search Sticker                Rivaldo
    Click On The Back Button
    Wait Until The Search Bar Is Visible

Deve retornar duas figurinhas do Messi
    Search Sticker                Messi

    Check Number Of Stickers      Messi          2
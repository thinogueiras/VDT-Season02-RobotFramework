*** Settings ***
Documentation               Slogan Test

Resource                    ../resources/base.resource

Test Setup                  Start Test

*** Variables ***
${slogan}                   Conectando colecionadores de figurinhas da copa.

*** Test Cases ***
Deve validar o título da página
    Validate Page Title     Trade Sticker by Papito

Deve validar o logo
    Validate Page Logo

Deve validar o texto do cabeçalho
    Validate Slogan Text    ${slogan}
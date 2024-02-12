*** Settings ***
Documentation               Slogan Test

Resource                    ../resources/base.resource

Test Setup                  Start Test
Test Teardown               Finish Test

*** Variables ***
${slogan}                   Conectando colecionadores de figurinhas da copa.

*** Test Cases ***
Deve validar o slogan da home page
    Get Text                .logo-container h2        equal        ${slogan}
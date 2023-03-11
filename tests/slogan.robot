*** Settings ***
Documentation         Slogan Test

Library               Browser

Resource              ../resources/main.resource

Test Setup            main.Start Test
Test Teardown         main.Finish Test

*** Variables ***
${slogan}             Conectando colecionadores de figurinhas da copa.

*** Test Cases ***
Deve validar o slogan da home page
    Go to Login Page
    Get Text          .logo-container h2    equal    ${slogan}

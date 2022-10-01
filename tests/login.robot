*** Settings ***
Documentation            Login tests

Resource                 ../resources/main.resource

Test Setup               Start Test
Test Teardown            Finish Test  

*** Variables ***
${email}                 papito@gmail.com
${incorrect_email}       papito@gmai.co
${email_vazio}
${empty_password}                   
${correct_password}      vaibrasil
${incorrect_password}    abc123

*** Test Cases ***
Deve logar com sucesso
    Do Login Successfully

Deve validar credenciais inválidas - E-mail incorreto
    Do Login         ${incorrect_email}    ${correct_password}                 
    Toast Message Should Be        Credenciais inválidas, tente novamente!

Deve validar credenciais inválidas - Senha incorreta
    Do Login         ${email}              ${incorrect_password}                 
    Toast Message Should Be        Credenciais inválidas, tente novamente!

Deve validar credenciais inválidas - E-mail e senha em branco
    Try Access Dashboard
    Toast Message Should Be        Por favor, informe suas credenciais!

Deve validar e-mail obrigatório
    Do Login         ${email_vazio}        ${correct_password}
    Toast Message Should Be        Por favor, informe o seu email!

Deve validar senha obrigatória
    Do Login         ${email}              ${empty_password}
    Toast Message Should Be        Por favor, informe a sua senha secreta!



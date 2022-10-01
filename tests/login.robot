*** Settings ***
Documentation            Login tests

Resource                 ../resources/main.resource

Test Setup               Start Test
Test Teardown            Finish Test  

*** Variables ***
${email_correto}         papito@gmail.com
${password_correta}      vaibrasil
${email_incorreto}       papito@gmai.co
${password_incorreta}    abc123
${email_vazio}
${password_vazia}

*** Test Cases ***
Deve logar com sucesso
    Do Login Successfully

Deve validar credenciais inválidas - E-mail incorreto
    Do Login             ${email_incorreto}    ${password_correta}                 
    Toast Message Should Be        Credenciais inválidas, tente novamente!

Deve validar credenciais inválidas - Senha incorreta
    Do Login             ${email_correto}      ${password_incorreta}                 
    Toast Message Should Be        Credenciais inválidas, tente novamente!

Deve validar credenciais inválidas - E-mail e senha em branco
    Do Login             ${email_vazio}        ${password_vazia}
    Toast Message Should Be        Por favor, informe suas credenciais!

Deve validar e-mail obrigatório
    Do Login             ${email_vazio}        ${password_correta}
    Toast Message Should Be        Por favor, informe o seu email!

Deve validar senha obrigatória
    Do Login             ${email_correto}      ${password_vazia}
    Toast Message Should Be        Por favor, informe a sua senha secreta!



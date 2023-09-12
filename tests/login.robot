*** Settings ***
Documentation               Login tests

Resource                    ../resources/base.resource

Test Setup                  Start Test
Test Teardown               Finish Test  

*** Variables ***
${email_correto}            papito@gmail.com
${password_correta}         vaibrasil
${email_incorreto}          papito@gmai.co
${password_incorreta}       abc123

*** Test Cases ***
Deve logar com sucesso
    Do Login                ${email_correto}    ${password_correta}
    User Logged In

Deve validar credenciais inválidas - E-mail incorreto
    Do Login                     ${email_incorreto}    ${password_correta}
    Toast Message Should Be      Credenciais inválidas, tente novamente!

Deve validar credenciais inválidas - Senha incorreta
    Do Login                     ${email_correto}      ${password_incorreta}
    Toast Message Should Be      Credenciais inválidas, tente novamente!

Deve validar credenciais inválidas - E-mail e senha em branco
    Do Login                     ${EMPTY}              ${EMPTY}
    Toast Message Should Be      Por favor, informe suas credenciais!

Deve validar e-mail obrigatório
    Do Login                     ${EMPTY}              ${password_correta}
    Toast Message Should Be      Por favor, informe o seu email!

Deve validar senha obrigatória
    Do Login                     ${email_correto}      ${EMPTY}
    Toast Message Should Be      Por favor, informe a sua senha secreta!

Deve verificar se os dados foram lembrados
    Do Login With Option To Remember Data        ${email_correto}    ${password_correta}
    Click On Logout

    Check Saved Credentials      ${email_correto}    ${password_correta}
    Get Checkbox State           ${lembrar_dados}    ==    Checked
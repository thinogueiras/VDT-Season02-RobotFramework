# Projeto de testes e2e realizado na 2ª temporada da série: Viver de Teste - 🚀 QACademy 🚀

[![Robot Framework - E2E Tests](https://github.com/thinogueiras/VDT-Season02-RobotFramework/actions/workflows/ci-robot.yml/badge.svg)](https://github.com/thinogueiras/VDT-Season02-RobotFramework/actions/workflows/ci-robot.yml)

## <strong>Trade Sticker</strong> - WebApp para troca de figurinhas da copa do mundo com outros colecionadores cadastrados na plataforma. Possui integração com a API do WhatsApp para iniciar a negociação das figurinhas.

## Ferramentas e tecnologias utilizadas:

    VSCode com o plugin: Robot Framework Language Server

    Robot Framework com a library Browser(Playwright)

    Python 3.10.7

    Node.js 16.17.1 

## Pré-requisitos para a execução do projeto:

    Python: https://www.python.org/downloads/
    
    Observações importantes sobre a instalação do Python: 
        Selecionar a opção para adicionar o Python ao PATH do S.O.
        Escolher a instalação customizada.
        Selecionar para instalar para todos os usuários. 
        Altere o caminho da instalação para C:\Python310

    Node.js 16: https://nodejs.org/en/    
    
    Comandos necessários:

        pip install robotframework

        pip install -U pip

        pip install robotframework-browser

        rfbrowser init

## Executando o projeto:

    Abrir o Git Bash ou qualquer outro terminal integrado ao Git.

    Escolha uma pasta no seu S.O e entre nela para realizar o comando abaixo:

    git clone https://github.com/thinogueiras/VDT-Season02-RobotFramework.git    

    cd VDT-Season02-RobotFramework
    
    Rodar a suíte de testes no Firefox:

        robot -d ./logs -v BROWSER:firefox -v HEADLESS:False tests/

    Rodar a suíte de testes no Chromium:
    
        robot -d ./logs -v BROWSER:chromium -v HEADLESS:False tests/

## Após a execução da suíte de testes, será exibido no terminal o caminho onde constam os arquivos log.html e report.html, contendo o status de todos os Cenário de Teste e com screenshot anexada.

<strong>Thiago Nogueira dos Santos <br/>
QA Engineer </strong>

**LinkedIn:** https://www.linkedin.com/in/thinogueiras/

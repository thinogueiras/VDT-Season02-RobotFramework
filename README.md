# Projeto de testes e2e realizado na 2ª temporada da série: Viver de Teste.

[![Robot Framework - E2E Tests](https://github.com/thinogueiras/VDT-Season02-RobotFramework/actions/workflows/ci-robot.yml/badge.svg)](https://github.com/thinogueiras/VDT-Season02-RobotFramework/actions/workflows/ci-robot.yml)


## Premiação do desafio VDT 🏅 🏅

![Alt text](images/winners.jpeg)


## Pré-requisitos mínimos de ambiente 📋 💻

[Python](https://www.python.org/downloads/) 3.10.12.

[Node.js](https://nodejs.org/en) 18.17.1.


## Instalação do projeto 🚀 🚀

```
pip install -r requirements.txt
```

## Instruções 📢 ℹ️

Executar o comando abaixo no terminal:

```
rfbrowser init
```

## Execução dos testes 🤖 🤖

### Firefox:

```
robot -d ./logs -v BROWSER:firefox -v HEADLESS:False tests/
```

### Chrome:

```
robot -d ./logs -v BROWSER:chromium -v HEADLESS:False tests/
```

## Relatórios 📝 📄

Verifique a pasta `logs` para visualizar os <b>relatórios</b> da execução.

Abra o arquivo `report.html` ou `log.html` que é mais detalhado.

---

<a href="https://www.linkedin.com/in/thinogueiras"><img alt="Linkedin" src="https://img.shields.io/badge/-LinkedIn-blue?style=for-the-badge&logo=Linkedin&logoColor=white"></a>

<strong>Thiago Nogueira dos Santos</strong> 🤓 🫰🏽

QA Automation Engineer 🔎 🐞

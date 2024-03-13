# Projeto de testes E2E realizado na 2ª temporada da série: Viver de Teste.

[![Robot Framework - E2E Tests](https://github.com/thinogueiras/VDT-Season02-RobotFramework/actions/workflows/continuous-testing.yml/badge.svg)](https://github.com/thinogueiras/VDT-Season02-RobotFramework/actions/workflows/continuous-testing.yml)

## Premiação do desafio VDT 🏅 🏅

![Alt text](images/winners.jpeg)


## Pré-requisitos mínimos de ambiente 📋 💻

* [Git](https://git-scm.com/).

* [Docker](https://www.docker.com/products/docker-desktop/) (Opcional).

* [Python](https://www.python.org/downloads/) 3.11.x.

* [Node.js](https://nodejs.org/en) 18.17.x.


## Clone do Repositório 🔧 🔧

```
git clone https://github.com/thinogueiras/VDT-Season02-RobotFramework.git

cd VDT-Season02-RobotFramework
```

## Instalação do projeto 🚀 🚀

```
pip install -r requirements.txt
```

## Instruções 📢 📢

Executar o comando abaixo no terminal:

```
rfbrowser init
```

## Execução dos testes 🤖 🤖

### Firefox:

```
robot -d ./reports -v BROWSER:firefox -v HEADLESS:False tests/
```

### Chromium:

```
robot -d ./reports -v BROWSER:chromium -v HEADLESS:False tests/
```

## Docker:

```
docker pull ppodgorsek/robot-framework:latest
```

#### Aplicando permissão de execução:
```
chmod +x run-docker-tests-single-thread.bat
```

#### Executando o arquivo:
```
./run-docker-tests-single-thread.bat
```

---

## Relatórios 📝 📄

Verifique a pasta `reports` para visualizar os <b>relatórios</b> da execução: `report.html` ou `log.html`.

---

<a href="https://www.linkedin.com/in/thinogueiras"><img alt="Linkedin" src="https://img.shields.io/badge/-LinkedIn-blue?style=for-the-badge&logo=Linkedin&logoColor=white"></a>

<strong>Thiago Nogueira dos Santos</strong> 🤓 ✌🏻

QA Automation Engineer 🔎 🐞

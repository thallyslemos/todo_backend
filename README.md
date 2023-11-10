# API de TodoList

Este é um projeto desenvolvido para o desafio de estágio da V360. A aplicação é uma API para uma lista de tarefas (TodoList), onde cada lista pode ter várias tarefas.

## Configuração do Projeto

### Pré-requisitos

- Ruby versão: 3.2.0
- Rails versão: 7.0.8

### Banco de Dados

- abra o terminal na pasta do repositório e execute os seguintes comandos
- bundle install
- rails db:create db:migrate
- rails server

### Instruções para rodar o projeto

- Sqlite3

## Sobre o Aplicativo

O aplicativo consiste em duas tabelas principais: `TodoList` e `Todo`.

- `TodoList`: Representa uma lista de tarefas. Cada lista tem um nome único e pode ter várias tarefas associadas a ela.
- `Todo`: Representa uma tarefa individual. Cada tarefa tem um título e está associada a uma lista.

Existem algumas validações em vigor para garantir a integridade dos dados:

- Tanto as listas quanto as tarefas devem ter um nome ou título.
- O nome de cada lista deve ser único.
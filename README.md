# API V360 TodoList

Este é um projeto desenvolvido para o desafio de estágio da V360. A aplicação é uma API para uma lista de tarefas (TodoList), onde cada lista pode ter várias tarefas.

## Configuração do Projeto

### Pré-requisitos

- Ruby versão: 3.2.0
- Rails versão: 7.0.8

### Banco de Dados

- Em desenvolvimento: Sqlite3
- Em produção: PostgresSQL

### Deploy

- Api no Heroku
- Banco de dados postgres no ElephantSQL
  
### Instruções para rodar o projeto

- abra o terminal na pasta do repositório e execute os seguintes comandos:
```bash
bundle install
rails db:create db:migrate
rails server
```
- A api estará exposta em localhost:3000

## Sobre o Aplicativo

O aplicativo consiste em duas tabelas principais: `USer`, `TodoList` e `Todo`.

- `User`: Representa um usuário que pode ter várias listas de tarefas associadas a ele. Cada usuário tem um email único e uma senha.
- `TodoList`: Representa uma lista de tarefas. Cada lista tem um nome único dentro do escopo de um usuário e pode ter várias tarefas associadas a ela.
- `Todo`: Representa uma tarefa individual. Cada tarefa tem um título e está associada a uma lista.

Existem algumas validações em vigor para garantir a integridade dos dados:

- Tanto os usuários, as listas quanto as tarefas devem ter um nome ou título..
- O email de cada usuário deve ser único.
- A senha de cada usuário deve ter no mínimo 6 caracteres.
- O nome de cada lista deve ser único dentro do escopo de um usuário.

Além disso, o aplicativo suporta autenticação de usuário. Os usuários podem se registrar fornecendo um email e uma senha, e podem se autenticar usando essas credenciais. Cada lista de tarefas está associada a um usuário, e os usuários só podem ver e manipular suas próprias listas.

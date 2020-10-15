#language: pt

Funcionalidade: Login
    Sendo um usuário
    Quero acessar minha conta
    Para gerenciar minhas atividades

    Contexto: Home
        Dado que esteja na home

    @logout
    Cenario: Usuário autenticado

        Quando realizar o login com "gustavo.tonin@compasso.com.br" e "123456"
        Então deverá aparecer a mensagem de boas vindas "Olá, Gustavo Tonin"

    @tentativa
    Esquema do Cenário: Tentativa de login

        Quando realizar o login com "<email>" e "<senha>"
        Então deverá aparecer a mensagem de alerta "<msg>"

    Exemplos: 
        | email                           | senha   | msg                                    |
        | gustavo.tonin@compasso.com.br   | xpto123 | Senha inválida.                        | 
        | joao&gmail.com                  | 123456  | Email incorreto ou ausente.            |
        |                                 | 123456  | Email incorreto ou ausente.            |
        | gustavo.tonin@compasso.com.br   |         | Senha ausente.                         |
        | 404@compasso.com.br             | 123456  | Usuário não cadastrado.                |
        | gustavo.tonin@compasso.com.br   | 12345   | Senha deve ter no mínimo 6 caracteres. |

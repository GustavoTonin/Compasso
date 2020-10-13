#language: pt

Funcionalidade: Login
    Sendo um usuário
    Quero acessar minha conta
    Para gerenciar minhas atividades

    Contexto: Home
        Dado que esteja na home

    @sprint1 @logout
    Cenario: Usuário autenticado

        Quando inserir "gustavo.tonin@compasso.com.br" e "123456"
        Então deverá aparecer a mensagem de boas vindas "Olá, Gustavo Tonin"

    @tentativa
    Esquema do Cenário: Tentativa de login

        Quando inserir "<email>" e "<senha>"
        Então deverá aparecer a mensagem de alerta "<mensagem>"

    Exemplos: 
        | email          | senha   | mensagem                                 |
        | eu@papito.io   | xpto123 | Senha inválida.                        | 
        | joao&gmail.com | 123456  | Email incorreto ou ausente.            |
        |                | 123456  | Email incorreto ou ausente.            |
        | eu@papito.io   |         | Senha ausente.                         |
        | 404@papito.io  | 123456  | Usuário não cadastrado.                |
        | eu@papito.io   | 12345   | Senha deve ter no mínimo 6 caracteres. |

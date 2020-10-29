#language: pt

Funcionalidade: Autenticação
    Sendo um usuário
    Quero entrar em minha conta
    Para adicionar produtos ao carrinho

  Contexto: Home
    Dado que esteja na home

    Cenário: Login
    
    Quando efetuar o login com "test@automation.com.br" e "123456"
    Então deverá aparecer a mensagem de sucesso "Olá, Automation"

    Esquema do Cenário: Tentativa de login

    Quando efetuar o login com "<email>" e "<senha>"
    Então deverá aparecer a mensagem de erro "<mensagem>"

    Exemplos:
    | email           | senha | mensagem                                      |
    |error@hotmail.com|123456 | Esta combinação de usuário e senha é inválida.|
    |error@hotmail.com|       | este campo é obrigatório                      |
    |                 |123456 | este campo é obrigatório                      |
#language: pt

Funcionalidade: Autenticação
    Sendo um usuário
    Quero entrar em minha conta
    Para adicionar produtos ao carrinho

  Contexto: Home
    Dado que esteja na home

    Cenário: Login
    
    Quando efetuar o login com "test@automation.com.br" e "123456"
    Então deverá aparecer a mensagem de sucesso "OLÁ, AUTOMATION1822"

    Cenário: Erro de login

    Quando efetuar o login com "error@hotmail.com" e "123456"
    Então deverá aparecer a mensagem de erro de login "Login ou senha inválida."

    Esquema do Cenário: Tentativa de login

    Quando efetuar o login com "<email>" e "<senha>"
    Então deverá aparecer a mensagem de erro "<mensagem>"

    Exemplos:
    | email           | senha | mensagem                  |
    |error@hotmail.com|       | Campo obrigatório.        |
    |                 |123456 | Campo obrigatório.        |
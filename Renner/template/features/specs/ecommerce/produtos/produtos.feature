#language: pt

Funcionalidade: Produto
    Sendo um usuário autenticado
    Quero adicionar um produto
    Para realizar a compra

    Contexto: Autenticação
        Dado que esteja na home
        # Quando efetuar o login com "test@automation.com.br" e "123456"

    Cenário: Buscar e adicionar produto ao carrinho
        Quando buscar por "Tênis"
        E adicionar o produto no carrinho
        Então deverá validar o preço do produto
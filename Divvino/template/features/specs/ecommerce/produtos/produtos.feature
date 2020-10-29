#language: pt

Funcionalidade: Produto
    Sendo um usuário autenticado
    Quero adicionar um produto
    Para realizar a compra

    Cenário: Buscar e adicionar produto ao carrinho
        Dado que esteja na home
        Quando efetuar o login com "test@automation.com.br" e "123456"
        E buscar por "Cabernet"
        E adicionar o produto no carrinho
        Então deverá mostrar o produto no carrinho
        E deverá validar o preço e a quantidade do produto
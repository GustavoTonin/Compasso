#language: pt

Funcionalidade: Produto
    Sendo um usuário autenticado
    Quero adicionar um produto
    Para realizar a compra

    Cenário: Buscar e adicionar produto ao carrinho
        Dado que esteja na home
        Quando buscar por "Cabernet"
        E adicionar o produto no carrinho
        Então deverá mostrar 1 produto no carrinho
        E deverá validar o preço do produto
        E deverá validar o link do produto
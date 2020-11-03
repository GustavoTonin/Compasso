#language: pt

@acesso
Funcionalidade: Adicionar produto no carrinho
    Sendo um usuário autenticado
    Quero adicionar produtos no carrinho
    Para realizar a troca de pontos

  Contexto:
    Dado que esteja na home

  Cenário: Buscar e adicionar produto ao carrinho
  
    Quando buscar o produto "Monitor"
    E selecionar o primeiro produto
    E adicionar ao carrinho
    Então deverá aparecer o produto e o preço no carrinho
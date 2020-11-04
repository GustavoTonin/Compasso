#language: pt

@acesso
Funcionalidade: Adicionar produto no carrinho
    Sendo um usuário
    Quero adicionar produtos no carrinho
    Para realizar a troca de pontos por produtos

  Contexto:
    Dado que esteja na home

  @buscar
  Cenário: Buscar e adicionar produto no carrinho
  
    Quando buscar o produto "Monitor"
    E selecionar o primeiro produto
    E adicionar no carrinho
    Então deverá aparecer o produto e o preço no carrinho

  @vitrine
  Cenário: Adicionar produto da vitrine no carrinho

    Quando selecionar primeiro produto da vitrine
    E adicionar no carrinho
    Então deverá aparecer o produto e o preço no carrinho
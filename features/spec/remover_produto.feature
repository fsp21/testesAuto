# language: pt

Funcionalidade: Remover produto do carrinho
  Como um cliente do site FakeEcommerce
  Gostaria de remover um produto do carrinho

  Contexto:
    Dado que esteja na página inicial

  @remover_produto
  Cenário: Remover produto do carrinho
    Quando clica num produto
    E adiciona no carrinho
    Então remove do carrinho
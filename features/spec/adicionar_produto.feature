# language: pt

Funcionalidade: Adicionar um produto ao carrinho
  Como um cliente do site FakeEcommerce
  Gostaria de adicionar um produto ao carrinho
  Para finalizar a compra

  Contexto:
    Dado que esteja na página inicial

  @adicionar_produto
  Cenário: Adicionar produto ao carrinho
    Quando clica num produto
    E edita as necessidades
    Então adiciona ao carrinho
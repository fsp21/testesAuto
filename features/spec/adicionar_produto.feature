# language: pt

Funcionalidade: Adicionar um produto ao carrinho
  Como um cliente do site FakeEcommerce
  Gostaria de adicionar um produto ao carrinho
  Para finalizar a compra

  Contexto:
    Dado que esteja na página inicial

  @adicionar_produto
  Cenário: Adicionar produto ao carrinho
    Quando o usuário clicar num produto
    E editar as necessidades
    E adicionar ao carrinho
    Então deve receber a mensagem de confirmação
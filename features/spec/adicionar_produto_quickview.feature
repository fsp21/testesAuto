# language: pt

Funcionalidade: Adicionar um produto ao carrinho sem sair da página inicial
  Como um cliente do site FakeEcommerce
  Gostaria de adicionar um produto ao carrinho de maneira prática

  Contexto:
    Dado que esteja na página inicial

  @adicionar_produto_quickview
  Cenário: Adicionar produto ao carrinho
    Quando o usuário clicar no quickview de um produto
    E editar as necessidades
    E adicionar ao carrinho
    Então deve receber a mensagem de confirmação
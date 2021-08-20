# language: pt

Funcionalidade: Remover produto do carrinho
  Como um cliente do site FakeEcommerce
  Gostaria de remover um produto do carrinho

  Contexto:
    Dado que esteja na página inicial

  @remover_produto
  Cenário: Remover produto do carrinho
    Quando o usuário clicar num produto
    E adicionar no carrinho
    E remover do carrinho
    Então deve receber a mensagem 'Your shopping cart is empty'
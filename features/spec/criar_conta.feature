# language: pt

Funcionalidade: Criar conta no Ecommerce Fake
  Como um cliente do site FakeEcommerce
  Gostaria criar uma conta
  Para salvar meus dados

  Contexto:
    Dado que esteja na página do login

  @criar_conta
  Cenário: Criar conta
    Quando o usuário digitar o e-mail e clicar em criar conta
    Então é redirecionado para a criação de conta
    E preenche o formulário e envia
    Então deve ser redirecionado para a página de sua conta
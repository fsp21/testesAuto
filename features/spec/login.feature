# language: pt

Funcionalidade: Login no Ecommerce Fake
  Como um cliente do site FakeEcommerce
  Gostaria de fazer o login
  Para finalizar a compra

  Contexto:
    Dado que esteja na página de login

  @realizar_login
  Cenário: Realizar login
    Quando preencher os campos e-mail e senha corretamente
    Então deve ser redirecionado para sua a página de sua conta


  @login_falho
  Cenário: Login com falha
    Quando preencher os campos e-mail e senha incorretamente
    Então deve ser exibida a mensagem 'Authentication failed'
# language: pt

Funcionalidade: Login no Ecommerce Fake
  Como um cliente do site FakeEcommerce
  Gostaria de fazer o login
  Para finalizar a compra

  Contexto:
    Dado que esteja na página de login

  @realizar_login
  Cenário: Realizar login
    Quando preenche os campos e-mail e senha
    Então é redirecionado para sua conta


  @login_falho
  Cenário: Login com falha
    Quando preenche os campos incorretamente
    Então é exibida a mensagem 'Authentication failed'
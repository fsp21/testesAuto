# language: pt

Funcionalidade: Buscas no Fake Ecommerce
  Como um cliente do site FakeEcommerce
  Gostaria de poder buscar por produtos
  Para customizar as compras

  Contexto:
    Dado que esteja na página inicial

  @buscar_por_termo_valido
  Cenário: Buscar por termo válido
    Quando buscar pelo produto 'shirt'
    Então devem ser retornados produtos

  @busca_sem_resultados
  Cenário: Busca sem resultados
    Quando o usuário pesquisa pelo produto 'relogio'
    Então é retornado o aviso 'No results were found for your search "relogio"'

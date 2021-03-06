Dado("que esteja na página inicial") do
  @home_page.load
end

Quando("buscar pelo produto {string}") do |query|
  @home_page.search(query)
end

Então("devem ser retornados produtos") do
  expect(@search_page.products.first).to have_image
  expect(@search_page.products.first).to have_name
  expect(@search_page.products.first.name.text).to have_content 'shirt'
end

Quando("o usuário pesquisar pelo produto {string}") do |query|
  @home_page.search(query)
end

Então("deve ser retornado o aviso {string}") do |string|
  expect(@search_page.alert_message_no_results).to have_content 'No results were found for your search'
end

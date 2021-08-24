Quando("o usuário clicar num produto") do
  @home_page.home_featured.click
  expect(@product_page.url).to have_content 'product=1'
end

E("editar as necessidades") do
  @product_page.adicionar_ao_carrinho(2, 'L')
  @product_page.escolher_cor('laranja')
end

E("adicionar ao carrinho") do
  @product_page.btn_add.click
end

Então("deve receber a mensagem de confirmação") do
  @product_page.btn_add.click
  expect(@product_page.modal_cart).to have_content 'Product successfully added to your shopping cart'
end

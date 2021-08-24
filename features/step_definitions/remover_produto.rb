E("adicionar no carrinho") do
  @product_page.btn_add.click
  expect(@product_page.modal_cart).to have_content 'Product successfully added to your shopping cart'
  @carrinho_page.modal_cart.btn_continue_shopping.click
end

E("remover do carrinho") do
  @home_page.header.btn_carrinho.click
  expect(@carrinho_page.url).to have_content 'controller=order'
  @carrinho_page.btn_remove.click
end

Então('deve receber a mensagem {string}') do |string|
  expect(@carrinho_page.empty_warning).to have_content 'Your shopping cart is empty'
end

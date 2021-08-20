E("adicionar no carrinho") do
  @produto_um_page.btn_adicionar.click
  expect(@produto_um_page.modal_adicionado).to have_content 'Product successfully added to your shopping cart'
  @carrinho_page.btn_continue_shopping.click
end

E("remover do carrinho") do
  @produto_um_page.btn_carrinho.click
  expect(@carrinho_page.url).to have_content 'controller=order'
  @carrinho_page.btn_remover.click
end

Então('deve receber a mensagem {string}') do |string|
  expect(@carrinho_page.empty_warning).to have_content 'Your shopping cart is empty'
end

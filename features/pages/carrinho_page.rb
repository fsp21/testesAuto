module Pages
  class CartPage < SitePrism::Page
    set_url '/index.php?controller=order'
    element  :btn_continue_shopping, '.continue'
    element  :btn_remover, '.icon-trash'
    element  :btn_adicionar, '#add_to_cart'
    element  :empty_warning, '.alert-warning'
    element  :btn_carrinho, 'img[href="http://automationpractice.com/index.php?controller=order"]'
  end
end

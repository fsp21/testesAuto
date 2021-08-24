require_relative 'sections/modal_cart.rb'

module Pages
  class CartPage < SitePrism::Page
    set_url '/index.php?controller=order'
    element  :btn_remove, '.icon-trash'
    element  :btn_add_to_cart, '#add_to_cart'
    element  :empty_warning, '.alert-warning'
    element  :btn_carrinho, 'img[href="http://automationpractice.com/index.php?controller=order"]'
    section  :modal_cart, Sections::ModalCart, '#layer_cart'
  end
end

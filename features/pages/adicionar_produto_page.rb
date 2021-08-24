require_relative 'sections/header.rb'
require_relative 'sections/modal_cart.rb'

module Pages
  class AddToCartPage < SitePrism::Page
    set_url 'index.php?id_product=1&controller=product'
    element  :btn_add_unit, '.icon-plus'
    element  :dropdown_select_size, '#uniform-group_1'
    element  :cor_blue, '[name="Blue"]'
    element  :cor_orange, '[name="Orange"]'
    element  :cor_black, '[name="Black"]'
    element  :cor_white, '[name="White"]'
    element  :cor_beige, '[name="Beige"]'
    element  :cor_pink, '[name="Pink"]'
    element  :cor_yellow, '[name="Yellow"]'
    element  :btn_add, '#add_to_cart'
    section  :header, Sections::Header, '.header-container'
    section  :modal_cart, Sections::ModalCart, '#layer_cart'

    def adicionar_ao_carrinho(unidades, tamanho)
      btn_add_unit.click unidades
      dropdown_select_size.select tamanho
    end

    def escolher_cor(cor) 
      case
      when 
        cor == 'azul'
        cor_blue.click
      when 
        cor == 'laranja'
        cor_orange.click
      when
        cor == 'preto'
        cor_black.click
      when
        cor == 'branco'
        cor_white.click
      when
        cor == 'bege'
        cor_beige.click
      when
        cor == 'rosa'
        cor_pink.click
      when
        cor == 'amarelo'
        cor_yellow.click
      end
    end
  end
end

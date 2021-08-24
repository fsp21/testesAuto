module Sections
  class QuickView < SitePrism::Section
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

    def adicionar_ao_carrinho_quickview(unidades, tamanho)
      btn_add_unit.click unidades
      dropdown_select_size.select tamanho
    end

    def escolher_cor_quickview(cor) 
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

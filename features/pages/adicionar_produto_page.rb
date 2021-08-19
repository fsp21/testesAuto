module Pages
    class AddToCartPage < SitePrism::Page
      set_url "index.php?id_product=1&controller=product"
  
      element  :adicionar_unidade, '.icon-plus'
      element  :escolher_tamanho, '#uniform-group_1'
      element  :cor_azul, '#color_14'
      element  :btn_adicionar, '#add_to_cart'
      element  :modal_adicionado, '#layer_cart'
      element  :btn_carrinho, '[title="View my shopping cart"]'

    end
  end
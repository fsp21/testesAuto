module Pages
    class AddToCartPage < SitePrism::Page
      set_url "index.php?id_product=1&controller=product"
  
      element  :adicionar_unidade, '.icon-plus'
      element  :escolher_tamanho, '#uniform-group_1'
      element  :cor_blue, '[name="Blue"]'
      element  :cor_orange, '[name="Orange"]'
      element  :cor_black, '[name="Black"]'
      element  :cor_white, '[name="White"]'
      element  :cor_beige, '[name="Beige"]'
      element  :cor_pink, '[name="Pink"]'
      element  :cor_yellow, '[name="Yellow"]'
      element  :btn_adicionar, '#add_to_cart'
      element  :modal_adicionado, '#layer_cart'
      element  :btn_carrinho, '[title="View my shopping cart"]'

      def adicionar_ao_carrinho(unidades, tamanho)
        adicionar_unidade.click unidades
        escolher_tamanho.select tamanho
      end
      
      def escolher_cor(cor) case 
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

  
Quando("clica num produto") do
    @home_page.home_featured.click
    expect(@produto_um_page.url).to have_content 'product=1'
  end

E("edita as necessidades") do
    @produto_um_page.adicionar_ao_carrinho(2, 'L')
    @produto_um_page.escolher_cor('laranja')
    end


Então("adiciona ao carrinho") do
    @produto_um_page.btn_adicionar.click
    expect(@produto_um_page.modal_adicionado).to have_content 'Product successfully added to your shopping cart'
end

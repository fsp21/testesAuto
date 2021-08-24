module Sections
  class Header < SitePrism::Section
    element  :button_search, '.button-search'
    element  :input_search_form, '#search_query_top'
    element  :btn_carrinho, '[title="View my shopping cart"]'
  end
end

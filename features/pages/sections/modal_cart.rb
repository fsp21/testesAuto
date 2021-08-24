module Sections
  class ModalCart < SitePrism::Section
    element  :btn_checkout, '#layer_cart [title="Proceed to checkout"]'
    element  :btn_continue_shopping, '#layer_cart [title="Continue shopping"]'
  end
end

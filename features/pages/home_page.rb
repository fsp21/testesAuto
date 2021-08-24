require_relative 'sections/header.rb'

module Pages
  class HomePage < SitePrism::Page
    set_url '/index.php'
    element  :logo, '.logo'
    element  :btn_contact_us, '#contact-link'
    element  :btn_go_to_sign_in, '.login'
    element  :input_newsletter_footer_email, '.newsletter-input'
    element  :btn_newsletter_footer_register, '[name="submitNewsletter"]'
    element  :home_featured, 'img[title="Faded Short Sleeve T-shirts"]'
    element  :btn_shopping_cart, '.shopping_cart'
    section  :header, Sections::Header, '.header-container'

    def search(query)
      header.input_search_form.set(query)
      header.button_search.click
    end
  end
end

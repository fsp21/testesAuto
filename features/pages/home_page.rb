require_relative 'sections/header.rb'
require_relative 'sections/quickview.rb'

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
    section  :quickview, Sections::QuickView, '#product'
    element  :btn_quickview, '#homefeatured a.quick-view[href*="1"]'
    element  :first_product, '#homefeatured > li.ajax_block_product.col-xs-12.col-sm-4.col-md-3.first-in-line.first-item-of-tablet-line.first-item-of-mobile-line > div > div.left-block'

    def move_to_element
      driver = Selenium::WebDriver.for :chrome
      element = driver.find_element(first_product)
      driver.action.move_to(element).perform
    end

    def search(query)
      header.input_search_form.set(query)
      header.button_search.click
    end
  end
end

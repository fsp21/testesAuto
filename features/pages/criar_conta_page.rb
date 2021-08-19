module Pages
    class CreateAccountPage < SitePrism::Page
      set_url '/index.php?controller=authentication#account-creation'
  
      element  :gender_radio_male, '#uniform-id_gender1'
      element  :gender_radio_female, '#id_gender2'
      element  :first_name_personal_info, '#customer_firstname'
      element  :email_box, '#email'
      element  :last_name_personal_info, '#customer_lastname'
      element  :password_personal_info, '#passwd'
      element  :day_of_birth, '#uniform-days'
      element  :month_of_birth, '#uniform-months'
      element  :year_of_birth, '#uniform-years'
      element  :first_name_address, '#firstname'
      element  :last_name_address, '#lastname'
      element  :company_address, '#company'
      element  :first_address, '#address1'
      element  :second_address, '#address2'
      element  :city_address, '#city'
      element  :state_address, '#uniform-id_state'
      element  :zip_code, '#postcode'
      element  :country, '#uniform-id_country'
      element  :additional_information, '#other'
      element  :home_phone, '#phone'
      element  :mobile_phone, '#phone_mobile'
      element  :nome_do_endereco, '#alias'
      element  :btn_register, '#submitAccount'
    end
  end
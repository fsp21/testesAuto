module Pages
  class CreateAccountPage < SitePrism::Page
    set_url '/index.php?controller=authentication#account-creation'
    element  :gender_radio_male, '#uniform-id_gender1'
    element  :gender_radio_female, '#id_gender2'
    element  :input_first_name_personal_info, '#customer_firstname'
    element  :input_email_box, '#email'
    element  :input_last_name_personal_info, '#customer_lastname'
    element  :input_password_personal_info, '#passwd'
    element  :day_of_birth, '#uniform-days'
    element  :month_of_birth, '#uniform-months'
    element  :year_of_birth, '#uniform-years'
    element  :first_name_address, '#firstname'
    element  :last_name_address, '#lastname'
    element  :input_company_address, '#company'
    element  :input_first_address, '#address1'
    element  :input_second_address, '#address2'
    element  :input_city_address, '#city'
    element  :dropdown_state_address, '#uniform-id_state'
    element  :input_zip_code, '#postcode'
    element  :dropdown_country, '#uniform-id_country'
    element  :input_additional_information, '#other'
    element  :input_home_phone, '#phone'
    element  :input_mobile_phone, '#phone_mobile'
    element  :input_alias, '#alias'
    element  :btn_register, '#submitAccount'

    def personal_information(nome, sobrenome, senha)
      input_first_name_personal_info.set nome
      input_last_name_personal_info.set sobrenome
      input_password_personal_info.set senha
    end

    def date_of_birth(dia, mes, ano)
      day_of_birth.select dia
      month_of_birth.select mes
      year_of_birth.select ano
    end

    def address(linha1, linha2, cidade, estado, zipcode, pais)
      input_first_address.set linha1
      input_second_address.set linha2
      input_city_address.set cidade
      dropdown_state_address.select estado
      input_zip_code.set zipcode
      dropdown_country.select pais
    end
  end
end

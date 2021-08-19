Dado("que esteja na página do login") do
    @login_page.load
    end
  
  Quando("digita o e-mail e clica criar conta") do
    @login_page.input_create_account_email.set('contateste100@testador.com.br')
    @login_page.btn_create.click
    end
  
  E("é redirecionado para a criação de conta") do
    expect(@create_account_page.url).to have_content 'account-creation'
    sleep(10)
    end

  Então("preenche o formulário e envia") do
    @create_account_page.gender_radio_male.click
    @create_account_page.first_name_personal_info.set('João')
    @create_account_page.last_name_personal_info.set('Testador')
    @create_account_page.password_personal_info.set('abc123!')
    @create_account_page.day_of_birth.select("31")
    @create_account_page.month_of_birth.select("December")
    @create_account_page.year_of_birth.select("1990")
    @create_account_page.company_address.set('Compasso UOL')
    @create_account_page.first_address.set('Rua de asfalto, número inteiro e apartamento centena')
    @create_account_page.second_address.set('Predio de cor, com janelas e portas')
    @create_account_page.city_address.set('Salvador')
    @create_account_page.state_address.select('Alaska')
    @create_account_page.zip_code.set('12345')
    @create_account_page.country.select('United States')
    @create_account_page.additional_information.set('Não tenho nada a adicionar')
    @create_account_page.home_phone.set('71995682207')
    @create_account_page.mobile_phone.set('71987440763')
    @create_account_page.nome_do_endereco.set('Endereço principal')
    @create_account_page.btn_register.click
    expect(@my_account_page.url).to have_content 'my-account'
    end
  
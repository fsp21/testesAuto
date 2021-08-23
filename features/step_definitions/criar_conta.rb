Dado("que esteja na página do login") do
  @login_page.load
end

Quando("o usuário digitar o e-mail e clicar em criar conta") do
  @login_page.input_create_account_email.set(Faker::Internet.free_email)
  @login_page.btn_create.click
end

Então("é redirecionado para a criação de conta") do
  expect(@create_account_page.url).to have_content 'account-creation'
end

E("preenche o formulário e envia") do
  @create_account_page.gender_radio_male.click
  @create_account_page.personal_information(Faker::Internet.username(separators: ' '), Faker::Internet.username(separators: ' '), Faker::Internet.password)
  @create_account_page.date_of_birth('31', 'December', '1990')
  @create_account_page.company_address.set('Compasso UOL')
  @create_account_page.address('Rua de asfalto, número inteiro e apartamento centena', 'Predio de cor, com janelas e portas', 'Salvador', 'Alaska', '12345', 'United States')
  @create_account_page.additional_information.set('Não tenho nada a adicionar')
  @create_account_page.home_phone.set('71995682207')
  @create_account_page.mobile_phone.set('71987440763')
  @create_account_page.nome_do_endereco.set('Endereço principal')
  @create_account_page.btn_register.click
end

Então("deve ser redirecionado para a página de sua conta") do
  expect(@my_account_page.url).to have_content 'my-account'
end

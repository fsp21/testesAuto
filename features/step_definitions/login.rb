Dado("que esteja na página de login") do
  @login_page.load
end

Quando("preencher os campos e-mail e senha corretamente") do
  @login_page.input_login_email.send_keys('rafael@coelho.com')
  @login_page.input_login_password.send_keys('abc123')
  @login_page.btn_sign_in.click()
end

Então("deve ser redirecionado para sua a página de sua conta") do
  expect(@login_page.url).to have_content 'my-account'
end

Quando("preencher os campos e-mail e senha incorretamente") do
  @login_page.input_login_email.send_keys('joao@teste.com.br')
  @login_page.input_login_password.send_keys('abc123')
  @login_page.btn_sign_in.click()
end

Então("deve ser exibida a mensagem {string}") do |string|
  expect(@login_page.alert_message_authentication_failed).to have_content 'Authentication failed'
end

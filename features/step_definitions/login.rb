Dado("que esteja na página de login") do
    @login_page.load
  end

Quando("preencher os campos e-mail e senha") do
    @login_page.input_login_email.send_keys('rafael@coelho.com')
    @login_page.input_login_password.send_keys('abc123')
  end

Então("é redirecionado para sua conta") do
    expect(@login_page.url).to have_content 'my-account'
  end

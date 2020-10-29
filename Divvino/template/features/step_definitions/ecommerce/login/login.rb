Quando("efetuar o login com {string} e {string}") do |email, pass|
  @login = $ec_pages.login

  @main_header.sign_in.gclick
  @login.login_form.login(email, pass)
end

Então("deverá aparecer a mensagem de sucesso {string}") do |msg|
  message = @main_header.message
  expect(message).to have_content msg
end

Então("deverá aparecer a mensagem de erro de login {string}") do |msg|
  message = @login.message_error.text
  expect(message).to have_content msg
end

Então("deverá aparecer a mensagem de erro {string}") do |msg|
  message = @login.login_form.message
  expect(message).to have_content msg
end

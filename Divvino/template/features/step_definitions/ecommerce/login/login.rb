Quando("efetuar o login com {string} e {string}") do |email, pass|
  @main_header.sign_in.gclick
  @login.login_form.login(email, pass)
end

Então("deverá aparecer a mensagem de sucesso {string}") do |msg|
  message = @main_header.message
  expect(message).to have_content msg
end

Então("deverá aparecer a mensagem de erro de login {string}") do |msg|
  message = @login.login_error.text
  log message
  expect(message).to have_content msg
end

Então("deverá aparecer a mensagem de erro {string}") do |msg|
  message = @login.login_form.message
  expect(message).to have_content msg
end

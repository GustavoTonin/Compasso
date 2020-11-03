Quando("efetuar o login com {string} e {string}") do |email, pass|
  @main_header.login_button.click
  @login_modal = @home.login_modal
  @login_modal.login(email, pass)
end

Então("deverá aparecer a mensagem de sucesso {string}") do |msg|
  message = @home.main_header.user_message.text
  expect(message).to eql msg
end

Então("deverá aparecer a mensagem de erro {string}") do |msg|

  # message: = @home.login_modal.error_message.text
  expect(@login_modal.text).to have_content msg # se não funcionar trocar @login_modal.text by page.text
end

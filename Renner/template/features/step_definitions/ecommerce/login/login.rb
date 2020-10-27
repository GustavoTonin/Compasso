Quando("efetuar o login com {string} e {string}") do |email, pass|
  @main_header.login_button.click
  @login_modal = @home.login_modal
  @login_modal.login(email, pass)
end

Então("deverá aparecer a mensagem de sucesso {string}") do |msg|
  message = @home.main_header.user_message.text
  expect(message).to eql msg
end

Então("deverá aparecer a mensagem de erro {string}") do |string|
  pending #falta pegar erro OnInput
  # message: = @home.login_modal.error_message.text
  # expect(message).to eql msg
end

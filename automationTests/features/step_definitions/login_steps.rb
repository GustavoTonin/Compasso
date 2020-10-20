# frozen_string_literal: true

Dado('que esteja na home') do
  @login_page.load
end

Quando('realizar o login com {string} e {string}') do |email, pass|
  @login_page.login_email.set email
  @login_page.login_password.set pass
  @login_page.login_button.click
end

Então('deverá aparecer a mensagem de boas vindas {string}') do |msg|
  expect(@tarefas_page.panel).to have_content msg
end

Então('deverá aparecer a mensagem de alerta {string}') do |msg|
  expect(@login_page.alert).to have_content msg
end

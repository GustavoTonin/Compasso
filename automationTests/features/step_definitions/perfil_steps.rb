# frozen_string_literal: true

Dado('que esteja autenticado com {string} e {string}') do |email, pass|
  @login_page.load
  @login_page.login(email, pass)
end

Dado('que acesso meu perfil') do
  @sidebar.access_perfil
end

Quando('completar os dados solicitados {string} e {string}') do |company, job|
  @perfil_page.update(company, job)
end

Então('deverá aparecer a mensagem de atualização {string}') do |msg|
  expect(@perfil_page.alert).to have_content msg
end

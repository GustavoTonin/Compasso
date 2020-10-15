# frozen_string_literal: true

Dado('que esteja autenticado com {string} e {string}') do |email, senha|
  @login_page.acessa
  @login_page.logar(email, senha)
end

Dado('que acesso meu perfil') do
  @sidebar.click_perfil
end

Quando('completar os dados solicitados {string} e {string}') do |empresa, cargo|
  @perfil_page.completa_cadastro(empresa, cargo)
end

Então('deverá aparecer a mensagem de atualização {string}') do |mensagem|
  expect(@perfil_page.alerta).to have_content mensagem
end

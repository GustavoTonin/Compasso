Dado('que esteja autenticado com {string} e {string}') do |email, senha|
  @login_page = LoginPage.new
  @login_page.acessa
  @login_page.logar(email, senha)
end

Quando('acessar meu perfil') do
  within('aside[class=navigation]') do
    click_link 'Perfil'
  end
end

Quando('completar os dados solicitados') do
  pending # Write code here that turns the phrase above into concrete actions
end

Então('deverá aparecer a mensagem de atualização {string}') do |_string|
  pending # Write code here that turns the phrase above into concrete actions
end
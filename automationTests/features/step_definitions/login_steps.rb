Dado('que esteja na home') do
  @login_page = LoginPage.new
  @login_page.acessa
end

Quando('realizar o login com {string} e {string}') do |email, senha|
  @login_page = LoginPage.new
  @login_page.logar(email, senha)
end

Então('deverá aparecer a mensagem de boas vindas {string}') do |mensagem|
  painel = find('#task-board')
  expect(painel).to have_content mensagem
end

Então('deverá aparecer a mensagem de alerta {string}') do |mensagem|
  alert = find('.alert-login')
  expect(alert).to have_content mensagem
end

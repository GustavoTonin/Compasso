Dado('que esteja na home') do
    visit 'localhost:5000/login'
end

Quando('inserir {string} e {string}') do |email, senha|
    find('#login_email').set email
    find('input[name=password]').set senha
    find('button[id*=btnLogin]').click
end

Então('deverá aparecer a mensagem de boas vindas {string}') do |mensagem|
    painel = find('#task-board')
    expect(painel).to have_content mensagem
end

Então('deverá aparecer a mensagem de alerta {string}') do |mensagem|
    pending # Write code here that turns the phrase above into concrete actions
end
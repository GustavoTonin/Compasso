# frozen_string_literal: true

Dado('que esteja autenticado') do
  @user = {:email => "gustavo.tonin@compasso.com.br", :pass => "123456"}
  @login_page.load
  @login_page.login(@user[:email], @user[:pass])
end

Quando('já está cadastrada') do
  @tarefas_page.new_task_button.click
  @tarefas_page.new_task(@name, @date, @tags_hash)
end

Quando('preencher o nome e data com {string} e {string}') do |name, date|
  @tags_hash = {}
  @tags_hash[:tag] = ''
  @name = name
  @date = date
  DAO.new.remover_tarefa(@name, @user[:email])
end

Quando('preencher as tags com:') do |tags|
  @tags_hash = tags.hashes
end

Quando('cadastrar a tarefa') do
  @tarefas_page.new_task_button.click
  @tarefas_page.new_task(@name, @date, @tags_hash)
end

Quando('preencher os campos com {string}, {string} e {string}') do |name, date, tag|
  @name = name
  @date = date

  @tags_hash = {}
  @tags_hash[:tag] = tag

  @tarefas_page.new_task(@name, @date, @tags_hash)
end

Então('deverá aparecer a tarefa com status {string}') do |status|
  # expect(
  #   @tarefas_page.buscar_tr(@name)
  # ).to have_content status
end

Então('deverá aparecer a mensagem {string}') do |alert|
  expect(@tarefas_page.alert).to have_content alert
end

# Então('deverá ter somente uma tarefa com o name cadastrado') do
#   res = DAO.new.get_tarefa(@name, @user[:email])
# end

# frozen_string_literal: true

Dado('que esteja na página de adicionar tarefas') do
  @tarefas_page.click_nova_tarefa
end

Quando('já está cadastrada') do
  @tags_hash = {}
  @tags_hash[:tag] = ''

  @tarefas_page.cadastrar(@nome, @data, @tags_hash)
  @tarefas_page.click_nova_tarefa
end

Quando('preencher o nome e data com {string} e {string}') do |nome, data|
  @nome = nome
  @data = data
  DAO.new.remover_tarefa(@nome, @user[:email])
end

Quando('preencher as tags com:') do |tags|
  @tags_hash = tags.hashes
end

Quando('cadastrar a tarefa') do
  @tarefas_page.cadastrar(@nome, @data, @tags_hash)
end

Quando('preencher os campos com {string}, {string} e {string}') do |nome, data, tag|
  @nome = nome
  @data = data

  @tags_hash = {}
  @tags_hash[:tag] = tag

  @tarefas_page.cadastrar(@nome, @data, @tags_hash)
end

Então('deverá aparecer a tarefa com status {string}') do |status|
  expect(
    @tarefas_page.buscar_tr(@nome)
  ).to have_content status
end

Então('deverá aparecer a mensagem {string}') do |alerta|
  expect(@tarefas_page.alerta).to eql alerta
end

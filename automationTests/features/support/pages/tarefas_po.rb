# frozen_string_literal: true

class TarefasPage
  include Capybara::DSL

  def click_nova_tarefa
    click_button 'Nova Tarefa'
  end

  def buscar_tr(_nome)
    find('#tasks tbody tr', text: @nome)
  end

  def cadastrar(nome, data_fin, tags)
    within('#add-task-view') do
      fill_in 'title',	with: nome
      fill_in 'dueDate',	with: data_fin
      
      tags.each do |key, tag|
        find('.bootstrap-tagsinput').set tag
      end

      click_button 'Cadastrar'
    end
  end

  def alerta
    find('.alert-warn').text
  end

  def painel
    find('#task-board')
  end
end

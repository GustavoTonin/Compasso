# frozen_string_literal: true

class TarefasPage < SitePrism::Page
  set_url '/tasks'

  element :new_task_button, '#insert-button'
  element :task_name, '#title'
  element :task_date, '#dueDate'
  element :task_tags, '.bootstrap-tagsinput .form-control'
  element :register_button, '#form-submit-button'
  element :back_button, '#form-cancel-button'
  element :panel, '#task-board'
  element :alert, '.panel-body'
  elements :tasks_table_name, '#tasks a[href=#]'

  def new_task(name, date, _tags)
    task_name.set name
    task_date.set date
    # task_tags.set tags
    register_button.click
  end
end

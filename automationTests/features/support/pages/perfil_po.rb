# frozen_string_literal: true

class PerfilPage < SitePrism::Page
  element :company_name, '#profile-company'
  element :save_button, '#form-submit-button'
  element :alert, '.panel-body'
  element :job_list, 'select[name$=job]'

  def update(company, job)
    company_name.set company
    job_list.select job
    save_button.click
  end
end

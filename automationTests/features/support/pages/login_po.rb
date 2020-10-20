# frozen_string_literal: true

class LoginPage < SitePrism::Page
  set_url '/login'

  element :login_email, '#login_email'
  element :login_password, 'input[name=password]'
  element :login_button, '.loginButton'
  element :alert, '.alert-login'

  def login(email, pass)
    login_email.set email
    login_password.set pass
    login_button.click
  end
end

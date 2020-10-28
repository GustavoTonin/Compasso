require_relative "../../sections/login_form.rb"

module Ecommerce
  module Pages
    module Autenticacao
      class Login < SitePrism::Page
        section :login_form, Ecommerce::Sections::Login_form, "#formLogin"
        element :login_error, "#errorLogin"
      end
    end
  end
end

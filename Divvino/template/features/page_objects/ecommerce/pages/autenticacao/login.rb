require_relative "../../sections/autenticacao/login_form.rb"

module Ecommerce
  module Pages
    module Autenticacao
      class Login < SitePrism::Page
        section :login_form, Ecommerce::Sections::Autenticacao::LoginForm, "#formLogin"
        element :message_error, "#errorLogin"
      end
    end
  end
end

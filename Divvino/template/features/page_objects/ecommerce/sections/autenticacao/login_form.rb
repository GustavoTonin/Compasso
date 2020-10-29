module Ecommerce
  module Sections
    module Autenticacao
      class LoginForm < SitePrism::Section
        element :email_input, "#user"
        element :pass_input, ".passUser"
        element :login_button, "#loginSubmit"
        element :message_error, ".error_msg"

        def login(email, pass)
          email_input.gset email
          pass_input.gset pass
          login_button.gclick
        end

        def message
          message_error.text
        end
      end
    end
  end
end

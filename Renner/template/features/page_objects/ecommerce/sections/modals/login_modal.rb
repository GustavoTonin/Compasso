module Ecommerce
  module Sections
    module Modals
      class LoginModal < SitePrism::Section
        element :input_email, "#inputLogin"
        element :input_pass, "#inputPassword"
        element :login_button, ".action_1"
        # element :error_message, ''

        def login(email, pass)
          input_email.set email
          input_pass.set pass
          login_button.click
        end
      end
    end
  end
end

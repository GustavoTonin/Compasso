module Ecommerce
  module Sections
    module Headers
      class MainHeader < SitePrism::Section
        element :login_button, ".js-login-action"
        element :user_message, ".user_nav"
        element :search_input, "#searchField"
        element :search_button, ".button_search"
        element :num_cart, ".itemCountCart .num"
        element :search_form, ".rrAutosugestResult"
        elements :results, "li.rr-autosugest-term"

        def search_item(search)
          search_input.set search
          # wait_for_search_form
          sleep 3
          results.first.click
        end

        def click_login
          login_button.gclick
        end

        def num_products_cart
          num_cart.text
        end
      end
    end
  end
end

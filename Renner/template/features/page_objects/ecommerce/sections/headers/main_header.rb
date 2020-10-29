require_relative "../../sections/cart/cart_box.rb"

module Ecommerce
  module Sections
    module Headers
      class MainHeader < SitePrism::Section
        section :cart_box, Ecommerce::Sections::Cart::CartBox, ".cart"

        element :cart_btn, ".cart"
        element :price_prod_cart, ".price"
        element :login_button, ".js-login-action"
        element :search_input, "#searchField"
        elements :results, "li.rr-autosugest-term"

        def search_item(search)
          search_input.set search
          results(wait: 30)
          results.first.click
        end

        def open_cart_box
          cart_btn.hover
        end
      end
    end
  end
end

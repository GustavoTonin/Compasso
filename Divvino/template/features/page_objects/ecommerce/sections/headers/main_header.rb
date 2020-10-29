module Ecommerce
  module Sections
    module Headers
      class MainHeader < SitePrism::Section
        element :search_input, "#search_box_desktop"
        element :search_button, ".div_lupa"
        element :sign_in, "#loginAutoUser"
        element :cart_btn, ".icon-cx_vinho"
        elements :top_menu, ".top_menu_ul li"

        def message
          top_menu.first.text
        end

        def search(str)
          search_input.gset str
          search_button.gclick
        end

        def num_prod
          num_prod_cart.text
        end

        def open_cart
          cart_btn.hover
        end
      end
    end
  end
end

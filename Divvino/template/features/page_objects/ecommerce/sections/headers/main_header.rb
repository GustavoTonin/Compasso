module Ecommerce
  module Sections
    module Headers
      class MainHeader < SitePrism::Section
        element :search_input, "#search_box_desktop"
        element :search_button, ".div_lupa"
        element :sign_in, "#loginAutoUser"
        element :cart_button, ".icon-cx_vinho"
        element :cart_num, "#cartNumProducts"
        element :num_prod_cart, "#cartNumProducts"
        elements :top_menu, ".top_menu_ul"

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
      end
    end
  end
end

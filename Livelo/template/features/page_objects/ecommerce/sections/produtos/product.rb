module Ecommerce
  module Sections
    module Produtos
      class Product < SitePrism::Section
        element :add_cart_btn, ".button"
        element :points, ".active .info__box"
        elements :partners, ".partners-tab__nav-item"

        def add_cart
          add_cart_btn.gclick
        end

        def get_points
          points.text.delete(" Pontos")
        end

        def select_partner
          partners.last.gclick
        end
      end
    end
  end
end

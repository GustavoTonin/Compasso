module Ecommerce
  module Sections
    class Products < SitePrism::Section
      element :price_prod, ".product_grid_pdp .prod_wine_club_price"
      element :add_cart_button, ".btn_add_cart"
      element :image_prod, ".prod_img_container"

      def add_cart
        add_cart_button.gclick
      end

      def price
        price_prod.text
      end

      def select_prod
        image_prod.gclick
      end
    end
  end
end

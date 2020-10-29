module Ecommerce
  module Sections
    module Cart
      class CartBox < SitePrism::Section
        element :price_prod, ".price"

        def get_price
          price_prod.text
        end
      end
    end
  end
end

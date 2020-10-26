module Ecommerce
  module Sections
    module Cart
      class Cart_items < SitePrism::Section
        element :num_prod, ".quantitySelect"
        element :price, ".price_product .best_price"
        elements :prod, ".media .js-prod-link"

        def quantity_products
          num_prod.value
        end

        def item_price
          price.text
        end

        def click_prod
          prod.first.click
        end
      end
    end
  end
end

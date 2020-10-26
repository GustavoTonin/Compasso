module Ecommerce
  module Sections
    class Products < SitePrism::Section
      element :buy_button, ".buy_button"
      elements :value_products, ".item-content-wrapper .price .best_price"
      elements :products, ".item_product"
      elements :sizes, ".wrap_size .js-select-label"

      def select_first
        products.first.gclick
      end

      def product_details
        product_details.first
      end

      def select_size
        sizes.first.gclick
      end

      def value
        value_products.first.text
      end
    end
  end
end

module Ecommerce
  module Sections
    module Produtos
      class ProductPage < SitePrism::Section
        element :buy_button, ".buy_button"
        elements :sizes, ".wrap_size .js-select-label"

        def select_size
          sizes.first.gclick
        end

        def add_cart
          buy_button.gclick
        end
      end
    end
  end
end

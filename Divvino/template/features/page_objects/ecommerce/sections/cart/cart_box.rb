module Ecommerce
  module Sections
    module Cart
      class CartBox < SitePrism::Section
        element :price_prod, ".cart_prod_price"
        element :qtt_prod, "span[id^=select2-quant]"
        element :link_prod, ".s90 a"

        def get_price
          price_prod.text.delete("R$ ").tr(",", ".")
        end

        def get_link
          link_prod[:href]
        end

        def get_qtt_prods
          qtt_prod.text
        end
      end
    end
  end
end

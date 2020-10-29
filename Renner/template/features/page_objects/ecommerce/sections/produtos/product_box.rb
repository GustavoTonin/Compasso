module Ecommerce
  module Sections
    module Produtos
      class ProductBox < SitePrism::Section
        element :link_prod, ".img_product a"
        element :price_prod, ".best_price"

        def get_price
          price_prod.text.delete("R$ ").tr(",", ".")
        end

        def get_link
          link_prod[:href]
        end

        def go_prod
          link_prod.gclick
        end
      end
    end
  end
end

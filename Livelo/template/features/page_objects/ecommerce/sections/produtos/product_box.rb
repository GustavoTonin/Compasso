module Ecommerce
  module Sections
    module Produtos
      class ProductBox < SitePrism::Section
        element :box, ".product-box"
        element :link, ".product-list__element--link"

        def get_link
          link[:href]
        end

        def click_prod
          box.gclick
        end
      end
    end
  end
end

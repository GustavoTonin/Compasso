require_relative "../../sections/produtos/product_box.rb"
require_relative "../../sections/produtos/product.rb"

module Ecommerce
  module Pages
    module Produtos
      class Products < SitePrism::Page
        sections :products_boxes, Ecommerce::Sections::Produtos::ProductBox, ".product-list__element"
        section :product, Ecommerce::Sections::Produtos::Product, ".product-details"
      end
    end
  end
end

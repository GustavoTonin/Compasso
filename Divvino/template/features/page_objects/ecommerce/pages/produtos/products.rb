require_relative "../../sections/products.rb"

module Ecommerce
  module Pages
    module Produtos
      class Products < SitePrism::Page
        sections :products, Ecommerce::Sections::Products, ".product_grid"
        sections :product, Ecommerce::Sections::Products, ".product_detail_container"
      end
    end
  end
end

require_relative "../../sections/products.rb"

module Ecommerce
  module Pages
    module Produtos
      class Products < SitePrism::Page
        section :products_list, Ecommerce::Sections::Products, ".results-list"
        section :product_details, Ecommerce::Sections::Products, ".main_product_info"
        section :product, Ecommerce::Sections::Products, ".main_product"
      end
    end
  end
end

require_relative "../../sections/produtos/product_box.rb"

module Ecommerce
  module Pages
    module Produtos
      class Products < SitePrism::Page
        section :product_box, Ecommerce::Sections::Produtos::ProductBox, ".js-box-product", match: :first
      end
    end
  end
end

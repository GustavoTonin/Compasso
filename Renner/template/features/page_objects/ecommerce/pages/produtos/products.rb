require_relative "../../sections/produtos/product_box.rb"
require_relative "../../sections/produtos/product_page.rb"

module Ecommerce
  module Pages
    module Produtos
      class Products < SitePrism::Page
        section :product_box, Ecommerce::Sections::Produtos::ProductBox, ".item-content-wrapper", match: :first
        section :product_page, Ecommerce::Sections::Produtos::ProductPage, ".main_product"
      end
    end
  end
end

require_relative "../../sections/cart.rb"

module Ecommerce
  module Pages
    module Cart
      class Cart < SitePrism::Page
        section :cart_details, Ecommerce::Sections::Cart, ".carrinho_produto"
      end
    end
  end
end

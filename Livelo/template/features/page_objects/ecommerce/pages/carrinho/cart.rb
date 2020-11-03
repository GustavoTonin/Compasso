require_relative "../../sections/carrinho/cart.rb"

module Ecommerce
  module Pages
    module Carrinho
      class Cart < SitePrism::Page
        section :cart, Ecommerce::Sections::Cart::Cart, "#main"
        section :cart_list, Ecommerce::Sections::Cart::Cart, "#CC-cart-list"
      end
    end
  end
end

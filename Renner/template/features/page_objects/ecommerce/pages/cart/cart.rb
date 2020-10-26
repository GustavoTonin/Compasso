require_relative "../../sections/cart/cart_items.rb"

module Ecommerce
  module Pages
    module Cart
      class Cart < SitePrism::Page
        section :cart_items, Ecommerce::Sections::Cart::Cart_items, ".cartItems"
      end
    end
  end
end

module Ecommerce
  module Sections
    class Cart < SitePrism::Section
      element :total_price, "#footer-valor-total"
      element :name_prod, "a[id*=link]"

      def total
        total_price.text
      end

      def go_prod
        name_prod.gclick
      end
    end
  end
end

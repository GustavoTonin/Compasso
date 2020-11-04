module Ecommerce
  module Sections
    module Cart
      class Cart < SitePrism::Section
        element :link, ".cart-list__subtitle"
        element :points, ".cart-list__value"

        def get_link
          link[:href].split("?").first
        end

        def get_points
          points.text.delete(".").delete(" Pontos")
        end
      end
    end
  end
end

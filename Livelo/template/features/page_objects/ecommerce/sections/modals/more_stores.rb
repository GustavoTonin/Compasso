module Ecommerce
  module Sections
    module Modals
      class MoreStores < SitePrism::Section
        element :volt, ".group__select"
        elements :points, ".partners-info__main"
        elements :cart_btn, ".button"

        def select_volt
          volt.select("220v")
        end

        def add_cart
          cart_btn[1].gclick
        end

        def get_points
          points[1].text.delete(".").delete(" Pontos")
        end
      end
    end
  end
end

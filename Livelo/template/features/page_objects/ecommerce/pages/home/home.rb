require_relative "../../sections/headers/main_header.rb"
require_relative "../../sections/produtos/product_box.rb"

module Ecommerce
  module Pages
    module Home
      class Home < SitePrism::Page
        set_url "/"

        section :main_header, Ecommerce::Sections::Headers::MainHeader, "#cc-custom-header-points-header"
        elements :showcase, ".product__box"
        elements :links, "#a-productTitle"

        def select_showcase
          showcase.first.gclick
        end

        def get_link_showcase
          links[:href].first
        end
      end
    end
  end
end

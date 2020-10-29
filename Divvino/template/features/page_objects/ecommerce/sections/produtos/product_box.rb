module Ecommerce
  module Sections
    module Produtos
      class ProductBox < SitePrism::Section
        element :price_int, ".prod_wine_club_price .prod_price_int"
        element :price_cent, ".prod_wine_club_price .prod_price_cen"
        element :link_prod, ".prod_title_beverages a"
        element :qtt_prod, ".select2-selection__rendered"
        element :add_cart_btn, ".container_btn_add"

        def add_cart
          add_cart_btn.gclick
        end

        def get_price
          "#{price_int.text}.#{price_cent.text.delete(",")}"
        end

        def get_link
          link_prod(wait: 30)
          link_prod[:href]
        end

        def get_num_prods
          qtt_prod.text
        end
      end
    end
  end
end

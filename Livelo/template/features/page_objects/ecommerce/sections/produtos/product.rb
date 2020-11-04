require_relative "../../sections/modals/more_stores.rb"

module Ecommerce
  module Sections
    module Produtos
      class Product < SitePrism::Section
        element :add_cart_btn, ".button"
        element :points, ".active .info__box"
        element :volt, ".group__select"
        elements :partners, ".partners-tab__nav-item"

        section :modal_stores, Ecommerce::Sections::Modals::MoreStores, ".popup__body"

        def add_cart
          add_cart_btn.gclick
        end

        def get_points
          points.text.delete(".").delete(" Pontos")
        end

        def select_last_partner
          partners.last.gclick
        end

        def get_has_volts
          has_volt?
        end

        def select_volt
          volt.select("220v")
        end

        def get_has_stores
          has_modal_stores?
        end
      end
    end
  end
end

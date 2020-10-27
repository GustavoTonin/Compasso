require_relative "../../sections/headers/main_header.rb"
require_relative "../../sections/modals/login_modal.rb"

module Ecommerce
  module Pages
    module Home
      class Home < SitePrism::Page
        set_url "/"

        section :main_header, Ecommerce::Sections::Headers::MainHeader, "#header"
        section :login_modal, Ecommerce::Sections::Modals::LoginModal, "#loginModal"
      end
    end
  end
end

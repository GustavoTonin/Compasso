module Ecommerce
  module Sections
    module Headers
      class MainHeader < SitePrism::Section
        element :input_search, "#input-search"
        element :search_btn, "#span-searchIcon"

        def search(str)
          input_search.gset str
          search_btn.gclick
        end
      end
    end
  end
end

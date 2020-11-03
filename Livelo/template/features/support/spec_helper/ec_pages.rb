Dir[File.join(File.dirname(__FILE__), "page_objects/ecommerce/pages/*.rb")]
  .sort.each { |file| require file }

module Ecommerce
  module Pages
    class ECPages
      class << self
        def home
          Ecommerce::Pages::Home::Home.new
        end
      end
    end
  end
end

module Ecommerce
  module Pages
    class ECPages
      class << self
        def products
          Ecommerce::Pages::Produtos::Products.new
        end
      end
    end
  end
end

module Ecommerce
  module Pages
    class ECPages
      class << self
        def cart
          Ecommerce::Pages::Carrinho::Cart.new
        end
      end
    end
  end
end

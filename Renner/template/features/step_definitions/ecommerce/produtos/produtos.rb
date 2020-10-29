Quando("buscar por {string}") do |item|
  @main_header.search_item(item)
end

Quando("adicionar o produto no carrinho") do
  @products = $ec_pages.products

  @price_prod = @products.product_box.get_price
  @link_prod = @products.product_box.get_link

  @products.product_box.go_prod
  @products.product_page.select_size
  @products.product_page.add_cart
end

Então("deverá validar o preço do produto") do
  @cart = $ec_pages.cart
  @cart.buy_more_btn.gclick

  @main_header.open_cart_box

  @cart_box = @main_header.cart_box

  price = @cart_box.get_price

  expect(@price_prod).to eql price
end

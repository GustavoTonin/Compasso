Quando("buscar por {string}") do |item|
  @main_header.search_item(item)
end

Quando("adicionar o produto no carrinho") do
  @@price_item = @products.products_list.value

  @products.products_list.select_first

  link = @products.current_url
  link2 = link.split("/-/")

  @@link_prod = link2[0]

  @products.product_details.select_size
  @products.product_details.buy_button.gclick
end

Então("deverá mostrar {int} produto no carrinho") do |num_prod|
  num = @cart.cart_items.quantity_products
  expect(num).to have_content num_prod
end

Então("deverá validar o preço do produto") do
  price = @cart.cart_items.item_price
  expect(@@price_item).to have_content price
end

Então("deverá validar o link do produto") do
  @cart.cart_items.click_prod

  expect(@products.current_url).to have_content @@link_prod
end

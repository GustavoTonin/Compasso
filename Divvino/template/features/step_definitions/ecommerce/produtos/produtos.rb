Quando("buscar por {string}") do |str|
  @main_header.search(str)
end

Quando("adicionar o produto no carrinho") do
  @products.products.first.select_prod
  @products.product.first.add_cart

  @@link = @products.current_url
  price = @products.product.first.price
  price2 = price.split("R$")
  @@price = price2.last

  sleep 5
end

Então("deverá mostrar {int} produto no carrinho") do |num|
  @@num_prod = @main_header.num_prod
  expect(@@num_prod).to have_content num
end

Então("deverá validar o preço do produto") do
  @main_header.cart_button.gclick
  total = @cart.cart_details.total
  expect(total).to have_content @@price
end

Então("deverá validar o link do produto") do
  @cart.cart_details.go_prod
  link = @products.current_url
  expect(@@link).to eql link
end

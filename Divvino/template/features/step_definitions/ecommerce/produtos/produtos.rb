Quando("buscar por {string}") do |str|
  @main_header.search(str)
end

Quando("adicionar o produto no carrinho") do
  @products = $ec_pages.products
  @product_box = @products.product_box

  @price_product_box = @product_box.get_price
  @qtt_product_box = @product_box.get_num_prods
  @link_product_box = @product_box.get_link

  @products.product_box.add_cart
end

Então("deverá mostrar o produto no carrinho") do
  @main_header.open_cart

  @cart_box = @home.cart_section
  link_prod_cart = @cart_box.get_link

  expect(link_prod_cart).to eql @link_product_box
end

Então("deverá validar o preço e a quantidade do produto") do
  price_prod_cart = @cart_box.get_price
  qtt_prod_cart = @cart_box.get_qtt_prods

  expect(price_prod_cart).to eql @price_product_box
  expect(qtt_prod_cart).to eql @qtt_product_box
end

Quando("buscar o produto {string}") do |str|
  @main_header.search(str)
end

Quando("selecionar o primeiro produto") do
  @products = $ec_pages.products
  @product_box = @products.products_boxes.first

  @pb_link = @product_box.get_link

  @product_box.click_prod
end

Quando("adicionar ao carrinho") do
  @product = @products.product

  @product.select_partner

  @p_points = @product.get_points
  @product.add_cart
end

Então("deverá aparecer o produto e o preço no carrinho") do
  @cart = $ec_pages.cart
  @cart_list = @cart.cart_list

  link = @cart_list.get_link
  points = @cart_list.get_points

  expect(@p_points).to eql points
  expect(@pb_link).to eql link
end

Quando("buscar o produto {string}") do |str|
  @main_header.search(str)
end

Quando("selecionar o primeiro produto") do
  @products = $ec_pages.products
  @product_box = @products.products_boxes.first

  @product_box.click_prod
end

Quando("adicionar no carrinho") do
  @product = @products.product

  if @product.get_has_volts
    @product.select_volt
  end

  @p_link = @product.current_url
  @product.select_last_partner

  if @product.get_has_stores
    @modal_stores = @product.modal_stores
    @modal_stores.select_volt
    @p_points = @modal_stores.get_points
    @modal_stores.add_cart
  else
    @p_points = @product.get_points
    @product.add_cart
  end
end

Quando("selecionar primeiro produto da vitrine") do
  @products = $ec_pages.products
  @home.select_showcase
end

Então("deverá aparecer o produto e o preço no carrinho") do
  @cart = $ec_pages.cart
  @cart_list = @cart.cart_list

  link = @cart_list.get_link
  points = @cart_list.get_points
  sleep 5

  expect(@p_points).to eql points
  expect(@p_link).to eql link
end

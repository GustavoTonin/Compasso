Dado("que esteja na home") do
  @home = $ec_pages.home
  @home.load

  @main_header = @home.main_header
  @products = $ec_pages.products
  @cart = $ec_pages.cart
end

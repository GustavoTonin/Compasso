Dado("que esteja na home") do
  @home = $ec_pages.home
  @home.load

  @main_header = @home.main_header
end

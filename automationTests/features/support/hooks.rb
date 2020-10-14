Before do
  @navbar = Navbar.new
  @sidebar = Sidebar.new
  @login_page = LoginPage.new
  @perfil_page = PerfilPage.new
  @tarefas_page = TarefasPage.new
end

Before('@login') do
  @login_page.acessa
  @login_page.logar('gustavo.tonin@compasso.com.br', '123456')
end

After('@logout') do
  @navbar.logout
end
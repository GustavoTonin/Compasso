# frozen_string_literal: true

Before do
  @navbar = Navbar.new
  @sidebar = Sidebar.new
  @login_page = LoginPage.new
  @perfil_page = PerfilPage.new
  @tarefas_page = TarefasPage.new
end

Before('@login') do
  @user = { email: 'gustavo.tonin@compasso.com.br', senha: '123456' }

  @login_page.acessa
  @login_page.logar(@user[:email], @user[:senha])
end

After('@logout') do
  @navbar.logout
end

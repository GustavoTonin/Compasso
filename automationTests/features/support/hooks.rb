# frozen_string_literal: true

Before do
  @navbar = Navbar.new
  @sidebar = Sidebar.new
  @login_page = LoginPage.new
  @perfil_page = PerfilPage.new
  @tarefas_page = TarefasPage.new
end

Before('@login') do
  @user = { email: 'gustavo.tonin@compasso.com.br', pass: '123456' }
  @login_page.load
  @login_page.login(@user[:email], @user[:pass])
end

After('@logout') do
  @navbar.logout
end

at_exit do
  ReportBuilder.input_path = 'reports/cucumber.json'
  ReportBuilder.configure do |config|
    config.report_path = 'reports/cucumber_web_report'
    config.report_types = %i[json html]
    options = {
      report_title: 'Automacao QA'
    }
    ReportBuilder.build_report options
  end
end
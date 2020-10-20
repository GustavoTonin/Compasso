# frozen_string_literal: true

class Navbar < SitePrism::Page
  element :dropdown_button, '.navbar a[href*=dropdown]'
  element :logout_button, '.navbar a[href$=logout]'

  def logout
    dropdown_button.click
    logout_button.click
  end
end

class Sidebar < SitePrism::Page
  element :perfil_button, '.navigation a[href="/user_settings"]'

  def access_perfil
    perfil_button.click
  end
end

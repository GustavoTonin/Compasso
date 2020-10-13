require 'capybara'
require 'capybara/cucumber'

Capybara.configure do |config|
    config.defaul_driver = :selenium_chrome
end
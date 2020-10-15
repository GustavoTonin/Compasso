# frozen_string_literal: true

require 'capybara'
require 'capybara/cucumber'

Capybara.configure do |config|
  config.default_driver = :selenium_chrome
  config.app_host = 'localhost:5000'
end

Capybara.default_max_wait_time = 5

# frozen_string_literal: true

require 'capybara'
require 'capybara/cucumber'
require 'rspec'
require 'site_prism'

Capybara.configure do |config|
  config.default_driver = :selenium_chrome
  config.app_host = 'localhost:5000'
  Capybara.default_max_wait_time = 5
end

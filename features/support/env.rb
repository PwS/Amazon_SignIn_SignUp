# frozen_string_literal: true

# Cucumber loads this file first. Everything else in features/support is
# loaded afterwards, so shared setup belongs here.
require 'capybara/cucumber'
require 'faker'
require 'rspec/expectations'
require 'selenium-webdriver'

require_relative 'config'
require_relative 'driver'
require_relative 'pages/base_page'
Dir[File.join(__dir__, 'pages', '*.rb')].each { |file| require file }

Capybara.configure do |config|
  config.app_host = TestConfig.base_url
  config.run_server = false
  config.default_driver = TestConfig.driver
  config.javascript_driver = TestConfig.driver
  config.default_max_wait_time = TestConfig.wait_time
  config.save_path = 'reports/screenshots'
end

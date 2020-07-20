require 'capybara/cucumber'

Before do
  Capybara.default_driver = :selenium_chrome
  Capybara.app_host = 'https://www.amazon.com'
  page.driver.browser.manage.window.resize_to(1366, 780)
end


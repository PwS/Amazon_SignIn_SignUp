# frozen_string_literal: true

# Registers :chrome, :chrome_headless, :firefox and :firefox_headless.
# Selenium Manager (bundled with selenium-webdriver 4) downloads the matching
# browser driver automatically, so ChromeDriver no longer has to be installed.
module DriverFactory
  module_function

  def register_all
    %i[chrome firefox].each do |browser|
      register(browser, headless: false)
      register(browser, headless: true)
    end
  end

  def register(browser, headless:)
    name = :"#{browser}#{'_headless' if headless}"

    Capybara.register_driver(name) do |app|
      Capybara::Selenium::Driver.new(app, browser: browser, options: options_for(browser, headless))
    end
  end

  def options_for(browser, headless)
    browser == :chrome ? chrome_options(headless) : firefox_options(headless)
  end

  def chrome_options(headless)
    width, height = TestConfig.window_size
    options = Selenium::WebDriver::Chrome::Options.new
    options.add_argument("--window-size=#{width},#{height}")
    options.add_argument('--headless=new') if headless
    # Extra flags, e.g. CHROME_ARGS="--no-sandbox --disable-dev-shm-usage" inside Docker.
    ENV.fetch('CHROME_ARGS', '').split.each { |arg| options.add_argument(arg) }
    options.binary = ENV['CHROME_BINARY'] if ENV['CHROME_BINARY']
    options
  end

  def firefox_options(headless)
    width, height = TestConfig.window_size
    options = Selenium::WebDriver::Firefox::Options.new
    options.add_argument("--width=#{width}")
    options.add_argument("--height=#{height}")
    options.add_argument('-headless') if headless
    options
  end
end

DriverFactory.register_all

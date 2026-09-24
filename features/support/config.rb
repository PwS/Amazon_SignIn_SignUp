# frozen_string_literal: true

# Central place for run-time settings. Every value can be overridden with an
# environment variable so the same suite runs locally and in CI unchanged.
module TestConfig
  module_function

  def base_url
    ENV.fetch('BASE_URL', 'https://www.amazon.com')
  end

  # chrome | firefox
  def browser
    ENV.fetch('BROWSER', 'chrome').downcase.to_sym
  end

  def headless?
    ENV.fetch('HEADLESS', 'false').casecmp?('true')
  end

  def driver
    :"#{browser}#{'_headless' if headless?}"
  end

  def wait_time
    Integer(ENV.fetch('WAIT_TIME', '10'))
  end

  def window_size
    ENV.fetch('WINDOW_SIZE', '1366,780').split(',').map { |value| Integer(value) }
  end
end

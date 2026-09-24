# frozen_string_literal: true

# Attach a screenshot to the report whenever a scenario fails.
After do |scenario|
  next unless scenario.failed?

  screenshot = page.save_screenshot("#{scenario.name.gsub(/[^\w-]+/, '_')}.png") # rubocop:disable Lint/Debugger -- intentional report evidence
  attach(screenshot, 'image/png')
rescue StandardError => e
  log("Could not capture screenshot: #{e.message}")
end

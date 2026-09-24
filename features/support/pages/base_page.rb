# frozen_string_literal: true

# Common behaviour for every page object. Page objects are the only place that
# knows about selectors; step definitions talk to them in business terms.
class BasePage
  include Capybara::DSL
  include RSpec::Matchers

  def visit_page(path = '/')
    visit(path)
    self
  end

  def fill(selector, value)
    find(selector).set(value.to_s)
  end

  # Capybara waits up to default_max_wait_time for the text to appear, so no
  # manual sleeps are needed.
  def error_displayed?(message)
    has_text?(message)
  end
end

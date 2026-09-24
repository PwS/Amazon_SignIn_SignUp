# frozen_string_literal: true

# Helpers available to every step definition.
module PageHelpers
  # Memoised page objects, so a scenario reuses the same instance.
  def home_page    = @home_page ||= HomePage.new
  def sign_in_page = @sign_in_page ||= SignInPage.new
  def sign_up_page = @sign_up_page ||= SignUpPage.new
end

World(PageHelpers)

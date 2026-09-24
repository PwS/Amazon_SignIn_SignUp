# frozen_string_literal: true

Given('I am on the Amazon create account page') do
  home_page.open.go_to_sign_in.go_to_create_account
end

When('I fill in {string} with {string}') do |field, value|
  sign_up_page.fill_field(field, value)
end

When('I submit the create account form') do
  sign_up_page.submit
end

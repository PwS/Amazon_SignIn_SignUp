# frozen_string_literal: true

Given('I am on the Amazon sign-in page') do
  home_page.open.go_to_sign_in
end

When('I continue without entering an email or phone number') do
  sign_in_page.enter_email('').continue
end

When('I continue with an unregistered email') do
  # A random address that is extremely unlikely to belong to a real account.
  sign_in_page.enter_email(Faker::Internet.unique.email(domain: 'example.com')).continue
end

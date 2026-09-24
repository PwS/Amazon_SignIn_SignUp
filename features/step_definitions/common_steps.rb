# frozen_string_literal: true

Then('I should see the error message {string}') do |message|
  expect(page).to have_text(message)
end

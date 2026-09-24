# frozen_string_literal: true

class SignUpPage < BasePage
  FIELDS = {
    'name' => '#ap_customer_name',
    'email' => "input[name='email']",
    'password' => '#ap_password',
    're-enter password' => '#ap_password_check'
  }.freeze
  SUBMIT_BUTTON = '#continue'

  def fill_field(field, value)
    selector = FIELDS.fetch(field.downcase) do
      raise ArgumentError, "Unknown sign-up field '#{field}'. Known: #{FIELDS.keys.join(', ')}"
    end
    fill(selector, value)
    self
  end

  def submit
    find(SUBMIT_BUTTON).click
    self
  end
end

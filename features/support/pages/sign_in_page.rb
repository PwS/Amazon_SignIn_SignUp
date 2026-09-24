# frozen_string_literal: true

class SignInPage < BasePage
  EMAIL_FIELD     = "input[name='email']"
  CONTINUE_BUTTON = '#continue'
  CREATE_ACCOUNT  = '#createAccountSubmit'

  def enter_email(email)
    fill(EMAIL_FIELD, email)
    self
  end

  def continue
    find(CONTINUE_BUTTON).click
    self
  end

  def go_to_create_account
    find(CREATE_ACCOUNT).click
    SignUpPage.new
  end
end

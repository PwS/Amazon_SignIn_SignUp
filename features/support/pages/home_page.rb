# frozen_string_literal: true

class HomePage < BasePage
  ACCOUNT_MENU = '#nav-link-accountList'

  def open
    visit_page('/')
  end

  def go_to_sign_in
    find(ACCOUNT_MENU).click
    SignInPage.new
  end
end

Given('Login Page Amazon') do
  visit '/'
  etLogin = find('#nav-link-accountList').click
end

When('I Do Not Fill the email\/phone with email\/phone') do
  etEmail = find('#ap_email')
  etEmail.send_keys("")
end


And("I Click Button Continue") do
  btnContinue = find(:xpath,"//input[@id='continue']").click
end


Then(/^I should see the error message "([^"]*)"$/) do |error_message|
  sleep 1
end

=begin
Tag : @@UsernameNotExisting
=end


When('I Fill the email with random email') do
  etEmail = find('#ap_email')
  etEmail.send_keys("iybdqwuib123@gmail.com")
end


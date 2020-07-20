Given('SignUp Page Amazon') do
  visit '/'
  etLogin = find('#nav-link-accountList').click
  sleep 1
  etRegister = find('#createAccountSubmit').click
end

And("I Click Button Create Account") do
  btnRegister = find(:xpath, "//input[@id='continue']").click
end

When("I Do Not Fill the component value") do
  ''
end

When("I Only Fill the Your Name component value") do
  etYourName = find(:id,'ap_customer_name')
  etYourName.send_keys("test")
end

Then("I Cant Create the Account") do
  sleep 1
end






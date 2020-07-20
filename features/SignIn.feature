@SignIn
Feature: SignIn
  In order to ensure Login Functionality works

  #Background: Given Login Page Amazon

  @BlankUsername
  Scenario: User is not logged in
    Given Login Page Amazon
    When I Do Not Fill the email/phone with email/phone
    And I Click Button Continue
    Then I should see the error message "Enter your email or mobile phone number"

  @UsernameNotExisting
  Scenario:  User enters not existing email
    Given Login Page Amazon
    When I Fill the email with random email
    Then I should see the error message "There was a problem We cannot find an account with that email address"

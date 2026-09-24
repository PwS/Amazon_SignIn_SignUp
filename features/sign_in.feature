@sign_in
Feature: Sign in
  As an Amazon customer
  I want clear feedback when my sign-in details are wrong
  So that I know how to fix them

  Background:
    Given I am on the Amazon sign-in page

  @blank_email
  Scenario: Continue without entering an email or phone number
    When I continue without entering an email or phone number
    Then I should see the error message "Enter your email or mobile phone number"

  @unregistered_email
  Scenario: Continue with an email that has no account
    When I continue with an unregistered email
    Then I should see the error message "We cannot find an account with that email address"

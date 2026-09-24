@sign_up
Feature: Sign up
  As a new Amazon customer
  I want the registration form to validate my details
  So that I cannot create an account with missing information

  Background:
    Given I am on the Amazon create account page

  @blank_form
  Scenario: Submit the form without filling anything in
    When I submit the create account form
    Then I should see the error message "Enter your name"

  @name_only
  Scenario Outline: Submit the form with only a name
    When I fill in "name" with "<name>"
    And I submit the create account form
    Then I should see the error message "<error>"

    Examples:
      | name      | error                                   |
      | Test User | Enter your email or mobile phone number |

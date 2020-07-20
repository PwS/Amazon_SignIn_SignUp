@SignUp
Feature: SignUp
  In order to ensure Sign Up Functionality works

  #Background: Given SignUp Page Amazon

  @BlankComponent
  Scenario: Registered With Blank Value
    Given SignUp Page Amazon
    When I Do Not Fill the component value
    And I Click Button Create Account
    Then I Cant Create the Account

  @FillTheYourNameOnly
  Scenario:  Enter Only YourName
    Given SignUp Page Amazon
    When I Only Fill the Your Name component value
    And I Click Button Create Account
    Then I Cant Create the Account

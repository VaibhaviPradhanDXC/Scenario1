
Feature: User login
  As a registered user
  I want to sign in to my account
  So that I can access my dashboard
  Background:
    Given the login page is open
  @smoke @positive
  Scenario: Successful login with valid credentials
    Given a user exists with email "alice@example.com" and password "ValidPass123!"
    When the user enters email "alice@example.com"
    And the user enters password "ValidPass123!"
    And the user clicks "Sign in"
    Then the user should be redirected to the dashboard
    And a welcome message should display "Welcome, Alice"
  @negative
  Scenario: Login fails with wrong password
    Given a user exists with email "alice@example.com" and password "ValidPass123!"
    When the user enters email "alice@example.com"
    And the user enters password "WrongPassword!"
    And the user clicks "Sign in"
    Then an error message should display "Invalid email or password"
    And the user should remain on the login page
  @negative @validation
  Scenario Outline: Login fails with invalid email format
    When the user enters email "<email>"
    And the user enters password "ValidPass123!"
    And the user clicks "Sign in"
    Then an error message should display "<error>"
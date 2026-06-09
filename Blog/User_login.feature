Feature: User login
  As a registered user
  I want to sign in to my account
  So that I can access my dashboard
  Background:
    Given the login page is open
  @smoke1 @positive @abc1 @water
  Scenario: Successful login with valid credentials
    Given a user exists with email "alice@example.com" and password "ValidPass123!"
    When the user enters email "alice@example.com"
    And the user enters password "ValidPass123!"
    And the user clicks "Sign in"
    Then the user should be redirected to the dashboard
    And a welcome message should display "Welcome, Alice"

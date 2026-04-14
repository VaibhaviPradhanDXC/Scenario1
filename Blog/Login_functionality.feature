@smoke @auth
Feature: Login functionality

  Background:
    Given user is on login page

  @positive @sanity
  Scenario: Successful login with valid credentials
    When user enters username "validUser"
    And user enters password "validPass"
    And user clicks login button
    Then user should be redirected to dashboard

  @negative @regression
  Scenario: Login with invalid password
    When user enters username "validUser"
    And user enters password "wrongPass"
    And user clicks login button
    Then error message "Invalid credentials" should be displayed

  @data-driven @regression
  Scenario Outline: Login with multiple users
    When user enters username "<username>"
    And user enters password "<password>"
    And user clicks login button
    Then login result should be "<result>"

    @valid
    Examples:
      | username  | password  | result  |
      | user1     | pass1     | success |

    @invalid
    Examples:
      | username  | password  | result  |
      | user2     | wrong     | failure |
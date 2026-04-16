@coffee
@valid
Feature: Coffee Shops should be closed on Tuesdays in December
  
Background: Testing
  @coffee
  Scenario:
    Given the customer has placed new order
    When the customer requests for the coffee order
    And coffee should
    Then customers should expect an error message to be displayed
  
  @coffee 
  Scenario Outline:Login with multiple users
    When user enters username "<username>"
    And user enters password "<password>"
    And user clicks login button
    Then login result should be "<result>"
    
    @valid
    @coffee
    Scenario: Login with multiple users
        When user enters username "<username>"
        And user enters password "<password>"
        And user clicks login button
        Then login result should be "<result>"
        
    

    
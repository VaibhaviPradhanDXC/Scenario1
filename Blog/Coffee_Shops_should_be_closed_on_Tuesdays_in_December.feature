Feature: Coffee Shops should be closed on Tuesdays in December
  

  @coffee
  
  Scenario:
    Given the customer has placed new order
    When the customer requests for the coffee order
    And coffee should
    Then customers should expect an error message to be displayed
  
    
    

Feature: Checkout
  
  Scenario: User completes purchase with valid card
    Given a logged-in user with items in cart
    When they pay with a valid card
    Then the order is confirmed
    
      
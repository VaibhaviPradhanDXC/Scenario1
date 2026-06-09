@checkout @smoke
Feature: Checkout
  @critical @happypath
  Scenario: User completes purchase with valid card
    Given a logged-in user with items in cart
    When they pay with a valid card
    Then the order is confirmed
   @critical 
  Scenario: User completes purchase with invalid card
    Given a logged-in user with items in cart
    When they pay with a invalid card
    Then the order is not confirmed
    
    
@checkout @smoke @unittag
Feature: Checkout
  @critical @happypath
  Scenario: User completes purchase with valid card
    Given a logged-in user with items in cart
    When they pay with a valid card
    Then the order is confirmed
   @critical @githubtag
  Scenario: User completes purchase with invalid card
    Given a logged-in user with items in cart
    When they pay with a invalid card
    Then the order is not confirmed
    @githubtag
    Scenario: User never paid
      Given User completes
      When not user given
      Then everything bla bla
    

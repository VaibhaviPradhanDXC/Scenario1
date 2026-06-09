Feature: Shopping cart management
  As an online shopper
  I want to manage items in my cart
  So that I can buy the products I need
  Background:
    Given I am on the product catalog page
    And my cart is empty
  @smoke2 @positive2 @github123 @rain
  Scenario: Add a single product to cart
    When I add product "Wireless Mouse" priced at "$29.99" to the cart
    Then the cart should contain 1 item
    And the cart total should be "$29.99"
    And the cart icon should show badge count "1"

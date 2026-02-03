Feature:
  Some interesting description here

  Scenario: Checkout process for a new user with multiple items
    
  Given I am on the homepage
  And I search for "Cucumber"
  And I click on the first result
  And I add it to the cart
  And I search for "Tomato"
  And I add it to the cart
  And I click on the cart icon
  And I click checkout
  And I enter my address "123 Street"
  And I enter my credit card "1234-5678"
  When I click place order
  Then I should see "Order Successful"
  And I should receive a confirmation email
  And my inventory should be reduced
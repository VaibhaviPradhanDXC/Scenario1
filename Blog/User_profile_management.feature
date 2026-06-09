
Feature: User profile management
  As an authenticated user
  I want to update my profile
  So that my account information stays current
  
  Background:
    Given I am logged in as "alice@example.com"
    
  @smoke @positive @githubtag @unittag @james @sharing
  Scenario: Update display name successfully
    Given my current display name is "Alice"
    When I update my display name to "Alice Smith"
    Then my profile should show "Alice Smith"
    And I should see a success message "Profile updated"
@james @sharing
Scenario: Testing 
  When xyz
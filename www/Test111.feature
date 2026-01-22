Feature:
  As a new user
  I want to log in to the website 
  So that the system can remember my data



  Scenario:
     Given A user brings up the login pop-up
    When A user clicks Sign-in
    And A user enters a valid email <email> and password <password>
    And A user clicks Sign-in
    Then A user should be successfully logged into the site

# feature/register.feature
Feature: Register
  As a potential member
  So that can see information about movies that interest me
  I want register for the RottenPotatoes application
  
Scenario: Register
  Given I am on the RottenPotatoes Landing Page
  And I press "Register with GitHub"
  Then I am on the RottenPotatoes new Profile page
  And I should see message "Welcome Tester Suny! You have signed up via GitHub."

Scenario:  Can't Register without SUNY ID
  Given I am on the RottenPotatoes Landing Page
  And I press "Register with GitHub"
  Then I should see message "Only Students and Staff belonging to SUNY Binghamton can register for this app"
# features/login.feature

Feature: Register
  As a registered member
  So that can see information about movies that interest me
  I want to login to the RottenPotatoes application

Background: profiles in database

  Given the following profiles exists:
  | primary_language|secondary_language|favorite_movie|worst_movie|favorite_genre|user_id|
  | English         | Music            | Blade Runner |Ishtar     |SciFi         |       |    

@omniauth_test1
Scenario: login
  Given I am on the RottenPotatoes Landing Page
  And I press "Register or Login with GitHub"
  Then I will see "Welcome back Tester SUNY! You have signed in via github."  
  And I will see the RottenPotatoes Home Page
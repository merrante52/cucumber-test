Feature: Login to GL

Scenario: log into glstock images
	Given I am on the GL homepage
  And I click the Login link
	When I type in my username and password
	And I click login
	Then I should be logged in

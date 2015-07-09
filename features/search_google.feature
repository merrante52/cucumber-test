Feature: Find the GameSparks Website

Scenario: Search for the website
	Given I am on the Google homepage
	Then I will search for "gl stock"
	Then I should see "GL Stock Images"

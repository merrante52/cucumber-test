Feature: Login to mygraybar

Scenario: Log into mygraybar
  Given I am on the mygraybar homepage
  And I type in my graybar username and password
  And I click LOG ON
  Then I should be logged in to graybar

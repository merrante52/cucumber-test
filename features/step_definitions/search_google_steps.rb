Given(/^I am on the Google homepage$/) do
  visit "https://google.com"
end

Then(/^I will search for "([^"]*)"$/) do |arg1|
  fill_in :q, with: arg1
end

Then(/^I should see "([^"]*)"$/) do |arg1|
  expect(page).to have_content(arg1)
end


Given(/^I am on the GL homepage$/) do
  visit "https://glstockimages.com"
end

Given(/^I click the Login link$/) do
  click_link "Log In"
end

When(/^I type in my username and password$/) do
  fill_in "Username", with: ENV['GL_USERNAME']
  fill_in "Password", with: ENV['GL_PASSWORD']
end

When(/^I click login$/) do
  click_button "Login"
end

Then(/^I should be logged in$/) do
  expect(page).to have_content("Logged in!")
end

Given(/^I am on the mygraybar homepage$/) do
    visit "https://mygraybar.graybar.com"
end

Given(/^I type in my graybar username and password$/) do
  fill_in "j_username", with: ENV['GRAYBAR_USERNAME']
  fill_in "j_password", with: ENV['GRAYBAR_PASSWORD']
end

Given(/^I click LOG ON$/) do
   click_on "Log On"
end

Then(/^I should be logged in to graybar$/) do
  expect(page).to have_content("Michael Errante")
end

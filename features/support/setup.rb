require 'capybara/rspec'
require 'capybara/cucumber'

Capybara.register_driver :selenium do |app|
  Capybara::Selenium::Driver.new(app, :browser => :chrome)
end

Capybara.default_driver = :selenium

RSpec.configure do |c|
  c.before(:each)   { sleep 1 }
end

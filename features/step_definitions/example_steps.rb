require "watir-webdriver"
require "rspec"

Given(/^I have entered "([^"]*)" into the query$/) do |term|
  @browser.goto "google.com"
  @browser.text_field(:name => "q").set term
end

When(/^I click search/) do
  @browser.button.click
end

Then(/^I should see some results for "([^"]*)"$/) do |term|
  @browser.div(:id => "resultStats").wait_until_present
  @browser.div(:id => "resultStats").exists?.should be true
  @browser.div(:id => "search").text.include?("#{term}").should be true
end
require "watir-webdriver"
require "rspec"

Given(/^I am on the Google home page$/) do
  @google_home_page = GoogleHomePage.new(@browser)
  @google_home_page.visit
end

When(/^I search for "([^"]*)"/) do |term|
  @google_result_page = @google_home_page.search_for term
end

Then(/^I should see some results for "([^"]*)"$/) do |term|
  expect(@google_result_page.results_for term).to be true
end
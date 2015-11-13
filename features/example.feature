Feature: In order to use Google users must be able to search for content
  Scenario: Search for a term
    Given I am on the Google home page
    When I search for "watir"
    Then I should see some results for "watir"
Feature: Laravel 5 page
  As a behat tester
  In order use behat mink correctly
  I want to see the homepage to make sure visit does not throw a show_cmd exception

  Scenario: Laravel startup page displaying correctly
    Given I am on the homepage
    Then show last response
    Then I should see "Laravel 5"
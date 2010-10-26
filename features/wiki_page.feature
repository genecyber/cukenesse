Feature: Wiki page
  In order to manage my wiki
  As a tester
  I want to be able to edit my wiki pages
  
  
  Background:
    Given I instantiate a new wiki on the "~/fixtures/wikis/basic/" folder

      Scenario: Gets the content of a wiki page
        When I select the "index" page
        Then the content for that page should be:
          """
          This is the index file for the Basic Wiki Fixture
          =================================================

          This file does not have any cucumber features in it.
          """
      
      Scenario: Converts a wiki page markdown content to html
        When I select the "index" page
        Then the html for that page should be:
          """
          <h1>This is the index file for the Basic Wiki Fixture</h1>

          <p>This file does not have any cucumber features in it.</p>
          """
  
      Scenario: A page with no cucumber features returns an empty list when it tries to retrieve features
        When I select the "index" page
        Then the list for cucumber features should be empty
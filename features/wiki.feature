Feature: Wiki
  In order to edit the wiki
  As a tester
  I want to be able see wiki and cucumber information from the markdown files
  
  Background:
    Given I instantiate a new wiki on the "~/fixtures/wikis/basic/" folder

  
    Scenario: Can create a new wiki given a path    
      Then the new wiki's path should be "~/fixtures/wikis/basic/"

    Scenario: List only markdown files on a wiki folder
      Then the wiki should recognize the following markdown files:
        | name           |
        | index.md       |
        | one_feature.md |
    
    Scenario: Recognize pages on wiki folder
      Then the wiki should recognize the following pages:
        | name        |
        | index       |
        | one_feature |

    Scenario: Returns wiki pages from the list of pages
      Then I should get wiki pages with the following relative paths:
        | name        | path                                  |
        | index       | ~/fixtures/wikis/basic/index.md       |
        | one_feature | ~/fixtures/wikis/basic/one_feature.md |



  
  
  
      
  
  
  
  
  
  
  
  
  
  

  

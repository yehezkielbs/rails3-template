@javascript
Feature: sample management on SPA
  In order to store samples
  A user
  Should be able to store information about a sample

  Scenario: successful creation
    Given I'm on the new sample page on SPA
    When I add a new sample
    And I'm on the samples list page on SPA
    Then I should see the page for my newly created sample

  Scenario: successful update
    Given the following sample exist:
      | name | a sample name |
    And I'm on the sample edit page on SPA
    When I update the sample
    And I'm on the samples list page on SPA
    Then I should see the page for my edited sample

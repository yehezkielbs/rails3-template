Feature: sample management
  In order to store samples
  A user
  Should be able to store information about a sample

  Scenario: successful creation
    Given I'm on the new sample page
    When I add a new sample
    Then I should see the page for my newly created sample
    Then I should see "Sample was successfully created."

  Scenario: successful update
    Given the following sample exist:
      | name | a sample name |
    And I'm on the sample edit page
    When I update the sample
    Then I should see the page for my edited sample
    Then I should see "Sample was successfully updated."

Feature: Super Environments for Developers
  In order to securely configure my applications
  As a Ruby application developer
  I want to intuitively specify my environment variables
  And have them automatically loaded

  Scenario: Load a Project Environment
    Given I am working on a Ruby application
    And I have configured some environment variables
    When I invoke SENV in my project
    Then I can access the variables

  Scenario: Load a Project Environment with Defaults
    Given I am working on a Ruby application
    And I have configured some default environment variables
    When I invoke SENV in my project
    Then I can access the variables

Feature: Calculator
  As a budding developer
  I want to experiment with Cucumber
  And add some numbers together
  Scenario: Add two numbers together
    Given I have a calculator
    And I have the number 5
    And I have the number 7
    When I add them together
    Then I should see 12 on the terminal

  Scenario: Subtract two numbers
    Given I have a calculator
    And I have the number 9
    And I have the number 4
    When I subtract them
    Then I should see 5 on the terminal

  Scenario: Multiply two numbers
    Given I have a calculator
    And I have the number 9
    And I have the number 4
    When I multiply them
    Then I should see 36 on the terminal

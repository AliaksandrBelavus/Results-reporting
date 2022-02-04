@smoke
Feature: Home Page Title

Scenario: Page title
    Given I open "https://www.porsche.com/uk/" url
    Then Page title should be "Porsche Cars Great Britain - Dr. Ing. h.c. F. Porsche AG - Porsche Great Britain"
    When I wait "5" seconds

Scenario: Model section
    Given I open "https://www.porsche.com/uk/" url
    Then Page have "Models" section
    When I wait "5" seconds

@so
Scenario Outline: Page Titles <URL>
    Given I open "<URL>" url
    Then Page title should be "<Title>"
    When I wait "5" seconds 

    Examples:
        | URL                               | Title                                              |
        | https://www.porsche.com/germany/  | Dr. Ing. h.c. F. Porsche AG - Porsche Deutschland  |
        | https://www.porsche.lt/           | Porsche - Porsche Lietuva                          |
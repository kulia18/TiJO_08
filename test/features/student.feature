Feature: Text filter
  Scenario: Poprawa(Search)
    When I browse to the "/"
    When I enter "knapp" into "input.search" field
    Then the css element ".table tbody tr td" should contain the text "Knapp"
    Then I should see "Knapp" in "firstName" column in row "1" of "student.table" table
    When I enter "27" into "input.search" field
    Then the css element "td:nth-of-type(3)" should contain the text "27"
    Then I should see "good.burnett@undefined.tv" in "email" column in row "1" of "student.table" table

  Scenario: Phone number search
    When I browse to the "/"
    When I enter "99" into "input.phone" field
    Then the css element "td:nth-of-type(2)" should contain the text "Ryan"
    Then I should see "Rose" in "lastName" column in row "2" of "student.table" table
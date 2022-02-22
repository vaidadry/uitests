@android @iOS
Feature: LoginFragment

  Scenario Outline: Login credentials stack changes according to login type
    Given "LoginFragment" screen is presented
    And "horizontalSelector" component is visible

    When Segmented control section "<section>" is selected
    Then Text "<usernameLabel>" is "visible"
    And Text "Personal code" is "<visible1>"
    And Text "For users who have previously onboarded with the mobile app." is "<visible2>"

    @devLT @devLV @devEE
    Examples:
      | section   | usernameLabel          | visible1    | visible2    |
      | Smart-ID  | Internet bank Username | visible     | not visible |
      | Code      | Internet bank Username | not visible | not visible |
      | Other     | Username               | visible     | visible     |

    @devLT @devEE
    Examples:
      | section   | usernameLabel          | visible1    | visible2    |
      | Mobile-ID | Internet bank Username | visible     | not visible |
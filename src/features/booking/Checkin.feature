Feature: Check in
    * Checking in require orderId, roomId
    * orderId (int)
    * roomId (int)
  Background:
    Given the Hotelier has already logged in
    And the Hotelier is on the order management page

  Scenario Outline: Hotelier sets room condition as "check in"
    Given the orders on the order management page
    When the Hotelier view the order's detail with <orderId>
    And the Hotelier set the room with <roomId> condition as "check in"
    Then the room condition will be set to "check in"

    Examples:
      | orderId | roomId |
      | 37334   | 5      |
      | 6734    | 9      |
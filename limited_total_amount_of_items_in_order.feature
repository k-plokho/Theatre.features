Feature: The limited total amount of items in one order
  In order to protect the system of misuse
  As a ticket seller
  I want to limit the total amount of items in one order (minimum - 1 item, maximum - 10 items)

  Scenario: Selecting 10 seats
    Given the page 'Seat Selection' is opened
    When I select 9 available seats on the scheme by clicking on them
    Then the color of the seats becomes red
    When I select 10th available seat on the scheme by clicking on it
    Then the color of the seat becomes red
    And the other unselected seats become not available for selecting  
  
  Scenario: Selecting 11 seats
    Given the page 'Seat Selection' is opened
    When I select 10 available seats on the scheme by clicking on them
    Then the color of the seats becomes red
    And the other not selected seats becomes not available for selecting  
    When I click on any not selected seat
    Then the message concerning impossibility of selection more than 10 seats is displayed
  
  Scenario: Adding nothing to the cart
    Given the page 'Seat Selection' is opened
    And there are no seats selected
    And the button 'Add' is inactive
    When I click on the button 'Add'
    Then the message concerning necessity of selection at least 1 seat is displayed

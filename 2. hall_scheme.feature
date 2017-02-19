Feature: Hall scheme
  In order to select the seats for the show tickets of which i want to buy
  As a customer
  I want hall scheme in the page 'Seat Selection'
  
  Scenario: Selecting seat
    Given the page 'Seat Selection' is opened
    When I select the available seat on the scheme by clicking on it
    Then the color of the seat becomes red
    And for other users the color of the seat becomes light grey
    And the button 'Add to cart' becomes active
     
  Scenario: Unselecting the previously selected seat by the user
    Given the page 'Seat Selection' is opened
    When I select the available seat on the scheme by clicking on it
    Then the color of the seat becomes red
    And for other users the color of the seat becomes light grey
    And the button 'Add to cart' becomes active
    When I click on this seat again 
    Then the seat changes to its previous color for all the users
    And the button 'Add to cart' becomes inactive
      
  Scenario: Unselecting the previously selected seat automatically if there's no user activity
    Given the page 'Seat Selection' is opened
    When I select the available seat on the scheme by clicking on it
    Then the color of the seat becomes red
    And for other users the color of the seat becomes light grey
    And the button 'Add to cart' becomes active
    When there's no activity from me on the page for 3 minutes
    Then the seat changes to its previous color for all the users
    And the button 'Add to cart' becomes inactive     

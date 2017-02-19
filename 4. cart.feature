Feature: The cart
  In order to manage my order
  As a customer
  I want to have the cart
  
  Scenario: Adding one item to the cart
    Given the page 'Seat Selection' is opened
    When I select the available seat on the scheme by clicking on it
    Then the color of the seat becomes red
    And for other users the color of the seat becomes light grey
    And the button 'Add to cart' becomes active
    When I click on the button 'Add to cart'
    Then the seat I selected is appeared as the item in the cart
    And the total sum to pay for the order equals the price of the seat added to the cart

  Scenario: Adding second item to the cart
    Given the page 'Seat Selection' is opened
    And the cart already contains one item for 80 hrn
    And the total sum to pay for the order is 80 hrn
    When I select another available seat for 150 hrn on the scheme by clicking on it
    Then the color of the seat becomes red
    And for other users the color of the seat becomes light grey
    When I click on the button 'Add to cart'
    Then the seat I selected is appeared as the item in the cart
    And the total sum to pay for the order is 230 hrn


  Scenario: Deleting one item from the cart
    Given the page 'Seat Selection' is opened
    And the cart already contains two items:
      | item       | price   |
      | 1st ticket | 80 hrn  |
      | 2nd ticket | 150 hrn |
    And the total sum to pay for the order is 230 hrn
    When I click on button 'Delete' next to the 2nd item
    Then this item disappears from the cart
    And the total sum to pay for the order becomes 80 hrn
    And the corresponding seat on the scheme becomes available to select

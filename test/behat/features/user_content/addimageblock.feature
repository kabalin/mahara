@javascript @core @blocktype @blocktype_addimageblock
Feature: Creating a new image block on a page
    in order to check that the image is visible
    after it is created

Background:
    Given the following "users" exist:
     | username | password | email | firstname | lastname | institution | authname | role |
     | UserA | Kupuhipa1 | UserA@example.org | Angela | User | mahara | internal | member |

     And the following "pages" exist:
     | title | description | ownertype | ownername |
     | Page UserA_01 | Page 01| user | UserA |


Scenario: Create Image block
    Given I log in as "UserA" with password "Kupuhipa1"
    And I choose "Pages and collections" in "Portfolio" from main menu
    And I click on "Page UserA_01" panel menu
    And I click on "Edit" in "Page UserA_01" panel menu
    And I follow "Image"
    And I press "Add"
    Then I should see "Image: Configure"
    And I set the field "Block title" to "Image Block 1"
    And I follow "Image"
    And I attach the file "Image1.jpg" to "File"
    Then I should see "Image - Image1.jpg"
    And I set the field "Show description" to "1"
    And I press "Save"
    And I scroll to the top
    And I follow "Display page"
    And I should see "Image1.jpg"

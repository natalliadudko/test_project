
Scenario: Visual test of context element

Given I am on the main application page
When I click on an element with the text 'Log in'
When I login as a registered user
When I wait until element located `By.xpath(//*[@href='https://trello.com/b/1x4Uql2u/project-management'])` appears
When I click on an element by the xpath '(//*[@href='https://trello.com/b/1x4Uql2u/project-management'])'
When I wait until the page title contains the text 'Project Management'
When I change context to the page
When I COMPARE_AGAINST baseline with `Project1` ignoring:
|ELEMENT            |AREA                  |ACCEPTABLE_DIFF_PERCENTAGE|
|By.xpath(.//header)|By.cssSelector(footer)|5                         |
When I click on an element with the text 'Create'
When I click on an element with the text 'Create board'
When I wait until element located `By.xpath(//*[@data-test-id='header-create-menu-popover'])` appears
When I change context to element located `By.xpath(//*[@data-test-id='header-create-menu-popover'])`
When I compare_against baseline with `Create-board1` ignoring:
|ELEMENT            |AREA                  |ACCEPTABLE_DIFF_PERCENTAGE|
|By.xpath(.//header)|By.cssSelector(footer)|10                         |

Scenario: Create ‘UI controls (any) validation’ scenario
Given I am on the main application page 
When I click on an element by the xpath '(//span[@class='_13fwAio4RLr1IF _1n_XZaC3nVFH_x' and text()='Boards'])'
When the condition `#{eval("<div class>"!="board-tile")}` is true I do
|step|
| When I click on an element by the xpath '(//*[@class='board-tile-details is-badged'])'|

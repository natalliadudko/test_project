
Scenario: Visual test of context element

Given I am on the main application page
When I click on an element with the text 'Log in'
When I enter '${userEmail}' in a field by the xpath '(//*[@id='user'])'
When I click on an element by the xpath '(//*[@id='login'])'
When I wait until element located `By.xpath(//*[@name='password'])` appears
When I enter '${userpassword}' in a field by the xpath '(//*[@name='password'])'
When I click on an element with the text 'Log in'
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
When I compare_against baseline with `Create-board` ignoring:
|ELEMENT            |AREA                  |ACCEPTABLE_DIFF_PERCENTAGE|
|By.xpath(.//header)|By.cssSelector(footer)|5                         |

Scenario: Visual test of context element

Given I am on the main application page
When I wait until element located `By.xpath(//*[@href='https://trello.com/b/LGHXvZNL/kanban-template'])` appears
When I click on an element by the xpath '(//*[@href='https://trello.com/b/LGHXvZNL/kanban-template'])'
When I wait until element located `By.xpath(//*[@id='trello-root'])` appears
When I change context to the page
When I COMPARE_AGAINST baseline with `Kanban` ignoring:
|ELEMENT            |AREA                  |ACCEPTABLE_DIFF_PERCENTAGE|
|By.xpath(.//header)|By.cssSelector(footer)|10      |
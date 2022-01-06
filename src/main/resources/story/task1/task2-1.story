Scenario: Verify sign up form

Given I am on the main application page
When I click on an element by the xpath '(//*[@href='/signup' and @class='btn btn-sm bg-primary text-white font-weight-bold'])'
When I enter '<email>' in a field by the xpath '(//*[@id='email'])'
When I click on an element by the xpath '(//*[@id='signup-submit'])'
When I wait until an element with the name 'displayName' appears
When I enter '<fullName>' in a field by the xpath '(//*[@id='displayName'])'
When I click on an element with the text 'Sign up'
Then the page title contains the text 'Sign up - Log in'
Examples:
|email                             |fullName|
|#{generate(Internet.emailAddress)}|#{generate(Name.fullName)}|
|#{generate(Internet.emailAddress)}|#{generate(Name.fullName)}|

Scenario: Use API for Trello Board creation

When I send HTTP POST to the relative URL '/1/boards/?key=1cdcb11a8f528d08feda743808d0339f&token=424695bf163e094aa9395d31add2e4faf156dc84a4a5349ebf34c0829031995c&name=Board2'
Then the response code is equal to '200'


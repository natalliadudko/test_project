Scenario: Creating account and adding to shopping card

Given I am on a page with the URL 'https://www.walmart.com'
When I hover a mouse over a link with the text 'Account'

When I click on a button with the name 'Create an account'
When I enter '#{generate(Name.firstName)}' in a field with the name 'firstName'
When I enter '#{generate(Name.lastName)}' in a field with the name 'lastName'
When I enter '#{generate(Internet.emailAddress)}' in a field by the xpath '(//*[@id='email-su'])'
When I enter '#{generate(regexify '[a-z]{5}[A-Z]{2}[1-9]{1}')}' in a field by the xpath '(//*[@id='password-su'])'
When I click on an element by the xpath '(//*[@type='submit'])'

When I click on an element by the xpath '(//*[@link-identifier='walmartLogo'])'
When I enter 'Brussels sprouts' in a field with the name 'q'
When I click on a button with the name 'Search icon'
When I click on a button with the name 'Add to cart - Brussels Sprouts, 1 lb Bag'
When I click on an element by the xpath '(//*[@class='ld ld-Cart white'])'
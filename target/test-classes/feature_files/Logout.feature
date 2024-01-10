@TutorialsNinjaLogout
Feature: Logout functionality of TutorialsNinja

@LoogingOut

Scenario: Logging out of Account
Given User navigates to LoginPage
When User enters validemail 'rolyda1@yahoo.com' into email textbox field
And User enters validpassword 'Ayana123' into password textbox field
And User clicks on Login button
Then user is navigating to Accountpage
When User click on My Account dropdown
And  User clicks on Logout option
Then User will be navigated to AccountLogoutPage
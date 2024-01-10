@TutorialsNinjaRegister
Feature: Register functionality of TutorialsNinja

  @MandatoryFields
  Scenario: Register with mandatory fields
  Given User navigates to RegisterPage
    When User enters below mandatory fields
    |firstname 			| Roly			    |
    |lastname				| Chakma 				|
    |telephone			| 9173457041 		|
    |password				| Ayana@12345 	|
    |confirmpassword| Ayana@12345	  |
   
    And User selects PrivacyPolicy checkbox
    When User clicks on Continue button
    Then User account gets created successfully


 @AllFields
  Scenario: Register with all fields
  Given User navigates to RegisterPage
    When User enters below all fields
    |firstname 			| Roly			  |
    |lastname				| Chakma			|
    |telephone			| 9173457041 	|
    |password				| Ayana1234 	|
    |confirmpassword| Ayana1234 	|
    And User selects Yes for newsletter
    And User selects PrivacyPolicy checkbox
    When User clicks on Continue button
    Then User account gets created successfully
    
 
 
  @DuplicateEmail
  Scenario: Register with existing email
  Given User navigates to RegisterPage
    When User enters below all fields with existing email
    |firstname 			| Roly 							|
    |lastname				| Chakma						|
    |email 					| rolyda1@yahoo.com |
    |telephone			| 9173457041				|
    |password				| Ayana123 					|
    |confirmpassword| Ayana123 					|
    And User selects Yes for newsletter
    And User selects PrivacyPolicy checkbox
    When User clicks on Continue button
    Then User gets warning message of duplicate email  
 
 
  @NoFields
  Scenario: Register with no fields
  Given User navigates to RegisterPage
    When User clicks on Continue button
    Then User gets warning message for mandatory fields
    
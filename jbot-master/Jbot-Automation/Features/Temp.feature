@All
@Temp
Feature: tempscen

@VerifyPasswordChallengeQuestionMax+1
Scenario: T 201.6.6 On the Account Settings Screen, Security tab, enter max+1 characters for Password Challenge Answer and click the Save and Exit button. Verify validator error message is displayed. Print Screen.
Given The user Opened the AUT.
	 And the user waits for the page to load.	
	Then The user enters "Username".
	Then The user clicks on "SignIn" Button.
	And The user waits for "2" Seconds.
    Then The user enters "Password".
    Then The user clicks on "SignIn" Button.	
 	And The user waits for "45" Seconds.
 	Then the user clicks on "Account Image" link.
	And The user waits for "5" Seconds.
	Then the user clicks on "Account Settings" link.
    And The user waits for "5" Seconds. 
    Then the user clicks on "Security" link.
    And The user waits for "2" Seconds. 
    #And The user waits for "5" Seconds. 
    Then The user enters "passwordchallengemax+1".
	Then The user clicks on "Save and Exit" Button.
    And The user waits for "2" Seconds.
    Then the user asserts value of "Security Error" with "Password Challenge Answer - must be between 3 and 50 characters".
    
@VerifyPasswordChallengeMaxLength
Scenario: T 201.6.7 On the Account Settings Screen, Security tab, enter max characters for Password Challenge Answer and click the Save and Exit button. Verify Password Challenge is successfully set. Print Screen.
Given The user Opened the AUT.
     And the user waits for the page to load.	
	Then The user enters "Username".
	Then The user clicks on "SignIn" Button.
	And The user waits for "2" Seconds.
    Then The user enters "Password".
    Then The user clicks on "SignIn" Button.	
 	And The user waits for "45" Seconds.
 	Then the user clicks on "Account Image" link.
	And The user waits for "5" Seconds.
	Then the user clicks on "Account Settings" link.
    And The user waits for "5" Seconds. 
    Then the user clicks on "Security" link.
    And The user waits for "2" Seconds. 
    #And The user waits for "5" Seconds. 
    Then The user enters "passwordchallengemax".
	Then The user clicks on "Save and Exit" Button.
    And The user waits for "5" Seconds.
    Then the user asserts value of "Changes Saved" with "Changes Saved".
    
@VerifyCloseButton
Scenario: T 201.6.8 Click Close button. Verify the Account Settings Screen is closed without any changes. Print Screen.
Given The user Opened the AUT.
     And the user waits for the page to load.	
	Then The user enters "Username".
	Then The user clicks on "SignIn" Button.
	And The user waits for "2" Seconds.
    Then The user enters "Password".
    Then The user clicks on "SignIn" Button.	
 	And The user waits for "45" Seconds.
 	Then the user clicks on "Account Image" link.
	And The user waits for "5" Seconds.
	Then the user clicks on "Account Settings" link.
    And The user waits for "5" Seconds. 
    Then the user clicks on "Security" link.
    And The user waits for "2" Seconds. 
    Then The user clicks on "Close" Button.
    
@VerifyAuditPwdChange
Scenario: T 201.6.9 On the REDCap Cloud User activities screen review Security Audit trail. Verify password change event is recorded. Print Screen.
Given The user Opened the AUT.
	 And the user waits for the page to load.	
	Then The user enters "Username".
	Then The user clicks on "SignIn" Button.
	And The user waits for "2" Seconds.
    Then The user enters "Password".
    Then The user clicks on "SignIn" Button.	
 	And The user waits for "45" Seconds.
 	Then the user clicks on "Account Image" link.
    And The user waits for "5" Seconds. 
    Then the user clicks on "Lock Screen" link.
    And The user waits for "2" Seconds.
    Then the user checks "lock user name" field has "readonly" attribute.
    
@VerifyLockScreenUsernameProper
Scenario: T 201.7.4 On the Lock screen, select the Username. Verify that Username field is display only and displays the current Username. Print Screen.
Given The user Opened the AUT.
	 And the user waits for the page to load.	
	Then The user enters "Username".
	Then The user clicks on "SignIn" Button.
	And The user waits for "2" Seconds.
    Then The user enters "Password".
    Then The user clicks on "SignIn" Button.	
 	And The user waits for "45" Seconds.
 	Then the user clicks on "Account Image" link.
	And The user waits for "5" Seconds. 
    Then the user clicks on "Lock Screen" link.
    And The user waits for "8" Seconds.
    Then the user asserts value of "lock user name" field with "jrao@hudson.edu".

@VerifyMax+1LockScreenPass
Scenario: T 201.7.5 On the Lock screen, enter max+1 characters for a Password and click the Unlock button. Verify validator error message is displayed. Print Screen.
Given The user Opened the AUT.
	 And the user waits for the page to load.	
	Then The user enters "Username".
	Then The user clicks on "SignIn" Button.
	And The user waits for "2" Seconds.
    Then The user enters "Password".
    Then The user clicks on "SignIn" Button.	
 	And The user waits for "45" Seconds.
 	Then the user clicks on "Account Image" link.
	And The user waits for "5" Seconds.
	Then the user clicks on "Lock Screen" link.
    And The user waits for "2" Seconds.
    Then The user enters "lock password wrong".
    Then The user clicks on "Unlock" Button.
    And The user waits for "2" Seconds.
    Then the user asserts value of "lock screen error" with "Password cannot be larger then 50 characters".

@VerifyWrongLockPass
Scenario: T 201.7.6 On the Lock screen, enter invalid Password and click the Unlock button. Verify validator error message is displayed on the screen for first 5 attempts, failed Login attempt email is sent to user for each attempt. After fifth attempt, check account is inactivated and an e-mail is sent to the user informing the account lockout event. Ensure inactivated account notification is emailed to user. Print Screen.
Given The user Opened the AUT.
# 	And the user waits for the page to load.	
	Then The user enters "Username".
	Then The user clicks on "SignIn" Button.
	And The user waits for "2" Seconds.
    Then The user enters "Password".
    Then The user clicks on "SignIn" Button.	
 	And The user waits for "45" Seconds.
 	Then the user clicks on "Account Image" link.
	And The user waits for "5" Seconds.
	Then the user clicks on "Lock Screen" link.
    And The user waits for "2" Seconds.
    Then The user enters "lock password incorrect".
    Then The user clicks on "Unlock" Button.
    And The user waits for "2" Seconds.
    Then the user asserts value of "lock screen error" with "Authentication failed.".
    
    
@VerifyUnlock
Scenario: T 201.7.7 On the Lock screen, enter valid Password and click the Unlock button. Verify screen is unlocked. Print Screen.
Given The user Opened the AUT.
	And the user waits for the page to load.	
	Then The user enters "Username".
	Then The user clicks on "SignIn" Button.
	And The user waits for "2" Seconds.
    Then The user enters "Password".
    Then The user clicks on "SignIn" Button.	
 	And The user waits for "45" Seconds.
 	Then the user clicks on "Account Image" link.
	And The user waits for "5" Seconds. 
    Then the user clicks on "Lock Screen" link.
    And The user waits for "2" Seconds.
    Then The user enters "lock password".
    Then The user clicks on "Unlock" Button.
    And The user waits for "2" Seconds.
    Then the user asserts value of "My Study" with "My Studies".
    
@VerifyLogout
Scenario: T 201.8.1 Click on the Logout link. Verify that user is successfully logged out, and navigated to the Login screen that displays a message per the spec. Print Screen.
Given The user Opened the AUT.
	And the user waits for the page to load.	
	Then The user enters "Username".
	Then The user clicks on "SignIn" Button.
	And The user waits for "2" Seconds.
    Then The user enters "Password".
    Then The user clicks on "SignIn" Button.	
 	And The user waits for "45" Seconds.
	Then the user clicks on "Account Image" link.
	And The user waits for "5" Seconds. 
    Then the user clicks on "Logout" link.
    And The user waits for "35" Seconds.
    Then the user asserts value of "Logout Message" with "You have been successfully logged out.";


@VerifyAboutUs
Scenario: T 201.9.1 Click on the About REDCap Cloud link. Verify that pop-up screen displays the information per the specification. Print Screen.
Given The user Opened the AUT.
	And the user waits for the page to load.	
	Then The user enters "Username".
	Then The user clicks on "SignIn" Button.
	And The user waits for "2" Seconds.
    Then The user enters "Password".
    Then The user clicks on "SignIn" Button.	
 	And The user waits for "45" Seconds.
	Then the user clicks on "Account Image" link.
	And The user waits for "5" Seconds. 
	Then the user clicks on "About Us" link.
	Then The user waits for "5" Seconds.
	Then the user asserts value of "About RedCap Cloud" with "About REDCap Cloud";
	
@VerifyBrowserClose
Scenario: T 201.9.2 Click Close button. Verify About REDCap Cloud screen is closed. Print Screen.
Given The user Opened the AUT.
	And the user waits for the page to load.	
	Then The user enters "Username".
	Then The user clicks on "SignIn" Button.
	And The user waits for "2" Seconds.
    Then The user enters "Password".
    Then The user clicks on "SignIn" Button.	
 	And The user waits for "45" Seconds.
	Then the user closes the browser.
	
@VerifyAccountGeneralLanguage
Scenario: T 201.10.1 On the Account Settings Screen, General Data tab, click the Language dropdown list. Verify dropdown values match spec. Print Screen.
	Given The user Opened the AUT.
	And the user waits for the page to load.	
	Then The user enters "Username".
	Then The user clicks on "SignIn" Button.
	And The user waits for "2" Seconds.
    Then The user enters "Password".
    Then The user clicks on "SignIn" Button.	
 	And The user waits for "35" Seconds.
 	Then the user clicks on "Account Image" link.
	And The user waits for "5" Seconds.
	Then the user clicks on "Account Settings" link.
    And The user waits for "5" Seconds.
    Then The user clicks on "Language" drop down, select result from "Result List" and asserts value with "Language Values".






@VerifyResponseAddResponseSetValuePopup
Scenario: T 207.2.11 Click Edit icon in the Response Set Values list. Verify Response Set Value pop-up form is displayed. Print Screen.
Given The user Opened the AUT.
	Then The user enters "Username".
	Then The user clicks on "SignIn" Button.
    Then The user enters "Password".
    Then The user clicks on "SignIn" Button.
    And The user waits for "30" Seconds.	
    Then The user clicks on "SETUPS" Button.
	Then the user clicks on "Response Sets" link.
	Then The user clicks on "Response Add" Button.
	Then The user enters "Response Name Text" with timestamp and saves.
	Then The user clicks on "Save Response Button" Button.
	Then The user deletes temporary file.
	Then The user clicks on "Response Sets Add Value" Button.
	Then The user checks "Response Sets Input Label" field is edible.
	
@VerifyResponseSetAddResponseValueDelete
Scenario: T 207.2.12 Click on the Delete icon in the Response Set Values list. Verify the Response Set Value is deleted when the Response Set Value is not used in a Study. Print Screen.
Given The user Opened the AUT.
	Then The user enters "Username".
	Then The user clicks on "SignIn" Button.
    Then The user enters "Password".
    Then The user clicks on "SignIn" Button.
    And The user waits for "30" Seconds.	
    Then The user clicks on "SETUPS" Button.
	Then the user clicks on "Response Sets" link.
	Then The user clicks on "Response Add" Button.
	Then The user enters "Response Name Text" with timestamp and saves.
	Then The user clicks on "Save Response Button" Button.
	Then The user deletes temporary file.
	Then The user clicks on "Response Sets Add Value" Button.
	Then The user enters "Response Sets Input Label" with timestamp and saves.
	Then The user enters "Response Sets Input Value" with timestamp and saves.
	Then The user deletes temporary file.
	Then The user clicks on "Response Set Value Save and Exit" Button.
	Then The user clicks on "Delete Response Set" Button and asserts.
	
@VerifyResponseSetExistingRespValueDelete
Scenario: T 207.2.13 Click Delete button on a Response Set Value that has been used in the Studies. Verify validator error message is displayed upon Save. Print Screen.
Given The user Opened the AUT.
	Then The user enters "Username".
	Then The user clicks on "SignIn" Button.
    Then The user enters "Password".
    Then The user clicks on "SignIn" Button.
    And The user waits for "30" Seconds.	
    Then The user clicks on "SETUPS" Button.
	Then the user clicks on "Response Sets" link.
	Then The user clicks on "Response Add" Button.
	Then The user enters "Response Name Text" with timestamp and saves.
	Then The user clicks on "Save Response Button" Button.
	Then The user deletes temporary file.
	Then The user clicks on "Response Sets Add Value" Button.
	Then The user enters "Response Sets Input Label" with timestamp and saves.
	Then The user enters "Response Sets Input Value" with timestamp and saves.
	Then The user deletes temporary file.
	Then The user clicks on "Response Set Value Save and Exit" Button.
	Then The user clicks on "Delete Response Set" Button and asserts.

@VerifyResponseDeleteAudit
Scenario: T 207.2.14 In the Setups->Audit Logs review Audit trail. Verify the deleted Response Set Value is recorded. Print Screen.
Given The user Opened the AUT.
	Then The user enters "Username".
	Then The user clicks on "SignIn" Button.
    Then The user enters "Password".
    Then The user clicks on "SignIn" Button.
    And The user waits for "30" Seconds.	
    Then The user clicks on "SETUPS" Button.
	Then the user clicks on "Response Sets" link.
	Then The user clicks on "Response Add" Button.
	Then The user enters "Response Name Text" with timestamp and saves.
	Then The user clicks on "Save Response And Exit Button" Button.
	And The user waits for "10" Seconds.
	Then The user enters from file without delete with key "Response Search text" presses enter.
	Then The user clicks on "Response Delete" Button.
	Then The user clicks on "Yes Button" Button.
	Then the user clicks on "Audit Logs" link.
	And The user waits for "10" Seconds.
	Then the user matches table "Audit Log Table" to check "RS Deleted" values are present from file.		
	Then The user deletes temporary file.
	
@VerifyResponseSetValuePopup
Scenario: T 208.1.1 Click on the Add button or Edit button in Setups->Response Sets screen. Verify the Response Set Value pop-up screen matches spec. Print Screen.
Given The user Opened the AUT.
	Then The user enters "Username".
	Then The user clicks on "SignIn" Button.
    Then The user enters "Password".
    Then The user clicks on "SignIn" Button.
    And The user waits for "30" Seconds.	
    Then The user clicks on "SETUPS" Button.
	Then the user clicks on "Response Sets" link.
	Then The user clicks on "Response Add" Button.
	Then The user enters "Response Name Text" with timestamp and saves.
	Then The user clicks on "Save Response Button" Button.
	Then The user deletes temporary file.
	Then The user clicks on "Response Sets Add Value" Button.
	Then The user checks "Response Sets Input Label" field is edible.

@VerifyResponseSetValueSaveExit
Scenario: T 208.1.2 Click Save and Exit button. Verify the changes made to Response Set Values are saved and the pop-up form screen is closed. Print Screen.
Given The user Opened the AUT.
	Then The user enters "Username".
	Then The user clicks on "SignIn" Button.
    Then The user enters "Password".
    Then The user clicks on "SignIn" Button.
    And The user waits for "30" Seconds.	
    Then The user clicks on "SETUPS" Button.
	Then the user clicks on "Response Sets" link.
	Then The user clicks on "Response Add" Button.
	Then The user enters "Response Name Text" with timestamp and saves.
	Then The user clicks on "Save Response Button" Button.
	Then The user deletes temporary file.
	Then The user clicks on "Response Sets Add Value" Button.
	Then The user enters "Response Sets Input Label" with timestamp and saves.
	Then The user writes "Response Sets Input Value" with timestamp.
	Then The user clicks on "Response Set Value Save and Exit" Button.
	Then the user asserts value of "Response Value Label Text" from file.
	
@VerifyResponseSetValueCancel
Scenario: T 208.1.3 Click Cancel button. Verify no changes are made to Response Set Values data and the pop-up form screen is closed. Print Screen.
Given The user Opened the AUT.
	Then The user enters "Username".
	Then The user clicks on "SignIn" Button.
    Then The user enters "Password".
    Then The user clicks on "SignIn" Button.
    And The user waits for "30" Seconds.	
    Then The user clicks on "SETUPS" Button.
	Then the user clicks on "Response Sets" link.
	Then The user clicks on "Response Add" Button.
	Then The user writes "Response Name Text" with timestamp.
	Then The user clicks on "Save Response Button" Button.
	Then The user clicks on "Response Sets Add Value" Button.
	Then The user clicks on "Response Set Cancel value" Button and asserts.
	
@VerifyResponseSetValueLabelMax+1
Scenario: T 208.1.4 In the Label field, enter or change an existing Response Set Value label to max+1 characters and Save. Verify validator error message is displayed. Print Screen.
Given The user Opened the AUT.
	Then The user enters "Username".
	Then The user clicks on "SignIn" Button.
    Then The user enters "Password".
    Then The user clicks on "SignIn" Button.
    And The user waits for "30" Seconds.	
    Then The user clicks on "SETUPS" Button.
	Then the user clicks on "Response Sets" link.
	Then The user clicks on "Response Add" Button.
	Then The user writes "Response Name Text" with timestamp.
	Then The user clicks on "Save Response Button" Button.
	Then The user clicks on "Response Sets Add Value" Button.
	Then The user enters "Response Sets Input Label Max+1".
	Then The user writes "Response Sets Input Value" with timestamp.
	Then The user clicks on "Response Set Value Save and Exit" Button.
	Then the user asserts html contains with "Response Sets Input Label Error Max+1".
	
@VerifyResponseSetValueLabelEmpty
Scenario: T 208.1.5 In the Label field, clear an existing Response Set Value name and Save. Verify validator error message is displayed. Print Screen.
Given The user Opened the AUT.
	Then The user enters "Username".
	Then The user clicks on "SignIn" Button.
    Then The user enters "Password".
    Then The user clicks on "SignIn" Button.
    And The user waits for "30" Seconds.	
    Then The user clicks on "SETUPS" Button.
	Then the user clicks on "Response Sets" link.
	Then The user clicks on "Response Add" Button.
	Then The user enters "Response Name Text" with timestamp and saves.
	Then The user clicks on "Save Response Button" Button.
	Then The user deletes temporary file.
	Then The user clicks on "Response Sets Add Value" Button.
	Then The user enters "Response Sets Input Label" with timestamp and saves.
	Then The user writes "Response Sets Input Value" with timestamp.
	Then The user clicks on "Response Set Value Save and Exit" Button.
	Then The user clicks on "Response Set Value Edit Label" Button.
	Then The user clears "Response Sets Input Label" and presses enter.
	Then The user clicks on "Response Set Value Save and Exit" Button.
	Then the user asserts html contains with "Response Sets Input Label Error Max+1".
	
@VerifyResponseSetValueRespValueMax+1
Scenario: T 208.1.6 In the Value field, enter or change an existing Response Set Value to max+1 characters and Save. Verify validator error message is displayed. Print Screen.
Given The user Opened the AUT.
	Then The user enters "Username".
	Then The user clicks on "SignIn" Button.
    Then The user enters "Password".
    Then The user clicks on "SignIn" Button.
    And The user waits for "30" Seconds.	
    Then The user clicks on "SETUPS" Button.
	Then the user clicks on "Response Sets" link.
	Then The user clicks on "Response Add" Button.
	Then The user writes "Response Name Text" with timestamp.
	Then The user clicks on "Save Response Button" Button.
	Then The user clicks on "Response Sets Add Value" Button.
	Then The user writes "Response Sets Input Label" with timestamp.
	Then The user enters "Response Sets Input Value Max+1".
	Then The user clicks on "Response Set Value Save and Exit" Button.
	Then the user asserts html contains with "Response Sets Input Value Error Max+1".
	
@VerifyResponseSetSetValueEmpty
Scenario: T 208.1.7 In the Value field, clear an existing Response Set Value field and Save. Verify validator error message is displayed. Print Screen.
Given The user Opened the AUT.
	Then The user enters "Username".
	Then The user clicks on "SignIn" Button.
    Then The user enters "Password".
    Then The user clicks on "SignIn" Button.
    And The user waits for "30" Seconds.	
    Then The user clicks on "SETUPS" Button.
	Then the user clicks on "Response Sets" link.
	Then The user clicks on "Response Add" Button.
	Then The user enters "Response Name Text" with timestamp and saves.
	Then The user clicks on "Save Response Button" Button.
	Then The user deletes temporary file.
	Then The user clicks on "Response Sets Add Value" Button.
	Then The user enters "Response Sets Input Label" with timestamp and saves.
	Then The user writes "Response Sets Input Value" with timestamp.
	Then The user clicks on "Response Set Value Save and Exit" Button.
	Then The user clicks on "Response Set Value Edit Label" Button.
	Then The user clears "Response Sets Input Value" and presses enter.
	Then The user clicks on "Response Set Value Save and Exit" Button.
	Then the user asserts html contains with "Response Sets Input Value Error Max+1".
	
@VerifyApplicationSetupAuditTrail
Scenario: T 209.1.1 Select the Audit Logs link from the Setups menu. Verify the Application Setups Audit Trail screen displays all application setups audit trail fields per the specification. Print Screen.
Given The user Opened the AUT.
	Then The user enters "Username".
	Then The user clicks on "SignIn" Button.
    Then The user enters "Password".
    Then The user clicks on "SignIn" Button.
    And The user waits for "30" Seconds.	
    Then The user clicks on "SETUPS" Button.
	Then The user clicks on "Audit Logs" Button and asserts.
	
@VerifyAuditTrailFilter
Scenario: T 210.1.2 Click on the Filter icon. Verify additional filtering options are available in a popover per the specification. Print Screen.
Given The user Opened the AUT.
	Then The user enters "Username".
	Then The user clicks on "SignIn" Button.
    Then The user enters "Password".
    Then The user clicks on "SignIn" Button.
    And The user waits for "30" Seconds.	
    Then The user clicks on "SETUPS" Button.
	Then The user clicks on "Audit Logs" Button.
	Then The user clicks on "Audit Log Filter" Button.
	Then The user enters "Audit Log Entry Date".
	Then The user clicks on "Audit Log Filter Submit" Button.
	And The user waits for "10" Seconds.
	Then The user matches "Audit Log Table" table contains rows matching with "Response Text Table Footer".
	
@VerifyAuditLogFilterInvalidDate
Scenario: T 210.1.4 In the Date filter, enter an invalid date (e.g. Feb 31, 2013) and click Filter button. Verify validator error message is displayed. Print Screen.
Given The user Opened the AUT.
	Then The user enters "Username".
	Then The user clicks on "SignIn" Button.
    Then The user enters "Password".
    Then The user clicks on "SignIn" Button.
    And The user waits for "30" Seconds.	
    Then The user clicks on "SETUPS" Button.
	Then The user clicks on "Audit Logs" Button.
	Then The user clicks on "Audit Log Filter" Button.
	Then The user enters "Audit Log Invalid Entry Date Random Chars".
	Then The user clicks on "Audit Log Filter Submit" Button.
	And The user waits for "3" Seconds.
	Then the user asserts html contains with "Audit Filter Invalid Date".

@VerifyAuditFilterRandomChars
Scenario: T 210.1.5 In the Date filter, enter random characters and click Filter button. Verify validator error message is displayed. Print Screen.
Given The user Opened the AUT.
	Then The user enters "Username".
	Then The user clicks on "SignIn" Button.
    Then The user enters "Password".
    Then The user clicks on "SignIn" Button.
    And The user waits for "30" Seconds.	
    Then The user clicks on "SETUPS" Button.
	Then The user clicks on "Audit Logs" Button.
	Then The user clicks on "Audit Log Filter" Button.
	Then The user enters "Audit Log Invalid Entry Date".
	Then The user clicks on "Audit Log Filter Submit" Button.
	And The user waits for "3" Seconds.
	Then the user asserts html contains with "Audit Filter Invalid Date".
	
@VerifyAuditFilterSortByDate
Scenario: T 210.1.6 Click on the Date label in the list. Verify Application Setups Audit Trail screen is sorted by the Date. Print Screen.
	Given The user Opened the AUT.
	Then The user enters "Username".
	Then The user clicks on "SignIn" Button.
    Then The user enters "Password".
    Then The user clicks on "SignIn" Button.
    And The user waits for "30" Seconds.	
    Then The user clicks on "SETUPS" Button.
	Then The user clicks on "Audit Logs" Button.
	Then The user clicks on "Audit Log Date Sort" Button and asserts.
	
@VerifyAuditFilterFormLabelSort
Scenario: T 210.1.6 Click on the Date label in the list. Verify Application Setups Audit Trail screen is sorted by the Date. Print Screen.
	Given The user Opened the AUT.
	Then The user enters "Username".
	Then The user clicks on "SignIn" Button.
    Then The user enters "Password".
    Then The user clicks on "SignIn" Button.
    And The user waits for "30" Seconds.	
    Then The user clicks on "SETUPS" Button.
	Then The user clicks on "Audit Logs" Button.
	Then The user clicks on "Audit Log Form Sort" Button and asserts.

@VerifyUserGuide
Scenario: T 211.1.1 Click on the User Guide link from the Support menu. Verify the User Guide is displayed. Print Screen.
Given The user Opened the AUT.
	Then The user enters "Username".
	Then The user clicks on "SignIn" Button.
    Then The user enters "Password".
    Then The user clicks on "SignIn" Button.
    And The user waits for "30" Seconds.	
	Then the user clicks on "Support" link.
# 	And the user waits for the page to load.		
  	Then the user switches to iframe "Support Content Iframe".
  	Then the user switches to iframe "User Guide Iframe".
  	Then the user asserts value of "User Guide Header" with "Introduction to REDCap Cloud".

@VerifySupportFaq
Scenario: T 212.1.1 Click on the Support FAQs link from the Support menu. Verify the Support FAQs page is displayed. Print Screen.
Given The user Opened the AUT.
	Then The user enters "Username".
	Then The user clicks on "SignIn" Button.
    Then The user enters "Password".
    Then The user clicks on "SignIn" Button.
    And The user waits for "30" Seconds.	
	Then the user clicks on "Support" link.
# 	And the user waits for the page to load.		
	Then the user switches to iframe "Support Content Iframe".
	Then The user clicks on "Support FAQ" Button and asserts.

@VerifySupportFaqTopic
Scenario: T 212.1.2 Click on a FAQ topic in the Table of Contents tree. Verify the FAQ topic is displayed. Print Screen.
Given The user Opened the AUT.
	Then The user enters "Username".
	Then The user clicks on "SignIn" Button.
    Then The user enters "Password".
    Then The user clicks on "SignIn" Button.
    And The user waits for "30" Seconds.	
	Then the user clicks on "Support" link.
# 	And the user waits for the page to load.
	Then the user switches to iframe "Support Content Iframe".
	Then The user clicks on "Support FAQ" Button.
	And The user waits for "5" Seconds.
	Then the user switches to new window.
	Then the user switches to iframe "User Guide Iframe".
	Then The user clicks on "Faq Topic" Button.
	Then The user clicks on "Faq Overview" Button.
	And The user waits for "5" Seconds.
	Then The user clicks on "Faq Topic" Button and asserts.

@VerifySupportFaqShowHide
Scenario: T 212.1.3 Click on the Up/Down chevron on the FAQ topic. Verify the FAQ topic details are displayed or hidden. Print Screen.
Given The user Opened the AUT.
	Then The user enters "Username".
	Then The user clicks on "SignIn" Button.
    Then The user enters "Password".
    Then The user clicks on "SignIn" Button.
    And The user waits for "30" Seconds.	
	Then the user clicks on "Support" link.
	Then the user switches to iframe "Support Content Iframe".
	Then The user clicks on "Support FAQ" Button.
	And The user waits for "5" Seconds.
	Then the user switches to new window.
	Then the user switches to iframe "User Guide Iframe".
	Then The user clicks on "Faq Topic" Button.
	Then The user clicks on "Faq Overview" Button.
	And The user waits for "5" Seconds.
	Then The user clicks on "Faq Topic" Button.
	Then The user checks "Faq Overview" field is not edible. 

@VerifySupportTrainingResources
Scenario: T 213.1.1 Click on the Training Resources link from the Support menu. Verify the Training Resource page is displayed. Print Screen.
Given The user Opened the AUT.
	Then The user enters "Username".
	Then The user clicks on "SignIn" Button.
    Then The user enters "Password".
    Then The user clicks on "SignIn" Button.
    And The user waits for "30" Seconds.	
	Then the user clicks on "Support" link.
# 	And the user waits for the page to load.		
	Then The user clicks on  "Support Training Resources" Button.

@VerifySupportTrainingresourcesVideo
Scenario: T 213.1.2 Click on a video icon on the page. Verify a pop-up with Video Player is displayed. Print Screen.
Given The user Opened the AUT.
	Then The user enters "Username".
	Then The user clicks on "SignIn" Button.
    Then The user enters "Password".
    Then The user clicks on "SignIn" Button.
    And The user waits for "30" Seconds.	
	Then the user clicks on "Support" link.
	Then The user clicks on "Support Training Resources" Button.

@VerifySupportTrainingVideoPlayer
Scenario: T 215.1.1 Click on a video icon Training Resources screen. Verify a browser window with a video player is displayed. Print Screen.
Given The user Opened the AUT.
	Then The user enters "Username".
	Then The user clicks on "SignIn" Button.
    Then The user enters "Password".
    Then The user clicks on "SignIn" Button.
    And The user waits for "30" Seconds.	
	Then the user clicks on "Support" link.
	Then The user clicks on "Support Training Resources" Button.

@VerifySupportTrainingVideoControl
Scenario: T 215.1.2 Use the controls on the video player to play the training video. Verify the controls work per the spec. Print Screen.
Given The user Opened the AUT.
	Then The user enters "Username".
	Then The user clicks on "SignIn" Button.
    Then The user enters "Password".
    Then The user clicks on "SignIn" Button.
    And The user waits for "30" Seconds.	
	Then the user clicks on "Support" link.
	Then The user clicks on  "Support Training Resources" Button.

@VerifySupportTrainingResourcesCloseVideo
Scenario: T 215.1.3 Close the browser video for the video player. Verify the video player window is closed. Print Screen.
Given The user Opened the AUT.
	Then The user enters "Username".
	Then The user clicks on "SignIn" Button.
    Then The user enters "Password".
    Then The user clicks on "SignIn" Button.
    And The user waits for "30" Seconds.	
	Then the user clicks on "Support" link.
	Then The user clicks on  "Support Training Resources" Button.

@VerifySupportTechnicalSupport
Scenario: T 214.1.1 Click on the Technical Support link from the Support menu. Verify the Technical Support screen is displayed. Print Screen.
Given The user Opened the AUT.
	Then The user enters "Username".
	Then The user clicks on "SignIn" Button.
    Then The user enters "Password".
    Then The user clicks on "SignIn" Button.
    And The user waits for "30" Seconds.	
	Then the user clicks on "Support" link.
	Then The user clicks on "Technical Support" Button.
	Then the user switches to iframe "Support Content Iframe".
	Then the user switches to iframe "Tech Support Iframe".
	Then the user asserts value of "Tech Support Header" with "Tech Support Header".
	
@VerifyTechSupportEmail
Scenario: T 214.1.2 Click on the Email link on the page. Verify a pop-up with an email client like Outlook is displayed. Print Screen.
Given The user Opened the AUT.
	Then The user enters "Username".
	Then The user clicks on "SignIn" Button.
    Then The user enters "Password".
    Then The user clicks on "SignIn" Button.
    And The user waits for "30" Seconds.	
	Then the user clicks on "Support" link.
	Then The user clicks on "Technical Support" Button.	
	Then the user switches to iframe "Support Content Iframe".
	Then the user switches to iframe "Tech Support Iframe".
	Then The user clicks on "Tech Support Email" Button and asserts.

@VerifyTechSupportDesk
Scenario: T 214.1.3 Click on Submit a Request image on the screen. Verify a new window with access to desk.com is displayed. Print Screen.
Given The user Opened the AUT.
	Then The user enters "Username".
	Then The user clicks on "SignIn" Button.
    Then The user enters "Password".
    Then The user clicks on "SignIn" Button.
    And The user waits for "30" Seconds.	
	Then the user clicks on "Support" link.
	Then The user clicks on "Technical Support" Button.
	Then the user switches to iframe "Support Content Iframe".
	Then the user switches to iframe "Tech Support Iframe".
	Then The user clicks on "Tech Support Desk Icon" Button.
	And The user waits for "10" Seconds.
	Then The user asserts new window with link for "https://redcapcloud.desk.com/customer/login?return_to=%2F".		
	
@VerifyChoosePopupTechSupport
Scenario: T 216.1.1 Click on Submit a Request image in the Technical Support screen. Verify a new browser window with access to desk.com is displayed. Print Screen.
Given The user Opened the AUT.
	Then The user enters "Username".
	Then The user clicks on "SignIn" Button.
    Then The user enters "Password".
    Then The user clicks on "SignIn" Button.
    And The user waits for "30" Seconds.	
	Then the user clicks on "Support" link.
	Then the user switches to iframe "Support Content Iframe".
	Then the user switches to iframe "Tech Support Iframe".
	Then The user clicks on "Technical Support" Button.
	Then The user clicks on "Tech Support Desk Icon" Button.
	And The user waits for "10" Seconds.
	Then The user asserts new window with link for "https://redcapcloud.desk.com/customer/login?return_to=%2F".		
	
@VerifyRedcapStudyInterfaceCloudIcon
Scenario: T 217.1.1 Click on the REDCap Cloud icon. Verify My Studies form is displayed. Print Screen.
Given The user Opened the AUT.
	Then The user enters "Username".
	Then The user clicks on "SignIn" Button.
    Then The user enters "Password".
    Then The user clicks on "SignIn" Button.
    And The user waits for "30" Seconds.	
    Then The user clicks on "Redcap Cloud Icon" Button.
    Then the user asserts value of "My Study" with "My Studies".

@VerifyRedCapStudyOverview
Scenario: T 217.1.2 Click on Study icon. Verify Study Overview form is displayed. Print Screen.
Given The user Opened the AUT.
	Then The user enters "Username".
	Then The user clicks on "SignIn" Button.
    Then The user enters "Password".
    Then The user clicks on "SignIn" Button.
    And The user waits for "30" Seconds.	
    Then The user clicks on "Study Icon" Button.
    Then the user asserts value of "My Study" with "My Studies".

@VerifyStudyEnroleForm
Scenario: T 217.1.3 Click on Subjects icon. Verify Enroll form is displayed. Print Screen.
Given The user Opened the AUT.
	Then The user enters "Username".
	Then The user clicks on "SignIn" Button.
    Then The user enters "Password".
    Then The user clicks on "SignIn" Button.
    And The user waits for "30" Seconds.	
    Then The user clicks on "Study Icon" Button.
	Then the user clicks on "Test Title 1507491160238" link.
	Then The user clicks on "Subjects" Button.
	And The user waits for "5" Seconds.
	Then the user asserts value of "Subjects Text" with "Subjects".
	
@VerifyStudyDataForm
Scenario: T 217.1.4 Click on Data icon. Verify Source Data Validation form is displayed. Print Screen.
Given The user Opened the AUT.
	Then The user enters "Username".
	Then The user clicks on "SignIn" Button.
    Then The user enters "Password".
    Then The user clicks on "SignIn" Button.
    And The user waits for "30" Seconds.	
    Then the user clicks on "Test Title 1507491160238" link.
    Then The user clicks on "Data Icon" Button.
    And The user waits for "5" Seconds.
    Then the user asserts value of "Data Review" with "Data Review".
    
@VerifyStudyInsight
Scenario: T 217.1.5 Click on Insights icon. Verify Reports form is displayed. Print Screen.
Given The user Opened the AUT.
	Then The user enters "Username".
	Then The user clicks on "SignIn" Button.
    Then The user enters "Password".
    Then The user clicks on "SignIn" Button.
    And The user waits for "30" Seconds.	
    Then the user clicks on "Test Title 1507491160238" link.
	Then The user clicks on "Insights" Button.
	Then the user asserts value of "Reports Text" with "Reports".
	
@VerifySupport
Scenario: T 217.1.6 Click on Support icon. Verify User Guide is displayed. Print Screen.
Given The user Opened the AUT.
	Then The user enters "Username".
	Then The user clicks on "SignIn" Button.
    Then The user enters "Password".
    Then The user clicks on "SignIn" Button.
    And The user waits for "30" Seconds.	
	Then the user clicks on "Support" link.
# 	And the user waits for the page to load.		
  	Then the user switches to iframe "Support Content Iframe".
  	Then the user switches to iframe "User Guide Iframe".
  	Then the user asserts value of "User Guide Header" with "Introduction to REDCap Cloud".
  	
@VerifySiteLinkPopup
Scenario: T 217.1.7 Click on the Site link icon. Verify Choose Site (S218) pop-up form is displayed. Print Screen.
Given The user Opened the AUT.
	Then The user enters "Username".
	Then The user clicks on "SignIn" Button.
    Then The user enters "Password".
    Then The user clicks on "SignIn" Button.
    And The user waits for "30" Seconds.	
    Then the user clicks on "Test Title 1507491160238" link.
    Then the user clicks on "Choose Site" link.
    Then The user checks "Choose Site Site Name" field is edible.	 
    
@VerifyUserRole
Scenario: T 217.1.8 Review the displayed User role. Verify the displayed role is the User's current role for the study. Print Screen.
Given The user Opened the AUT.
	Then The user enters "Username".
	Then The user clicks on "SignIn" Button.
    Then The user enters "Password".
    Then The user clicks on "SignIn" Button.
    And The user waits for "30" Seconds.	
    Then the user clicks on "Test Title 1507491160238" link.
    Then the user clicks on "Choose Site" link.
    Then The user checks "Choose Site Site Name" field is edible.	 

@VerifyChooseStiteStudyInterface
Scenario: T 218.1.1 Click on the Choose Site link on REDCap Cloud Study Interface. Verify Choose Site pop-up form is per spec. Print Screen.
Given The user Opened the AUT.
	Then The user enters "Username".
	Then The user clicks on "SignIn" Button.
    Then The user enters "Password".
    Then The user clicks on "SignIn" Button.
    And The user waits for "30" Seconds.	
    Then the user clicks on "Test Title 1507491160238" link.
    Then the user clicks on "Choose Site" link.
    Then The user checks "Choose Site Site Name" field is edible.	 

@VerifyChooseSiteCancel
Scenario: T 218.1.2 Click on the Cancel button. Verify the Choose Site pop-up form is closed without selecting a Site. Print Screen.
Given The user Opened the AUT.
	Then The user enters "Username".
	Then The user clicks on "SignIn" Button.
    Then The user enters "Password".
    Then The user clicks on "SignIn" Button.
    And The user waits for "30" Seconds.	
    Then the user clicks on "Test Title 1507491160238" link.
    Then the user clicks on "Choose Site" link.
	Then The user clicks on "Choose Site Cancel" Button.
	Then The user checks "Choose Site Site Name" field is not edible.
	
@VerifyStudySiteChooseSiteList
Scenario: T 218.1.3 In the Name filter, enter the name of a Site, and enter. Verify the Choose Site pop-up form displays the records matching the Site name. Print Screen.
Given The user Opened the AUT.
	Then The user enters "Username".
	Then The user clicks on "SignIn" Button.
    Then The user enters "Password".
    Then The user clicks on "SignIn" Button.
    And The user waits for "30" Seconds.	
    Then the user clicks on "Test Title 1507491160238" link.
    Then the user clicks on "Choose Site" link.
	Then The user enters "Choose Site Site Name" and presses enter.
	And The user waits for "10" Seconds.
	Then The user matches "Choose Site Site Table" table contains rows matching with "Choose Site Site Name".	

@VerifyStudySiteChooseSiteListRandom
Scenario: T 218.1.4 In the Name filter, enter a random characters, and enter. Verify Choose Site pop-up form does not display any records. Print Screen.
Given The user Opened the AUT.
	Then The user enters "Username".
	Then The user clicks on "SignIn" Button.
    Then The user enters "Password".
    Then The user clicks on "SignIn" Button.
    And The user waits for "30" Seconds.	
    Then the user clicks on "Test Title 1507491160238" link.
    Then the user clicks on "Choose Site" link.
	Then The user enters "Choose Site Site Name Random" and presses enter.
	And The user waits for "10" Seconds.
	Then the user asserts value of "Choose Site Site Table" Table is empty.
       
@VerifyStudySiteChooseSiteListMax+1
Scenario: T 218.1.5 In the Name filter, enter max+1 characters for Site name and enter. Verify validator error message is displayed. Print Screen.
Given The user Opened the AUT.
	Then The user enters "Username".
	Then The user clicks on "SignIn" Button.
    Then The user enters "Password".
    Then The user clicks on "SignIn" Button.
    And The user waits for "30" Seconds.	
    Then the user clicks on "Test Title 1507491160238" link.
    Then the user clicks on "Choose Site" link.
    Then The user enters "Choose Site Site Name Max+1" and presses enter.
    Then the user asserts html contains with "Choose Site Site Name Error Max+1".

@VerifyChooseSiteFacility
Scenario: T 218.1.6 In the Facility Name filter, enter a Facility Name. Verify the Choose Site pop-up form displays the records matching the facility. Print Screen.
Given The user Opened the AUT.
	Then The user enters "Username".
	Then The user clicks on "SignIn" Button.
    Then The user enters "Password".
    Then The user clicks on "SignIn" Button.
    And The user waits for "30" Seconds.	
    Then the user clicks on "Test Title 1507491160238" link.
    Then the user clicks on "Choose Site" link.
	Then The user enters "Choose Site Facility Name" and presses enter.
	And The user waits for "10" Seconds.
	Then The user matches "Choose Site Site Table" table contains rows matching with "Choose Site Facility Name".
	
@VerifyChooseSiteFacilityNameRandom
Scenario: T 218.1.7 In the Facility Name filter, enter a random characters, and enter. Verify Choose Site pop-up form does not display any records. Print Screen.
Given The user Opened the AUT.
	Then The user enters "Username".
	Then The user clicks on "SignIn" Button.
    Then The user enters "Password".
    Then The user clicks on "SignIn" Button.
    And The user waits for "30" Seconds.	
    Then the user clicks on "Test Title 1507491160238" link.
    Then the user clicks on "Choose Site" link.
	Then The user enters "Choose Site Facility Name Random" and presses enter.
	And The user waits for "10" Seconds.
	Then the user asserts value of "Choose Site Site Table" Table is empty.	
	
@VerifyChooseSiteFacilityNameMax+1
Scenario: T 218.1.8 In the Facility Name filter, enter max+1 characters. Verify validator error message is displayed. Print Screen.
Given The user Opened the AUT.
	Then The user enters "Username".
	Then The user clicks on "SignIn" Button.
    Then The user enters "Password".
    Then The user clicks on "SignIn" Button.
    And The user waits for "30" Seconds.	
    Then the user clicks on "Test Title 1507491160238" link.
    Then the user clicks on "Choose Site" link.
    Then The user enters "Choose Site Facility Max+1" and presses enter.
    Then the user asserts html contains with "Choose Site Facility Name Error Max+1".
    
@VerifyChooseSiteSiteSort
Scenario: T 218.1.9 Click on the label in the list. Verify the screen is sorted by the selected label. Print Screen.
Given The user Opened the AUT.
	Then The user enters "Username".
	Then The user clicks on "SignIn" Button.
    Then The user enters "Password".
    Then The user clicks on "SignIn" Button.
    And The user waits for "30" Seconds.	
    Then the user clicks on "Test Title 1507491160238" link.
    Then the user clicks on "Choose Site" link.
	Then The user enters "Choose Site Site Name" and presses enter.
	And The user waits for "10" Seconds.
	Then The user matches "Choose Site Site Table" table contains rows matching with "Choose Site Site Name".	

@VerifyChooseSiteSelectSite
Scenario: T 218.1.10 Click on any record in the list. Verify a Site is selected for the Study and the Choose Site pop-up form is closed, and Study Overview form is displayed. Print Screen.
Given The user Opened the AUT.
	Then The user enters "Username".
	Then The user clicks on "SignIn" Button.
    Then The user enters "Password".
    Then The user clicks on "SignIn" Button.
    And The user waits for "30" Seconds.	
    Then the user clicks on "Test Title 1507491160238" link.
    Then the user clicks on "Choose Site" link.
	Then The user enters "Choose Site Site Name" and presses enter.
	And The user waits for "10" Seconds.
	Then The user matches "Choose Site Site Table" table contains rows matching with "Choose Site Site Name".	

@VerifyStudyAuditTrail
Scenario: T 219.1.1 Click on the Audit Logs link on the Subjects menu. Verify the Study Audit Trail functionality is recorded in a screen per the specifications. Print Screen.
Given The user Opened the AUT.
	Then The user enters "Username".
	Then The user clicks on "SignIn" Button.
    Then The user enters "Password".
    Then The user clicks on "SignIn" Button.
    And The user waits for "30" Seconds.	
    Then the user clicks on "Test Title 1507491160238" link.
	Then the user clicks on "Details" link.
	Then the user saves content for "Study Screen Brief Title".
	Then The user clicks on "Subjects" Button.
	Then the user clicks on "Audit Logs" link.
	And The user waits for "10" Seconds.
	Then The user matches from file "Study Subject Audit Log Table" table.     
	
@VerifyStudyDetails
Scenario: T 221.1.1 Click on the Study Details link in the Study menu. Verify the screen is displayed per the specifications. Print Screen.
Given The user Opened the AUT.
	Then The user enters "Username".
	Then The user clicks on "SignIn" Button.
    Then The user enters "Password".
    Then The user clicks on "SignIn" Button.
    And The user waits for "30" Seconds.	
    Then the user clicks on "Test Title 1507491160238" link.
	Then the user clicks on "Details" link.
	Then the user checks content for "Study Screen Brief Title" not empty.
	
@VerifyChangeStudyPopup	
Scenario: T 221.1.2 Click on the Change Status Button in the Summary section. Verify Change Study Status pop-up form is displayed per the specifications. Print Screen.
Given The user Opened the AUT.
	Then The user enters "Username".
	Then The user clicks on "SignIn" Button.
    Then The user enters "Password".
    Then The user clicks on "SignIn" Button.
    And The user waits for "30" Seconds.	
    Then the user clicks on "Test Title 1507491160238" link.
	Then the user clicks on "Details" link.
	Then The user clicks on "Change Status" Button.
	And The user waits for "5" Seconds.
	Then The user clicks on "Change Study Status Combo Button" drop down, select result from "Study Result List" and asserts value with "Study Result Values".
	
@VerifyStudyEdit
Scenario: T 221.2.1 Click on the Edit button in the Summary section. Verify the screen matches spec. Print Screen.
Given The user Opened the AUT.
	Then The user enters "Username".
	Then The user clicks on "SignIn" Button.
    Then The user enters "Password".
    Then The user clicks on "SignIn" Button.
    And The user waits for "30" Seconds.	
    Then the user clicks on "Test Title 1507491160238" link.
	Then the user clicks on "Details" link.
	Then The user clicks on "Edit Study" Button.
	Then The user checks "Edit Study Study Name" field is edible. 	

@VerifyStudtEditSaveButton
Scenario: T 221.2.2 Click Save button. Verify the changes made to Summary section data are saved and screen reverts to View mode. Print Screen.
Given The user Opened the AUT.
	Then The user enters "Username".
	Then The user clicks on "SignIn" Button.
    Then The user enters "Password".
    Then The user clicks on "SignIn" Button.
    And The user waits for "30" Seconds.	
    Then the user clicks on "Test Title 1507491160238" link.
	Then the user clicks on "Details" link.
	Then The user clicks on "Edit Study" Button.
	Then The user enters "Edit Study Study Name" with timestamp and saves.
	Then The user clicks on "Save Study" Button.
	Then the user asserts value of "Study Name View" from file.
	Then The user checks "Study Name View" field is not edible.
	
@VerifySiteEditCancelButton
Scenario: T 221.2.3 Click Cancel button. Verify no changes are made to Summary data and screen reverts to View mode. Print Screen.
Given The user Opened the AUT.
	Then The user enters "Username".
	Then The user clicks on "SignIn" Button.
    Then The user enters "Password".
    Then The user clicks on "SignIn" Button.
    And The user waits for "30" Seconds.	
    Then the user clicks on "Test Title 1507491160238" link.
	Then the user clicks on "Details" link.
	Then the user saves content for "Study Name View".
	Then The user clicks on "Edit Study" Button.
	Then The user writes "Edit Study Study Name" with timestamp.
	Then The user clicks on "Study Edit Cancel" Button.
	Then the user asserts value of "Study Name View" from file.
	
@VerifyStudyEditNameMax+1
Scenario: T 221.2.4 In the Study Name field, change an existing Study Name to max+1 characters and Save. Verify validator error message is displayed. Print Screen.
Given The user Opened the AUT.
	Then The user enters "Username".
	Then The user clicks on "SignIn" Button.
    Then The user enters "Password".
    Then The user clicks on "SignIn" Button.
    And The user waits for "30" Seconds.	
    Then the user clicks on "Test Title 1507491160238" link.
	Then the user clicks on "Details" link.
	Then The user clicks on "Edit Study" Button.
	Then The user enters "Edit Study Study Name Max+1".
	Then The user clicks on "Save Study" Button.
	Then the user asserts value of "Account Error Blank" with "Study Name Validation Error".
	
@VerifyStudyEditClearStudyName
Scenario: T 221.2.5 In the Study Name field, clear an existing Study Name and Save. Verify validator error message is displayed. Print Screen.
Given The user Opened the AUT.
	Then The user enters "Username".
	Then The user clicks on "SignIn" Button.
    Then The user enters "Password".
    Then The user clicks on "SignIn" Button.
    And The user waits for "30" Seconds.	
    Then the user clicks on "Test Title 1507491160238" link.
	Then the user clicks on "Details" link.
	Then The user clicks on "Edit Study" Button.
	Then The user clears "Edit Study Study Name" and presses enter.
	Then The user clicks on "Save Study" Button.
	Then the user asserts value of "Study Error Div" with "Study Name Validation Error".
	
@VerifyStudyEditDuplicateStudyName
Scenario: T 221.2.6 In the Study Name field, update the Study Name to an existing Study Name and Save. Verify validator error message is displayed. Print Screen.
Given The user Opened the AUT.
	Then The user enters "Username".
	Then The user clicks on "SignIn" Button.
    Then The user enters "Password".
    Then The user clicks on "SignIn" Button.
    And The user waits for "30" Seconds.	
    Then the user clicks on "Next Study name" link.
    Then the user clicks on "Details" link.
    Then the user saves content for "Study Name View".
    Then The user clicks on "Redcap Cloud Icon" Button.
	Then the user clicks on "Test Title 1507491160238" link.
	Then the user clicks on "Details" link.
	Then The user clicks on "Edit Study" Button.
	Then The user enters from file with key "Edit Study Study Name" presses enter.
	Then The user clicks on "Save Study" Button.
	Then the user asserts value of "Study Error Div" with "Duplicate Study Name Validation Error".
	
@VerifyStudyCategoryNotEditable
Scenario: T 221.2.7 Clear an existing Study Category. Verify the field is display only. Print Screen.
Given The user Opened the AUT.
	Then The user enters "Username".
	Then The user clicks on "SignIn" Button.
    Then The user enters "Password".
    Then The user clicks on "SignIn" Button.
    And The user waits for "30" Seconds.	
    Then the user clicks on "Test Title 1507491160238" link.
	Then the user clicks on "Details" link.
	Then The user clicks on "Edit Study" Button.
	Then The user checks "Study Edit Study Category" field is not edible.
		
@VerifyStudyEditBriefTitleMax+1
Scenario: T 221.2.8 In the Brief Title field, change an existing Brief Title to max+1 characters and Save. Verify validator error message is displayed. Print Screen.
Given The user Opened the AUT.
	Then The user enters "Username".
	Then The user clicks on "SignIn" Button.
    Then The user enters "Password".
    Then The user clicks on "SignIn" Button.
    And The user waits for "30" Seconds.	
    Then the user clicks on "Test Title 1507491160238" link.
	Then the user clicks on "Details" link.
	Then The user clicks on "Edit Study" Button.
	Then The user enters "Study Edit Brief Title Max+1".
	Then The user clicks on "Save Study" Button.
	Then the user asserts value of "Study Error Div" with "Error Study Edit Brief Title Max+1".
	
@VerifyStudyEditClearBriefTitle
Scenario: T 221.2.9 In the Brief Title field, clear an existing Brief Title and Save. Verify validator error message is displayed. Print Screen.
Given The user Opened the AUT.
	Then The user enters "Username".
	Then The user clicks on "SignIn" Button.
    Then The user enters "Password".
    Then The user clicks on "SignIn" Button.
    And The user waits for "30" Seconds.	
    Then the user clicks on "Test Title 1507491160238" link.
	Then the user clicks on "Details" link.
	Then The user clicks on "Edit Study" Button.
	Then The user clears "Study Edit Brief Title Max+1" and presses enter.
	Then The user clicks on "Save Study" Button.
	Then the user asserts value of "Study Error Div" with "Error Study Edit Brief Title Max+1".

@VerifyStudyEditStatusNotEditable
Scenario: T 221.2.10 Clear an existing Study Status. Verify the field is display only. Print Screen.
Given The user Opened the AUT.
	Then The user enters "Username".
	Then The user clicks on "SignIn" Button.
    Then The user enters "Password".
    Then The user clicks on "SignIn" Button.
    And The user waits for "30" Seconds.	
    Then the user clicks on "Test Title 1507491160238" link.
	Then the user clicks on "Details" link.
	Then The user clicks on "Edit Study" Button.
	Then The user checks "Study Edit Study Status" field is not edible.
	
@VerifyStudyEditOfficialTitleMax+1
Scenario: T 221.2.11 In the Official Title field, change an existing Official Title to max+1 characters and Save. Verify validator error message is displayed. Print Screen.
Given The user Opened the AUT.
	Then The user enters "Username".
	Then The user clicks on "SignIn" Button.
    Then The user enters "Password".
    Then The user clicks on "SignIn" Button.
    And The user waits for "30" Seconds.	
    Then the user clicks on "Test Title 1507491160238" link.
	Then the user clicks on "Details" link.
	Then The user clicks on "Edit Study" Button.
	Then The user enters "Study Edit Official Title Max+1".
	Then The user clicks on "Save Study" Button.
	Then the user asserts value of "Study Error Div" with "Error Study Edit Official Title Max+1".
	
@VerifyStudyEditSecondaryIdMax+1
Scenario: T 221.2.12 In the Secondary IDs field, change an existing Secondary IDs to max+1 characters and Save. Verify validator error message is displayed. Print Screen.
Given The user Opened the AUT.
	Then The user enters "Username".
	Then The user clicks on "SignIn" Button.
    Then The user enters "Password".
    Then The user clicks on "SignIn" Button.
    And The user waits for "30" Seconds.	
    Then the user clicks on "Test Title 1507491160238" link.
	Then the user clicks on "Details" link.
	Then The user clicks on "Edit Study" Button.
	Then The user enters "Study Secondary ID Max+1".
	Then The user clicks on "Save Study" Button.
	Then the user asserts value of "Study Error Div" with "Error Study Secondary ID Max+1".
	
@VerifyStudyEditBriefSummaryMax+1
Scenario: T 221.2.13 In the Brief Summary field, change an existing value to max+1 characters and Save. Verify validator error message is displayed. Print Screen.
Given The user Opened the AUT.
	Then The user enters "Username".
	Then The user clicks on "SignIn" Button.
    Then The user enters "Password".
    Then The user clicks on "SignIn" Button.
    And The user waits for "30" Seconds.	
    Then the user clicks on "Test Title 1507491160238" link.
	Then the user clicks on "Details" link.
	Then The user clicks on "Edit Study" Button.
	Then The user enters "Study Edit Brief Summary Max+1".
	Then The user clicks on "Save Study" Button.
	Then the user asserts value of "Study Error Div" with "Error Study Edit Brief Summary Max+1".

@VerifyStudyEditDetailedDescriptionMax+1
Scenario: T 221.2.15 In the Detailed Description field, change an existing value to max+1 characters and Save. Verify validator error message is displayed. Print Screen.
Given The user Opened the AUT.
	Then The user enters "Username".
	Then The user clicks on "SignIn" Button.
    Then The user enters "Password".
    Then The user clicks on "SignIn" Button.
    And The user waits for "30" Seconds.	
    Then the user clicks on "Test Title 1507491160238" link.
	Then the user clicks on "Details" link.
	Then The user clicks on "Edit Study" Button.
	Then The user enters "Study Edit Detailed Description Max+1".
	Then The user clicks on "Save Study" Button.
	Then the user asserts value of "Study Error Div" with "Error Study Edit Detailed Description Max+1".
	
@VerifyStudyEditSponsorMax+1
Scenario: T 221.2.16 In the Sponsor field, change an existing value to max+1 characters and Save. Verify validator error message is displayed. Print Screen.
Given The user Opened the AUT.
	Then The user enters "Username".
	Then The user clicks on "SignIn" Button.
    Then The user enters "Password".
    Then The user clicks on "SignIn" Button.
    And The user waits for "30" Seconds.	
    Then the user clicks on "Test Title 1507491160238" link.
	Then the user clicks on "Details" link.
	Then The user clicks on "Edit Study" Button.
	Then The user enters "Study Edit Sponsor Max+1".
	Then The user clicks on "Save Study" Button.
	Then the user asserts value of "Study Error Div" with "Error Study Edit Sponsor Max+1".

@VerifyStudyEditClearSponsor
Scenario: T 221.2.17 In the Sponsor field, clear existing value and Save. Verify validator error message is displayed. Print Screen.
Given The user Opened the AUT.
	Then The user enters "Username".
	Then The user clicks on "SignIn" Button.
    Then The user enters "Password".
    Then The user clicks on "SignIn" Button.
    And The user waits for "30" Seconds.	
    Then the user clicks on "Test Title 1507491160238" link.
	Then the user clicks on "Details" link.
	Then The user clicks on "Edit Study" Button.
	Then The user clears "Study Edit Sponsor Max+1" and presses enter.
	Then The user clicks on "Save Study" Button.
	Then the user asserts value of "Study Error Div" with "Error Study Edit Sponsor Max+1".

@VerifyStudyEditCollaboratorMax+1
Scenario: T 221.2.18 In the Collaborators field, change a value to max+1 characters and Save. Verify validator error message is displayed. Print Screen.
Given The user Opened the AUT.
	Then The user enters "Username".
	Then The user clicks on "SignIn" Button.
    Then The user enters "Password".
    Then The user clicks on "SignIn" Button.
    And The user waits for "30" Seconds.	
    Then the user clicks on "Test Title 1507491160238" link.
	Then the user clicks on "Details" link.
	Then The user clicks on "Edit Study" Button.
	Then The user enters "Study Edit Collaborator Max+1".
	Then The user clicks on "Save Study" Button.
	Then the user asserts value of "Study Error Div" with "Error Study Edit Collaborator Max+1".
	
@VerifyEditStudySelectPhase
Scenario: T 221.2.19 Select Study Phase value from the drop down. Verify the values are based on the spec. Print Screen.
Given The user Opened the AUT.
	Then The user enters "Username".
	Then The user clicks on "SignIn" Button.
    Then The user enters "Password".
    Then The user clicks on "SignIn" Button.
    And The user waits for "30" Seconds.	
    Then the user clicks on "Test Title 1507491160238" link.
	Then the user clicks on "Details" link.
	Then The user clicks on "Edit Study" Button.
	Then The user clicks on "Study Edit Summary Phase" drop down, select result from "Summary Phase" and asserts value with "Phase Values".
	
@VerifyStudyEditInvalidProtocolDate
Scenario: T 221.2.20 In the Protocol Verification/IRB Approval Date field, enter an invalid date (e.g. Feb 31, 2013) and click Save. Verify validator error message is displayed. Print Screen.
Given The user Opened the AUT.
	Then The user enters "Username".
	Then The user clicks on "SignIn" Button.
    Then The user enters "Password".
    Then The user clicks on "SignIn" Button.
    And The user waits for "30" Seconds.	
    Then the user clicks on "Test Title 1507491160238" link.
	Then the user clicks on "Details" link.
	Then The user clicks on "Edit Study" Button.
	Then The user enters "Invalid Protocol Verification Date".
	Then The user clicks on "Save Study" Button.
	Then the user asserts value of "Study Error Div" with "Error Protocol Verification Date".
	Then The user checks "Invalid Protocol Verification Date" field is edible.
		
@VerifyStudyEditInvalidStudyStartDate
Scenario: T 221.2.21 In the Study Start Date field, enter an invalid date (e.g. Feb 31, 2013) and click Save. Verify validator error message is displayed. Print Screen.
Given The user Opened the AUT.
	Then The user enters "Username".
	Then The user clicks on "SignIn" Button.
    Then The user enters "Password".
    Then The user clicks on "SignIn" Button.
    And The user waits for "30" Seconds.	
    Then the user clicks on "Test Title 1507491160238" link.
	Then the user clicks on "Details" link.
	Then The user clicks on "Edit Study" Button.
	Then The user enters "Invalid Study Start Date".
	Then The user clicks on "Save Study" Button.
	Then the user asserts value of "Study Error Div" with "Error Study Start Date".
	Then The user checks "Invalid Study Start Date" field is edible.
	
@VerufyInvalidStudyCompletionDate
Scenario: T 221.2.22 In the Study Completion Date field, enter an invalid date (e.g. Feb 31, 2013) and click Save. Verify validator error message is displayed. Print Screen.	
Given The user Opened the AUT.
	Then The user enters "Username".
	Then The user clicks on "SignIn" Button.
    Then The user enters "Password".
    Then The user clicks on "SignIn" Button.
    And The user waits for "30" Seconds.	
    Then the user clicks on "Test Title 1507491160238" link.
	Then the user clicks on "Details" link.
	Then The user clicks on "Edit Study" Button.
	Then The user enters "Invalid Study Completion Date".
	Then The user clicks on "Save Study" Button.
	Then the user asserts value of "Study Error Div" with "Error Study Completion Date".
	Then The user checks "Invalid Study Completion Date" field is edible.

@VerifyStartLessThanCompletionDate
Scenario: T 221.2.23 In the Study Start Date field, enter a date that is greater than Study Completion Date and Save. Verify validator error message is displayed. Print Screen.
Given The user Opened the AUT.
	Then The user enters "Username".
	Then The user clicks on "SignIn" Button.
    Then The user enters "Password".
    Then The user clicks on "SignIn" Button.
    And The user waits for "30" Seconds.	
    Then the user clicks on "Test Title 1507491160238" link.
	Then the user clicks on "Details" link.
	Then The user clicks on "Edit Study" Button.
	Then The user enters "Study Start Date".
	Then The user enters "Study Completion Date".
	Then The user clicks on "Save Study" Button.
	Then the user asserts value of "Study Error Div" with "Error Study Start Less".
	Then The user checks "Study Completion Date" field is edible.
	Then The user checks "Study Start Date" field is edible.

@VerifyStudyEditPurpose
Scenario: T 221.2.25 Select Purpose value from the drop down. Verify the values are based on the spec. Print Screen.
Given The user Opened the AUT.
	Then The user enters "Username".
	Then The user clicks on "SignIn" Button.
    Then The user enters "Password".
    Then The user clicks on "SignIn" Button.
    And The user waits for "30" Seconds.	
    Then the user clicks on "Test Title 1507491160238" link.
	Then the user clicks on "Details" link.
	Then The user clicks on "Edit Study" Button.
	Then The user clicks on "Summary Purpose Button" drop down, select result from "Summary Purpose" and asserts value with "Phase Values".
	
@VerifyStudyEditAllocation
Scenario: T 221.2.26 Select Allocation value from the drop down. Verify the values are based on the spec. Print Screen.
Given The user Opened the AUT.
	Then The user enters "Username".
	Then The user clicks on "SignIn" Button.
    Then The user enters "Password".
    Then The user clicks on "SignIn" Button.
    And The user waits for "30" Seconds.	
    Then the user clicks on "Test Title 1507491160238" link.
	Then the user clicks on "Details" link.
	Then The user clicks on "Edit Study" Button.
	Then The user clicks on "Summary Allocation Button" drop down, select result from "Summary Allocation" and asserts value with "Allocation Values".
	
@VerifyStudyEditMasking
Scenario: T 221.2.27 Select Masking value from the drop down. Verify the values are based on the spec. Print Screen.
Given The user Opened the AUT.
	Then The user enters "Username".
	Then The user clicks on "SignIn" Button.
    Then The user enters "Password".
    Then The user clicks on "SignIn" Button.
    And The user waits for "30" Seconds.	
    Then the user clicks on "Test Title 1507491160238" link.
	Then the user clicks on "Details" link.
	Then The user clicks on "Edit Study" Button.
	Then The user clicks on "Summary Masking Button" drop down, select result from "Summary Masking" and asserts value with "Masking Values".
	
@VerifyStudyEditSelectControlValues
Scenario: T 221.2.28 Select Control value from the drop down. Verify the values are based on the spec. Print Screen.
Given The user Opened the AUT.
	Then The user enters "Username".
	Then The user clicks on "SignIn" Button.
    Then The user enters "Password".
    Then The user clicks on "SignIn" Button.
    And The user waits for "30" Seconds.	
    Then the user clicks on "Test Title 1507491160238" link.
	Then the user clicks on "Details" link.
	Then The user clicks on "Edit Study" Button.
	Then The user clicks on "Control Value Button" drop down, select result from "Control Value" and asserts value with "Control Value Elements".

@VerifyStudyEditIntervention
Scenario: T 221.2.29 Select Intervention value from the drop down. Verify the values are based on the spec. Print Screen.
Given The user Opened the AUT.
	Then The user enters "Username".
	Then The user clicks on "SignIn" Button.
    Then The user enters "Password".
    Then The user clicks on "SignIn" Button.
    And The user waits for "30" Seconds.	
    Then the user clicks on "Test Title 1507491160238" link.
	Then the user clicks on "Details" link.
	Then The user clicks on "Edit Study" Button.
	Then The user clicks on "Intervention Button" drop down, select result from "Intervention Value" and asserts value with "Intervention Value Elements".

@VerifyEditStudyClassification	
Scenario: T 221.2.30 Select Study Classification value from the drop down. Verify the values are based on the spec. Print Screen.	
Given The user Opened the AUT.
	Then The user enters "Username".
	Then The user clicks on "SignIn" Button.
    Then The user enters "Password".
    Then The user clicks on "SignIn" Button.
    And The user waits for "30" Seconds.	
    Then the user clicks on "Test Title 1507491160238" link.
	Then the user clicks on "Details" link.
	Then The user clicks on "Edit Study" Button.
	Then The user clicks on "Study Classification Button" drop down, select result from "Study Classification Value" and asserts value with "Study Classification Value Elements".

@VerifyStudyEditDuratiion
Scenario: T 221.2.31 Select Duration value from the drop down. Verify the values are based on the spec. Print Screen.
Given The user Opened the AUT.
	Then The user enters "Username".
	Then The user clicks on "SignIn" Button.
    Then The user enters "Password".
    Then The user clicks on "SignIn" Button.
    And The user waits for "30" Seconds.	
    Then the user clicks on "Test Title 1507491160238" link.
	Then the user clicks on "Details" link.
	Then The user clicks on "Edit Study" Button.
	Then The user clicks on "Study Duration Button" drop down, select result from "Study Duration Value" and asserts value with "Study Duration Value Elements".
	
@VerifyStudyEditSelection
Scenario: T 221.2.32 Select Selection value from the drop down. Verify the values are based on the spec. Print Screen.	
Given The user Opened the AUT.
	Then The user enters "Username".
	Then The user clicks on "SignIn" Button.
    Then The user enters "Password".
    Then The user clicks on "SignIn" Button.
    And The user waits for "30" Seconds.	
    Then the user clicks on "Test Title 1507491160238" link.
	Then the user clicks on "Details" link.
	Then The user clicks on "Edit Study" Button.
	Then The user clicks on "Study Selection Button" drop down, select result from "Study Selection Value" and asserts value with "Study Selection Value Elements".
	
@VerifyStudyEditTiming
Scenario: T 221.2.33 Select Timing value from the drop down. Verify the values are based on the spec. Print Screen.
Given The user Opened the AUT.
	Then The user enters "Username".
	Then The user clicks on "SignIn" Button.
    Then The user enters "Password".
    Then The user clicks on "SignIn" Button.
    And The user waits for "30" Seconds.	
    Then the user clicks on "Test Title 1507491160238" link.
	Then the user clicks on "Details" link.
	Then The user clicks on "Edit Study" Button.
	Then The user clicks on "Study Selection Button" drop down, select result from "Study Selection Value" and asserts value with "Study Selection Value Elements".

@VerifyStudyEditType
Scenario: T 221.2.34 Select Type value from the drop down. Verify the values are based on the spec. Print Screen.
Given The user Opened the AUT.
	Then The user enters "Username".
	Then The user clicks on "SignIn" Button.
    Then The user enters "Password".
    Then The user clicks on "SignIn" Button.
    And The user waits for "30" Seconds.	
    Then the user clicks on "Test Title 1507491160238" link.
	Then the user clicks on "Details" link.
	Then The user clicks on "Edit Study" Button.
	Then The user clicks on "Study Type Button" drop down, select result from "Study Type Value" and asserts value with "Study Type Value Elements".

@VerifyStudyEditGender
Scenario: T 221.2.35 Select Gender value from the drop down. Verify the values are based on the spec. Print Screen.
Given The user Opened the AUT.
	Then The user enters "Username".
	Then The user clicks on "SignIn" Button.
    Then The user enters "Password".
    Then The user clicks on "SignIn" Button.
    And The user waits for "30" Seconds.	
    Then the user clicks on "Test Title 1507491160238" link.
	Then the user clicks on "Details" link.
	Then The user clicks on "Edit Study" Button.
	Then The user clicks on "Study Gender Button" drop down, select result from "Study Gender Value" and asserts value with "Study Gender Value Elements".

@VerifyStudyEditPrincipalInvestigatorChoose
Scenario: T 221.2.36 Click on the Principal Investigator Choose button. Verify User Selection pop-up form is displayed. Print Screen.
Given The user Opened the AUT.
	Then The user enters "Username".
	Then The user clicks on "SignIn" Button.
    Then The user enters "Password".
    Then The user clicks on "SignIn" Button.
    And The user waits for "30" Seconds.	
    Then the user clicks on "Test Title 1507491160238" link.
	Then the user clicks on "Details" link.
	Then The user clicks on "Edit Study" Button.
	Then The user clicks on "Principal User Choose" Button.
	Then The user checks "Principal User Name Search Box" field is edible.

@VerifyStudyEditChoosePrincipalInvestigator
Scenario: T 221.2.37 Select a User Name in User Selection pop-up form. Verify the User Name is displayed. Print Screen.
Given The user Opened the AUT.
	Then The user enters "Username".
	Then The user clicks on "SignIn" Button.
    Then The user enters "Password".
    Then The user clicks on "SignIn" Button.
    And The user waits for "30" Seconds.	
    Then the user clicks on "Test Title 1507491160238" link.
	Then the user clicks on "Details" link.
	Then The user clicks on "Edit Study" Button.
	Then The user clicks on "Principal User Choose" Button.
	Then The user enters from file without delete with key "Principal User Name Search Box" presses enter.
	Then the user clicks on "Principal User Select" link.	

@VerifyStudyEditChoosePrincipalInvestigatorCancel
Scenario: T 221.2.37 Select a User Name in User Selection pop-up form. Verify the User Name is displayed. Print Screen.
Given The user Opened the AUT.
	Then The user enters "Username".
	Then The user clicks on "SignIn" Button.
    Then The user enters "Password".
    Then The user clicks on "SignIn" Button.
    And The user waits for "30" Seconds.	
    Then the user clicks on "Test Title 1507491160238" link.
	Then the user clicks on "Details" link.
	Then The user clicks on "Edit Study" Button.
	Then The user clicks on "Principal User Choose" Button.
	Then The user enters from file without delete with key "Principal User Name Search Box" presses enter.
	Then the user clicks on "Principal User Select" link.	

@VeryfyStudyConditionAndEligibilityEdit
Scenario: T 221.3.1 Click on the Edit button in the Conditions and Eligibility section. Verify the screen matches spec. Print Screen.
Given The user Opened the AUT.
	Then The user enters "Username".
	Then The user clicks on "SignIn" Button.
    Then The user enters "Password".
    Then The user clicks on "SignIn" Button.
    And The user waits for "30" Seconds.	
    Then the user clicks on "Test Title 1507491160238" link.
	Then the user clicks on "Details" link.
	Then The user clicks on "Edit Study" Button.
	Then the user clicks on "Edit Condition And Eligibility" link.
	Then The user waits for "3" Seconds.
	Then The user checks "Conditions Field" field is edible.

@VeryfyStudyConditionAndEligibilityEdit
Scenario: T 221.3.2 Click Save button. Verify the changes made to Conditions and Eligibility section data are saved and screen reverts to View mode. Print Screen.
Given The user Opened the AUT.
	Then The user enters "Username".
	Then The user clicks on "SignIn" Button.
    Then The user enters "Password".
    Then The user clicks on "SignIn" Button.
    And The user waits for "30" Seconds.	
    Then the user clicks on "Test Title 1507491160238" link.
	Then the user clicks on "Details" link.
	Then The user clicks on "Edit Study" Button.
	Then the user clicks on "Edit Condition And Eligibility" link.
	Then The user waits for "3" Seconds.
	Then The user enters "Condition Field" with timestamp and saves.
	Then The user clicks on "Save Condition and Eligibility" Button.
	Then the user asserts value of "Condition Field Text" from file.

@VeryfyStudyConditionAndEligibilityEditCancel	
Scenario: T 221.3.3 Click Cancel button. Verify no changes are made to Conditions and Eligibility data and screen reverts to View mode. Print Screen.	
Given The user Opened the AUT.
	Then The user enters "Username".
	Then The user clicks on "SignIn" Button.
    Then The user enters "Password".
    Then The user clicks on "SignIn" Button.
    And The user waits for "30" Seconds.	
    Then the user clicks on "Test Title 1507491160238" link.
	Then the user clicks on "Details" link.
	Then The user clicks on "Edit Study" Button.
	Then the user saves content for "Condition Field Text".
	Then the user clicks on "Edit Condition And Eligibility" link.
	Then The user waits for "3" Seconds.
	Then The user writes "Condition Field" with timestamp.
	Then The user clicks on "Cancel Condition and Eligibility" Button.
	Then the user asserts value of "Condition Field Text" from file.

@VerifyEditStudyConditionMax+1
Scenario: T 221.3.4 In the Conditions field, change an existing value to max+1 characters and Save. Verify validator error message is displayed. Print Screen.	
Given The user Opened the AUT.
	Then The user enters "Username".
	Then The user clicks on "SignIn" Button.
    Then The user enters "Password".
    Then The user clicks on "SignIn" Button.
    And The user waits for "30" Seconds.	
    Then the user clicks on "Test Title 1507491160238" link.
	Then the user clicks on "Details" link.
	Then The user clicks on "Edit Study" Button.
	Then the user clicks on "Edit Condition And Eligibility" link.
	Then The user waits for "3" Seconds.
	Then The user enters "Condition Field Max+1".
	Then The user clicks on "Save Condition and Eligibility" Button.
	Then the user asserts html contains with "Error Condition Field Max+1".

@VerifyStudyEditKeywordMax+1
Scenario: T 221.3.5 In the Keywords field, change an existing value to max+1 characters and Save. Verify validator error message is displayed. Print Screen.	
Given The user Opened the AUT.
	Then The user enters "Username".
	Then The user clicks on "SignIn" Button.
    Then The user enters "Password".
    Then The user clicks on "SignIn" Button.
    And The user waits for "30" Seconds.	
    Then the user clicks on "Test Title 1507491160238" link.
	Then the user clicks on "Details" link.
	Then The user clicks on "Edit Study" Button.
	Then the user clicks on "Edit Condition And Eligibility" link.
	Then The user waits for "3" Seconds.
	Then The user enters "Conditions Keyword Max+1".
	Then The user clicks on "Save Condition and Eligibility" Button.
	Then the user asserts html contains with "Error Keyword Field Max+1".
	
@VerifyStudyEditEligibilityCritMax+1	
Scenario: T 221.3.6 In the Eligibility Criteria field, change existing value to max+1 characters and Save. Verify validator error message is displayed. Print Screen.
Given The user Opened the AUT.
	Then The user enters "Username".
	Then The user clicks on "SignIn" Button.
    Then The user enters "Password".
    Then The user clicks on "SignIn" Button.
    And The user waits for "30" Seconds.	
    Then the user clicks on "Test Title 1507491160238" link.
	Then the user clicks on "Details" link.
	Then The user clicks on "Edit Study" Button.
	Then the user clicks on "Edit Condition And Eligibility" link.
	Then The user waits for "3" Seconds.
	Then The user enters "Conditions Eligibility Max+1".
	Then The user clicks on "Save Condition and Eligibility" Button.
	Then the user asserts html contains with "Error Eligibility Field Max+1".
	
@VerifyStudyEditMinAgeLess0
Scenario: T 221.3.7 Enter a value <= 0 in Minimum Age field and click the Save button. Verify validator error message is displayed. Print Screen.	
Given The user Opened the AUT.
	Then The user enters "Username".
	Then The user clicks on "SignIn" Button.
    Then The user enters "Password".
    Then The user clicks on "SignIn" Button.
    And The user waits for "30" Seconds.	
    Then the user clicks on "Test Title 1507491160238" link.
	Then the user clicks on "Details" link.
	Then The user clicks on "Edit Study" Button.
	Then the user clicks on "Edit Condition And Eligibility" link.
	Then The user waits for "3" Seconds.
	Then The user enters "Study Edit Min Age".
	Then The user clicks on "Save Condition and Eligibility" Button.
	Then the user asserts html contains with "Error Min Age".
	
@VerifyStudyEditMinGreater120
Scenario: T 221.3.8 Enter a value >= 120 in Minimum Age field and click the Save button. Verify validator error message is displayed. Print Screen.	
Given The user Opened the AUT.
	Then The user enters "Username".
	Then The user clicks on "SignIn" Button.
    Then The user enters "Password".
    Then The user clicks on "SignIn" Button.
    And The user waits for "30" Seconds.	
    Then the user clicks on "Test Title 1507491160238" link.
	Then the user clicks on "Details" link.
	Then The user clicks on "Edit Study" Button.
	Then the user clicks on "Edit Condition And Eligibility" link.
	Then The user waits for "3" Seconds.
	Then The user enters "Study Edit Min Age 120".
	Then The user clicks on "Save Condition and Eligibility" Button.
	Then the user asserts html contains with "Error Min Age 120".
	
@VerifyStudyEditMin
Scenario: T 221.3.9 Enter a value > 0 and < 120 in Minimum Age field and click the Save button. Verify the value is successfully changed. Print Screen.	
Given The user Opened the AUT.
	Then The user enters "Username".
	Then The user clicks on "SignIn" Button.
    Then The user enters "Password".
    Then The user clicks on "SignIn" Button.
    And The user waits for "30" Seconds.	
    Then the user clicks on "Test Title 1507491160238" link.
	Then the user clicks on "Details" link.
	Then The user clicks on "Edit Study" Button.
	Then the user clicks on "Edit Condition And Eligibility" link.
	Then The user waits for "3" Seconds.
	Then The user enters "Study Edit Min Age Normal".
	Then The user clicks on "Save Condition and Eligibility" Button and asserts.
	
@VerifyStudyEditMaxAgeLess0
Scenario: T 221.3.10 Enter a value <= 0 in Maximum Age field and click the Save button. Verify validator error message is displayed. Print Screen.	
Given The user Opened the AUT.
	Then The user enters "Username".
	Then The user clicks on "SignIn" Button.
    Then The user enters "Password".
    Then The user clicks on "SignIn" Button.
    And The user waits for "30" Seconds.	
    Then the user clicks on "Test Title 1507491160238" link.
	Then the user clicks on "Details" link.
	Then The user clicks on "Edit Study" Button.
	Then the user clicks on "Edit Condition And Eligibility" link.
	Then The user waits for "3" Seconds.
	Then The user enters "Study Edit Max Age Less 0".
	Then The user clicks on "Save Condition and Eligibility" Button.
	Then the user asserts html contains with "Error Max Age Less 0".

@VerifyStudyEditMaxAgeGreater120
Scenario: T 221.3.11 Enter a value >= 120 in Maximum Age field and click the Save button. Verify the value is successfully changed. Print Screen.
Given The user Opened the AUT.
	Then The user enters "Username".
	Then The user clicks on "SignIn" Button.
    Then The user enters "Password".
    Then The user clicks on "SignIn" Button.
    And The user waits for "30" Seconds.	
    Then the user clicks on "Test Title 1507491160238" link.
	Then the user clicks on "Details" link.
	Then The user clicks on "Edit Study" Button.
	Then the user clicks on "Edit Condition And Eligibility" link.
	Then The user waits for "3" Seconds.
	Then The user enters "Study Edit Max Age Greater 120".
	Then The user clicks on "Save Condition and Eligibility" Button.
	Then the user asserts html contains with "Error Max Age Greater 120".

@VerifyStudyEditMaxAge0To120
Scenario: T 221.3.12 Enter a value > 0 and < 120 in Maximum Age field and click the Save button. Verify the value is successfully changed. Print Screen.
Given The user Opened the AUT.
	Then The user enters "Username".
	Then The user clicks on "SignIn" Button.
    Then The user enters "Password".
    Then The user clicks on "SignIn" Button.
    And The user waits for "30" Seconds.	
    Then the user clicks on "Test Title 1507491160238" link.
	Then the user clicks on "Details" link.
	Then The user clicks on "Edit Study" Button.
	Then the user clicks on "Edit Condition And Eligibility" link.
	Then The user waits for "3" Seconds.
	Then The user enters "Study Edit Max Age Normal".
	Then The user clicks on "Save Condition and Eligibility" Button and asserts.

@VerifyStudyEditSelectHealthyVolunteer
Scenario: T 221.3.13 Select Healthy Volunteer Accepted value from the drop down. Verify the values are based on the spec. Print Screen.
Given The user Opened the AUT.
	Then The user enters "Username".
	Then The user clicks on "SignIn" Button.
    Then The user enters "Password".
    Then The user clicks on "SignIn" Button.
    And The user waits for "30" Seconds.	
    Then the user clicks on "Test Title 1507491160238" link.
	Then the user clicks on "Details" link.
	Then The user clicks on "Edit Study" Button.
	Then the user clicks on "Edit Condition And Eligibility" link.
	Then The user waits for "3" Seconds.
	Then The user clicks on "Healthy Volunteer Button" drop down, select result from "Healthy Volunteer List" and asserts value with "Healthy Volunteer Values".

@VerifyExpectedTotalEnrolementLess0
Scenario: T 221.3.14 Enter a value less than 0 in Expected Total Enrollment field and click the Save button. Verify validator error message is displayed. Print Screen.
Given The user Opened the AUT.
	Then The user enters "Username".
	Then The user clicks on "SignIn" Button.
    Then The user enters "Password".
    Then The user clicks on "SignIn" Button.
    And The user waits for "30" Seconds.	
    Then the user clicks on "Test Title 1507491160238" link.
	Then the user clicks on "Details" link.
	Then The user clicks on "Edit Study" Button.
	Then the user clicks on "Edit Condition And Eligibility" link.
	Then The user waits for "3" Seconds.
	Then The user enters "Expected Total Enrolement Less 0".
	Then The user clicks on "Save Condition and Eligibility" Button.
	Then the user asserts html contains with "Error Total Enrolement Less 0".
	
@VerifyExpectedTotalEnrolementEmpty
Scenario: T 221.3.15 In the Expected Total Enrollment field, clear an existing value and Save. Verify validator error message is displayed. Print Screen.	
Given The user Opened the AUT.
	Then The user enters "Username".
	Then The user clicks on "SignIn" Button.
    Then The user enters "Password".
    Then The user clicks on "SignIn" Button.
    And The user waits for "30" Seconds.	
    Then the user clicks on "Test Title 1507491160238" link.
	Then the user clicks on "Details" link.
	Then The user clicks on "Edit Study" Button.
	Then the user clicks on "Edit Condition And Eligibility" link.
	Then The user waits for "3" Seconds.
	Then The user clears "Expected Total Enrolement Less 0" and presses enter.
	Then The user clicks on "Save Condition and Eligibility" Button.
	Then the user asserts html contains with "Error Total Enrolement Less 0".
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	

	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
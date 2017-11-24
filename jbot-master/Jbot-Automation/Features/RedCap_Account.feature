@All
@TestAccount_Redcap
Feature: RedCap Account Automation

@VerifyAccountUsername
 Scenario: Verify the application notification Link
 	Given The user Opened the AUT.
	##And The user waits for the page to load.	
	Then The user enters "Username".
	Then The user clicks on "SignIn" Button.
	#And The user waits for "10" Seconds.
    Then The user enters "Password".
    Then The user clicks on "SignIn" Button.	 	
 	And The user waits for "30" Seconds.
 	Then the user clicks on "Account Image" link.
	#And The user waits for "5" Seconds.
	Then the user clicks on "Account Settings" link.
	And The user waits for "5" Seconds.
    #And The user waits for "10" Seconds.
    Then the user asserts value of "User Name" value with "jrao@hudson.edu".

    
 @VerifyAccountEmail
 Scenario: Verify the application notification Link
 	Given The user Opened the AUT.
	##And The user waits for the page to load.	
	Then The user enters "Username".
	Then The user clicks on "SignIn" Button.
	#And The user waits for "10" Seconds.
    Then The user enters "Password".
    Then The user clicks on "SignIn" Button.
 	And The user waits for "35" Seconds.
 	Then the user clicks on "Account Image" link.
	#And The user waits for "10" Seconds.
	Then the user clicks on "Account Settings" link.
	And The user waits for "10" Seconds.
    #And The user waits for "10" Seconds.
    Then the user asserts value of "Email Field" value with "dev@redcapcloud.com".


@VerifyAccountLanguage
 Scenario: Verify the application notification Link
 	Given The user Opened the AUT.
	##And The user waits for the page to load.	
	Then The user enters "Username".
	Then The user clicks on "SignIn" Button.
	#And The user waits for "10" Seconds.
    Then The user enters "Password".
    Then The user clicks on "SignIn" Button.	
 	And The user waits for "35" Seconds.
 	Then the user clicks on "Account Image" link.
	#And The user waits for "5" Seconds.
	Then the user clicks on "Account Settings" link.
	And The user waits for "5" Seconds.
    #And The user waits for "5" Seconds.
    Then The user clicks on "Language" drop down, select result from "Result List" and asserts value with "Language Values".

@VerifyAccountChangeLanguage
 Scenario: Verify the application notification Link
 	Given The user Opened the AUT.
	##And The user waits for the page to load.	
	Then The user enters "Username".
	Then The user clicks on "SignIn" Button.
	#And The user waits for "10" Seconds.
    Then The user enters "Password".
    Then The user clicks on "SignIn" Button.	
 	And The user waits for "35" Seconds.
 	Then the user clicks on "Account Image" link.
	#And The user waits for "5" Seconds.
	Then the user clicks on "Account Settings" link.
	And The user waits for "5" Seconds.
    #And The user waits for "5" Seconds.
    #And The user waits for "10" Seconds.
    Then the user clicks on "Chinese" link.
    Then The user clicks on "Save and Exit" Button.
    ##And The user waits for the page to load.
    #Then the user asserts value of "My Study" with " Studies".
    

@VerifyDateFormatChange
Scenario: T 201.4.5 On the Account Settings Screen, General Data tab, click the Date format dropdown list. Verify dropdown values match spec. Print Screen.
	Given The user Opened the AUT.
	##And The user waits for the page to load.	
	Then The user enters "Username".
	Then The user clicks on "SignIn" Button.
	#And The user waits for "10" Seconds.
    Then The user enters "Password".
    Then The user clicks on "SignIn" Button.	
 	And The user waits for "35" Seconds.
 	Then the user clicks on "Account Image" link.
	#And The user waits for "5" Seconds.
	Then the user clicks on "Account Settings" link.
    #And The user waits for "5" Seconds. 
    And The user waits for "5" Seconds.
    Then the user clicks on "Date Time Format" drop down
    Then the user clicks on "yyyy-MM-dd" link.
    Then The user clicks on "Save and Exit" Button.
    ##And The user waits for the page to load.
    Then the user gets a date from "Date Created" and validate its format "yyyy-MM-dd".
 

@VerifyUserFirstName
Scenario: T 201.4.7 On the Account Settings Screen, General Data tab, enter max+1 character for First Name and click the Save and Exit button. Verify validator error message is displayed. Print Screen.
	Given The user Opened the AUT.
	##And The user waits for the page to load.	
	Then The user enters "Username".
	Then The user clicks on "SignIn" Button.
	#And The user waits for "10" Seconds.
    Then The user enters "Password".
    Then The user clicks on "SignIn" Button.	
 	And The user waits for "35" Seconds.
 	Then the user clicks on "Account Image" link.
	#And The user waits for "5" Seconds.
	Then the user clicks on "Account Settings" link.
	And The user waits for "5" Seconds.
    #And The user waits for "5" Seconds. 
    Then The user enters "First Name". 
	Then The user clicks on "Save and Exit" Button.
	#And The user waits for "10" Seconds.
	Then the user asserts value of "Account Error" with "First Name - must be between 1 and 80 characters".
	

@VerifyFirstNameBlank
Scenario: T 201.4.8 On the Account Settings Screen, General Data tab, enter blank for First Name and click the Save and Exit button. Verify validator error message is displayed. Print Screen.
	Given The user Opened the AUT.
	##And The user waits for the page to load.	
	Then The user enters "Username".
	Then The user clicks on "SignIn" Button.
	#And The user waits for "10" Seconds.
    Then The user enters "Password".
    Then The user clicks on "SignIn" Button.	
 	And The user waits for "35" Seconds.
 	Then the user clicks on "Account Image" link.
	#And The user waits for "5" Seconds.
	Then the user clicks on "Account Settings" link.
    And The user waits for "5" Seconds. 
    Then The user enters "First Name Blank". 
    #And The user waits for "30" Seconds.
	Then The user clicks on "Save and Exit" Button.
	Then the user asserts value of "Account Error Blank" with "Validation failed".
	
@VerifyFirstNameMaxLength
Scenario: T 201.4.9 On the Account Settings Screen, General Data tab, enter max characters for First Name and click the Save and Exit button. Verify First Name is successfully changed. Print Screen.
	Given The user Opened the AUT.
	##And The user waits for the page to load.	
	Then The user enters "Username".
	Then The user clicks on "SignIn" Button.
	#And The user waits for "10" Seconds.
    Then The user enters "Password".
    Then The user clicks on "SignIn" Button.	
 	And The user waits for "35" Seconds.
 	Then the user clicks on "Account Image" link.
	#And The user waits for "5" Seconds.
	Then the user clicks on "Account Settings" link.
    And The user waits for "5" Seconds. 
    Then The user enters "First Name Max".
    Then The user clicks on "Save and Exit" Button.
	#And The user waits for "5" Seconds.
	Then the user asserts value of "Changes Saved" with "Changes Saved".
	
@VerifyLastNameBlank
Scenario: T 201.4.11 On the Account Settings Screen, General Data tab, enter blank for Last Name and click the Save and Exit button. Verify validator error message is displayed. Print Screen.	
	Given The user Opened the AUT.
	##And The user waits for the page to load.	
	Then The user enters "Username".
	Then The user clicks on "SignIn" Button.
	#And The user waits for "10" Seconds.
    Then The user enters "Password".
    Then The user clicks on "SignIn" Button.	
 	And The user waits for "35" Seconds.
 	Then the user clicks on "Account Image" link.
	#And The user waits for "5" Seconds.
	Then the user clicks on "Account Settings" link.
	And The user waits for "5" Seconds.
    #And The user waits for "5" Seconds. 
    Then The user enters "Last Name Blank".
    Then The user clicks on "Save and Exit" Button.
    Then the user asserts value of "Account Error Blank" with "Validation failed".

@VerifyLastnameMax+1
Scenario: T 201.4.10 On the Account Settings Screen, General Data tab, enter max+1 characters for Last Name and click the Save and Exit button. Verify validator error message is displayed. Print Screen.
	Given The user Opened the AUT.
	##And The user waits for the page to load.	
	Then The user enters "Username".
	Then The user clicks on "SignIn" Button.
	#And The user waits for "10" Seconds.
    Then The user enters "Password".
    Then The user clicks on "SignIn" Button.	
 	And The user waits for "35" Seconds.
 	Then the user clicks on "Account Image" link.
	#And The user waits for "5" Seconds.
	Then the user clicks on "Account Settings" link.
	And The user waits for "5" Seconds.
    #And The user waits for "5" Seconds. 
    Then The user enters "Last Name Max+1".
    Then The user clicks on "Save and Exit" Button.
    Then the user asserts value of "Account Error Blank" with "Last Name - must be between 1 and 80 characters".

@VerifyLastMaxElement
Scenario: T 201.4.12 On the Account Settings Screen, General Data tab, enter max characters for Last Name and click the Save and Exit button. Verify Last Name is successfully changed. Print Screen.
	Given The user Opened the AUT.
	##And The user waits for the page to load.	
	Then The user enters "Username".
	Then The user clicks on "SignIn" Button.
	#And The user waits for "10" Seconds.
    Then The user enters "Password".
    Then The user clicks on "SignIn" Button.	
 	And The user waits for "35" Seconds.
 	Then the user clicks on "Account Image" link.
	#And The user waits for "5" Seconds.
	Then the user clicks on "Account Settings" link.
	And The user waits for "5" Seconds.
    #And The user waits for "5" Seconds. 
    Then The user enters "Last Name Max".
    Then The user clicks on "Save and Exit" Button.
    #And The user waits for "10" Seconds. 
    Then the user asserts value of "Changes Saved" with "Changes Saved".

@VerifyDepartment
Scenario: T 201.5.1 On the Account Settings Screen, Organizations tab, select the Department field. Verify that Department field is display only and displays the current Department. Print Screen.
    Given The user Opened the AUT.
	##And The user waits for the page to load.	
	Then The user enters "Username".
	Then The user clicks on "SignIn" Button.
	#And The user waits for "5" Seconds.
    Then The user enters "Password".
    Then The user clicks on "SignIn" Button.	
 	And The user waits for "35" Seconds.
 	Then the user clicks on "Account Image" link.
	#And The user waits for "5" Seconds.
	Then the user clicks on "Account Settings" link.
	And The user waits for "5" Seconds.
    #And The user waits for "5" Seconds. 
    Then the user clicks on "Organization" link.
    #And The user waits for "5" Seconds.
    Then the user asserts value of "Department" field with "Select".
    
@VerifyJobTitle
Scenario: T 201.5.2 On the Account Settings Screen, Organizations tab, select the Job Title field. Verify that Job Title field is display only and displays the current Job Title. Print Screen.
	 Given The user Opened the AUT.
	##And The user waits for the page to load.	
	Then The user enters "Username".
	Then The user clicks on "SignIn" Button.
	#And The user waits for "10" Seconds.
    Then The user enters "Password".
    Then The user clicks on "SignIn" Button.	
 	And The user waits for "35" Seconds.
 	Then the user clicks on "Account Image" link.
	#And The user waits for "5" Seconds.
	Then the user clicks on "Account Settings" link.
    #And The user waits for "5" Seconds. 
    Then the user clicks on "Organization" link.
    Then the user asserts value of "Job Title" field with "Select".

@VerifyPhoneNumberMax+1
Scenario: T 201.5.3 On the Account Settings Screen, Organizations tab, enter max+1 characters for Work Phone and click the Save and Exit button. Verify validator error message is displayed. Print Screen.
	Given The user Opened the AUT.
	##And The user waits for the page to load.	
	Then The user enters "Username".
	Then The user clicks on "SignIn" Button.
	#And The user waits for "10" Seconds.
    Then The user enters "Password".
    Then The user clicks on "SignIn" Button.	
 	And The user waits for "35" Seconds.
 	Then the user clicks on "Account Image" link.
	#And The user waits for "5" Seconds.
	Then the user clicks on "Account Settings" link.
	And The user waits for "5" Seconds.
    #And The user waits for "5" Seconds. 
    Then the user clicks on "Organization" link.
    Then The user enters "Phone Number Max+1".
    Then The user clicks on "Save and Exit" Button.
    Then the user asserts value of "Organization Error" with "Work Phone - must be a valid phone number".

@VerifyPhoneNumberMax
Scenario: T 201.5.3 On the Account Settings Screen, Organizations tab, enter max+1 characters for Work Phone and click the Save and Exit button. Verify validator error message is displayed. Print Screen.
	Given The user Opened the AUT.
	##And The user waits for the page to load.	
	Then The user enters "Username".
	Then The user clicks on "SignIn" Button.
	#And The user waits for "10" Seconds.
    Then The user enters "Password".
    Then The user clicks on "SignIn" Button.	
 	And The user waits for "35" Seconds.
 	Then the user clicks on "Account Image" link.
	#And The user waits for "5" Seconds.
	Then the user clicks on "Account Settings" link.
	And The user waits for "5" Seconds.
    #And The user waits for "5" Seconds. 
    Then the user clicks on "Organization" link.
    Then The user enters "Phone Number Max".
    Then The user clicks on "Save and Exit" Button.
    #And The user waits for "10" Seconds.
    Then the user asserts value of "Changes Saved" with "Changes Saved".
    
@VeryPhoneNumberMax1
Scenario: T 201.5.4 On the Account Settings Screen, Organizations tab, enter max characters for Work Phone and click the Save and Exit button. Verify Work Phone is successfully changed. Print Screen.
	Given The user Opened the AUT.
	##And The user waits for the page to load.	
	Then The user enters "Username".
	Then The user clicks on "SignIn" Button.
	#And The user waits for "10" Seconds.
    Then The user enters "Password".
    Then The user clicks on "SignIn" Button.	
 	And The user waits for "35" Seconds.
 	Then the user clicks on "Account Image" link.
	#And The user waits for "5" Seconds.
	Then the user clicks on "Account Settings" link.
    #And The user waits for "5" Seconds. 
    And The user waits for "5" Seconds.
    Then the user clicks on "Organization" link.
    Then The user enters "Phone Number Max".
    Then The user clicks on "Save and Exit" Button.
    #And The user waits for "10" Seconds.
    Then the user asserts value of "Changes Saved" with "Changes Saved".
    
@VerifyMobileMax+1
Scenario: T 201.5.5 On the Account Settings Screen, Organizations tab, enter max+1 characters for Mobile Phone and click the Save and Exit button. Verify validator error message is displayed. Print Screen.
	Given The user Opened the AUT.
	##And The user waits for the page to load.	
	Then The user enters "Username".
	Then The user clicks on "SignIn" Button.
	#And The user waits for "10" Seconds.
    Then The user enters "Password".
    Then The user clicks on "SignIn" Button.	
 	And The user waits for "35" Seconds.
 	Then the user clicks on "Account Image" link.
	#And The user waits for "5" Seconds.
	Then the user clicks on "Account Settings" link.
	And The user waits for "5" Seconds.
    #And The user waits for "5" Seconds. 
    Then the user clicks on "Organization" link.
    #Mobile Number Max+1
    Then The user enters "Mobile Number Max+1".
    Then The user clicks on "Save and Exit" Button.
    #And The user waits for "10" Seconds.
	Then the user asserts value of "Account Error Blank" with "Mobile Phone - must be a valid phone number".
	
@VerifyMobileMax
Scenario: T 201.5.6 On the Account Settings Screen, Organizations tab, enter max characters for Mobile Phone and click the Save and Exit button. Verify Mobile Phone is successfully changed. Print Screen.
	Given The user Opened the AUT.
	##And The user waits for the page to load.	
	Then The user enters "Username".
	Then The user clicks on "SignIn" Button.
	#And The user waits for "10" Seconds.
    Then The user enters "Password".
    Then The user clicks on "SignIn" Button.	
 	And The user waits for "35" Seconds.
 	Then the user clicks on "Account Image" link.
	#And The user waits for "5" Seconds.
	Then the user clicks on "Account Settings" link.
	And The user waits for "5" Seconds.
    #And The user waits for "5" Seconds. 
    Then the user clicks on "Organization" link.
    #Mobile Number Max+1
    Then The user enters "Mobile Number Max".
    Then The user clicks on "Save and Exit" Button.
    #And The user waits for "5" Seconds.
    Then the user asserts value of "Changes Saved" with "Changes Saved".
	
@VerifyFaxMax+1
Scenario: T 201.5.7 On the Account Settings Screen, Organizations tab, enter max+1 characters for Fax Phone and click the Save and Exit button. Verify validator error message is displayed. Print Screen.
	Given The user Opened the AUT.
	##And The user waits for the page to load.	
	Then The user enters "Username".
	Then The user clicks on "SignIn" Button.
	#And The user waits for "10" Seconds.
    Then The user enters "Password".
    Then The user clicks on "SignIn" Button.	
 	And The user waits for "35" Seconds.
 	Then the user clicks on "Account Image" link.
	#And The user waits for "5" Seconds.
	Then the user clicks on "Account Settings" link.
	#And The user waits for "5" Seconds. 
    Then the user clicks on "Organization" link.
    #Mobile Number Max+1
    Then The user enters "Fax Number Max+1".
    Then The user clicks on "Save and Exit" Button.
    And The user waits for "5" Seconds.
	Then the user asserts value of "Account Error Blank" with "Fax Number- must be a valid phone number".

@VerifyFaxMax
Scenario: T 201.5.7 On the Account Settings Screen, Organizations tab, enter max+1 characters for Fax Phone and click the Save and Exit button. Verify validator error message is displayed. Print Screen.
	Given The user Opened the AUT.
	##And The user waits for the page to load.	
	Then The user enters "Username".
	Then The user clicks on "SignIn" Button.
	#And The user waits for "10" Seconds.
    Then The user enters "Password".
    Then The user clicks on "SignIn" Button.	
 	Then the user clicks on "Account Image" link.
	#And The user waits for "5" Seconds.
	Then the user clicks on "Account Settings" link.
	And The user waits for "5" Seconds.
    #And The user waits for "5" Seconds. 
    Then the user clicks on "Organization" link.
    #Mobile Number Max+1
    Then The user enters "Fax Number Max".
    Then The user clicks on "Save and Exit" Button.
    #And The user waits for "10" Seconds.
	Then the user asserts value of "Changes Saved" with "Changes Saved".

	@VerifyIncorrectPasswordonPwdChange
Scenario: T 201.6.1 On the Account Settings Screen, Security tab, enter an incorrect current password, New Password and Confirm New Password values that meet password guidelines click the Save and Exit button. Verify validator message. Print Screen.
	Given The user Opened the AUT.
	##And The user waits for the page to load.	
	Then The user enters "Username".
	Then The user clicks on "SignIn" Button.
	#And The user waits for "10" Seconds.
    Then The user enters "Password".
    Then The user clicks on "SignIn" Button.	
 	And The user waits for "35" Seconds.
 	Then the user clicks on "Account Image" link.
	#And The user waits for "5" Seconds.
	Then the user clicks on "Account Settings" link.
	And The user waits for "5" Seconds.
    #And The user waits for "5" Seconds. 
    Then the user clicks on "Security" link.
    Then The user enters "Incorrect current pass".
    Then The user enters "New Password".
    Then The user enters "Confirm Password".
    Then The user clicks on "Save and Exit" Button.
    #And The user waits for "10" Seconds.
    Then the user asserts value of "Security Error" with "Invalid Current password".

@VerifyCurrentandConfirmPassDiffer
Scenario: T 201.6.3 On the Account Settings Screen, Security tab, enter current password, New Password and Confirm New Password that meet password guidelines and are different, and click the Save and Exit button. Verify validator error message is displayed. Print Screen.
	Given The user Opened the AUT.
	##And The user waits for the page to load.	
	Then The user enters "Username".
	Then The user clicks on "SignIn" Button.
	#And The user waits for "10" Seconds.
    Then The user enters "Password".
    Then The user clicks on "SignIn" Button.	
 	And The user waits for "35" Seconds.
 	Then the user clicks on "Account Image" link.
	#And The user waits for "5" Seconds.
	Then the user clicks on "Account Settings" link.
	And The user waits for "5" Seconds.
    #And The user waits for "5" Seconds. 
    Then the user clicks on "Security" link.
    Then The user enters "current pass".
    Then The user enters "New Password".
    Then The user enters "Confirm Password Error".
    Then The user clicks on "Save and Exit" Button.
     #And The user waits for "10" Seconds.
    Then the user asserts value of "Security Error" with "Password - Passwords must match".

@VerifyPasswordChange
Scenario: T 201.6.4 On the Account Settings Screen, Security tab, enter current password, New Password and Confirm New Password that meet password guidelines and are same, and click the Save and Exit button. Verify new password is successfully set. Print Screen.
	Given The user Opened the AUT.
	##And The user waits for the page to load.	
	Then The user enters "Username".
	Then The user clicks on "SignIn" Button.
	#And The user waits for "10" Seconds.
    Then The user enters "Password".
    Then The user clicks on "SignIn" Button.	
 	And The user waits for "35" Seconds.
 	Then the user clicks on "Account Image" link.
	#And The user waits for "5" Seconds.
	Then the user clicks on "Account Settings" link.
	And The user waits for "5" Seconds.
    #And The user waits for "5" Seconds. 
    Then the user clicks on "Security" link.
    #And The user waits for "10" Seconds. 
    Then The user enters "current pass".
    Then The user enters "New Password".
    Then The user enters "Confirm Password".
    Then The user clicks on "Save and Exit" Button.
    #And The user waits for "5" Seconds.
    Then the user asserts value of "Changes Saved" with "Changes Saved".

    @VerifyChallengeDropdown
Scenario: T 201.6.5 On the Account Settings Screen, Security tab, click the Password Challenge Questions drop down list. Verify dropdown values match spec. Print Screen.
Given The user Opened the AUT.
	##And The user waits for the page to load.	
	Then The user enters "Username".
	Then The user clicks on "SignIn" Button.
	#And The user waits for "10" Seconds.
    Then The user enters "Password".
    Then The user clicks on "SignIn" Button.	
 	And The user waits for "35" Seconds.
 	Then the user clicks on "Account Image" link.
	#And The user waits for "5" Seconds.
	Then the user clicks on "Account Settings" link.
	And The user waits for "5" Seconds.
    #And The user waits for "5" Seconds. 
    Then the user clicks on "Security" link.
    #And The user waits for "5" Seconds. 
    Then The user clicks on "Security Question" drop down, select result from "Security Question Values" and asserts value with "Security Question Values".

@VerifyPasswordChallengeQuestionMax+1
Scenario: T 201.6.6 On the Account Settings Screen, Security tab, enter max+1 characters for Password Challenge Answer and click the Save and Exit button. Verify validator error message is displayed. Print Screen.
Given The user Opened the AUT.
	 ##And The user waits for the page to load.	
	Then The user enters "Username".
	Then The user clicks on "SignIn" Button.
	#And The user waits for "10" Seconds.
    Then The user enters "Password".
    Then The user clicks on "SignIn" Button.	
 	And The user waits for "35" Seconds.
 	Then the user clicks on "Account Image" link.
	#And The user waits for "5" Seconds.
	Then the user clicks on "Account Settings" link.
	And The user waits for "5" Seconds.
    #And The user waits for "5" Seconds. 
    Then the user clicks on "Security" link.
    #And The user waits for "10" Seconds. 
    ##And The user waits for "5" Seconds. 
    Then The user enters "passwordchallengemax+1".
	Then The user clicks on "Save and Exit" Button.
    #And The user waits for "10" Seconds.
    Then the user asserts value of "Security Error" with "Password Challenge Answer - must be between 3 and 50 characters".
    
@VerifyPasswordChallengeMaxLength
Scenario: T 201.6.7 On the Account Settings Screen, Security tab, enter max characters for Password Challenge Answer and click the Save and Exit button. Verify Password Challenge is successfully set. Print Screen.
Given The user Opened the AUT.
     ##And The user waits for the page to load.	
	Then The user enters "Username".
	Then The user clicks on "SignIn" Button.
	#And The user waits for "10" Seconds.
    Then The user enters "Password".
    Then The user clicks on "SignIn" Button.	
 	And The user waits for "35" Seconds.
 	Then the user clicks on "Account Image" link.
	#And The user waits for "5" Seconds.
	Then the user clicks on "Account Settings" link.
	And The user waits for "5" Seconds.
    #And The user waits for "5" Seconds. 
    Then the user clicks on "Security" link.
    #And The user waits for "10" Seconds. 
    ##And The user waits for "5" Seconds. 
    Then The user enters "passwordchallengemax".
	Then The user clicks on "Save and Exit" Button.
    #And The user waits for "5" Seconds.
    Then the user asserts value of "Changes Saved" with "Changes Saved".
    
@VerifyCloseButton
Scenario: T 201.6.8 Click Close button. Verify the Account Settings Screen is closed without any changes. Print Screen.
Given The user Opened the AUT.
     ##And The user waits for the page to load.	
	Then The user enters "Username".
	Then The user clicks on "SignIn" Button.
	#And The user waits for "10" Seconds.
    Then The user enters "Password".
    Then The user clicks on "SignIn" Button.	
 	And The user waits for "35" Seconds.
 	Then the user clicks on "Account Image" link.
	#And The user waits for "5" Seconds.
	Then the user clicks on "Account Settings" link.
	And The user waits for "5" Seconds.
    #And The user waits for "5" Seconds. 
    Then the user clicks on "Security" link.
    #And The user waits for "10" Seconds. 
    Then The user clicks on "Close" Button.
    
@VerifyAuditPwdChange
Scenario: T 201.6.9 On the REDCap Cloud User activities screen review Security Audit trail. Verify password change event is recorded. Print Screen.
Given The user Opened the AUT.
	 ##And The user waits for the page to load.	
	Then The user enters "Username".
	Then The user clicks on "SignIn" Button.
	#And The user waits for "10" Seconds.
    Then The user enters "Password".
    Then The user clicks on "SignIn" Button.	
 	And The user waits for "35" Seconds.
 	Then the user clicks on "Account Image" link.
    #And The user waits for "5" Seconds. 
    Then the user clicks on "Lock Screen" link.
    #And The user waits for "10" Seconds.
    Then the user checks "lock user name" field has "readonly" attribute.
    
@VerifyLockScreenUsernameProper
Scenario: T 201.7.4 On the Lock screen, select the Username. Verify that Username field is display only and displays the current Username. Print Screen.
Given The user Opened the AUT.
	 ##And The user waits for the page to load.	
	Then The user enters "Username".
	Then The user clicks on "SignIn" Button.
	#And The user waits for "10" Seconds.
    Then The user enters "Password".
    Then The user clicks on "SignIn" Button.	
 	And The user waits for "35" Seconds.
 	Then the user clicks on "Account Image" link.
	#And The user waits for "5" Seconds. 
    Then the user clicks on "Lock Screen" link.
    #And The user waits for "8" Seconds.
    Then the user asserts value of "lock user name" field with "pbanerjee@hudson.edu".

@VerifyMax+1LockScreenPass
Scenario: T 201.7.5 On the Lock screen, enter max+1 characters for a Password and click the Unlock button. Verify validator error message is displayed. Print Screen.
Given The user Opened the AUT.
	 ##And The user waits for the page to load.	
	Then The user enters "Username".
	Then The user clicks on "SignIn" Button.
	#And The user waits for "10" Seconds.
    Then The user enters "Password".
    Then The user clicks on "SignIn" Button.	
 	And The user waits for "35" Seconds.
 	Then the user clicks on "Account Image" link.
	#And The user waits for "5" Seconds.
	Then the user clicks on "Lock Screen" link.
    #And The user waits for "10" Seconds.
    Then The user enters "lock password wrong".
    Then The user clicks on "Unlock" Button.
    #And The user waits for "10" Seconds.
    Then the user asserts value of "lock screen error" with "Password cannot be larger then 50 characters".

@VerifyWrongLockPass
Scenario: T 201.7.6 On the Lock screen, enter invalid Password and click the Unlock button. Verify validator error message is displayed on the screen for first 5 attempts, failed Login attempt email is sent to user for each attempt. After fifth attempt, check account is inactivated and an e-mail is sent to the user informing the account lockout event. Ensure inactivated account notification is emailed to user. Print Screen.
Given The user Opened the AUT.
 	##And The user waits for the page to load.	
	Then The user enters "Username".
	Then The user clicks on "SignIn" Button.
	#And The user waits for "10" Seconds.
    Then The user enters "Password".
    Then The user clicks on "SignIn" Button.	
 	And The user waits for "35" Seconds.
 	Then the user clicks on "Account Image" link.
	#And The user waits for "5" Seconds.
	Then the user clicks on "Lock Screen" link.
    #And The user waits for "10" Seconds.
    Then The user enters "lock password incorrect".
    Then The user clicks on "Unlock" Button.
    #And The user waits for "10" Seconds.
    Then the user asserts value of "lock screen error" with "Authentication failed.".
    
    
@VerifyUnlock
Scenario: T 201.7.7 On the Lock screen, enter valid Password and click the Unlock button. Verify screen is unlocked. Print Screen.
Given The user Opened the AUT.
	##And The user waits for the page to load.	
	Then The user enters "Username".
	Then The user clicks on "SignIn" Button.
	#And The user waits for "10" Seconds.
    Then The user enters "Password".
    Then The user clicks on "SignIn" Button.	
 	And The user waits for "35" Seconds.
 	Then the user clicks on "Account Image" link.
	#And The user waits for "5" Seconds. 
    Then the user clicks on "Lock Screen" link.
    #And The user waits for "10" Seconds.
    Then The user enters "lock password".
    Then The user clicks on "Unlock" Button.
    And The user waits for "5" Seconds.
    Then the user asserts value of "My Study" with "My Studies".
    
@VerifyLogout
Scenario: T 201.8.1 Click on the Logout link. Verify that user is successfully logged out, and navigated to the Login screen that displays a message per the spec. Print Screen.
Given The user Opened the AUT.
	##And The user waits for the page to load.	
	Then The user enters "Username".
	Then The user clicks on "SignIn" Button.
	#And The user waits for "10" Seconds.
    Then The user enters "Password".
    Then The user clicks on "SignIn" Button.	
 	And The user waits for "35" Seconds.
	Then the user clicks on "Account Image" link.
	#And The user waits for "5" Seconds. 
    Then the user clicks on "Logout" link.
    And The user waits for "35" Seconds.
    Then the user asserts value of "Logout Message" with "You have been successfully logged out.";


@VerifyAboutUs
Scenario: T 201.9.1 Click on the About REDCap Cloud link. Verify that pop-up screen displays the information per the specification. Print Screen.
Given The user Opened the AUT.
	##And The user waits for the page to load.	
	Then The user enters "Username".
	Then The user clicks on "SignIn" Button.
	#And The user waits for "10" Seconds.
    Then The user enters "Password".
    Then The user clicks on "SignIn" Button.	
 	And The user waits for "35" Seconds.
	Then the user clicks on "Account Image" link.
	#And The user waits for "5" Seconds. 
	Then the user clicks on "About Us" link.
	And The user waits for "5" Seconds.
	Then the user asserts value of "About RedCap Cloud" with "About REDCap Cloud";
	
@VerifyBrowserClose
Scenario: T 201.9.2 Click Close button. Verify About REDCap Cloud screen is closed. Print Screen.
Given The user Opened the AUT.
	##And The user waits for the page to load.	
	Then The user enters "Username".
	Then The user clicks on "SignIn" Button.
	#And The user waits for "10" Seconds.
    Then The user enters "Password".
    Then The user clicks on "SignIn" Button.	
 	And The user waits for "5" Seconds.
	Then the user closes the browser.
	
@VerifyAccountGeneralLanguage
Scenario: T 201.10.1 On the Account Settings Screen, General Data tab, click the Language dropdown list. Verify dropdown values match spec. Print Screen.
	Given The user Opened the AUT.
	##And The user waits for the page to load.	
	Then The user enters "Username".
	Then The user clicks on "SignIn" Button.
	#And The user waits for "10" Seconds.
    Then The user enters "Password".
    Then The user clicks on "SignIn" Button.	
 	And The user waits for "35" Seconds.
 	Then the user clicks on "Account Image" link.
	#And The user waits for "5" Seconds.
	Then the user clicks on "Account Settings" link.
    And The user waits for "5" Seconds.
    Then The user clicks on "Language" drop down, select result from "Result List" and asserts value with "Language Values".

@VerifyDateFormatValues
Scenario: T 201.11.1 On the Account Settings Screen, General Data tab, click the Date format dropdown list. Verify dropdown values match spec. Print Screen.
Given The user Opened the AUT.
	##And The user waits for the page to load.	
	Then The user enters "Username".
	Then The user clicks on "SignIn" Button.
	#And The user waits for "10" Seconds.
    Then The user enters "Password".
    Then The user clicks on "SignIn" Button.	
 	And The user waits for "35" Seconds.
 	Then the user clicks on "Account Image" link.
	#And The user waits for "5" Seconds.
	Then the user clicks on "Account Settings" link.
    And The user waits for "5" Seconds.
    Then The user clicks on "Date Format" drop down, select result from "Date List" and asserts value with "Date Formats".
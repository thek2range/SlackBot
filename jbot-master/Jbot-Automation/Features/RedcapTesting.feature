@All
@Sanity
Feature: RedCap TestCases
@VerifyLatsLogin
Scenario: Verify last login timestamp and IP Address
	Given The user Opened the AUT.
	And the user waits for the page to load.	
	Then The user enters "Username".
	Then The user clicks on "SignIn" Button.
	And the user waits for the page to load.	
    Then The user enters "Password".
    Then The user clicks on "SignIn" Button.	
 	And the user waits for the page to load.		
 	Then the user clicks on "Last Login Details" link.
 	Then the user checks the "Last Login Info" content.
 	
 @VerifyMyStudies
Scenario: Verify last login timestamp and IP Address
	Given The user Opened the AUT.
	And the user waits for the page to load.	
	Then The user enters "Username".
	Then The user clicks on "SignIn" Button.
	And the user waits for the page to load.	
    Then The user enters "Password".
    Then The user clicks on "SignIn" Button.	
 	And the user waits for the page to load.		
 	Then the user clicks on "Redcap Cloud Icon" link.
 	And the user waits for the page to load.		
 	Then the user asserts value of "My Study" with "My Studies".
 	
 @VerifyMySupport
Scenario: Verify last login timestamp and IP Address
	Given The user Opened the AUT.
	And the user waits for the page to load.	
	Then The user enters "Username".
	Then The user clicks on "SignIn" Button.
	And the user waits for the page to load.	
    Then The user enters "Password".
    Then The user clicks on "SignIn" Button.	
 	And the user waits for the page to load.		
 	Then the user clicks on "Support" link.
 	And the user waits for the page to load.
 	Then the user asserts value of "Support Header Content" with "Support".
 	
 @VerifyMyUserGuide
Scenario: Verify last login timestamp and IP Address
	Given The user Opened the AUT.
	And the user waits for the page to load.	
	Then The user enters "Username".
	Then The user clicks on "SignIn" Button.
	And the user waits for the page to load.	
    Then The user enters "Password".
    Then The user clicks on "SignIn" Button.	
 	And the user waits for the page to load.
 	Then the user clicks on "Support" link.
 	And the user waits for the page to load.		
  	Then the user switches to iframe "Support Content Iframe".
  	Then the user switches to iframe "User Guide Iframe".
  	Then the user asserts value of "User Guide Header" with "Introduction to REDCap Cloud".

  	
 @VerifyAppNotification
 Scenario: Verify the application notification
 	Given The user Opened the AUT.
	And the user waits for the page to load.	
	Then The user enters "Username".
	Then The user clicks on "SignIn" Button.
	And the user waits for the page to load.	
    Then The user enters "Password".
    Then The user clicks on "SignIn" Button.	
 	And the user waits for the page to load.
 	Then the user clicks on "App Notification" Icon.
 	Then the user asserts value of "Notification Header" with "Notifications".
 	
 @VerifyAppNotificationLink
 Scenario: Verify the application notification Link
 	Given The user Opened the AUT.
	And the user waits for the page to load.	
	Then The user enters "Username".
	Then The user clicks on "SignIn" Button.
	And the user waits for the page to load.	
    Then The user enters "Password".
    Then The user clicks on "SignIn" Button.	
 	And the user waits for the page to load.
 	Then the user clicks on "App Notification" Icon.
    And The user waits for "35" Seconds.
    Then the user saves content for "Study Test Site".
    And the user waits for the page to load.
    Then the user clicks on "Study Test Download" link.
 	And the user waits for the page to load.
 	And the user waits for the page to load.
 	And the user waits for the page to load.	
 	Then the user asserts value of "Study Test Site Value" from file.
 	
 @VerifyDeleteAppNotificationLink
 Scenario: Verify the application notification Link
 	Given The user Opened the AUT.
	And the user waits for the page to load.	
	Then The user enters "Username".
	Then The user clicks on "SignIn" Button.
	And The user waits for "2" Seconds.
    Then The user enters "Password".
    Then The user clicks on "SignIn" Button.	
 	And The user waits for "35" Seconds.
 	Then the user clicks on "App Notification" Icon.
 	And The user waits for "2" Seconds.
    Then the user saves content for "Study Test Site".
    And The user waits for "2" Seconds.
    Then the user clicks on "Delete Notification" link.
    And The user waits for "5" Seconds.
    Then The user clicks on "Delete Notification Button" Button.
    
    
 
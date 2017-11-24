@All
@Sanity1
Feature: Landing Page Test Cases
@Study
Scenario: Create a study
	Given The user Opened the AUT.
	And the user waits for the page to load.	
	Then The user enters "Username".
	Then The user clicks on "SignIn" Button.
	And the user waits for the page to load.	
    Then The user enters "Password".
    Then The user clicks on "SignIn" Button.	
 	And the user waits for the page to load.	
 	And the user waits for the page to load.	 	
 	#And The user will reach to "REDCap Cloud" Page.
    Then The user clicks on "Add" Button.	
  	And the user waits for the page to load.
  	Then The user enters "Brief Title".
  	Then The user enters "Study Name Box".
    Then The user enters "Official Title".
    Then The user enters "Secondary IDs".
    Then The user enters "Brief Summary".
    Then The user enters "Protocol ID".
    Then The user enters "Detailed Description".
    Then The user enters "Sponsor".
    Then The user enters "Screening Start Date".    
    Then The user enters "Admin Role Name".
    Then The user clicks on "Save" Button.	  		
 	#And The user selects "Longitudinal Database (1 arm)" value from "Study Category Menu" drop down.	
 	Then The user clicks on "Confirm Save" Button.	
 	Then the user clicks on "Yes!I want to" link.
 	Then The user enters "Mobile Number".
 	
@Support
Scenario: Check the support Pages
	Given The user Opened the AUT.
	And the user waits for the page to load.	
	Then The user enters "Username".
	Then The user clicks on "SignIn" Button.
	And the user waits for the page to load.	
    Then The user enters "Password".
    Then The user clicks on "SignIn" Button.	
 	And the user waits for the page to load.	
 	And the user waits for the page to load.	 	
 	#And The user will reach to "REDCap Cloud" Page.
    Then The user clicks on "Support" Button.	
  	And the user waits for the page to load.
	Then the user clicks on "Technical Support" link.
  	And the user waits for the page to load.
	Then the user clicks on "API Documentation" link.
	
@CRFDuplicateName
Scenario: T201.  Test Error on Duplicate CRF Name	
	Given The user Opened the AUT.
	And the user waits for the page to load.
	Then The user enters "Username".
	Then The user clicks on "SignIn" Button.
	Then The user waits for "2" Seconds.
	Then The user enters "Password".
	Then The user clicks on "SignIn" Button.
	And the user waits for the page to load.
	Then The user clicks on "Notification" Button.
	Then The user waits for "2" Seconds.
	Then the user clicks on "Notification Link" link.
	And the user waits for the page to load.
	And the user waits for the page to load.
	Then the user clicks on "Completion Data" link.
	Then The user waits for "5" Seconds.
	Then The user clicks on "CRF Edit Button" Button.
	Then The user enters "CRF Instrument".
	Then The user clicks on "CRF Save and Exit" Button.
	Then The user waits for "2" Seconds.
	And The user validates "Duplicate CRF Name" message.
 	
@CRFExport
Scenario: T202.  CRF Export	
	#Then the user uploads a file using "File Upload".
	Given The user Opened the AUT.
	And the user waits for the page to load.
	Then The user enters "Username".
	Then The user clicks on "SignIn" Button.
	Then The user waits for "2" Seconds.
	Then The user enters "Password".
	Then The user clicks on "SignIn" Button.
	And the user waits for the page to load.
	Then The user clicks on "Notification" Button.
	Then The user waits for "2" Seconds.
	Then the user clicks on "Notification Link" link.
	And the user waits for the page to load.
	And the user waits for the page to load.
	Then The user clicks on "Tools" Button.
	Then The user waits for "2" Seconds.	
	Then the user clicks on "Export Data Dictionary" link.
	Then The user waits for "2" Seconds.			
	Then The user clicks on "Baseline Data Choice" Radio Button.	
	Then The user clicks on "Export" Button.
	Then The user waits for "10" Seconds. 
	Then The user clicks on "Notification" Button.
	Then The user waits for "2" Seconds.	
	Then the user clicks on "Click to download Exported CSV" link.

@CRFImport
Scenario: T202.  CRF Import	
	Given The user Opened the AUT.
	And the user waits for the page to load.
	Then The user enters "Username".
	Then The user clicks on "SignIn" Button.
	Then The user waits for "12" Seconds.
	Then The user enters "Password".
	Then The user clicks on "SignIn" Button.
	And the user waits for the page to load.
	Then The user clicks on "Notification" Button.
	Then The user waits for "2" Seconds.
	Then the user clicks on "Notification Link" link.
	And the user waits for the page to load.
	And the user waits for the page to load.
	Then The user clicks on "Tools" Button.
	Then The user waits for "2" Seconds.	
	Then the user clicks on "Import Data Dictionary" link.
	Then The user waits for "2" Seconds.	
	Then the user uploads a file using "File Upload".	
	Then The user waits for "20" Seconds.	
	Then The user clicks on "Upload" Button.
	And the user waits for the page to load.
	And the user waits for the page to load.
	And The user validates "File Import in background" message.
	And the user waits for the page to load.
	And the user waits for the page to load.
	Then The user clicks on "Notification" Button.
	Then The user waits for "2" Seconds.
	Then the user clicks on "Notification Link" link.	
	
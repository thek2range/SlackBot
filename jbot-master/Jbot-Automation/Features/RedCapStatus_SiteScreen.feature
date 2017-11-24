@All
@RedCapSetups_SiteScreen
Feature: RedCap Setups SiteScreen feature testing

@VerifySiteScreenViewMode
Scenario: T 205.1.1 Click on the Setups link on the Setups of the main interface. Verify the Sites screen matches spec. Print Screen.
Given The user Opened the AUT.
	Then The user enters "Username".
	Then The user clicks on "SignIn" Button.
    Then The user enters "Password".
    Then The user clicks on "SignIn" Button.
    Then The user clicks on "SETUPS" Button.    
    Then the user asserts value of "Sites" with "Sites".

@VerifySiteDetails
Scenario: T 205.1.2 Click on a Site in the Site tree. Verify the Site details are displayed. Print Screen.
Given The user Opened the AUT.
	Then The user enters "Username".
	Then The user clicks on "SignIn" Button.
    Then The user enters "Password".
    Then The user clicks on "SignIn" Button.
    Then the user waits for the page to load.	
    Then The user clicks on "SETUPS" Button.    
	Then the user clicks on "Site in Site Tree" link and saves data to file.
	Then the user asserts value of "Site Name From Tree" from file.
	
@VerifySiteEdit
Scenario: T 205.1.3 Click on Edit button. Verify the form is displayed in Edit mode. Print Screen.
Given The user Opened the AUT.
	Then The user enters "Username".
	Then The user clicks on "SignIn" Button.
    Then The user enters "Password".
    Then The user clicks on "SignIn" Button.
    Then the user waits for the page to load.	
    Then The user clicks on "SETUPS" Button.    
	Then the user clicks on "Site in Site Tree" link.
	Then The user clicks on "Site Edit Button" Button.
	Then The user checks "Site Name" field is edible.
    
@VerifyAddButton
Scenario: T 205.1.4 Click on Add Site button. Verify the form is displayed in Add mode. Print Screen.
Given The user Opened the AUT.
	Then The user enters "Username".
	Then The user clicks on "SignIn" Button.
    Then The user enters "Password".
    Then The user clicks on "SignIn" Button.
    Then the user waits for the page to load.	
    Then The user clicks on "SETUPS" Button.    
	Then the user clicks on "Site in Site Tree" link.
	Then The user clicks on "Site Add Button" Button.
	Then The user checks "Site Name" field is editable and empty.
	
@VerifyAuditorButton
Scenario: T 205.1.5 Click on the Auditor button. Verify record level auditor information is displayed. Print Screen.
Given The user Opened the AUT.
	Then The user enters "Username".
	Then The user clicks on "SignIn" Button.
    Then The user enters "Password".
    Then The user clicks on "SignIn" Button.
    Then the user waits for the page to load.	
    Then The user clicks on "SETUPS" Button.    
	Then the user clicks on "Site in Site Tree" link.
	Then The user clicks on "Site Auditor Button" Button.
	Then the user asserts value of "Audit Create Date" with "Creation Date".


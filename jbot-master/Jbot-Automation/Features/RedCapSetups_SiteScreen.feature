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
    Then the user waits for the page to load.	
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
	And The user waits for "5" Seconds.
	Then The user checks "Site Name" field is edible.
	
@VerifySiteEdit1
Scenario: T 205.2.1 Click on the Edit button in the Setups->Sites screen. Verify the screen matches spec. Print Screen.
Given The user Opened the AUT.
	Then The user enters "Username".
	Then The user clicks on "SignIn" Button.
    Then The user enters "Password".
    Then The user clicks on "SignIn" Button.
    Then the user waits for the page to load.	
    Then The user clicks on "SETUPS" Button.    
	Then the user clicks on "Site in Site Tree" link.
	Then The user clicks on "Site Edit Button" Button.
	And The user waits for "5" Seconds.
	Then The user checks "Site Name" field is edible.

@VerifySiteSave
Scenario: T 205.2.2 Click Save button. Verify the changes made to Site data are saved and screen reverts to View mode. Print Screen.
Given The user Opened the AUT.
	Then The user enters "Username".
	Then The user clicks on "SignIn" Button.
    Then The user enters "Password".
    Then The user clicks on "SignIn" Button.
    Then the user waits for the page to load.	
    Then The user clicks on "SETUPS" Button.    
	Then the user clicks on "Site in Site Tree" link.
	Then The user clicks on "Site Edit Button" Button.
	#And The user waits for "5" Seconds.
	Then The user checks "Site Name" field is edible.
	Then The user enters "Facility Name".
	Then The user clicks on "Site Type Drop Down" Button.
	Then the user clicks on "Site Group" link.  
	Then The user clicks on "Site Save" Button.
	And The user waits for "5" Seconds.
	Then the user asserts "Saved Site Facility Name" field with "Facility Name".
	
@VerifySiteCancel
Scenario: T 205.2.3 Click Cancel button. Verify no changes are made to Site data and screen reverts to View mode. Print Screen.
Given The user Opened the AUT.
	Then The user enters "Username".
	Then The user clicks on "SignIn" Button.
    Then The user enters "Password".
    Then The user clicks on "SignIn" Button.
    Then the user waits for the page to load.	
    Then The user clicks on "SETUPS" Button.    
	Then the user clicks on "Site in Site Tree" link.
	Then The user clicks on "Site Edit Button" Button.
	And The user waits for "5" Seconds.
	Then The user checks "Site Name" field is edible.
	Then The user clicks on "Site Edit Cancel" Button.
	And The user waits for "5" Seconds.
	Then The user checks "Site Name" field is not edible.
	
@VerifyDeleteWithoutStudy
Scenario: T 205.2.4 Click Delete button. Verify the Site can be deleted when there are no associated records. Print Screen.
Given The user Opened the AUT.
	Then The user enters "Username".
	Then The user clicks on "SignIn" Button.
    Then The user enters "Password".
    Then The user clicks on "SignIn" Button.
    Then the user waits for the page to load.	
    Then The user clicks on "SETUPS" Button.    
	Then the user clicks on "Site in Site Tree" link.
	And The user waits for "5" Seconds.
	Then The user clicks on "Site Delete" Button.
	Then The user clicks on "Site Delete Confirm" Button followed by assertions.

@VerifyAndValidateNotDeleted
Scenario: T 205.2.5 Click Delete button for a Site that has been used in the Studies and Save. Verify validator error message is displayed. Print Screen.
Given The user Opened the AUT.
	Then The user enters "Username".
	Then The user clicks on "SignIn" Button.
    Then The user enters "Password".
    Then The user clicks on "SignIn" Button.
    Then the user waits for the page to load.	
    Then The user clicks on "SETUPS" Button.    
	Then the user clicks on "Site in Site Tree" link.
	And The user waits for "5" Seconds.
	Then The user clicks on "Site Delete" Button.
	Then The user clicks on "Site Delete Confirm" Button followed by assertions.
	
@VerifySiteNameMax+1
Scenario: T 205.2.6 In the Name field, change an existing Site Name to max+1 characters and Save. Verify validator error message is displayed. Print Screen.
Given The user Opened the AUT.
	Then The user enters "Username".
	Then The user clicks on "SignIn" Button.
    Then The user enters "Password".
    Then The user clicks on "SignIn" Button.
    Then the user waits for the page to load.	
    Then The user clicks on "SETUPS" Button.    
	Then the user clicks on "Site in Site Tree" link.
	Then The user clicks on "Site Edit Button" Button.
	And The user waits for "5" Seconds.
	Then The user enters "Site Max + 1".
	Then The user clicks on "Site Save" Button.
	And The user waits for "5" Seconds.
	Then the user asserts "Site Error" field with "Site Error Name Max + 1".
		
@VerifySiteDuplicateName
Scenario: T 205.2.7 In the Name field, change the Site Name to an existing Site Name and Save. Verify validator error message is displayed. Print Screen.
Given The user Opened the AUT.
	Then The user enters "Username".
	Then The user clicks on "SignIn" Button.
    Then The user enters "Password".
    Then The user clicks on "SignIn" Button.
    Then the user waits for the page to load.	
    Then The user clicks on "SETUPS" Button.    
	Then the user clicks on "Site next" link.
	Then the user clicks on "Next Site Name" link and saves data to file.
	Then the user clicks on "Site in Site Tree" link.
	Then The user clicks on "Site Edit Button" Button.
	#And The user waits for "5" Seconds.
	Then The user enters "Site Name" from File.
	Then The user clicks on "Site Save" Button By Action.
	Then the user asserts "Site Error" field with "Duplicate Site Name".
	
@VerifySiteIdMax+1
Scenario: T 205.2.8 In the Site ID field, change an existing Site ID to max+1 characters and Save. Verify validator error message is displayed. Print Screen.
Given The user Opened the AUT.
	Then The user enters "Username".
	Then The user clicks on "SignIn" Button.
    Then The user enters "Password".
    Then The user clicks on "SignIn" Button.
    Then the user waits for the page to load.	
    Then The user clicks on "SETUPS" Button.    
	Then the user clicks on "Site in Site Tree" link.
	Then The user clicks on "Site Edit Button" Button.
	#And The user waits for "5" Seconds.
	Then The user enters "Site Id Max + 1".
	Then The user clicks on "Site Save" Button By Action.
	And The user waits for "5" Seconds.
	Then the user asserts "Site Error" field with "Site Id Error Name Max + 1".
	
@VerifySiteDuplicateId
Scenario: T 205.2.9 In the Site ID field, change the Site ID to an existing Site ID and Save. Verify validator error message is displayed. Print Screen.
Given The user Opened the AUT.
	Then The user enters "Username".
	Then The user clicks on "SignIn" Button.
    Then The user enters "Password".
    Then The user clicks on "SignIn" Button.
    Then the user waits for the page to load.	
    Then The user clicks on "SETUPS" Button.    
	Then the user clicks on "Site next" link.
	Then the user clicks on "Next Site Id" link and saves data to file.
	Then the user clicks on "Site in Site Tree" link.
	Then The user clicks on "Site Edit Button" Button.
	#And The user waits for "5" Seconds.
	Then The user enters "Site Id Text" from File.
	Then The user clicks on "Site Save" Button.
	And The user waits for "5" Seconds.
	Then the user asserts "Site Error" field with "Duplicate Site Id".

@VerifySiteTypeDropDown
Scenario:  T 205.2.10 Select Site Type value from the drop down. Verify the values are based on the spec. Print Screen.
Given The user Opened the AUT.
	Then The user enters "Username".
	Then The user clicks on "SignIn" Button.
    Then The user enters "Password".
    Then The user clicks on "SignIn" Button.
    Then the user waits for the page to load.	
    Then The user clicks on "SETUPS" Button.  
    And The user waits for "5" Seconds.  
		Then the user clicks on "Site in Site Tree" link.
	Then The user clicks on "Site Edit Button" Button.
	And The user waits for "5" Seconds.
	Then The user clicks on "Site Type" drop down, select result from "Site Type List" and asserts value with "Site Type List".

@VerifySiteParentDropDown
Scenario: T 205.2.11 Select Parent value from the drop down. Verify the values are based on the sites previously entered. Print Screen.
Given The user Opened the AUT.
	Then The user enters "Username".
	Then The user clicks on "SignIn" Button.
    Then The user enters "Password".
    Then The user clicks on "SignIn" Button.
    Then the user waits for the page to load.	
    Then The user clicks on "SETUPS" Button.    
	Then the user clicks on "Site in Site Tree" link.
	Then The user clicks on "Site Edit Button" Button.
	And The user waits for "5" Seconds.
	Then The user clicks on "Site Parent" drop down, select result from "Site Parent List" and asserts value with "Site Parent List".
	
@VerifyStatusDropDown
Scenario: T 205.2.12 Select Status value from the drop down. Verify the values are based on the spec. Print Screen.
Given The user Opened the AUT.
	Then The user enters "Username".
	Then The user clicks on "SignIn" Button.
    Then The user enters "Password".
    Then The user clicks on "SignIn" Button.
    Then the user waits for the page to load.	
    Then The user clicks on "SETUPS" Button.    
	Then the user clicks on "Site in Site Tree" link.
	Then The user clicks on "Site Edit Button" Button.
	And The user waits for "5" Seconds.
	Then The user clicks on "Site Status" drop down, select result from "Site Status List" and asserts value with "Site Status List".
	
@VerifySiteDataList
Scenario: T 205.2.13 Select Data Collection value from the drop down. Verify the values are based on the spec. Print Screen.
Given The user Opened the AUT.
	Then The user enters "Username".
	Then The user clicks on "SignIn" Button.
    Then The user enters "Password".
    Then The user clicks on "SignIn" Button.
    Then the user waits for the page to load.	
    Then The user clicks on "SETUPS" Button.    
	Then the user clicks on "Site in Site Tree" link.
	Then The user clicks on "Site Edit Button" Button.
	And The user waits for "5" Seconds.
	Then The user clicks on "Site Data Collection" drop down, select result from "Site Data Collection List" and asserts value with "Site Data Collection List".
	
@VerifyFaciliTyMax+1
Scenario: T 205.2.14 In the Facility Name field, change an existing Facility Name to max+1 characters and Save. Verify validator error message is displayed. Print Screen.
Given The user Opened the AUT.
	Then The user enters "Username".
	Then The user clicks on "SignIn" Button.
    Then The user enters "Password".
    Then The user clicks on "SignIn" Button.
    Then the user waits for the page to load.	
    Then The user clicks on "SETUPS" Button.    
	Then the user clicks on "Site in Site Tree" link.
	Then The user clicks on "Site Edit Button" Button.
	And The user waits for "5" Seconds.
	Then The user enters "Facility Max+1".
	Then The user clicks on "Site Save" Button.
	And The user waits for "5" Seconds.
	Then the user asserts "Site Error" field with "Error Facility Max+1".
	
@VerifyFaacilityCityField
Scenario: T 205.2.15 In the Facility City field, change an existing Facility City to max+1 characters and Save. Verify validator error message is displayed. Print Screen.
Given The user Opened the AUT.
	Then The user enters "Username".
	Then The user clicks on "SignIn" Button.
    Then The user enters "Password".
    Then The user clicks on "SignIn" Button.
    Then the user waits for the page to load.	
    Then The user clicks on "SETUPS" Button.    
	Then the user clicks on "Site in Site Tree" link.
	Then The user clicks on "Site Edit Button" Button.
	And The user waits for "5" Seconds.
	Then The user enters "Facility City Max+1".
	Then The user clicks on "Site Save" Button.
	And The user waits for "5" Seconds.
	Then the user asserts "Site Error" field with "Error Facility City Max+1".
	
@VerifyFacilityState+1
Scenario: T 205.2.16 In the Facility State/Province field, change an existing Facility State/Province to max+1 characters and Save. Verify validator error message is displayed. Print Screen.
Given The user Opened the AUT.
	Then The user enters "Username".
	Then The user clicks on "SignIn" Button.
    Then The user enters "Password".
    Then The user clicks on "SignIn" Button.
    Then the user waits for the page to load.	
    Then The user clicks on "SETUPS" Button.    
	Then the user clicks on "Site in Site Tree" link.
	Then The user clicks on "Site Edit Button" Button.
	#And The user waits for "5" Seconds.
	Then The user enters "Facility State Max +1".
	Then The user clicks on "Site Save" Button.
	Then the user asserts "Site Error" field with "Error Facility State Max+1".

@VerifyFacilityZipMax+1
Scenario: T 205.2.17 In the Facility Zip field, change an existing Facility Zip to max+1 characters and Save. Verify validator error message is displayed. Print Screen.
Given The user Opened the AUT.
	Then The user enters "Username".
	Then The user clicks on "SignIn" Button.
    Then The user enters "Password".
    Then The user clicks on "SignIn" Button.
    Then the user waits for the page to load.	
    Then The user clicks on "SETUPS" Button.    
	Then the user clicks on "Site in Site Tree" link.
	Then The user clicks on "Site Edit Button" Button.
	#And The user waits for "5" Seconds.
	Then The user enters "Facility Zip Max +1".
	Then The user clicks on "Site Save" Button.
	Then the user asserts "Site Error" field with "Error Facility Zip Max+1".
	
@VerifyFacilityCountryMax+1
Scenario: T 205.2.18 In the Facility Country field, change an existing Facility Country to max+1 characters and Save. Verify validator error message is displayed. Print Screen.
Given The user Opened the AUT.
	Then The user enters "Username".
	Then The user clicks on "SignIn" Button.
    Then The user enters "Password".
    Then The user clicks on "SignIn" Button.
    Then the user waits for the page to load.	
    Then The user clicks on "SETUPS" Button.    
	Then the user clicks on "Site in Site Tree" link.
	Then The user clicks on "Site Edit Button" Button.
	#And The user waits for "5" Seconds.
	Then The user enters "Facility Country Max +1".
	Then The user clicks on "Site Save" Button.
	Then the user asserts "Site Error" field with "Error Facility Country Max+1".

@VerifyFacilityTimeZone
Scenario: T 205.2.19 Select Facility Time Zone value from the drop down. Verify the values are based on the spec. Print Screen.
Given The user Opened the AUT.
	Then The user enters "Username".
	Then The user clicks on "SignIn" Button.
    Then The user enters "Password".
    Then The user clicks on "SignIn" Button.
    Then the user waits for the page to load.	
    Then The user clicks on "SETUPS" Button.    
	Then the user clicks on "Site in Site Tree" link.
	Then The user clicks on "Site Edit Button" Button.
	And The user waits for "5" Seconds.
	Then The user clicks on "Facility TimeZone" Button.
	And The user waits for "5" Seconds.
	Then The user asserts "TimeZone Field" with "TimeZone Field" regex.
	
@VerifyContactNameMax+1
Scenario: T 205.2.20 In the Facility Contact Name field, change an existing Facility Contact Name to max+1 characters and Save. Verify validator error message is displayed. Print Screen.
Given The user Opened the AUT.
	Then The user enters "Username".
	Then The user clicks on "SignIn" Button.
    Then The user enters "Password".
    Then The user clicks on "SignIn" Button.
    Then the user waits for the page to load.	
    Then The user clicks on "SETUPS" Button.    
	Then the user clicks on "Site in Site Tree" link.
	Then The user clicks on "Site Edit Button" Button.
	And The user waits for "5" Seconds.
	Then The user enters "Contacts Name Max+1".
	Then The user clicks on "Site Save" Button.
	And The user waits for "5" Seconds.
	Then the user asserts "Site Error" field with "Error Contact Name Max+1".
	
	
	
@VerifyContactDegreeMax+1
Scenario: T 205.2.21 In the Facility Contact Degree field, change an existing Facility Contact Degree to max+1 characters and Save. Verify validator error message is displayed. Print Screen.
Given The user Opened the AUT.
	Then The user enters "Username".
	Then The user clicks on "SignIn" Button.
    Then The user enters "Password".
    Then The user clicks on "SignIn" Button.
    Then the user waits for the page to load.	
    Then The user clicks on "SETUPS" Button.    
	Then the user clicks on "Site in Site Tree" link.
	Then The user clicks on "Site Edit Button" Button.
	And The user waits for "5" Seconds.
	Then The user enters "Contacts Degree Max+1".
	Then The user clicks on "Site Save" Button.
	And The user waits for "5" Seconds.
	Then the user asserts "Site Error" field with "Error Contact Degree Max+1".
	
@VerifyFacilityContactPhoneMax+1
Scenario: T 205.2.22 In the Facility Contact Phone field, change an existing Facility Contact Phone to max+1 characters and Save. Verify validator error message is displayed. Print Screen.
Given The user Opened the AUT.
	Then The user enters "Username".
	Then The user clicks on "SignIn" Button.
    Then The user enters "Password".
    Then The user clicks on "SignIn" Button.
    Then the user waits for the page to load.	
    Then The user clicks on "SETUPS" Button.    
	Then the user clicks on "Site in Site Tree" link.
	Then The user clicks on "Site Edit Button" Button.
	#And The user waits for "5" Seconds.
	Then The user enters "Contacts Phone Max+1".
	Then The user clicks on "Site Save" Button.
	Then the user asserts "Site Error" field with "Error Contact Phone Max+1".
	
@VerifyFacilityContactPhoneEmail+1
Scenario: T 205.2.23 In the Facility Contact Email field, change an existing Facility Contact Email to max+1 characters and Save. Verify validator error message is displayed. Print Screen.
Given The user Opened the AUT.
	Then The user enters "Username".
	Then The user clicks on "SignIn" Button.
    Then The user enters "Password".
    Then The user clicks on "SignIn" Button.
    Then the user waits for the page to load.	
    Then The user clicks on "SETUPS" Button.    
	Then the user clicks on "Site in Site Tree" link.
	Then The user clicks on "Site Edit Button" Button.
	And The user waits for "5" Seconds.
	Then The user enters "Facility EMail Max+1".
	Then The user clicks on "Site Save" Button.
	And The user waits for "5" Seconds.
	Then the user asserts "Site Error" field with "Error Facility EMail Max+1".
	
@VerifySiteGroupNotAssignableToStudy
Scenario: T 205.2.24 Select Site Group value for the Site Type from the drop down. Verify the Site cannot be assigned to a Study. Print Screen.
Given The user Opened the AUT.
	Then The user enters "Username".
	Then The user clicks on "SignIn" Button.
    Then The user enters "Password".
    Then The user clicks on "SignIn" Button.
    Then the user waits for the page to load.	
    Then The user clicks on "SETUPS" Button.    
	Then the user clicks on "Site in Site Tree" link.
	Then The user clicks on "Site Edit Button" Button.
	And The user waits for "5" Seconds.
	Then The user clicks on "Site Type" Button.
	Then the user clicks on "Site Group" link.
	Then The user clicks on "Site Status" Button.
	Then the user clicks on "Study Active" link.
	Then The user clicks on "Site Data Collection" Button.
	Then the user clicks on "Data Yes" link.
	Then The user clicks on "Site Save" Button.
	Then the user saves content for "Site Name".
	Then The user clicks on "Redcap Cloud Icon" Button.
	Then the user clicks on "Test Title 1507491160238" link.
	Then The user clicks on "Sites Tab" Button.
	Then The user clicks on "Sites Tab Add Site" Button By Action.
	Then The user clicks on "Sites Tab Search Site" Button By Action.
	Then The user retrieves value from File and enters into "Select Sites Name".
	And The user waits for "5" Seconds.
	Then the user asserts value of "Select Sites Table" Table is empty.
	
@VerifyStatusInactiveNotAssignableToStudy
Scenario: T 205.2.26 Select Inactive value for the Status from the drop down. Verify the Site cannot be assigned to a Study. Print Screen.
Given The user Opened the AUT.
	Then The user enters "Username".
	Then The user clicks on "SignIn" Button.
    Then The user enters "Password".
    Then The user clicks on "SignIn" Button.
    Then the user waits for the page to load.	
    Then The user clicks on "SETUPS" Button.    
	Then the user clicks on "Site in Site Tree" link.
	Then The user clicks on "Site Edit Button" Button.
	#And The user waits for "5" Seconds.
	Then The user clicks on "Site Type" Button.
	Then the user clicks on "Site Unit" link.
	Then The user clicks on "Site Status" Button.
	Then the user clicks on "Study Inactive" link.
	Then The user clicks on "Site Data Collection" Button.
	Then the user clicks on "Data Yes" link.
	Then The user clicks on "Site Save" Button.
	Then the user saves content for "Site Name".
	Then The user clicks on "Redcap Cloud Icon" Button.
	Then the user clicks on "Test Title 1507491160238" link.
	Then The user clicks on "Sites Tab" Button.
	Then The user clicks on "Sites Tab Add Site" Button By Action.
	Then The user clicks on "Sites Tab Search Site" Button By Action.
	Then The user retrieves value from File and enters into "Select Sites Name".
	And The user waits for "5" Seconds.
	Then the user asserts value of "Select Sites Table" Table is empty.

@VerifyDataCollectionNoNotAssignableToStudy
Scenario: T 205.2.27 Select No value for the Data Collection from the drop down. Verify the Site cannot be assigned to a Study for Data Collection. Print Screen.	
Given The user Opened the AUT.
	Then The user enters "Username".
	Then The user clicks on "SignIn" Button.
    Then The user enters "Password".
    Then The user clicks on "SignIn" Button.
    Then the user waits for the page to load.	
    Then The user clicks on "SETUPS" Button.    
	Then the user clicks on "Site in Site Tree" link.
	Then The user clicks on "Site Edit Button" Button.
	And The user waits for "5" Seconds.
	Then The user clicks on "Site Type" Button.
	Then the user clicks on "Site Unit" link.
	Then The user clicks on "Site Status" Button.
	Then the user clicks on "Study Active" link.
	Then The user clicks on "Site Data Collection" Button.
	Then the user clicks on "Data No" link.
	Then The user clicks on "Site Save" Button.
	Then the user saves content for "Site Name".
	Then The user clicks on "Redcap Cloud Icon" Button.
	Then the user clicks on "Test Title 1507491160238" link.
	Then The user clicks on "Sites Tab" Button.
	Then The user clicks on "Sites Tab Add Site" Button By Action.
	Then The user clicks on "Sites Tab Search Site" Button By Action.
	Then The user retrieves value from File and enters into "Select Sites Name".
	And The user waits for "5" Seconds.
	Then the user asserts value of "Select Sites Table" Table is empty.

@VerifyAuditLogEdit
Scenario: T 205.2.28 In the Setups->Audit Logs review Audit trail. Verify all changes to a site are recorded. Print Screen.
Given The user Opened the AUT.
	Then The user enters "Username".
	Then The user clicks on "SignIn" Button.
    Then The user enters "Password".
    Then The user clicks on "SignIn" Button.
    Then the user waits for the page to load.	
    Then The user clicks on "SETUPS" Button.    
	Then the user clicks on "Site in Site Tree" link.
	Then The user clicks on "Site Edit Button" Button.
	And The user waits for "5" Seconds.
	Then The user checks "Site Name" field is edible.
	Then The user enters "Facility Name" with timestamp and saves.
	Then The user clicks on "Site Type Drop Down" Button.
	Then the user clicks on "Site Group" link.  
	Then The user clicks on "Site Save" Button.
	Then the user asserts "Saved Site Facility Name" field with "Facility Name".
	And The user waits for "5" Seconds.
	Then The user clicks on "Site Audit Log" Button By Action.
	And The user waits for "5" Seconds.
	Then the user asserts value of "Site Audit LogTable" from file.
	
@VerifyParentSiteChange
Scenario: T 205.2.25 Change the Parent of the site from the drop down and Save. Verify the Site's Parent Site is changed. Print Screen.
Given The user Opened the AUT.
	Then The user enters "Username".
	Then The user clicks on "SignIn" Button.
    Then The user enters "Password".
    Then The user clicks on "SignIn" Button.
    Then the user waits for the page to load.	
    Then The user clicks on "SETUPS" Button.    
	Then the user clicks on "Site in Site Tree" link.
	Then The user clicks on "Site Edit Button" Button.
	And The user waits for "5" Seconds.
	Then The user clicks on "Parent Dropdown" Button.
	Then the user clicks on "Parent Link" link and saves data to file.
	Then The user clicks on "Site Save" Button.
	And The user waits for "5" Seconds.
	Then the user asserts value of "Parent Value" from file.
	
		
	
		
		
	
	
		
		
	
	
	
	
	
	
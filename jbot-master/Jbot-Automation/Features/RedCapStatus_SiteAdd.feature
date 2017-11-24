@All
@RedCapStatus_SiteAdd
Feature: RedCap Status Screen Add Study
@VerifyAddStudyScreen
Scenario: T 2010.3.1 Click on the Add Site button in the Setups->Sites view screen. Verify the screen matches spec. Print Screen.
Given The user Opened the AUT.
	Then The user enters "Username".
	Then The user clicks on "SignIn" Button.
    Then The user enters "Password".
    Then The user clicks on "SignIn" Button.
    Then the user waits for the page to load.	
    Then The user clicks on "SETUPS" Button.    
    Then the user asserts value of "Sites" with "Sites".
    And The user waits for "10" Seconds.
	Then The user clicks on "Add Site" Button.
	And The user waits for "10" Seconds.
	Then The user checks "Site Name" field is edible.

@VerifySiteAddSave
Scenario: T 2010.3.2 Click Save button. Verify the changes made to Site data are saved and screen reverts to view mode. Print Screen.
Given The user Opened the AUT.
	Then The user enters "Username".
	Then The user clicks on "SignIn" Button.
    Then The user enters "Password".
    Then The user clicks on "SignIn" Button.
    Then the user waits for the page to load.	
    Then The user clicks on "SETUPS" Button.    
    Then the user asserts value of "Sites" with "Sites".
    And The user waits for "10" Seconds.
	Then The user clicks on "Add Site" Button.
	And The user waits for "10" Seconds.
	Then The user enters "Site Name" with timestamp and saves.
	Then The user writes "Global Site Id" with random chars and saves.
	Then The user clicks on "Site Type" Button.
	Then the user clicks on "Site Unit" link and saves to multiple entry file.
	Then The user clicks on "Site Status" Button.
	Then the user clicks on "Study Active" link and saves to multiple entry file.
	Then The user clicks on "Site Data Collection" Button.
	Then the user clicks on "Data Yes" link and saves to multiple entry file.
	Then The user enters "Facility Name" with timestamp and saves.
	Then The user clicks on "Site Save" Button.
	Then the user asserts value of "Site Name Text" from file.


@VerifySiteAddCancel
Scenario: T 2010.3.3 Click Cancel button. Verify no changes are made to Site data and screen reverts to View mode. Print Screen.
Given The user Opened the AUT.
	Then The user enters "Username".
	Then The user clicks on "SignIn" Button.
    Then The user enters "Password".
    Then The user clicks on "SignIn" Button.
    Then the user waits for the page to load.	
    Then The user clicks on "SETUPS" Button.    
    Then the user asserts value of "Sites" with "Sites".
    And The user waits for "10" Seconds.
	Then The user clicks on "Add Site" Button.
	And The user waits for "10" Seconds.
	Then The user clicks on "Site Add Cancel" Button.
	
@VerifySiteAddNameMax+1
Scenario: T 2010.3.4 In the Name field, enter Site Name to max+1 characters and Save. Verify validator error message is displayed. Print Screen.
Given The user Opened the AUT.
	Then The user enters "Username".
	Then The user clicks on "SignIn" Button.
    Then The user enters "Password".
    Then The user clicks on "SignIn" Button.
    Then the user waits for the page to load.	
    Then The user clicks on "SETUPS" Button.    
    Then the user asserts value of "Sites" with "Sites".
    And The user waits for "10" Seconds.
	Then The user clicks on "Add Site" Button.
	And The user waits for "10" Seconds.
	Then The user enters "Site Name Max+1".
	Then The user enters "Global Site Id".
	Then The user clicks on "Site Type" Button.
	Then the user clicks on "Site Unit" link.
	Then The user clicks on "Site Status" Button.
	Then the user clicks on "Study Active" link.
	Then The user clicks on "Site Data Collection" Button.
	Then the user clicks on "Data Yes" link.
	Then The user enters "Facility Name" with timestamp and saves.
	Then The user clicks on "Site Save" Button.
	Then the user asserts "Site Error" field with "Site Error Name Max + 1".
			
@VerifyAssDuplicateSiteName
Scenario: T 2010.3.10 In the Name field, enter a Site Name similar to an existing Site Name and Save. Verify validator error message is displayed. Print Screen.
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
	And The user waits for "10" Seconds.
	Then The user clicks on "Add Site" Button.
	And The user waits for "10" Seconds.
	Then The user enters "Site Name" from File.
	Then The user enters "Global Site Id Field".
	Then The user clicks on "Site Type" Button.
	Then the user clicks on "Site Unit" link.
	Then The user clicks on "Site Status" Button.
	Then the user clicks on "Study Active" link.
	Then The user clicks on "Site Data Collection" Button.
	Then the user clicks on "Data Yes" link.
	Then The user enters "Facility Name" with timestamp and saves.
	Then The user clicks on "Site Save" Button.
	Then the user asserts "Site Error" field with "Duplicate Site Name".
	
@VerifySiteAddGlobalIdMax+1
Scenario: T 2010.3.6 In the Site ID field, enter a Site ID to max+1 characters and Save. Verify validator error message is displayed. Print Screen.
Given The user Opened the AUT.
	Then The user enters "Username".
	Then The user clicks on "SignIn" Button.
    Then The user enters "Password".
    Then The user clicks on "SignIn" Button.
    Then the user waits for the page to load.	
    Then The user clicks on "SETUPS" Button.    
    Then the user asserts value of "Sites" with "Sites".
    And The user waits for "10" Seconds.
	Then The user clicks on "Add Site" Button.
	And The user waits for "10" Seconds.
	Then The user writes "Site Name" with timestamp.
	Then The user enters "Global Site Id Max + 1".
	Then The user clicks on "Site Type" Button.
	Then the user clicks on "Site Unit" link.
	Then The user clicks on "Site Status" Button.
	Then the user clicks on "Study Active" link.
	Then The user clicks on "Site Data Collection" Button.
	Then the user clicks on "Data Yes" link.
	Then The user enters "Facility Name".
	Then The user clicks on "Site Save" Button.
	Then the user asserts "Site Error" field with "Error Glibal Id Max+1".
	
@ValidateDuplicateSiteId	
Scenario: T 2010.3.7 In the Site ID field, enter a Site ID to an existing Site ID and Save. Verify validator error message is displayed. Print Screen.
Given The user Opened the AUT.
	Then The user enters "Username".
	Then The user clicks on "SignIn" Button.
    Then The user enters "Password".
    Then The user clicks on "SignIn" Button.
    Then the user waits for the page to load.	
    Then The user clicks on "SETUPS" Button.    
	Then the user clicks on "Site next" link.
	Then the user clicks on "Next Global Id Name" link and saves data to file.
	Then the user clicks on "Site in Site Tree" link.
	And The user waits for "10" Seconds.
	Then The user clicks on "Add Site" Button.
	And The user waits for "10" Seconds.
	Then The user writes "Site Name" with timestamp.
	Then The user enters "Global Site Id" from File.
	Then The user clicks on "Site Type" Button.
	Then the user clicks on "Site Unit" link.
	Then The user clicks on "Site Status" Button.
	Then the user clicks on "Study Active" link.
	Then The user clicks on "Site Data Collection" Button.
	Then the user clicks on "Data Yes" link.
	Then The user enters "Facility Name" with timestamp and saves.
	Then The user clicks on "Site Save" Button.
	Then the user asserts "Site Error" field with "Duplicate Global Site Id".
	
@VerifySiteAddSelectType
Scenario: T 2010.3.8 Select Site Type value from the drop down. Verify the values are based on the spec. Print Screen.
Given The user Opened the AUT.
	Then The user enters "Username".
	Then The user clicks on "SignIn" Button.
    Then The user enters "Password".
    Then The user clicks on "SignIn" Button.
    Then the user waits for the page to load.	
    Then The user clicks on "SETUPS" Button.    
	Then the user clicks on "Site in Site Tree" link.
	And The user waits for "10" Seconds.
	Then The user clicks on "Add Site" Button.
	And The user waits for "10" Seconds.
	Then The user clicks on "Site Type" drop down, select result from "Site Type List" and asserts value with "Site Type List".

@VerifySiteAddParent
Scenario: T 2010.3.9 Select Parent value from the drop down. Verify the values are based on the sites previously entered. Print Screen.
Given The user Opened the AUT.
	Then The user enters "Username".
	Then The user clicks on "SignIn" Button.
    Then The user enters "Password".
    Then The user clicks on "SignIn" Button.
    Then the user waits for the page to load.	
    Then The user clicks on "SETUPS" Button.    
	Then the user clicks on "Site in Site Tree" link.
	And The user waits for "10" Seconds.
	Then The user clicks on "Add Site" Button.
	And The user waits for "10" Seconds.
	Then The user clicks on "Site Parent" drop down, select result from "Site Parent List" and asserts value with "Site Parent List".

@VerifyAddStatus
Scenario: T 2010.3.10 Select Status value from the drop down. Verify the values are based on the spec. Print Screen.
Given The user Opened the AUT.
	Then The user enters "Username".
	Then The user clicks on "SignIn" Button.
    Then The user enters "Password".
    Then The user clicks on "SignIn" Button.
    Then the user waits for the page to load.	
    Then The user clicks on "SETUPS" Button.    
	Then the user clicks on "Site in Site Tree" link.
	And The user waits for "10" Seconds.
	Then The user clicks on "Add Site" Button.
	And The user waits for "10" Seconds.
	Then The user clicks on "Site Status" drop down, select result from "Site Status List" and asserts value with "Site Status List".

@VerifySiteAddDataCollection
Scenario: T 2010.3.11 Select Data Collection value from the drop down. Verify the values are based on the spec. Print Screen.
Given The user Opened the AUT.
	Then The user enters "Username".
	Then The user clicks on "SignIn" Button.
    Then The user enters "Password".
    Then The user clicks on "SignIn" Button.
    Then the user waits for the page to load.	
    Then The user clicks on "SETUPS" Button.    
	Then the user clicks on "Site in Site Tree" link.
	Then The user clicks on "Add Site" Button.
	And The user waits for "10" Seconds.
	Then The user clicks on "Site Data Collection" drop down, select result from "Site Data Collection List" and asserts value with "Site Data Collection List".

@VerifSiteAddyFacilityMax+1
Scenario: T 2010.3.12 In the Facility Name field, enter an existing Facility Name to max+1 characters and Save. Verify validator error message is displayed. Print Screen.
Given The user Opened the AUT.
	Then The user enters "Username".
	Then The user clicks on "SignIn" Button.
    Then The user enters "Password".
    Then The user clicks on "SignIn" Button.
    Then the user waits for the page to load.	
    Then The user clicks on "SETUPS" Button.    
	Then the user clicks on "Site in Site Tree" link.
	Then The user clicks on "Add Site" Button.
	And The user waits for "10" Seconds.
	Then The user writes "Site Name" with timestamp.
	Then The user enters "Global Site Id".
	Then The user clicks on "Site Type" Button.
	Then the user clicks on "Site Unit" link.
	Then The user clicks on "Site Status" Button.
	Then the user clicks on "Study Active" link.
	Then The user clicks on "Site Data Collection" Button.
	Then the user clicks on "Data Yes" link.
	Then The user enters "Facility Name Max+1".
	Then The user clicks on "Site Save" Button.
	Then the user asserts "Site Error" field with "Error Facility Name Max+1".

@VerifySiteAddFacilityCityMax+1
Scenario: T 2010.3.13 In the Facility City field, enter an existing Facility City to max+1 characters and Save. Verify validator error message is displayed. Print Screen.
Given The user Opened the AUT.
	Then The user enters "Username".
	Then The user clicks on "SignIn" Button.
    Then The user enters "Password".
    Then The user clicks on "SignIn" Button.
    Then the user waits for the page to load.	
    Then The user clicks on "SETUPS" Button.    
	Then the user clicks on "Site in Site Tree" link.
	And The user waits for "10" Seconds.
	Then The user clicks on "Add Site" Button.
	And The user waits for "10" Seconds.
	Then The user writes "Site Name" with timestamp.
	Then The user enters "Global Site Id".
	Then The user clicks on "Site Type" Button.
	Then the user clicks on "Site Unit" link.
	Then The user clicks on "Site Status" Button.
	Then the user clicks on "Study Active" link.
	Then The user clicks on "Site Data Collection" Button.
	Then the user clicks on "Data Yes" link.
	Then The user enters "Facility City Max+1".
	Then The user clicks on "Site Save" Button.
	Then the user asserts "Site Error" field with "Error Facility City Max+1".
		
@VerifySiteAddFacilityStateMax+1
Scenario: T 2010.3.14 In the Facility State/Province field, enter an existing Facility State/Province to max+1 characters and Save. Verify validator error message is displayed. Print Screen.
Given The user Opened the AUT.
	Then The user enters "Username".
	Then The user clicks on "SignIn" Button.
    Then The user enters "Password".
    Then The user clicks on "SignIn" Button.
    Then the user waits for the page to load.	
    Then The user clicks on "SETUPS" Button.    
	Then the user clicks on "Site in Site Tree" link.
	And The user waits for "10" Seconds.
	Then The user clicks on "Add Site" Button.
	And The user waits for "10" Seconds.
Then The user writes "Site Name" with timestamp.
	Then The user enters "Global Site Id".
	Then The user clicks on "Site Type" Button.
	Then the user clicks on "Site Unit" link.
	Then The user clicks on "Site Status" Button.
	Then the user clicks on "Study Active" link.
	Then The user clicks on "Site Data Collection" Button.
	Then the user clicks on "Data Yes" link.
	Then The user enters "Facility State Max+1".
	Then The user clicks on "Site Save" Button.
	Then the user asserts "Site Error" field with "Error Facility State Max+1".

@VerifySiteAddFacilityZipMax+1
Scenario: T 2010.3.110 In the Facility Zip field, enter an existing Facility Zip to max+1 characters and Save. Verify validator error message is displayed. Print Screen.
Given The user Opened the AUT.
	Then The user enters "Username".
	Then The user clicks on "SignIn" Button.
    Then The user enters "Password".
    Then The user clicks on "SignIn" Button.
    Then the user waits for the page to load.	
    Then The user clicks on "SETUPS" Button.    
	Then the user clicks on "Site in Site Tree" link.
	And The user waits for "10" Seconds.
	Then The user clicks on "Add Site" Button.
	And The user waits for "10" Seconds.
Then The user writes "Site Name" with timestamp.
	Then The user enters "Global Site Id".
	Then The user clicks on "Site Type" Button.
	Then the user clicks on "Site Unit" link.
	Then The user clicks on "Site Status" Button.
	Then the user clicks on "Study Active" link.
	Then The user clicks on "Site Data Collection" Button.
	Then the user clicks on "Data Yes" link.
	Then The user enters "Facility Zip Max+1".
	Then The user clicks on "Site Save" Button.
	Then the user asserts "Site Error" field with "Error Facility Zip Max+1".
	
@VerifySiteAddCountryMax+1
Scenario: T 2010.3.16 In the Facility Country field, enter an existing Facility Country to max+1 characters and Save. Verify validator error message is displayed. Print Screen.
Given The user Opened the AUT.
	Then The user enters "Username".
	Then The user clicks on "SignIn" Button.
    Then The user enters "Password".
    Then The user clicks on "SignIn" Button.
    Then the user waits for the page to load.	
    Then The user clicks on "SETUPS" Button.    
	Then the user clicks on "Site in Site Tree" link.
	And The user waits for "10" Seconds.
	Then The user clicks on "Add Site" Button.
	And The user waits for "10" Seconds.
Then The user writes "Site Name" with timestamp.
	Then The user enters "Global Site Id".
	Then The user clicks on "Site Type" Button.
	Then the user clicks on "Site Unit" link.
	Then The user clicks on "Site Status" Button.
	Then the user clicks on "Study Active" link.
	Then The user clicks on "Site Data Collection" Button.
	Then the user clicks on "Data Yes" link.
	Then The user enters "Facility Country Max+1".
	Then The user clicks on "Site Save" Button.
	Then the user asserts "Site Error" field with "Error Facility Country Max+1".
	
@VerifySiteAddTimeZoneCheck
Scenario: T 2010.3.17 Select Facility Time Zone value from the drop down. Verify the values are based on the spec. Print Screen.
Given The user Opened the AUT.
	Then The user enters "Username".
	Then The user clicks on "SignIn" Button.
    Then The user enters "Password".
    Then The user clicks on "SignIn" Button.
    Then the user waits for the page to load.	
    Then The user clicks on "SETUPS" Button.    
	Then the user clicks on "Site in Site Tree" link.
	And The user waits for "10" Seconds.
	Then The user clicks on "Add Site" Button.
	And The user waits for "10" Seconds.
	#And The user waits for  "10" Seconds.
	Then The user clicks on "Facility TimeZone" Button.
	
	Then The user asserts "TimeZone Field" with "TimeZone Field" regex.
	
@VerifySiteAddFacilityContactName
Scenario: T 2010.3.18 In the Facility Contact Name field, enter an existing Facility Contact Name to max+1 characters and Save. Verify validator error message is displayed. Print Screen.
Given The user Opened the AUT.
	Then The user enters "Username".
	Then The user clicks on "SignIn" Button.
    Then The user enters "Password".
    Then The user clicks on "SignIn" Button.
    Then the user waits for the page to load.	
    Then The user clicks on "SETUPS" Button.    
	Then the user clicks on "Site in Site Tree" link.
	And The user waits for "10" Seconds.
	Then The user clicks on "Add Site" Button.
	And The user waits for "10" Seconds.
	Then The user writes "Site Name" with timestamp.
	Then The user enters "Global Site Id".
	Then The user clicks on "Site Type" Button.
	Then the user clicks on "Site Unit" link.
	Then The user clicks on "Site Status" Button.
	Then the user clicks on "Study Active" link.
	Then The user clicks on "Site Data Collection" Button.
	Then the user clicks on "Data Yes" link.
	Then The user enters "Contacts Name Max+1".
	Then The user clicks on "Site Save" Button.
	Then the user asserts "Site Error" field with "Error Contact Name Max+1".
	
@VerifySiteAddFacilityContactDegreeMax+1
Scenario: T 2010.3.19 In the Facility Contact Degree field, enter an existing Facility Contact Degree to max+1 characters and Save. Verify validator error message is displayed. Print Screen.
Given The user Opened the AUT.
	Then The user enters "Username".
	Then The user clicks on "SignIn" Button.
    Then The user enters "Password".
    Then The user clicks on "SignIn" Button.
    Then the user waits for the page to load.	
    Then The user clicks on "SETUPS" Button.    
	Then the user clicks on "Site in Site Tree" link.
	And The user waits for "10" Seconds.
	Then The user clicks on "Add Site" Button.
	And The user waits for "10" Seconds.
	Then The user writes "Site Name" with timestamp.
	Then The user enters "Global Site Id".
	Then The user clicks on "Site Type" Button.
	Then the user clicks on "Site Unit" link.
	Then The user clicks on "Site Status" Button.
	Then the user clicks on "Study Active" link.
	Then The user clicks on "Site Data Collection" Button.
	Then the user clicks on "Data Yes" link.
	Then The user enters "Contacts Degree Max+1".
	Then The user clicks on "Site Save" Button.
	Then the user asserts "Site Error" field with "Error Contact Degree Max+1".
	
@VerifySiteAddFacilityContactPhoneMax+1
Scenario: T 2010.3.20 In the Facility Contact Phone field, enter an existing Facility Contact Phone to max+1 characters and Save. Verify validator error message is displayed. Print Screen.
Given The user Opened the AUT.
	Then The user enters "Username".
	Then The user clicks on "SignIn" Button.
    Then The user enters "Password".
    Then The user clicks on "SignIn" Button.
    Then the user waits for the page to load.	
    Then The user clicks on "SETUPS" Button.    
	Then the user clicks on "Site in Site Tree" link.
	And The user waits for "10" Seconds.
	Then The user clicks on "Add Site" Button.
	And The user waits for "10" Seconds.
	Then The user writes "Site Name" with timestamp.
	Then The user enters "Global Site Id".
	Then The user clicks on "Site Type" Button.
	Then the user clicks on "Site Unit" link.
	Then The user clicks on "Site Status" Button.
	Then the user clicks on "Study Active" link.
	Then The user clicks on "Site Data Collection" Button.
	Then the user clicks on "Data Yes" link.
	Then The user enters "Contacts Phone Max+1".
	Then The user clicks on "Site Save" Button.
	Then the user asserts "Site Error" field with "Error Contact Phone Max+1".
	
@VerifySiteAddFacilityEmailMax+1
Scenario: T 2010.3.21 In the Facility Contact Email field, enter an existing Facility Contact Email to max+1 characters and Save. Verify validator error message is displayed. Print Screen.
Given The user Opened the AUT.
	Then The user enters "Username".
	Then The user clicks on "SignIn" Button.
    Then The user enters "Password".
    Then The user clicks on "SignIn" Button.
    Then the user waits for the page to load.	
    Then The user clicks on "SETUPS" Button.    
	Then the user clicks on "Site in Site Tree" link.
	And The user waits for "10" Seconds.
	Then The user clicks on "Add Site" Button.
	And The user waits for "10" Seconds.
Then The user writes "Site Name" with timestamp.
	Then The user enters "Global Site Id".
	Then The user clicks on "Site Type" Button.
	Then the user clicks on "Site Unit" link.
	Then The user clicks on "Site Status" Button.
	Then the user clicks on "Study Active" link.
	Then The user clicks on "Site Data Collection" Button.
	Then the user clicks on "Data Yes" link.
	Then The user enters "Facility EMail Max+1".
	Then The user clicks on "Site Save" Button.
	And The user waits for "10" Seconds.
	Then the user asserts "Site Error" field with "Facility EMail Max+1".
	
@VerifySiteAddSiteGroupCannotBeAddToStudy
Scenario: T 2010.3.22 Select Site Group value for the Site Type from the drop down. Verify the Site cannot be assigned to a Study. Print Screen.
Given The user Opened the AUT.
	Then The user enters "Username".
	Then The user clicks on "SignIn" Button.
    Then The user enters "Password".
    Then The user clicks on "SignIn" Button.
    Then the user waits for the page to load.	
    Then The user clicks on "SETUPS" Button.    
    Then the user asserts value of "Sites" with "Sites".
    And The user waits for "10" Seconds.
	Then The user clicks on "Add Site" Button.
	And The user waits for "10" Seconds.
	Then The user enters "Site Name" with timestamp and saves.
	Then The user enters "Global Site Id Field".
	Then The user clicks on "Site Type" Button.
	Then the user clicks on "Site Unit" link.
	Then The user clicks on "Site Status" Button.
	Then the user clicks on "Study Active" link.
	Then The user clicks on "Site Data Collection" Button.
	Then the user clicks on "Data Yes" link.
	Then The user writes "Facility Name" with timestamp.
	Then The user clicks on "Parent Dropdown" Button.
	Then the user clicks on "Parent Link" link.
	Then The user clicks on "Site Type" Button.
	Then the user clicks on "Site Group" link.
	Then The user clicks on "Site Save" Button.
	Then the user checks value of "Site Name Text" from file without deleting.
	Then The user clicks on "Redcap Cloud Icon" Button.
	Then the user clicks on "Test Title 11007491160238" link.
	Then The user clicks on "Sites Tab" Button.
	Then The user clicks on "Sites Tab Add Site" Button By Action.
	Then The user clicks on "Sites Tab Search Site" Button By Action.
	Then The user retrieves value from File and enters into "Select Sites Name".
	Then the user asserts value of "Select Sites Table" Table is empty.

@VerifySiteAddParentSite
Scenario: T 2010.3.23 Select the Parent of the site from the drop down. Verify the Site is assigned to a proper Parent Site upon Save. Print Screen.
Given The user Opened the AUT.
	Then The user enters "Username".
	Then The user clicks on "SignIn" Button.
    Then The user enters "Password".
    Then The user clicks on "SignIn" Button.
    Then the user waits for the page to load.	
    Then The user clicks on "SETUPS" Button.    
    Then the user asserts value of "Sites" with "Sites".
    And The user waits for "10" Seconds.
	Then The user clicks on "Add Site" Button.
	And The user waits for "10" Seconds.
	Then The user writes "Site Name" with timestamp.
	Then The user enters "Global Site Id Field".
	Then The user clicks on "Site Type" Button.
	Then the user clicks on "Site Unit" link.
	Then The user clicks on "Site Status" Button.
	Then the user clicks on "Study Active" link.	
	Then The user clicks on "Site Data Collection" Button.
	Then the user clicks on "Data Yes" link.
	Then The user writes "Facility Name" with timestamp.
	Then The user clicks on "Parent Dropdown" Button.
	Then the user clicks on "Parent Link" link and saves data to file.
	Then The user clicks on "Site Type" Button.
	Then the user clicks on "Site Group" link.
	Then The user clicks on "Site Save" Button.
	And The user waits for "10" Seconds.
	Then the user asserts value of "Parent Value" from file.
@VerifyAddStudyInactive
Scenario: T 2010.3.24 Select Inactive value for the Status from the drop down. Verify the Site cannot be assigned to a Study. Print Screen.
Given The user Opened the AUT.
	Then The user enters "Username".
	Then The user clicks on "SignIn" Button.
    Then The user enters "Password".
    Then The user clicks on "SignIn" Button.
    Then the user waits for the page to load.	
    Then The user clicks on "SETUPS" Button.    
    Then the user asserts value of "Sites" with "Sites".
    And The user waits for "10" Seconds.
	Then The user clicks on "Add Site" Button.
	And The user waits for "10" Seconds.
	Then The user enters "Site Name" with timestamp and saves.
	Then The user enters "Global Site Id Field".
	Then The user clicks on "Site Type" Button.
	Then the user clicks on "Site Unit" link and saves to multiple entry file.
	Then The user clicks on "Site Status" Button.
	Then the user clicks on "Study Active" link and saves to multiple entry file.
	Then The user clicks on "Site Data Collection" Button.
	Then the user clicks on "Data Yes" link and saves to multiple entry file.
	Then The user writes "Facility Name" with timestamp.
	Then The user clicks on "Parent Dropdown" Button.
	Then the user clicks on "Parent Link" link and saves data to file.
	Then The user clicks on "Site Type" Button.
	Then the user clicks on "Site Group" link.
	Then The user clicks on "Site Save" Button.
	Then the user checks value of "Site Name Text" from file without deleting.
	Then The user clicks on "Redcap Cloud Icon" Button.
	Then the user clicks on "Test Title 1507491160238" link.
	Then The user clicks on "Sites Tab" Button.
	Then The user clicks on "Sites Tab Add Site" Button By Action.
	Then The user clicks on "Sites Tab Search Site" Button By Action.
	Then The user retrieves value from File and enters into "Select Sites Name".
	Then the user asserts value of "Select Sites Table" Table is empty.
	
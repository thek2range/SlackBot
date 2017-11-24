@RedCapStuEditFacility
Feature: RedCapStuEditFacility

@StudyEditFacilityCheck
Scenario: T 221.4.1 Click on the Edit button in the Facility Information section. Verify the screen matches spec. Print Screen.
Given The user Opened the AUT.
	Then The user enters "Username".
	Then The user clicks on "SignIn" Button.
    Then The user enters "Password".
    Then The user clicks on "SignIn" Button.
    And The user waits for "30" Seconds.	
    Then the user clicks on "Test Title 1507491160238" link.
    And The user waits for "5" Seconds.
	Then the user clicks on "Details" link.
	Then The user clicks on "Edit Study" Button.
	Then the user clicks on "Edit Study Facility" link.
	Then The user checks "Edit Facility Name" field is edible.
	
@StudyEditFacilitySave
Scenario: T 221.4.2 Click Save button. Verify the changes made to Facility Information section data are saved and screen reverts to View mode. Print Screen.
Given The user Opened the AUT.
	Then The user enters "Username".
	Then The user clicks on "SignIn" Button.
    Then The user enters "Password".
    Then The user clicks on "SignIn" Button.
    And The user waits for "30" Seconds.	
    Then the user clicks on "Test Title 1507491160238" link.
	And The user waits for "5" Seconds.
	Then the user clicks on "Details" link.
	Then The user clicks on "Edit Study" Button.
	Then the user clicks on "Edit Study Facility" link.
	Then The user enters "Edit Facility Name" with timestamp and saves.
	Then The user clicks on "Save Facility" Button.
	Then the user asserts value of "Facility Name Text" from file.
	
@StudyEditFacilityCancel
Scenario: T 221.4.3 Click Cancel button. Verify no changes are made to Facility Information data and screen reverts to View mode. Print Screen.
Given The user Opened the AUT.
	Then The user enters "Username".
	Then The user clicks on "SignIn" Button.
    Then The user enters "Password".
    Then The user clicks on "SignIn" Button.
    And The user waits for "30" Seconds.	
    Then the user clicks on "Test Title 1507491160238" link.
    And The user waits for "5" Seconds.
	Then the user clicks on "Details" link.
	Then The user clicks on "Edit Study" Button.
	Then the user saves content for "Facility Name Text".	
	Then the user clicks on "Edit Study Facility" link.
	Then The user writes "Edit Facility Name" with timestamp.
	Then The user clicks on "Cancel Facility" Button.
	Then the user asserts value of "Facility Name Text" from file.
	
@StuEditFacilityNameMax+1
Scenario: T 221.4.4 In the Facility Name field, change the value to max+1 characters and Save. Verify validator error message is displayed. Print Screen.
Given The user Opened the AUT.
	Then The user enters "Username".
	Then The user clicks on "SignIn" Button.
    Then The user enters "Password".
    Then The user clicks on "SignIn" Button.
    And The user waits for "30" Seconds.	
    Then the user clicks on "Test Title 1507491160238" link.
    And The user waits for "5" Seconds.
	Then the user clicks on "Details" link.
	Then The user clicks on "Edit Study" Button.
	Then the user clicks on "Edit Study Facility" link.
	Then The user enters "Facility Name Text Max+1".
	Then The user clicks on "Save Facility" Button.	
	Then the user asserts html contains with "Error Facility Name Field Max+1".
	
@StudyEditFacilityCityMax+1
Scenario: T 221.4.5 In the Facility City field, change the value to max+1 characters and Save. Verify validator error message is displayed. Print Screen.
Given The user Opened the AUT.
	Then The user enters "Username".
	Then The user clicks on "SignIn" Button.
    Then The user enters "Password".
    Then The user clicks on "SignIn" Button.
    And The user waits for "30" Seconds.	
    Then the user clicks on "Test Title 1507491160238" link.
    And The user waits for "5" Seconds.
	Then the user clicks on "Details" link.
	Then The user clicks on "Edit Study" Button.
	Then the user clicks on "Edit Study Facility" link.
	Then The user enters "Facility City Text Max+1".
	Then The user clicks on "Save Facility" Button.	
	Then the user asserts html contains with "Error Facility City Field Max+1".

@StudyEditFacilityStateMax+1	
Scenario: T 221.4.6 In the Facility State/Province field, change the value to max+1 characters and Save. Verify validator error message is displayed. Print Screen.	
Given The user Opened the AUT.
	Then The user enters "Username".
	Then The user clicks on "SignIn" Button.
    Then The user enters "Password".
    Then The user clicks on "SignIn" Button.
    And The user waits for "30" Seconds.	
    Then the user clicks on "Test Title 1507491160238" link.
    And The user waits for "5" Seconds.
	Then the user clicks on "Details" link.
	Then The user clicks on "Edit Study" Button.
	Then the user clicks on "Edit Study Facility" link.
	Then The user enters "Facility State Text Max+1".
	Then The user clicks on "Save Facility" Button.	
	Then the user asserts html contains with "Error Facility State Field Max+1".
	
@StudyEditFacilityZipMax+1
Scenario: T 221.4.7 In the Facility Zip field, change the value to max+1 characters and Save. Verify validator error message is displayed. Print Screen.
Given The user Opened the AUT.
	Then The user enters "Username".
	Then The user clicks on "SignIn" Button.
    Then The user enters "Password".
    Then The user clicks on "SignIn" Button.
    And The user waits for "30" Seconds.	
    Then the user clicks on "Test Title 1507491160238" link.
    And The user waits for "5" Seconds.
	Then the user clicks on "Details" link.
	Then The user clicks on "Edit Study" Button.
	Then the user clicks on "Edit Study Facility" link.
	Then The user enters "Facility Zip Text Max+1".
	Then The user clicks on "Save Facility" Button.	
	Then the user asserts html contains with "Error Facility Zip Field Max+1".

@StudyEditFacilityCountryMax+1
Scenario: T 221.4.8 In the Facility Country field, change the value to max+1 characters and Save. Verify validator error message is displayed. Print Screen.
Given The user Opened the AUT.
	Then The user enters "Username".
	Then The user clicks on "SignIn" Button.
    Then The user enters "Password".
    Then The user clicks on "SignIn" Button.
    And The user waits for "30" Seconds.	
    Then the user clicks on "Test Title 1507491160238" link.
    And The user waits for "5" Seconds.
	Then the user clicks on "Details" link.
	Then The user clicks on "Edit Study" Button.
	Then the user clicks on "Edit Study Facility" link.
	Then The user enters "Facility Country Text Max+1".
	Then The user clicks on "Save Facility" Button.	
	Then the user asserts html contains with "Error Facility Country Field Max+1".

@StudyEditFacilityContactNameMax+1
Scenario: T 221.4.9 In the Facility Contact Name field, change the value to max+1 characters and Save. Verify validator error message is displayed. Print Screen.
Given The user Opened the AUT.
	Then The user enters "Username".
	Then The user clicks on "SignIn" Button.
    Then The user enters "Password".
    Then The user clicks on "SignIn" Button.
    And The user waits for "30" Seconds.	
    Then the user clicks on "Test Title 1507491160238" link.
    And The user waits for "5" Seconds.
	Then the user clicks on "Details" link.
	Then The user clicks on "Edit Study" Button.
	Then the user clicks on "Edit Study Facility" link.
	Then The user enters "Facility Contact Name Max+1".
	Then The user clicks on "Save Facility" Button.	
	Then the user asserts html contains with "Error Facility Contact Name Max+1".

@StudyEditFacilityContactDegreeMax+1
Scenario: T 221.4.10 In the Facility Contact Degree field, change the value to max+1 characters and Save. Verify validator error message is displayed. Print Screen.
Given The user Opened the AUT.
	Then The user enters "Username".
	Then The user clicks on "SignIn" Button.
    Then The user enters "Password".
    Then The user clicks on "SignIn" Button.
    And The user waits for "30" Seconds.	
    Then the user clicks on "Test Title 1507491160238" link.
    And The user waits for "5" Seconds.
	Then the user clicks on "Details" link.
	Then The user clicks on "Edit Study" Button.
	Then the user clicks on "Edit Study Facility" link.
	Then The user enters "Facility Contact Degree Max+1".
	Then The user clicks on "Save Facility" Button.	
	Then the user asserts html contains with "Error Facility Contact Degree Max+1".

@StudyEditFacilityContactPhoneMax+1
Scenario: T 221.4.11 In the Facility Contact Phone field, change the value to max+1 characters and Save. Verify validator error message is displayed. Print Screen.
Given The user Opened the AUT.
	Then The user enters "Username".
	Then The user clicks on "SignIn" Button.
    Then The user enters "Password".
    Then The user clicks on "SignIn" Button.
    And The user waits for "30" Seconds.	
    Then the user clicks on "Test Title 1507491160238" link.
    And The user waits for "5" Seconds.
	Then the user clicks on "Details" link.
	Then The user clicks on "Edit Study" Button.
	Then the user clicks on "Edit Study Facility" link.
	Then The user enters "Facility Contact Phone Max+1".
	Then The user clicks on "Save Facility" Button.	
	Then the user asserts html contains with "Error Facility Contact Phone Max+1".

@StudyEditFacilityEmail
Scenario: T 221.4.12 In the Facility Contact Email field, change the value to max+1 characters and Save. Verify validator error message is displayed. Print Screen.
Given The user Opened the AUT.
	Then The user enters "Username".
	Then The user clicks on "SignIn" Button.
    Then The user enters "Password".
    Then The user clicks on "SignIn" Button.
    And The user waits for "30" Seconds.	
    Then the user clicks on "Test Title 1507491160238" link.
    And The user waits for "5" Seconds.
	Then the user clicks on "Details" link.
	Then The user clicks on "Edit Study" Button.
	Then the user clicks on "Edit Study Facility" link.
	Then The user enters "Facility Email Max+1".
	Then The user clicks on "Save Facility" Button.	
	Then the user asserts html contains with "Error Facility Email Max+1".
	
	
	
##############Related Info
@StudyEditRelatedInformationValid
Scenario:  T 221.5.1 Click on the Edit button in the Related Information section. Verify the screen matches spec. Print Screen.
Given The user Opened the AUT.
	Then The user enters "Username".
	Then The user clicks on "SignIn" Button.
    Then The user enters "Password".
    Then The user clicks on "SignIn" Button.
    And The user waits for "30" Seconds.	
    Then the user clicks on "Test Title 1507491160238" link.
    And The user waits for "5" Seconds.
	Then the user clicks on "Details" link.
	Then The user clicks on "Edit Study" Button.
	Then the user clicks on "Edit Related Info" link.
	Then The user checks "Mediline Identifier" field is edible.

@StudyEditRelatedInfoSave
Scenario: T 221.5.2 Click Save button. Verify the changes made to Related Information section data are saved and screen reverts to view mode. Print Screen.
Given The user Opened the AUT.
	Then The user enters "Username".
	Then The user clicks on "SignIn" Button.
    Then The user enters "Password".
    Then The user clicks on "SignIn" Button.
    And The user waits for "30" Seconds.	
    Then the user clicks on "Test Title 1507491160238" link.
    And The user waits for "5" Seconds.
	Then the user clicks on "Details" link.
	Then The user clicks on "Edit Study" Button.
	Then the user clicks on "Edit Related Info" link.
	Then The user enters "Mediline Identifier" with timestamp and saves.
	Then The user clicks on "Save Related Info" Button.
	Then the user asserts value of "Mediline Identifier Text" from file.

@StudyEditRelatedInfoCancel
Scenario: T 222.1.3 Click Cancel button. Verify no changes are made to Study Status and the pop-up form screen is closed. Print Screen.	
Given The user Opened the AUT.
	Then The user enters "Username".
	Then The user clicks on "SignIn" Button.
    Then The user enters "Password".
    Then The user clicks on "SignIn" Button.
    And The user waits for "30" Seconds.	
    Then the user clicks on "Test Title 1507491160238" link.
    And The user waits for "5" Seconds.
	Then the user clicks on "Details" link.
	Then The user clicks on "Edit Study" Button.
	Then the user saves content for "Mediline Identifier Text".
	Then the user clicks on "Edit Related Info" link.
	Then The user writes "Mediline Identifier" with timestamp.
	Then The user clicks on "Related Info Cancel" Button.
	Then the user asserts value of "Mediline Identifier Text" from file.
	
@StudyEditRelatedInfoStatus
Scenario: T 222.1.4 Select Study Status value from the drop down. Verify the values are based on the spec. Print Screen.
Given The user Opened the AUT.
	Then The user enters "Username".
	Then The user clicks on "SignIn" Button.
    Then The user enters "Password".
    Then The user clicks on "SignIn" Button.
    And The user waits for "30" Seconds.	
    Then the user clicks on "Test Title 1507491160238" link.
    And The user waits for "5" Seconds.
	Then the user clicks on "Details" link.
	Then The user clicks on "Edit Study" Button.
	Then The user clicks on "Change Status" Button.
	Then The user clicks on "Change Status Combo" drop down, select result from "Status List" and asserts value with "Status List Values".
	
@StudyEditStatusProdCRFNotEditable
Scenario: T 222.1.5 Select Study Status value "Production" from the drop down. Verify CRFs, Events and Rules cannot be change in Production status. Print Screen.	
Given The user Opened the AUT.
	Then The user enters "Username".
	Then The user clicks on "SignIn" Button.
    Then The user enters "Password".
    Then The user clicks on "SignIn" Button.
    And The user waits for "30" Seconds.	
    Then the user clicks on "Study Change Config" link.
    And The user waits for "5" Seconds.
	Then the user clicks on "Details" link.
	Then The user clicks on "Edit Study" Button.
	Then The user clicks on "Change Status" Button.
	Then The user clicks on "Change Status Combo" Button.
	Then the user clicks on "Status Production" link.
	Then The user clicks on "Status Save And Exit" Button.
	Then the user clicks on "Study CRF" link.
	Then The user checks "Add CRF" field is not edible.
	
@StudyEditChangeStatusFrozen	
Scenario: T 222.1.6 Select Study Status value "Frozen" from the drop down. Verify there is no Subject Enrollment, data collection, and changes to CRFs, Events and Rules. Print Screen.
Given The user Opened the AUT.
	Then The user enters "Username".
	Then The user clicks on "SignIn" Button.
    Then The user enters "Password".
    Then The user clicks on "SignIn" Button.
    And The user waits for "30" Seconds.	
    Then the user clicks on "Study Change Config" link.
    And The user waits for "5" Seconds.
	Then the user clicks on "Details" link.
	Then The user clicks on "Edit Study" Button.
	Then The user clicks on "Change Status" Button.
	Then The user clicks on "Change Status Combo" Button.
	Then the user clicks on "Study Status Change Frozen" link.
	Then The user clicks on "Status Save And Exit" Button.
	Then the user clicks on "Study CRF" link.
	Then The user checks "Add CRF" field is not edible.
	Then the user clicks on "Rules Link" link.
	Then The user checks "Rules Add Button" field is not edible.
	Then the user clicks on "Event Definition Link" link.
	Then The user checks "Event Add Button" field is not edible.
	Then the user clicks on "Subjects  Left menu" link.
	Then The user checks "Subject Enrollment Add Button" field is not edible.
	Then the user clicks on "Data Left Menu" link.
	Then the user clicks on "Data Import Tool" link.
	Then The user checks "Data File Upload" field is not edible.

@StudyEditStatusArchieve
Scenario: T 222.1.7 Select Study Status value "Archived" from the drop down. Verify the study is in is ready only mode. Print Screen.	
Given The user Opened the AUT.
	Then The user enters "Username".
	Then The user clicks on "SignIn" Button.
    Then The user enters "Password".
    Then The user clicks on "SignIn" Button.
    And The user waits for "30" Seconds.	
    Then the user clicks on "Study Change Config" link.
    And The user waits for "5" Seconds.
	Then the user clicks on "Details" link.
	Then The user clicks on "Edit Study" Button.
	Then The user clicks on "Change Status" Button.
	Then The user clicks on "Change Status Combo" Button.
	Then the user clicks on "Study Status Change Archive" link.
	
	
	
	
	
	
	
	
	
	
	


	
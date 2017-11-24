@RedCap_CRF_Add
Feature: RedCap_CRF_Add Testing

@CRFAddVerifyScreen
Scenario: T 231.6.1 Click on the Add button in CRF list. Verify the screen matches spec. Print Screen.
Given The user Opened the AUT.
	Then The user enters "Username".
	Then The user clicks on "SignIn" Button.
    Then The user enters "Password".
    Then The user clicks on "SignIn" Button.
    And The user waits for "30" Seconds.	
    Then the user clicks on "Test Title 1507491160238" link.
    And The user waits for "5" Seconds.
	Then the user clicks on "Study CRF" link.
	Then The user clicks on "Add CRF" Button.
	And The user waits for "10" Seconds.
	Then The user checks "Instrument Name" field is edible.
	
@CRFAddSave
Scenario: T 231.6.2 Click Save button. Verify the changes made to CRF data are saved. Print Screen.
Given The user Opened the AUT.
	Then The user enters "Username".
	Then The user clicks on "SignIn" Button.
    Then The user enters "Password".
    Then The user clicks on "SignIn" Button.
    And The user waits for "30" Seconds.	
    Then the user clicks on "Test Title 1507491160238" link.
    And The user waits for "5" Seconds.
	Then the user clicks on "Study CRF" link.
	Then The user clicks on "Add CRF" Button.
	And The user waits for "10" Seconds.
	Then The user enters without action "Instrument Name" with timestamp and saves.
	And The user waits for "10" Seconds.
	Then The user writes without action "CRF Description" with timestamp.
	And The user waits for "10" Seconds.	
	Then The user clicks on "CRF Save" Button By Action.
	And The user waits for "5" Seconds.
	Then the user asserts html contains with "Changes Saved".
	
@CRFAddSaveAndExit
Scenario: T 231.6.3 Click Save and Exit button. Verify changes are made to CRF data and user is navigated to CRF list. Print Screen.
Given The user Opened the AUT.
	Then The user enters "Username".
	Then The user clicks on "SignIn" Button.
    Then The user enters "Password".
    Then The user clicks on "SignIn" Button.
    And The user waits for "30" Seconds.	
    Then the user clicks on "Test Title 1507491160238" link.
    And The user waits for "5" Seconds.
	Then the user clicks on "Study CRF" link.
	Then The user clicks on "Add CRF" Button.
	And The user waits for "10" Seconds.
	Then The user enters without action "Instrument Name" with timestamp and saves.
	And The user waits for "10" Seconds.
	Then The user writes without action "CRF Description" with timestamp.
	And The user waits for "10" Seconds.	
	Then The user clicks on "CRF Save and Exit" Button By Action.
	And The user waits for "5" Seconds.
	Then The user asserts html contains from file.

@CRFAddCancel
Scenario: T 231.6.4 Click Cancel button. Verify no changes are made to CRF data and user is navigated to CRF list. Print Screen.
Given The user Opened the AUT.
	Then The user enters "Username".
	Then The user clicks on "SignIn" Button.
    Then The user enters "Password".
    Then The user clicks on "SignIn" Button.
    And The user waits for "30" Seconds.	
    Then the user clicks on "Test Title 1507491160238" link.
    And The user waits for "5" Seconds.
	Then the user clicks on "Study CRF" link.
	Then The user clicks on "Add CRF" Button.
	And The user waits for "10" Seconds.
	Then The user enters without action "Instrument Name" with timestamp and saves.
	And The user waits for "10" Seconds.
	Then The user writes without action "CRF Description" with timestamp.
	And The user waits for "10" Seconds.	
	Then The user clicks on "CRF Cancel" Button.
	And The user waits for "10" Seconds.
	Then The user asserts html does not contain from file.
	
@CRFAddInstrumentNameMax+1
Scenario: T 231.7.1 In the Instrument Name field, Enter value to max+1 characters and Save. Verify validator error message is displayed. Print Screen.
Given The user Opened the AUT.
	Then The user enters "Username".
	Then The user clicks on "SignIn" Button.
    Then The user enters "Password".
    Then The user clicks on "SignIn" Button.
    And The user waits for "30" Seconds.	
    Then the user clicks on "Test Title 1507491160238" link.
    And The user waits for "5" Seconds.
	Then the user clicks on "Study CRF" link.
	Then The user clicks on "Add CRF" Button.
	And The user waits for "10" Seconds.	
	Then The user enters "Instrument Name Max+1".
	Then The user writes without action "CRF Description" with timestamp.
	Then The user waits for "10" Seconds.
	Then The user clicks on "CRF Save" Button By Action.
	And The user waits for "3" Seconds.
	Then the user asserts html contains with "ERROR INSTRUMENT NAME MAX+1".
	
@CRFAddInstrumentNameEmpty
Scenario: T 231.7.2 In the Instrument Name field, do not enter any value and Save. Verify validator error message is displayed. Print Screen.
Given The user Opened the AUT.
	Then The user enters "Username".
	Then The user clicks on "SignIn" Button.
    Then The user enters "Password".
    Then The user clicks on "SignIn" Button.
    And The user waits for "30" Seconds.	
    Then the user clicks on "Test Title 1507491160238" link.
    And The user waits for "5" Seconds.
	Then the user clicks on "Study CRF" link.
	Then The user clicks on "Add CRF" Button.
	And The user waits for "10" Seconds.	
	Then The user clears "Instrument Name" and presses enter.
	Then The user writes without action "CRF Description" with timestamp.
	Then The user waits for "10" Seconds.
	Then The user clicks on "CRF Save" Button By Action.
	And The user waits for "3" Seconds.
	Then the user asserts html contains with "ERROR INSTRUMENT NAME MAX+1".

@CRFAddExistingCRFName
Scenario: T 231.7.3 In the Instrument Name field, enter value of another existing Instrument and Save. Verify validator error message is displayed. Print Screen.
Given The user Opened the AUT.
	Then The user enters "Username".
	Then The user clicks on "SignIn" Button.
    Then The user enters "Password".
    Then The user clicks on "SignIn" Button.
    And The user waits for "30" Seconds.	
    Then the user clicks on "Test Title 1507491160238" link.
    And The user waits for "5" Seconds.
	Then the user clicks on "Study CRF" link.
	Then the user saves content for "Next CRF View".
	Then The user clicks on "Add CRF" Button.
	And The user waits for "10" Seconds.
	Then The user enters "Instrument name" from File.
	Then The user writes without action "CRF Description" with timestamp.
	Then The user clicks on "CRF Save" Button By Action.
	And The user waits for "3" Seconds.
	Then the user asserts html contains with "ERROR DUPLICATE INSTRUMENT NAME".
	
@CRFAddDescriptionMax+1
Scenario: T 231.7.4 In the Description field, change the value to max+1 characters and Save. Verify validator error message is displayed. Print Screen.
Given The user Opened the AUT.
	Then The user enters "Username".
	Then The user clicks on "SignIn" Button.
    Then The user enters "Password".
    Then The user clicks on "SignIn" Button.
    And The user waits for "30" Seconds.	
    Then the user clicks on "Test Title 1507491160238" link.
    And The user waits for "5" Seconds.
	Then the user clicks on "Study CRF" link.
	Then The user clicks on "Add CRF" Button.
	And The user waits for "10" Seconds.
	Then The user writes "Instrument name" with timestamp.
	Then The user enters "CRF Description Max+1".
	Then The user waits for "10" Seconds.
	Then The user clicks on "CRF Save" Button By Action.
	And The user waits for "3" Seconds.
	Then the user asserts html contains with "ERROR CRF DESCRIPTION MAX+1".

@CRFAddDescriptionEmpty
Scenario: T 231.7.5 In the Description Name field, do not enter any value and Save. Verify validator error message is displayed. Print Screen.
Given The user Opened the AUT.
	Then The user enters "Username".
	Then The user clicks on "SignIn" Button.
    Then The user enters "Password".
    Then The user clicks on "SignIn" Button.
    And The user waits for "30" Seconds.	
    Then the user clicks on "Test Title 1507491160238" link.
    And The user waits for "5" Seconds.
	Then the user clicks on "Study CRF" link.
	Then The user clicks on "Add CRF" Button.
	And The user waits for "10" Seconds.
	Then The user writes "Instrument name" with timestamp.
	Then The user clears "CRF Description" and presses enter.
	Then The user waits for "10" Seconds.
	Then The user clicks on "CRF Save" Button By Action.
	And The user waits for "3" Seconds.
	Then the user asserts html contains with "ERROR CRF DESCRIPTION MAX+1".
	
@CRFAddVerifyStatus
Scenario: T 231.7.6 Select Status value from the drop down. Verify the values are based on the spec. Print Screen.
Given The user Opened the AUT.
	Then The user enters "Username".
	Then The user clicks on "SignIn" Button.
    Then The user enters "Password".
    Then The user clicks on "SignIn" Button.
    And The user waits for "30" Seconds.	
    Then the user clicks on "Test Title 1507491160238" link.
    And The user waits for "5" Seconds.
	Then the user clicks on "Study CRF" link.
	Then The user clicks on "Add CRF" Button.
	And The user waits for "10" Seconds.
	Then The user clicks on "CRF Status Button" drop down, select result from "CRF Status List" and asserts value with "CRF Status List Data".
	
@CRFAddStatusInactive
Scenario: T 231.7.7 Select Status value of "Inactive" from the drop down. Verify the CRF cannot be used in Enroll screen or Event definitions. Print Screen.
Given The user Opened the AUT.
	Then The user enters "Username".
	Then The user clicks on "SignIn" Button.
    Then The user enters "Password".
    Then The user clicks on "SignIn" Button.
    And The user waits for "30" Seconds.	
    Then the user clicks on "Test Title 1507491160238" link.
    And The user waits for "5" Seconds.
	Then the user clicks on "Study CRF" link.
	Then The user clicks on "Add CRF" Button.
	And The user waits for "10" Seconds.
	Then The user enters without action "Instrument Name" with timestamp and saves.
	And The user waits for "10" Seconds.
	Then The user writes without action "CRF Description" with timestamp.	
	Then The user clicks on "CRF Status Button" Button.
	Then the user clicks on "Inactive Status" link.
	Then The user waits for "10" Seconds.
	Then The user clicks on "CRF Save and Exit" Button By Action.
	Then the user clicks on "Event Definitions" link.
	Then the user clicks on "Test Event" link.
	Then The user clicks on "Edit Event" Button.
	Then The user clicks on "Add CRF Event" Button.
	Then The user enters from file with key "Instrument Input" presses enter.
	Then the user asserts value of "Instrument Table" Table is empty.
	
@CRFAddEnrolement
Scenario: T 231.7.8 Check Enroll Screening checkbox when enabled through a study parameter. Verify the CRF is available to use in the Enroll screen. Print Screen.
Given The user Opened the AUT.
	Then The user enters "Username".
	Then The user clicks on "SignIn" Button.
    Then The user enters "Password".
    Then The user clicks on "SignIn" Button.
    And The user waits for "30" Seconds.	
    Then the user clicks on "Test Title 1507491160238" link.
    And The user waits for "5" Seconds.
	Then the user clicks on "Study CRF" link.
	Then The user clicks on "Add CRF" Button.
	And The user waits for "10" Seconds.
	Then The user enters without action "Instrument Name" with timestamp and saves.
	And The user waits for "10" Seconds.
	Then The user writes without action "CRF Description" with timestamp.	
	Then The user clicks on "Enroll Screening" Button.
	
@CRFAddRandomization
Scenario: T 231.7.9 Check Randomization checkbox when enabled through a study parameter.. Verify the CRF is available to use in the Randomization process. Print Screen.
Given The user Opened the AUT.
	Then The user enters "Username".
	Then The user clicks on "SignIn" Button.
    Then The user enters "Password".
    Then The user clicks on "SignIn" Button.
    And The user waits for "30" Seconds.	
    Then the user clicks on "Test Title 1507491160238" link.
    And The user waits for "5" Seconds.
	Then the user clicks on "Study CRF" link.
	Then The user clicks on "Add CRF" Button.
	And The user waits for "10" Seconds.
	Then The user enters without action "Instrument Name" with timestamp and saves.
	And The user waits for "10" Seconds.
	Then The user writes without action "CRF Description" with timestamp.	
	Then The user clicks on "Randomization" Button.
	
@CRFAddSurvey
Scenario: T 231.7.10 Check Enabled as Survey checkbox when Surveys are enabled through a study parameter.. Verify the CRF is available to use in the Survey screen. Print Screen
Given The user Opened the AUT.
	Then The user enters "Username".
	Then The user clicks on "SignIn" Button.
    Then The user enters "Password".
    Then The user clicks on "SignIn" Button.
    And The user waits for "30" Seconds.	
    Then the user clicks on "Test Title 1507491160238" link.
    And The user waits for "5" Seconds.
	Then the user clicks on "Study CRF" link.
	Then The user clicks on "Add CRF" Button.
	And The user waits for "10" Seconds.
	Then The user enters without action "Instrument Name" with timestamp and saves.
	And The user waits for "10" Seconds.
	Then The user writes without action "CRF Description" with timestamp.	
	Then The user clicks on "Survey" Button.
	
@CRFMobileAvailable
Scenario: T 231.7.11 Check Available on mobile checkbox. Verify the CRF is available to use in the mobile client. Print Screen.
Given The user Opened the AUT.
	Then The user enters "Username".
	Then The user clicks on "SignIn" Button.
    Then The user enters "Password".
    Then The user clicks on "SignIn" Button.
    And The user waits for "30" Seconds.	
    Then the user clicks on "Test Title 1507491160238" link.
    And The user waits for "5" Seconds.
	Then the user clicks on "Study CRF" link.
	Then The user clicks on "Add CRF" Button.
	And The user waits for "10" Seconds.
	Then The user enters without action "Instrument Name" with timestamp and saves.
	And The user waits for "10" Seconds.
	Then The user writes without action "CRF Description" with timestamp.	
	Then The user clicks on "CRF Mobile Check" Button.	
	Then The user clicks on "CRF Save" Button By Action.
	And The user waits for "5" Seconds.
	Then the user asserts html contains with "Changes Saved".

@CRFAddVariables
Scenario: T 231.8.1 Click on CRF Variables tab. Verify the screen matches spec. Print Screen.
Given The user Opened the AUT.
	Then The user enters "Username".
	Then The user clicks on "SignIn" Button.
    Then The user enters "Password".
    Then The user clicks on "SignIn" Button.
    And The user waits for "30" Seconds.	
    Then the user clicks on "Test Title 1507491160238" link.
    And The user waits for "5" Seconds.
	Then the user clicks on "Study CRF" link.
	Then The user clicks on "Add CRF" Button.
	And The user waits for "10" Seconds.
	Then The user enters without action "Instrument Name" with timestamp and saves.
	And The user waits for "10" Seconds.
	Then The user writes without action "CRF Description" with timestamp.	
	Then The user clicks on "CRF Mobile Check" Button.	
	Then The user clicks on "CRF Save" Button By Action.
	And The user waits for "5" Seconds.
	Then The user clicks on "CRF Variable Button" Button By Action.
	And The user waits for "5" Seconds.
	Then The user checks "CRF Variable Add Section" field is edible.
	
@CRFAddVariablesAddSection
Scenario: T 231.8.2 Click on Add Section button. Verify the Add / Rename Section popup form is displayed. Print Screen.
Given The user Opened the AUT.
	Then The user enters "Username".
	Then The user clicks on "SignIn" Button.
    Then The user enters "Password".
    Then The user clicks on "SignIn" Button.
    And The user waits for "30" Seconds.	
    Then the user clicks on "Test Title 1507491160238" link.
    And The user waits for "5" Seconds.
	Then the user clicks on "Study CRF" link.
	Then The user clicks on "Add CRF" Button.
	And The user waits for "10" Seconds.
	Then The user enters without action "Instrument Name" with timestamp and saves.
	And The user waits for "10" Seconds.
	Then The user writes without action "CRF Description" with timestamp.	
	Then The user clicks on "CRF Mobile Check" Button.	
	Then The user clicks on "CRF Save" Button By Action.
	And The user waits for "5" Seconds.
	Then The user clicks on "CRF Variable Button" Button By Action.
	And The user waits for "5" Seconds.
	Then The user clicks on "CRF Variable Add Section" Button.
	And The user waits for "5" Seconds.
	Then The user checks "Section Name Text Box" field is edible.	
	
@CRFAddVariableSectionRename
Scenario: T 231.8.3 Click on Rename Section button. Verify the Add / Rename Section popup form is displayed. Print Screen.
Given The user Opened the AUT.
	Then The user enters "Username".
	Then The user clicks on "SignIn" Button.
    Then The user enters "Password".
    Then The user clicks on "SignIn" Button.
    And The user waits for "30" Seconds.	
    Then the user clicks on "Test Title 1507491160238" link.
    And The user waits for "5" Seconds.
	Then the user clicks on "Study CRF" link.
	Then The user clicks on "Add CRF" Button.
	And The user waits for "10" Seconds.
	Then The user enters without action "Instrument Name" with timestamp and saves.
	And The user waits for "10" Seconds.
	Then The user writes without action "CRF Description" with timestamp.	
	Then The user clicks on "CRF Mobile Check" Button.	
	Then The user clicks on "CRF Save" Button By Action.
	And The user waits for "5" Seconds.
	Then The user clicks on "CRF Variable Button" Button By Action.
	And The user waits for "5" Seconds.
	Then The user clicks on "CRF Variable Add Section" Button.
	And The user waits for "5" Seconds.
	Then The user writes "Section Name Text Box" with timestamp;
	Then The user clicks on "CRF Section Save And Exit" Button.
	And The user waits for "5" Seconds.
	Then The user checks "CRF Rename Section" field is edible.

@CRFAddVariableDeleteSection
Scenario: T 231.8.4 Click Delete Section button. Verify the Section and it fields is deleted. Print Screen.
Given The user Opened the AUT.
	Then The user enters "Username".
	Then The user clicks on "SignIn" Button.
    Then The user enters "Password".
    Then The user clicks on "SignIn" Button.
    And The user waits for "30" Seconds.	
    Then the user clicks on "Test Title 1507491160238" link.
    And The user waits for "5" Seconds.
	Then the user clicks on "Study CRF" link.
	Then The user clicks on "Add CRF" Button.
	And The user waits for "10" Seconds.
	Then The user enters without action "Instrument Name" with timestamp and saves.
	And The user waits for "10" Seconds.
	Then The user writes without action "CRF Description" with timestamp.	
	Then The user clicks on "CRF Mobile Check" Button.	
	Then The user clicks on "CRF Save" Button By Action.
	And The user waits for "5" Seconds.
	Then The user clicks on "CRF Variable Button" Button By Action.
	And The user waits for "5" Seconds.
	Then The user clicks on "CRF Variable Add Section" Button.
	And The user waits for "5" Seconds.
	Then The user writes "Section Name Text Box" with timestamp;
	Then The user clicks on "CRF Section Save And Exit" Button.
	And The user waits for "5" Seconds.
	Then The user clicks on "CRF Delete Button" Button.
	Then The user clicks on "Yes Button" Button and asserts.	

@CRFAddVariableImportField
Scenario: T 231.8.5 Click on Import Field icon. Verify the Import Field pop-up form is displayed. Print Screen.
Given The user Opened the AUT.
	Then The user enters "Username".
	Then The user clicks on "SignIn" Button.
    Then The user enters "Password".
    Then The user clicks on "SignIn" Button.
    And The user waits for "30" Seconds.	
    Then the user clicks on "Test Title 1507491160238" link.
    And The user waits for "5" Seconds.
	Then the user clicks on "Study CRF" link.
	Then The user clicks on "Add CRF" Button.
	And The user waits for "10" Seconds.
	Then The user enters without action "Instrument Name" with timestamp and saves.
	And The user waits for "10" Seconds.
	Then The user writes without action "CRF Description" with timestamp.	
	Then The user clicks on "CRF Mobile Check" Button.	
	Then The user clicks on "CRF Save" Button By Action.
	And The user waits for "5" Seconds.
	Then The user clicks on "CRF Variable Button" Button By Action.
	And The user waits for "5" Seconds.
	Then The user clicks on "CRF Variable Add Section" Button.
	And The user waits for "5" Seconds.
	Then The user writes "Section Name Text Box" with timestamp;
	Then The user clicks on "CRF Section Save And Exit" Button.
	And The user waits for "5" Seconds.
	Then The user clicks on "CRF Variable Import Field" Button.
	And The user waits for "5" Seconds.
	Then the user asserts "Import Field Popup Text" field  with "Import Field Popup Text".
	
@CRFAddVariableAddField
Scenario: T 231.8.6 Click on Create Field icon. Verify the Create/Edit Field pop-up form is displayed. Print Screen.
Given The user Opened the AUT.
	Then The user enters "Username".
	Then The user clicks on "SignIn" Button.
    Then The user enters "Password".
    Then The user clicks on "SignIn" Button.
    And The user waits for "30" Seconds.	
    Then the user clicks on "Test Title 1507491160238" link.
    And The user waits for "5" Seconds.
	Then the user clicks on "Study CRF" link.
	Then The user clicks on "Add CRF" Button.
	And The user waits for "10" Seconds.
	Then The user enters without action "Instrument Name" with timestamp and saves.
	And The user waits for "10" Seconds.
	Then The user writes without action "CRF Description" with timestamp.	
	Then The user clicks on "CRF Mobile Check" Button.	
	Then The user clicks on "CRF Save" Button By Action.
	And The user waits for "5" Seconds.
	Then The user clicks on "CRF Variable Button" Button By Action.
	And The user waits for "5" Seconds.
	Then The user clicks on "CRF Variable Add Section" Button.
	And The user waits for "5" Seconds.
	Then The user writes "Section Name Text Box" with timestamp;
	Then The user clicks on "CRF Section Save And Exit" Button.
	And The user waits for "5" Seconds.
	Then The user clicks on "CRF Variable Add Field" Button.
	And The user waits for "5" Seconds.
	Then the user asserts "CRF Variable Add Field Popup" field with "CRF Variable Add Field Popup".	
	
@CRFAddSectionGroupFields
Scenario: T 231.8.7 Click on Add Group of Fields icon. Verify the Add Group of Fields pop-up form is displayed. Print Screen.
Given The user Opened the AUT.
	Then The user enters "Username".
	Then The user clicks on "SignIn" Button.
    Then The user enters "Password".
    Then The user clicks on "SignIn" Button.
    And The user waits for "30" Seconds.	
    Then the user clicks on "Test Title 1507491160238" link.
    And The user waits for "5" Seconds.
	Then the user clicks on "Study CRF" link.
	Then The user clicks on "Add CRF" Button.
	And The user waits for "10" Seconds.
	Then The user enters without action "Instrument Name" with timestamp and saves.
	And The user waits for "10" Seconds.
	Then The user writes without action "CRF Description" with timestamp.	
	Then The user clicks on "CRF Mobile Check" Button.	
	Then The user clicks on "CRF Save" Button By Action.
	And The user waits for "5" Seconds.
	Then The user clicks on "CRF Variable Button" Button By Action.
	And The user waits for "5" Seconds.
	Then The user clicks on "CRF Variable Add Section" Button.
	And The user waits for "5" Seconds.
	Then The user writes "Section Name Text Box" with timestamp;
	Then The user clicks on "CRF Section Save And Exit" Button.
	And The user waits for "5" Seconds.
	Then The user clicks on "Add Group of Fields" Button.
	And The user waits for "5" Seconds.
	Then the user asserts "Add Group of Fields Popup" field with "Add Group of Fields Popup".
	
@CRFAddSectionAddMatrix
Scenario: T 231.8.8 Click on Add Matrix of Fields icon. Verify the Add Matrix of Fields pop-up form is displayed. Print Screen.
Given The user Opened the AUT.
	Then The user enters "Username".
	Then The user clicks on "SignIn" Button.
    Then The user enters "Password".
    Then The user clicks on "SignIn" Button.
    And The user waits for "30" Seconds.	
    Then the user clicks on "Test Title 1507491160238" link.
    And The user waits for "5" Seconds.
	Then the user clicks on "Study CRF" link.
	Then The user clicks on "Add CRF" Button.
	And The user waits for "10" Seconds.
	Then The user enters without action "Instrument Name" with timestamp and saves.
	And The user waits for "10" Seconds.
	Then The user writes without action "CRF Description" with timestamp.	
	Then The user clicks on "CRF Mobile Check" Button.	
	Then The user clicks on "CRF Save" Button By Action.
	And The user waits for "5" Seconds.
	Then The user clicks on "CRF Variable Button" Button By Action.
	And The user waits for "5" Seconds.
	Then The user clicks on "CRF Variable Add Section" Button.
	And The user waits for "5" Seconds.
	Then The user writes "Section Name Text Box" with timestamp;
	Then The user clicks on "CRF Section Save And Exit" Button.
	And The user waits for "5" Seconds.
	Then The user clicks on	"Matrix of Fields" Button.
	And The user waits for "5" Seconds.
	Then the user asserts "Matrix of Fields Popup" field with "Matrix of Fields Popup".
	
@CRFAddMoveSection
Scenario: T 231.8.9 Click on Move Section icon. Verify the Move to Section pop-up form is displayed. Print Screen.
Given The user Opened the AUT.
	Then The user enters "Username".
	Then The user clicks on "SignIn" Button.
    Then The user enters "Password".
    Then The user clicks on "SignIn" Button.
    And The user waits for "30" Seconds.	
    Then the user clicks on "Test Title 1507491160238" link.
    And The user waits for "5" Seconds.
	Then the user clicks on "Study CRF" link.
	Then The user clicks on "Add CRF" Button.
	And The user waits for "10" Seconds.
	Then The user enters without action "Instrument Name" with timestamp and saves.
	And The user waits for "10" Seconds.
	Then The user writes without action "CRF Description" with timestamp.	
	Then The user clicks on "CRF Mobile Check" Button.	
	Then The user clicks on "CRF Save" Button By Action.
	And The user waits for "5" Seconds.
	Then The user clicks on "CRF Variable Button" Button By Action.
	And The user waits for "5" Seconds.
	Then The user clicks on "CRF Variable Add Section" Button.
	And The user waits for "5" Seconds.
	Then The user writes "Section Name Text Box" with timestamp;
	Then The user clicks on "CRF Section Save And Exit" Button.
	And The user waits for "5" Seconds.
	Then The user clicks on "CRF Variable Add Field" Button.
	And The user waits for "5" Seconds.
	Then The user clicks on "CRF Field Type Dropdown" Button.
	Then the user clicks on "CRF Field Type Textbox" link.
	Then the user switches to iframe "CRF Field CRF RichText Iframe".
	Then The user writes "CRF Field RichText Iframe Body" with timestamp.
	Then The user switches back to original frame.
	Then The user writes "Field Variable Name" with timestamp.
	Then The user clicks on "Save Field Variable" Button.
	And The user waits for "5" Seconds.
	Then The user clicks on "Move To Section" Button.
	And The user waits for "5" Seconds.
	Then The user checks "Move To Section Input" field is edible.
	
	











	
	
		

	



	
	
			
		
		
	
	
	

	
	
	
	



	
		
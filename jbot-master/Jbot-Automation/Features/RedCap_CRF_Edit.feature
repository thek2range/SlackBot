@RedCap_CRF_Edit
Feature: RedCap_CRF_Edit

@CRFEditButtonEditMode
Scenario: T 231.2.1 Click on the Edit button in CRF view mode. Verify the screen matches spec. Print Screen.
Given The user Opened the AUT.
	Then The user enters "Username".
	Then The user clicks on "SignIn" Button.
    Then The user enters "Password".
    Then The user clicks on "SignIn" Button.
    And The user waits for "30" Seconds.	
    Then the user clicks on "Test Title 1507491160238" link.
    And The user waits for "5" Seconds.
	Then the user clicks on "Study CRF" link.
	And The user waits for "15" Seconds.
	Then the user clicks on "Test CRF" link.
	Then The user clicks on "Edit CRF" Button.
	And The user waits for "10" Seconds.
	Then The user checks "Instrument Name" field is edible.

@CRFEditCreateRevisionButton
Scenario: T 231.2.2 Click Create Revisions button. Verify the Create Revision form is displayed. . Print Screen.
Given The user Opened the AUT.
	Then The user enters "Username".
	Then The user clicks on "SignIn" Button.
    Then The user enters "Password".
    Then The user clicks on "SignIn" Button.
    And The user waits for "30" Seconds.	
    Then the user clicks on "Test Title 1507491160238" link.
    And The user waits for "5" Seconds.
	Then the user clicks on "Study CRF" link.
	And The user waits for "15" Seconds.
	Then the user clicks on "Test CRF" link.
	Then The user checks "Create Revision Button" field is edible.

@CRFEditCRFDelete
Scenario: T 231.2.3 Click Delete link in the Tools menu. Verify the CRF can be deleted when there are no associated records. Print Screen.
Given The user Opened the AUT.
	Then The user enters "Username".
	Then The user clicks on "SignIn" Button.
    Then The user enters "Password".
    Then The user clicks on "SignIn" Button.
    And The user waits for "30" Seconds.	
    Then the user clicks on "Test Title 1507491160238" link.
    And The user waits for "5" Seconds.
	Then the user clicks on "Study CRF" link.
	And The user waits for "15" Seconds.
	Then The user clicks on "Add CRF" Button.
	And The user waits for "10" Seconds.
	Then The user enters "Instrument Name" with timestamp and saves.
	Then The user writes "CRF Description" with timestamp.
	Then The user waits for "10" Seconds.
	Then The user clicks on "CRF Save and Exit" Button By Action.
	And The user waits for "40" Seconds.
	Then The user selects element from file and clicks.
	Then The user clicks on "CRF Tools" Button.
	Then The user clicks  on "Delete CRF" Button.
	Then The user clicks on "Yes Button" Button.
	And The user waits for "30" Seconds.
	Then The user asserts html does not contain from file. 

@CRFEditDeleteUsedInStudy
Scenario: T 231.2.4 Click Delete link in the Tools menu for a CRF that has been used in the Studies and Save. Verify validator error message is displayed. Print Screen.
Given The user Opened the AUT.
	Then The user enters "Username".
	Then The user clicks on "SignIn" Button.
    Then The user enters "Password".
    Then The user clicks on "SignIn" Button.
    And The user waits for "30" Seconds.	
    Then the user clicks on "Test Title 1507491160238" link.
    And The user waits for "5" Seconds.
	Then the user clicks on "Study CRF" link.
	And The user waits for "10" Seconds.
	Then The user clicks on "Add CRF" Button.
	And The user waits for "10" Seconds.
	Then The user enters "Instrument Name" with timestamp and saves.
	Then The user writes "CRF Description" with timestamp.
	Then The user waits for "10" Seconds.
	Then The user clicks on "CRF Save and Exit" Button.
	And The user waits for "10" Seconds.
	Then The user clicks on "Event Definitions" Button.
	Then The user clicks on "Add Event" Button.
	Then The user writes "Event Name" with timestamp.
	Then The user clicks on "Event Save" Button.
	And The user waits for "10" Seconds.
	Then The user clicks on "Add CRF Event" Button.
	Then The user enters from file without delete with key "Instrument Name Input" presses enter.
	And The user waits for "5" Seconds.
	Then the user clicks on "Selected Instrument Name" link.
	Then The user waits for "5" Seconds.
	Then The user clicks  on "Event CRF Save and Exit" Button By Action.
	Then The user waits for "5" Seconds.
	Then the user clicks on "Study CRF" link.
	And The user waits for "15" Seconds.
	Then The user selects element from file and clicks.
	Then The user clicks on "CRF Tools" Button.
	Then The user clicks  on "Delete CRF" Button.
	Then The user clicks on "Yes Button" Button.
	And The user waits for "3" Seconds.
	Then the user asserts html contains with "CRF Delete Error".


@CRFEditAuditor
Scenario: T 231.2.5 Click on the Auditor button. Verify record level auditor information is displayed. Print Screen.
Given The user Opened the AUT.
	Then The user enters "Username".
	Then The user clicks on "SignIn" Button.
    Then The user enters "Password".
    Then The user clicks on "SignIn" Button.
    And The user waits for "30" Seconds.	
    Then the user clicks on "Test Title 1507491160238" link.
    And The user waits for "5" Seconds.
	Then the user clicks on "Study CRF" link.
	And The user waits for "15" Seconds.
	Then The user clicks on "Add CRF" Button.
	Then The user enters "Instrument Name" with timestamp and saves.
	Then The user writes "CRF Description" with timestamp.
	Then The user waits for "10" Seconds.
	Then The user clicks on "CRF Save and Exit" Button By Action.
	Then The user selects element from file and clicks.
	Then The user clicks on "CRF Tools" Button.
	Then The user clicks on "CRF Auditor" Button.
	Then The user checks text "Creation Date" contains "Creation Date".
	
@CRFEditSave	
Scenario: T 231.2.6 Click Save button. Verify the changes made to CRF data are saved. Print Screen.
Given The user Opened the AUT.
	Then The user enters "Username".
	Then The user clicks on "SignIn" Button.
    Then The user enters "Password".
    Then The user clicks on "SignIn" Button.
    And The user waits for "30" Seconds.	
    Then the user clicks on "Test Title 1507491160238" link.
    And The user waits for "5" Seconds.
	Then the user clicks on "Study CRF" link.
	And The user waits for "15" Seconds.
	Then the user clicks on "CRF Instrument Name" link.
	And The user waits for "5" Seconds.
	And The user clicks on "Edit CRF" Button.
	And The user waits for "10" Seconds.
	Then The user enters "Instrument Name" with timestamp and saves.
	Then The user waits for "10" Seconds.
	Then The user clicks on "CRF Save and Exit" Button By Action.
	And The user waits for "30" Seconds.
	Then The user asserts html contains from file.
	
@CRFditSaveExit
Scenario: T 231.2.7 Click Save and Exit button. Verify changes are made to CRF data and user is navigated to CRF list. Print Screen.
Given The user Opened the AUT.
	Then The user enters "Username".
	Then The user clicks on "SignIn" Button.
    Then The user enters "Password".
    Then The user clicks on "SignIn" Button.
    And The user waits for "30" Seconds.	
    Then the user clicks on "Test Title 1507491160238" link.
    And The user waits for "5" Seconds.
	Then the user clicks on "Study CRF" link.
	And The user waits for "15" Seconds.
	Then the user clicks on "CRF Instrument Name" link.
	And The user waits for "5" Seconds.
	And The user clicks on "Edit CRF" Button.
	And The user waits for "10" Seconds.
	Then The user enters "Instrument Name" with timestamp and saves.
	Then The user waits for "10" Seconds.
	Then The user clicks on "CRF Save and Exit" Button By Action.
	And The user waits for "30" Seconds.
	Then The user asserts html contains from file.

@CRFEditCancel
Scenario: T 231.2.8 Click Cancel button. Verify no changes are made to CRF data and user is navigated to CRF list. Print Screen.
Given The user Opened the AUT.
	Then The user enters "Username".
	Then The user clicks on "SignIn" Button.
    Then The user enters "Password".
    Then The user clicks on "SignIn" Button.
    And The user waits for "30" Seconds.	
    Then the user clicks on "Test Title 1507491160238" link.
    And The user waits for "5" Seconds.
	Then the user clicks on "Study CRF" link.
	And The user waits for "15" Seconds.
	Then the user clicks on "CRF Instrument Name" link.
	And The user clicks on "Edit CRF" Button.
	And The user waits for "10" Seconds.
	Then The user enters "Instrument Name" with timestamp and saves.
	Then The user clicks on "CRF Cancel"  Button.
	And The user waits for "30" Seconds.
	Then The user asserts html does not contain from file.

@CRFInstrumentNameMax+1
Scenario: T 231.3.1 In the Instrument Name field, change the value to max+1 characters and Save. Verify validator error message is displayed. Print Screen.
Given The user Opened the AUT.
	Then The user enters "Username".
	Then The user clicks on "SignIn" Button.
    Then The user enters "Password".
    Then The user clicks on "SignIn" Button.
    And The user waits for "30" Seconds.	
    Then the user clicks on "Test Title 1507491160238" link.
    And The user waits for "5" Seconds.
	Then the user clicks on "Study CRF" link.
	And The user waits for "15" Seconds.
	Then the user clicks on "CRF Instrument Name" link.
	And The user clicks on "Edit CRF" Button.
	And The user waits for "10" Seconds.
	Then The user enters "Instrument Name Max+1".
	Then The user waits for "10" Seconds.
	Then The user clicks on "CRF Save" Button By Action.
	And The user waits for "3" Seconds.
	Then the user asserts html contains with "ERROR INSTRUMENT NAME MAX+1".
	
@CRFInstrumentNameEmpty
Scenario: T 231.3.2 In the Instrument Name field, clear the existing value and Save. Verify validator error message is displayed. Print Screen.
Given The user Opened the AUT.
	Then The user enters "Username".
	Then The user clicks on "SignIn" Button.
    Then The user enters "Password".
    Then The user clicks on "SignIn" Button.
    And The user waits for "30" Seconds.	
    Then the user clicks on "Test Title 1507491160238" link.
    And The user waits for "5" Seconds.
	Then the user clicks on "Study CRF" link.
	And The user waits for "15" Seconds.
	Then the user clicks on "CRF Instrument Name" link.
	And The user clicks on "Edit CRF" Button.
	And The user waits for "10" Seconds.
	Then The user clears "Instrument Name" and presses enter.
	Then The user waits for "10" Seconds.
	Then The user clicks on "CRF Save" Button By Action.
	And The user waits for "3" Seconds.
	Then the user asserts html contains with "ERROR INSTRUMENT NAME MAX+1".
	
@CRFDescriptionMax+1
Scenario: T 231.3.3 In the Description field, change the value to max+1 characters and Save. Verify validator error message is displayed. Print Screen.	
Given The user Opened the AUT.
	Then The user enters "Username".
	Then The user clicks on "SignIn" Button.
    Then The user enters "Password".
    Then The user clicks on "SignIn" Button.
    And The user waits for "30" Seconds.	
    Then the user clicks on "Test Title 1507491160238" link.
    And The user waits for "5" Seconds.
	Then the user clicks on "Study CRF" link.
	And The user waits for "15" Seconds.
	Then the user clicks on "CRF Instrument Name" link.
	And The user clicks on "Edit CRF" Button.
	And The user waits for "10" Seconds.
	Then The user enters "CRF Description Max+1".
	Then The user waits for "10" Seconds.
	Then The user clicks on "CRF Save" Button By Action.
	And The user waits for "3" Seconds.
	Then the user asserts html contains with "ERROR CRF DESCRIPTION MAX+1".
	
@CRFClearDescription
Scenario: T 231.3.4 In the Description Name field, clear the existing value and Save. Verify validator error message is displayed. Print Screen.	
Given The user Opened the AUT.
	Then The user enters "Username".
	Then The user clicks on "SignIn" Button.
    Then The user enters "Password".
    Then The user clicks on "SignIn" Button.
    And The user waits for "30" Seconds.	
    Then the user clicks on "Test Title 1507491160238" link.
    And The user waits for "5" Seconds.
	Then the user clicks on "Study CRF" link.
	And The user waits for "15" Seconds.
	Then the user clicks on "CRF Instrument Name" link.
	And The user clicks on "Edit CRF" Button.
	And The user waits for "10" Seconds.
	Then The user clears "CRF Description" and presses enter.
	Then The user waits for "10" Seconds.
	Then The user clicks on "CRF Save" Button By Action.
	And The user waits for "3" Seconds.
	Then the user asserts html contains with "ERROR CRF DESCRIPTION MAX+1".
	
@CRFVersionMax
Scenario: T 231.3.5 In the Version Name field, change the value to max+1 characters and Save. Verify validator error message is displayed. Print Screen.	
Given The user Opened the AUT.
	Then The user enters "Username".
	Then The user clicks on "SignIn" Button.
    Then The user enters "Password".
    Then The user clicks on "SignIn" Button.
    And The user waits for "30" Seconds.	
    Then the user clicks on "Test Title 1507491160238" link.
    And The user waits for "5" Seconds.
	Then the user clicks on "Study CRF" link.
	And The user waits for "15" Seconds.
	Then the user clicks on "CRF Instrument Name" link.
	And The user clicks on "Edit CRF" Button.
	And The user waits for "10" Seconds.
	Then The user enters "CRF Version Max+1".
	
@CRFVersionClear
Scenario: T 231.3.6 In the Version Name field, clear the existing value and Save. Verify validator error message is displayed. Print Screen
Given The user Opened the AUT.
	Then The user enters "Username".
	Then The user clicks on "SignIn" Button.
    Then The user enters "Password".
    Then The user clicks on "SignIn" Button.
    And The user waits for "30" Seconds.	
    Then the user clicks on "Test Title 1507491160238" link.
    And The user waits for "5" Seconds.
	Then the user clicks on "Study CRF" link.
	And The user waits for "15" Seconds.
	Then the user clicks on "CRF Instrument Name" link.
	And The user clicks on "Edit CRF" Button.
	And The user waits for "10" Seconds.
	Then The user clears "CRF Version Max+1" and presses enter.
	
@CRFStatus
Scenario: T 231.3.7 Select Status value from the drop down. Verify the values are based on the spec. Print Screen.	
Given The user Opened the AUT.
	Then The user enters "Username".
	Then The user clicks on "SignIn" Button.
    Then The user enters "Password".
    Then The user clicks on "SignIn" Button.
    And The user waits for "30" Seconds.	
    Then the user clicks on "Test Title 1507491160238" link.
    And The user waits for "5" Seconds.
	Then the user clicks on "Study CRF" link.
	And The user waits for "15" Seconds.
	Then the user clicks on "CRF Instrument Name" link.
	And The user clicks on "Edit CRF" Button.
	And The user waits for "10" Seconds.
	Then The user clicks on "CRF Status Button" drop down, select result from "CRF Status List" and asserts value with "CRF Status List Data".
	
@CRFStatusInactiveNonUsable
Scenario: T 231.3.8 Select Status value of "Inactive" from the drop down. Verify the CRF cannot be used in Enroll screen or Event definitions. Print Screen.
Given The user Opened the AUT.
	Then The user enters "Username".
	Then The user clicks on "SignIn" Button.
    Then The user enters "Password".
    Then The user clicks on "SignIn" Button.
    And The user waits for "30" Seconds.	
    Then the user clicks on "Test Title 1507491160238" link.
    And The user waits for "5" Seconds.
    Then the user clicks on "Study CRF" link.
    And The user waits for "15" Seconds.
    Then the user saves content for "CRF Inactive".
    Then the user clicks on "CRF Inactive" link.
    And The user clicks on "Edit CRF" Button.
    And The user waits for "10" Seconds.
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
	
	
@CRFEnroleScreening
Scenario: T 231.3.9 Check Enroll Screening checkbox when enabled through a study parameter. Verify the CRF is available to use in the Enroll screen. Print Screen.
Given The user Opened the AUT.
	Then The user enters "Username".
	Then The user clicks on "SignIn" Button.
    Then The user enters "Password".
    Then The user clicks on "SignIn" Button.
    And The user waits for "30" Seconds.	
    Then the user clicks on "Test Title 1507491160238" link.
    And The user waits for "5" Seconds.
	Then the user clicks on "Study CRF" link.
	And The user waits for "15" Seconds.
	Then the user clicks on "CRF Instrument Name" link.
	And The user clicks on "Edit CRF" Button.
	And The user waits for "10" Seconds.
	Then The user clicks on "Enroll Screening" Button.
	
@CRFEditVersionMax+1
Scenario: T 231.3.5 In the Version Name field, change the value to max+1 characters and Save. Verify validator error message is displayed. Print Screen.
Given The user Opened the AUT.
	Then The user enters "Username".
	Then The user clicks on "SignIn" Button.
    Then The user enters "Password".
    Then The user clicks on "SignIn" Button.
    And The user waits for "30" Seconds.	
    Then the user clicks on "Test Title 1507491160238" link.
    And The user waits for "5" Seconds.
	Then the user clicks on "Study CRF" link.
	And The user waits for "15" Seconds.
	Then the user clicks on "CRF Instrument Name" link.
	Then The user clicks on "Create Revision Button" Button.
	Then The user enters "CRF Revision Version Name Max+1".
	Then The user clicks on "CRF RevisionSave And Exit" Button.
	And The user waits for "5" Seconds.
	Then the user asserts html contains with "CRF Version Name Max+1 Error".

@CRFEditVersionClear
Scenario: T 231.3.6 In the Version Name field, clear the existing value and Save. Verify validator error message is displayed. Print Screen.
Given The user Opened the AUT.
	Then The user enters "Username".
	Then The user clicks on "SignIn" Button.
    Then The user enters "Password".
    Then The user clicks on "SignIn" Button.
    And The user waits for "30" Seconds.	
    Then the user clicks on "Test Title 1507491160238" link.
    And The user waits for "5" Seconds.
	Then the user clicks on "Study CRF" link.
	And The user waits for "15" Seconds.
	Then the user clicks on "CRF Instrument Name" link.
	Then The user clicks on "Create Revision Button" Button.
	Then The user clears "CRF Revision Version Name Max+1" and presses enter.
	Then The user clicks on "CRF RevisionSave And Exit" Button.
	And The user waits for "5" Seconds.
	Then the user asserts html contains with "CRF Version Name Max+1 Error".

@CRFEditRandomization
Scenario: T 231.3.10 Check Randomization checkbox when enabled through a study parameter. Verify the CRF is available to use in the Randomization process. Print Screen.
Given The user Opened the AUT.
	Then The user enters "Username".
	Then The user clicks on "SignIn" Button.
    Then The user enters "Password".
    Then The user clicks on "SignIn" Button.
    And The user waits for "30" Seconds.	
    Then the user clicks on "Test Title 1507491160238" link.
    And The user waits for "5" Seconds.
	Then the user clicks on "Study CRF" link.
	And The user waits for "15" Seconds.
	Then the user clicks on "CRF Instrument Name" link.
	And The user clicks on "Edit CRF" Button.
	And The user waits for "10" Seconds.
	Then The user clicks on "CRF Randomization" Button.

@CRFReviewVersionOID
Scenario: T 231.3.11 Review Version OID field. Verify the value is display only. Print Screen.		
Given The user Opened the AUT.
	Then The user enters "Username".
	Then The user clicks on "SignIn" Button.
    Then The user enters "Password".
    Then The user clicks on "SignIn" Button.
    And The user waits for "30" Seconds.	
    Then the user clicks on "Test Title 1507491160238" link.
    And The user waits for "5" Seconds.
	Then the user clicks on "Study CRF" link.
	And The user waits for "15" Seconds.
	Then the user clicks on "Test CRF" link.
	Then The user clicks on "Create Revision Button" Button.
	Then The user enters "CRF Revision Version Name".
	Then The user clicks on "CRF RevisionSave And Exit" Button.
	And The user waits for "5" Seconds.
	Then The user checks "Review Version OID" field is not edible.
	
@CRFRevisionNotesMax+1
Scenario: T 231.3.12 In the Revision Notes field, change the value to max+1 characters and Save. Verify validator error message is displayed. Print Screen.
Given The user Opened the AUT.
	Then The user enters "Username".
	Then The user clicks on "SignIn" Button.
    Then The user enters "Password".
    Then The user clicks on "SignIn" Button.
    And The user waits for "30" Seconds.	
    Then the user clicks on "Test Title 1507491160238" link.
    And The user waits for "5" Seconds.
	Then the user clicks on "Study CRF" link.
	And The user waits for "15" Seconds.
	Then the user clicks on "CRF Instrument Name" link.
	Then The user clicks on "Create Revision Button" Button.
	Then The user writes "CRF Revision Version Name" with timestamp.
	Then The user enters "CRF Note Max+1".
	Then The user clicks on "CRF RevisionSave And Exit" Button.
	And The user waits for "5" Seconds.
	Then the user asserts html contains with "CRF Revision Note Max+1 Error".

@CRFRevisionDate
Scenario: T 231.3.13 In the Revision Date field, enter an invalid date (e.g. Feb 31, 2013) and Save. Verify validator error message is displayed. Print Screen.
Given The user Opened the AUT.
	Then The user enters "Username".
	Then The user clicks on "SignIn" Button.
    Then The user enters "Password".
    Then The user clicks on "SignIn" Button.
    And The user waits for "30" Seconds.	
    Then the user clicks on "Test Title 1507491160238" link.
    And The user waits for "5" Seconds.
	Then the user clicks on "Study CRF" link.
	And The user waits for "15" Seconds.
	Then the user clicks on "CRF Instrument Name" link.
	Then The user clicks on "Create Revision Button" Button.
	Then The user writes "CRF Revision Version Name" with timestamp.
	Then The user enters "CRF Revision Invalid Date".
	And The user waits for "5" Seconds.
	Then the user asserts html contains with "CRF Revision Invalid Date Error".
	
@CRFCheckSurvey	
Scenario: T 231.3.14 Check Enabled as Survey checkbox when Surveys are enabled through a study parameter. Verify the CRF is available to use in the Survey screen. Print Screen.
Given The user Opened the AUT.
	Then The user enters "Username".
	Then The user clicks on "SignIn" Button.
    Then The user enters "Password".
    Then The user clicks on "SignIn" Button.
    And The user waits for "30" Seconds.	
    Then the user clicks on "Test Title 1507491160238" link.
    And The user waits for "5" Seconds.
	Then the user clicks on "Study CRF" link.
	And The user waits for "15" Seconds.
	Then the user clicks on "CRF Instrument Name" link.
	Then The user clicks on "CRF Survey" Button.
	
@CRFEditMobile
Scenario: T 231.3.15 Check Available on mobile checkbox. Verify the CRF is available to use in the mobile client. Print Screen.
Given The user Opened the AUT.
	Then The user enters "Username".
	Then The user clicks on "SignIn" Button.
    Then The user enters "Password".
    Then The user clicks on "SignIn" Button.
    And The user waits for "30" Seconds.	
    Then the user clicks on "Test Title 1507491160238" link.
    And The user waits for "5" Seconds.
	Then the user clicks on "Study CRF" link.
	And The user waits for "15" Seconds.
	Then the user clicks on "CRF Instrument Name" link.
	Then The user clicks on "Edit CRF" Button.
	And The user waits for "10" Seconds.
	Then The user checks "CRF Mobile Check" field is edible.

@CRFEditVariableTab
Scenario: T 231.4.1 Click on CRF Variables tab. Verify the screen matches spec. Print Screen.
Given The user Opened the AUT.
	Then The user enters "Username".
	Then The user clicks on "SignIn" Button.
    Then The user enters "Password".
    Then The user clicks on "SignIn" Button.
    And The user waits for "30" Seconds.	
    Then the user clicks on "Test Title 1507491160238" link.
    And The user waits for "5" Seconds.
	Then the user clicks on "Study CRF" link.
	And The user waits for "15" Seconds.
	Then the user clicks on "CRF Instrument Name" link.
	Then The user clicks on "Edit CRF" Button.
	And The user waits for "10" Seconds.
	Then The user clicks on "CRF Variable Button" Button By Action.
	And The user waits for "5" Seconds.
	Then The user checks "CRF Variable Add Section" field is edible.

@CRFEditVariableAddSection
Scenario: T 231.4.2 Click on Add Section button. Verify the Add / Rename Section popup form is displayed. Print Screen.
Given The user Opened the AUT.
	Then The user enters "Username".
	Then The user clicks on "SignIn" Button.
    Then The user enters "Password".
    Then The user clicks on "SignIn" Button.
    And The user waits for "30" Seconds.	
    Then the user clicks on "Test Title 1507491160238" link.
    And The user waits for "5" Seconds.
	Then the user clicks on "Study CRF" link.
	And The user waits for "15" Seconds.
	Then the user clicks on "CRF Instrument Name" link.
	And The user waits for "5" Seconds.
	Then The user clicks on "Edit CRF" Button.
	And The user waits for "5" Seconds.
	Then The user clicks on "CRF Variable Button" Button By Action.	
	And The user waits for "5" Seconds.
	Then The user clicks on "CRF Variable Add Section" Button.
	And The user waits for "5" Seconds.
	Then The user checks "Section Name Text Box" field is edible.	

@CRFEditVariableRenameSection
Scenario: T 231.4.3 Click on Rename Section button. Verify the Add / Rename Section popup form is displayed. Print Screen.
Given The user Opened the AUT.
	Then The user enters "Username".
	Then The user clicks on "SignIn" Button.
    Then The user enters "Password".
    Then The user clicks on "SignIn" Button.
    And The user waits for "30" Seconds.	
    Then the user clicks on "Test Title 1507491160238" link.
    And The user waits for "5" Seconds.
	Then the user clicks on "Study CRF" link.
	And The user waits for "15" Seconds.
	Then the user clicks on "CRF Instrument Name" link.
	And The user waits for "5" Seconds.
	Then The user clicks on "Edit CRF" Button.
	And The user waits for "10" Seconds.
	Then The user clicks on "CRF Variable Button" Button.	
	And The user waits for "5" Seconds.
	Then The user clicks on "CRF Variable Add Section" Button.
	And The user waits for "5" Seconds.
	Then The user writes "Section Name Text Box" with timestamp;
	Then The user clicks on "CRF Section Save And Exit" Button.
	And The user waits for "5" Seconds.
	Then The user checks "CRF Rename Section" field is edible.

@CRFEditVariableSectionDelete
Scenario: T 231.4.4 Click Delete Section button. Verify the Section and it fields when there are no associated records. Print Screen.
Given The user Opened the AUT.
	Then The user enters "Username".
	Then The user clicks on "SignIn" Button.
    Then The user enters "Password".
    Then The user clicks on "SignIn" Button.
    And The user waits for "30" Seconds.	
    Then the user clicks on "Test Title 1507491160238" link.
    And The user waits for "5" Seconds.
	Then the user clicks on "Study CRF" link.
	And The user waits for "15" Seconds.
	Then the user clicks on "CRF Instrument Name" link.
	And The user waits for "5" Seconds.
	Then The user clicks on "Edit CRF" Button.
	And The user waits for "10" Seconds.
	Then The user clicks on "CRF Variable Button" Button.	
	And The user waits for "5" Seconds.
	Then The user clicks on "CRF Variable Add Section" Button.
	And The user waits for "5" Seconds.
	Then The user writes "Section Name Text Box" with timestamp;
	Then The user clicks on "CRF Section Save And Exit" Button.
	And The user waits for "5" Seconds.
	Then The user clicks on "CRF Delete Button" Button.
	Then The user clicks on "Yes Button" Button and asserts.	
	
@CRFDeleteSectionUsedInStudy
Scenario: T 231.4.5 Click Delete Section for a CRF that has been used in the Studies and Save. Verify validator error message is displayed. Print Screen.
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
	And The user waits for "10" Seconds.
	Then The user clicks on "CRF Variable Button" Button.	
	And The user waits for "5" Seconds.
	Then The user clicks on "CRF Variable Add Section" Button.
	And The user waits for "5" Seconds.
	Then The user writes "Section Name Text Box" with timestamp;
	Then The user clicks on "CRF Section Save And Exit" Button.
	And The user waits for "5" Seconds.
	Then The user clicks on "Event Definitions" Button.
	Then The user clicks on "Add Event" Button.
	And The user waits for "10" Seconds.
	Then The user writes "Event Name" with timestamp.
	And The user waits for "10" Seconds.
	Then The user clicks on "Event Save" Button.
	Then The user clicks on "Add CRF Event" Button.
	Then The user enters from file without delete with key "Instrument Name Input" presses enter.
	And The user waits for "5" Seconds.
	Then the user clicks on "Selected Instrument Name" link.
	Then The user waits for "5" Seconds.
	Then The user clicks on "Event CRF Save and Exit" Button By Action.
	Then The user waits for "5" Seconds.
	Then the user clicks on "Study CRF" link.
	And The user waits for "15" Seconds.
	Then The user selects element from file and clicks.
	And The user waits for "10" Seconds.
	Then The user clicks on "Edit CRF" Button.
	And The user waits for "10" Seconds.
	Then The user clicks on "CRF Variable Button" Button.
	Then The user clicks on "CRF Delete Button" Button.
	Then The user clicks on "Yes Button" Button.
	Then the user asserts html contains with "CRF Delete Error".

@CRFEditImportFieldPopup
Scenario: T 231.4.6 Click on Import Field icon. Verify the Import Field pop-up form is displayed. Print Screen.
Given The user Opened the AUT.
	Then The user enters "Username".
	Then The user clicks on "SignIn" Button.
    Then The user enters "Password".
    Then The user clicks on "SignIn" Button.
    And The user waits for "30" Seconds.	
    Then the user clicks on "Test Title 1507491160238" link.
    And The user waits for "5" Seconds.
	Then the user clicks on "Study CRF" link.
	Then the user clicks on "CRF Instrument Name" link.
	Then The user clicks on "Edit CRF" Button.
	And The user waits for "5" Seconds.
	Then The user clicks on "CRF Variable Button" Button By Action.
	And The user waits for "5" Seconds.
	Then The user clicks on "CRF Variable Add Section" Button.
	Then The user writes "CRF Variable Add Section" with timestamp.
	Then The user clicks on "CRF Variable Save And Exit" Button.
	And The user waits for "5" Seconds.
	Then The user clicks on "CRF Variable Import Field" Button.
	And The user waits for "5" Seconds.
	Then the user asserts "Import Field Popup Text" field  with "Import Field Popup Text".

	
@CRFEditCreateFieldPopup
Scenario: T 231.4.7 Click on Create Field icon. Verify the Create/Edit Field pop-up form is displayed. Print Screen.
Given The user Opened the AUT.
	Then The user enters "Username".
	Then The user clicks on "SignIn" Button.
    Then The user enters "Password".
    Then The user clicks on "SignIn" Button.
    And The user waits for "30" Seconds.	
    Then the user clicks on "Test Title 1507491160238" link.
    And The user waits for "5" Seconds.
	Then the user clicks on "Study CRF" link.
	And The user waits for "5" Seconds.
	Then the user clicks on "CRF Instrument Name" link.
	Then The user clicks on "Edit CRF" Button.
	And The user waits for "5" Seconds.
	Then The user clicks on "CRF Variable Button" Button By Action.
	And The user waits for "5" Seconds.
	Then The user clicks on "CRF Variable Add Section" Button.
	Then The user writes "CRF Variable Add Section" with timestamp.
	Then The user clicks on "CRF Variable Save And Exit" Button.
	And The user waits for "5" Seconds.
	Then The user clicks on "CRF Variable Add Field" Button.
	And The user waits for "5" Seconds.
	Then the user asserts "CRF Variable Add Field Popup" field with "CRF Variable Add Field Popup".	
	
	
@CRFEditAddGroupField
Scenario: T 231.4.8 Click on Add Group of Fields icon. Verify the Add Group of Fields pop-up form is displayed. Print Screen.
Given The user Opened the AUT.
	Then The user enters "Username".
	Then The user clicks on "SignIn" Button.
    Then The user enters "Password".
    Then The user clicks on "SignIn" Button.
    And The user waits for "30" Seconds.	
    Then the user clicks on "Test Title 1507491160238" link.
    And The user waits for "5" Seconds.
	Then the user clicks on "Study CRF" link.
	And The user waits for "5" Seconds.
	Then the user clicks on "CRF Instrument Name" link.
	Then The user clicks on "Edit CRF" Button.
	And The user waits for "5" Seconds.
	Then The user clicks on "CRF Variable Button" Button By Action.
	And The user waits for "5" Seconds.
	Then The user clicks on "CRF Variable Add Section" Button.
	Then The user writes "CRF Variable Add Section" with timestamp.
	Then The user clicks on "CRF Variable Save And Exit" Button.
	And The user waits for "5" Seconds.
	Then The user clicks on "Add Group of Fields" Button.
	And The user waits for "5" Seconds.
	Then the user asserts "Add Group of Fields Popup" field with "Add Group of Fields Popup".
	
@CRFEditAddMatrix
Scenario: T 231.4.9 Click on Add Matrix of Fields icon. Verify the Add Matrix of Fields pop-up form is displayed. Print Screen.
Given The user Opened the AUT.
	Then The user enters "Username".
	Then The user clicks on "SignIn" Button.
    Then The user enters "Password".
    Then The user clicks on "SignIn" Button.
    And The user waits for "30" Seconds.	
    Then the user clicks on "Test Title 1507491160238" link.
    And The user waits for "5" Seconds.
	Then the user clicks on "Study CRF" link.
	And The user waits for "5" Seconds.
	Then the user clicks on "CRF Instrument Name" link.
	Then The user clicks on "Edit CRF" Button.
	And The user waits for "5" Seconds.
	Then The user clicks on "CRF Variable Button" Button By Action.
	And The user waits for "5" Seconds.
	Then The user clicks on "CRF Variable Add Section" Button.
	Then The user writes "CRF Variable Add Section" with timestamp.
	Then The user clicks on "CRF Variable Save And Exit" Button.
	And The user waits for "5" Seconds.
	Then The user clicks on	"Matrix of Fields" Button.
	And The user waits for "5" Seconds.
	Then the user asserts "Matrix of Fields Popup" field with "Matrix of Fields Popup".
	
@CRFEditMoveSection
Scenario: T 231.4.10 Click on Move Section icon. Verify the Move to Section pop-up form is displayed. Print Screen.
Given The user Opened the AUT.
	Then The user enters "Username".
	Then The user clicks on "SignIn" Button.
    Then The user enters "Password".
    Then The user clicks on "SignIn" Button.
    And The user waits for "30" Seconds.	
    Then the user clicks on "Test Title 1507491160238" link.
    And The user waits for "5" Seconds.
	Then the user clicks on "Study CRF" link.
	And The user waits for "5" Seconds.
	Then the user clicks on "CRF Instrument Name" link.
	Then The user clicks on "Edit CRF" Button.
	And The user waits for "5" Seconds.
	Then The user clicks on "CRF Variable Button" Button By Action.
	And The user waits for "5" Seconds.
	Then The user clicks on "CRF Variable Add Se	ction" Button.
	Then The user writes "CRF Variable Add Section" with timestamp.
	Then The user clicks on "CRF Variable Save And Exit" Button.
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
	
	

	
	
	


	
	
	
	





	
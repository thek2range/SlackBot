@RedCapCRFView
Feature: RedCapCRFView

@CRFNavigateEdit
Scenario: T 231.1.1 Click on an Instrument Name in the list. Verify User is navigated to the Add/Edit CRF screen in Edit mode. Print Screen.
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
	And The user waits for "5" Seconds.
	Then The user clicks on "Edit CRF" Button.
	Then The user checks "Instrument Name" field is edible.

@CRFViewCreateRevision
Scenario: T 231.1.2 Click Create Revisions button. Verify the Create Revision form is displayed. Print Screen.
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
	And The user waits for "10" Seconds.
	Then The user clicks on "Create Revision Button" Button.
	And The user waits for "10" Seconds.
	Then The user checks "Create Revision Description" field is edible.

@CRFViewDelete
Scenario: T 231.1.3 Click Delete link in the Tools menu. Verify the CRF can be deleted when there are no associated records. Print Screen.
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
	Then The user clicks on "CRF Save and Exit" Button By Action.
	And The user waits for "40" Seconds.
	Then The user selects element from file and clicks.
	Then The user clicks on "CRF Tools" Button.	
	Then The user clicks  on "Delete CRF" Button.
	Then The user clicks on "Yes Button" Button.
	And The user waits for "30" Seconds.
	Then The user asserts html does not contain from file.
	
@CRFViewDeleteUsedCRF
Scenario: T 231.1.4 Click Delete link in the Tools menu for a CRF that has been used in the Studies and Save. Verify validator error message is displayed. Print Screen.
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
	Then The user clicks on "CRF Save and Exit" Button By Action.
	And The user waits for "40" Seconds.
	Then The user clicks on "Event Definitions" Button.
	And The user waits for "10" Seconds.
	Then The user clicks on "Add Event" Button.
	Then The user writes "Event Name" with timestamp.
	Then The user clicks on "Event Save" Button.
	And The user waits for "10" Seconds.
	Then The user clicks on "Add CRF Event" Button.
	And The user waits for "10" Seconds.
	Then The user enters from file without delete with key "Instrument Name Input" presses enter.
	And The user waits for "5" Seconds.
	Then the user clicks on "Selected Instrument Name" link.
	Then The user waits for "5" Seconds.
	Then The user clicks  on "Event CRF Save and Exit" Button By Action.
	Then The user waits for "5" Seconds.
	Then the user clicks on "Study CRF" link.
	And The user waits for "15" Seconds.
	Then The user selects element from file and clicks.
	And The user waits for "10" Seconds.
	Then The user clicks on "CRF Tools" Button.
	Then The user clicks  on "Delete CRF" Button.
	Then The user clicks on "Yes Button" Button.
	And The user waits for "10" Seconds.
	Then the user asserts html contains with "CRF Delete Error".
	
@CRFViewAudit
Scenario: T 231.1.5 Click on the Auditor button. Verify record level auditor information is displayed. Print Screen.
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
	Then The user clicks on "CRF Save and Exit" Button By Action.
	And The user waits for "40" Seconds.
	Then The user clicks on "Subjects" Button.
	Then The user clicks on "Study Audit Log" Button.
	Then The user asserts html contains from file.
	
@CRFViewSave	
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
	And The user clicks on "Edit CRF" Button.
	Then The user enters "Instrument Name" with timestamp and saves.
	Then The user clicks on "CRF Save and Exit" Button By Action.
	And The user waits for "30" Seconds.
	Then The user asserts html contains from file.

@CRFViewSaveExit
Scenario: T 231.2.7 Click Save and Exit button. Verify changes are made to CRF data and user is navigated to CRF list. Print Screen
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
	Then The user enters "Instrument Name" with timestamp and saves.
	Then The user clicks on "CRF Save and Exit" Button By Action.
	And The user waits for "30" Seconds.
	Then The user asserts html contains from file.

@CRFViewCancel
Scenario: T 231.1.7 Click Cancel button. Verify no changes are made to CRF data and user is navigated to CRF list. Print Screen.

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
	Then The user enters "Instrument Name" with timestamp and saves.
	Then The user clicks on "CRF Cancel"  Button.
	And The user waits for "30" Seconds.
	Then The user asserts html does not contain from file.
	
@CRFViewEdit
Scenario: T 231.1.6 Click on the Edit button. Verify the screen matches spec. Print Screen.
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

@CRFViewInstrumentationTab
Scenario: T 231.1.8 Review the fields in the Instrument Definition tab. Verify the fields are display only. Print Screen.
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
	And The user waits for "10" Seconds.
	Then The user checks "Instrument Name View" field is not edible.
	
@CRFViewVariables
Scenario: T 231.1.9 Click on the CRF Variables tab. Verify the fields are display only. Print Screen
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
	Then The user clicks on "CRF Variable Button" Button.
	And The user waits for "10" Seconds.
	Then The user checks "CRF Variable Move" field is not edible.
	
@CRFViewResponseValues
Scenario: T 231.1.10 Click on the Response Sets tab. Verify the fields are display only. Print Screen.
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
	Then The user clicks on	"CRF Response Tab" Button.
	Then The user checks "CRF Response Set Add" field is not edible.






















































	
	
	
	
	
	
	


	

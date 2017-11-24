@All
@RedCapStatus_Response
Feature: RedCap Status Response Testing

@VerifyStatusResponseScreen
Scenario: T 206.1.1 Click the Setups -> Response Sets link. Verify the screen matches spec. Print Screen.
Given The user Opened the AUT.
	Then The user enters "Username".
	Then The user clicks on "SignIn" Button.
    Then The user enters "Password".
    Then The user clicks on "SignIn" Button.
    And The user waits for "30" Seconds.	
    Then The user clicks on "SETUPS" Button.
	Then the user clicks on "Response Sets" link.
	Then the user asserts value of "Response Sets Text" with "Response Sets".
	
@VerifyStatusResponseSearch
Scenario: T 206.1.2 In the Search by Name filter, enter a name of a Response Set, and enter. Verify the Response Sets screen displays the Response Set record. Print Screen.
Given The user Opened the AUT.
	Then The user enters "Username".
	Then The user clicks on "SignIn" Button.
    Then The user enters "Password".
    Then The user clicks on "SignIn" Button.
    And The user waits for "30" Seconds.	
    Then The user clicks on "SETUPS" Button.    
	Then the user clicks on "Response Sets" link.
	And The user waits for "30" Seconds.
	Then The user enters "Response Search text" and presses enter.
	And The user waits for "5" Seconds.
	Then The user matches "Response Sets Table" table contains rows matching with "Response Text Table Footer".
	
@VerifyStatusResponseSearchRandomText
Scenario: T 206.1.3 In the Search by Name filter, enter a random characters, and enter. Verify the Response Sets screen does not display any records. Print Screen.
Given The user Opened the AUT.
	Then The user enters "Username".
	Then The user clicks on "SignIn" Button.
    Then The user enters "Password".
    Then The user clicks on "SignIn" Button.
    And The user waits for "30" Seconds.	
    Then The user clicks on "SETUPS" Button.
	Then the user clicks on "Response Sets" link.
	And The user waits for "30" Seconds.
	Then The user enters "Response Search Random text" and presses enter.
	And The user waits for "5" Seconds.
	Then the user asserts value of "Response Sets Table" Table is empty.

@VerifyStatusResponseEmptySearch
Scenario: T 206.1.4 In the Search by Name filter, clear the search field, and enter. Verify the Response Sets screen displays all records. Print Screen.
Given The user Opened the AUT.
	Then The user enters "Username".
	Then The user clicks on "SignIn" Button.
    Then The user enters "Password".
    Then The user clicks on "SignIn" Button.
    And The user waits for "30" Seconds.	
    Then The user clicks on "SETUPS" Button.
	Then the user clicks on "Response Sets" link.
	And The user waits for "30" Seconds.
	Then The user enters "Response Search text" and presses enter.
	Then The user clears "Response Search text" and presses enter.
	And The user waits for "5" Seconds.
	Then The user matches "Response Sets Table" table contains rows matching with "Response Search Row Count".
	
@VerifyStatusResponseAdd
Scenario: T 206.1.5 Click on the Add button. Verify Add/Edit Response Set pop-up screen is displayed in Add mode. Print Screen.
Given The user Opened the AUT.
	Then The user enters "Username".
	Then The user clicks on "SignIn" Button.
    Then The user enters "Password".
    Then The user clicks on "SignIn" Button.
    And The user waits for "30" Seconds.	
    Then The user clicks on "SETUPS" Button.
	Then the user clicks on "Response Sets" link.
	And The user waits for "30" Seconds.
	Then The user clicks on "Response Add" Button.
	And The user waits for "5" Seconds.
	Then The user checks "Response Name Text" field is edible.

@VerifyStatusResponseEditMode
Scenario: T 206.1.7 Click on the Name in the list. Verify the Add/Edit Response Set pop-up screen is displayed in Edit mode. Print Screen.	
Given The user Opened the AUT.
	Then The user enters "Username".
	Then The user clicks on "SignIn" Button.
    Then The user enters "Password".
    Then The user clicks on "SignIn" Button.
    And The user waits for "30" Seconds.	
    Then The user clicks on "SETUPS" Button.
	Then the user clicks on "Response Sets" link.
	And The user waits for "10" Seconds.
	Then the user clicks on "Response Set Name" link.
	And The user waits for "5" Seconds.
	Then The user checks "Response Name Text" field is edible.
	
@VerifyStatusResponseDelete
Scenario: T 206.1.8 Click on the Delete icon. Verify the Response Set is deleted when the Response Set is not used in a Study. Print Screen.
Given The user Opened the AUT.
	Then The user enters "Username".
	Then The user clicks on "SignIn" Button.
    Then The user enters "Password".
    Then The user clicks on "SignIn" Button.
    And The user waits for "30" Seconds.	
    Then The user clicks on "SETUPS" Button.
    Then the user clicks on "Response Sets" link.
    Then the user clicks on "Response Set Name" link.
    And The user waits for "10" Seconds.
	Then the user saves content for "Response Set Name".
	And The user waits for "2" Seconds.
	Then The user clicks on "Response Name Text" Button.
	Then The user clicks on "Response Cancel" Button.
	And The user waits for "5" Seconds.
	Then the user clicks on "Response Delete" link.
	Then The user clicks on "Yes Button" Button.
	Then The user checks all rows of "Response Sets Table" table not contains from file.
	
@VerifyStatusResponseDeleteAudit
Scenario: T 206.1.10 In the Setups->Audit Logs review Audit trail. Verify the deleted Response Set is deleted. Print Screen.
Then The user enters "Username".
	Then The user clicks on "SignIn" Button.
    Then The user enters "Password".
    Then The user clicks on "SignIn" Button.
    And The user waits for "30" Seconds.	
    Then The user clicks on "SETUPS" Button.
    Then the user clicks on "Response Sets" link.
    Then the user clicks on "Response Set Name" link.
    And The user waits for "10" Seconds.
	Then the user saves content for "Response Set Name".
	And The user waits for "2" Seconds.
	Then The user clicks on "Response Name Text" Button.
	Then The user clicks on "Response Cancel" Button.
	And The user waits for "5" Seconds.
	Then the user clicks on "Response Delete" link.
	Then The user clicks on "Yes Button" Button.
		Then The user clicks on "Audit Logs" Button.
	And The user waits for "5" Seconds.
	Then the user matches table "Audit Log Table" to check "RS Deleted" values are present from file.

@VerifyStatusResponseEdit
Scenario: T 207.1.1 Click on the Name list in Setups->Response Sets screen. Verify the screen matches spec. Print Screen.
Given The user Opened the AUT.
	Then The user enters "Username".
	Then The user clicks on "SignIn" Button.
    Then The user enters "Password".
    Then The user clicks on "SignIn" Button.
    And The user waits for "30" Seconds.	
    Then The user clicks on "SETUPS" Button.
	Then the user clicks on "Response Sets" link.
	And The user waits for "10" Seconds.
	Then the user clicks on "Response Set Name" link.
	And The user waits for "5" Seconds.
	Then The user checks "Response Name Text" field is edible.

@VerifyStatusResponseSave
Scenario: T 207.1.2 Click Save button. Verify the changes made to Response Set data are saved. Print Screen.
Given The user Opened the AUT.
	Then The user enters "Username".
	Then The user clicks on "SignIn" Button.
    Then The user enters "Password".
    Then The user clicks on "SignIn" Button.
    And The user waits for "30" Seconds.	
    Then The user clicks on "SETUPS" Button.
	Then the user clicks on "Response Sets" link.
	And The user waits for "10" Seconds.
	Then the user clicks on "Response Set Name" link.
	And The user waits for "5" Seconds.
	Then The user enters "Response Name Text" with timestamp and saves.
	And The user waits for "5" Seconds.
	Then The user clicks on "Save Response Button" Button.	
	And The user waits for "3" Seconds.
	Then the user asserts value of "Changes Saved" with "Changes Saved".
	Then The user deletes temporary file.

@VerifyStatusResponseSaveExit
Scenario: T 207.1.3 Click Save and Exit button. Verify the changes made to Response Sets data are saved and the pop-up form screen is closed. Print Screen.
Given The user Opened the AUT.
	Then The user enters "Username".
	Then The user clicks on "SignIn" Button.
    Then The user enters "Password".
    Then The user clicks on "SignIn" Button.
    And The user waits for "30" Seconds.	
    Then The user clicks on "SETUPS" Button.
	Then the user clicks on "Response Sets" link.
	And The user waits for "10" Seconds.
	Then the user clicks on "Response Set Name" link.
	And The user waits for "5" Seconds.
	Then The user enters "Response Name Text" with timestamp and saves.
	Then The user clicks on "Save Response And Exit Button" Button.
	Then The user deletes temporary file.
	Then the user asserts value of "Changes Saved" with "Changes Saved".
	Then The user checks "Response Name Text" field is not edible.

@VerifyStatusResponseCancel
Scenario: T 207.1.4 Click Cancel button. Verify no changes are made to Response Set data and the pop-up form screen is closed. Print Screen.
Given The user Opened the AUT.
	Then The user enters "Username".
	Then The user clicks on "SignIn" Button.
    Then The user enters "Password".
    Then The user clicks on "SignIn" Button.
    And The user waits for "30" Seconds.	
    Then The user clicks on "SETUPS" Button.
	Then the user clicks on "Response Sets" link.
	And The user waits for "10" Seconds.
	Then the user clicks on "Response Set Name" link.
	And The user waits for "5" Seconds.
	Then The user clicks on "Response Cancel" Button.
	Then The user checks "Response Name Text" field is not edible.
	
@VerifySiteResponseNameMax+1
Scenario: T 207.2.5 In the Name field, enter a Response Set name with max+1 characters and Save. Verify validator error message is displayed. Print Screen.
Given The user Opened the AUT.
	Then The user enters "Username".
	Then The user clicks on "SignIn" Button.
    Then The user enters "Password".
    Then The user clicks on "SignIn" Button.
    And The user waits for "30" Seconds.	
    Then The user clicks on "SETUPS" Button.
	Then the user clicks on "Response Sets" link.
	And The user waits for "10" Seconds.
	Then the user clicks on "Response Set Name" link.
	And The user waits for "5" Seconds.
	Then The user enters "Response Name Text Max+1".
	Then The user clicks on "Save Response Button" Button.
	And The user waits for "3" Seconds.
	Then the user asserts html contains with "Response Name Error Max+1".
	
@VerifySiteResponseNameEmpty
Scenario: T 207.2.6 In the Name field, do not enter any Response Set name and Save. Verify validator error message is displayed. Print Screen.
Given The user Opened the AUT.
	Then The user enters "Username".
	Then The user clicks on "SignIn" Button.
    Then The user enters "Password".
    Then The user clicks on "SignIn" Button.
    And The user waits for "30" Seconds.	
    Then The user clicks on "SETUPS" Button.
	Then the user clicks on "Response Sets" link.
	And The user waits for "10" Seconds.
	Then the user clicks on "Response Set Name" link.
	And The user waits for "5" Seconds.
	Then The user enters "Response Name Empty".	
	Then The user clicks on "Save Response Button" Button.
	And The user waits for "3" Seconds.
	Then the user asserts html contains with "Response Name Error Max+1".
	
@VerifySiteDuplicateResponseName
Scenario: T 207.2.7 In the Name field, enter an existing Response Set name characters and Save. Verify validator error message is displayed. Print Screen.
Given The user Opened the AUT.
	Then The user enters "Username".
	Then The user clicks on "SignIn" Button.
    Then The user enters "Password".
    Then The user clicks on "SignIn" Button.
    And The user waits for "30" Seconds.	
    Then The user clicks on "SETUPS" Button.
	Then the user clicks on "Response Sets" link.
	And The user waits for "3" Seconds.
	Then the user saves content for "Next Response Name Text".
	Then the user clicks on "Response Set Name" link.
	Then The user enters "Response Name Text" from File.
	Then The user clicks on "Save Response Button" Button.
	And The user waits for "3" Seconds.
	Then the user asserts html contains with "Response Name Duplicate Error".

@VerifyResponseSetAddButtonDisplayed
Scenario: T 207.2.8 In the Name field, enter a Response Set and Save. Verify Add button to add Response Set Values is displayed. Print Screen.
Given The user Opened the AUT.
	Then The user enters "Username".
	Then The user clicks on "SignIn" Button.
    Then The user enters "Password".
    Then The user clicks on "SignIn" Button.
    And The user waits for "30" Seconds.	
    Then The user clicks on "SETUPS" Button.
    Then the user clicks on "Response Sets" link.
	Then The user clicks on "Response Add" Button.
	And The user waits for "3" Seconds.
	Then The user writes "Response Name Text" with timestamp.
	Then The user clicks on "Save Response Button" Button.
	And The user waits for "3" Seconds.
	Then the "Response Set Add Value" Button is asserted to be clickable.
	
@VerifyResponseValueEdit
Scenario: T 207.1.9 Click Edit icon in the Response Set Values list. Verify Response Set Value pop-up form is displayed. Print Screen.
Given The user Opened the AUT.
	Then The user enters "Username".
	Then The user clicks on "SignIn" Button.
    Then The user enters "Password".
    Then The user clicks on "SignIn" Button.
    And The user waits for "30" Seconds.	
    Then The user clicks on "SETUPS" Button.
	Then the user clicks on "Response Sets" link.
	And The user waits for "3" Seconds.
	Then the user clicks on "Response Set Name" link.
	Then The user clicks on "Response Set Value Edit" Button.
	Then The user checks "Response Set Value" field is edible.
	
@VerifyResponseSetValueDelete
Scenario: T 207.1.10 Click on the Delete icon in the Response Set Values list. Verify the Response Set Value is deleted when the Response Set Value is not used in a Study. Print Screen.
Given The user Opened the AUT.
	Then The user enters "Username".
	Then The user clicks on "SignIn" Button.
    Then The user enters "Password".
    Then The user clicks on "SignIn" Button.
    And The user waits for "30" Seconds.	
    Then The user clicks on "SETUPS" Button.	
    Then the user clicks on "Response Sets" link.
	Then the user clicks on "Response Set Name" link.
	And The user waits for "3" Seconds.
	Then The user clicks on "Response Set Value Delete" Button.
	Then The user clicks on "Response Value Confirm" Button and asserts.
	
@VerifyResponseSetValueUsedInStudy
Scenario: T 207.1.11 Click Delete button on a Response Set Value that has been used in the Studies. Verify validator error message is displayed upon Save. Print Screen.
Given The user Opened the AUT.
	Then The user enters "Username".
	Then The user clicks on "SignIn" Button.
    Then The user enters "Password".
    Then The user clicks on "SignIn" Button.
    And The user waits for "30" Seconds.	
    Then The user clicks on "SETUPS" Button.
    Then the user clicks on "Response Sets" link.
	And The user waits for "3" Seconds.
	Then The user clicks on "Response Set Value Delete" Button.
	Then The user clicks on "Response Value Confirm" Button.

@VerifyAuditDeletedResponseSet
Scenario: T 207.1.12 In the Setups->Audit Logs review Audit trail. Verify the deleted Response Set Value is recorded. Print Screen.
Given The user Opened the AUT.
	Then The user enters "Username".
	Then The user clicks on "SignIn" Button.
    Then The user enters "Password".
    Then The user clicks on "SignIn" Button.
    And The user waits for "30" Seconds.	
    Then The user clicks on "SETUPS" Button.		
    Then the user clicks on "Response Sets" link.
	Then The user clicks on "Response Add" Button.
	Then The user enters "Response Name Text" with timestamp and saves.
	Then The user clicks on "Save Response And Exit Button" Button.
	Then The user waits for "10" Seconds.
	Then The user enters from file with key "Response Search text" presses enter.
	And The user waits for "5" Seconds.
	Then the user clicks on "Response Delete Search" link.
	Then The user waits for "10" Seconds.	
	Then The user clicks on "Yes Button" Button.
	Then The user clicks on "Audit Logs" Button.
	Then The user waits for "10" Seconds.
	Then the user matches table "Audit Log Table" to check "RS Deleted" values are present from file.

@VerifyResponseSetAddButton
Scenario: T 207.2.1 Click Add button in the Setups->Response Sets screen. Verify the screen matches spec. Print Screen.
Given The user Opened the AUT.
	Then The user enters "Username".
	Then The user clicks on "SignIn" Button.
    Then The user enters "Password".
    Then The user clicks on "SignIn" Button.
    And The user waits for "30" Seconds.	
    Then The user clicks on "SETUPS" Button.
    Then the user clicks on "Response Sets" link.		
	Then The user clicks on "Response Add" Button.
	And The user waits for "5" Seconds.
	Then The user checks "Response Name Text" field is edible.
	
@VerifyResponseSetAdd
Scenario: T 207.2.2 Click Save button. Verify the changes made to Response Set data are saved. Print Screen.
Given The user Opened the AUT.
	Then The user enters "Username".
	Then The user clicks on "SignIn" Button.
    Then The user enters "Password".
    Then The user clicks on "SignIn" Button.
    And The user waits for "30" Seconds.	
    Then The user clicks on "SETUPS" Button.
	Then the user clicks on "Response Sets" link.
	Then The user clicks on "Response Add" Button.
	And The user waits for "5" Seconds.
	Then The user enters "Response Name Text" with timestamp and saves.
	Then The user clicks on "Save Response Button" Button.
	Then The user deletes temporary file.
	Then the user asserts value of "Changes Saved" with "Changes Saved".
	
@VerifyStatusResponseAddSaveExit	
Scenario: T 207.1.3 Click Save and Exit button. Verify the changes made to Response Sets data are saved and the pop-up form screen is closed. Print Screen.
Given The user Opened the AUT.
	Then The user enters "Username".
	Then The user clicks on "SignIn" Button.
    Then The user enters "Password".
    Then The user clicks on "SignIn" Button.
    And The user waits for "30" Seconds.	
    Then The user clicks on "SETUPS" Button.
	Then the user clicks on "Response Sets" link.
	Then The user clicks on "Response Add" Button.
	And The user waits for "5" Seconds.
	Then The user enters "Response Name Text" with timestamp and saves.
	Then The user clicks on "Save Response And Exit Button" Button.
	Then The user deletes temporary file.
	Then the user asserts value of "Changes Saved" with "Changes Saved".
	Then The user checks "Response Name Text" field is not edible.

@VerifyResponseSetAddCancel
Scenario: T 207.2.4 Click Cancel button. Verify no changes are made to Response Sets data and the pop-up form screen is closed. Print Screen.
Given The user Opened the AUT.
	Then The user enters "Username".
	Then The user clicks on "SignIn" Button.
    Then The user enters "Password".
    Then The user clicks on "SignIn" Button.
    And The user waits for "30" Seconds.	
    Then The user clicks on "SETUPS" Button.
	Then the user clicks on "Response Sets" link.
	Then The user clicks on "Response Add" Button.
	And The user waits for "5" Seconds.
	Then The user clicks on "Response Cancel" Button.
	Then The user checks "Response Name Text" field is not edible.
	
@VerifyResponseAddMax+1
Scenario: T 207.2.5 In the Name field, enter a Response Set name with max+1 characters and Save. Verify validator error message is displayed. Print Screen.
Given The user Opened the AUT.
	Then The user enters "Username".
	Then The user clicks on "SignIn" Button.
    Then The user enters "Password".
    Then The user clicks on "SignIn" Button.
    And The user waits for "30" Seconds.	
    Then The user clicks on "SETUPS" Button.
	Then the user clicks on "Response Sets" link.
	Then The user clicks on "Response Add" Button.
	And The user waits for "5" Seconds.
	Then The user enters "Response Name Text Max+1".
	Then The user clicks on "Save Response Button" Button.
	And The user waits for "3" Seconds.
	Then the user asserts html contains with "Response Name Error Max+1".

@VerifyResponseAddEmptyField
Scenario:  T 207.2.6 In the Name field, do not enter any Response Set name and Save. Verify validator error message is displayed. Print Screen.
Given The user Opened the AUT.
	Then The user enters "Username".
	Then The user clicks on "SignIn" Button.
    Then The user enters "Password".
    Then The user clicks on "SignIn" Button.
    And The user waits for "30" Seconds.	
    Then The user clicks on "SETUPS" Button.
	Then the user clicks on "Response Sets" link.
	Then The user clicks on "Response Add" Button.
	And The user waits for "5" Seconds.
	Then The user enters "Response Search text" and presses enter.
	Then The user clears "Response Search text" and presses enter.
	And The user waits for "5" Seconds.
	Then The user matches "Response Sets Table" table contains rows matching with "Response Search Row Count".
	
@VerifyAddDuplicateResponseSetName
Scenario: T 207.2.7 In the Name field, enter an existing Response Set name characters and Save. Verify validator error message is displayed. Print Screen.
Given The user Opened the AUT.
	Then The user enters "Username".
	Then The user clicks on "SignIn" Button.
    Then The user enters "Password".
    Then The user clicks on "SignIn" Button.
    And The user waits for "30" Seconds.	
    Then The user clicks on "SETUPS" Button.
	Then the user clicks on "Response Sets" link.
	And The user waits for "3" Seconds.
	Then the user saves content for "Next Response Name Text".
	Then The user clicks on "Response Add" Button.
	Then The user enters "Response Name Text" from File.
	Then The user clicks on "Save Response Button" Button.
	And The user waits for "3" Seconds.
	Then the user asserts "Site Error" field with "Response Name Duplicate Error".

@VerifyResponseAddSetResponseValue
Scenario: T 207.2.8 In the Name field, enter a Response Set and Save. Verify Add button to add Response Set Values is displayed. Print Screen.
Given The user Opened the AUT.
	Then The user enters "Username".
	Then The user clicks on "SignIn" Button.
    Then The user enters "Password".
    Then The user clicks on "SignIn" Button.
    And The user waits for "30" Seconds.	
    Then The user clicks on "SETUPS" Button.
    Then the user clicks on "Response Sets" link.
	Then The user clicks on "Response Add" Button.
	And The user waits for "3" Seconds.
	Then The user writes "Response Name Text" with timestamp.
	Then The user clicks on "Save Response Button" Button.
	Then the "Response Set Add Value" Button is asserted to be clickable.

@VerifyResponseAddAddResponseValuePopup
Scenario: T 207.2.9 Click Add button. Verify Response Set Value pop-up form is displayed. Print Screen.
Given The user Opened the AUT.
	Then The user enters "Username".
	Then The user clicks on "SignIn" Button.
    Then The user enters "Password".
    Then The user clicks on "SignIn" Button.
    And The user waits for "30" Seconds.	
    Then The user clicks on "SETUPS" Button.
    Then the user clicks on "Response Sets" link.
	Then The user clicks on "Response Add" Button.
	And The user waits for "3" Seconds.
	Then The user writes "Response Name Text" with timestamp.
	Then The user clicks on "Save Response Button" Button.
	Then The user waits for "3" Seconds.
	Then The user checks "Response Set Label" field is edible.
	
@VerifyResponseAddRespValueAddEdit
Scenario: T 207.2.11 Click Edit icon in the Response Set Values list. Verify Response Set Value pop-up form is displayed. Print Screen.
Given The user Opened the AUT.
	Then The user enters "Username".
	Then The user clicks on "SignIn" Button.
    Then The user enters "Password".
    Then The user clicks on "SignIn" Button.
    And The user waits for "30" Seconds.	
    Then The user clicks on "SETUPS" Button.
    Then the user clicks on "Response Sets" link.
	Then The user clicks on "Response Add" Button.
	And The user waits for "3" Seconds.
	Then The user writes "Response Name Text" with timestamp.
	Then The user clicks on "Save Response Button" Button.
	Then The user waits for "3" Seconds.
	Then The user writes "Response Set Label" with timestamp.
	Then The user writes "Response Set Value" with timestamp.
	Then The user clicks on "Response Set Value Save and Exit" Button.


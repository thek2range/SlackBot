@All
@TestNewStudy_RedCap
Feature: RedCap Study Section Test
@VerifyNewStudyOpen
Scenario: T 203.1.1 Click on the Add button on Create New Study screen. Verify the Create New Study screen matches spec. Print Screen.
Given The user Opened the AUT.
	Then The user enters "Username".
	Then The user clicks on "SignIn" Button.
    Then The user enters "Password".
    Then The user clicks on "SignIn" Button.
	Then The user clicks on "Add Study" Button.
	And The user waits for "5" Seconds.
	Then the user asserts value of "Create New Study Title" with "Create New Study".
	
@VerifyNewStudyCancel
Scenario: T 203.2.2 Click on the Cancel button. Verify the Create New Study is closed without any changes. Print Screen.
Given The user Opened the AUT.
	Then The user enters "Username".
	Then The user clicks on "SignIn" Button.
    Then The user enters "Password".
    Then The user clicks on "SignIn" Button.
    Then the user calculates number of rows in "Study Name Table Body".
    Then The user clicks on "Add Study" Button.
    And The user waits for "5" Seconds.
	Then The user clicks on "Cancel Study" Button.
	Then the user validates the number of rows in "Study Name Table Body".
	
@VerifyCreateNewStudy
Scenario: T 203.3.3 In the Create New Study screen, enter all required information for a new study #And click on Save #And Exit button. Verify a new study is created. Print Screen.
Given The user Opened the AUT.
	Then The user enters "Username".
	Then The user clicks on "SignIn" Button.
    Then The user enters "Password".
    Then The user clicks on "SignIn" Button.
    Then the user calculates number of rows in "Study Name Table Body".
    Then The user clicks on "Add Study" Button.
    And The user waits for "5" Seconds.
	Then The user enters "Study Name" with timestamp and saves.
	Then The user writes "Brief Title Create New" with timestamp.
	Then The user enters "Brief Summary".
	Then The user enters "Sponsor".
	Then The user enters "Screening Start Date Create New".
	Then The user enters "Admin Role Name Create Study".
	Then The user clicks on "Save Create Study" Button.
	And The user waits for "5" Seconds.
	Then The user validates "Brief Title Create New" from "Study Name Table Body".

@VerifyStudyNameMAx+1
Scenario:
Given The user Opened the AUT.
	Then The user enters "Username".
	Then The user clicks on "SignIn" Button.
    Then The user enters "Password".
    Then The user clicks on "SignIn" Button.
    Then The user clicks on "Add Study" Button.
    And The user waits for "5" Seconds.
	Then The user enters "Incorrect Study Name".
	Then The user enters "Brief Title Create New".
	Then The user enters "Brief Summary".
	Then The user enters "Sponsor".
	Then The user enters "Screening Start Date Create New".
	Then The user enters "Admin Role Name Create Study".
	Then The user clicks on "Save Create Study" Button.
	Then the user asserts "Study Name Validation Error" field with "Study Name Validation Error".
	
	
@VerifyStudyCategory
Scenario: T 203.3.5 Click the Study Category dropdown list. Verify dropdown are per the specifications. Print Screen.
Given The user Opened the AUT.
	Then The user enters "Username".
	Then The user clicks on "SignIn" Button.
    Then The user enters "Password".
    Then The user clicks on "SignIn" Button.
    Then The user clicks on "Add Study" Button.
    And The user waits for "5" Seconds.
	Then The user clicks on "Study Category-New Study" drop down, select result from "Study Category Dropdown List" and asserts value with "Study Category Dropdown List".
	
@ValidateBriefTitleMax+1
Scenario: T 203.3.7 In the Brief Title, enter max+1 characters for Brief Title #And enter. Verify validator error message is displayed upon Save #And Exit. Print Screen.
Given The user Opened the AUT.
	Then The user enters "Username".
	Then The user clicks on "SignIn" Button.
    Then The user enters "Password".
    Then The user clicks on "SignIn" Button.
    Then The user clicks on "Add Study" Button.
    And The user waits for "5" Seconds.
	Then The user enters "Study Name".
	Then The user enters "Brief Title Create New Max + 1".
	Then The user enters "Brief Summary".
	Then The user enters "Sponsor".
	Then The user enters "Screening Start Date Create New".
	Then The user enters "Admin Role Name Create Study".
	Then The user clicks on "Save Create Study" Button.
	Then the user asserts "Study Name Validation Error" field with "Brief Title Max + 1 Validation Error".
	
@ValidateOfficialTitleMax+1
Scenario: T 203.3.7 In the Brief Title, enter max+1 characters for Brief Title #And enter. Verify validator error message is displayed upon Save #And Exit. Print Screen.
Given The user Opened the AUT.
	Then The user enters "Username".
	Then The user clicks on "SignIn" Button.
    Then The user enters "Password".
    Then The user clicks on "SignIn" Button.
    Then The user clicks on "Add Study" Button.
    And The user waits for "5" Seconds.
	Then The user enters "Study Name".
	Then The user enters "Brief Title Create New".
	Then The user enters "Brief Summary".
	Then The user enters "Official Title Max+1".
	Then The user enters "Sponsor".
	Then The user enters "Screening Start Date Create New".
	Then The user enters "Admin Role Name Create Study".
	Then The user clicks on "Save Create Study" Button.
	Then the user asserts "Study Name Validation Error" field with "Official Title Max+1 Validation Error".
	
@VerifySecondaryIdMax+1
Scenario: T 203.3.9 In the Secondary IDs (separate by commas), enter max+1 characters for Secondary IDs (separate by commas) #And enter. Verify validator error message is displayed upon Save #And Exit. Print Screen.
Given The user Opened the AUT.
	Then The user enters "Username".
	Then The user clicks on "SignIn" Button.
    Then The user enters "Password".
    Then The user clicks on "SignIn" Button.
    And The user waits for "80" Seconds.	
    Then The user clicks on "Add Study" Button.
    And The user waits for "5" Seconds.
    And The user waits for "5" Seconds.
	And The user waits for "10" Seconds.	
	Then The user enters "Study Name".
	Then The user enters "Brief Title Create New".
	Then The user enters "Brief Summary".
	Then The user enters "Secondary ID Max + 1".
	Then The user enters "Sponsor".
	Then The user enters "Screening Start Date Create New".
	Then The user enters "Admin Role Name Create Study".
	Then The user clicks on "Save Create Study" Button.
	And The user waits for "10" Seconds.	
	Then the user asserts "Study Name Validation Error" field with "Secondary Id Max+1 Validation Error".
	
@VerifyBriefSummaryMax+1
Scenario: T 203.3.10 In the Brief Summary, enter max+1 characters for Brief Summary #And enter. Verify validator error message is displayed upon Save #And Exit. Print Screen.
Given The user Opened the AUT.
	##And The user waits for the page to load.	
	Then The user enters "Username".
	Then The user clicks on "SignIn" Button.
    Then The user enters "Password".
    Then The user clicks on "SignIn" Button.
    Then The user clicks on "Add Study" Button.
    And The user waits for "5" Seconds.
	Then The user enters "Study Name" with timestamp and saves.
	Then The user enters "Brief Title Create New".
	Then The user enters "Sponsor".
	Then The user enters "Brief Summary Max+1".
	Then The user enters "Screening Start Date Create New".
	Then The user enters "Admin Role Name Create Study".
	Then The user clicks on "Save Create Study" Button.
	Then The user deletes temporary file.
	Then the user asserts "Study Name Validation Error" field with "Brief Summary Max+1 Validation Error".

@VerifyDetailedDescMax+1
Scenario: T 203.3.11 In the Detailed Description, enter max+1 characters for Detailed Description #And enter. Verify validator error message is displayed upon Save #And Exit. Print Screen.
Given The user Opened the AUT.
	##And The user waits for the page to load.	
	Then The user enters "Username".
	Then The user clicks on "SignIn" Button.
    Then The user enters "Password".
    Then The user clicks on "SignIn" Button.
    Then The user clicks on "Add Study" Button.
    And The user waits for "5" Seconds.
	Then The user enters "Study Name" with timestamp and saves.
	Then The user enters "Brief Title Create New".
	Then The user enters "Sponsor".
	Then The user enters "Brief Summary".
	Then The user enters "Screening Start Date Create New".
	Then The user enters "Admin Role Name Create Study".
	Then The user enters "Detail Description Max+1".
	Then The user clicks on "Save Create Study" Button.
	And The user waits for "10" Seconds.
	Then The user deletes temporary file.		
	Then the user asserts "Study Name Validation Error" field with "Detailed Description Max+1 Validation Error".

@VerifySponsorMax+1
Scenario: T 203.3.12 In the Sponsor, enter max+1 characters for Sponsor #And enter. Verify validator error message is displayed upon Save #And Exit. Print Screen.
Given The user Opened the AUT.
	##And The user waits for the page to load.	
	Then The user enters "Username".
	Then The user clicks on "SignIn" Button.
    Then The user enters "Password".
    Then The user clicks on "SignIn" Button.
    Then The user clicks on "Add Study" Button.
    And The user waits for "5" Seconds.
	Then The user enters "Study Name" with timestamp and saves.
	Then The user enters "Brief Title Create New".
	Then The user enters "Sponsor Max+1".
	Then The user enters "Brief Summary".
	Then The user enters "Screening Start Date Create New".
	Then The user enters "Admin Role Name Create Study".
	Then The user clicks on "Save Create Study" Button.
	Then The user deletes temporary file.		
	And The user waits for "10" Seconds.	
	Then the user asserts "Study Name Validation Error" field with "Sponsor Max+1 Validation Error".

@VerifyCollaboratorsMax+1
Scenario: T 203.3.13 In the Collaborators (separate by commas), enter max+1 characters for Collaborators (separate by commas) #And enter. Verify validator error message is displayed upon Save #And Exit. Print Screen.
Given The user Opened the AUT.
	##And The user waits for the page to load.	
	Then The user enters "Username".
	Then The user clicks on "SignIn" Button.
    Then The user enters "Password".
    Then The user clicks on "SignIn" Button.
    Then The user clicks on "Add Study" Button.
    And The user waits for "5" Seconds.
	Then The user enters "Study Name" with timestamp and saves.
	Then The user enters "Brief Title Create New".
	Then The user enters "Sponsor".
	Then The user enters "Brief Summary".
	Then The user enters "Screening Start Date Create New".
	Then The user enters "Admin Role Name Create Study".
	Then The user enters "Collaborators Max+1".
	Then The user clicks on "Save Create Study" Button.
	Then The user deletes temporary file.		
	And The user waits for "10" Seconds.	
	Then the user asserts "Study Name Validation Error" field with "Collaborators Max+1 Validation Error".

@VerifyAdminRoleMax+1
Scenario: T 203.3.14 In the Admin Role Name, enter max+1 characters for Admin Role Name #And enter. Verify validator error message is displayed upon Save #And Exit. Print Screen.
Given The user Opened the AUT.
	##And The user waits for the page to load.	
	Then The user enters "Username".
	Then The user clicks on "SignIn" Button.
	And The user waits for "4" Seconds.
    Then The user enters "Password".
    Then The user clicks on "SignIn" Button.
    And The user waits for "80" Seconds.	
    Then The user clicks on "Add Study" Button.
    And The user waits for "5" Seconds.
	And The user waits for "10" Seconds.	
	Then The user enters "Study Name" with timestamp and saves.
	Then The user enters "Brief Title Create New".
	Then The user enters "Sponsor".
	Then The user enters "Brief Summary".
	Then The user enters "Screening Start Date Create New".
	Then The user enters "Admin Role Max+1".
	Then The user clicks on "Save Create Study" Button.
	And The user waits for "5" Seconds.
	Then the user asserts "Study Name Validation Error" field with "Admin Max+1 Validation Error".
	
@VerifyPrincipalRoleMax+1
Scenario: T 203.3.15 In the Principal Investigator Role Name, enter max+1 characters for Principal Investigator Role Name #And enter. Verify validator error message is displayed upon Save #And Exit. Print Screen.
Given The user Opened the AUT.
	##And The user waits for the page to load.	
	Then The user enters "Username".
	Then The user clicks on "SignIn" Button.
    Then The user enters "Password".
    Then The user clicks on "SignIn" Button.
    Then The user clicks on "Add Study" Button.
    And The user waits for "5" Seconds.
	Then The user enters "Study Name" with timestamp and saves.
	Then The user enters "Brief Title Create New".
	Then The user enters "Sponsor".
	Then The user enters "Brief Summary".
	Then The user enters "Screening Start Date Create New".
	Then The user enters "Principal Role Max+1".
	Then The user enters "Admin Role Name Create Study".
	Then The user clicks on "Save Create Study" Button.
	Then The user deletes temporary file.		
	And The user waits for "10" Seconds.	
	Then the user asserts "Study Name Validation Error" field with "Principal Role Max+1 Validation Error".
	
@VerifyPrincipalInvestigatorChoose
Scenario: T 203.3.16 Click on the Principal Investigator Choose button. Verify User Selection pop-up form is displayed. Print Screen.
Given The user Opened the AUT.
	##And The user waits for the page to load.	
	Then The user enters "Username".
	Then The user clicks on "SignIn" Button.
	And The user waits for "4" Seconds.
    Then The user enters "Password".
    Then The user clicks on "SignIn" Button.
    And The user waits for "30" Seconds.	
    Then The user clicks on "Add Study" Button.
    And The user waits for "5" Seconds.
	And The user waits for "10" Seconds.	
	Then The user clicks on "Choose" Button By Action.
	And The user waits for "5" Seconds.
	Then the user asserts "Select User Text" field with "Select User Text".
	
@VerifyUserSelectPopupChooseUser
Scenario: T 203.3.17 Select a User Name in User Selection pop-up form. Verify the User Name is displayed. Print Screen.
Given The user Opened the AUT.
	##And The user waits for the page to load.	
	Then The user enters "Username".
	Then The user clicks on "SignIn" Button.
	And The user waits for "4" Seconds.
    Then The user enters "Password".
    Then The user clicks on "SignIn" Button.
    And The user waits for "30" Seconds.	
    Then The user clicks on "Add Study" Button.
    And The user waits for "5" Seconds.
	And The user waits for "10" Seconds.	
	Then The user clicks on "Choose" Button By Action.
	Then the user clicks on "Choose First Name" link and saves data to file.
	Then the user asserts value of "Principal Investigator Name" field from file.

@VerifyChooseCancel
Scenario: T 203.3.18 Click on the Cancel icon next to the Choose button. Verify the User Name is deleted. Print Screen.
Given The user Opened the AUT.
	##And The user waits for the page to load.	
	Then The user enters "Username".
	Then The user clicks on "SignIn" Button.
	And The user waits for "4" Seconds.
    Then The user enters "Password".
    Then The user clicks on "SignIn" Button.
    And The user waits for "30" Seconds.	
    Then The user clicks on "Add Study" Button.
    And The user waits for "5" Seconds.
	And The user waits for "10" Seconds.	
	Then The user clicks on "Choose" Button By Action.
	Then the user clicks on "Choose First Name" link and saves data to file.
	Then The user clicks on "Choose Cancel" Button By Action.
	Then the user asserts value of "Principal Investigator Name" is not enabled.

@VerifyPrincipalInvestigatorChooseButtonAction
Scenario: T 204.1.1 Click on the Principal Investigator Choose button on Create New Study screen. Verify User Selection pop-up form is per spec. Print Screen.	
Given The user Opened the AUT.
	##And The user waits for the page to load.	
	Then The user enters "Username".
	Then The user clicks on "SignIn" Button.
	And The user waits for "4" Seconds.
    Then The user enters "Password".
    Then The user clicks on "SignIn" Button.
    And The user waits for "30" Seconds.	
    Then The user clicks on "Add Study" Button.
    And The user waits for "5" Seconds.
	And The user waits for "10" Seconds.	
	Then The user clicks on "Choose" Button By Action.
	And The user waits for "5" Seconds.
	Then the user asserts "Select User Text" field with "Select User Text".

@VerifyPrincipalUserChooseCancelButton
Scenario: T 204.1.2 Click on the Cancel button. Verify the User Selection pop-up form is closed without any selection. Print Screen.
Given The user Opened the AUT.
	##And The user waits for the page to load.	
	Then The user enters "Username".
	Then The user clicks on "SignIn" Button.
	And The user waits for "4" Seconds.
    Then The user enters "Password".
    Then The user clicks on "SignIn" Button.
    And The user waits for "30" Seconds.	
    Then The user clicks on "Add Study" Button.
    And The user waits for "5" Seconds.
	And The user waits for "10" Seconds.	
	Then The user clicks on "Choose" Button By Action.
	Then The user clicks on "Choose Dialog Cancel" Button.
	Then the user asserts value of "Principal Investigator Name" is not enabled.
	
@VerifyChooseFirstName
Scenario: T 204.1.3 In the First Name filter, enter the first name of a User, and enter. Verify the User Selection pop-up form displays the records matching the first name. Print Screen.
Given The user Opened the AUT.
	##And The user waits for the page to load.	
	Then The user enters "Username".
	Then The user clicks on "SignIn" Button.
    Then The user enters "Password".
    Then The user clicks on "SignIn" Button.
    Then The user clicks on "Add Study" Button.
    And The user waits for "5" Seconds.
	Then The user clicks on "Choose" Button By Action.
	Then The user enters "Choose Dialog First Name" and presses enter.
	And The user waits for "5" Seconds.
	Then The user matches all rows of "Choose Dialog User Table" table contains "Choose Dialog First Name".

@VerifyChooseFirstNameRandom
Scenario: T 204.1.3 In the First Name filter, enter the first name of a User, and enter. Verify the User Selection pop-up form displays the records matching the first name. Print Screen.
Given The user Opened the AUT.
	##And The user waits for the page to load.	
	Then The user enters "Username".
	Then The user clicks on "SignIn" Button.
    Then The user enters "Password".
    Then The user clicks on "SignIn" Button.
    Then The user clicks on "Add Study" Button.
    And The user waits for "5" Seconds.
	Then The user clicks on "Choose" Button By Action.
	Then The user enters "Choose Dialog First Name Random" and presses enter.
	And The user waits for "10" Seconds.
	Then The user matches all rows of "Choose Dialog User Table" table is empty.

@VerifyChooseLastName
Scenario: T 204.1.6 In the Last Name filter, enter the last name of a User, and enter. Verify the User Selection pop-up form displays the records matching the last name. Print Screen.
Given The user Opened the AUT.
	##And The user waits for the page to load.	
	Then The user enters "Username".
	Then The user clicks on "SignIn" Button.
    Then The user enters "Password".
    Then The user clicks on "SignIn" Button.
    Then The user clicks on "Add Study" Button.
	And The user waits for "5" Seconds.
	Then The user clicks on "Choose" Button By Action.
	Then The user enters "Choose Dialog Last Name" and presses enter.
	And The user waits for "5" Seconds.
	Then The user matches all rows of "Choose Dialog User Table" table contains "Choose Dialog Last Name".

@VerifyChooseDialogLastNameRandom
Scenario: T 204.1.7 In the Last Name filter, enter a random characters, and enter. Verify User Selection pop-up form does not display any records. Print Screen.
Given The user Opened the AUT.
	##And The user waits for the page to load.	
	Then The user enters "Username".
	Then The user clicks on "SignIn" Button.
    Then The user enters "Password".
    Then The user clicks on "SignIn" Button.
    Then The user clicks on "Add Study" Button.
	And The user waits for "5" Seconds.
	Then The user clicks on "Choose" Button By Action.
	Then The user enters "Choose Dialog Last Name Random" and presses enter.
	And The user waits for "5" Seconds.
	Then The user matches all rows of "Choose Dialog User Table" table is empty.
	
@VerifyChooseButtonClear
Scenario: T 204.1.9 Click on Clear button, and enter. Verify the User Selection pop-up form displays all records. Print Screen.
Given The user Opened the AUT.
	##And The user waits for the page to load.	
	Then The user enters "Username".
	Then The user clicks on "SignIn" Button.
    Then The user enters "Password".
    Then The user clicks on "SignIn" Button.
    Then The user clicks on "Add Study" Button.
    And The user waits for "5" Seconds.
	Then The user clicks on "Choose" Button By Action.
	Then The user enters "Choose Dialog Last Name" and presses enter.
	Then The user clicks on "Reset Choose" Button.
	Then The user asserts the value of "Choose Result" is not "Showing <strong>0</strong> of <strong>0</strong>".
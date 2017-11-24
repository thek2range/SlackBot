@All
@TestStudy_RedCap
Feature: RedCap Study Section Test

@VerifyMyStudies
Scenario: T 202.1.1 Click on the My Studies link on the Left Menu of the main interface. Verify the My studies screen matches spec. Print Screen.
Given The user Opened the AUT.
	#And The user waits for the page to load.	
	Then The user enters "Username".
	Then The user clicks on "SignIn" Button.
	#And The user waits for "10" Seconds.
    Then The user enters "Password".
    Then The user clicks on "SignIn" Button.	
 	And The user waits for "35" Seconds. 	
    Then the user asserts value of "My Study" with "My Studies".
    
    
@VerifyStudyFilter
Scenario: T 202.2.1 In the Search by Name filter, enter a name of a Study, and enter. Verify the My Studies screen displays the Study record. Print Screen.
Given The user Opened the AUT.
	#And The user waits for the page to load.	
	Then The user enters "Username".
	Then The user clicks on "SignIn" Button.
	#And The user waits for "10" Seconds.
    Then The user enters "Password".
    Then The user clicks on "SignIn" Button.	
 	And The user waits for "35" Seconds. 
 	Then The user enters "Study Filter" and presses enter.
 	And The user waits for "5" Seconds.
 	Then the user asserts value of "Study Name Field" with "Test Title 1507491160238".
 	

@VerifyFilterStudyIncorrectSearch
Scenario: T 202.2.1 In the Search by Name filter, enter a name of a Study, and enter. Verify the My Studies screen displays the Study record. Print Screen.
Given The user Opened the AUT.
	#And The user waits for the page to load.	
	Then The user enters "Username".
	Then The user clicks on "SignIn" Button.
	#And The user waits for "4" Seconds.
    Then The user enters "Password".
    Then The user clicks on "SignIn" Button.	
    And The user waits for "35" Seconds.
	Then The user enters "Study Filter Incorrect" and presses enter.
	#And The user waits for "5" Seconds.
	Then the user asserts value of "Study Name Table" Table is empty.
	
@VerifyFilterEmpty
Scenario: T 202.2.3 In the Search by Name filter, enter clear the search field, and enter. Verify the My Studies screen displays all records. Print Screen.
Given The user Opened the AUT.
	#And The user waits for the page to load.	
	Then The user enters "Username".
	Then The user clicks on "SignIn" Button.
	#And The user waits for "4" Seconds.
    Then The user enters "Password".
    Then The user clicks on "SignIn" Button.
    And The user waits for "35" Seconds.
	Then The user enters "Study Filter" and presses enter.
 	#And The user waits for "5" Seconds.
 	And The user waits for "5" Seconds.
 	Then The user matches "Study Name Table Body" table contains rows matching with "rowcount".
 	
@VerifyMyStudiesFilter
Scenario: T 202.3.1 Click on the Filter icon. Verify Additional filtering options are available in a popover per the specification. Print Screen.
	Given The user Opened the AUT.
	#And The user waits for the page to load.	
	Then The user enters "Username".
	Then The user clicks on "SignIn" Button.
	#And The user waits for "4" Seconds.
    Then The user enters "Password".
    Then The user clicks on "SignIn" Button.
    And The user waits for "35" Seconds.
	Then the user clicks on "Study Filter Icon" link.
	#And The user waits for "5" Seconds.
	Then the user asserts value of "Filter Button" with "Filter".

@VerifyCategoryFilter
Scenario: T 202.3.2 In the Search by Category filter, choose a drop down value, and enter. Verify the My Studies screen displays records matching the chosen drop down value. Print Screen.
Given The user Opened the AUT.
	#And The user waits for the page to load.	
	Then The user enters "Username".
	Then The user clicks on "SignIn" Button.
	#And The user waits for "4" Seconds.
    Then The user enters "Password".
    Then The user clicks on "SignIn" Button.
    And The user waits for "35" Seconds.
	Then the user clicks on "Study Filter Icon" link.
	#And The user waits for "5" Seconds.
	Then The user clicks on "Category Dropdown" Button.
	Then The user clicks on "Classic Database" by linktext.
	#And The user waits for "2" Seconds.
	Then The user clicks on "Filter Button" Button.
	#And The user waits for 30 Seconds.
	Then The user matches "Study Name Table Body" table contains "Classic Database"


@VerifyCategoryFilterWithAdditionalCriteria
Scenario: T 202.3.3 In the Search by Category filter, choose drop down value and an additional filter condition, and enter. Verify the My Studies screen displays records matching the chosen criteria. Print Screen.
	Given The user Opened the AUT.
	#And The user waits for the page to load.	
	Then The user enters "Username".
	Then The user clicks on "SignIn" Button.
	#And The user waits for "4" Seconds.
    Then The user enters "Password".
    Then The user clicks on "SignIn" Button.
    And The user waits for "35" Seconds.
	Then the user clicks on "Study Filter Icon" link.
	#And The user waits for "5" Seconds.
	Then The user clicks on "Category Dropdown" Button.
	Then The user clicks on "Classic Database" by linktext.
	#And The user waits for "2" Seconds.	
	Then The user clicks on "Status Button" Button.
	Then The user clicks on "Development" by linktext.
	Then The user clicks on "Filter Button" Button.
	#And The user waits for "30" Seconds.
	Then The user matches "Study Name Table Body" table contains "Classic Database,Development"
	
@VerifyPrincipalUser
Scenario: T 202.3.4 In the Search by Principal Investigator filter, enter a name of a known user, and enter or click on Filter button. Verify the My Studies screen displays the studies for the Principal Investigator. Print Screen.
	Given The user Opened the AUT.
	#And The user waits for the page to load.	
	Then The user enters "Username".
	Then The user clicks on "SignIn" Button.
	#And The user waits for "4" Seconds.
    Then The user enters "Password".
    Then The user clicks on "SignIn" Button.
    And The user waits for "35" Seconds.
	Then the user clicks on "Study Filter Icon" link.
	#And The user waits for "5" Seconds.
	Then The user enters "Principal Investigator".
	Then The user clicks on "Filter Button" Button.
	#And The user waits for "5" Seconds.
	Then The user matches "Study Name Table Body" table contains "Jaya Prakash Rao"
	
@VerifyPrincipalUserWrongValue
Scenario: T 202.3.5 In the Search by Principal Investigator filter, enter a random characters, and enter. Verify the My Studies screen does not display any records. Print Screen.
	Given The user Opened the AUT.
	#And The user waits for the page to load.	
	Then The user enters "Username".
	Then The user clicks on "SignIn" Button.
	#And The user waits for "4" Seconds.
    Then The user enters "Password".
    Then The user clicks on "SignIn" Button.
    And The user waits for "35" Seconds.
	Then the user clicks on "Study Filter Icon" link.
	#And The user waits for "5" Seconds.
	Then The user enters "Wrong Principal Investigator".
	Then The user clicks on "Filter Button" Button.
	#And The user waits for "5" Seconds.
	Then the user asserts value of "Study Name Table" Table is empty.

@VerifyPrincipalInvestigatorWithAdditionalCriteria
Scenario: T 202.3.7 In the Search by Principal Investigator filter, enter a name of a known user, and choose additional filter condition, and enter. Verify the My Studies screen display the records per the additional filter condition. Print Screen.
	Given The user Opened the AUT.
	#And The user waits for the page to load.	
	Then The user enters "Username".
	Then The user clicks on "SignIn" Button.
	#And The user waits for "4" Seconds.
    Then The user enters "Password".
    Then The user clicks on "SignIn" Button.
    And The user waits for "35" Seconds.
	Then the user clicks on "Study Filter Icon" link.
	#And The user waits for "5" Seconds.
	Then The user enters "Principal Investigator".
	Then The user clicks on "Status Button" Button.
	Then The user clicks on "Development" by linktext.
	Then The user clicks on "Filter Button" Button.
	#And The user waits for "5" Seconds.
	Then The user matches "Study Name Table Body" table contains "Jaya Prakash Rao,Development"

@VerifyFilterStatus
Scenario: T 202.3.8 In the Search by Status filter, choose a drop down value, and enter. Verify the My Studies screen displays records matching the chosen drop down value. Print Screen.
Given The user Opened the AUT.
	#And The user waits for the page to load.	
	Then The user enters "Username".
	Then The user clicks on "SignIn" Button.
	#And The user waits for "4" Seconds.
    Then The user enters "Password".
    Then The user clicks on "SignIn" Button.
    And The user waits for "35" Seconds.
	Then the user clicks on "Study Filter Icon" link.
	And The user waits for "5" Seconds.
	Then The user clicks on "Filtar Status Toggle" Button.
	Then the user clicks on "Development" link.
	Then The user clicks on "Filter Button" Button.
	#And The user waits for "5" Seconds.
	Then The user matches "Study Name Table Body" table contains "Development"

@VerifyFilterStatusWithAdditionalCriteria
Scenario: T 202.3.9 In the Search by Status filter, choose drop down value and an additional filter condition, and enter. Verify the My Studies screen displays records matching the chosen criteria. Print Screen.
Given The user Opened the AUT.
	#And The user waits for the page to load.	
	Then The user enters "Username".
	Then The user clicks on "SignIn" Button.
	#And The user waits for "4" Seconds.
    Then The user enters "Password".
    Then The user clicks on "SignIn" Button.
    And The user waits for "35" Seconds.
	Then the user clicks on "Study Filter Icon" link.
	#And The user waits for "5" Seconds.
	Then The user enters "Principal Investigator".
	Then The user clicks on "Filtar Status Toggle" Button.
	Then The user clicks on "Development" by linktext.
	Then The user clicks on "Filter Button" Button.
	#And The user waits for "5" Seconds.
	Then The user matches "Study Name Table Body" table contains "Jaya Prakash Rao,Development"
	
@VerifyPrincipalUsermax+1Notallowed
Scenario: T 202.3.6 In the Search by Principal Investigator filter, enter max+1 characters for a Principal Investigator and enter. Verify validator error message is displayed. Print Screen.
Given The user Opened the AUT.
	#And The user waits for the page to load.	
	Then The user enters "Username".
	Then The user clicks on "SignIn" Button.
	#And The user waits for "4" Seconds.
    Then The user enters "Password".
    Then The user clicks on "SignIn" Button.
    And The user waits for "35" Seconds.
	Then the user clicks on "Study Filter Icon" link.
	And The user waits for "5" Seconds.
	Then The user enters "Principal Investigator Max+1".
	Then The user clicks on "Filter Button" Button.
	#And The user waits for "5" Seconds.
	Then the user asserts value of "Security Error" with "Principal Investigator - must be between 3 and 50 characters".
	
@VerifyAddStudy
Scenario: T 202.4.1 Click on the Add button. Verify the user is navigated to Create New studies screen. Print Screen.
Given The user Opened the AUT.
	#And The user waits for the page to load.	
	Then The user enters "Username".
	Then The user clicks on "SignIn" Button.
	#And The user waits for "4" Seconds.
    Then The user enters "Password".
    Then The user clicks on "SignIn" Button.
    And The user waits for "35" Seconds.
	Then The user clicks on "Add Study" Button.
	#And The user waits for "5" Seconds.
	Then the user asserts value of "Create New Study Title" with "Create New Study".
	
@VerifyStudyOverview
Scenario: T 202.4.3 Click on the Name in the list. Verify the user is navigated to Study Overview Studies screen. Print Screen. Print Screen.
Given The user Opened the AUT.
	#And The user waits for the page to load.	
	Then The user enters "Username".
	Then The user clicks on "SignIn" Button.
	#And The user waits for "4" Seconds.
    Then The user enters "Password".
    Then The user clicks on "SignIn" Button.
    And The user waits for "35" Seconds.
    Then the user clicks on "Test Title 1507491160238" link.
    And The user waits for "5" Seconds.
    Then the user asserts value of "Overview" with "Overview".
    
@VerifyNameFieldSort
Scenario: T 202.4.2 Click on the Name label in the list. Verify the My Studies screen is sorted by the Study Name. Print Screen.
Given The user Opened the AUT.
	#And The user waits for the page to load.	
	Then The user enters "Username".
	Then The user clicks on "SignIn" Button.
	#And The user waits for "4" Seconds.
    Then The user enters "Password".
    Then The user clicks on "SignIn" Button.
    And The user waits for "35" Seconds.
	Then The user validates sorting of "Name field" by clicking on "Name" link.      
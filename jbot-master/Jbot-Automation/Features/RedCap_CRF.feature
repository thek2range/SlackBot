@RedCap_CRF
Feature: RedCap_CRF

@StudyCRFScreen
Scenario: T 223.1.1 Click on the CRFs link on the Study Menu of a Study Interface. Verify the CRF screen matches spec. Print Screen.
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
	Then the user asserts html contains with "CRF Screen Header". 

@StudyCRFTools
Scenario: T 223.1.2 Click on the Tools menu icon. Verify drop down options are available per the specification. Print Screen.
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
	Then The user clicks on "CRF Tools" drop down, select result from "Tools List" and asserts value with "Tools List Values".
	
@StudyCRFImportScreen
Scenario: T 223.1.3 Click on the Import Data Dictionary link in the Tools dropdown. Verify Import Data Dictionary pop-up is displayed. Print Screen.
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
	Then The user clicks on "CRF Tools" Button.
	Then the user clicks on "Import Data Dictionary Link" link.
	Then the  user asserts "Import Data Dictionary Header" field with "Import Data Dictionary Header".

@StudyCRFExportScreen
Scenario: T 223.1.4 Click on the Export Data Dictionary link in the Tools dropdown. Verify Export Data Dictionary message is displayed. Print Screen.	
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
	Then The user clicks on "CRF Tools" Button.
	Then the user clicks on "Export Data Dictionary Link" link.
	Then the  user asserts "Export Data Dictionary Header" field with "Export Data Dictionary Header".

@StudyCRFExportDownload
Scenario: T 223.1.5 Click on the download link in the Export Data Dictionary completion message. Verify the Data Dictionary can be downloaded and is valid. Print Screen.	
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
	Then The user clicks on "CRF Tools" Button.
	Then the user clicks on "Export Data Dictionary Link" link.
	Then the user clicks on "Export Data Instrument" link.
	Then The user clicks on "Data Export" Button.
	And The user waits for "360" Seconds.
	Then The user clicks on "Alert Notification" Button.
	Then the user asserts value of "Alert Pane" with "Click to download Exported CSV".
	
@StudyCRFPrintAllDataEntry
Scenario: T 223.1.6 Click on Print All data entry forms link in the Tools dropdown. Verify a browser window is displayed with all the CRF forms in the study. Print Screen.
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
	Then The user clicks on "CRF Tools" Button.
	Then the user clicks on "All Data Entry Form" link.
	And The user waits for "15" Seconds.
	Then The user checks new window contains "PDF Div".
	
@StudyCRFVerifyAdd
Scenario: T 223.1.7 Click on Add button. Verify User is navigated to the Add CRF screen. Print Screen.
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
	Then The user checks "Instrument Name" field is edible.

@StudyCRFLabelSort
Scenario: T 223.1.8 Click on the labels in the list. Verify the CRF screen is sorted by the selected label. Print Screen.	
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
	Then The user clicks on "Instrument Name Header" Button and asserts.

@StudyCRFUpDownChevron
Scenario: T 223.1.9 Click on Up/Down chevron icons in the list. Verify the CRF record order is changed and order is saved. Print Screen.
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
	Then The user clicks on "Instrument Name Header" Button.
	Then The user clicks on "CRF Down Chevron" Button and asserts.

@StudyCRFInstrumentNameNavigation
Scenario: T 223.1.10 Click on an Instrument Name in the list. Verify User is navigated to the Add/Edit CRF screen in Edit mode. Print Screen.
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
	Then the user clicks on "Instrument Name In List" link.
	Then The user checks "CRF Instrument View Only" field is not edible.

@StudyCRFViewPDF
Scenario: T 223.1.12 Click on View PDF icon in the list. Verify a browser window is displayed with the CRF forms in the study. Print Screen.	
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
	Then the user clicks on "CRF View PDF" link.
	And The user waits for "15" Seconds.
	Then The user checks new window contains "PDF Div".

@StudyCRFAnnotatedPdf
Scenario: T 223.1.13 Click on Annotated View link in list. Verify a browser window is displayed with the Annotated CRF forms in the study. Print Screen.	
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
	Then the user saves content for "Instrument Name In List".
	Then the user clicks on "CRF Annotated View" link.
	Then The user asserts with check value of "CRF Annotated View Window Header" from file.
	
@StudyCRFExportDataDictionary
Scenario: T 227.1.1 Click on the Export Data Dictionary link in the Tools dropdown. Verify Export Data Dictionary message is displayed. Print Screen.
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
	Then The user clicks on "CRF Tools" Button.
	Then the user clicks on "Export Data Dictionary Link" link.
	Then the user clicks on "Export Data Instrument" link.
	Then The user clicks on "Data Export" Button.
	Then the user asserts html contains with "Data Export Confirm".
	
@StudyCRFDataDictionaryDownload
Scenario: T 227.1.2 Click on the download link in the Export Data Dictionary completion message. Verify the Data Dictionary can be downloaded and is valid. Print Screen.
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
	Then The user clicks on "CRF Tools" Button.
	Then the user clicks on "Export Data Dictionary Link" link.
	Then the user clicks on "Export Data Instrument" link.
	Then The user clicks on "Data Export" Button.
	And The user waits for "360" Seconds.
	Then The user clicks on "Alert Notification" Button.
 	Then the user clicks on "Download CSV Link" link.
 	
@StudyCRFAllDataEntry	
Scenario: T 228.1.1 Click on the Print All Data Entry form link in the Tools dropdown. Verify a PDF file with all blank CRF forms in the study is displayed in a browser window. Print Screen.
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
	Then The user clicks on "CRF Tools" Button.
	Then the user clicks on "All Data Entry Form" link.
	And The user waits for "15" Seconds.
	Then The user checks new window contains "PDF Div".

@StudyCRFShowPdf
Scenario: T 229.1.1 Click on the View PDF link in the CRFs list. Verify a PDF file with the blank CRF form is displayed in a browser window. Print Screen.
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
	Then the user clicks on "CRF View PDF" link.
	And The user waits for "15" Seconds.
	Then The user checks new window contains "PDF Div".

@StudyEditAnnotatedView
Scenario: T 230.1.1 Click on the Annotated View link in the CRFs list. Verify the Annotated View of the CRF is displayed in a popup window. Print Screen.
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
	Then the user saves content for "Instrument Name In List".
	Then the user clicks on "CRF Annotated View" link.
	Then The user asserts with check value of "CRF Annotated View Window Header" from file.
	
@StudyEditAnnotatedViewExport
Scenario: T 230.1.2 In the Tools menu, click the Export link. Verify a PDF file with the Annotated CRF form is displayed in a browser window. Print Screen.	
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
	Then the user clicks on "CRF Annotated View" link.
	Then The user clicks on "Annotated CRF Tools Button" Button.
	Then The user clicks on "Annotated CRF Export" Button.
	And The user waits for "15" Seconds.
	Then The user checks new window contains "PDF Div".

@StufyEditAnnotatedCRFClose
Scenario: T 230.1.3 Click Close button. Verify the pop-up screen is closed without any change. Print Screen.
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
	Then the user clicks on "CRF Annotated View" link.
	Then The user clicks on "Annotated CRF Tools Button" Button.
	Then The user clicks on "Annotated CRF Close Button" Button and asserts.
	
	
	
		










	
	
	
	
@JBOT_Automation
Feature: JBOT  Automation

@JBotAutoLoginAndSendMessage
Scenario: JBOT Automation Login
Given The user Opened the AUT.
	Then The user enters "Username".
	Then The user enters "Password".
	Then The user clicks on "Sign In" Button.
	And The user waits for "10" Seconds.
	Then The user clicks on "Quick Switcher" Button.
	And The user waits for "10" Seconds.
	Then The user enters "Jump To" and presses enter.
	And The user waits for "10" Seconds.		
	Then The user enters "Text Box" and presses enter.
	
@JBOTSebdMessageToRunPythonScript
Scenario: JBOT Run Python Script
Given The user Opened the AUT.
	Then The user enters "Username".
	Then The user enters "Password".
	Then The user clicks on "Sign In" Button.
	And The user waits for "10" Seconds.
	Then The user clicks on "Quick Switcher" Button.
	And The user waits for "10" Seconds.
	Then the user enters "Jump To" to "k2robot" and presses enter.	
	And The user waits for "10" Seconds.		
	Then the user enters "Chat Box" to "Run Python Script:Hello" and  presses enter.

@JBOTRunFeatureFile
Scenario: JBOT Run Feature File
Given The user Opened the AUT.
	Then The user enters "Username".
	Then The user enters "Password".
	Then The user clicks on "Sign In" Button.
	And The user waits for "10" Seconds.
	Then The user clicks on "Quick Switcher" Button.
	And The user waits for "10" Seconds.
	Then the user enters "Jump To" to "k2robot" and presses enter.	
	And The user waits for "10" Seconds.		
	Then the user enters "Chat Box" to "Run Feature:@TestDemoWithOutline" and presses enter.
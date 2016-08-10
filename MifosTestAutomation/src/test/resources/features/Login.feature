Feature:Login

@login
Scenario Outline: As User Login into Mifos site using excelsheet

	Given I navigate to mifos using "default#/"
	And I login into mifos site using "Login" excel sheet
		| <excelsheet>| 
	Then I should see logged in successfully
	
	Examples:
		| excelsheet  | 
		| Login.xlsx  |
	#	| Login1.xlsx |

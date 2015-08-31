Feature:Login

@Login
Scenario Outline: As User Login into Mifos site using excelsheet

	Given I navigate to mifos
	And I login into mifos site using "Login" excel sheet
		| <excelsheet>| 
	Then I should see logged in successfully
	
	Examples:
		| excelsheet  | 
		| Login.xlsx  | 
	
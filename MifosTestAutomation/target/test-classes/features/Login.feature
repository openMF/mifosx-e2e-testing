Feature:Login

@login
Scenario Outline: As User Login into Mifos site using excelsheet

	Given I navigate to mifos
	And I use login folder 
	And I login into mifos site using excel sheet
		| <excelsheet>| 
	Then I should see logged in successfully
	
	Examples:
		| excelsheet   | 
		| Login.xlsx  | 
        #| Login other User.xlsx |
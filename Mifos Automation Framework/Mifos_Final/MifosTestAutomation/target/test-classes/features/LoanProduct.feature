Feature:LoanProduct

@loanproductcreation		
Scenario Outline: As User creates the product loan using excelsheet

	Given I navigate to mifos
	And I use login folder 
	And I login into mifos site using excel sheet
			| Login1.xlsx  | 
	Then I should see logged in successfully
		
	Given I setup the product loan 
		| Productloannavigation.xlsx |
	And I entered the values into product loan using
		| <excelsheet> |
		
		
 Examples:
		| excelsheet   | 
		|ProductLoan1.xlsx| 
		#| Login2.xlsx  | 		

		

Feature:LoanProduct

@loanproductcreation		
Scenario Outline: As User creates the product loan using excelsheet

	Given I navigate to mifos
	And I use login folder 
	And I login into mifos site using excel sheet
			| Login.xlsx  | 
	Then I should see logged in successfully
		
	Given I setup the product loan 
		| Productloannavigation.xlsx |
	And I entered the values into product loan using
		| <excelsheet> |
	Then I should see product loan created successfully	
		| <excelsheet> |
 Examples:
		| excelsheet   | 
	    #|Loanproduct1.xlsx|
	   #|Loanproduct2.xlsx|
	    #|Loanproduct3.xlsx|
	    #|Loanproduct4.xlsx|
	  #|Loanproduct5.xlsx|
	    #|Loanproduct6.xlsx|
	     #|Loanproduct7.xlsx|
	     #|Loanproduct8.xlsx|
	     |Loanproduct9.xlsx|
		
		
			

		

Feature:Test

Background:
	Given I navigate to mifos
	And I login into mifos site using "Login" excel sheet
		| Login.xlsx  |
	Then I should see logged in successfully

@loanproductcreation	
Scenario Outline: As User creates the product loan using excelsheet

	Given I setup the product loan "Setup"
		| Productloannavigation.xlsx |
	Then I entered the values into product loan from "ProductLoanInput" Sheet
		| <excelsheet> |
	Then I should see product loan created successfully	from "ProductLoanOutput" Sheet
		| <excelsheet> |
 Examples:
		|excelsheet| 
	    |Loanproduct.xlsx|
	    |2366-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-Uncheck-FR-BLR-Loanproduct.xlsx|
		|2367-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-ModifyApp-EDIT-IRD-Uncheck-FR-BLR-Loanproduct.xlsx|
		|2368-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-ModifyApp-EDIT-IRD-Check-FR-BLR-Loanproduct.xlsx|
		|2369-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-EDIT-ApproveDate-BLR-Loanproduct.xlsx|
		|2370-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-MOROTORIUM-PRINCIPAL-3-BLR-Loanproduct.xlsx|
		|2371-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-MOROTORIUM-INTEREST-3-BLR-Loanproduct.xlsx|
		|2372-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-MOROTORIUM-PRINCIPAL+INT-3-BLR-Loanproduct.xlsx|
		|2373-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-PREPAY-ON-15-JAN-BLR-Loanproduct.xlsx|
		|2374-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-OVERDUE-FEE-%LOANAMT+INT-BLR-Loanproduct.xlsx|
		|2375-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-3-ADD-TWO-TR-AFTER-DIS-BLR-Loanproduct.xlsx|
		|2376-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-WaiveInterest-BLR-Loanproduct.xlsx|
		|2377-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-Writeoff-BLR-Loanproduct.xlsx|
		|2378-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-EDIT-INT-From 4thJan+Repayment0n-1jan-BLR-Loanproduct.xlsx|
		

@scenario9-2366-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-Uncheck-FR-BLR
	  Scenario: 2366-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-Uncheck-FR-BLR

	Given I setup the product loan "Setup"
		| Productloannavigation.xlsx |
	Then I entered the values into product loan from "ProductLoanInput" Sheet
		|2366-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-Uncheck-FR-BLR-Loanproduct.xlsx|
		 
	Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			| 2366-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-Uncheck-FR-BLR-Newcreateloan1.xlsx|
	 Then I verified the "Summary" details successfully 
	  			| 2366-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-Uncheck-FR-BLR-Newcreateloan1.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
	  			| 2366-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-Uncheck-FR-BLR-Newcreateloan1.xlsx|

@scenario9-2367-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-ModifyApp-EDIT-IRD-Uncheck-FR-BLR
	  Scenario: 2367-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-ModifyApp-EDIT-IRD-Uncheck-FR-BLR

	Given I setup the product loan "Setup"
		| Productloannavigation.xlsx |
	Then I entered the values into product loan from "ProductLoanInput" Sheet
		|2367-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-ModifyApp-EDIT-IRD-Uncheck-FR-BLR-Loanproduct.xlsx|
		 
	Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			| 2367-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-ModifyApp-EDIT-IRD-Uncheck-FR-BLR-Newcreateloan1.xlsx|
	  And I modify New Loan Account from "ModifyLoan" sheet
	  			| 2367-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-ModifyApp-EDIT-IRD-Uncheck-FR-BLR-Newcreateloan1.xlsx|
	  Then I verified the "Summary" details successfully 
	  			| 2367-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-ModifyApp-EDIT-IRD-Uncheck-FR-BLR-Newcreateloan1.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
	  			| 2367-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-ModifyApp-EDIT-IRD-Uncheck-FR-BLR-Newcreateloan1.xlsx|
	  			
@scenario9-2368-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-ModifyApp-EDIT-IRD-Check-FR-BLR
	  Scenario: 2368-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-ModifyApp-EDIT-IRD-Check-FR-BLR

	Given I setup the product loan "Setup"
		| Productloannavigation.xlsx |
	Then I entered the values into product loan from "ProductLoanInput" Sheet
		|2368-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-ModifyApp-EDIT-IRD-Check-FR-BLR-Loanproduct.xlsx|
		 
	Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			| 2368-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-ModifyApp-EDIT-IRD-Check-FR-BLR-Newcreateloan1.xlsx|
	  And I modify New Loan Account from "ModifyLoan" sheet
	  			| 2368-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-ModifyApp-EDIT-IRD-Check-FR-BLR-Newcreateloan1.xlsx|
	  Then I verified the "Summary" details successfully 
	  			| 2368-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-ModifyApp-EDIT-IRD-Check-FR-BLR-Newcreateloan1.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
	  			| 2368-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-ModifyApp-EDIT-IRD-Check-FR-BLR-Newcreateloan1.xlsx|

@scenario9-2369-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-EDIT-ApproveDate-BLR
	  Scenario: 2369-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-EDIT-ApproveDate-BLR

	Given I setup the product loan "Setup"
		| Productloannavigation.xlsx |
	Then I entered the values into product loan from "ProductLoanInput" Sheet
		|2369-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-EDIT-ApproveDate-BLR-Loanproduct.xlsx|
		 
	Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			| 2369-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-EDIT-ApproveDate-BLR-Newcreateloan1.xlsx|
	  Then I verified the "Summary" details successfully 
	  			| 2369-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-EDIT-ApproveDate-BLR-Newcreateloan1.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
	  			| 2369-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-EDIT-ApproveDate-BLR-Newcreateloan1.xlsx|
	  			
@scenario9-2370-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-MOROTORIUM-PRINCIPAL-3-BLR
	  Scenario: 2370-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-MOROTORIUM-PRINCIPAL-3-BLR

	Given I setup the product loan "Setup"
		| Productloannavigation.xlsx |
	Then I entered the values into product loan from "ProductLoanInput" Sheet
		|2370-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-MOROTORIUM-PRINCIPAL-3-BLR-Loanproduct.xlsx|
		 
	Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			| 2370-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-MOROTORIUM-PRINCIPAL-3-BLR-Newcreateloan1.xlsx|
	  Then I verified the "Summary" details successfully 
	  			| 2370-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-MOROTORIUM-PRINCIPAL-3-BLR-Newcreateloan1.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
	  			| 2370-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-MOROTORIUM-PRINCIPAL-3-BLR-Newcreateloan1.xlsx|
	  			
@scenario9-2371-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-MOROTORIUM-INTEREST-3-BLR
	  Scenario: 2371-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-MOROTORIUM-INTEREST-3-BLR

	Given I setup the product loan "Setup"
		| Productloannavigation.xlsx |
	Then I entered the values into product loan from "ProductLoanInput" Sheet
		|2371-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-MOROTORIUM-INTEREST-3-BLR-Loanproduct.xlsx|
		 
	Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			| 2371-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-MOROTORIUM-INTEREST-3-BLR-Newcreateloan1.xlsx|
	  Then I verified the "Summary" details successfully 
	  			| 2371-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-MOROTORIUM-INTEREST-3-BLR-Newcreateloan1.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
	  			| 2371-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-MOROTORIUM-INTEREST-3-BLR-Newcreateloan1.xlsx|
	  			
@scenario9-2372-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-MOROTORIUM-PRINCIPAL+INT-3-BLR
	  Scenario: 2372-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-MOROTORIUM-PRINCIPAL+INT-3-BLR

	Given I setup the product loan "Setup"
		| Productloannavigation.xlsx |
	Then I entered the values into product loan from "ProductLoanInput" Sheet
		|2372-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-MOROTORIUM-PRINCIPAL+INT-3-BLR-Loanproduct.xlsx|
		 
	Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			| 2372-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-MOROTORIUM-PRINCIPAL+INT-3-BLR-Newcreateloan1.xlsx|
	  Then I verified the "Summary" details successfully 
	  			| 2372-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-MOROTORIUM-PRINCIPAL+INT-3-BLR-Newcreateloan1.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
	  			| 2372-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-MOROTORIUM-PRINCIPAL+INT-3-BLR-Newcreateloan1.xlsx|	

@scenario9-2373-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-PREPAY-ON-15-JAN-BLR
	  Scenario: 2373-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-PREPAY-ON-15-JAN-BLR

	Given I setup the product loan "Setup"
		| Productloannavigation.xlsx |
	Then I entered the values into product loan from "ProductLoanInput" Sheet
		|2373-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-PREPAY-ON-15-JAN-BLR-Loanproduct.xlsx|
		 
	Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			| 2373-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-PREPAY-ON-15-JAN-BLR-Newcreateloan1.xlsx|
	  Then I "Make Pre Payment" and verified the following tabs
	  			|2373-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-PREPAY-ON-15-JAN-BLR-Newcreateloan1.xlsx|Prepay Loan|Summary|Repayment Schedule|Transactions|
	  			
@scenario14-2374-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-OVERDUE-FEE-%LOANAMT+INT-BLR
	  Scenario: 2374-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-OVERDUE-FEE-%LOANAMT+INT-BLR  

	 Given I setup the product loan "Setup"
		| Productloannavigation.xlsx |
	 Then I entered the values into product loan from "ProductLoanInput" Sheet
		|2374-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-OVERDUE-FEE-%LOANAMT+INT-BLR-Loanproduct.xlsx|
	
	 Given I setup the clients 
	 Then I entered the values into client from "Input" sheet
		|Createclient.xlsx|
	 Then I should see client created successfully from "Output" sheet
		|Createclient.xlsx|
	 When I set up the new create loan from "NewLoanInput" sheet
		| 2374-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-OVERDUE-FEE-%LOANAMT+INT-BLR-Newcreateloan1.xlsx|
	 Then I navigate to scheduler job & execute "Apply penalty to overdue loans"
	 Then I verified the "Summary" details successfully 
		| 2374-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-OVERDUE-FEE-%LOANAMT+INT-BLR-Newcreateloan1.xlsx|
	 And I verified the "Repayment Schedule" details successfully 
		| 2374-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-OVERDUE-FEE-%LOANAMT+INT-BLR-Newcreateloan1.xlsx|
		
@scenario14-2375-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-3-ADD-TWO-TR-AFTER-DIS-BLR
	  Scenario: 2375-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-3-ADD-TWO-TR-AFTER-DIS-BLR  

	 Given I setup the product loan "Setup"
		| Productloannavigation.xlsx |
	 Then I entered the values into product loan from "ProductLoanInput" Sheet
		|2375-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-3-ADD-TWO-TR-AFTER-DIS-BLR-Loanproduct.xlsx|
	
	 Given I setup the clients 
	 Then I entered the values into client from "Input" sheet
		|Createclient.xlsx|
	 Then I should see client created successfully from "Output" sheet
		|Createclient.xlsx|
	 When I set up the new create loan from "NewLoanInput" sheet
		| 2375-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-3-ADD-TWO-TR-AFTER-DIS-BLR-Newcreateloan1.xlsx|
	 Then I verified the "Summary" details successfully 
		| 2375-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-3-ADD-TWO-TR-AFTER-DIS-BLR-Newcreateloan1.xlsx|
	 And I verified the "Repayment Schedule" details successfully 
		| 2375-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-3-ADD-TWO-TR-AFTER-DIS-BLR-Newcreateloan1.xlsx|
	 Then I "Add Third trance from trache tab" and verified the following tabs
	  			|2375-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-3-ADD-TWO-TR-AFTER-DIS-BLR-LoanTranche.xlsx|Loan Tranche Details|Summary|Repayment Schedule|Transactions|
		
@scenario12-2376-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-WaiveInterest-BLR
	  Scenario: 2376-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-WaiveInterest-BLR  

      Given I setup the product loan "Setup"
				| Productloannavigation.xlsx |
	  Then I entered the values into product loan from "ProductLoanInput" Sheet
				|2376-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-WaiveInterest-BLR-Loanproduct.xlsx|
      Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			| 2376-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-WaiveInterest-BLR-Newcreateloan1.xlsx|
	  Then I "WaiveInterest" and verified the following tabs
	  			| 2376-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-WaiveInterest-BLR-Newcreateloan1.xlsx|Modify Transaction|Summary|Repayment Schedule|Transactions|
	  			
@scenario13-2377-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-Writeoff-BLR
	  Scenario: 2377-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-Writeoff-BLR  

     Given I setup the product loan "Setup"
				| Productloannavigation.xlsx |
	  Then I entered the values into product loan from "ProductLoanInput" Sheet
				|2377-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-Writeoff-BLR-Loanproduct.xlsx|
      Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			| 2377-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-Writeoff-BLR-Newcreateloan1.xlsx|
	  Then I "WaiveInterest" and verified the following tabs
	  			| 2377-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-Writeoff-BLR-Newcreateloan1.xlsx|Modify Transaction|Summary|Repayment Schedule|Transactions|		
	  			
@scenario9-2378-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-EDIT-INT-From4thJan+Repayment0n-1jan-BLR
	  Scenario: 2378-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-EDIT-INT-From 4thJan+Repayment0n-1jan-BLR

	Given I setup the product loan "Setup"
		| Productloannavigation.xlsx |
	Then I entered the values into product loan from "ProductLoanInput" Sheet
		|2378-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-EDIT-INT-From 4thJan+Repayment0n-1jan-BLR-Loanproduct.xlsx|
		 
	Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			| 2378-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-EDIT-INT-From 4thJan+Repayment0n-1jan-BLR-Newcreateloan1.xlsx|
	  Then I verified the "Summary" details successfully 
	  			| 2378-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-EDIT-INT-From 4thJan+Repayment0n-1jan-BLR-Newcreateloan1.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
	  			| 2378-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-EDIT-INT-From 4thJan+Repayment0n-1jan-BLR-Newcreateloan1.xlsx|		    			
	  				  				  
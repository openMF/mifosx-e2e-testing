Feature:LoanMIFOS

Background:
	Given I navigate to mifos
	And I login into mifos site using "Login" excel sheet
		| Login.xlsx  |
	Then I should see logged in successfully

@scenario1-Loan-581-MS-EI-DB-DL-REC-NON-RNI-CTPD-SAR-MD-TR-1-EarlyRePayment	   
	  Scenario: Loan-581-MS-EI-DB-DL-REC-NON-RNI-CTPD-SAR-MD-TR-1-EarlyRePayment
	  
	  Given I setup the product loan "Setup"
				| Productloannavigation.xlsx |
	  Then I entered the values into product loan from "ProductLoanInput" Sheet
				|581-MS-EI-DB-DL-REC-NON-RNI-CTPD-SAR-MD-TR-1-EarlyRePayment-Loanproduct.xlsx|
	  Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			| 581-MS-EI-DB-DL-REC-NON-RNI-CTPD-SAR-MD-TR-1-EarlyRePayment-Newcreateloan.xlsx|
	  Then I verified the "Summary" details successfully 
	  			| 581-MS-EI-DB-DL-REC-NON-RNI-CTPD-SAR-MD-TR-1-EarlyRePayment-Newcreateloan.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
	  			| 581-MS-EI-DB-DL-REC-NON-RNI-CTPD-SAR-MD-TR-1-EarlyRePayment-Newcreateloan.xlsx|
	  Then I make repayment and verified the following tabs
       			|581-MS-EI-DB-DL-REC-NON-RNI-CTPD-SAR-MD-TR-1-EarlyRePayment-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
	  
@scenario2-Loan-582-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-EarlyRePayment		   
	  Scenario: Loan-582-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-EarlyRePayment
	  
	  Given I setup the product loan "Setup"
				| Productloannavigation.xlsx |
	  Then I entered the values into product loan from "ProductLoanInput" Sheet
				|582-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-EarlyRePayment-Loanproduct.xlsx|
	  Given I setup the clients 
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			| 582-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-EarlyRePayment-Newcreateloan.xlsx|
	  Then I verified the "Summary" details successfully 
	  			| 582-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-EarlyRePayment-Newcreateloan.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
	  			| 582-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-EarlyRePayment-Newcreateloan.xlsx|
	  When I make repayment and verified the following tabs
       			|582-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-EarlyRePayment-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
       			
@scenario3-Loan-583-MS-EI-DB-DL-REC-NON-RNI-CTRFD-SAR-MD-TR-1-EarlyRePayment		   
	  Scenario: Loan-583-MS-EI-DB-DL-REC-NON-RNI-CTRFD-SAR-MD-TR-1-EarlyRePayment
	  
	  Given I setup the product loan "Setup"
				| Productloannavigation.xlsx |
	  Then I entered the values into product loan from "ProductLoanInput" Sheet
				|583-MS-EI-DB-DL-REC-NON-RNI-CTRFD-SAR-MD-TR-1-EarlyRePayment-Loanproduct.xlsx|
	  Given I setup the clients 
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			| 583-MS-EI-DB-DL-REC-NON-RNI-CTRFD-SAR-MD-TR-1-EarlyRePayment-Newcreateloan.xlsx|
	  Then I verified the "Summary" details successfully 
	  			| 583-MS-EI-DB-DL-REC-NON-RNI-CTRFD-SAR-MD-TR-1-EarlyRePayment-Newcreateloan.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
	  			| 583-MS-EI-DB-DL-REC-NON-RNI-CTRFD-SAR-MD-TR-1-EarlyRePayment-Newcreateloan.xlsx|
	  When I make repayment and verified the following tabs
       			|583-MS-EI-DB-DL-REC-NON-RNI-CTRFD-SAR-MD-TR-1-EarlyRePayment-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
       			
@scenario4-Loan-584-MS-EI-DB-DL-REC-NON-RNI-CTRFD-DL-MD-TR-1-EarlyRePayment		   
	  Scenario: Loan-584-MS-EI-DB-DL-REC-NON-RNI-CTRFD-DL-MD-TR-1-EarlyRePayment
	  
	  Given I setup the product loan "Setup"
				| Productloannavigation.xlsx |
	  Then I entered the values into product loan from "ProductLoanInput" Sheet
				|584-MS-EI-DB-DL-REC-NON-RNI-CTRFD-DL-MD-TR-1-EarlyRePayment-Loanproduct.xlsx|
	  Given I setup the clients 
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			| 584-MS-EI-DB-DL-REC-NON-RNI-CTRFD-DL-MD-TR-1-EarlyRePayment-Newcreateloan.xlsx|
	  Then I verified the "Summary" details successfully 
	  			| 584-MS-EI-DB-DL-REC-NON-RNI-CTRFD-DL-MD-TR-1-EarlyRePayment-Newcreateloan.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
	  			| 584-MS-EI-DB-DL-REC-NON-RNI-CTRFD-DL-MD-TR-1-EarlyRePayment-Newcreateloan.xlsx|
	  When I make repayment and verified the following tabs
       			|584-MS-EI-DB-DL-REC-NON-RNI-CTRFD-DL-MD-TR-1-EarlyRePayment-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
 
@scenario5-Loan-629-MS-EI-DB-SAR-REC-NON-RNI-CTPD-SAR-MD-TR-1-EarlyRePayment		   
	  Scenario: Loan-629-MS-EI-DB-SAR-REC-NON-RNI-CTPD-SAR-MD-TR-1-EarlyRePayment
	  
	  Given I setup the product loan "Setup"
				| Productloannavigation.xlsx |
	  Then I entered the values into product loan from "ProductLoanInput" Sheet
				|629-MS-EI-DB-SAR-REC-NON-RNI-CTPD-SAR-MD-TR-1-EarlyRePayment-Loanproduct.xlsx|
	  Given I setup the clients 
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			| 629-MS-EI-DB-SAR-REC-NON-RNI-CTPD-SAR-MD-TR-1-EarlyRePayment-Newcreateloan.xlsx|
	  Then I verified the "Summary" details successfully 
	  			| 629-MS-EI-DB-SAR-REC-NON-RNI-CTPD-SAR-MD-TR-1-EarlyRePayment-Newcreateloan.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
	  			| 629-MS-EI-DB-SAR-REC-NON-RNI-CTPD-SAR-MD-TR-1-EarlyRePayment-Newcreateloan.xlsx|
	  When I make repayment and verified the following tabs
       			|629-MS-EI-DB-SAR-REC-NON-RNI-CTPD-SAR-MD-TR-1-EarlyRePayment-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|

@scenario6-Loan-630-MS-EI-DB-SAR-REC-NON-RNI-CTPD-DL-MD-TR-1-EarlyRePayment		   
	  Scenario: Loan-630-MS-EI-DB-SAR-REC-NON-RNI-CTPD-DL-MD-TR-1-EarlyRePayment
	  
	  Given I setup the product loan "Setup"
				| Productloannavigation.xlsx |
	  Then I entered the values into product loan from "ProductLoanInput" Sheet
				|630-MS-EI-DB-SAR-REC-NON-RNI-CTPD-DL-MD-TR-1-EarlyRePayment-Loanproduct.xlsx|
	  Given I setup the clients 
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			| 630-MS-EI-DB-SAR-REC-NON-RNI-CTPD-DL-MD-TR-1-EarlyRePayment-Newcreateloan.xlsx|
	  Then I verified the "Summary" details successfully 
	  			| 630-MS-EI-DB-SAR-REC-NON-RNI-CTPD-DL-MD-TR-1-EarlyRePayment-Newcreateloan.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
	  			| 630-MS-EI-DB-SAR-REC-NON-RNI-CTPD-DL-MD-TR-1-EarlyRePayment-Newcreateloan.xlsx|
	  When I make repayment and verified the following tabs
       			|630-MS-EI-DB-SAR-REC-NON-RNI-CTPD-DL-MD-TR-1-EarlyRePayment-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|

@scenario7-Loan-631-MS-EI-DB-SAR-REC-NON-RNI-CTRFD-SAR-MD-TR-1-EarlyRePayment		   
	  Scenario: Loan-631-MS-EI-DB-SAR-REC-NON-RNI-CTRFD-SAR-MD-TR-1-EarlyRePayment
	  
	  Given I setup the product loan "Setup"
				| Productloannavigation.xlsx |
	  Then I entered the values into product loan from "ProductLoanInput" Sheet
				|631-MS-EI-DB-SAR-REC-NON-RNI-CTRFD-SAR-MD-TR-1-EarlyRePayment-Loanproduct.xlsx|
	  Given I setup the clients 
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			| 631-MS-EI-DB-SAR-REC-NON-RNI-CTRFD-SAR-MD-TR-1-EarlyRePayment-Newcreateloan.xlsx|
	  Then I verified the "Summary" details successfully 
	  			| 631-MS-EI-DB-SAR-REC-NON-RNI-CTRFD-SAR-MD-TR-1-EarlyRePayment-Newcreateloan.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
	  			| 631-MS-EI-DB-SAR-REC-NON-RNI-CTRFD-SAR-MD-TR-1-EarlyRePayment-Newcreateloan.xlsx|
	  When I make repayment and verified the following tabs
       			|631-MS-EI-DB-SAR-REC-NON-RNI-CTRFD-SAR-MD-TR-1-EarlyRePayment-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|

@scenario8-Loan-632-MS-EI-DB-SAR-REC-NON-RNI-CTRFD-DL-MD-TR-1-EarlyRePayment		   
	  Scenario: Loan-632-MS-EI-DB-SAR-REC-NON-RNI-CTRFD-DL-MD-TR-1-EarlyRePayment
	  
	  Given I setup the product loan "Setup"
				| Productloannavigation.xlsx |
	  Then I entered the values into product loan from "ProductLoanInput" Sheet
				|632-MS-EI-DB-SAR-REC-NON-RNI-CTRFD-DL-MD-TR-1-EarlyRePayment-Loanproduct.xlsx|
	  Given I setup the clients 
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			| 632-MS-EI-DB-SAR-REC-NON-RNI-CTRFD-DL-MD-TR-1-EarlyRePayment-Newcreateloan.xlsx|
	  Then I verified the "Summary" details successfully 
	  			| 632-MS-EI-DB-SAR-REC-NON-RNI-CTRFD-DL-MD-TR-1-EarlyRePayment-Newcreateloan.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
	  			| 632-MS-EI-DB-SAR-REC-NON-RNI-CTRFD-DL-MD-TR-1-EarlyRePayment-Newcreateloan.xlsx|
	  When I make repayment and verified the following tabs
       			|632-MS-EI-DB-SAR-REC-NON-RNI-CTRFD-DL-MD-TR-1-EarlyRePayment-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
       			
@scenario9-Loan-677-MS-EPP-DB-DL-REC-NON-RNI-CTPD-SAR-MD-TR-1-EarlyRePayment	   
	  Scenario: Loan-677-MS-EPP-DB-DL-REC-NON-RNI-CTPD-SAR-MD-TR-1-EarlyRePayment-
	  
	  Given I setup the product loan "Setup"
				| Productloannavigation.xlsx |
	  Then I entered the values into product loan from "ProductLoanInput" Sheet
				|677-MS-EPP-DB-DL-REC-NON-RNI-CTPD-SAR-MD-TR-1-EarlyRePayment-Loanproduct.xlsx|
	  Given I setup the clients 
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			| 677-MS-EPP-DB-DL-REC-NON-RNI-CTPD-SAR-MD-TR-1-EarlyRePayment-Newcreateloan.xlsx|
	  			  
	  Then I verified the "Summary" details successfully 
	  			| 677-MS-EPP-DB-DL-REC-NON-RNI-CTPD-SAR-MD-TR-1-EarlyRePayment-Newcreateloan.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
	  			| 677-MS-EPP-DB-DL-REC-NON-RNI-CTPD-SAR-MD-TR-1-EarlyRePayment-Newcreateloan.xlsx|
	  When I make repayment and verified the following tabs
       			|677-MS-EPP-DB-DL-REC-NON-RNI-CTPD-SAR-MD-TR-1-EarlyRePayment-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
       			
@scenario10-Loan-678-MS-EPP-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-EarlyRePayment		   
	  Scenario: Loan-678-MS-EPP-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-EarlyRePayment
	  
	  Given I setup the product loan "Setup"
				| Productloannavigation.xlsx |
	  Then I entered the values into product loan from "ProductLoanInput" Sheet
				|678-MS-EPP-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-EarlyRePayment-Loanproduct.xlsx|
	  Given I setup the clients 
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			| 678-MS-EPP-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-EarlyRePayment-Newcreateloan.xlsx|
	  Then I verified the "Summary" details successfully 
	  			| 678-MS-EPP-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-EarlyRePayment-Newcreateloan.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
	  			| 678-MS-EPP-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-EarlyRePayment-Newcreateloan.xlsx|
	  When I make repayment and verified the following tabs
       			|678-MS-EPP-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-EarlyRePayment-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
       			
@scenario11-Loan-679-MS-EPP-DB-DL-REC-NON-RNI-CTRFD-SAR-MD-TR-1-EarlyRePayment		   
	  Scenario: Loan-679-MS-EPP-DB-DL-REC-NON-RNI-CTRFD-SAR-MD-TR-1-EarlyRePayment
	  
	  Given I setup the product loan "Setup"
				| Productloannavigation.xlsx |
	  Then I entered the values into product loan from "ProductLoanInput" Sheet
				|679-MS-EPP-DB-DL-REC-NON-RNI-CTRFD-SAR-MD-TR-1-EarlyRePayment-Loanproduct.xlsx|
	  Given I setup the clients 
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			| 679-MS-EPP-DB-DL-REC-NON-RNI-CTRFD-SAR-MD-TR-1-EarlyRePayment-Newcreateloan.xlsx|
	  Then I verified the "Summary" details successfully 
	  			| 679-MS-EPP-DB-DL-REC-NON-RNI-CTRFD-SAR-MD-TR-1-EarlyRePayment-Newcreateloan.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
	  			| 679-MS-EPP-DB-DL-REC-NON-RNI-CTRFD-SAR-MD-TR-1-EarlyRePayment-Newcreateloan.xlsx|
	  When I make repayment and verified the following tabs
       			|679-MS-EPP-DB-DL-REC-NON-RNI-CTRFD-SAR-MD-TR-1-EarlyRePayment-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
       			
@scenario12-Loan-680-MS-EPP-DB-DL-REC-NON-RNI-CTRFD-DL-MD-TR-1-EarlyRePayment		   
	  Scenario: Loan-680-MS-EPP-DB-DL-REC-NON-RNI-CTRFD-DL-MD-TR-1-EarlyRePayment
	  
	  Given I setup the product loan "Setup"
				| Productloannavigation.xlsx |
	  Then I entered the values into product loan from "ProductLoanInput" Sheet
				|680-MS-EPP-DB-DL-REC-NON-RNI-CTRFD-DL-MD-TR-1-EarlyRePayment-Loanproduct.xlsx|
	  Given I setup the clients 
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			| 680-MS-EPP-DB-DL-REC-NON-RNI-CTRFD-DL-MD-TR-1-EarlyRePayment-Newcreateloan.xlsx|
	  Then I verified the "Summary" details successfully 
	  			| 680-MS-EPP-DB-DL-REC-NON-RNI-CTRFD-DL-MD-TR-1-EarlyRePayment-Newcreateloan.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
	  			| 680-MS-EPP-DB-DL-REC-NON-RNI-CTRFD-DL-MD-TR-1-EarlyRePayment-Newcreateloan.xlsx|
	  When I make repayment and verified the following tabs
       			|680-MS-EPP-DB-DL-REC-NON-RNI-CTRFD-DL-MD-TR-1-EarlyRePayment-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
       			
@scenario13-Loan-725-MS-EPP-DB-SAR-REC-NON-RNI-CTPD-SAR-MD-TR-1-EarlyRePayment		   
	  Scenario: Loan-725-MS-EPP-DB-SAR-REC-NON-RNI-CTPD-SAR-MD-TR-1-EarlyRePayment
	  
	  Given I setup the product loan "Setup"
				| Productloannavigation.xlsx |
	  Then I entered the values into product loan from "ProductLoanInput" Sheet
				|725-MS-EPP-DB-SAR-REC-NON-RNI-CTPD-SAR-MD-TR-1-EarlyRePayment-Loanproduct.xlsx|
	  Given I setup the clients 
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			| 725-MS-EPP-DB-SAR-REC-NON-RNI-CTPD-SAR-MD-TR-1-EarlyRePayment-Newcreateloan.xlsx|
	  Then I verified the "Summary" details successfully 
	  			| 725-MS-EPP-DB-SAR-REC-NON-RNI-CTPD-SAR-MD-TR-1-EarlyRePayment-Newcreateloan.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
	  			| 725-MS-EPP-DB-SAR-REC-NON-RNI-CTPD-SAR-MD-TR-1-EarlyRePayment-Newcreateloan.xlsx|
	  When I make repayment and verified the following tabs
       			|725-MS-EPP-DB-SAR-REC-NON-RNI-CTPD-SAR-MD-TR-1-EarlyRePayment-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
       			
@scenario14-Loan-726-MS-EPP-DB-SAR-REC-NON-RNI-CTPD-DL-MD-TR-1-EarlyRePayment		   
	  Scenario: Loan-726-MS-EPP-DB-SAR-REC-NON-RNI-CTPD-DL-MD-TR-1-EarlyRePayment
	  
	  Given I setup the product loan "Setup"
				| Productloannavigation.xlsx |
	  Then I entered the values into product loan from "ProductLoanInput" Sheet
				|726-MS-EPP-DB-SAR-REC-NON-RNI-CTPD-DL-MD-TR-1-EarlyRePayment-Loanproduct.xlsx|
	  Given I setup the clients 
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			| 726-MS-EPP-DB-SAR-REC-NON-RNI-CTPD-DL-MD-TR-1-EarlyRePayment-Newcreateloan.xlsx|
	  Then I verified the "Summary" details successfully 
	  			| 726-MS-EPP-DB-SAR-REC-NON-RNI-CTPD-DL-MD-TR-1-EarlyRePayment-Newcreateloan.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
	  			| 726-MS-EPP-DB-SAR-REC-NON-RNI-CTPD-DL-MD-TR-1-EarlyRePayment-Newcreateloan.xlsx|
	  When I make repayment and verified the following tabs
       			|726-MS-EPP-DB-SAR-REC-NON-RNI-CTPD-DL-MD-TR-1-EarlyRePayment-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
       			
@scenario15-Loan-727-MS-EPP-DB-SAR-REC-NON-RNI-CTRFD-SAR-MD-TR-1-EarlyRePayment		   
	  Scenario: Loan-727-MS-EPP-DB-SAR-REC-NON-RNI-CTRFD-SAR-MD-TR-1-EarlyRePayment
	  
	  Given I setup the product loan "Setup"
				| Productloannavigation.xlsx |
	  Then I entered the values into product loan from "ProductLoanInput" Sheet
				|727-MS-EPP-DB-SAR-REC-NON-RNI-CTRFD-SAR-MD-TR-1-EarlyRePayment-Loanproduct.xlsx|
	  Given I setup the clients 
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			| 727-MS-EPP-DB-SAR-REC-NON-RNI-CTRFD-SAR-MD-TR-1-EarlyRePayment-Newcreateloan.xlsx|
	  Then I verified the "Summary" details successfully 
	  			| 727-MS-EPP-DB-SAR-REC-NON-RNI-CTRFD-SAR-MD-TR-1-EarlyRePayment-Newcreateloan.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
	  			| 727-MS-EPP-DB-SAR-REC-NON-RNI-CTRFD-SAR-MD-TR-1-EarlyRePayment-Newcreateloan.xlsx|
	  When I make repayment and verified the following tabs
       			|727-MS-EPP-DB-SAR-REC-NON-RNI-CTRFD-SAR-MD-TR-1-EarlyRePayment-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
       			
@scenario16-Loan-728-MS-EPP-DB-SAR-REC-NON-RNI-CTRFD-DL-MD-TR-1-EarlyRePayment		   
	  Scenario: Loan-728-MS-EPP-DB-SAR-REC-NON-RNI-CTRFD-DL-MD-TR-1-EarlyRePayment
	  
	  Given I setup the product loan "Setup"
				| Productloannavigation.xlsx |
	  Then I entered the values into product loan from "ProductLoanInput" Sheet
				|728-MS-EPP-DB-SAR-REC-NON-RNI-CTRFD-DL-MD-TR-1-EarlyRePayment-Loanproduct.xlsx|
	  Given I setup the clients 
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			| 728-MS-EPP-DB-SAR-REC-NON-RNI-CTRFD-DL-MD-TR-1-EarlyRePayment-Newcreateloan.xlsx|
	  Then I verified the "Summary" details successfully 
	  			| 728-MS-EPP-DB-SAR-REC-NON-RNI-CTRFD-DL-MD-TR-1-EarlyRePayment-Newcreateloan.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
	  			| 728-MS-EPP-DB-SAR-REC-NON-RNI-CTRFD-DL-MD-TR-1-EarlyRePayment-Newcreateloan.xlsx|
	  When I make repayment and verified the following tabs
       			|728-MS-EPP-DB-SAR-REC-NON-RNI-CTRFD-DL-MD-TR-1-EarlyRePayment-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
       			
@scenario17-Loan-197-MS-EI-DB-DL-REC-NON-RNI-CTPD-SAR-MD-TR-1-ONTIME		   
	  Scenario: Loan-197-MS-EI-DB-DL-REC-NON-RNI-CTPD-SAR-MD-TR-1-ONTIME
	  
	  Given I setup the product loan "Setup"
				| Productloannavigation.xlsx |
	  Then I entered the values into product loan from "ProductLoanInput" Sheet
				|197-MS-EI-DB-DL-REC-NON-RNI-CTPD-SAR-MD-TR-1-ONTIME-Loanproduct.xlsx|
	  Given I setup the clients 
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			| 197-MS-EI-DB-DL-REC-NON-RNI-CTPD-SAR-MD-TR-1-ONTIME-Newcreateloan.xlsx|
	  Then I verified the "Summary" details successfully 
	  			| 197-MS-EI-DB-DL-REC-NON-RNI-CTPD-SAR-MD-TR-1-ONTIME-Newcreateloan.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
	  			| 197-MS-EI-DB-DL-REC-NON-RNI-CTPD-SAR-MD-TR-1-ONTIME-Newcreateloan.xlsx|
	  When I make repayment and verified the following tabs
       			|197-MS-EI-DB-DL-REC-NON-RNI-CTPD-SAR-MD-TR-1-ONTIME-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
       			
@scenario18-Loan-198-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME		   
	  Scenario: Loan-198-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME
	  
	  Given I setup the product loan "Setup"
				| Productloannavigation.xlsx |
	  Then I entered the values into product loan from "ProductLoanInput" Sheet
				|198-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-Loanproduct.xlsx|
	  Given I setup the clients 
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			| 198-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-Newcreateloan.xlsx|
	  Then I verified the "Summary" details successfully 
	  			| 198-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-Newcreateloan.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
	  			| 198-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-Newcreateloan.xlsx|
	  When I make repayment and verified the following tabs
       			|198-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
       			
@scenario19-Loan-199-MS-EI-DB-DL-REC-NON-RNI-CTRFD-SAR-MD-TR-1-ONTIME		   
	  Scenario: Loan-199-MS-EI-DB-DL-REC-NON-RNI-CTRFD-SAR-MD-TR-1-ONTIME
	  
	  Given I setup the product loan "Setup"
				| Productloannavigation.xlsx |
	  Then I entered the values into product loan from "ProductLoanInput" Sheet
				|199-MS-EI-DB-DL-REC-NON-RNI-CTRFD-SAR-MD-TR-1-ONTIME-Loanproduct.xlsx|
	  Given I setup the clients 
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			| 199-MS-EI-DB-DL-REC-NON-RNI-CTRFD-SAR-MD-TR-1-ONTIME-Newcreateloan.xlsx|
	  Then I verified the "Summary" details successfully 
	  			| 199-MS-EI-DB-DL-REC-NON-RNI-CTRFD-SAR-MD-TR-1-ONTIME-Newcreateloan.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
	  			| 199-MS-EI-DB-DL-REC-NON-RNI-CTRFD-SAR-MD-TR-1-ONTIME-Newcreateloan.xlsx|
	  When I make repayment and verified the following tabs
       			|199-MS-EI-DB-DL-REC-NON-RNI-CTRFD-SAR-MD-TR-1-ONTIME-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
       			
@scenario20-Loan-200-MS-EI-DB-DL-REC-NON-RNI-CTRFD-DL-MD-TR-1-ONTIME		   
	  Scenario: Loan-200-MS-EI-DB-DL-REC-NON-RNI-CTRFD-DL-MD-TR-1-ONTIME
	  
	  Given I setup the product loan "Setup"
				| Productloannavigation.xlsx |
	  Then I entered the values into product loan from "ProductLoanInput" Sheet
				|200-MS-EI-DB-DL-REC-NON-RNI-CTRFD-DL-MD-TR-1-ONTIME-Loanproduct.xlsx|
	  Given I setup the clients 
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			| 200-MS-EI-DB-DL-REC-NON-RNI-CTRFD-DL-MD-TR-1-ONTIME-Newcreateloan.xlsx|
	  Then I verified the "Summary" details successfully 
	  			| 200-MS-EI-DB-DL-REC-NON-RNI-CTRFD-DL-MD-TR-1-ONTIME-Newcreateloan.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
	  			| 200-MS-EI-DB-DL-REC-NON-RNI-CTRFD-DL-MD-TR-1-ONTIME-Newcreateloan.xlsx|
	  When I make repayment and verified the following tabs
       			|200-MS-EI-DB-DL-REC-NON-RNI-CTRFD-DL-MD-TR-1-ONTIME-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
       			
@scenario21-Loan-245-MS-EI-DB-SAR-REC-NON-RNI-CTPD-SAR-MD-TR-1-ONTIME		   
	  Scenario: Loan-245-MS-EI-DB-SAR-REC-NON-RNI-CTPD-SAR-MD-TR-1-ONTIME
	  
	  Given I setup the product loan "Setup"
				| Productloannavigation.xlsx |
	  Then I entered the values into product loan from "ProductLoanInput" Sheet
				|245-MS-EI-DB-SAR-REC-NON-RNI-CTPD-SAR-MD-TR-1-ONTIME-Loanproduct.xlsx|
	  Given I setup the clients 
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			| 245-MS-EI-DB-SAR-REC-NON-RNI-CTPD-SAR-MD-TR-1-ONTIME-Newcreateloan.xlsx|
	  Then I verified the "Summary" details successfully 
	  			| 245-MS-EI-DB-SAR-REC-NON-RNI-CTPD-SAR-MD-TR-1-ONTIME-Newcreateloan.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
	  			| 245-MS-EI-DB-SAR-REC-NON-RNI-CTPD-SAR-MD-TR-1-ONTIME-Newcreateloan.xlsx|
	  When I make repayment and verified the following tabs
       			|245-MS-EI-DB-SAR-REC-NON-RNI-CTPD-SAR-MD-TR-1-ONTIME-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
       			
@scenario22-Loan-246-MS-EI-DB-SAR-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME		   
	  Scenario: Loan-246-MS-EI-DB-SAR-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME
	  
	  Given I setup the product loan "Setup"
				| Productloannavigation.xlsx |
	  Then I entered the values into product loan from "ProductLoanInput" Sheet
				|246-MS-EI-DB-SAR-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-Loanproduct.xlsx|
	  Given I setup the clients 
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			| 246-MS-EI-DB-SAR-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-Newcreateloan.xlsx|
	  Then I verified the "Summary" details successfully 
	  			| 246-MS-EI-DB-SAR-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-Newcreateloan.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
	  			| 246-MS-EI-DB-SAR-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-Newcreateloan.xlsx|
	  When I make repayment and verified the following tabs
       			|246-MS-EI-DB-SAR-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
       			
@scenario23-Loan-247-MS-EI-DB-SAR-REC-NON-RNI-CTRFD-SAR-MD-TR-1-ONTIME		   
	  Scenario: Loan-247-MS-EI-DB-SAR-REC-NON-RNI-CTRFD-SAR-MD-TR-1-ONTIME
	  
	  Given I setup the product loan "Setup"
				| Productloannavigation.xlsx |
	  Then I entered the values into product loan from "ProductLoanInput" Sheet
				|247-MS-EI-DB-SAR-REC-NON-RNI-CTRFD-SAR-MD-TR-1-ONTIME-Loanproduct.xlsx|
	  Given I setup the clients 
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			| 247-MS-EI-DB-SAR-REC-NON-RNI-CTRFD-SAR-MD-TR-1-ONTIME-Newcreateloan.xlsx|
	  Then I verified the "Summary" details successfully 
	  			| 247-MS-EI-DB-SAR-REC-NON-RNI-CTRFD-SAR-MD-TR-1-ONTIME-Newcreateloan.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
	  			| 247-MS-EI-DB-SAR-REC-NON-RNI-CTRFD-SAR-MD-TR-1-ONTIME-Newcreateloan.xlsx|
	  When I make repayment and verified the following tabs
       			|247-MS-EI-DB-SAR-REC-NON-RNI-CTRFD-SAR-MD-TR-1-ONTIME-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
       			
@scenario24-Loan-248-MS-EI-DB-SAR-REC-NON-RNI-CTRFD-DL-MD-TR-1-ONTIME		   
	  Scenario: Loan-248-MS-EI-DB-SAR-REC-NON-RNI-CTRFD-DL-MD-TR-1-ONTIME
	  
	  Given I setup the product loan "Setup"
				| Productloannavigation.xlsx |
	  Then I entered the values into product loan from "ProductLoanInput" Sheet
				|248-MS-EI-DB-SAR-REC-NON-RNI-CTRFD-DL-MD-TR-1-ONTIME-Loanproduct.xlsx|
	  Given I setup the clients 
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			| 248-MS-EI-DB-SAR-REC-NON-RNI-CTRFD-DL-MD-TR-1-ONTIME-Newcreateloan.xlsx|
	  Then I verified the "Summary" details successfully 
	  			| 248-MS-EI-DB-SAR-REC-NON-RNI-CTRFD-DL-MD-TR-1-ONTIME-Newcreateloan.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
	  			| 248-MS-EI-DB-SAR-REC-NON-RNI-CTRFD-DL-MD-TR-1-ONTIME-Newcreateloan.xlsx|
	  When I make repayment and verified the following tabs
       			|248-MS-EI-DB-SAR-REC-NON-RNI-CTRFD-DL-MD-TR-1-ONTIME-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
       			
@scenario25-Loan-293-MS-EPP-DB-DL-REC-NON-RNI-CTPD-SAR-MD-TR-1-ONTIME		   
	  Scenario: Loan-293-MS-EPP-DB-DL-REC-NON-RNI-CTPD-SAR-MD-TR-1-ONTIME
	  
	  Given I setup the product loan "Setup"
				| Productloannavigation.xlsx |
	  Then I entered the values into product loan from "ProductLoanInput" Sheet
				|293-MS-EPP-DB-DL-REC-NON-RNI-CTPD-SAR-MD-TR-1-ONTIME-Loanproduct.xlsx|
	  Given I setup the clients 
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			| 293-MS-EPP-DB-DL-REC-NON-RNI-CTPD-SAR-MD-TR-1-ONTIME-Newcreateloan.xlsx|
	  Then I verified the "Summary" details successfully 
	  			| 293-MS-EPP-DB-DL-REC-NON-RNI-CTPD-SAR-MD-TR-1-ONTIME-Newcreateloan.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
	  			| 293-MS-EPP-DB-DL-REC-NON-RNI-CTPD-SAR-MD-TR-1-ONTIME-Newcreateloan.xlsx|
	  When I make repayment and verified the following tabs
       			|293-MS-EPP-DB-DL-REC-NON-RNI-CTPD-SAR-MD-TR-1-ONTIME-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
       			
@scenario26-Loan-294-MS-EPP-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME		   
	  Scenario: Loan-294-MS-EPP-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME
	  
	  Given I setup the product loan "Setup"
				| Productloannavigation.xlsx |
	  Then I entered the values into product loan from "ProductLoanInput" Sheet
				|294-MS-EPP-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-Loanproduct.xlsx|
	  Given I setup the clients 
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			| 294-MS-EPP-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-Newcreateloan.xlsx|
	  Then I verified the "Summary" details successfully 
	  			| 294-MS-EPP-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-Newcreateloan.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
	  			| 294-MS-EPP-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-Newcreateloan.xlsx|
	  When I make repayment and verified the following tabs
       			|294-MS-EPP-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
       			
@scenario27-Loan-295-MS-EPP-DB-DL-REC-NON-RNI-CTRFD-SAR-MD-TR-1-ONTIME		   
	  Scenario: Loan-295-MS-EPP-DB-DL-REC-NON-RNI-CTRFD-SAR-MD-TR-1-ONTIME
	  
	  Given I setup the product loan "Setup"
				| Productloannavigation.xlsx |
	  Then I entered the values into product loan from "ProductLoanInput" Sheet
				|295-MS-EPP-DB-DL-REC-NON-RNI-CTRFD-SAR-MD-TR-1-ONTIME-Loanproduct.xlsx|
	  Given I setup the clients 
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			| 295-MS-EPP-DB-DL-REC-NON-RNI-CTRFD-SAR-MD-TR-1-ONTIME-Newcreateloan.xlsx|
	  Then I verified the "Summary" details successfully 
	  			| 295-MS-EPP-DB-DL-REC-NON-RNI-CTRFD-SAR-MD-TR-1-ONTIME-Newcreateloan.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
	  			| 295-MS-EPP-DB-DL-REC-NON-RNI-CTRFD-SAR-MD-TR-1-ONTIME-Newcreateloan.xlsx|
	  When I make repayment and verified the following tabs
       			|295-MS-EPP-DB-DL-REC-NON-RNI-CTRFD-SAR-MD-TR-1-ONTIME-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
       			
@scenario28-Loan-296-MS-EPP-DB-DL-REC-NON-RNI-CTRFD-DL-MD-TR-1-ONTIME		   
	  Scenario: Loan-296-MS-EPP-DB-DL-REC-NON-RNI-CTRFD-DL-MD-TR-1-ONTIME
	  
	  Given I setup the product loan "Setup"
				| Productloannavigation.xlsx |
	  Then I entered the values into product loan from "ProductLoanInput" Sheet
				|296-MS-EPP-DB-DL-REC-NON-RNI-CTRFD-DL-MD-TR-1-ONTIME-Loanproduct.xlsx|
	  Given I setup the clients 
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			| 296-MS-EPP-DB-DL-REC-NON-RNI-CTRFD-DL-MD-TR-1-ONTIME-Newcreateloan.xlsx|
	  Then I verified the "Summary" details successfully 
	  			| 296-MS-EPP-DB-DL-REC-NON-RNI-CTRFD-DL-MD-TR-1-ONTIME-Newcreateloan.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
	  			| 296-MS-EPP-DB-DL-REC-NON-RNI-CTRFD-DL-MD-TR-1-ONTIME-Newcreateloan.xlsx|
	  When I make repayment and verified the following tabs
       			|296-MS-EPP-DB-DL-REC-NON-RNI-CTRFD-DL-MD-TR-1-ONTIME-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
       			
@scenario29-Loan-341-MS-EPP-DB-SAR-REC-NON-RNI-CTPD-SAR-MD-TR-1-ONTIME		   
	  Scenario: Loan-341-MS-EPP-DB-SAR-REC-NON-RNI-CTPD-SAR-MD-TR-1-ONTIME
	  
	   Given I setup the product loan "Setup"
				| Productloannavigation.xlsx |
	  Then I entered the values into product loan from "ProductLoanInput" Sheet
				|341-MS-EPP-DB-SAR-REC-NON-RNI-CTPD-SAR-MD-TR-1-ONTIME-Loanproduct.xlsx|
	  Given I setup the clients 
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			| 341-MS-EPP-DB-SAR-REC-NON-RNI-CTPD-SAR-MD-TR-1-ONTIME-Newcreateloan.xlsx|
	  Then I verified the "Summary" details successfully 
	  			| 341-MS-EPP-DB-SAR-REC-NON-RNI-CTPD-SAR-MD-TR-1-ONTIME-Newcreateloan.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
	  			| 341-MS-EPP-DB-SAR-REC-NON-RNI-CTPD-SAR-MD-TR-1-ONTIME-Newcreateloan.xlsx|
	  When I make repayment and verified the following tabs
       			|341-MS-EPP-DB-SAR-REC-NON-RNI-CTPD-SAR-MD-TR-1-ONTIME-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
       			
@scenario30-Loan-342-MS-EPP-DB-SAR-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME		   
	  Scenario: Loan-342-MS-EPP-DB-SAR-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME
	  
	  Given I setup the product loan "Setup"
				| Productloannavigation.xlsx |
	  Then I entered the values into product loan from "ProductLoanInput" Sheet
				|342-MS-EPP-DB-SAR-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-Loanproduct.xlsx|
	  Given I setup the clients 
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			| 342-MS-EPP-DB-SAR-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-Newcreateloan.xlsx|
	  Then I verified the "Summary" details successfully 
	  			| 342-MS-EPP-DB-SAR-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-Newcreateloan.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
	  			| 342-MS-EPP-DB-SAR-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-Newcreateloan.xlsx|
	  When I make repayment and verified the following tabs
       			|342-MS-EPP-DB-SAR-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
       			
@scenario31-Loan-343-MS-EPP-DB-SAR-REC-NON-RNI-CTRFD-SAR-MD-TR-1-ONTIME		   
	  Scenario: Loan-343-MS-EPP-DB-SAR-REC-NON-RNI-CTRFD-SAR-MD-TR-1-ONTIME
	  
	  Given I setup the product loan "Setup"
				| Productloannavigation.xlsx |
	  Then I entered the values into product loan from "ProductLoanInput" Sheet
				|343-MS-EPP-DB-SAR-REC-NON-RNI-CTRFD-SAR-MD-TR-1-ONTIME-Loanproduct.xlsx|
	  Given I setup the clients 
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			| 343-MS-EPP-DB-SAR-REC-NON-RNI-CTRFD-SAR-MD-TR-1-ONTIME-Newcreateloan.xlsx|
	  Then I verified the "Summary" details successfully 
	  			| 343-MS-EPP-DB-SAR-REC-NON-RNI-CTRFD-SAR-MD-TR-1-ONTIME-Newcreateloan.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
	  			| 343-MS-EPP-DB-SAR-REC-NON-RNI-CTRFD-SAR-MD-TR-1-ONTIME-Newcreateloan.xlsx|
	  When I make repayment and verified the following tabs
       			|343-MS-EPP-DB-SAR-REC-NON-RNI-CTRFD-SAR-MD-TR-1-ONTIME-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
       			
@scenario32-Loan-344-MS-EPP-DB-SAR-REC-NON-RNI-CTRFD-DL-MD-TR-1-ONTIME		   
	  Scenario: Loan-344-MS-EPP-DB-SAR-REC-NON-RNI-CTRFD-DL-MD-TR-1-ONTIME
	  
	  Given I setup the product loan "Setup"
				| Productloannavigation.xlsx |
	  Then I entered the values into product loan from "ProductLoanInput" Sheet
				|344-MS-EPP-DB-SAR-REC-NON-RNI-CTRFD-DL-MD-TR-1-ONTIME-Loanproduct.xlsx|
	  Given I setup the clients 
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			| 344-MS-EPP-DB-SAR-REC-NON-RNI-CTRFD-DL-MD-TR-1-ONTIME-Newcreateloan.xlsx|
	  Then I verified the "Summary" details successfully 
	  			| 344-MS-EPP-DB-SAR-REC-NON-RNI-CTRFD-DL-MD-TR-1-ONTIME-Newcreateloan.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
	  			| 344-MS-EPP-DB-SAR-REC-NON-RNI-CTRFD-DL-MD-TR-1-ONTIME-Newcreateloan.xlsx|
	  When I make repayment and verified the following tabs
       			|344-MS-EPP-DB-SAR-REC-NON-RNI-CTRFD-DL-MD-TR-1-ONTIME-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
       			
@scenario33-Loan-965-MS-EI-DB-DL-REC-NON-RNI-CTPD-SAR-MD-TR-1-LateRepayment		   
	  Scenario: Loan-965-MS-EI-DB-DL-REC-NON-RNI-CTPD-SAR-MD-TR-1-LateRepayment
	  
	  Given I setup the product loan "Setup"
				| Productloannavigation.xlsx |
	  Then I entered the values into product loan from "ProductLoanInput" Sheet
				|965-MS-EI-DB-DL-REC-NON-RNI-CTPD-SAR-MD-TR-1-LateRepayment-Loanproduct.xlsx|
	  Given I setup the clients 
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			| 965-MS-EI-DB-DL-REC-NON-RNI-CTPD-SAR-MD-TR-1-LateRepayment-Newcreateloan.xlsx|
	  Then I verified the "Summary" details successfully 
	  			| 965-MS-EI-DB-DL-REC-NON-RNI-CTPD-SAR-MD-TR-1-LateRepayment-Newcreateloan.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
	  			| 965-MS-EI-DB-DL-REC-NON-RNI-CTPD-SAR-MD-TR-1-LateRepayment-Newcreateloan.xlsx|
	  When I make repayment and verified the following tabs
       			|965-MS-EI-DB-DL-REC-NON-RNI-CTPD-SAR-MD-TR-1-LateRepayment-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
      
@scenario34-Loan-966-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-LateRepayment
	  Scenario: Loan-966-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-LateRepayment
	  
	  Given I setup the product loan "Setup"
				| Productloannavigation.xlsx |
	  Then I entered the values into product loan from "ProductLoanInput" Sheet
				|966-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-LateRepayment-Loanproduct.xlsx|
	  Given I setup the clients 
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			| 966-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-LateRepayment-Newcreateloan.xlsx|
	  Then I verified the "Summary" details successfully 
	  			| 966-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-LateRepayment-Newcreateloan.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
	  			| 966-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-LateRepayment-Newcreateloan.xlsx|
	  When I make repayment and verified the following tabs
       			|966-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-LateRepayment-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
       			 			
			
@scenario35-Loan-967-MS-EI-DB-DL-REC-NON-RNI-CTRFD-SAR-MD-TR-1-LateRepayment		   
	  Scenario: Loan-967-MS-EI-DB-DL-REC-NON-RNI-CTRFD-SAR-MD-TR-1-LateRepayment
	  
	  Given I setup the product loan "Setup"
				| Productloannavigation.xlsx |
	  Then I entered the values into product loan from "ProductLoanInput" Sheet
				|967-MS-EI-DB-DL-REC-NON-RNI-CTRFD-SAR-MD-TR-1-LateRepayment-Loanproduct.xlsx|
	  Given I setup the clients 
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			| 967-MS-EI-DB-DL-REC-NON-RNI-CTRFD-SAR-MD-TR-1-LateRepayment-Newcreateloan.xlsx|
	  Then I verified the "Summary" details successfully 
	  			| 967-MS-EI-DB-DL-REC-NON-RNI-CTRFD-SAR-MD-TR-1-LateRepayment-Newcreateloan.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
	  			| 967-MS-EI-DB-DL-REC-NON-RNI-CTRFD-SAR-MD-TR-1-LateRepayment-Newcreateloan.xlsx|
	  When I make repayment and verified the following tabs
       			|967-MS-EI-DB-DL-REC-NON-RNI-CTRFD-SAR-MD-TR-1-LateRepayment-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
       			
@scenario36-Loan-968-MS-EI-DB-DL-REC-NON-RNI-CTRFD-DL-MD-TR-1-LateRepayment		   
	  Scenario: Loan-968-MS-EI-DB-DL-REC-NON-RNI-CTRFD-DL-MD-TR-1-LateRepayment
	  
	  Given I setup the product loan "Setup"
				| Productloannavigation.xlsx |
	  Then I entered the values into product loan from "ProductLoanInput" Sheet
				|968-MS-EI-DB-DL-REC-NON-RNI-CTRFD-DL-MD-TR-1-LateRepayment-Loanproduct.xlsx|
	  Given I setup the clients 
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			| 968-MS-EI-DB-DL-REC-NON-RNI-CTRFD-DL-MD-TR-1-LateRepayment-Newcreateloan.xlsx|
	  Then I verified the "Summary" details successfully 
	  			| 968-MS-EI-DB-DL-REC-NON-RNI-CTRFD-DL-MD-TR-1-LateRepayment-Newcreateloan.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
	  			| 968-MS-EI-DB-DL-REC-NON-RNI-CTRFD-DL-MD-TR-1-LateRepayment-Newcreateloan.xlsx|
	  When I make repayment and verified the following tabs
       			|968-MS-EI-DB-DL-REC-NON-RNI-CTRFD-DL-MD-TR-1-LateRepayment-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
       			
@scenario37-Loan-1013-MS-EI-DB-SAR-REC-NON-RNI-CTPD-SAR-MD-TR-1-LateRepayment		   
	  Scenario: Loan-1013-MS-EI-DB-SAR-REC-NON-RNI-CTPD-SAR-MD-TR-1-LateRepayment
	  
	  Given I setup the product loan "Setup"
				| Productloannavigation.xlsx |
	  Then I entered the values into product loan from "ProductLoanInput" Sheet
				|1013-MS-EI-DB-SAR-REC-NON-RNI-CTPD-SAR-MD-TR-1-LateRepayment-Loanproduct.xlsx|
	  Given I setup the clients 
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			| 1013-MS-EI-DB-SAR-REC-NON-RNI-CTPD-SAR-MD-TR-1-LateRepayment-Newcreateloan.xlsx|
	  Then I verified the "Summary" details successfully 
	  			| 1013-MS-EI-DB-SAR-REC-NON-RNI-CTPD-SAR-MD-TR-1-LateRepayment-Newcreateloan.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
	  			| 1013-MS-EI-DB-SAR-REC-NON-RNI-CTPD-SAR-MD-TR-1-LateRepayment-Newcreateloan.xlsx|
	  When I make repayment and verified the following tabs
       			|1013-MS-EI-DB-SAR-REC-NON-RNI-CTPD-SAR-MD-TR-1-LateRepayment-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
       			
@scenario38-Loan-1014-MS-EI-DB-SAR-REC-NON-RNI-CTPD-DL-MD-TR-1-LateRepayment		   
	  Scenario: Loan-1014-MS-EI-DB-SAR-REC-NON-RNI-CTPD-DL-MD-TR-1-LateRepayment
	  
	  Given I setup the product loan "Setup"
				| Productloannavigation.xlsx |
	  Then I entered the values into product loan from "ProductLoanInput" Sheet
				|1014-MS-EI-DB-SAR-REC-NON-RNI-CTPD-DL-MD-TR-1-LateRepayment-Loanproduct.xlsx|
	  Given I setup the clients 
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			| 1014-MS-EI-DB-SAR-REC-NON-RNI-CTPD-DL-MD-TR-1-LateRepayment-Newcreateloan.xlsx|
	  Then I verified the "Summary" details successfully 
	  			| 1014-MS-EI-DB-SAR-REC-NON-RNI-CTPD-DL-MD-TR-1-LateRepayment-Newcreateloan.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
	  			| 1014-MS-EI-DB-SAR-REC-NON-RNI-CTPD-DL-MD-TR-1-LateRepayment-Newcreateloan.xlsx|
	  When I make repayment and verified the following tabs
       			|1014-MS-EI-DB-SAR-REC-NON-RNI-CTPD-DL-MD-TR-1-LateRepayment-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
       			
@scenario39-Loan-1015-MS-EI-DB-SAR-REC-NON-RNI-CTRFD-SAR-MD-TR-1-LateRepayment		   
	  Scenario: Loan-1015-MS-EI-DB-SAR-REC-NON-RNI-CTRFD-SAR-MD-TR-1-LateRepayment
	  
	  Given I setup the product loan "Setup"
				| Productloannavigation.xlsx |
	  Then I entered the values into product loan from "ProductLoanInput" Sheet
				|1015-MS-EI-DB-SAR-REC-NON-RNI-CTRFD-SAR-MD-TR-1-LateRepayment-Loanproduct.xlsx|
	  Given I setup the clients 
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			| 1015-MS-EI-DB-SAR-REC-NON-RNI-CTRFD-SAR-MD-TR-1-LateRepayment-Newcreateloan.xlsx|
	  Then I verified the "Summary" details successfully 
	  			| 1015-MS-EI-DB-SAR-REC-NON-RNI-CTRFD-SAR-MD-TR-1-LateRepayment-Newcreateloan.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
	  			| 1015-MS-EI-DB-SAR-REC-NON-RNI-CTRFD-SAR-MD-TR-1-LateRepayment-Newcreateloan.xlsx|
	  When I make repayment and verified the following tabs
       			|1015-MS-EI-DB-SAR-REC-NON-RNI-CTRFD-SAR-MD-TR-1-LateRepayment-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
       			
@scenario40-Loan-1016-MS-EI-DB-SAR-REC-NON-RNI-CTRFD-DL-MD-TR-1-LateRepayment		   
	  Scenario: Loan-1016-MS-EI-DB-SAR-REC-NON-RNI-CTRFD-DL-MD-TR-1-LateRepayment
	  
	  Given I setup the product loan "Setup"
				| Productloannavigation.xlsx |
	  Then I entered the values into product loan from "ProductLoanInput" Sheet
				|1016-MS-EI-DB-SAR-REC-NON-RNI-CTRFD-DL-MD-TR-1-LateRepayment-Loanproduct.xlsx|
	  Given I setup the clients 
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			| 1016-MS-EI-DB-SAR-REC-NON-RNI-CTRFD-DL-MD-TR-1-LateRepayment-Newcreateloan.xlsx|
	  Then I verified the "Summary" details successfully 
	  			| 1016-MS-EI-DB-SAR-REC-NON-RNI-CTRFD-DL-MD-TR-1-LateRepayment-Newcreateloan.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
	  			| 1016-MS-EI-DB-SAR-REC-NON-RNI-CTRFD-DL-MD-TR-1-LateRepayment-Newcreateloan.xlsx|
	  When I make repayment and verified the following tabs
       			|1016-MS-EI-DB-SAR-REC-NON-RNI-CTRFD-DL-MD-TR-1-LateRepayment-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
       			
@scenario41-Loan-1061-MS-EPP-DB-DL-REC-NON-RNI-CTPD-SAR-MD-TR-1-LateRepayment		   
	  Scenario: Loan-1061-MS-EPP-DB-DL-REC-NON-RNI-CTPD-SAR-MD-TR-1-LateRepayment
	  
	  Given I setup the product loan "Setup"
				| Productloannavigation.xlsx |
	  Then I entered the values into product loan from "ProductLoanInput" Sheet
				|1061-MS-EPP-DB-DL-REC-NON-RNI-CTPD-SAR-MD-TR-1-LateRepayment-Loanproduct.xlsx|
	  Given I setup the clients 
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			| 1061-MS-EPP-DB-DL-REC-NON-RNI-CTPD-SAR-MD-TR-1-LateRepayment-Newcreateloan.xlsx|
	  Then I verified the "Summary" details successfully 
	  			| 1061-MS-EPP-DB-DL-REC-NON-RNI-CTPD-SAR-MD-TR-1-LateRepayment-Newcreateloan.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
	  			| 1061-MS-EPP-DB-DL-REC-NON-RNI-CTPD-SAR-MD-TR-1-LateRepayment-Newcreateloan.xlsx|
	  When I make repayment and verified the following tabs
       			|1061-MS-EPP-DB-DL-REC-NON-RNI-CTPD-SAR-MD-TR-1-LateRepayment-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
       			
@scenario42-Loan-1062-MS-EPP-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-LateRepayment		   
	  Scenario: Loan-1062-MS-EPP-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-LateRepayment
	  
	  Given I setup the product loan "Setup"
				| Productloannavigation.xlsx |
	  Then I entered the values into product loan from "ProductLoanInput" Sheet
				|1062-MS-EPP-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-LateRepayment-Loanproduct.xlsx|
	  Given I setup the clients 
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			| 1062-MS-EPP-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-LateRepayment-Newcreateloan.xlsx|
	  Then I verified the "Summary" details successfully 
	  			| 1062-MS-EPP-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-LateRepayment-Newcreateloan.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
	  			| 1062-MS-EPP-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-LateRepayment-Newcreateloan.xlsx|
	  When I make repayment and verified the following tabs
       			|1062-MS-EPP-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-LateRepayment-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
       			
@scenario43-Loan-1063-MS-EPP-DB-DL-REC-NON-RNI-CTRFD-SAR-MD-TR-1-LateRepayment		   
	  Scenario: Loan-1063-MS-EPP-DB-DL-REC-NON-RNI-CTRFD-SAR-MD-TR-1-LateRepayment
	  
	  Given I setup the product loan "Setup"
				| Productloannavigation.xlsx |
	  Then I entered the values into product loan from "ProductLoanInput" Sheet
				|1063-MS-EPP-DB-DL-REC-NON-RNI-CTRFD-SAR-MD-TR-1-LateRepayment-Loanproduct.xlsx|
	  Given I setup the clients 
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			| 1063-MS-EPP-DB-DL-REC-NON-RNI-CTRFD-SAR-MD-TR-1-LateRepayment-Newcreateloan.xlsx|
	  Then I verified the "Summary" details successfully 
	  			| 1063-MS-EPP-DB-DL-REC-NON-RNI-CTRFD-SAR-MD-TR-1-LateRepayment-Newcreateloan.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
	  			| 1063-MS-EPP-DB-DL-REC-NON-RNI-CTRFD-SAR-MD-TR-1-LateRepayment-Newcreateloan.xlsx|
	  When I make repayment and verified the following tabs
       			|1063-MS-EPP-DB-DL-REC-NON-RNI-CTRFD-SAR-MD-TR-1-LateRepayment-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
       			
@scenario44-Loan-1064-MS-EPP-DB-DL-REC-NON-RNI-CTRFD-DL-MD-TR-1-LateRepayment		   
	  Scenario: Loan-1064-MS-EPP-DB-DL-REC-NON-RNI-CTRFD-DL-MD-TR-1-LateRepayment
	  
	  Given I setup the product loan "Setup"
				| Productloannavigation.xlsx |
	  Then I entered the values into product loan from "ProductLoanInput" Sheet
				|1064-MS-EPP-DB-DL-REC-NON-RNI-CTRFD-DL-MD-TR-1-LateRepayment-Loanproduct.xlsx|
	  Given I setup the clients 
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			| 1064-MS-EPP-DB-DL-REC-NON-RNI-CTRFD-DL-MD-TR-1-LateRepayment-Newcreateloan.xlsx|
	  Then I verified the "Summary" details successfully 
	  			| 1064-MS-EPP-DB-DL-REC-NON-RNI-CTRFD-DL-MD-TR-1-LateRepayment-Newcreateloan.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
	  			| 1064-MS-EPP-DB-DL-REC-NON-RNI-CTRFD-DL-MD-TR-1-LateRepayment-Newcreateloan.xlsx|
	  When I make repayment and verified the following tabs
       			|1064-MS-EPP-DB-DL-REC-NON-RNI-CTRFD-DL-MD-TR-1-LateRepayment-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
       			
@scenario45-Loan-1109-MS-EPP-DB-SAR-REC-NON-RNI-CTPD-SAR-MD-TR-1-LateRepayment		   
	  Scenario: Loan-1109-MS-EPP-DB-SAR-REC-NON-RNI-CTPD-SAR-MD-TR-1-LateRepayment
	  
	  Given I setup the product loan "Setup"
				| Productloannavigation.xlsx |
	  Then I entered the values into product loan from "ProductLoanInput" Sheet
				|1109-MS-EPP-DB-SAR-REC-NON-RNI-CTPD-SAR-MD-TR-1-LateRepayment-Loanproduct.xlsx|
	  Given I setup the clients 
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			| 1109-MS-EPP-DB-SAR-REC-NON-RNI-CTPD-SAR-MD-TR-1-LateRepayment-Newcreateloan.xlsx|
	  Then I verified the "Summary" details successfully 
	  			| 1109-MS-EPP-DB-SAR-REC-NON-RNI-CTPD-SAR-MD-TR-1-LateRepayment-Newcreateloan.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
	  			| 1109-MS-EPP-DB-SAR-REC-NON-RNI-CTPD-SAR-MD-TR-1-LateRepayment-Newcreateloan.xlsx|
	  When I make repayment and verified the following tabs
       			|1109-MS-EPP-DB-SAR-REC-NON-RNI-CTPD-SAR-MD-TR-1-LateRepayment-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
       			
@scenario46-Loan-1110-MS-EPP-DB-SAR-REC-NON-RNI-CTPD-DL-MD-TR-1-LateRepayment		   
	  Scenario: Loan-1110-MS-EPP-DB-SAR-REC-NON-RNI-CTPD-DL-MD-TR-1-LateRepayment
	  
	  Given I setup the product loan "Setup"
				| Productloannavigation.xlsx |
	  Then I entered the values into product loan from "ProductLoanInput" Sheet
				|1110-MS-EPP-DB-SAR-REC-NON-RNI-CTPD-DL-MD-TR-1-LateRepayment-Loanproduct.xlsx|
	  Given I setup the clients 
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			| 1110-MS-EPP-DB-SAR-REC-NON-RNI-CTPD-DL-MD-TR-1-LateRepayment-Newcreateloan.xlsx|
	  Then I verified the "Summary" details successfully 
	  			| 1110-MS-EPP-DB-SAR-REC-NON-RNI-CTPD-DL-MD-TR-1-LateRepayment-Newcreateloan.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
	  			| 1110-MS-EPP-DB-SAR-REC-NON-RNI-CTPD-DL-MD-TR-1-LateRepayment-Newcreateloan.xlsx|
	  When I make repayment and verified the following tabs
       			|1110-MS-EPP-DB-SAR-REC-NON-RNI-CTPD-DL-MD-TR-1-LateRepayment-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
       			
@scenario47-Loan-1111-MS-EPP-DB-SAR-REC-NON-RNI-CTRFD-SAR-MD-TR-1-LateRepayment   
	  Scenario: Loan-1111-MS-EPP-DB-SAR-REC-NON-RNI-CTRFD-SAR-MD-TR-1-LateRepayment
	  
	  Given I setup the product loan "Setup"
				| Productloannavigation.xlsx |
	  Then I entered the values into product loan from "ProductLoanInput" Sheet
				|1111-MS-EPP-DB-SAR-REC-NON-RNI-CTRFD-SAR-MD-TR-1-LateRepayment-Loanproduct.xlsx|
	  Given I setup the clients 
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			| 1111-MS-EPP-DB-SAR-REC-NON-RNI-CTRFD-SAR-MD-TR-1-LateRepayment-Newcreateloan.xlsx|
	  Then I verified the "Summary" details successfully 
	  			| 1111-MS-EPP-DB-SAR-REC-NON-RNI-CTRFD-SAR-MD-TR-1-LateRepayment-Newcreateloan.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
	  			| 1111-MS-EPP-DB-SAR-REC-NON-RNI-CTRFD-SAR-MD-TR-1-LateRepayment-Newcreateloan.xlsx|
	  When I make repayment and verified the following tabs
       			|1111-MS-EPP-DB-SAR-REC-NON-RNI-CTRFD-SAR-MD-TR-1-LateRepayment-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
       			 			
@scenario48-Loan-1112-MS-EPP-DB-SAR-REC-NON-RNI-CTRFD-DL-MD-TR-1-LateRepayment 
	  Scenario: Loan-1112-MS-EPP-DB-SAR-REC-NON-RNI-CTRFD-DL-MD-TR-1-LateRepayment
	  
	  Given I setup the product loan "Setup"
				| Productloannavigation.xlsx |
	  Then I entered the values into product loan from "ProductLoanInput" Sheet
				|1112-MS-EPP-DB-SAR-REC-NON-RNI-CTRFD-DL-MD-TR-1-LateRepayment-Loanproduct.xlsx|
	  Given I setup the clients 
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			| 1112-MS-EPP-DB-SAR-REC-NON-RNI-CTRFD-DL-MD-TR-1-LateRepayment-Newcreateloan.xlsx|
	  Then I verified the "Summary" details successfully 
	  			| 1112-MS-EPP-DB-SAR-REC-NON-RNI-CTRFD-DL-MD-TR-1-LateRepayment-Newcreateloan.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
	  			| 1112-MS-EPP-DB-SAR-REC-NON-RNI-CTRFD-DL-MD-TR-1-LateRepayment-Newcreateloan.xlsx|
	  When I make repayment and verified the following tabs
       			|1112-MS-EPP-DB-SAR-REC-NON-RNI-CTRFD-DL-MD-TR-1-LateRepayment-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
       			
@scenario49-Loan-1349-MS-EI-DB-DL-REC-NON-RNI-CTPD-SAR-MD-TR-2-ONTIME	   
	  Scenario: Loan-1349-MS-EI-DB-DL-REC-NON-RNI-CTPD-SAR-MD-TR-2-ONTIME
	
	  Given I setup the product loan "Setup"
				| Productloannavigation.xlsx |
	  Then I entered the values into product loan from "ProductLoanInput" Sheet
				|1349-MS-EI-DB-DL-REC-NON-RNI-CTPD-SAR-MD-TR-2-ONTIME-Loanproduct.xlsx|
	  Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			| 1349-MS-EI-DB-DL-REC-NON-RNI-CTPD-SAR-MD-TR-2-ONTIME-Newcreateloan1.xlsx|
	  Then I verified the "Summary" details successfully 
	  			| 1349-MS-EI-DB-DL-REC-NON-RNI-CTPD-SAR-MD-TR-2-ONTIME-Newcreateloan1.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
	  			| 1349-MS-EI-DB-DL-REC-NON-RNI-CTPD-SAR-MD-TR-2-ONTIME-Newcreateloan1.xlsx|
	  Then I make repayment and verified the following tabs
       			|1349-MS-EI-DB-DL-REC-NON-RNI-CTPD-SAR-MD-TR-2-ONTIME-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
      And I disburse loan from "NewLoanInput" sheet
      			| 1349-MS-EI-DB-DL-REC-NON-RNI-CTPD-SAR-MD-TR-2-ONTIME-Newcreateloan2.xlsx|
      Then I verified the "Summary" details successfully 
	  			| 1349-MS-EI-DB-DL-REC-NON-RNI-CTPD-SAR-MD-TR-2-ONTIME-Newcreateloan2.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
	  			| 1349-MS-EI-DB-DL-REC-NON-RNI-CTPD-SAR-MD-TR-2-ONTIME-Newcreateloan2.xlsx| 			
	  And I verified the "Transactions" details successfully	
				| 1349-MS-EI-DB-DL-REC-NON-RNI-CTPD-SAR-MD-TR-2-ONTIME-Newcreateloan2.xlsx| 
				
@scenario50-Loan-1350-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME	   
	  Scenario: Loan-1350-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME
	
	  Given I setup the product loan "Setup"
				| Productloannavigation.xlsx |
	  Then I entered the values into product loan from "ProductLoanInput" Sheet
				|1350-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-Loanproduct.xlsx|
	  Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			| 1350-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-Newcreateloan1.xlsx|
	  Then I verified the "Summary" details successfully 
	  			| 1350-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-Newcreateloan1.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
	  			| 1350-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-Newcreateloan1.xlsx|
	  Then I make repayment and verified the following tabs
       			|1350-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
      And I disburse loan from "NewLoanInput" sheet
      			| 1350-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-Newcreateloan2.xlsx|
      Then I verified the "Summary" details successfully 
	  			| 1350-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-Newcreateloan2.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
	  			| 1350-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-Newcreateloan2.xlsx| 			
	  And I verified the "Transactions" details successfully	
				| 1350-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-Newcreateloan2.xlsx| 
				
@scenario51-Loan-1397-MS-EI-DB-SAR-REC-NON-RNI-CTPD-SAR-MD-TR-2-ONTIME	   
	  Scenario: Loan-1397-MS-EI-DB-SAR-REC-NON-RNI-CTPD-SAR-MD-TR-2-ONTIME
	
	  Given I setup the product loan "Setup"
				| Productloannavigation.xlsx |
	  Then I entered the values into product loan from "ProductLoanInput" Sheet
				|1397-MS-EI-DB-SAR-REC-NON-RNI-CTPD-SAR-MD-TR-2-ONTIME-Loanproduct.xlsx|
	  Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			| 1397-MS-EI-DB-SAR-REC-NON-RNI-CTPD-SAR-MD-TR-2-ONTIME-Newcreateloan1.xlsx|
	  Then I verified the "Summary" details successfully 
	  			| 1397-MS-EI-DB-SAR-REC-NON-RNI-CTPD-SAR-MD-TR-2-ONTIME-Newcreateloan1.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
	  			| 1397-MS-EI-DB-SAR-REC-NON-RNI-CTPD-SAR-MD-TR-2-ONTIME-Newcreateloan1.xlsx|
	  Then I make repayment and verified the following tabs
       			|1397-MS-EI-DB-SAR-REC-NON-RNI-CTPD-SAR-MD-TR-2-ONTIME-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
      And I disburse loan from "NewLoanInput" sheet
      			| 1397-MS-EI-DB-SAR-REC-NON-RNI-CTPD-SAR-MD-TR-2-ONTIME-Newcreateloan2.xlsx|
      Then I verified the "Summary" details successfully 
	  			| 1397-MS-EI-DB-SAR-REC-NON-RNI-CTPD-SAR-MD-TR-2-ONTIME-Newcreateloan2.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
	  			| 1397-MS-EI-DB-SAR-REC-NON-RNI-CTPD-SAR-MD-TR-2-ONTIME-Newcreateloan2.xlsx| 			
	  And I verified the "Transactions" details successfully	
				| 1397-MS-EI-DB-SAR-REC-NON-RNI-CTPD-SAR-MD-TR-2-ONTIME-Newcreateloan2.xlsx| 
				
@scenario52-Loan-1398-MS-EI-DB-SAR-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME	   
	  Scenario: Loan-1398-MS-EI-DB-SAR-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME
	
	  Given I setup the product loan "Setup"
				| Productloannavigation.xlsx |
	  Then I entered the values into product loan from "ProductLoanInput" Sheet
				|1398-MS-EI-DB-SAR-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-Loanproduct.xlsx|
	  Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			| 1398-MS-EI-DB-SAR-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-Newcreateloan1.xlsx|
	  Then I verified the "Summary" details successfully 
	  			| 1398-MS-EI-DB-SAR-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-Newcreateloan1.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
	  			| 1398-MS-EI-DB-SAR-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-Newcreateloan1.xlsx|
	  Then I make repayment and verified the following tabs
       			|1398-MS-EI-DB-SAR-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
      And I disburse loan from "NewLoanInput" sheet
      			| 1398-MS-EI-DB-SAR-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-Newcreateloan2.xlsx|
      Then I verified the "Summary" details successfully 
	  			| 1398-MS-EI-DB-SAR-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-Newcreateloan2.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
	  			| 1398-MS-EI-DB-SAR-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-Newcreateloan2.xlsx| 			
	  And I verified the "Transactions" details successfully	
				| 1398-MS-EI-DB-SAR-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-Newcreateloan2.xlsx| 
				
@scenario53-Loan-1733-MS-EI-DB-DL-REC-NON-RNI-CTPD-SAR-MD-TR-2-EARLY	   
	  Scenario: Loan-1733-MS-EI-DB-DL-REC-NON-RNI-CTPD-SAR-MD-TR-2-EARLY
	
	  Given I setup the product loan "Setup"
				| Productloannavigation.xlsx |
	  Then I entered the values into product loan from "ProductLoanInput" Sheet
				|1733-MS-EI-DB-DL-REC-NON-RNI-CTPD-SAR-MD-TR-2-EARLY-Loanproduct.xlsx|
	  Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			| 1733-MS-EI-DB-DL-REC-NON-RNI-CTPD-SAR-MD-TR-2-EARLY-Newcreateloan1.xlsx|
	  Then I verified the "Summary" details successfully 
	  			| 1733-MS-EI-DB-DL-REC-NON-RNI-CTPD-SAR-MD-TR-2-EARLY-Newcreateloan1.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
	  			| 1733-MS-EI-DB-DL-REC-NON-RNI-CTPD-SAR-MD-TR-2-EARLY-Newcreateloan1.xlsx|
	  Then I make repayment and verified the following tabs
       			|1733-MS-EI-DB-DL-REC-NON-RNI-CTPD-SAR-MD-TR-2-EARLY-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
      And I disburse loan from "NewLoanInput" sheet
      			| 1733-MS-EI-DB-DL-REC-NON-RNI-CTPD-SAR-MD-TR-2-EARLY-Newcreateloan2.xlsx|
      Then I verified the "Summary" details successfully 
	  			| 1733-MS-EI-DB-DL-REC-NON-RNI-CTPD-SAR-MD-TR-2-EARLY-Newcreateloan2.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
	  			| 1733-MS-EI-DB-DL-REC-NON-RNI-CTPD-SAR-MD-TR-2-EARLY-Newcreateloan2.xlsx| 			
	  And I verified the "Transactions" details successfully	
				| 1733-MS-EI-DB-DL-REC-NON-RNI-CTPD-SAR-MD-TR-2-EARLY-Newcreateloan2.xlsx| 
				
@scenario54-Loan-1734-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-EARLY
	  Scenario: Loan-1734-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-EARLY
	
	  Given I setup the product loan "Setup"
				| Productloannavigation.xlsx |
	  Then I entered the values into product loan from "ProductLoanInput" Sheet
				|1734-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-EARLY-Loanproduct.xlsx|
	  Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			| 1734-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-EARLY-Newcreateloan1.xlsx|
	  Then I verified the "Summary" details successfully 
	  			| 1734-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-EARLY-Newcreateloan1.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
	  			| 1734-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-EARLY-Newcreateloan1.xlsx|
	  Then I make repayment and verified the following tabs
       			|1734-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-EARLY-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
      And I disburse loan from "NewLoanInput" sheet
      			| 1734-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-EARLY-Newcreateloan2.xlsx|
      Then I verified the "Summary" details successfully 
	  			| 1734-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-EARLY-Newcreateloan2.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
	  			| 1734-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-EARLY-Newcreateloan2.xlsx| 			
	  And I verified the "Transactions" details successfully	
				| 1734-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-EARLY-Newcreateloan2.xlsx| 
				
@scenario55-Loan-1781-MS-EI-DB-SAR-REC-NON-RNI-CTPD-SAR-MD-TR-2-EARLY	   
	  Scenario: Loan-1781-MS-EI-DB-SAR-REC-NON-RNI-CTPD-SAR-MD-TR-2-EARLY
	  
	  Given I setup the product loan "Setup"
				| Productloannavigation.xlsx |
	  Then I entered the values into product loan from "ProductLoanInput" Sheet
				|1781-MS-EI-DB-SAR-REC-NON-RNI-CTPD-SAR-MD-TR-2-EARLY-Loanproduct.xlsx|
	  Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			| 1781-MS-EI-DB-SAR-REC-NON-RNI-CTPD-SAR-MD-TR-2-EARLY-Newcreateloan1.xlsx|
	  Then I verified the "Summary" details successfully 
	  			| 1781-MS-EI-DB-SAR-REC-NON-RNI-CTPD-SAR-MD-TR-2-EARLY-Newcreateloan1.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
	  			| 1781-MS-EI-DB-SAR-REC-NON-RNI-CTPD-SAR-MD-TR-2-EARLY-Newcreateloan1.xlsx|
	  Then I make repayment and verified the following tabs
       			|1781-MS-EI-DB-SAR-REC-NON-RNI-CTPD-SAR-MD-TR-2-EARLY-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
      And I disburse loan from "NewLoanInput" sheet
      			| 1781-MS-EI-DB-SAR-REC-NON-RNI-CTPD-SAR-MD-TR-2-EARLY-Newcreateloan2.xlsx|
      Then I verified the "Summary" details successfully 
	  			| 1781-MS-EI-DB-SAR-REC-NON-RNI-CTPD-SAR-MD-TR-2-EARLY-Newcreateloan2.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
	  			| 1781-MS-EI-DB-SAR-REC-NON-RNI-CTPD-SAR-MD-TR-2-EARLY-Newcreateloan2.xlsx| 			
	  And I verified the "Transactions" details successfully	
				| 1781-MS-EI-DB-SAR-REC-NON-RNI-CTPD-SAR-MD-TR-2-EARLY-Newcreateloan2.xlsx| 
				
@scenario56-Loan-1782-MS-EI-DB-SAR-REC-NON-RNI-CTPD-DL-MD-TR-2-EARLY	   
	  Scenario: Loan-1782-MS-EI-DB-SAR-REC-NON-RNI-CTPD-DL-MD-TR-2-EARLY
	  
	  Given I setup the product loan "Setup"
				| Productloannavigation.xlsx |
	  Then I entered the values into product loan from "ProductLoanInput" Sheet
				|1782-MS-EI-DB-SAR-REC-NON-RNI-CTPD-DL-MD-TR-2-EARLY-Loanproduct.xlsx|
	  Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			| 1782-MS-EI-DB-SAR-REC-NON-RNI-CTPD-DL-MD-TR-2-EARLY-Newcreateloan1.xlsx|
	  Then I verified the "Summary" details successfully 
	  			| 1782-MS-EI-DB-SAR-REC-NON-RNI-CTPD-DL-MD-TR-2-EARLY-Newcreateloan1.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
	  			| 1782-MS-EI-DB-SAR-REC-NON-RNI-CTPD-DL-MD-TR-2-EARLY-Newcreateloan1.xlsx|
	  Then I make repayment and verified the following tabs
       			|1782-MS-EI-DB-SAR-REC-NON-RNI-CTPD-DL-MD-TR-2-EARLY-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
      And I disburse loan from "NewLoanInput" sheet
      			| 1782-MS-EI-DB-SAR-REC-NON-RNI-CTPD-DL-MD-TR-2-EARLY-Newcreateloan2.xlsx|
      Then I verified the "Summary" details successfully 
	  			| 1782-MS-EI-DB-SAR-REC-NON-RNI-CTPD-DL-MD-TR-2-EARLY-Newcreateloan2.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
	  			| 1782-MS-EI-DB-SAR-REC-NON-RNI-CTPD-DL-MD-TR-2-EARLY-Newcreateloan2.xlsx| 			
	  And I verified the "Transactions" details successfully	
				| 1782-MS-EI-DB-SAR-REC-NON-RNI-CTPD-DL-MD-TR-2-EARLY-Newcreateloan2.xlsx| 

@scenario57-Loan-2117-MS-EI-DB-DL-REC-NON-RNI-CTPD-SAR-MD-TR-2-LATE	   
	  Scenario: Loan-2117-MS-EI-DB-DL-REC-NON-RNI-CTPD-SAR-MD-TR-2-LATE
	  
	  Given I setup the product loan "Setup"
				| Productloannavigation.xlsx |
	  Then I entered the values into product loan from "ProductLoanInput" Sheet
				|2117-MS-EI-DB-DL-REC-NON-RNI-CTPD-SAR-MD-TR-2-LATE-Loanproduct.xlsx|
	  Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			| 2117-MS-EI-DB-DL-REC-NON-RNI-CTPD-SAR-MD-TR-2-LATE-Newcreateloan1.xlsx|
	  Then I verified the "Summary" details successfully 
	  			| 2117-MS-EI-DB-DL-REC-NON-RNI-CTPD-SAR-MD-TR-2-LATE-Newcreateloan1.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
	  			| 2117-MS-EI-DB-DL-REC-NON-RNI-CTPD-SAR-MD-TR-2-LATE-Newcreateloan1.xlsx|
	  Then I make repayment and verified the following tabs
       			|2117-MS-EI-DB-DL-REC-NON-RNI-CTPD-SAR-MD-TR-2-LATE-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
      And I disburse loan from "NewLoanInput" sheet
      			| 2117-MS-EI-DB-DL-REC-NON-RNI-CTPD-SAR-MD-TR-2-LATE-Newcreateloan2.xlsx|
      Then I verified the "Summary" details successfully 
	  			| 2117-MS-EI-DB-DL-REC-NON-RNI-CTPD-SAR-MD-TR-2-LATE-Newcreateloan2.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
	  			| 2117-MS-EI-DB-DL-REC-NON-RNI-CTPD-SAR-MD-TR-2-LATE-Newcreateloan2.xlsx| 			
	  And I verified the "Transactions" details successfully	
				| 2117-MS-EI-DB-DL-REC-NON-RNI-CTPD-SAR-MD-TR-2-LATE-Newcreateloan2.xlsx| 

@scenario58-Loan-2118-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-LATE	   
	  Scenario: Loan-2118-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-LATE
	  
	  Given I setup the product loan "Setup"
				| Productloannavigation.xlsx |
	  Then I entered the values into product loan from "ProductLoanInput" Sheet
				|2118-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-LATE-Loanproduct.xlsx|
	  Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			| 2118-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-LATE-Newcreateloan1.xlsx|
	  Then I verified the "Summary" details successfully 
	  			| 2118-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-LATE-Newcreateloan1.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
	  			| 2118-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-LATE-Newcreateloan1.xlsx|
	  Then I make repayment and verified the following tabs
       			|2118-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-LATE-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
      And I disburse loan from "NewLoanInput" sheet
      			| 2118-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-LATE-Newcreateloan2.xlsx|
      Then I verified the "Summary" details successfully 
	  			| 2118-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-LATE-Newcreateloan2.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
	  			| 2118-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-LATE-Newcreateloan2.xlsx| 			
	  And I verified the "Transactions" details successfully	
				| 2118-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-LATE-Newcreateloan2.xlsx| 

@scenario59-Loan-2165-MS-EI-DB-SAR-REC-NON-RNI-CTPD-SAR-MD-TR-2-LATE	   
	  Scenario: Loan-2165-MS-EI-DB-SAR-REC-NON-RNI-CTPD-SAR-MD-TR-2-LATE
	
	  Given I setup the product loan "Setup"
				| Productloannavigation.xlsx |
	  Then I entered the values into product loan from "ProductLoanInput" Sheet
				|2165-MS-EI-DB-SAR-REC-NON-RNI-CTPD-SAR-MD-TR-2-LATE-Loanproduct.xlsx|
	  Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			| 2165-MS-EI-DB-SAR-REC-NON-RNI-CTPD-SAR-MD-TR-2-LATE-Newcreateloan1.xlsx|
	  Then I verified the "Summary" details successfully 
	  			| 2165-MS-EI-DB-SAR-REC-NON-RNI-CTPD-SAR-MD-TR-2-LATE-Newcreateloan1.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
	  			| 2165-MS-EI-DB-SAR-REC-NON-RNI-CTPD-SAR-MD-TR-2-LATE-Newcreateloan1.xlsx|
	  Then I make repayment and verified the following tabs
       			|2165-MS-EI-DB-SAR-REC-NON-RNI-CTPD-SAR-MD-TR-2-LATE-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
      And I disburse loan from "NewLoanInput" sheet
      			| 2165-MS-EI-DB-SAR-REC-NON-RNI-CTPD-SAR-MD-TR-2-LATE-Newcreateloan2.xlsx|
      Then I verified the "Summary" details successfully 
	  			| 2165-MS-EI-DB-SAR-REC-NON-RNI-CTPD-SAR-MD-TR-2-LATE-Newcreateloan2.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
	  			| 2165-MS-EI-DB-SAR-REC-NON-RNI-CTPD-SAR-MD-TR-2-LATE-Newcreateloan2.xlsx| 			
	  And I verified the "Transactions" details successfully	
				| 2165-MS-EI-DB-SAR-REC-NON-RNI-CTPD-SAR-MD-TR-2-LATE-Newcreateloan2.xlsx| 

@scenario60-Loan-2166-MS-EI-DB-SAR-REC-NON-RNI-CTPD-DL-MD-TR-2-LATE	   
	  Scenario: Loan-2166-MS-EI-DB-SAR-REC-NON-RNI-CTPD-DL-MD-TR-2-LATE
	
	  Given I setup the product loan "Setup"
				| Productloannavigation.xlsx |
	  Then I entered the values into product loan from "ProductLoanInput" Sheet
				|2166-MS-EI-DB-SAR-REC-NON-RNI-CTPD-DL-MD-TR-2-LATE-Loanproduct.xlsx|
	  Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			| 2166-MS-EI-DB-SAR-REC-NON-RNI-CTPD-DL-MD-TR-2-LATE-Newcreateloan1.xlsx|
	  Then I verified the "Summary" details successfully 
	  			| 2166-MS-EI-DB-SAR-REC-NON-RNI-CTPD-DL-MD-TR-2-LATE-Newcreateloan1.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
	  			| 2166-MS-EI-DB-SAR-REC-NON-RNI-CTPD-DL-MD-TR-2-LATE-Newcreateloan1.xlsx|
	  Then I make repayment and verified the following tabs
       			|2166-MS-EI-DB-SAR-REC-NON-RNI-CTPD-DL-MD-TR-2-LATE-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
      And I disburse loan from "NewLoanInput" sheet
      			| 2166-MS-EI-DB-SAR-REC-NON-RNI-CTPD-DL-MD-TR-2-LATE-Newcreateloan2.xlsx|
      Then I verified the "Summary" details successfully 
	  			| 2166-MS-EI-DB-SAR-REC-NON-RNI-CTPD-DL-MD-TR-2-LATE-Newcreateloan2.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
	  			| 2166-MS-EI-DB-SAR-REC-NON-RNI-CTPD-DL-MD-TR-2-LATE-Newcreateloan2.xlsx| 			
	  And I verified the "Transactions" details successfully	
				| 2166-MS-EI-DB-SAR-REC-NON-RNI-CTPD-DL-MD-TR-2-LATE-Newcreateloan2.xlsx|        			

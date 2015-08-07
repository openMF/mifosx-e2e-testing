	Feature:LoanRBI
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
	 #   |Loanproduct.xlsx|
	    |389-RBI-EI-DB-DL-REC-NON-RNI-CTPD-SAR-MD-TR-1-EarlyRePayment-Loanproduct.xlsx|
		|390-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-EarlyRePayment-Loanproduct.xlsx|
		|391-RBI-EI-DB-DL-REC-NON-RNI-CTRFD-SAR-MD-TR-1-EarlyRePayment-Loanproduct.xlsx|
	 	|392-RBI-EI-DB-DL-REC-NON-RNI-CTRFD-DL-MD-TR-1-EarlyRePayment-Loanproduct.xlsx|
	 	|437-RBI-EI-DB-SAR-REC-NON-RNI-CTPD-SAR-MD-TR-1-EarlyRepayment-Loanproduct.xlsx|
	 	|438-RBI-EI-DB-SAR-REC-NON-RNI-CTPD-DL-MD-TR-1-EarlyRePayment-Loanproduct.xlsx|
	 	|439-RBI-EI-DB-SAR-REC-NON-RNI-CTRFD-SAR-MD-TR-1-B-EarlyRePayment-Loanproduct.xlsx|
	 	|440-RBI-EI-DB-SAR-REC-NON-RNI-CTRFD-DL-MD-TR-1-EarlyRePayment-Loanproduct.xlsx|
	 	|485-RBI-EPP-DB-DL-REC-NON-RNI-CTPD-SAR-MD-TR-1-EarlyRePayment-Loanproduct.xlsx|
	 	|486-RBI-EPP-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-EarlyRePayment-Loanproduct.xlsx|
	 	|487-RBI-EPP-DB-DL-REC-NON-RNI-CTRFD-SAR-MD-TR-1-EarlyRePayment-Loanproduct.xlsx|
	 	|488-RBI-EPP-DB-DL-REC-NON-RNI-CTRFD-DL-MD-TR-1-EarlyRePayment-Loanproduct.xlsx|
	 	|533-RBI-EPP-DB-SAR-REC-NON-RNI-CTPD-SAR-MD-TR-1-EarlyRePayment-Loanproduct.xlsx|
	 	|534-RBI-EPP-DB-SAR-REC-NON-RNI-CTPD-DL-MD-TR-1-EarlyRePayment-Loanproduct.xlsx|
	 	|535-RBI-EPP-DB-SAR-REC-NON-RNI-CTRFD-SAR-MD-TR-1-EarlyRePayment-Loanproduct.xlsx|
	 	|536-RBI-EPP-DB-SAR-REC-NON-RNI-CTRFD-DL-MD-TR-1-EarlyRePayment-Loanproduct.xlsx|
	 	|5-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-ONTIME-Loanproduct.xlsx|
		|6-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-ONTIME-Loanproduct.xlsx|
	 	|7-RBI-EI-DB-DL-REC-NOCOM-RNI-CTRFD-SAR-MD-TR-1-ONTIME-Loanproduct.xlsx|
		|8-RBI-EI-DB-DL-REC-NOCOM-RNI-CTRFD-DL-MD-TR-1-ONTIME-Loanproduct.xlsx|
		|53-RBI-EI-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-ONTIME-Loanproduct.xlsx|
		|54-RBI-EI-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-ONTIME-Loanproduct.xlsx|
		|55-RBI-EI-DB-SAR-REC-NOCOM-RNI-CTRFD-SAR-MD-TR-1-ONTIME-Loanproduct.xlsx|
		|56-RBI-EI-DB-SAR-REC-NOCOM-RNI-CTRFD-DL-MD-TR-1-ONTIME-Loanproduct.xlsx|
		|101-RBI-EPP-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-ONTIME-Loanproduct.xlsx|
		|102-RBI-EPP-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-Loanproduct.xlsx|
		|103-RBI-EPP-DB-DL-REC-NON-RNI-CTRFD-SAR-MD-TR-1-ONTIME-Loanproduct.xlsx|
		|104-RBI-EPP-DB-DL-REC-NON-RNI-CTRFD-DL-MD-TR-1-ONTIME-Loanproduct.xlsx|
		|149-RBI-EPP-DB-SAR-REC-NON-RNI-CTPD-SAR-MD-TR-1-ONTIME-Loanproduct.xlsx|
		|150-RBI-EPP-DB-SAR-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-Loanproduct.xlsx|
		|151-RBI-EPP-DB-SAR-REC-NON-RNI-CTRFD-SAR-MD-TR-1-ONTIME-Loanproduct.xlsx|
		|152-RBI-EPP-DB-SAR-REC-NON-RNI-CTRFD-DL-MD-TR-1-ONTIME-Loanproduct.xlsx|
		|773-RBI-EI-DB-DL-REC-NON-RNI-CTPD-SAR-MD-TR-1-Late Repayment-Loanproduct.xlsx|
	 	|774-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-Late Repayment-Loanproduct.xlsx|
	 	|775-RBI-EI-DB-DL-REC-NON-RNI-CTRFD-SAR-MD-TR-1-Late Repayment-Loanproduct.xlsx|
	 	|776-RBI-EI-DB-DL-REC-NON-RNI-CTRFD-DL-MD-TR-1-Late Repayment-Loanproduct.xlsx|
	 	|821-RBI-EI-DB-SAR-REC-NON-RNI-CTPD-SAR-MD-TR-1-Late Repayment-Loanproduct.xlsx|
	 	|822-RBI-EI-DB-SAR-REC-NON-RNI-CTPD-DL-MD-TR-1-Late Repayment-Loanproduct.xlsx|
	 	|823-RBI-EI-DB-SAR-Y-NON-RNI-CTRFD-SAR-MD-Y-1-Late Repayment-Loanproduct.xlsx|
	 	|824-RBI-EI-DB-SAR-REC-NON-RNI-CTRFD-DL-MD-TR-1-Late Repayment-Loanproduct.xlsx| 
	 	|869-RBI-EPP-DB-DL-REC-NON-RNI-CTPD-SAR-MD-TR-1-Late Repayment-Loanproduct.xlsx|
	 	|870-RBI-EPP-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-Late Repayment-Loanproduct.xlsx|
	 	|871-RBI-EPP-DB-DL-REC-NON-RNI-CTRFD-SAR-MD-TR-1-LateRepayment-Loanproduct.xlsx|
	 	|872-RBI-EPP-DB-DL-REC-NON-RNI-CTRFD-DL-MD-TR-1-LateRepayment-Loanproduct.xlsx|
	 	|917-RBI-EPP-DB-SAR-REC-NON-RNI-CTPD-SAR-MD-TR-1-LateRepayment-Loanproduct.xlsx|
	 	|918-RBI-EPP-DB-SAR-REC-NON-RNI-CTPD-DL-MD-TR-1-LateRepayment-Loanproduct.xlsx|
	 	|919-RBI-EPP-DB-SAR-REC-NON-RNI-CTRFD-SAR-MD-TR-1-LateRepayment-Loanproduct.xlsx|
	 	|920-RBI-EPP-DB-SAR-REC-NON-RNI-CTRFD-DL-MD-TR-1-LateRepayment-Loanproduct.xlsx|

	 		  		   
@scenario1-Loan-389-RBI-EI-DB-DL-REC-NON-RNI-CTPD-SAR-MD-TR-1-EarlyRePayment	   
	  Scenario: Loan-389-RBI-EI-DB-DL-REC-NON-RNI-CTPD-SAR-MD-TR-1-EarlyRePayment
	
	  Given I setup the clients
	  Then I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			| 389-RBI-EI-DB-DL-REC-NON-RNI-CTPD-SAR-MD-TR-1-EarlyRePayment-Newcreateloan.xlsx|
	  Then I verified the "Summary" details successfully 
	  			| 389-RBI-EI-DB-DL-REC-NON-RNI-CTPD-SAR-MD-TR-1-EarlyRePayment-Newcreateloan.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
	  			| 389-RBI-EI-DB-DL-REC-NON-RNI-CTPD-SAR-MD-TR-1-EarlyRePayment-Newcreateloan.xlsx|
	  Then I make repayment and verified the following tabs
       			|389-RBI-EI-DB-DL-REC-NON-RNI-CTPD-SAR-MD-TR-1-EarlyRePayment-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
	 	 		
@scenario2-Loan-390-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-EarlyRePayment
	  Scenario: Loan-390-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-EarlyRePayment
	  Given I setup the clients
	  Then I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			| 390-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-EarlyRePayment-Newcreateloan.xlsx|
	  Then I verified the "Summary" details successfully 
	  			| 390-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-EarlyRePayment-Newcreateloan.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
	  			| 390-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-EarlyRePayment-Newcreateloan.xlsx|
	  Then I make repayment and verified the following tabs
	  			|390-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-EarlyRePayment-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
	  				
	  
@scenario3-Loan-391-RBI-EI-DB-DL-REC-NON-RNI-CTRFD-SAR-MD-TR-1-EarlyRePayment
	  Scenario: Loan-391-RBI-EI-DB-DL-REC-NON-RNI-CTRFD-SAR-MD-TR-1-EarlyRePayment
	  Given I setup the clients 
	  Then I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			| 391-RBI-EI-DB-DL-REC-NON-RNI-CTRFD-SAR-MD-TR-1-EarlyRePayment-Newcreateloan.xlsx|
	  Then I verified the "Summary" details successfully 
	  			| 391-RBI-EI-DB-DL-REC-NON-RNI-CTRFD-SAR-MD-TR-1-EarlyRePayment-Newcreateloan.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
	  			| 391-RBI-EI-DB-DL-REC-NON-RNI-CTRFD-SAR-MD-TR-1-EarlyRePayment-Newcreateloan.xlsx|
	  Then I make repayment and verified the following tabs
	  			|391-RBI-EI-DB-DL-REC-NON-RNI-CTRFD-SAR-MD-TR-1-EarlyRePayment-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
	  				
	  
@scenario4-Loan-392-RBI-EI-DB-DL-REC-NON-RNI-CTRFD-DL-MD-TR-1-EarlyRePayment
	  Scenario: Loan-392-RBI-EI-DB-DL-REC-NON-RNI-CTRFD-DL-MD-TR-1-EarlyRePayment
	  Given I setup the clients
	  Then I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			| 392-RBI-EI-DB-DL-REC-NON-RNI-CTRFD-DL-MD-TR-1-EarlyRePayment-Newcreateloan.xlsx|
	  Then I verified the "Summary" details successfully 
	  			| 392-RBI-EI-DB-DL-REC-NON-RNI-CTRFD-DL-MD-TR-1-EarlyRePayment-Newcreateloan.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
	  			| 392-RBI-EI-DB-DL-REC-NON-RNI-CTRFD-DL-MD-TR-1-EarlyRePayment-Newcreateloan.xlsx|
	  Then I make repayment and verified the following tabs
	  			|392-RBI-EI-DB-DL-REC-NON-RNI-CTRFD-DL-MD-TR-1-EarlyRePayment-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
	  								
	  								
@scenario5-Loan-437-RBI-EI-DB-SAR-REC-NON-RNI-CTPD-SAR-MD-TR-1-EarlyRepayment
	  Scenario: Loan-437-RBI-EI-DB-SAR-REC-NON-RNI-CTPD-SAR-MD-TR-1-EarlyRepayment
	  Given I setup the clients 
	  Then I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			| 437-RBI-EI-DB-SAR-REC-NON-RNI-CTPD-SAR-MD-TR-1-EarlyRepayment-Newcreateloan.xlsx|
	  Then I verified the "Summary" details successfully 
	  			| 437-RBI-EI-DB-SAR-REC-NON-RNI-CTPD-SAR-MD-TR-1-EarlyRepayment-Newcreateloan.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
	  			| 437-RBI-EI-DB-SAR-REC-NON-RNI-CTPD-SAR-MD-TR-1-EarlyRepayment-Newcreateloan.xlsx|
	  Then I make repayment and verified the following tabs
	  			|437-RBI-EI-DB-SAR-REC-NON-RNI-CTPD-SAR-MD-TR-1-EarlyRepayment-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
	  			 
@scenario6-Loan-438-RBI-EI-DB-SAR-REC-NON-RNI-CTPD-DL-MD-TR-1-EarlyRePayment
	  Scenario: Loan-438-RBI-EI-DB-SAR-REC-NON-RNI-CTPD-DL-MD-TR-1-EarlyRePayment
	  Given I setup the clients
	  Then I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			| 438-RBI-EI-DB-SAR-REC-NON-RNI-CTPD-DL-MD-TR-1-EarlyRePayment-Newcreateloan.xlsx|
	  Then I verified the "Summary" details successfully 
	  			| 438-RBI-EI-DB-SAR-REC-NON-RNI-CTPD-DL-MD-TR-1-EarlyRePayment-Newcreateloan.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
	  			| 438-RBI-EI-DB-SAR-REC-NON-RNI-CTPD-DL-MD-TR-1-EarlyRePayment-Newcreateloan.xlsx|
	  Then I make repayment and verified the following tabs
	  			|438-RBI-EI-DB-SAR-REC-NON-RNI-CTPD-DL-MD-TR-1-EarlyRePayment-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
	  
@scenario7-Loan-439-RBI-EI-DB-SAR-REC-NON-RNI-CTRFD-SAR-MD-TR-1-B-EarlyRePayment
	  Scenario: Loan-439-RBI-EI-DB-SAR-REC-NON-RNI-CTRFD-SAR-MD-TR-1-B-EarlyRePayment
	  Given I setup the clients
	  Then I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			| 439-RBI-EI-DB-SAR-REC-NON-RNI-CTRFD-SAR-MD-TR-1-B-EarlyRePayment-Newcreateloan.xlsx|
	  Then I verified the "Summary" details successfully 
	  			| 439-RBI-EI-DB-SAR-REC-NON-RNI-CTRFD-SAR-MD-TR-1-B-EarlyRePayment-Newcreateloan.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
	  			| 439-RBI-EI-DB-SAR-REC-NON-RNI-CTRFD-SAR-MD-TR-1-B-EarlyRePayment-Newcreateloan.xlsx|
	  Then I make repayment and verified the following tabs
	  			|439-RBI-EI-DB-SAR-REC-NON-RNI-CTRFD-SAR-MD-TR-1-B-EarlyRePayment-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
	  
@scenario8-Loan-440-RBI-EI-DB-SAR-REC-NON-RNI-CTRFD-DL-MD-TR-1-B-EarlyRePayment
	  Scenario: Loan-440-RBI-EI-DB-SAR-REC-NON-RNI-CTRFD-DL-MD-TR-1-B-EarlyRePayment
	  Given I setup the clients 
	  Then I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			| 440-RBI-EI-DB-SAR-REC-NON-RNI-CTRFD-DL-MD-TR-1-EarlyRePayment-Newcreateloan.xlsx|
	  Then I verified the "Summary" details successfully 
	  			| 440-RBI-EI-DB-SAR-REC-NON-RNI-CTRFD-DL-MD-TR-1-EarlyRePayment-Newcreateloan.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
	  			| 440-RBI-EI-DB-SAR-REC-NON-RNI-CTRFD-DL-MD-TR-1-EarlyRePayment-Newcreateloan.xlsx|
	  Then I make repayment and verified the following tabs
	  			|440-RBI-EI-DB-SAR-REC-NON-RNI-CTRFD-DL-MD-TR-1-EarlyRePayment-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
	  
	  				
@scenario9-485-RBI-EPP-DB-DL-REC-NON-RNI-CTPD-SAR-MD-TR-1-EarlyRePayment
      Scenario: Loan-485-RBI-EPP-DB-DL-REC-NON-RNI-CTPD-SAR-MD-TR-1-EarlyRePayment
	  Given I setup the clients 
	  Then I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			| 485-RBI-EPP-DB-DL-REC-NON-RNI-CTPD-SAR-MD-TR-1-EarlyRePayment-Newcreateloan.xlsx|
	  Then I verified the "Summary" details successfully 
	  			| 485-RBI-EPP-DB-DL-REC-NON-RNI-CTPD-SAR-MD-TR-1-EarlyRePayment-Newcreateloan.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
	  			| 485-RBI-EPP-DB-DL-REC-NON-RNI-CTPD-SAR-MD-TR-1-EarlyRePayment-Newcreateloan.xlsx|
	  Then I make repayment and verified the following tabs
	  			|485-RBI-EPP-DB-DL-REC-NON-RNI-CTPD-SAR-MD-TR-1-EarlyRePayment-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
	  			
	   		 		 		 		 		 		 		 		 		 		 		 		 		 		 		 		
@scenario10-486-RBI-EPP-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-EarlyRePayment
	  Scenario: Loan-486-RBI-EPP-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-EarlyRePayment
	  Given I setup the clients 
	  Then I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			| 486-RBI-EPP-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-EarlyRePayment-Newcreateloan.xlsx|
	  Then I verified the "Summary" details successfully 
	  			| 486-RBI-EPP-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-EarlyRePayment-Newcreateloan.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
	  			| 486-RBI-EPP-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-EarlyRePayment-Newcreateloan.xlsx|
	  
	  Then I make repayment and verified the following tabs
	  			|486-RBI-EPP-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-EarlyRePayment-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
	  	 		 		 		 		 		 		 		 		 		 		
@scenario11-487-RBI-EPP-DB-DL-REC-NON-RNI-CTRFD-SAR-MD-TR-1-EarlyRePayment
	  Scenario: Loan-487-RBI-EPP-DB-DL-REC-NON-RNI-CTRFD-SAR-MD-TR-1-EarlyRePayment
	  Given I setup the clients 
	  Then I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			| 487-RBI-EPP-DB-DL-REC-NON-RNI-CTRFD-SAR-MD-TR-1-EarlyRePayment-Newcreateloan.xlsx|
	  Then I verified the "Summary" details successfully 
	  			| 487-RBI-EPP-DB-DL-REC-NON-RNI-CTRFD-SAR-MD-TR-1-EarlyRePayment-Newcreateloan.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
	  			| 487-RBI-EPP-DB-DL-REC-NON-RNI-CTRFD-SAR-MD-TR-1-EarlyRePayment-Newcreateloan.xlsx|
	  Then I make repayment and verified the following tabs
	  			|487-RBI-EPP-DB-DL-REC-NON-RNI-CTRFD-SAR-MD-TR-1-EarlyRePayment-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
	  	
@scenario12-Loan-488-RBI-EPP-DB-DL-REC-NON-RNI-CTRFD-DL-MD-TR-1-EarlyRePayment
	  
	  Scenario: Loan-488-RBI-EPP-DB-DL-REC-NON-RNI-CTRFD-DL-MD-TR-1-EarlyRePayment
	  Given I setup the clients 
	  Then I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			| 488-RBI-EPP-DB-DL-REC-NON-RNI-CTRFD-DL-MD-TR-1-EarlyRePayment-Newcreateloan.xlsx|
	  Then I verified the "Summary" details successfully 
	  			| 488-RBI-EPP-DB-DL-REC-NON-RNI-CTRFD-DL-MD-TR-1-EarlyRePayment-Newcreateloan.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
	  			| 488-RBI-EPP-DB-DL-REC-NON-RNI-CTRFD-DL-MD-TR-1-EarlyRePayment-Newcreateloan.xlsx|
	  Then I make repayment and verified the following tabs
	  			|488-RBI-EPP-DB-DL-REC-NON-RNI-CTRFD-DL-MD-TR-1-EarlyRePayment-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
	  			 		
@scenario13-Loan-533-RBI-EPP-DB-SAR-REC-NON-RNI-CTPD-SAR-MD-TR-1-EarlyRePayment
	  
	 Scenario: Loan-533-RBI-EPP-DB-SAR-REC-NON-RNI-CTPD-SAR-MD-TR-1-EarlyRePayment
	  Given I setup the clients 
	  Then I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			| 533-RBI-EPP-DB-SAR-REC-NON-RNI-CTPD-SAR-MD-TR-1-EarlyRePayment-Newcreateloan.xlsx|
	  Then I verified the "Summary" details successfully 
	  			| 533-RBI-EPP-DB-SAR-REC-NON-RNI-CTPD-SAR-MD-TR-1-EarlyRePayment-Newcreateloan.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
	  			| 533-RBI-EPP-DB-SAR-REC-NON-RNI-CTPD-SAR-MD-TR-1-EarlyRePayment-Newcreateloan.xlsx|
	  Then I make repayment and verified the following tabs
	  			|533-RBI-EPP-DB-SAR-REC-NON-RNI-CTPD-SAR-MD-TR-1-EarlyRePayment-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
	  	
@scenario14-Loan-534-RBI-EPP-DB-SAR-REC-NON-RNI-CTPD-DL-MD-TR-1-EarlyRePayment
	  
	  Scenario: Loan-534-RBI-EPP-DB-SAR-REC-NON-RNI-CTPD-DL-MD-TR-1-EarlyRePayment
	  Given I setup the clients 
	  Then I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			| 534-RBI-EPP-DB-SAR-REC-NON-RNI-CTPD-DL-MD-TR-1-EarlyRePayment-Newcreateloan.xlsx|
	  Then I verified the "Summary" details successfully 
	  			| 534-RBI-EPP-DB-SAR-REC-NON-RNI-CTPD-DL-MD-TR-1-EarlyRePayment-Newcreateloan.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
	  			| 534-RBI-EPP-DB-SAR-REC-NON-RNI-CTPD-DL-MD-TR-1-EarlyRePayment-Newcreateloan.xlsx|
	  Then I make repayment and verified the following tabs
	  			|534-RBI-EPP-DB-SAR-REC-NON-RNI-CTPD-DL-MD-TR-1-EarlyRePayment-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
	  	
@scenario15-Loan-535-RBI-EPP-DB-SAR-REC-NON-RNI-CTRFD-SAR-MD-TR-1-EarlyRePayment
	  
	  Scenario: Loan-535-RBI-EPP-DB-SAR-REC-NON-RNI-CTRFD-SAR-MD-TR-1-EarlyRePayment
	  Given I setup the clients 
	  Then I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			| 535-RBI-EPP-DB-SAR-REC-NON-RNI-CTRFD-SAR-MD-TR-1-EarlyRePayment-Newcreateloan.xlsx|
	  Then I verified the "Summary" details successfully 
	  			| 535-RBI-EPP-DB-SAR-REC-NON-RNI-CTRFD-SAR-MD-TR-1-EarlyRePayment-Newcreateloan.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
	  			| 535-RBI-EPP-DB-SAR-REC-NON-RNI-CTRFD-SAR-MD-TR-1-EarlyRePayment-Newcreateloan.xlsx|
	  Then I make repayment and verified the following tabs
	  			|535-RBI-EPP-DB-SAR-REC-NON-RNI-CTRFD-SAR-MD-TR-1-EarlyRePayment-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
	  	
@scenario16-Loan-536-RBI-EPP-DB-SAR-REC-NON-RNI-CTRFD-DL-MD-TR-1-EarlyRePayment
	  
	  Scenario: Loan-536-RBI-EPP-DB-SAR-REC-NON-RNI-CTRFD-DL-MD-TR-1-EarlyRePayment
	  Given I setup the clients 
	  Then I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			| 536-RBI-EPP-DB-SAR-REC-NON-RNI-CTRFD-DL-MD-TR-1-EarlyRePayment-Newcreateloan.xlsx|
	  Then I verified the "Summary" details successfully 
	  			| 536-RBI-EPP-DB-SAR-REC-NON-RNI-CTRFD-DL-MD-TR-1-EarlyRePayment-Newcreateloan.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
	  			| 536-RBI-EPP-DB-SAR-REC-NON-RNI-CTRFD-DL-MD-TR-1-EarlyRePayment-Newcreateloan.xlsx|
	  Then I make repayment and verified the following tabs
	  			|536-RBI-EPP-DB-SAR-REC-NON-RNI-CTRFD-DL-MD-TR-1-EarlyRePayment-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
	  			
@scenario17-Loan-5RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-ONTIME
	  Scenario:  Loan-5RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-ONTIME
	  Given I setup the clients 
	  Then I entered the values into client from "Input" sheet
	  		   |Createclient.xlsx|
	  Then I should see client created successfully from "Output" sheet
	    	   |Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	           | 5RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-ONTIME-Newcreateloan.xlsx|
	  Then I verified the "Summary" details successfully	
			   | 5RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-ONTIME-Newcreateloan.xlsx|
   	  And I verified the "Repayment Schedule" details successfully	
	           | 5RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-ONTIME-Newcreateloan.xlsx|
	  Then I make repayment and verified the following tabs
   		       |5RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-ONTIME-Makerepayment1.xlsx|Repayment Schedule|
    
@scenario18-Loan-6RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-ONTIME
	 		   
		Scenario: Loan-6RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-ONTIME
		Given I setup the clients 
		
	 Then I entered the values into client from "Input" sheet
	    |Createclient.xlsx|
	 Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	 When I set up the new create loan from "NewLoanInput" sheet
	     | 6RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-ONTIME-Newcreateloan.xlsx|
	 Then I verified the "Summary" details successfully	
		 | 6RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-ONTIME-Newcreateloan.xlsx|
     And I verified the "Repayment Schedule" details successfully	
	     | 6RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-ONTIME-Newcreateloan.xlsx|
	     Then I make repayment and verified the following tabs
     |6RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-ONTIME-Makerepayment1.xlsx|Repayment Schedule|
     
@scenario19-Loan7-RBI-EI-DB-DL-REC-NOCOM-RNI-CTRFD-SAR-MD-TR-1-ONTIME
	Scenario: Loan7-RBI-EI-DB-DL-REC-NOCOM-RNI-CTRFD-SAR-MD-TR-1-ONTIME
		Given I setup the clients 
		
	Then I entered the values into client from "Input" sheet
	    |Createclient.xlsx|
	Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	When I set up the new create loan from "NewLoanInput" sheet
	     | 7RBI-EI-DB-DL-REC-NOCOM-RNI-CTRFD-SAR-MD-TR-1-ONTIME-Newcreateloan.xlsx|
	Then I verified the "Summary" details successfully	
		 | 7RBI-EI-DB-DL-REC-NOCOM-RNI-CTRFD-SAR-MD-TR-1-ONTIME-Newcreateloan.xlsx|
    And I verified the "Repayment Schedule" details successfully	
	     | 7RBI-EI-DB-DL-REC-NOCOM-RNI-CTRFD-SAR-MD-TR-1-ONTIME-Newcreateloan.xlsx|
	     Then I make repayment and verified the following tabs
     |7RBI-EI-DB-DL-REC-NOCOM-RNI-CTRFD-SAR-MD-TR-1-ONTIME-Makerepayment1.xlsx|Repayment Schedule|

@scenario20-Loan-8RBI-EI-DB-DL-REC-NOCOM-RNI-CTRFD-DL-MD-TR-1-ONTIME

Scenario: Loan-8RBI-EI-DB-DL-REC-NOCOM-RNI-CTRFD-DL-MD-TR-1-ONTIME
		Given I setup the clients 
		
	Then I entered the values into client from "Input" sheet
	    |Createclient.xlsx|
	Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|    
	When I set up the new create loan from "NewLoanInput" sheet
	     | 8RBI-EI-DB-DL-REC-NOCOM-RNI-CTRFD-DL-MD-TR-1-ONTIME-Newcreateloan.xlsx|
	Then I verified the "Summary" details successfully	
		 | 8RBI-EI-DB-DL-REC-NOCOM-RNI-CTRFD-DL-MD-TR-1-ONTIME-Newcreateloan.xlsx|
    And I verified the "Repayment Schedule" details successfully	
	     | 8RBI-EI-DB-DL-REC-NOCOM-RNI-CTRFD-DL-MD-TR-1-ONTIME-Newcreateloan.xlsx|
	     Then I make repayment and verified the following tabs
     |8RBI-EI-DB-DL-REC-NOCOM-RNI-CTRFD-DL-MD-TR-1-ONTIME-Makerepayment1.xlsx|Repayment Schedule|

@scenario21-Loan-53RBI-EI-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-ONTIME
Scenario: Loan-53RBI-EI-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-ONTIME
		Given I setup the clients 
		
	Then I entered the values into client from "Input" sheet
	    |Createclient.xlsx|
	Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	When I set up the new create loan from "NewLoanInput" sheet
	     | 53RBI-EI-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-ONTIME-Newcreateloan.xlsx|
	Then I verified the "Summary" details successfully	
		 | 53RBI-EI-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-ONTIME-Newcreateloan.xlsx|
    And I verified the "Repayment Schedule" details successfully	
	     | 53RBI-EI-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-ONTIME-Newcreateloan.xlsx|
	     Then I make repayment and verified the following tabs
     |53RBI-EI-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-ONTIME-Makerepayment1.xlsx|Repayment Schedule|

@scenario22-Loan-54RBI-EI-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-ONTIME
Scenario: Loan-54RBI-EI-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-ONTIME
	Given I setup the clients 
	Then I entered the values into client from "Input" sheet
	    |Createclient.xlsx|
	Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	When I set up the new create loan from "NewLoanInput" sheet
	     | 54RBI-EI-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-ONTIME-Newcreateloan.xlsx|
	Then I verified the "Summary" details successfully	
		 | 54RBI-EI-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-ONTIME-Newcreateloan.xlsx|
    And I verified the "Repayment Schedule" details successfully	
	     | 54RBI-EI-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-ONTIME-Newcreateloan.xlsx|
	     Then I make repayment and verified the following tabs
     |54RBI-EI-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-ONTIME-Makerepayment1.xlsx|Repayment Schedule|     

@scenario23-Loan-55RBI-EI-DB-SAR-REC-NOCOM-RNI-CTRFD-SAR-MD-TR-1-ONTIME
Scenario: Loan-55RBI-EI-DB-SAR-REC-NOCOM-RNI-CTRFD-SAR-MD-TR-1-ONTIME
	Given I setup the clients 
	Then I entered the values into client from "Input" sheet
	    |Createclient.xlsx|
	Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	When I set up the new create loan from "NewLoanInput" sheet
	     | 55RBI-EI-DB-SAR-REC-NOCOM-RNI-CTRFD-SAR-MD-TR-1-ONTIME-Newcreateloan.xlsx|
	Then I verified the "Summary" details successfully	
		 | 55RBI-EI-DB-SAR-REC-NOCOM-RNI-CTRFD-SAR-MD-TR-1-ONTIME-Newcreateloan.xlsx|
    And I verified the "Repayment Schedule" details successfully	
	     | 55RBI-EI-DB-SAR-REC-NOCOM-RNI-CTRFD-SAR-MD-TR-1-ONTIME-Newcreateloan.xlsx|
	     Then I make repayment and verified the following tabs
     |55RBI-EI-DB-SAR-REC-NOCOM-RNI-CTRFD-SAR-MD-TR-1-ONTIME-Makerepayment1.xlsx|Repayment Schedule|
     
@scenario24-Loan-56RBI-EI-DB-SAR-REC-NOCOM-RNI-CTRFD-DL-MD-TR-1-ONTIME
Scenario: Loan-56RBI-EI-DB-SAR-REC-NOCOM-RNI-CTRFD-DL-MD-TR-1-ONTIME
	Given I setup the clients 
	Then I entered the values into client from "Input" sheet
	    |Createclient.xlsx|
	Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	When I set up the new create loan from "NewLoanInput" sheet
	     | 56RBI-EI-DB-SAR-REC-NOCOM-RNI-CTRFD-DL-MD-TR-1-ONTIME-Newcreateloan.xlsx|
	Then I verified the "Summary" details successfully	
		 | 56RBI-EI-DB-SAR-REC-NOCOM-RNI-CTRFD-DL-MD-TR-1-ONTIME-Newcreateloan.xlsx|
    And I verified the "Repayment Schedule" details successfully	
	     | 56RBI-EI-DB-SAR-REC-NOCOM-RNI-CTRFD-DL-MD-TR-1-ONTIME-Newcreateloan.xlsx|
	     Then I make repayment and verified the following tabs
     |56RBI-EI-DB-SAR-REC-NOCOM-RNI-CTRFD-DL-MD-TR-1-ONTIME-Makerepayment1.xlsx|Repayment Schedule|
      
@scenario25-Loan-101RBI-EPP-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-ONTIME
Scenario: Loan-101RBI-EPP-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-ONTIME
	Given I setup the clients 
	Then I entered the values into client from "Input" sheet
	    |Createclient.xlsx|
	Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	When I set up the new create loan from "NewLoanInput" sheet
	     | 101RBI-EPP-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-ONTIME-Newcreateloan.xlsx|
	Then I verified the "Summary" details successfully	
		 | 101RBI-EPP-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-ONTIME-Newcreateloan.xlsx|
    And I verified the "Repayment Schedule" details successfully	
	     | 101RBI-EPP-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-ONTIME-Newcreateloan.xlsx|
	     Then I make repayment and verified the following tabs
     |101RBI-EPP-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-ONTIME-Makerepayment1.xlsx|Repayment Schedule|
     
@scenario26-Loan-102RBI-EPP-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME
Scenario: Loan-102RBI-EPP-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME
	Given I setup the clients 
		
	Then I entered the values into client from "Input" sheet
	    |Createclient.xlsx|
	Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	When I set up the new create loan from "NewLoanInput" sheet
	     | 102RBI-EPP-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-Newcreateloan.xlsx|
	Then I verified the "Summary" details successfully	
		 | 102RBI-EPP-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-Newcreateloan.xlsx|
    And I verified the "Repayment Schedule" details successfully	
	     | 102RBI-EPP-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-Newcreateloan.xlsx|
	     Then I make repayment and verified the following tabs
         |102RBI-EPP-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-Makerepayment1.xlsx|Repayment Schedule|
     
@scenario27-Loan-103RBI-EPP-DB-DL-REC-NON-RNI-CTRFD-SAR-MD-TR-1-ONTIME
Scenario: Loan-103RBI-EPP-DB-DL-REC-NON-RNI-CTRFD-SAR-MD-TR-1-ONTIME
	Given I setup the clients 
	Then I entered the values into client from "Input" sheet
	    |Createclient.xlsx|
	Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	When I set up the new create loan from "NewLoanInput" sheet
	     | 103RBI-EPP-DB-DL-REC-NON-RNI-CTRFD-SAR-MD-TR-1-ONTIME-Newcreateloan.xlsx|
	Then I verified the "Summary" details successfully	
		 | 103RBI-EPP-DB-DL-REC-NON-RNI-CTRFD-SAR-MD-TR-1-ONTIME-Newcreateloan.xlsx|
    And I verified the "Repayment Schedule" details successfully	
	     | 103RBI-EPP-DB-DL-REC-NON-RNI-CTRFD-SAR-MD-TR-1-ONTIME-Newcreateloan.xlsx|
	     Then I make repayment and verified the following tabs
     |103RBI-EPP-DB-DL-REC-NON-RNI-CTRFD-SAR-MD-TR-1-ONTIME-Makerepayment1.xlsx|Repayment Schedule|
     
@scenario28-Loan-104RBI-EPP-DB-DL-REC-NON-RNI-CTRFD-DL-MD-TR-1-ONTIME
Scenario: Loan-104RBI-EPP-DB-DL-REC-NON-RNI-CTRFD-DL-MD-TR-1-ONTIME
	Given I setup the clients 
	Then I entered the values into client from "Input" sheet
	    |Createclient.xlsx|
	Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	When I set up the new create loan from "NewLoanInput" sheet
	     | 104RBI-EPP-DB-DL-REC-NON-RNI-CTRFD-DL-MD-TR-1-ONTIME-Newcreateloan.xlsx|
	Then I verified the "Summary" details successfully	
		 | 104RBI-EPP-DB-DL-REC-NON-RNI-CTRFD-DL-MD-TR-1-ONTIME-Newcreateloan.xlsx|
    And I verified the "Repayment Schedule" details successfully	
	     | 104RBI-EPP-DB-DL-REC-NON-RNI-CTRFD-DL-MD-TR-1-ONTIME-Newcreateloan.xlsx|
	     Then I make repayment and verified the following tabs
     |104RBI-EPP-DB-DL-REC-NON-RNI-CTRFD-DL-MD-TR-1-ONTIME-Makerepayment1.xlsx|Repayment Schedule|
     
@scenario29-Loan-149RBI-EPP-DB-SAR-REC-NON-RNI-CTPD-SAR-MD-TR-1-ONTIME
Scenario: Loan-149RBI-EPP-DB-SAR-REC-NON-RNI-CTPD-SAR-MD-TR-1-ONTIME
	Given I setup the clients 
	Then I entered the values into client from "Input" sheet
	    |Createclient.xlsx|
	Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	When I set up the new create loan from "NewLoanInput" sheet
	     | 149RBI-EPP-DB-SAR-REC-NON-RNI-CTPD-SAR-MD-TR-1-ONTIME-Newcreateloan.xlsx|
	Then I verified the "Summary" details successfully	
		 | 149RBI-EPP-DB-SAR-REC-NON-RNI-CTPD-SAR-MD-TR-1-ONTIME-Newcreateloan.xlsx|
    And I verified the "Repayment Schedule" details successfully	
	     | 149RBI-EPP-DB-SAR-REC-NON-RNI-CTPD-SAR-MD-TR-1-ONTIME-Newcreateloan.xlsx|
	     Then I make repayment and verified the following tabs
     |149RBI-EPP-DB-SAR-REC-NON-RNI-CTPD-SAR-MD-TR-1-ONTIME-Makerepayment1.xlsx|Repayment Schedule|
     
@scenario30-Loan-150RBI-EPP-DB-SAR-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME
Scenario: Loan-150RBI-EPP-DB-SAR-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME
	Given I setup the clients 
	Then I entered the values into client from "Input" sheet
	    |Createclient.xlsx|
	Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	When I set up the new create loan from "NewLoanInput" sheet
	     | 150RBI-EPP-DB-SAR-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-Newcreateloan.xlsx|
	Then I verified the "Summary" details successfully	
		 | 150RBI-EPP-DB-SAR-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-Newcreateloan.xlsx|
    And I verified the "Repayment Schedule" details successfully	
	     | 150RBI-EPP-DB-SAR-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-Newcreateloan.xlsx|
	     Then I make repayment and verified the following tabs
     |150RBI-EPP-DB-SAR-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-Makerepayment1.xlsx|Repayment Schedule|
     
@scenario31-Loan-151RBI-EPP-DB-SAR-REC-NON-RNI-CTRFD-SAR-MD-TR-1-ONTIME
Scenario: Loan-151RBI-EPP-DB-SAR-REC-NON-RNI-CTRFD-SAR-MD-TR-1-ONTIME
	Given I setup the clients 
	Then I entered the values into client from "Input" sheet
	    |Createclient.xlsx|
	Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	When I set up the new create loan from "NewLoanInput" sheet
	     | 151RBI-EPP-DB-SAR-REC-NON-RNI-CTRFD-SAR-MD-TR-1-ONTIME-Newcreateloan.xlsx|
	Then I verified the "Summary" details successfully	
		 | 151RBI-EPP-DB-SAR-REC-NON-RNI-CTRFD-SAR-MD-TR-1-ONTIME-Newcreateloan.xlsx|
    And I verified the "Repayment Schedule" details successfully	
	     | 151RBI-EPP-DB-SAR-REC-NON-RNI-CTRFD-SAR-MD-TR-1-ONTIME-Newcreateloan.xlsx|
	     Then I make repayment and verified the following tabs
     |151RBI-EPP-DB-SAR-REC-NON-RNI-CTRFD-SAR-MD-TR-1-ONTIME-Makerepayment1.xlsx|Repayment Schedule|
     
@scenario32-Loan-152RBI-EPP-DB-SAR-REC-NON-RNI-CTRFD-DL-MD-TR-1-ONTIME
Scenario: Loan-152RBI-EPP-DB-SAR-REC-NON-RNI-CTRFD-DL-MD-TR-1-ONTIME
	Given I setup the clients 
	Then I entered the values into client from "Input" sheet
	    |Createclient.xlsx|
	Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	When I set up the new create loan from "NewLoanInput" sheet
	     | 152RBI-EPP-DB-SAR-REC-NON-RNI-CTRFD-DL-MD-TR-1-ONTIME-Newcreateloan.xlsx|
	Then I verified the "Summary" details successfully	
		 | 152RBI-EPP-DB-SAR-REC-NON-RNI-CTRFD-DL-MD-TR-1-ONTIME-Newcreateloan.xlsx|
    And I verified the "Repayment Schedule" details successfully	
	     | 152RBI-EPP-DB-SAR-REC-NON-RNI-CTRFD-DL-MD-TR-1-ONTIME-Newcreateloan.xlsx|
	     Then I make repayment and verified the following tabs
     |152RBI-EPP-DB-SAR-REC-NON-RNI-CTRFD-DL-MD-TR-1-ONTIME-Makerepayment1.xlsx|Repayment Schedule|
	
@scenario33-Loan-773-RBI-EI-DB-DL-REC-NON-RNI-CTPD-SAR-MD-TR-1-LateRepayment
Scenario:  Loan-773-RBI-EI-DB-DL-REC-NON-RNI-CTPD-SAR-MD-TR-1-Late Repayment
	Given I setup the clients 
	Then I entered the values into client from "Input" sheet
	    |Createclient.xlsx|
	Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	When I set up the new create loan from "NewLoanInput" sheet
	     | 773-RBI-EI-DB-DL-REC-NON-RNI-CTPD-SAR-MD-TR-1-Late Repayment-Newcreateloan.xlsx|
	Then I verified the "Summary" details successfully	
		 | 773-RBI-EI-DB-DL-REC-NON-RNI-CTPD-SAR-MD-TR-1-Late Repayment-Newcreateloan.xlsx|
    And I verified the "Repayment Schedule" details successfully	
	     | 773-RBI-EI-DB-DL-REC-NON-RNI-CTPD-SAR-MD-TR-1-Late Repayment-Newcreateloan.xlsx|
	     Then I make repayment and verified the following tabs
    |773-RBI-EI-DB-DL-REC-NON-RNI-CTPD-SAR-MD-TR-1-Late Repayment-Makerepayment1.xlsx|Repayment Schedule|
  
 @scenario34-Loan-774-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-LateLateRepayment
Scenario: Loan-774-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-Late Repayment
	Given I setup the clients 
	Then I entered the values into client from "Input" sheet
	    |Createclient.xlsx|
	Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	When I set up the new create loan from "NewLoanInput" sheet
	     | 774-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-Late Repayment-Newcreateloan.xlsx|
	Then I verified the "Summary" details successfully	
		 | 774-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-Late Repayment-Newcreateloan.xlsx|
    And I verified the "Repayment Schedule" details successfully	
	     | 774-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-Late Repayment-Newcreateloan.xlsx|
	     Then I make repayment and verified the following tabs
     |774-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-Late Repayment-Makerepayment1.xlsx|Repayment Schedule|
     
@scenario35-Loan-775-RBI-EI-DB-DL-REC-NON-RNI-CTRFD-SAR-MD-TR-1-LateRepayment
Scenario: Loan-775-RBI-EI-DB-DL-REC-NON-RNI-CTRFD-SAR-MD-TR-1-Late Repayment
	Given I setup the clients 
	Then I entered the values into client from "Input" sheet
	    |Createclient.xlsx|
	Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	When I set up the new create loan from "NewLoanInput" sheet
	     | 775-RBI-EI-DB-DL-REC-NON-RNI-CTRFD-SAR-MD-TR-1-Late Repayment-Newcreateloan.xlsx|
	Then I verified the "Summary" details successfully	
		 | 775-RBI-EI-DB-DL-REC-NON-RNI-CTRFD-SAR-MD-TR-1-Late Repayment-Newcreateloan.xlsx|
    And I verified the "Repayment Schedule" details successfully	
	     | 775-RBI-EI-DB-DL-REC-NON-RNI-CTRFD-SAR-MD-TR-1-Late Repayment-Newcreateloan.xlsx|
	     Then I make repayment and verified the following tabs
     |775-RBI-EI-DB-DL-REC-NON-RNI-CTRFD-SAR-MD-TR-1-Late Repayment-Makerepayment1.xlsx|Repayment Schedule|

@scenario36-Loan-776-RBI-EI-DB-DL-REC-NON-RNI-CTRFD-DL-MD-TR-1-LateRepayment
Scenario: Loan-776-RBI-EI-DB-DL-REC-NON-RNI-CTRFD-DL-MD-TR-1-Late Repayment
	Given I setup the clients 
	Then I entered the values into client from "Input" sheet
	    |Createclient.xlsx|
	Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	When I set up the new create loan from "NewLoanInput" sheet
	     | 776-RBI-EI-DB-DL-REC-NON-RNI-CTRFD-DL-MD-TR-1-Late Repayment-Newcreateloan.xlsx|
	Then I verified the "Summary" details successfully	
		 | 776-RBI-EI-DB-DL-REC-NON-RNI-CTRFD-DL-MD-TR-1-Late Repayment-Newcreateloan.xlsx|
    And I verified the "Repayment Schedule" details successfully	
	     | 776-RBI-EI-DB-DL-REC-NON-RNI-CTRFD-DL-MD-TR-1-Late Repayment-Newcreateloan.xlsx|
	     Then I make repayment and verified the following tabs
     |776-RBI-EI-DB-DL-REC-NON-RNI-CTRFD-DL-MD-TR-1-Late Repayment-Makerepayment1.xlsx|Repayment Schedule|

@scenario37-Loan-821-RBI-EI-DB-SAR-REC-NON-RNI-CTPD-SAR-MD-TR-1-LateRepayment
Scenario: Loan-821-RBI-EI-DB-SAR-REC-NON-RNI-CTPD-SAR-MD-TR-1-Late Repayment
	Given I setup the clients 
	Then I entered the values into client from "Input" sheet
	    |Createclient.xlsx|
	Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	When I set up the new create loan from "NewLoanInput" sheet
	     | 821-RBI-EI-DB-SAR-REC-NON-RNI-CTPD-SAR-MD-TR-1-Late Repayment-Newcreateloan.xlsx|
	Then I verified the "Summary" details successfully	
		 | 821-RBI-EI-DB-SAR-REC-NON-RNI-CTPD-SAR-MD-TR-1-Late Repayment-Newcreateloan.xlsx|
    And I verified the "Repayment Schedule" details successfully	
	     | 821-RBI-EI-DB-SAR-REC-NON-RNI-CTPD-SAR-MD-TR-1-Late Repayment-Newcreateloan.xlsx|
	     Then I make repayment and verified the following tabs
     |821-RBI-EI-DB-SAR-REC-NON-RNI-CTPD-SAR-MD-TR-1-Late Repayment-Makerepayment1.xlsx|Repayment Schedule|
     
     @scenario38-Loan-822-RBI-EI-DB-SAR-REC-NON-RNI-CTPD-DL-MD-TR-1-LateRepayment
Scenario: Loan-822-RBI-EI-DB-SAR-REC-NON-RNI-CTPD-DL-MD-TR-1-Late Repayment
	Given I setup the clients 
	Then I entered the values into client from "Input" sheet
	    |Createclient.xlsx|
	Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	When I set up the new create loan from "NewLoanInput" sheet
	     | 822-RBI-EI-DB-SAR-REC-NON-RNI-CTPD-DL-MD-TR-1-Late Repayment-Newcreateloan.xlsx|
	Then I verified the "Summary" details successfully	
		 | 822-RBI-EI-DB-SAR-REC-NON-RNI-CTPD-DL-MD-TR-1-Late Repayment-Newcreateloan.xlsx|
    And I verified the "Repayment Schedule" details successfully	
	     | 822-RBI-EI-DB-SAR-REC-NON-RNI-CTPD-DL-MD-TR-1-Late Repayment-Newcreateloan.xlsx|
	     Then I make repayment and verified the following tabs
     |822-RBI-EI-DB-SAR-REC-NON-RNI-CTPD-DL-MD-TR-1-Late Repayment-Makerepayment1.xlsx|Repayment Schedule|     

@scenario39-Loan-823-RBI-EI-DB-SAR-Y-NON-RNI-CTRFD-SAR-MD-Y-1-LateRepayment
Scenario: Loan-823-RBI-EI-DB-SAR-Y-NON-RNI-CTRFD-SAR-MD-Y-1-Late Repayment
	Given I setup the clients 
	Then I entered the values into client from "Input" sheet
	    |Createclient.xlsx|
	Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	When I set up the new create loan from "NewLoanInput" sheet
	     | 823-RBI-EI-DB-SAR-Y-NON-RNI-CTRFD-SAR-MD-Y-1-Late Repayment-Newcreateloan.xlsx|
	Then I verified the "Summary" details successfully	
		 | 823-RBI-EI-DB-SAR-Y-NON-RNI-CTRFD-SAR-MD-Y-1-Late Repayment-Newcreateloan.xlsx|
    And I verified the "Repayment Schedule" details successfully	
	     | 823-RBI-EI-DB-SAR-Y-NON-RNI-CTRFD-SAR-MD-Y-1-Late Repayment-Newcreateloan.xlsx|
	     Then I make repayment and verified the following tabs
     |823-RBI-EI-DB-SAR-Y-NON-RNI-CTRFD-SAR-MD-Y-1-Late Repayment-Makerepayment1.xlsx|Repayment Schedule|

@scenario40-Loan-824-RBI-EI-DB-SAR-REC-NON-RNI-CTRFD-DL-MD-TR-1-LateRepayment   
Scenario: Loan-824-RBI-EI-DB-SAR-REC-NON-RNI-CTRFD-DL-MD-TR-1-Late Repayment
	Given I setup the clients 
	Then I entered the values into client from "Input" sheet
	    |Createclient.xlsx|
	Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	When I set up the new create loan from "NewLoanInput" sheet
	     | 824-RBI-EI-DB-SAR-REC-NON-RNI-CTRFD-DL-MD-TR-1-Late Repayment-Newcreateloan.xlsx|
	Then I verified the "Summary" details successfully	
		 | 824-RBI-EI-DB-SAR-REC-NON-RNI-CTRFD-DL-MD-TR-1-Late Repayment-Newcreateloan.xlsx|
    And I verified the "Repayment Schedule" details successfully	
	     | 824-RBI-EI-DB-SAR-REC-NON-RNI-CTRFD-DL-MD-TR-1-Late Repayment-Newcreateloan.xlsx|
	     Then I make repayment and verified the following tabs
     |824-RBI-EI-DB-SAR-REC-NON-RNI-CTRFD-DL-MD-TR-1-Late Repayment-Makerepayment1.xlsx|Repayment Schedule|

@scenario41-Loan-869-RBI-EPP-DB-DL-REC-NON-RNI-CTPD-SAR-MD-TR-1-LateRepayment
Scenario: Loan-869-RBI-EPP-DB-DL-REC-NON-RNI-CTPD-SAR-MD-TR-1-Late Repayment
	Given I setup the clients 
	Then I entered the values into client from "Input" sheet
	    |Createclient.xlsx|
	Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	When I set up the new create loan from "NewLoanInput" sheet
	     | 869-RBI-EPP-DB-DL-REC-NON-RNI-CTPD-SAR-MD-TR-1-Late Repayment-Newcreateloan.xlsx|
	Then I verified the "Summary" details successfully	
		 | 869-RBI-EPP-DB-DL-REC-NON-RNI-CTPD-SAR-MD-TR-1-Late Repayment-Newcreateloan.xlsx|
    And I verified the "Repayment Schedule" details successfully	
	     | 869-RBI-EPP-DB-DL-REC-NON-RNI-CTPD-SAR-MD-TR-1-Late Repayment-Newcreateloan.xlsx|
	     Then I make repayment and verified the following tabs
     |869-RBI-EPP-DB-DL-REC-NON-RNI-CTPD-SAR-MD-TR-1-Late Repayment-Makerepayment1.xlsx|Repayment Schedule|

@scenario42-Loan-870-RBI-EPP-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-LateRepayment
Scenario: Loan-870-RBI-EPP-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-Late Repayment
	Given I setup the clients 
	Then I entered the values into client from "Input" sheet
	    |Createclient.xlsx|
	Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	When I set up the new create loan from "NewLoanInput" sheet
	     | 870-RBI-EPP-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-Late Repayment-Newcreateloan.xlsx|
	Then I verified the "Summary" details successfully	
		 | 870-RBI-EPP-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-Late Repayment-Newcreateloan.xlsx|
    And I verified the "Repayment Schedule" details successfully	
	     | 870-RBI-EPP-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-Late Repayment-Newcreateloan.xlsx|
	     Then I make repayment and verified the following tabs
     |870-RBI-EPP-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-Late Repayment-Makerepayment1.xlsx|Repayment Schedule|

@scenario43-Loan-871-RBI-EPP-DB-DL-REC-NON-RNI-CTRFD-SAR-MD-TR-1-LateRepayment
Scenario: Loan-871-RBI-EPP-DB-DL-REC-NON-RNI-CTRFD-SAR-MD-TR-1-LateRepayment
	Given I setup the clients 
		
	Then I entered the values into client from "Input" sheet
	    |Createclient.xlsx|
	Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	When I set up the new create loan from "NewLoanInput" sheet
	     | 871-RBI-EPP-DB-DL-REC-NON-RNI-CTRFD-SAR-MD-TR-1-LateRepayment-Newcreateloan.xlsx|
	Then I verified the "Summary" details successfully	
		 | 871-RBI-EPP-DB-DL-REC-NON-RNI-CTRFD-SAR-MD-TR-1-LateRepayment-Newcreateloan.xlsx|
    And I verified the "Repayment Schedule" details successfully	
	     | 871-RBI-EPP-DB-DL-REC-NON-RNI-CTRFD-SAR-MD-TR-1-LateRepayment-Newcreateloan.xlsx|
	     Then I make repayment and verified the following tabs
     |871-RBI-EPP-DB-DL-REC-NON-RNI-CTRFD-SAR-MD-TR-1-LateRepayment-Makerepayment1.xlsx|Repayment Schedule|
     
@scenario44-Loan-872-RBI-EPP-DB-DL-REC-NON-RNI-CTRFD-DL-MD-TR-1-LateRepayment
Scenario: Loan-872-RBI-EPP-DB-DL-REC-NON-RNI-CTRFD-DL-MD-TR-1-LateRepayment
	Given I setup the clients 
	Then I entered the values into client from "Input" sheet
	    |Createclient.xlsx|
	Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	When I set up the new create loan from "NewLoanInput" sheet
	     | 872-RBI-EPP-DB-DL-REC-NON-RNI-CTRFD-DL-MD-TR-1-LateRepayment-Newcreateloan.xlsx|
	Then I verified the "Summary" details successfully	
		 | 872-RBI-EPP-DB-DL-REC-NON-RNI-CTRFD-DL-MD-TR-1-LateRepayment-Newcreateloan.xlsx|
    And I verified the "Repayment Schedule" details successfully	
	     | 872-RBI-EPP-DB-DL-REC-NON-RNI-CTRFD-DL-MD-TR-1-LateRepayment-Newcreateloan.xlsx|
	     Then I make repayment and verified the following tabs
     |872-RBI-EPP-DB-DL-REC-NON-RNI-CTRFD-DL-MD-TR-1-LateRepayment-Makerepayment1.xlsx|Repayment Schedule|     
     
@scenario45-Loan-917-RBI-EPP-DB-SAR-REC-NON-RNI-CTPD-SAR-MD-TR-1-LateRepayment
Scenario: Loan-917-RBI-EPP-DB-SAR-REC-NON-RNI-CTPD-SAR-MD-TR-1-LateRepayment
	Given I setup the clients 
	Then I entered the values into client from "Input" sheet
	    |Createclient.xlsx|
	Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	When I set up the new create loan from "NewLoanInput" sheet
	     | 917-RBI-EPP-DB-SAR-REC-NON-RNI-CTPD-SAR-MD-TR-1-LateRepayment-Newcreateloan.xlsx|
	Then I verified the "Summary" details successfully	
		 | 917-RBI-EPP-DB-SAR-REC-NON-RNI-CTPD-SAR-MD-TR-1-LateRepayment-Newcreateloan.xlsx|
    And I verified the "Repayment Schedule" details successfully	
	     | 917-RBI-EPP-DB-SAR-REC-NON-RNI-CTPD-SAR-MD-TR-1-LateRepayment-Newcreateloan.xlsx|
	     Then I make repayment and verified the following tabs
     |917-RBI-EPP-DB-SAR-REC-NON-RNI-CTPD-SAR-MD-TR-1-LateRepayment-Makerepayment1.xlsx|Repayment Schedule|
     
@scenario46-Loan-918-RBI-EPP-DB-SAR-REC-NON-RNI-CTPD-DL-MD-TR-1-LateRepayment
Scenario: Loan-918-RBI-EPP-DB-SAR-REC-NON-RNI-CTPD-DL-MD-TR-1-LateRepayment
	Given I setup the clients 
	Then I entered the values into client from "Input" sheet
	    |Createclient.xlsx|
	Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	When I set up the new create loan from "NewLoanInput" sheet
	     | 918-RBI-EPP-DB-SAR-REC-NON-RNI-CTPD-DL-MD-TR-1-LateRepayment-Newcreateloan.xlsx|
	Then I verified the "Summary" details successfully	
		 | 918-RBI-EPP-DB-SAR-REC-NON-RNI-CTPD-DL-MD-TR-1-LateRepayment-Newcreateloan.xlsx|
    And I verified the "Repayment Schedule" details successfully	
	     | 918-RBI-EPP-DB-SAR-REC-NON-RNI-CTPD-DL-MD-TR-1-LateRepayment-Newcreateloan.xlsx|
	     Then I make repayment and verified the following tabs
     |918-RBI-EPP-DB-SAR-REC-NON-RNI-CTPD-DL-MD-TR-1-LateRepayment-Makerepayment1.xlsx|Repayment Schedule|
     
@scenario47-Loan-919-RBI-EPP-DB-SAR-REC-NON-RNI-CTRFD-SAR-MD-TR-1-LateRepayment
Scenario: Loan-919-RBI-EPP-DB-SAR-REC-NON-RNI-CTRFD-SAR-MD-TR-1-LateRepayment
	Given I setup the clients 
	Then I entered the values into client from "Input" sheet
	    |Createclient.xlsx|
	Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	When I set up the new create loan from "NewLoanInput" sheet
	     | 919-RBI-EPP-DB-SAR-REC-NON-RNI-CTRFD-SAR-MD-TR-1-LateRepayment-Newcreateloan.xlsx|
	Then I verified the "Summary" details successfully	
		 | 919-RBI-EPP-DB-SAR-REC-NON-RNI-CTRFD-SAR-MD-TR-1-LateRepayment-Newcreateloan.xlsx|
    And I verified the "Repayment Schedule" details successfully	
	     | 919-RBI-EPP-DB-SAR-REC-NON-RNI-CTRFD-SAR-MD-TR-1-LateRepayment-Newcreateloan.xlsx|
	     Then I make repayment and verified the following tabs
     |919-RBI-EPP-DB-SAR-REC-NON-RNI-CTRFD-SAR-MD-TR-1-LateRepayment-Makerepayment1.xlsx|Repayment Schedule|
     

     
@scenario48-Loan-920-RBI-EPP-DB-SAR-REC-NON-RNI-CTRFD-DL-MD-TR-1-LateRepayment
Scenario: Loan-920-RBI-EPP-DB-SAR-REC-NON-RNI-CTRFD-DL-MD-TR-1-LateRepayment
	Given I setup the clients 
	Then I entered the values into client from "Input" sheet
	    |Createclient.xlsx|
	Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	When I set up the new create loan from "NewLoanInput" sheet
	     | 920-RBI-EPP-DB-SAR-REC-NON-RNI-CTRFD-DL-MD-TR-1-LateRepayment-Newcreateloan.xlsx|
	Then I verified the "Summary" details successfully	
		 | 920-RBI-EPP-DB-SAR-REC-NON-RNI-CTRFD-DL-MD-TR-1-LateRepayment-Newcreateloan.xlsx|
    And I verified the "Repayment Schedule" details successfully	
	     | 920-RBI-EPP-DB-SAR-REC-NON-RNI-CTRFD-DL-MD-TR-1-LateRepayment-Newcreateloan.xlsx|
	     Then I make repayment and verified the following tabs
     |920-RBI-EPP-DB-SAR-REC-NON-RNI-CTRFD-DL-MD-TR-1-LateRepayment-Makerepayment1.xlsx|Repayment Schedule|	  			

     
     
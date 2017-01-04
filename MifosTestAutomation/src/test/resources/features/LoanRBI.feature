Feature:Loan-RBI-MIFOS
Background:
	Given I navigate to mifos using "default3#/"
	And I login into mifos site using "Login" excel sheet
		| Login.xlsx  |
	Then I should see logged in successfully
	
@RunnerClass3
	  Scenario: Loan-389-RBI-EI-DB-DL-REC-NON-RNI-CTPD-SAR-MD-TR-1-EarlyRePayment
	  
	  Given I setup the product loan "Setup"
				| Productloannavigation.xlsx |
	  Then I entered the values into product from "ProductLoanInput" Sheet
				|389-RBI-EI-DB-DL-REC-NON-RNI-CTPD-SAR-MD-TR-1-EarlyRePayment-Loanproduct.xlsx|
	  Given I setup the clients
	  When I entered the values into client from "Input" sheet
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
	 	 		
@RunnerClass3
	  Scenario: Loan-390-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-EarlyRePayment
	  
	  Given I setup the product loan "Setup"
				| Productloannavigation.xlsx |
	  Then I entered the values into product from "ProductLoanInput" Sheet
				|390-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-EarlyRePayment-Loanproduct.xlsx|
	  Given I setup the clients
	  When I entered the values into client from "Input" sheet
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
	  				
	  
@RunnerClass3
	  Scenario: Loan-391-RBI-EI-DB-DL-REC-NON-RNI-CTRFD-SAR-MD-TR-1-EarlyRePayment
	  
	  Given I setup the product loan "Setup"
				| Productloannavigation.xlsx |
	  Then I entered the values into product from "ProductLoanInput" Sheet
				|391-RBI-EI-DB-DL-REC-NON-RNI-CTRFD-SAR-MD-TR-1-EarlyRePayment-Loanproduct.xlsx|
	  Given I setup the clients 
	  When I entered the values into client from "Input" sheet
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
	  				
	  
@RunnerClass3
	  Scenario: Loan-392-RBI-EI-DB-DL-REC-NON-RNI-CTRFD-DL-MD-TR-1-EarlyRePayment
	  
	  Given I setup the product loan "Setup"
				| Productloannavigation.xlsx |
	  Then I entered the values into product from "ProductLoanInput" Sheet
				|392-RBI-EI-DB-DL-REC-NON-RNI-CTRFD-DL-MD-TR-1-EarlyRePayment-Loanproduct.xlsx|
	  Given I setup the clients
	  When I entered the values into client from "Input" sheet
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
	  								
	  								
@RunnerClass3
	  Scenario: Loan-437-RBI-EI-DB-SAR-REC-NON-RNI-CTPD-SAR-MD-TR-1-EarlyRepayment
	  
	  Given I setup the product loan "Setup"
				| Productloannavigation.xlsx |
	  Then I entered the values into product from "ProductLoanInput" Sheet
				|437-RBI-EI-DB-SAR-REC-NON-RNI-CTPD-SAR-MD-TR-1-EarlyRepayment-Loanproduct.xlsx|
	  Given I setup the clients 
	  When I entered the values into client from "Input" sheet
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
	  			 
@RunnerClass3
	  Scenario: Loan-438-RBI-EI-DB-SAR-REC-NON-RNI-CTPD-DL-MD-TR-1-EarlyRePayment
	  
	  Given I setup the product loan "Setup"
				| Productloannavigation.xlsx |
	  Then I entered the values into product from "ProductLoanInput" Sheet
				|438-RBI-EI-DB-SAR-REC-NON-RNI-CTPD-DL-MD-TR-1-EarlyRePayment-Loanproduct.xlsx|
	  Given I setup the clients
	  When I entered the values into client from "Input" sheet
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
	  
@RunnerClass3
	  Scenario: Loan-439-RBI-EI-DB-SAR-REC-NON-RNI-CTRFD-SAR-MD-TR-1-B-EarlyRePayment
	  
	  Given I setup the product loan "Setup"
				| Productloannavigation.xlsx |
	  Then I entered the values into product from "ProductLoanInput" Sheet
				|439-RBI-EI-DB-SAR-REC-NON-RNI-CTRFD-SAR-MD-TR-1-B-EarlyRePayment-Loanproduct.xlsx|
	  Given I setup the clients
	  When I entered the values into client from "Input" sheet
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
	  
@RunnerClass3
	  Scenario: Loan-440-RBI-EI-DB-SAR-REC-NON-RNI-CTRFD-DL-MD-TR-1-B-EarlyRePayment
	  
	  Given I setup the product loan "Setup"
				| Productloannavigation.xlsx |
	  Then I entered the values into product from "ProductLoanInput" Sheet
				|440-RBI-EI-DB-SAR-REC-NON-RNI-CTRFD-DL-MD-TR-1-EarlyRePayment-Loanproduct.xlsx|
	  Given I setup the clients 
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			|440-RBI-EI-DB-SAR-REC-NON-RNI-CTRFD-DL-MD-TR-1-EarlyRePayment-Newcreateloan.xlsx|
	  Then I verified the "Summary" details successfully 
	  			| 440-RBI-EI-DB-SAR-REC-NON-RNI-CTRFD-DL-MD-TR-1-EarlyRePayment-Newcreateloan.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
	  			| 440-RBI-EI-DB-SAR-REC-NON-RNI-CTRFD-DL-MD-TR-1-EarlyRePayment-Newcreateloan.xlsx|
	  Then I make repayment and verified the following tabs
	  			|440-RBI-EI-DB-SAR-REC-NON-RNI-CTRFD-DL-MD-TR-1-EarlyRePayment-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
	  
	  				
@RunnerClass3
      Scenario: Loan-485-RBI-EPP-DB-DL-REC-NON-RNI-CTPD-SAR-MD-TR-1-EarlyRePayment
	  
	  Given I setup the product loan "Setup"
				| Productloannavigation.xlsx |
	  Then I entered the values into product from "ProductLoanInput" Sheet
				|485-RBI-EPP-DB-DL-REC-NON-RNI-CTPD-SAR-MD-TR-1-EarlyRePayment-Loanproduct.xlsx|
	  Given I setup the clients 
	  When I entered the values into client from "Input" sheet
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
	  			
	   		 		 		 		 		 		 		 		 		 		 		 		 		 		 		 		
@RunnerClass3
	  Scenario: Loan-486-RBI-EPP-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-EarlyRePayment
	  
	  Given I setup the product loan "Setup"
				| Productloannavigation.xlsx |
	  Then I entered the values into product from "ProductLoanInput" Sheet
				|486-RBI-EPP-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-EarlyRePayment-Loanproduct.xlsx|
	  Given I setup the clients 
	  When I entered the values into client from "Input" sheet
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
	  	 		 		 		 		 		 		 		 		 		 		
@RunnerClass3
	  Scenario: Loan-487-RBI-EPP-DB-DL-REC-NON-RNI-CTRFD-SAR-MD-TR-1-EarlyRePayment
	  
	  Given I setup the product loan "Setup"
				| Productloannavigation.xlsx |
	  Then I entered the values into product from "ProductLoanInput" Sheet
				|487-RBI-EPP-DB-DL-REC-NON-RNI-CTRFD-SAR-MD-TR-1-EarlyRePayment-Loanproduct.xlsx|
	  Given I setup the clients 
	  When I entered the values into client from "Input" sheet
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
	  	
@RunnerClass3
	  Scenario: Loan-488-RBI-EPP-DB-DL-REC-NON-RNI-CTRFD-DL-MD-TR-1-EarlyRePayment
	  
	  Given I setup the product loan "Setup"
				| Productloannavigation.xlsx |
	  Then I entered the values into product from "ProductLoanInput" Sheet
				|488-RBI-EPP-DB-DL-REC-NON-RNI-CTRFD-DL-MD-TR-1-EarlyRePayment-Loanproduct.xlsx|
	  Given I setup the clients 
	  When I entered the values into client from "Input" sheet
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
	  			 		
@RunnerClass3
	 Scenario: Loan-533-RBI-EPP-DB-SAR-REC-NON-RNI-CTPD-SAR-MD-TR-1-EarlyRePayment
	  
	  Given I setup the product loan "Setup"
				| Productloannavigation.xlsx |
	  Then I entered the values into product from "ProductLoanInput" Sheet
				|533-RBI-EPP-DB-SAR-REC-NON-RNI-CTPD-SAR-MD-TR-1-EarlyRePayment-Loanproduct.xlsx|
	  Given I setup the clients 
	  When I entered the values into client from "Input" sheet
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
	  	
@RunnerClass3
	  Scenario: Loan-534-RBI-EPP-DB-SAR-REC-NON-RNI-CTPD-DL-MD-TR-1-EarlyRePayment
	  
	  Given I setup the product loan "Setup"
				| Productloannavigation.xlsx |
	  Then I entered the values into product from "ProductLoanInput" Sheet
				|534-RBI-EPP-DB-SAR-REC-NON-RNI-CTPD-DL-MD-TR-1-EarlyRePayment-Loanproduct.xlsx|
	  Given I setup the clients 
	  When I entered the values into client from "Input" sheet
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
	  	
@RunnerClass3
	  Scenario: Loan-535-RBI-EPP-DB-SAR-REC-NON-RNI-CTRFD-SAR-MD-TR-1-EarlyRePayment
	  
	  Given I setup the product loan "Setup"
				| Productloannavigation.xlsx |
	  Then I entered the values into product from "ProductLoanInput" Sheet
				|535-RBI-EPP-DB-SAR-REC-NON-RNI-CTRFD-SAR-MD-TR-1-EarlyRePayment-Loanproduct.xlsx|
	  Given I setup the clients 
	  When I entered the values into client from "Input" sheet
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
	  	
@RunnerClass3
	  Scenario: Loan-536-RBI-EPP-DB-SAR-REC-NON-RNI-CTRFD-DL-MD-TR-1-EarlyRePayment
	  
	  Given I setup the product loan "Setup"
				| Productloannavigation.xlsx |
	  Then I entered the values into product from "ProductLoanInput" Sheet
				|536-RBI-EPP-DB-SAR-REC-NON-RNI-CTRFD-DL-MD-TR-1-EarlyRePayment-Loanproduct.xlsx|
	  Given I setup the clients 
	  When I entered the values into client from "Input" sheet
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
	  			
@RunnerClass3
	  Scenario:  Loan-5-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-ONTIME
	  
	  Given I setup the product loan "Setup"
				| Productloannavigation.xlsx |
	  Then I entered the values into product from "ProductLoanInput" Sheet
				|5-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-ONTIME-Loanproduct.xlsx|
	  Given I setup the clients 
	  When I entered the values into client from "Input" sheet
	  		    |Createclient.xlsx|
	  Then I should see client created successfully from "Output" sheet
	    	    |Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	            | 5-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-ONTIME-Newcreateloan.xlsx|
	  Then I verified the "Summary" details successfully 
	  		    | 5-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-ONTIME-Newcreateloan.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
	  		    | 5-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-ONTIME-Newcreateloan.xlsx|         
	  Then I make repayment and verified the following tabs
   		        |5-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-ONTIME-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
    
@RunnerClass3
	 Scenario: Loan-6-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-ONTIME
	 
	 Given I setup the product loan "Setup"
				| Productloannavigation.xlsx |
	 Then I entered the values into product from "ProductLoanInput" Sheet
				|6-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-ONTIME-Loanproduct.xlsx|
	 Given I setup the clients 
	 When I entered the values into client from "Input" sheet
	   			|Createclient.xlsx|
	 Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	 When I set up the new create loan from "NewLoanInput" sheet
	     		| 6-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-ONTIME-Newcreateloan.xlsx|
	 Then I verified the "Summary" details successfully	
				| 6-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-ONTIME-Newcreateloan.xlsx|
     And I verified the "Repayment Schedule" details successfully	
	     		| 6-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-ONTIME-Newcreateloan.xlsx|
	 Then I make repayment and verified the following tabs
     			|6-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-ONTIME-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
     
@RunnerClass3
	Scenario: Loan7-RBI-EI-DB-DL-REC-NOCOM-RNI-CTRFD-SAR-MD-TR-1-ONTIME
	
	Given I setup the product loan "Setup"
				| Productloannavigation.xlsx |
	Then I entered the values into product from "ProductLoanInput" Sheet
				|7-RBI-EI-DB-DL-REC-NOCOM-RNI-CTRFD-SAR-MD-TR-1-ONTIME-Loanproduct.xlsx|
	Given I setup the clients 
	When I entered the values into client from "Input" sheet
	    		|Createclient.xlsx|
	Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	When I set up the new create loan from "NewLoanInput" sheet
	     		| 7-RBI-EI-DB-DL-REC-NOCOM-RNI-CTRFD-SAR-MD-TR-1-ONTIME-Newcreateloan.xlsx|
	Then I verified the "Summary" details successfully	
		 		| 7-RBI-EI-DB-DL-REC-NOCOM-RNI-CTRFD-SAR-MD-TR-1-ONTIME-Newcreateloan.xlsx|
    And I verified the "Repayment Schedule" details successfully	
	     		| 7-RBI-EI-DB-DL-REC-NOCOM-RNI-CTRFD-SAR-MD-TR-1-ONTIME-Newcreateloan.xlsx|
	Then I make repayment and verified the following tabs
     			|7-RBI-EI-DB-DL-REC-NOCOM-RNI-CTRFD-SAR-MD-TR-1-ONTIME-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|

@RunnerClass3
	Scenario: Loan-8-RBI-EI-DB-DL-REC-NOCOM-RNI-CTRFD-DL-MD-TR-1-ONTIME
	
	Given I setup the product loan "Setup"
				| Productloannavigation.xlsx |
	Then I entered the values into product from "ProductLoanInput" Sheet
				|8-RBI-EI-DB-DL-REC-NOCOM-RNI-CTRFD-DL-MD-TR-1-ONTIME-Loanproduct.xlsx|
	Given I setup the clients 
	When I entered the values into client from "Input" sheet
	    		|Createclient.xlsx|
	Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|    
	When I set up the new create loan from "NewLoanInput" sheet
	     		| 8-RBI-EI-DB-DL-REC-NOCOM-RNI-CTRFD-DL-MD-TR-1-ONTIME-Newcreateloan.xlsx|
	Then I verified the "Summary" details successfully	
		 		| 8-RBI-EI-DB-DL-REC-NOCOM-RNI-CTRFD-DL-MD-TR-1-ONTIME-Newcreateloan.xlsx|
    And I verified the "Repayment Schedule" details successfully	
	     		| 8-RBI-EI-DB-DL-REC-NOCOM-RNI-CTRFD-DL-MD-TR-1-ONTIME-Newcreateloan.xlsx|
	Then I make repayment and verified the following tabs
     			|8-RBI-EI-DB-DL-REC-NOCOM-RNI-CTRFD-DL-MD-TR-1-ONTIME-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|

@RunnerClass3
	Scenario: Loan-53-RBI-EI-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-ONTIME
	
	Given I setup the product loan "Setup"
				| Productloannavigation.xlsx |
	Then I entered the values into product from "ProductLoanInput" Sheet
				|53-RBI-EI-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-ONTIME-Loanproduct.xlsx|
	Given I setup the clients 
	When I entered the values into client from "Input" sheet
	    		|Createclient.xlsx|
	Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	When I set up the new create loan from "NewLoanInput" sheet
	     		| 53-RBI-EI-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-ONTIME-Newcreateloan.xlsx|
	Then I verified the "Summary" details successfully	
		 		| 53-RBI-EI-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-ONTIME-Newcreateloan.xlsx|
    And I verified the "Repayment Schedule" details successfully	
	     		| 53-RBI-EI-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-ONTIME-Newcreateloan.xlsx|
	Then I make repayment and verified the following tabs
     			|53-RBI-EI-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-ONTIME-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|

@RunnerClass3
	Scenario: Loan-54-RBI-EI-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-ONTIME
	
	Given I setup the product loan "Setup"
				| Productloannavigation.xlsx |
	Then I entered the values into product from "ProductLoanInput" Sheet
				|54-RBI-EI-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-ONTIME-Loanproduct.xlsx|
	Given I setup the clients 
	When I entered the values into client from "Input" sheet
	    		|Createclient.xlsx|
	Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	When I set up the new create loan from "NewLoanInput" sheet
	     		| 54-RBI-EI-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-ONTIME-Newcreateloan.xlsx|
	Then I verified the "Summary" details successfully	
		 		| 54-RBI-EI-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-ONTIME-Newcreateloan.xlsx|
    And I verified the "Repayment Schedule" details successfully	
	     		| 54-RBI-EI-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-ONTIME-Newcreateloan.xlsx|
	Then I make repayment and verified the following tabs
     			|54-RBI-EI-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-ONTIME-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|     

@RunnerClass3
	Scenario: Loan-55-RBI-EI-DB-SAR-REC-NOCOM-RNI-CTRFD-SAR-MD-TR-1-ONTIME
	
	Given I setup the product loan "Setup"
				| Productloannavigation.xlsx |
	Then I entered the values into product from "ProductLoanInput" Sheet
				|55-RBI-EI-DB-SAR-REC-NOCOM-RNI-CTRFD-SAR-MD-TR-1-ONTIME-Loanproduct.xlsx|
	Given I setup the clients 
	When I entered the values into client from "Input" sheet
	    		|Createclient.xlsx|
	Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	When I set up the new create loan from "NewLoanInput" sheet
	     		| 55-RBI-EI-DB-SAR-REC-NOCOM-RNI-CTRFD-SAR-MD-TR-1-ONTIME-Newcreateloan.xlsx|
	Then I verified the "Summary" details successfully	
		 		| 55-RBI-EI-DB-SAR-REC-NOCOM-RNI-CTRFD-SAR-MD-TR-1-ONTIME-Newcreateloan.xlsx|
    And I verified the "Repayment Schedule" details successfully	
	     		| 55-RBI-EI-DB-SAR-REC-NOCOM-RNI-CTRFD-SAR-MD-TR-1-ONTIME-Newcreateloan.xlsx|
	Then I make repayment and verified the following tabs
     			|55-RBI-EI-DB-SAR-REC-NOCOM-RNI-CTRFD-SAR-MD-TR-1-ONTIME-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
     
@RunnerClass3
	Scenario: Loan-56-RBI-EI-DB-SAR-REC-NOCOM-RNI-CTRFD-DL-MD-TR-1-ONTIME
	
	Given I setup the product loan "Setup"
				| Productloannavigation.xlsx |
	Then I entered the values into product from "ProductLoanInput" Sheet
				|56-RBI-EI-DB-SAR-REC-NOCOM-RNI-CTRFD-DL-MD-TR-1-ONTIME-Loanproduct.xlsx|
	Given I setup the clients 
	When I entered the values into client from "Input" sheet
	    		|Createclient.xlsx|
	Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	When I set up the new create loan from "NewLoanInput" sheet
	     		| 56-RBI-EI-DB-SAR-REC-NOCOM-RNI-CTRFD-DL-MD-TR-1-ONTIME-Newcreateloan.xlsx|
	Then I verified the "Summary" details successfully	
		 		| 56-RBI-EI-DB-SAR-REC-NOCOM-RNI-CTRFD-DL-MD-TR-1-ONTIME-Newcreateloan.xlsx|
    And I verified the "Repayment Schedule" details successfully	
	    	 	| 56-RBI-EI-DB-SAR-REC-NOCOM-RNI-CTRFD-DL-MD-TR-1-ONTIME-Newcreateloan.xlsx|
	Then I make repayment and verified the following tabs
     			|56-RBI-EI-DB-SAR-REC-NOCOM-RNI-CTRFD-DL-MD-TR-1-ONTIME-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
      
@RunnerClass3
	Scenario: Loan-101-RBI-EPP-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-ONTIME
	
	Given I setup the product loan "Setup"
				| Productloannavigation.xlsx |
	Then I entered the values into product from "ProductLoanInput" Sheet
				|101-RBI-EPP-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-ONTIME-Loanproduct.xlsx|
	Given I setup the clients 
	When I entered the values into client from "Input" sheet
	    		|Createclient.xlsx|
	Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	When I set up the new create loan from "NewLoanInput" sheet
	     		| 101-RBI-EPP-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-ONTIME-Newcreateloan.xlsx|
	Then I verified the "Summary" details successfully	
		 		| 101-RBI-EPP-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-ONTIME-Newcreateloan.xlsx|
    And I verified the "Repayment Schedule" details successfully	
	     		| 101-RBI-EPP-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-ONTIME-Newcreateloan.xlsx|
	Then I make repayment and verified the following tabs
     			|101-RBI-EPP-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-ONTIME-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
     
@RunnerClass3
	Scenario: Loan-102-RBI-EPP-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME
	
	Given I setup the product loan "Setup"
				| Productloannavigation.xlsx |
	Then I entered the values into product from "ProductLoanInput" Sheet
				|102-RBI-EPP-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-Loanproduct.xlsx|
	Given I setup the clients 
	When I entered the values into client from "Input" sheet
	    |Createclient.xlsx|
	Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	When I set up the new create loan from "NewLoanInput" sheet
	     | 102-RBI-EPP-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-Newcreateloan.xlsx|
	Then I verified the "Summary" details successfully	
		 | 102-RBI-EPP-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-Newcreateloan.xlsx|
    And I verified the "Repayment Schedule" details successfully	
	     | 102-RBI-EPP-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-Newcreateloan.xlsx|
	     Then I make repayment and verified the following tabs
         |102-RBI-EPP-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
     
@RunnerClass3
	Scenario: Loan-103-RBI-EPP-DB-DL-REC-NON-RNI-CTRFD-SAR-MD-TR-1-ONTIME
	
	Given I setup the product loan "Setup"
				| Productloannavigation.xlsx |
	Then I entered the values into product from "ProductLoanInput" Sheet
				|103-RBI-EPP-DB-DL-REC-NON-RNI-CTRFD-SAR-MD-TR-1-ONTIME-Loanproduct.xlsx|
	Given I setup the clients 
	When I entered the values into client from "Input" sheet
	    		|Createclient.xlsx|
	Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	When I set up the new create loan from "NewLoanInput" sheet
	     		| 103-RBI-EPP-DB-DL-REC-NON-RNI-CTRFD-SAR-MD-TR-1-ONTIME-Newcreateloan.xlsx|
	Then I verified the "Summary" details successfully	
		 		| 103-RBI-EPP-DB-DL-REC-NON-RNI-CTRFD-SAR-MD-TR-1-ONTIME-Newcreateloan.xlsx|
    And I verified the "Repayment Schedule" details successfully	
	     		| 103-RBI-EPP-DB-DL-REC-NON-RNI-CTRFD-SAR-MD-TR-1-ONTIME-Newcreateloan.xlsx|
	Then I make repayment and verified the following tabs
     			|103-RBI-EPP-DB-DL-REC-NON-RNI-CTRFD-SAR-MD-TR-1-ONTIME-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
     
@RunnerClass3
	Scenario: Loan-104-RBI-EPP-DB-DL-REC-NON-RNI-CTRFD-DL-MD-TR-1-ONTIME
	
	Given I setup the product loan "Setup"
				| Productloannavigation.xlsx |
	Then I entered the values into product from "ProductLoanInput" Sheet
				|104-RBI-EPP-DB-DL-REC-NON-RNI-CTRFD-DL-MD-TR-1-ONTIME-Loanproduct.xlsx|
	Given I setup the clients 
	When I entered the values into client from "Input" sheet
	    		|Createclient.xlsx|
	Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	When I set up the new create loan from "NewLoanInput" sheet
	     		| 104-RBI-EPP-DB-DL-REC-NON-RNI-CTRFD-DL-MD-TR-1-ONTIME-Newcreateloan.xlsx|
	Then I verified the "Summary" details successfully	
		 		| 104-RBI-EPP-DB-DL-REC-NON-RNI-CTRFD-DL-MD-TR-1-ONTIME-Newcreateloan.xlsx|
    And I verified the "Repayment Schedule" details successfully	
	     		| 104-RBI-EPP-DB-DL-REC-NON-RNI-CTRFD-DL-MD-TR-1-ONTIME-Newcreateloan.xlsx|
	Then I make repayment and verified the following tabs
    	 		|104-RBI-EPP-DB-DL-REC-NON-RNI-CTRFD-DL-MD-TR-1-ONTIME-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
     
@RunnerClass3
	Scenario: Loan-149-RBI-EPP-DB-SAR-REC-NON-RNI-CTPD-SAR-MD-TR-1-ONTIME
	
	Given I setup the product loan "Setup"
				| Productloannavigation.xlsx |
	Then I entered the values into product from "ProductLoanInput" Sheet
				|149-RBI-EPP-DB-SAR-REC-NON-RNI-CTPD-SAR-MD-TR-1-ONTIME-Loanproduct.xlsx|
	Given I setup the clients 
	When I entered the values into client from "Input" sheet
	    		|Createclient.xlsx|
	Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	When I set up the new create loan from "NewLoanInput" sheet
	     		| 149-RBI-EPP-DB-SAR-REC-NON-RNI-CTPD-SAR-MD-TR-1-ONTIME-Newcreateloan.xlsx|
	Then I verified the "Summary" details successfully	
		 		| 149-RBI-EPP-DB-SAR-REC-NON-RNI-CTPD-SAR-MD-TR-1-ONTIME-Newcreateloan.xlsx|
    And I verified the "Repayment Schedule" details successfully	
	     		| 149-RBI-EPP-DB-SAR-REC-NON-RNI-CTPD-SAR-MD-TR-1-ONTIME-Newcreateloan.xlsx|
	Then I make repayment and verified the following tabs
     			|149-RBI-EPP-DB-SAR-REC-NON-RNI-CTPD-SAR-MD-TR-1-ONTIME-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
     
@RunnerClass3
	Scenario: Loan-150-RBI-EPP-DB-SAR-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME
	
	Given I setup the product loan "Setup"
				| Productloannavigation.xlsx |
	Then I entered the values into product from "ProductLoanInput" Sheet
				|150-RBI-EPP-DB-SAR-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-Loanproduct.xlsx|
	Given I setup the clients 
	When I entered the values into client from "Input" sheet
	    		|Createclient.xlsx|
	Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	When I set up the new create loan from "NewLoanInput" sheet
	     		| 150-RBI-EPP-DB-SAR-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-Newcreateloan.xlsx|
	Then I verified the "Summary" details successfully	
		 		| 150-RBI-EPP-DB-SAR-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-Newcreateloan.xlsx|
    And I verified the "Repayment Schedule" details successfully	
	     		| 150-RBI-EPP-DB-SAR-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-Newcreateloan.xlsx|
	Then I make repayment and verified the following tabs
     			|150-RBI-EPP-DB-SAR-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
     
@RunnerClass3
	Scenario: Loan-151-RBI-EPP-DB-SAR-REC-NON-RNI-CTRFD-SAR-MD-TR-1-ONTIME
	
	Given I setup the product loan "Setup"
				| Productloannavigation.xlsx |
	Then I entered the values into product from "ProductLoanInput" Sheet
				|151-RBI-EPP-DB-SAR-REC-NON-RNI-CTRFD-SAR-MD-TR-1-ONTIME-Loanproduct.xlsx|
	Given I setup the clients 
	When I entered the values into client from "Input" sheet
	    		|Createclient.xlsx|
	Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	When I set up the new create loan from "NewLoanInput" sheet
	     		| 151-RBI-EPP-DB-SAR-REC-NON-RNI-CTRFD-SAR-MD-TR-1-ONTIME-Newcreateloan.xlsx|
	Then I verified the "Summary" details successfully	
		 		| 151-RBI-EPP-DB-SAR-REC-NON-RNI-CTRFD-SAR-MD-TR-1-ONTIME-Newcreateloan.xlsx|
    And I verified the "Repayment Schedule" details successfully	
	     		| 151-RBI-EPP-DB-SAR-REC-NON-RNI-CTRFD-SAR-MD-TR-1-ONTIME-Newcreateloan.xlsx|
	Then I make repayment and verified the following tabs
     			|151-RBI-EPP-DB-SAR-REC-NON-RNI-CTRFD-SAR-MD-TR-1-ONTIME-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
     
@RunnerClass3
	Scenario: Loan-152-RBI-EPP-DB-SAR-REC-NON-RNI-CTRFD-DL-MD-TR-1-ONTIME
	
	Given I setup the product loan "Setup"
				| Productloannavigation.xlsx |
	Then I entered the values into product from "ProductLoanInput" Sheet
				|152-RBI-EPP-DB-SAR-REC-NON-RNI-CTRFD-DL-MD-TR-1-ONTIME-Loanproduct.xlsx|
	Given I setup the clients 
	When I entered the values into client from "Input" sheet
	    		|Createclient.xlsx|
	Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	When I set up the new create loan from "NewLoanInput" sheet
	     		| 152-RBI-EPP-DB-SAR-REC-NON-RNI-CTRFD-DL-MD-TR-1-ONTIME-Newcreateloan.xlsx|
	Then I verified the "Summary" details successfully	
		 		| 152-RBI-EPP-DB-SAR-REC-NON-RNI-CTRFD-DL-MD-TR-1-ONTIME-Newcreateloan.xlsx|
    And I verified the "Repayment Schedule" details successfully	
	     		| 152-RBI-EPP-DB-SAR-REC-NON-RNI-CTRFD-DL-MD-TR-1-ONTIME-Newcreateloan.xlsx|
	Then I make repayment and verified the following tabs
     			|152-RBI-EPP-DB-SAR-REC-NON-RNI-CTRFD-DL-MD-TR-1-ONTIME-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
	
@RunnerClass3
	Scenario:  Loan-773-RBI-EI-DB-DL-REC-NON-RNI-CTPD-SAR-MD-TR-1-Late Repayment
	
	Given I setup the product loan "Setup"
				| Productloannavigation.xlsx |
	Then I entered the values into product from "ProductLoanInput" Sheet
				|773-RBI-EI-DB-DL-REC-NON-RNI-CTPD-SAR-MD-TR-1-Late Repayment-Loanproduct.xlsx|
	Given I setup the clients 
	When I entered the values into client from "Input" sheet
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
         		|773-RBI-EI-DB-DL-REC-NON-RNI-CTPD-SAR-MD-TR-1-Late Repayment-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
  
@RunnerClass3
	Scenario: Loan-774-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-Late Repayment
	
	Given I setup the product loan "Setup"
				| Productloannavigation.xlsx |
	Then I entered the values into product from "ProductLoanInput" Sheet
				|774-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-Late Repayment-Loanproduct.xlsx|
	Given I setup the clients 
	When I entered the values into client from "Input" sheet
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
     			|774-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-Late Repayment-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
     
@RunnerClass3
	Scenario: Loan-775-RBI-EI-DB-DL-REC-NON-RNI-CTRFD-SAR-MD-TR-1-Late Repayment
	
	Given I setup the product loan "Setup"
				| Productloannavigation.xlsx |
	Then I entered the values into product from "ProductLoanInput" Sheet
				|775-RBI-EI-DB-DL-REC-NON-RNI-CTRFD-SAR-MD-TR-1-Late Repayment-Loanproduct.xlsx|
	Given I setup the clients 
	When I entered the values into client from "Input" sheet
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
     			|775-RBI-EI-DB-DL-REC-NON-RNI-CTRFD-SAR-MD-TR-1-Late Repayment-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|

@RunnerClass3
	Scenario: Loan-776-RBI-EI-DB-DL-REC-NON-RNI-CTRFD-DL-MD-TR-1-Late Repayment
	
	Given I setup the product loan "Setup"
				| Productloannavigation.xlsx |
	Then I entered the values into product from "ProductLoanInput" Sheet
				|776-RBI-EI-DB-DL-REC-NON-RNI-CTRFD-DL-MD-TR-1-Late Repayment-Loanproduct.xlsx|
	Given I setup the clients 
	When I entered the values into client from "Input" sheet
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
     			|776-RBI-EI-DB-DL-REC-NON-RNI-CTRFD-DL-MD-TR-1-Late Repayment-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|

@RunnerClass3
	Scenario: Loan-821-RBI-EI-DB-SAR-REC-NON-RNI-CTPD-SAR-MD-TR-1-Late Repayment
	
	Given I setup the product loan "Setup"
				| Productloannavigation.xlsx |
	Then I entered the values into product from "ProductLoanInput" Sheet
				|821-RBI-EI-DB-SAR-REC-NON-RNI-CTPD-SAR-MD-TR-1-Late Repayment-Loanproduct.xlsx|
	Given I setup the clients 
	When I entered the values into client from "Input" sheet
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
     			|821-RBI-EI-DB-SAR-REC-NON-RNI-CTPD-SAR-MD-TR-1-Late Repayment-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
     
@RunnerClass3
	Scenario: Loan-822-RBI-EI-DB-SAR-REC-NON-RNI-CTPD-DL-MD-TR-1-Late Repayment
	
	Given I setup the product loan "Setup"
				| Productloannavigation.xlsx |
	Then I entered the values into product from "ProductLoanInput" Sheet
				|822-RBI-EI-DB-SAR-REC-NON-RNI-CTPD-DL-MD-TR-1-Late Repayment-Loanproduct.xlsx|
	Given I setup the clients 
	When I entered the values into client from "Input" sheet
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
     			|822-RBI-EI-DB-SAR-REC-NON-RNI-CTPD-DL-MD-TR-1-Late Repayment-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|     

@RunnerClass3
	Scenario: Loan-823-RBI-EI-DB-SAR-REC-NON-RNI-CTRFD-SAR-MD-TR-1-Late Repayment
	
	Given I setup the product loan "Setup"
				| Productloannavigation.xlsx |
	Then I entered the values into product from "ProductLoanInput" Sheet
				|823-RBI-EI-DB-SAR-REC-NON-RNI-CTRFD-SAR-MD-TR-1-Late Repayment-Loanproduct.xlsx|
	Given I setup the clients 
	When I entered the values into client from "Input" sheet
	    |Createclient.xlsx|
	Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	When I set up the new create loan from "NewLoanInput" sheet
	     		| 823-RBI-EI-DB-SAR-REC-NON-RNI-CTRFD-SAR-MD-TR-1-Late Repayment-Newcreateloan.xlsx|
	Then I verified the "Summary" details successfully	
		 		| 823-RBI-EI-DB-SAR-REC-NON-RNI-CTRFD-SAR-MD-TR-1-Late Repayment-Newcreateloan.xlsx|
    And I verified the "Repayment Schedule" details successfully	
	     		| 823-RBI-EI-DB-SAR-REC-NON-RNI-CTRFD-SAR-MD-TR-1-Late Repayment-Newcreateloan.xlsx|
	Then I make repayment and verified the following tabs
     			|823-RBI-EI-DB-SAR-REC-NON-RNI-CTRFD-SAR-MD-TR-1-Late Repayment-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|

@RunnerClass3  
	Scenario: Loan-824-RBI-EI-DB-SAR-REC-NON-RNI-CTRFD-DL-MD-TR-1-Late Repayment
	
	Given I setup the product loan "Setup"
				| Productloannavigation.xlsx |
	Then I entered the values into product from "ProductLoanInput" Sheet
				|824-RBI-EI-DB-SAR-REC-NON-RNI-CTRFD-DL-MD-TR-1-Late Repayment-Loanproduct.xlsx|
	Given I setup the clients 
	When I entered the values into client from "Input" sheet
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
     			|824-RBI-EI-DB-SAR-REC-NON-RNI-CTRFD-DL-MD-TR-1-Late Repayment-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|

@RunnerClass3
	Scenario: Loan-869-RBI-EPP-DB-DL-REC-NON-RNI-CTPD-SAR-MD-TR-1-Late Repayment
	
	Given I setup the product loan "Setup"
				| Productloannavigation.xlsx |
	Then I entered the values into product from "ProductLoanInput" Sheet
				|869-RBI-EPP-DB-DL-REC-NON-RNI-CTPD-SAR-MD-TR-1-Late Repayment-Loanproduct.xlsx|
	Given I setup the clients 
	When I entered the values into client from "Input" sheet
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
     			|869-RBI-EPP-DB-DL-REC-NON-RNI-CTPD-SAR-MD-TR-1-Late Repayment-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|

@RunnerClass3
	Scenario: Loan-870-RBI-EPP-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-Late Repayment
	
	Given I setup the product loan "Setup"
				| Productloannavigation.xlsx |
	Then I entered the values into product from "ProductLoanInput" Sheet
				|870-RBI-EPP-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-Late Repayment-Loanproduct.xlsx|
	Given I setup the clients 
	When I entered the values into client from "Input" sheet
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
     			|870-RBI-EPP-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-Late Repayment-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|

@RunnerClass3
	Scenario: Loan-871-RBI-EPP-DB-DL-REC-NON-RNI-CTRFD-SAR-MD-TR-1-LateRepayment
	
	Given I setup the product loan "Setup"
				| Productloannavigation.xlsx |
	Then I entered the values into product from "ProductLoanInput" Sheet
				|871-RBI-EPP-DB-DL-REC-NON-RNI-CTRFD-SAR-MD-TR-1-LateRepayment-Loanproduct.xlsx|
	Given I setup the clients 
	When I entered the values into client from "Input" sheet
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
     			|871-RBI-EPP-DB-DL-REC-NON-RNI-CTRFD-SAR-MD-TR-1-LateRepayment-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
     
@RunnerClass3
	Scenario: Loan-872-RBI-EPP-DB-DL-REC-NON-RNI-CTRFD-DL-MD-TR-1-LateRepayment
	
	Given I setup the product loan "Setup"
				| Productloannavigation.xlsx |
	Then I entered the values into product from "ProductLoanInput" Sheet
				|872-RBI-EPP-DB-DL-REC-NON-RNI-CTRFD-DL-MD-TR-1-LateRepayment-Loanproduct.xlsx|
	Given I setup the clients 
	When I entered the values into client from "Input" sheet
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
     			|872-RBI-EPP-DB-DL-REC-NON-RNI-CTRFD-DL-MD-TR-1-LateRepayment-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|     
     
@RunnerClass3
	Scenario: Loan-917-RBI-EPP-DB-SAR-REC-NON-RNI-CTPD-SAR-MD-TR-1-LateRepayment
	
	Given I setup the product loan "Setup"
				| Productloannavigation.xlsx |
	Then I entered the values into product from "ProductLoanInput" Sheet
				|917-RBI-EPP-DB-SAR-REC-NON-RNI-CTPD-SAR-MD-TR-1-LateRepayment-Loanproduct.xlsx|
	Given I setup the clients 
	When I entered the values into client from "Input" sheet
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
     			|917-RBI-EPP-DB-SAR-REC-NON-RNI-CTPD-SAR-MD-TR-1-LateRepayment-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
     
@RunnerClass3
	Scenario: Loan-918-RBI-EPP-DB-SAR-REC-NON-RNI-CTPD-DL-MD-TR-1-LateRepayment
	
	Given I setup the product loan "Setup"
				| Productloannavigation.xlsx |
	Then I entered the values into product from "ProductLoanInput" Sheet
				|918-RBI-EPP-DB-SAR-REC-NON-RNI-CTPD-DL-MD-TR-1-LateRepayment-Loanproduct.xlsx|
	Given I setup the clients 
	When I entered the values into client from "Input" sheet
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
     			|918-RBI-EPP-DB-SAR-REC-NON-RNI-CTPD-DL-MD-TR-1-LateRepayment-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
     
@RunnerClass3
	Scenario: Loan-919-RBI-EPP-DB-SAR-REC-NON-RNI-CTRFD-SAR-MD-TR-1-LateRepayment
	
	Given I setup the product loan "Setup"
				| Productloannavigation.xlsx |
	Then I entered the values into product from "ProductLoanInput" Sheet
				|919-RBI-EPP-DB-SAR-REC-NON-RNI-CTRFD-SAR-MD-TR-1-LateRepayment-Loanproduct.xlsx|
	Given I setup the clients 
	When I entered the values into client from "Input" sheet
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
     			|919-RBI-EPP-DB-SAR-REC-NON-RNI-CTRFD-SAR-MD-TR-1-LateRepayment-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
     

     
@RunnerClass3
	Scenario: Loan-920-RBI-EPP-DB-SAR-REC-NON-RNI-CTRFD-DL-MD-TR-1-LateRepayment
	
	Given I setup the product loan "Setup"
				| Productloannavigation.xlsx |
	Then I entered the values into product from "ProductLoanInput" Sheet
				|920-RBI-EPP-DB-SAR-REC-NON-RNI-CTRFD-DL-MD-TR-1-LateRepayment-Loanproduct.xlsx|
	Given I setup the clients 
	When I entered the values into client from "Input" sheet
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
     			|920-RBI-EPP-DB-SAR-REC-NON-RNI-CTRFD-DL-MD-TR-1-LateRepayment-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
     

@RunnerClass3  
	  Scenario: Loan-1157-RBI-EI-DB-DL-REC-NON-RNI-CTPD-SAR-MD-TR-2-ONTIME
		
	  Given I setup the product loan "Setup"
				| Productloannavigation.xlsx |
	  Then I entered the values into product from "ProductLoanInput" Sheet
				|1157-RBI-EI-DB-DL-REC-NON-RNI-CTPD-SAR-MD-TR-2-ONTIME-Loanproduct.xlsx|
	  Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			| 1157-RBI-EI-DB-DL-REC-NON-RNI-CTPD-SAR-MD-TR-2-ONTIME-Newcreateloan1.xlsx|
	  Then I verified the "Summary" details successfully 
	  			| 1157-RBI-EI-DB-DL-REC-NON-RNI-CTPD-SAR-MD-TR-2-ONTIME-Newcreateloan1.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
	  			| 1157-RBI-EI-DB-DL-REC-NON-RNI-CTPD-SAR-MD-TR-2-ONTIME-Newcreateloan1.xlsx|
	  Then I make repayment and verified the following tabs
       			|1157-RBI-EI-DB-DL-REC-NON-RNI-CTPD-SAR-MD-TR-2-ONTIME-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
      And I disburse loan from "NewLoanInput" sheet
      			| 1157-RBI-EI-DB-DL-REC-NON-RNI-CTPD-SAR-MD-TR-2-ONTIME-Newcreateloan2.xlsx|
      Then I verified the "Summary" details successfully 
	  			| 1157-RBI-EI-DB-DL-REC-NON-RNI-CTPD-SAR-MD-TR-2-ONTIME-Newcreateloan2.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
	  			| 1157-RBI-EI-DB-DL-REC-NON-RNI-CTPD-SAR-MD-TR-2-ONTIME-Newcreateloan2.xlsx| 			
	  And I verified the "Transactions" details successfully	
				| 1157-RBI-EI-DB-DL-REC-NON-RNI-CTPD-SAR-MD-TR-2-ONTIME-Newcreateloan2.xlsx| 
					 	
@RunnerClass3	   
	  Scenario: Loan-1158-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME
	 
	  Given I setup the product loan "Setup"
				| Productloannavigation.xlsx |
	  Then I entered the values into product from "ProductLoanInput" Sheet
				|1158-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-Loanproduct.xlsx|
	  Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			| 1158-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-Newcreateloan1.xlsx|
	  Then I verified the "Summary" details successfully 
	  			| 1158-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-Newcreateloan1.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
	  			| 1158-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-Newcreateloan1.xlsx|
	  Then I make repayment and verified the following tabs
       			|1158-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
      And I disburse loan from "NewLoanInput" sheet
      			| 1158-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-Newcreateloan2.xlsx|
      Then I verified the "Summary" details successfully 
	  			| 1158-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-Newcreateloan2.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
	  			| 1158-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-Newcreateloan2.xlsx| 			
	  And I verified the "Transactions" details successfully	
				| 1158-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-Newcreateloan2.xlsx|  

@RunnerClass3
	  Scenario: Loan-1205-RBI-EI-DB-SAR-REC-NON-RNI-CTPD-SAR-MD-TR-2-ONTIME
	  
	  Given I setup the product loan "Setup"
				| Productloannavigation.xlsx |
	  Then I entered the values into product from "ProductLoanInput" Sheet
				|1205-RBI-EI-DB-SAR-REC-NON-RNI-CTPD-SAR-MD-TR-2-ONTIME-Loanproduct.xlsx|
	  Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			| 1205-RBI-EI-DB-SAR-REC-NON-RNI-CTPD-SAR-MD-TR-2-ONTIME-Newcreateloan1.xlsx|
	  Then I verified the "Summary" details successfully 
	  			| 1205-RBI-EI-DB-SAR-REC-NON-RNI-CTPD-SAR-MD-TR-2-ONTIME-Newcreateloan1.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
	  			| 1205-RBI-EI-DB-SAR-REC-NON-RNI-CTPD-SAR-MD-TR-2-ONTIME-Newcreateloan1.xlsx|
	  Then I make repayment and verified the following tabs
       			|1205-RBI-EI-DB-SAR-REC-NON-RNI-CTPD-SAR-MD-TR-2-ONTIME-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
      And I disburse loan from "NewLoanInput" sheet
      			| 1205-RBI-EI-DB-SAR-REC-NON-RNI-CTPD-SAR-MD-TR-2-ONTIME-Newcreateloan2.xlsx|
      Then I verified the "Summary" details successfully 
	  			| 1205-RBI-EI-DB-SAR-REC-NON-RNI-CTPD-SAR-MD-TR-2-ONTIME-Newcreateloan2.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
	  			| 1205-RBI-EI-DB-SAR-REC-NON-RNI-CTPD-SAR-MD-TR-2-ONTIME-Newcreateloan2.xlsx| 			
	  And I verified the "Transactions" details successfully	
				| 1205-RBI-EI-DB-SAR-REC-NON-RNI-CTPD-SAR-MD-TR-2-ONTIME-Newcreateloan2.xlsx| 
				
@RunnerClass3
	  Scenario: Loan-1206-RBI-EI-DB-SAR-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME
	  
	  Given I setup the product loan "Setup"
				| Productloannavigation.xlsx |
	  Then I entered the values into product from "ProductLoanInput" Sheet
				|1206-RBI-EI-DB-SAR-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-Loanproduct.xlsx|
	  Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			| 1206-RBI-EI-DB-SAR-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-Newcreateloan1.xlsx|
	  Then I verified the "Summary" details successfully 
	  			| 1206-RBI-EI-DB-SAR-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-Newcreateloan1.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
	  			| 1206-RBI-EI-DB-SAR-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-Newcreateloan1.xlsx|
	  Then I make repayment and verified the following tabs
       			|1206-RBI-EI-DB-SAR-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
      And I disburse loan from "NewLoanInput" sheet
      			| 1206-RBI-EI-DB-SAR-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-Newcreateloan2.xlsx|
      Then I verified the "Summary" details successfully 
	  			| 1206-RBI-EI-DB-SAR-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-Newcreateloan2.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
	  			| 1206-RBI-EI-DB-SAR-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-Newcreateloan2.xlsx| 			
	  And I verified the "Transactions" details successfully	
				| 1206-RBI-EI-DB-SAR-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-Newcreateloan2.xlsx| 
				
@RunnerClass3
	  Scenario: Loan-1541-RBI-EI-DB-DL-REC-NON-RNI-CTPD-SAR-MD-TR-2-EARLY
	  
	  Given I setup the product loan "Setup"
				| Productloannavigation.xlsx |
	  Then I entered the values into product from "ProductLoanInput" Sheet
				|1541-RBI-EI-DB-DL-REC-NON-RNI-CTPD-SAR-MD-TR-2-EARLY-Loanproduct.xlsx|
	  Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			| 1541-RBI-EI-DB-DL-REC-NON-RNI-CTPD-SAR-MD-TR-2-EARLY-Newcreateloan1.xlsx|
	  Then I verified the "Summary" details successfully 
	  			| 1541-RBI-EI-DB-DL-REC-NON-RNI-CTPD-SAR-MD-TR-2-EARLY-Newcreateloan1.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
	  			| 1541-RBI-EI-DB-DL-REC-NON-RNI-CTPD-SAR-MD-TR-2-EARLY-Newcreateloan1.xlsx|
	  Then I make repayment and verified the following tabs
       			|1541-RBI-EI-DB-DL-REC-NON-RNI-CTPD-SAR-MD-TR-2-EARLY-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
      And I disburse loan from "NewLoanInput" sheet
      			| 1541-RBI-EI-DB-DL-REC-NON-RNI-CTPD-SAR-MD-TR-2-EARLY-Newcreateloan2.xlsx|
      Then I verified the "Summary" details successfully 
	  			| 1541-RBI-EI-DB-DL-REC-NON-RNI-CTPD-SAR-MD-TR-2-EARLY-Newcreateloan2.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
	  			| 1541-RBI-EI-DB-DL-REC-NON-RNI-CTPD-SAR-MD-TR-2-EARLY-Newcreateloan2.xlsx| 			
	  And I verified the "Transactions" details successfully	
				| 1541-RBI-EI-DB-DL-REC-NON-RNI-CTPD-SAR-MD-TR-2-EARLY-Newcreateloan2.xlsx| 
				
@RunnerClass3	   
	  Scenario: Loan-1542-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-EARLY
	  
	  Given I setup the product loan "Setup"
				| Productloannavigation.xlsx |
	  Then I entered the values into product from "ProductLoanInput" Sheet
				|1542-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-EARLY-Loanproduct.xlsx|
	  Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			| 1542-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-EARLY-Newcreateloan1.xlsx|
	  Then I verified the "Summary" details successfully 
	  			| 1542-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-EARLY-Newcreateloan1.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
	  			| 1542-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-EARLY-Newcreateloan1.xlsx|
	  Then I make repayment and verified the following tabs
       			|1542-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-EARLY-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
      And I disburse loan from "NewLoanInput" sheet
      			| 1542-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-EARLY-Newcreateloan2.xlsx|
      Then I verified the "Summary" details successfully 
	  			| 1542-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-EARLY-Newcreateloan2.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
	  			| 1542-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-EARLY-Newcreateloan2.xlsx| 			
	  And I verified the "Transactions" details successfully	
				| 1542-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-EARLY-Newcreateloan2.xlsx| 
				
@RunnerClass3
	  Scenario: Loan-1589-RBI-EI-DB-SAR-REC-NON-RNI-CTPD-SAR-MD-TR-2-EARLY
	  
	  Given I setup the product loan "Setup"
				| Productloannavigation.xlsx |
	  Then I entered the values into product from "ProductLoanInput" Sheet
				|1589-RBI-EI-DB-SAR-REC-NON-RNI-CTPD-SAR-MD-TR-2-EARLY-Loanproduct.xlsx|
	  Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			| 1589-RBI-EI-DB-SAR-REC-NON-RNI-CTPD-SAR-MD-TR-2-EARLY-Newcreateloan1.xlsx|
	  Then I verified the "Summary" details successfully 
	  			| 1589-RBI-EI-DB-SAR-REC-NON-RNI-CTPD-SAR-MD-TR-2-EARLY-Newcreateloan1.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
	  			| 1589-RBI-EI-DB-SAR-REC-NON-RNI-CTPD-SAR-MD-TR-2-EARLY-Newcreateloan1.xlsx|
	  Then I make repayment and verified the following tabs
       			|1589-RBI-EI-DB-SAR-REC-NON-RNI-CTPD-SAR-MD-TR-2-EARLY-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
      And I disburse loan from "NewLoanInput" sheet
      			| 1589-RBI-EI-DB-SAR-REC-NON-RNI-CTPD-SAR-MD-TR-2-EARLY-Newcreateloan2.xlsx|
      Then I verified the "Summary" details successfully 
	  			| 1589-RBI-EI-DB-SAR-REC-NON-RNI-CTPD-SAR-MD-TR-2-EARLY-Newcreateloan2.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
	  			| 1589-RBI-EI-DB-SAR-REC-NON-RNI-CTPD-SAR-MD-TR-2-EARLY-Newcreateloan2.xlsx| 			
	  And I verified the "Transactions" details successfully	
				| 1589-RBI-EI-DB-SAR-REC-NON-RNI-CTPD-SAR-MD-TR-2-EARLY-Newcreateloan2.xlsx| 
				
@RunnerClass3   
	  Scenario: Loan-1590-RBI-EI-DB-SAR-REC-NON-RNI-CTPD-DL-MD-TR-2-EARLY
	  
	  Given I setup the product loan "Setup"
				| Productloannavigation.xlsx |
	  Then I entered the values into product from "ProductLoanInput" Sheet
				|1590-RBI-EI-DB-SAR-REC-NON-RNI-CTPD-DL-MD-TR-2-EARLY-Loanproduct.xlsx|
	  Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			| 1590-RBI-EI-DB-SAR-REC-NON-RNI-CTPD-DL-MD-TR-2-EARLY-Newcreateloan1.xlsx|
	  Then I verified the "Summary" details successfully 
	  			| 1590-RBI-EI-DB-SAR-REC-NON-RNI-CTPD-DL-MD-TR-2-EARLY-Newcreateloan1.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
	  			| 1590-RBI-EI-DB-SAR-REC-NON-RNI-CTPD-DL-MD-TR-2-EARLY-Newcreateloan1.xlsx|
	  Then I make repayment and verified the following tabs
       			|1590-RBI-EI-DB-SAR-REC-NON-RNI-CTPD-DL-MD-TR-2-EARLY-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
      And I disburse loan from "NewLoanInput" sheet
      			| 1590-RBI-EI-DB-SAR-REC-NON-RNI-CTPD-DL-MD-TR-2-EARLY-Newcreateloan2.xlsx|
      Then I verified the "Summary" details successfully 
	  			| 1590-RBI-EI-DB-SAR-REC-NON-RNI-CTPD-DL-MD-TR-2-EARLY-Newcreateloan2.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
	  			| 1590-RBI-EI-DB-SAR-REC-NON-RNI-CTPD-DL-MD-TR-2-EARLY-Newcreateloan2.xlsx| 			
	  And I verified the "Transactions" details successfully	
				| 1590-RBI-EI-DB-SAR-REC-NON-RNI-CTPD-DL-MD-TR-2-EARLY-Newcreateloan2.xlsx| 
				
@RunnerClass3
	  Scenario: Loan-1925-RBI-EI-DB-DL-REC-NON-RNI-CTPD-SAR-MD-TR-2-LATE
	  
	  Given I setup the product loan "Setup"
				| Productloannavigation.xlsx |
	  Then I entered the values into product from "ProductLoanInput" Sheet
				|1925-RBI-EI-DB-DL-REC-NON-RNI-CTPD-SAR-MD-TR-2-LATE-Loanproduct.xlsx|
	  Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			| 1925-RBI-EI-DB-DL-REC-NON-RNI-CTPD-SAR-MD-TR-2-LATE-Newcreateloan1.xlsx|
	  Then I verified the "Summary" details successfully 
	  			| 1925-RBI-EI-DB-DL-REC-NON-RNI-CTPD-SAR-MD-TR-2-LATE-Newcreateloan1.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
	  			| 1925-RBI-EI-DB-DL-REC-NON-RNI-CTPD-SAR-MD-TR-2-LATE-Newcreateloan1.xlsx|
	  Then I make repayment and verified the following tabs
       			|1925-RBI-EI-DB-DL-REC-NON-RNI-CTPD-SAR-MD-TR-2-LATE-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
      And I disburse loan from "NewLoanInput" sheet
      			| 1925-RBI-EI-DB-DL-REC-NON-RNI-CTPD-SAR-MD-TR-2-LATE-Newcreateloan2.xlsx|
      Then I verified the "Summary" details successfully 
	  			| 1925-RBI-EI-DB-DL-REC-NON-RNI-CTPD-SAR-MD-TR-2-LATE-Newcreateloan2.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
	  			| 1925-RBI-EI-DB-DL-REC-NON-RNI-CTPD-SAR-MD-TR-2-LATE-Newcreateloan2.xlsx| 			
	  And I verified the "Transactions" details successfully	
				| 1925-RBI-EI-DB-DL-REC-NON-RNI-CTPD-SAR-MD-TR-2-LATE-Newcreateloan2.xlsx| 
				
@RunnerClass3
	  Scenario: Loan-1926-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-LATE
	  
	  Given I setup the product loan "Setup"
				| Productloannavigation.xlsx |
	  Then I entered the values into product from "ProductLoanInput" Sheet
				|1926-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-LATE-Loanproduct.xlsx|
	  Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			| 1926-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-LATE-Newcreateloan1.xlsx|
	  Then I verified the "Summary" details successfully 
	  			| 1926-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-LATE-Newcreateloan1.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
	  			| 1926-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-LATE-Newcreateloan1.xlsx|
	  Then I make repayment and verified the following tabs
       			|1926-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-LATE-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
      And I disburse loan from "NewLoanInput" sheet
      			| 1926-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-LATE-Newcreateloan2.xlsx|
      Then I verified the "Summary" details successfully 
	  			| 1926-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-LATE-Newcreateloan2.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
	  			| 1926-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-LATE-Newcreateloan2.xlsx| 			
	  And I verified the "Transactions" details successfully	
				| 1926-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-LATE-Newcreateloan2.xlsx| 
				
@RunnerClass3
	  Scenario: Loan-1973-RBI-EI-DB-SAR-REC-NON-RNI-CTPD-SAR-MD-TR-2-LATE
	  
	  Given I setup the product loan "Setup"
				| Productloannavigation.xlsx |
	  Then I entered the values into product from "ProductLoanInput" Sheet
				|1973-RBI-EI-DB-SAR-REC-NON-RNI-CTPD-SAR-MD-TR-2-LATE-Loanproduct.xlsx|
	  Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			| 1973-RBI-EI-DB-SAR-REC-NON-RNI-CTPD-SAR-MD-TR-2-LATE-Newcreateloan1.xlsx|
	  Then I verified the "Summary" details successfully 
	  			| 1973-RBI-EI-DB-SAR-REC-NON-RNI-CTPD-SAR-MD-TR-2-LATE-Newcreateloan1.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
	  			| 1973-RBI-EI-DB-SAR-REC-NON-RNI-CTPD-SAR-MD-TR-2-LATE-Newcreateloan1.xlsx|
	  Then I make repayment and verified the following tabs
       			|1973-RBI-EI-DB-SAR-REC-NON-RNI-CTPD-SAR-MD-TR-2-LATE-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
      And I disburse loan from "NewLoanInput" sheet
      			| 1973-RBI-EI-DB-SAR-REC-NON-RNI-CTPD-SAR-MD-TR-2-LATE-Newcreateloan2.xlsx|
      Then I verified the "Summary" details successfully 
	  			| 1973-RBI-EI-DB-SAR-REC-NON-RNI-CTPD-SAR-MD-TR-2-LATE-Newcreateloan2.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
	  			| 1973-RBI-EI-DB-SAR-REC-NON-RNI-CTPD-SAR-MD-TR-2-LATE-Newcreateloan2.xlsx| 			
	  And I verified the "Transactions" details successfully	
				| 1973-RBI-EI-DB-SAR-REC-NON-RNI-CTPD-SAR-MD-TR-2-LATE-Newcreateloan2.xlsx| 
				
@RunnerClass3
	  Scenario: Loan-1974-RBI-EI-DB-SAR-REC-NON-RNI-CTPD-DL-MD-TR-2-LATE
	  
	  Given I setup the product loan "Setup"
				| Productloannavigation.xlsx |
	  Then I entered the values into product from "ProductLoanInput" Sheet
				|1974-RBI-EI-DB-SAR-REC-NON-RNI-CTPD-DL-MD-TR-2-LATE-Loanproduct.xlsx|
	  Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			| 1974-RBI-EI-DB-SAR-REC-NON-RNI-CTPD-DL-MD-TR-2-LATE-Newcreateloan1.xlsx|
	  Then I verified the "Summary" details successfully 
	  			| 1974-RBI-EI-DB-SAR-REC-NON-RNI-CTPD-DL-MD-TR-2-LATE-Newcreateloan1.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
	  			| 1974-RBI-EI-DB-SAR-REC-NON-RNI-CTPD-DL-MD-TR-2-LATE-Newcreateloan1.xlsx|
	  Then I make repayment and verified the following tabs
       			|1974-RBI-EI-DB-SAR-REC-NON-RNI-CTPD-DL-MD-TR-2-LATE-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
      And I disburse loan from "NewLoanInput" sheet
      			| 1974-RBI-EI-DB-SAR-REC-NON-RNI-CTPD-DL-MD-TR-2-LATE-Newcreateloan2.xlsx|
      Then I verified the "Summary" details successfully 
	  			| 1974-RBI-EI-DB-SAR-REC-NON-RNI-CTPD-DL-MD-TR-2-LATE-Newcreateloan2.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
	  			| 1974-RBI-EI-DB-SAR-REC-NON-RNI-CTPD-DL-MD-TR-2-LATE-Newcreateloan2.xlsx| 			
	  And I verified the "Transactions" details successfully	
				| 1974-RBI-EI-DB-SAR-REC-NON-RNI-CTPD-DL-MD-TR-2-LATE-Newcreateloan2.xlsx|      
				
@RunnerClass3  
	  Scenario: Loan-581-MS-EI-DB-DL-REC-NON-RNI-CTPD-SAR-MD-TR-1-EarlyRePayment
	  
	  Given I setup the product loan "Setup"
				| Productloannavigation.xlsx |
	  Then I entered the values into product from "ProductLoanInput" Sheet
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
	  
@RunnerClass3		   
	  Scenario: Loan-582-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-EarlyRePayment
	  
	  Given I setup the product loan "Setup"
				| Productloannavigation.xlsx |
	  Then I entered the values into product from "ProductLoanInput" Sheet
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
       			
@RunnerClass3		   
	  Scenario: Loan-583-MS-EI-DB-DL-REC-NON-RNI-CTRFD-SAR-MD-TR-1-EarlyRePayment
	  
	  Given I setup the product loan "Setup"
				| Productloannavigation.xlsx |
	  Then I entered the values into product from "ProductLoanInput" Sheet
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
       			
@RunnerClass3	   
	  Scenario: Loan-584-MS-EI-DB-DL-REC-NON-RNI-CTRFD-DL-MD-TR-1-EarlyRePayment
	  
	  Given I setup the product loan "Setup"
				| Productloannavigation.xlsx |
	  Then I entered the values into product from "ProductLoanInput" Sheet
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
 
@RunnerClass3		   
	  Scenario: Loan-629-MS-EI-DB-SAR-REC-NON-RNI-CTPD-SAR-MD-TR-1-EarlyRePayment
	  
	  Given I setup the product loan "Setup"
				| Productloannavigation.xlsx |
	  Then I entered the values into product from "ProductLoanInput" Sheet
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

@RunnerClass3	   
	  Scenario: Loan-630-MS-EI-DB-SAR-REC-NON-RNI-CTPD-DL-MD-TR-1-EarlyRePayment
	  
	  Given I setup the product loan "Setup"
				| Productloannavigation.xlsx |
	  Then I entered the values into product from "ProductLoanInput" Sheet
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

@RunnerClass3		   
	  Scenario: Loan-631-MS-EI-DB-SAR-REC-NON-RNI-CTRFD-SAR-MD-TR-1-EarlyRePayment
	  
	  Given I setup the product loan "Setup"
				| Productloannavigation.xlsx |
	  Then I entered the values into product from "ProductLoanInput" Sheet
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

@RunnerClass3		   
	  Scenario: Loan-632-MS-EI-DB-SAR-REC-NON-RNI-CTRFD-DL-MD-TR-1-EarlyRePayment
	  
	  Given I setup the product loan "Setup"
				| Productloannavigation.xlsx |
	  Then I entered the values into product from "ProductLoanInput" Sheet
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
       			
@RunnerClass3	   
	  Scenario: Loan-677-MS-EPP-DB-DL-REC-NON-RNI-CTPD-SAR-MD-TR-1-EarlyRePayment-
	  
	  Given I setup the product loan "Setup"
				| Productloannavigation.xlsx |
	  Then I entered the values into product from "ProductLoanInput" Sheet
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
       			
@RunnerClass3		   
	  Scenario: Loan-678-MS-EPP-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-EarlyRePayment
	  
	  Given I setup the product loan "Setup"
				| Productloannavigation.xlsx |
	  Then I entered the values into product from "ProductLoanInput" Sheet
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
       			
@RunnerClass3	   
	  Scenario: Loan-679-MS-EPP-DB-DL-REC-NON-RNI-CTRFD-SAR-MD-TR-1-EarlyRePayment
	  
	  Given I setup the product loan "Setup"
				| Productloannavigation.xlsx |
	  Then I entered the values into product from "ProductLoanInput" Sheet
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
       			
@RunnerClass3		   
	  Scenario: Loan-680-MS-EPP-DB-DL-REC-NON-RNI-CTRFD-DL-MD-TR-1-EarlyRePayment
	  
	  Given I setup the product loan "Setup"
				| Productloannavigation.xlsx |
	  Then I entered the values into product from "ProductLoanInput" Sheet
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
       			
@RunnerClass3	   
	  Scenario: Loan-725-MS-EPP-DB-SAR-REC-NON-RNI-CTPD-SAR-MD-TR-1-EarlyRePayment
	  
	  Given I setup the product loan "Setup"
				| Productloannavigation.xlsx |
	  Then I entered the values into product from "ProductLoanInput" Sheet
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
       			
@RunnerClass3		   
	  Scenario: Loan-726-MS-EPP-DB-SAR-REC-NON-RNI-CTPD-DL-MD-TR-1-EarlyRePayment
	  
	  Given I setup the product loan "Setup"
				| Productloannavigation.xlsx |
	  Then I entered the values into product from "ProductLoanInput" Sheet
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
       			
@RunnerClass3	   
	  Scenario: Loan-727-MS-EPP-DB-SAR-REC-NON-RNI-CTRFD-SAR-MD-TR-1-EarlyRePayment
	  
	  Given I setup the product loan "Setup"
				| Productloannavigation.xlsx |
	  Then I entered the values into product from "ProductLoanInput" Sheet
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
       			
@RunnerClass3	   
	  Scenario: Loan-728-MS-EPP-DB-SAR-REC-NON-RNI-CTRFD-DL-MD-TR-1-EarlyRePayment
	  
	  Given I setup the product loan "Setup"
				| Productloannavigation.xlsx |
	  Then I entered the values into product from "ProductLoanInput" Sheet
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
       			
@RunnerClass3		   
	  Scenario: Loan-197-MS-EI-DB-DL-REC-NON-RNI-CTPD-SAR-MD-TR-1-ONTIME
	  
	  Given I setup the product loan "Setup"
				| Productloannavigation.xlsx |
	  Then I entered the values into product from "ProductLoanInput" Sheet
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
       			
@RunnerClass3	   
	  Scenario: Loan-198-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME
	  
	  Given I setup the product loan "Setup"
				| Productloannavigation.xlsx |
	  Then I entered the values into product from "ProductLoanInput" Sheet
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
       			
@RunnerClass3		   
	  Scenario: Loan-199-MS-EI-DB-DL-REC-NON-RNI-CTRFD-SAR-MD-TR-1-ONTIME
	  
	  Given I setup the product loan "Setup"
				| Productloannavigation.xlsx |
	  Then I entered the values into product from "ProductLoanInput" Sheet
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
       			
@RunnerClass3		   
	  Scenario: Loan-200-MS-EI-DB-DL-REC-NON-RNI-CTRFD-DL-MD-TR-1-ONTIME
	  
	  Given I setup the product loan "Setup"
				| Productloannavigation.xlsx |
	  Then I entered the values into product from "ProductLoanInput" Sheet
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
       			
@RunnerClass3	   
	  Scenario: Loan-245-MS-EI-DB-SAR-REC-NON-RNI-CTPD-SAR-MD-TR-1-ONTIME
	  
	  Given I setup the product loan "Setup"
				| Productloannavigation.xlsx |
	  Then I entered the values into product from "ProductLoanInput" Sheet
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
       			
@RunnerClass3		   
	  Scenario: Loan-246-MS-EI-DB-SAR-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME
	  
	  Given I setup the product loan "Setup"
				| Productloannavigation.xlsx |
	  Then I entered the values into product from "ProductLoanInput" Sheet
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
       			
@RunnerClass3	   
	  Scenario: Loan-247-MS-EI-DB-SAR-REC-NON-RNI-CTRFD-SAR-MD-TR-1-ONTIME
	  
	  Given I setup the product loan "Setup"
				| Productloannavigation.xlsx |
	  Then I entered the values into product from "ProductLoanInput" Sheet
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
       			
@RunnerClass3	   
	  Scenario: Loan-248-MS-EI-DB-SAR-REC-NON-RNI-CTRFD-DL-MD-TR-1-ONTIME
	  
	  Given I setup the product loan "Setup"
				| Productloannavigation.xlsx |
	  Then I entered the values into product from "ProductLoanInput" Sheet
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
       			
@RunnerClass3	   
	  Scenario: Loan-293-MS-EPP-DB-DL-REC-NON-RNI-CTPD-SAR-MD-TR-1-ONTIME
	  
	  Given I setup the product loan "Setup"
				| Productloannavigation.xlsx |
	  Then I entered the values into product from "ProductLoanInput" Sheet
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
       			
@RunnerClass3	   
	  Scenario: Loan-294-MS-EPP-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME
	  
	  Given I setup the product loan "Setup"
				| Productloannavigation.xlsx |
	  Then I entered the values into product from "ProductLoanInput" Sheet
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
       			
@RunnerClass3	   
	  Scenario: Loan-295-MS-EPP-DB-DL-REC-NON-RNI-CTRFD-SAR-MD-TR-1-ONTIME
	  
	  Given I setup the product loan "Setup"
				| Productloannavigation.xlsx |
	  Then I entered the values into product from "ProductLoanInput" Sheet
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
       			
@RunnerClass3		   
	  Scenario: Loan-296-MS-EPP-DB-DL-REC-NON-RNI-CTRFD-DL-MD-TR-1-ONTIME
	  
	  Given I setup the product loan "Setup"
				| Productloannavigation.xlsx |
	  Then I entered the values into product from "ProductLoanInput" Sheet
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
       			
@RunnerClass3	   
	  Scenario: Loan-341-MS-EPP-DB-SAR-REC-NON-RNI-CTPD-SAR-MD-TR-1-ONTIME
	  
	   Given I setup the product loan "Setup"
				| Productloannavigation.xlsx |
	  Then I entered the values into product from "ProductLoanInput" Sheet
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
       			
@RunnerClass3	   
	  Scenario: Loan-342-MS-EPP-DB-SAR-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME
	  
	  Given I setup the product loan "Setup"
				| Productloannavigation.xlsx |
	  Then I entered the values into product from "ProductLoanInput" Sheet
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
       			
@RunnerClass3	   
	  Scenario: Loan-343-MS-EPP-DB-SAR-REC-NON-RNI-CTRFD-SAR-MD-TR-1-ONTIME
	  
	  Given I setup the product loan "Setup"
				| Productloannavigation.xlsx |
	  Then I entered the values into product from "ProductLoanInput" Sheet
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
       			
@RunnerClass3   
	  Scenario: Loan-344-MS-EPP-DB-SAR-REC-NON-RNI-CTRFD-DL-MD-TR-1-ONTIME
	  
	  Given I setup the product loan "Setup"
				| Productloannavigation.xlsx |
	  Then I entered the values into product from "ProductLoanInput" Sheet
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
       			
@RunnerClass3	   
	  Scenario: Loan-965-MS-EI-DB-DL-REC-NON-RNI-CTPD-SAR-MD-TR-1-LateRepayment
	  
	  Given I setup the product loan "Setup"
				| Productloannavigation.xlsx |
	  Then I entered the values into product from "ProductLoanInput" Sheet
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
      
@RunnerClass3
	  Scenario: Loan-966-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-LateRepayment
	  
	  Given I setup the product loan "Setup"
				| Productloannavigation.xlsx |
	  Then I entered the values into product from "ProductLoanInput" Sheet
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
       			 			
			
@RunnerClass3	   
	  Scenario: Loan-967-MS-EI-DB-DL-REC-NON-RNI-CTRFD-SAR-MD-TR-1-LateRepayment
	  
	  Given I setup the product loan "Setup"
				| Productloannavigation.xlsx |
	  Then I entered the values into product from "ProductLoanInput" Sheet
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
       			
@RunnerClass3   
	  Scenario: Loan-968-MS-EI-DB-DL-REC-NON-RNI-CTRFD-DL-MD-TR-1-LateRepayment
	  
	  Given I setup the product loan "Setup"
				| Productloannavigation.xlsx |
	  Then I entered the values into product from "ProductLoanInput" Sheet
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
       			
@RunnerClass3	   
	  Scenario: Loan-1013-MS-EI-DB-SAR-REC-NON-RNI-CTPD-SAR-MD-TR-1-LateRepayment
	  
	  Given I setup the product loan "Setup"
				| Productloannavigation.xlsx |
	  Then I entered the values into product from "ProductLoanInput" Sheet
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
       			
@RunnerClass3		   
	  Scenario: Loan-1014-MS-EI-DB-SAR-REC-NON-RNI-CTPD-DL-MD-TR-1-LateRepayment
	  
	  Given I setup the product loan "Setup"
				| Productloannavigation.xlsx |
	  Then I entered the values into product from "ProductLoanInput" Sheet
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
       			
@RunnerClass3		   
	  Scenario: Loan-1015-MS-EI-DB-SAR-REC-NON-RNI-CTRFD-SAR-MD-TR-1-LateRepayment
	  
	  Given I setup the product loan "Setup"
				| Productloannavigation.xlsx |
	  Then I entered the values into product from "ProductLoanInput" Sheet
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
       			
@RunnerClass3	   
	  Scenario: Loan-1016-MS-EI-DB-SAR-REC-NON-RNI-CTRFD-DL-MD-TR-1-LateRepayment
	  
	  Given I setup the product loan "Setup"
				| Productloannavigation.xlsx |
	  Then I entered the values into product from "ProductLoanInput" Sheet
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
       			
@RunnerClass3	   
	  Scenario: Loan-1061-MS-EPP-DB-DL-REC-NON-RNI-CTPD-SAR-MD-TR-1-LateRepayment
	  
	  Given I setup the product loan "Setup"
				| Productloannavigation.xlsx |
	  Then I entered the values into product from "ProductLoanInput" Sheet
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
       			
@RunnerClass3   
	  Scenario: Loan-1062-MS-EPP-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-LateRepayment
	  
	  Given I setup the product loan "Setup"
				| Productloannavigation.xlsx |
	  Then I entered the values into product from "ProductLoanInput" Sheet
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
       			
@RunnerClass3	   
	  Scenario: Loan-1063-MS-EPP-DB-DL-REC-NON-RNI-CTRFD-SAR-MD-TR-1-LateRepayment
	  
	  Given I setup the product loan "Setup"
				| Productloannavigation.xlsx |
	  Then I entered the values into product from "ProductLoanInput" Sheet
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
       			
@RunnerClass3		   
	  Scenario: Loan-1064-MS-EPP-DB-DL-REC-NON-RNI-CTRFD-DL-MD-TR-1-LateRepayment
	  
	  Given I setup the product loan "Setup"
				| Productloannavigation.xlsx |
	  Then I entered the values into product from "ProductLoanInput" Sheet
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
       			
@RunnerClass3	   
	  Scenario: Loan-1109-MS-EPP-DB-SAR-REC-NON-RNI-CTPD-SAR-MD-TR-1-LateRepayment
	  
	  Given I setup the product loan "Setup"
				| Productloannavigation.xlsx |
	  Then I entered the values into product from "ProductLoanInput" Sheet
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
       			
@RunnerClass3	   
	  Scenario: Loan-1110-MS-EPP-DB-SAR-REC-NON-RNI-CTPD-DL-MD-TR-1-LateRepayment
	  
	  Given I setup the product loan "Setup"
				| Productloannavigation.xlsx |
	  Then I entered the values into product from "ProductLoanInput" Sheet
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
       			
@RunnerClass3
	  Scenario: Loan-1111-MS-EPP-DB-SAR-REC-NON-RNI-CTRFD-SAR-MD-TR-1-LateRepayment
	  
	  Given I setup the product loan "Setup"
				| Productloannavigation.xlsx |
	  Then I entered the values into product from "ProductLoanInput" Sheet
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
       			 			
@RunnerClass3
	  Scenario: Loan-1112-MS-EPP-DB-SAR-REC-NON-RNI-CTRFD-DL-MD-TR-1-LateRepayment
	  
	  Given I setup the product loan "Setup"
				| Productloannavigation.xlsx |
	  Then I entered the values into product from "ProductLoanInput" Sheet
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
       			
@RunnerClass3   
	  Scenario: Loan-1349-MS-EI-DB-DL-REC-NON-RNI-CTPD-SAR-MD-TR-2-ONTIME
	
	  Given I setup the product loan "Setup"
				| Productloannavigation.xlsx |
	  Then I entered the values into product from "ProductLoanInput" Sheet
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
				
@RunnerClass3   
	  Scenario: Loan-1350-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME
	
	  Given I setup the product loan "Setup"
				| Productloannavigation.xlsx |
	  Then I entered the values into product from "ProductLoanInput" Sheet
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
				
@RunnerClass3 
	  Scenario: Loan-1397-MS-EI-DB-SAR-REC-NON-RNI-CTPD-SAR-MD-TR-2-ONTIME
	
	  Given I setup the product loan "Setup"
				| Productloannavigation.xlsx |
	  Then I entered the values into product from "ProductLoanInput" Sheet
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
				
@RunnerClass3   
	  Scenario: Loan-1398-MS-EI-DB-SAR-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME
	
	  Given I setup the product loan "Setup"
				| Productloannavigation.xlsx |
	  Then I entered the values into product from "ProductLoanInput" Sheet
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
				
@RunnerClass3  
	  Scenario: Loan-1733-MS-EI-DB-DL-REC-NON-RNI-CTPD-SAR-MD-TR-2-EARLY
	
	  Given I setup the product loan "Setup"
				| Productloannavigation.xlsx |
	  Then I entered the values into product from "ProductLoanInput" Sheet
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
				
@RunnerClass3
	  Scenario: Loan-1734-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-EARLY
	
	  Given I setup the product loan "Setup"
				| Productloannavigation.xlsx |
	  Then I entered the values into product from "ProductLoanInput" Sheet
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
				
@RunnerClass3   
	  Scenario: Loan-1781-MS-EI-DB-SAR-REC-NON-RNI-CTPD-SAR-MD-TR-2-EARLY
	  
	  Given I setup the product loan "Setup"
				| Productloannavigation.xlsx |
	  Then I entered the values into product from "ProductLoanInput" Sheet
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
				
@RunnerClass3	   
	  Scenario: Loan-1782-MS-EI-DB-SAR-REC-NON-RNI-CTPD-DL-MD-TR-2-EARLY
	  
	  Given I setup the product loan "Setup"
				| Productloannavigation.xlsx |
	  Then I entered the values into product from "ProductLoanInput" Sheet
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

@RunnerClass3   
	  Scenario: Loan-2117-MS-EI-DB-DL-REC-NON-RNI-CTPD-SAR-MD-TR-2-LATE
	  
	  Given I setup the product loan "Setup"
				| Productloannavigation.xlsx |
	  Then I entered the values into product from "ProductLoanInput" Sheet
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

@RunnerClass3	   
	  Scenario: Loan-2118-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-LATE
	  
	  Given I setup the product loan "Setup"
				| Productloannavigation.xlsx |
	  Then I entered the values into product from "ProductLoanInput" Sheet
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

@RunnerClass3	   
	  Scenario: Loan-2165-MS-EI-DB-SAR-REC-NON-RNI-CTPD-SAR-MD-TR-2-LATE
	
	  Given I setup the product loan "Setup"
				| Productloannavigation.xlsx |
	  Then I entered the values into product from "ProductLoanInput" Sheet
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

@RunnerClass3  
	  Scenario: Loan-2166-MS-EI-DB-SAR-REC-NON-RNI-CTPD-DL-MD-TR-2-LATE
	
	  Given I setup the product loan "Setup"
				| Productloannavigation.xlsx |
	  Then I entered the values into product from "ProductLoanInput" Sheet
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
				
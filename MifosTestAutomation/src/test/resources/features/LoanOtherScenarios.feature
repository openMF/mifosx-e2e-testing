Feature:LoanOtherScenarios

Background:
	Given I navigate to mifos using "default3#/"
	And I login into mifos site using "Login" excel sheet
		| Login.xlsx  |
	Then I should see logged in successfully
		
@scenario1-3500-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-DISBURSE-FEE-%APR-AMT-Reg-PERIODIC	   
	  Scenario: 3500-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-DISBURSE-FEE-%APR-AMT-Reg-PERIODIC  
	  
	  Given I setup the product loan "Setup"
				| Productloannavigation.xlsx |
	  Then I entered the values into product loan from "ProductLoanInput" Sheet
				|3500-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-DISBURSE-FEE-%APR-AMT-Reg-PERIODIC-Loanproduct.xlsx|
      Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			| 3500-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-DISBURSE-FEE-%APR-AMT-Reg-PERIODIC-Newcreateloan.xlsx|
	  Then I verified the "Summary" details successfully 
	  			| 3500-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-DISBURSE-FEE-%APR-AMT-Reg-PERIODIC-Newcreateloan.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
	  			| 3500-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-DISBURSE-FEE-%APR-AMT-Reg-PERIODIC-Newcreateloan.xlsx|
	  Then I make repayment and verified the following tabs
       			|3500-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-DISBURSE-FEE-%APR-AMT-Reg-PERIODIC-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|

@scenario2-3501-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-DISBURSE-FEE-%APR-AMT-Reg-PERIODIC	   
	  Scenario: 3501-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-DISBURSE-FEE-%APR-AMT-Reg-PERIODIC  
	  
	  Given I setup the product loan "Setup"
				| Productloannavigation.xlsx |
	  Then I entered the values into product loan from "ProductLoanInput" Sheet
				|3501-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-DISBURSE-FEE-%APR-AMT-Reg-PERIODIC-Loanproduct.xlsx|
	  Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			| 3501-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-DISBURSE-FEE-%APR-AMT-Reg-PERIODIC-Newcreateloan.xlsx|
	  Then I verified the "Summary" details successfully 
	  			| 3501-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-DISBURSE-FEE-%APR-AMT-Reg-PERIODIC-Newcreateloan.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
	  			| 3501-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-DISBURSE-FEE-%APR-AMT-Reg-PERIODIC-Newcreateloan.xlsx|
	  And I verified the "Transactions" details successfully	
				| 3501-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-DISBURSE-FEE-%APR-AMT-Reg-PERIODIC-Newcreateloan.xlsx|
	  Then I make repayment and verified the following tabs
       			|3501-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-DISBURSE-FEE-%APR-AMT-Reg-PERIODIC-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|

@scenario3-3502-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-DISBURSE-FEE-%APR-AMT-Reg-PERIODIC
	  Scenario: 3502-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-DISBURSE-FEE-%APR-AMT-Reg-PERIODIC  

      Given I setup the product loan "Setup"
				| Productloannavigation.xlsx |
	  Then I entered the values into product loan from "ProductLoanInput" Sheet
				|3502-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-DISBURSE-FEE-%APR-AMT-Reg-PERIODIC-Loanproduct.xlsx|
      Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			| 3502-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-DISBURSE-FEE-%APR-AMT-Reg-PERIODIC-Newcreateloan.xlsx|
	  Then I verified the "Summary" details successfully 
	  			| 3502-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-DISBURSE-FEE-%APR-AMT-Reg-PERIODIC-Newcreateloan.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
	  			| 3502-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-DISBURSE-FEE-%APR-AMT-Reg-PERIODIC-Newcreateloan.xlsx|
	  Then I make repayment and verified the following tabs
       			|3502-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-DISBURSE-FEE-%APR-AMT-Reg-PERIODIC-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
	 			
@scenario4-3503-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-DISBURSE-FEE-%APR-AMT-Reg-PERIODIC
	  Scenario: 3503-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-DISBURSE-FEE-%APR-AMT-Reg-PERIODIC  

      Given I setup the product loan "Setup"
				| Productloannavigation.xlsx |
	  Then I entered the values into product loan from "ProductLoanInput" Sheet
				|3503-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-DISBURSE-FEE-%APR-AMT-Reg-PERIODIC-Loanproduct.xlsx|
  	  Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			| 3503-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-DISBURSE-FEE-%APR-AMT-Reg-PERIODIC-Newcreateloan.xlsx|
	  Then I verified the "Summary" details successfully 
	  			| 3503-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-DISBURSE-FEE-%APR-AMT-Reg-PERIODIC-Newcreateloan.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
	  			| 3503-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-DISBURSE-FEE-%APR-AMT-Reg-PERIODIC-Newcreateloan.xlsx|
	  Then I make repayment and verified the following tabs
       			|3503-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-DISBURSE-FEE-%APR-AMT-Reg-PERIODIC-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|

  @scenario5-3504-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-DISBURSE-FEE-%APR-AMT-AddTranche
	  Scenario: 3504-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-DISBURSE-FEE-%APR-AddTranche

      Given I setup the product loan "Setup"
				| Productloannavigation.xlsx |
	  Then I entered the values into product loan from "ProductLoanInput" Sheet
				|3504-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-DISBURSE-FEE-%APR-AMT-AddTranche-Loanproduct.xlsx|
      Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			| 3504-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-DISBURSE-FEE-%APR-AMT-AddTranche-Newcreateloan.xlsx|
	  Then I verified the "Summary" details successfully 
	  			| 3504-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-DISBURSE-FEE-%APR-AMT-AddTranche-Newcreateloan.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
	  			| 3504-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-DISBURSE-FEE-%APR-AMT-AddTranche-Newcreateloan.xlsx|
	  Then I "Add trance from trache tab" and verified the following tabs
	  	|3504-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-DISBURSE-FEE-%APR-AMT-AddTranche-LoanTranche.xlsx|Loan Tranche Details|Summary|Repayment Schedule|Transactions|

 @scenario6-3505-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-DISBURSE-FEE-%APR-AMT-DeleteTranche
	  Scenario: 3505-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-DISBURSE-FEE-%APR-AMT-DeleteTranche  

      Given I setup the product loan "Setup"
				| Productloannavigation.xlsx |
	  Then I entered the values into product loan from "ProductLoanInput" Sheet
				|3505-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-DISBURSE-FEE-%APR-AMT-DeleteTranche-Loanproduct.xlsx|
      Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			| 3505-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-DISBURSE-FEE-%APR-AMT-DeleteTranche-Newcreateloan.xlsx|
	  Then I verified the "Summary" details successfully 
	  			| 3505-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-DISBURSE-FEE-%APR-AMT-DeleteTranche-Newcreateloan.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
	  			| 3505-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-DISBURSE-FEE-%APR-AMT-DeleteTranche-Newcreateloan.xlsx|
	  Then I "Delete trance from trache tab" and verified the following tabs
	  			| 3505-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-DISBURSE-FEE-%APR-AMT-DeleteTranche-LoanTranche.xlsx|Loan Tranche Details|

@scenario7-3506-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-DISBURSE-FEE-%APR-AMT-AddThirdTranche
	  Scenario: 3506-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-DISBURSE-FEE-%APR-AMT-AddThirdTranche  

      Given I setup the product loan "Setup"
				| Productloannavigation.xlsx |
	  Then I entered the values into product loan from "ProductLoanInput" Sheet
				|3506-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-DISBURSE-FEE-%APR-AMT-AddThirdTranche-Loanproduct.xlsx|
      Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			| 3506-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-DISBURSE-FEE-%APR-AMT-AddThirdTranche-Newcreateloan.xlsx|
	  Then I verified the "Summary" details successfully 
	  			| 3506-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-DISBURSE-FEE-%APR-AMT-AddThirdTranche-Newcreateloan.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
	  			| 3506-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-DISBURSE-FEE-%APR-AMT-AddThirdTranche-Newcreateloan.xlsx|
	  Then I "Add Third trance from trache tab" and verified the following tabs
	  			|3506-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-DISBURSE-FEE-%APR-AMT-AddThirdTranche-LoanTranche.xlsx|Loan Tranche Details|
	  Then i validate and Verify from "Output" sheet
	  			|3506-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-DISBURSE-FEE-%APR-AMT-AddThirdTranche-LoanTranche.xlsx|
	
@scenario8-3507-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-None-SPEDUEDATE-FEE-FLAT-WaiveCharge
	  Scenario: 3507-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-None-SPEDUEDATE-FEE-FLAT-WaiveCharge  

      Given I setup the product loan "Setup"
				| Productloannavigation.xlsx |
	  Then I entered the values into product loan from "ProductLoanInput" Sheet
				|3507-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-None-SPEDUEDATE-FEE-FLAT-WaiveCharge-Loanproduct.xlsx|
      Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			| 3507-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-None-SPEDUEDATE-FEE-FLAT-WaiveCharge-Newcreateloan.xlsx|
	  Then I verified the "Summary" details successfully 
	  			| 3507-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-None-SPEDUEDATE-FEE-FLAT-WaiveCharge-Newcreateloan.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
	  			| 3507-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-None-SPEDUEDATE-FEE-FLAT-WaiveCharge-Newcreateloan.xlsx|
	  Then I "Wave Charge from Charges tab" and verified the following tabs
	  			|3507-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-None-SPEDUEDATE-FEE-FLAT-WaiveCharge-Charges.xlsx|Charges|Summary|Repayment Schedule|Transactions|

@scenario9-3508-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-None-INSTALLMENT-FEE-FLAT-WaiveCharge
	  Scenario: 3508-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-None-INSTALLMENT-FEE-FLAT-WaiveCharge  

      Given I setup the product loan "Setup"
				| Productloannavigation.xlsx |
	  Then I entered the values into product loan from "ProductLoanInput" Sheet
				|3508-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-None-INSTALLMENT-FEE-FLAT-WaiveCharge-Loanproduct.xlsx|
      Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			| 3508-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-None-INSTALLMENT-FEE-FLAT-WaiveCharge-Newcreateloan.xlsx|
	  Then I verified the "Summary" details successfully 
	  			| 3508-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-None-INSTALLMENT-FEE-FLAT-WaiveCharge-Newcreateloan.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
	  			| 3508-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-None-INSTALLMENT-FEE-FLAT-WaiveCharge-Newcreateloan.xlsx|
	  Then I "Wave Charge from Charges tab" and verified the following tabs
	  			|3508-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-None-INSTALLMENT-FEE-FLAT-WaiveCharge-Charges.xlsx|Charges|Summary|Repayment Schedule|Transactions|

	  			
@scenario10-3509-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-None-Make1RepaymentThenDeleteTransaction
	  Scenario: 3509-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-None-Make1RepaymentThenDeleteTransaction  

      Given I setup the product loan "Setup"
				| Productloannavigation.xlsx |
	  Then I entered the values into product loan from "ProductLoanInput" Sheet
				|3509-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-None-Make1RepaymentThenDeleteTransaction-Loanproduct.xlsx|
      Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			| 3509-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-None-Make1RepaymentThenDeleteTransaction-Newcreateloan.xlsx|
	  Then I verified the "Summary" details successfully 
	  			| 3509-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-None-Make1RepaymentThenDeleteTransaction-Newcreateloan.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
	  			| 3509-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-None-Make1RepaymentThenDeleteTransaction-Newcreateloan.xlsx|
	  Then I make repayment and verified the following tabs
       			|3509-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-None-Make1RepaymentThenDeleteTransaction-Makerepayment1.xlsx|Input|
	   Then I "delete transaction from transaction tab" and verified the following tabs
	  			|3509-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-None-Make1RepaymentThenDeleteTransaction-Makerepayment1.xlsx|Modify Transaction|Summary|Repayment Schedule|Transactions|
	  		
@scenario11-3510-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-None-Make1RepaymentThenEditTransaction
	  Scenario: 3510-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-None-Make1RepaymentThenEditTransaction  

      Given I setup the product loan "Setup"
				| Productloannavigation.xlsx |
	  Then I entered the values into product loan from "ProductLoanInput" Sheet
				|3510-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-None-Make1RepaymentThenEditTransaction-Loanproduct.xlsx|
      Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			| 3510-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-None-Make1RepaymentThenEditTransaction-Newcreateloan.xlsx|
	  Then I verified the "Summary" details successfully 
	  			| 3510-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-None-Make1RepaymentThenEditTransaction-Newcreateloan.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
	  			| 3510-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-None-Make1RepaymentThenEditTransaction-Newcreateloan.xlsx|
	  Then I make repayment and verified the following tabs
       			|3510-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-None-Make1RepaymentThenEditTransaction-Makerepayment1.xlsx|Input|
	   Then I "delete transaction from transaction tab" and verified the following tabs
	  			|3510-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-None-Make1RepaymentThenEditTransaction-Makerepayment1.xlsx|Modify Transaction|Summary|Repayment Schedule|Transactions|
	  			
@scenario12-3511-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-None-INSTALLMENT-FEE-FLAT-WaiveInterest
	  Scenario: 3511-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-None-INSTALLMENT-FEE-FLAT-WaiveInterest  

      Given I setup the product loan "Setup"
				| Productloannavigation.xlsx |
	  Then I entered the values into product loan from "ProductLoanInput" Sheet
				|3511-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-None-INSTALLMENT-FEE-FLAT-WaiveInterest-Loanproduct.xlsx|
      Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			| 3511-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-None-INSTALLMENT-FEE-FLAT-WaiveInterest-Newcreateloan.xlsx|
	  Then I "WaiveInterest" and verified the following tabs
	  			| 3511-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-None-INSTALLMENT-FEE-FLAT-WaiveInterest-Newcreateloan.xlsx|Modify Transaction|Summary|Repayment Schedule|Transactions|
	  			
@scenario13-3512-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-None-INSTALLMENT-FEE-FLAT-WriteOff
	  Scenario: 3512-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-None-INSTALLMENT-FEE-FLAT-WriteOff  

      Given I setup the product loan "Setup"
				| Productloannavigation.xlsx |
	  Then I entered the values into product loan from "ProductLoanInput" Sheet
				|3512-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-None-Writeoff-Loanproduct.xlsx|
      Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			| 3512-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-None-INSTALLMENT-FEE-FLAT-WriteOff-Newcreateloan.xlsx|
	  Then I "WaiveInterest" and verified the following tabs
	  			| 3512-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-None-INSTALLMENT-FEE-FLAT-WriteOff-Newcreateloan.xlsx|Modify Transaction|Summary|Repayment Schedule|Transactions|
	
@scenario14-3513-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-PERIODIC-SP-FLAT-PENALTY
	  Scenario: 3513-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-PERIODIC-SP-FLAT-PENALTY
	  
	 Given I setup the product loan "Setup"
				| Productloannavigation.xlsx |
	 Then I entered the values into product loan from "ProductLoanInput" Sheet
				|3513-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-PERIODIC-SP-FLAT-PENALTY-Loanproduct.xlsx|
	 Given I setup the clients 
	 Then I entered the values into client from "Input" sheet
	    |Createclient.xlsx|
	 Then I should see client created successfully from "Output" sheet
		  		|Createclient.xlsx|	
	 When I set up the new create loan from "NewLoanInput" sheet
				|3513-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-PERIODIC-SP-FLAT-PENALTY-Newcreateloan.xlsx|
	 Then I navigate to scheduler job & execute "Periodic Accrual Transactions"
	 Then I verified the "Summary" details successfully 
				|3513-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-PERIODIC-SP-FLAT-PENALTY-Newcreateloan.xlsx|
	 And I verified the "Repayment Schedule" details successfully 
	    		|3513-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-PERIODIC-SP-FLAT-PENALTY-Newcreateloan.xlsx|
	 And I verified the "Transactions" details successfully 
				|3513-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-PERIODIC-SP-FLAT-PENALTY-Newcreateloan.xlsx|
	 When I make repayment and verified the following tabs
	    		|3513-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-PERIODIC-SP-FLAT-PENALTY-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
	 And I Navigate to Accounting web page
	 And I search with transaction id & verified the accounting entries
	    		|3513-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-PERIODIC-SP-FLAT-PENALTY-Makerepayment1.xlsx|Acc_Disbursement|Acc_Repayment|Acc_Periodic|

@scenario15-3514-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-PERIODIC-INSTALLMENT-FLAT-PENALTY
	  Scenario: 3514-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-PERIODIC-INSTALLMENT-FLAT-PENALTY
	 Given I setup the product loan "Setup"
					| Productloannavigation.xlsx |
	 Then I entered the values into product loan from "ProductLoanInput" Sheet
					|3514-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-PERIODIC-INSTALLMENT-FLAT-PENALTY-Loanproduct.xlsx|
	 Given I setup the clients 
	 Then I entered the values into client from "Input" sheet
	    |Createclient.xlsx|
	 Then I should see client created successfully from "Output" sheet
		  			|Createclient.xlsx|	
	 When I set up the new create loan from "NewLoanInput" sheet
		|3514-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-PERIODIC-INSTALLMENT-FLAT-PENALTY-Newcreateloan.xlsx|
	 Then I navigate to scheduler job & execute "Periodic Accrual Transactions"
	 Then I verified the "Summary" details successfully 
		|3514-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-PERIODIC-INSTALLMENT-FLAT-PENALTY-Newcreateloan.xlsx|
	 And I verified the "Repayment Schedule" details successfully 
	    |3514-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-PERIODIC-INSTALLMENT-FLAT-PENALTY-Newcreateloan.xlsx|
	 And I verified the "Transactions" details successfully 
		|3514-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-PERIODIC-INSTALLMENT-FLAT-PENALTY-Newcreateloan.xlsx|
	 When I make repayment and verified the following tabs
	    |3514-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-PERIODIC-INSTALLMENT-FLAT-PENALTY-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
	 And I Navigate to Accounting web page
	 And I search with transaction id & verified the accounting entries
	    |3514-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-PERIODIC-INSTALLMENT-FLAT-PENALTY-Makerepayment1.xlsx|Acc_Disbursement|Acc_Repayment|Acc_Periodic|

@scenario16-3515-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-PERIODIC-OVERDUE-FEE-FLAT-PENALTY-FRE-1
	  Scenario: 3515-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-PERIODIC-OVERDUE-FEE-FLAT-PENALTY-FRE-1
 Given I setup the product loan "Setup"
					| Productloannavigation.xlsx |
 Then I entered the values into product loan from "ProductLoanInput" Sheet
					|3515-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-PERIODIC-OVERDUE-FEE-FLAT-PENALTY-FRE-1-Loanproduct.xlsx|
 Given I setup the clients 
 Then I entered the values into client from "Input" sheet
    |Createclient.xlsx|
 Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|	
 When I set up the new create loan from "NewLoanInput" sheet
	|3515-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-PERIODIC-OVERDUE-FEE-FLAT-PENALTY-FRE-1-Newcreateloan.xlsx|
 Then I navigate to scheduler job & execute "Periodic & penalty to overdue loans"
 Then I verified the "Summary" details successfully 
	|3515-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-PERIODIC-OVERDUE-FEE-FLAT-PENALTY-FRE-1-Newcreateloan.xlsx|
 And I verified the "Repayment Schedule" details successfully 
    |3515-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-PERIODIC-OVERDUE-FEE-FLAT-PENALTY-FRE-1-Newcreateloan.xlsx|
 And I verified the "Transactions" details successfully 
	|3515-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-PERIODIC-OVERDUE-FEE-FLAT-PENALTY-FRE-1-Newcreateloan.xlsx|
 When I make repayment and verified the following tabs
    |3515-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-PERIODIC-OVERDUE-FEE-FLAT-PENALTY-FRE-1-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
 And I Navigate to Accounting web page
 And I search with transaction id & verified the accounting entries
    |3515-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-PERIODIC-OVERDUE-FEE-FLAT-PENALTY-FRE-1-Makerepayment1.xlsx|Acc_Disbursement|Acc_Repayment|Acc_Periodic|	  			    			

@scenario17-3516-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-NONE-SP-FLAT-WAIVEPENALTY
	  Scenario: 3516-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-NONE-SP-FLAT-WAIVEPENALTY  
		
      Given I setup the product loan "Setup"
					| Productloannavigation.xlsx |
 	 Then I entered the values into product loan from "ProductLoanInput" Sheet
					|3516-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-NONE-SP-FLAT-WAIVEPENALTY-Loanproduct.xlsx|
      Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			|3516-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-NONE-SP-FLAT-WAIVEPENALTY-Newcreateloan.xlsx|
	  Then I verified the "Summary" details successfully 
	            |3516-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-NONE-SP-FLAT-WAIVEPENALTY-Newcreateloan.xlsx|
     And I verified the "Repayment Schedule" details successfully 
    			|3516-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-NONE-SP-FLAT-WAIVEPENALTY-Newcreateloan.xlsx|
 	  Then I "WAIVEPENALTY" and verified the following tabs
	  			| 3516-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-NONE-SP-FLAT-WAIVEPENALTY-Charges.xlsx|Charges|Summary|Repayment Schedule|Transactions|

@scenario18-3517-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-NONE-SP-FLAT-EDITCHARGE
	  Scenario: 3517-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-NONE-SP-FLAT-EDITCHARGE  

      Given I setup the product loan "Setup"
					| Productloannavigation.xlsx |
 	  Then I entered the values into product loan from "ProductLoanInput" Sheet
					|3517-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-NONE-SP-FLAT-EDITCHARGE-Loanproduct.xlsx|
      Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			|3517-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-NONE-SP-FLAT-EDITCHARGE-Newcreateloan.xlsx|
	  Then I "Edit charge from charge tab" and verified the following tabs
	  			|3517-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-NONE-SP-FLAT-EDITCHARGE-Newcreateloan.xlsx|Charges|Summary|Repayment Schedule|Transactions|
	  Then I verified the "Summary" details successfully 
	            |3517-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-NONE-SP-FLAT-EDITCHARGE-Newcreateloan.xlsx|
       And I verified the "Repayment Schedule" details successfully 
    			|3517-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-NONE-SP-FLAT-EDITCHARGE-Newcreateloan.xlsx|
 
 @scenario19-3518-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-NONE-SP-FLAT-DELETECHARGE
	  Scenario: 3518-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-NONE-SP-FLAT-DELETECHARGE  

      Given I setup the product loan "Setup"
					| Productloannavigation.xlsx |
 	  Then I entered the values into product loan from "ProductLoanInput" Sheet
					|3518-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-NONE-SP-FLAT-DELETECHARGE-Loanproduct.xlsx|
      Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			|3518-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-NONE-SP-FLAT-DELETECHARGE-Newcreateloan.xlsx|
	  Then I "Delete charge from charge tab" and verified the following tabs
	  			|3518-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-NONE-SP-FLAT-DELETECHARGE-Newcreateloan.xlsx|Charges|Summary|Repayment Schedule|Transactions|

@scenario20-3519-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-NONE-ALLOW-FIXING-INST-AMT
	  Scenario: 3519-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-NONE-ALLOW-FIXING-INST-AMT  

      Given I setup the product loan "Setup"
					| Productloannavigation.xlsx |
 	  Then I entered the values into product loan from "ProductLoanInput" Sheet
					|3519-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-NONE-ALLOW-FIXING-INST-AMT-Loanproduct.xlsx|
      Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			|3519-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-NONE-ALLOW-FIXING-INST-AMT-Newcreateloan.xlsx|
	 Then I verified the "Summary" details successfully 
				|3519-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-NONE-ALLOW-FIXING-INST-AMT-Newcreateloan.xlsx|
 	 And I verified the "Repayment Schedule" details successfully 
    			|3519-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-NONE-ALLOW-FIXING-INST-AMT-Newcreateloan.xlsx|
     And I verified the "Transactions" details successfully 
				|3519-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-NONE-ALLOW-FIXING-INST-AMT-Newcreateloan.xlsx|

@scenario21-3520-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-NONE-INST.AMT-0%THRESHOLD
	  Scenario: 3520-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-NONE-INST.AMT-0%THRESHOLD  

      Given I setup the product loan "Setup"
					| Productloannavigation.xlsx |
 	  Then I entered the values into product loan from "ProductLoanInput" Sheet
					|3520-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-NONE-INST.AMT-0%THRESHOLD-Loanproduct.xlsx|
      Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			|3520-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-NONE-INST.AMT-0%THRESHOLD-Newcreateloan.xlsx|
	 Then I verified the "Summary" details successfully 
				|3520-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-NONE-INST.AMT-0%THRESHOLD-Newcreateloan.xlsx|
 	 And I verified the "Repayment Schedule" details successfully 
    			|3520-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-NONE-INST.AMT-0%THRESHOLD-Newcreateloan.xlsx|
     And I verified the "Transactions" details successfully 
				|3520-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-NONE-INST.AMT-0%THRESHOLD-Newcreateloan.xlsx|

@scenario22-3521-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-NONE-INST.AMT-50%THRESHOLD
	  Scenario: 3521-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-NONE-INST.AMT-50%THRESHOLD  

      Given I setup the product loan "Setup"
					| Productloannavigation.xlsx |
 	  Then I entered the values into product loan from "ProductLoanInput" Sheet
					|3521-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-NONE-INST.AMT-50%THRESHOLD-Loanproduct.xlsx|
      Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			|3521-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-NONE-INST.AMT-50%THRESHOLD-Newcreateloan.xlsx|
	 Then I verified the "Summary" details successfully 
				|3521-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-NONE-INST.AMT-50%THRESHOLD-Newcreateloan.xlsx|
 	 And I verified the "Repayment Schedule" details successfully 
    			|3521-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-NONE-INST.AMT-50%THRESHOLD-Newcreateloan.xlsx|
     And I verified the "Transactions" details successfully 
				|3521-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-NONE-INST.AMT-50%THRESHOLD-Newcreateloan.xlsx|

@scenario23-3522-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-NONE-INST.AMT-100%THRESHOLD
	  Scenario: 3522-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-NONE-INST.AMT-100%THRESHOLD  

      Given I setup the product loan "Setup"
					| Productloannavigation.xlsx |
 	  Then I entered the values into product loan from "ProductLoanInput" Sheet
					|3522-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-NONE-INST.AMT-100%THRESHOLD-Loanproduct.xlsx|
      Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			|3522-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-NONE-INST.AMT-100%THRESHOLD-Newcreateloan.xlsx|
	 Then I verified the "Summary" details successfully 
				|3522-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-NONE-INST.AMT-100%THRESHOLD-Newcreateloan.xlsx|
 	 And I verified the "Repayment Schedule" details successfully 
    			|3522-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-NONE-INST.AMT-100%THRESHOLD-Newcreateloan.xlsx|
     And I verified the "Transactions" details successfully 
				|3522-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-NONE-INST.AMT-100%THRESHOLD-Newcreateloan.xlsx|

#@scenario24-3523-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-NONE-ADV.ACC
#	  Scenario: 3523-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-NONE-ADV.ACC

# Given I setup the product loan "Setup"
#					| Productloannavigation.xlsx |
# 	  Then I entered the values into product loan from "ProductLoanInput" Sheet
#					|3523-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-NONE-ADV.ACC-Loanproduct.xlsx|
#Given I setup the clients 
# Then I entered the values into client from "Input" sheet
#    |Createclient.xlsx|
# Then I should see client created successfully from "Output" sheet
#	  			|Createclient.xlsx|	
# When I set up the new create loan from "NewLoanInput" sheet
#	|3523-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-NONE-ADV.ACC-Newcreateloan.xlsx|
# Then I navigate to scheduler job & execute "Periodic & penalty to overdue loans"
# Then I verified the "Summary" details successfully 
#	|3523-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-NONE-ADV.ACC-Newcreateloan.xlsx|
# And I verified the "Repayment Schedule" details successfully 
#    |3523-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-NONE-ADV.ACC-Newcreateloan.xlsx|
# And I verified the "Transactions" details successfully 
#	|3523-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-NONE-ADV.ACC-Newcreateloan.xlsx|
# When I make repayment and verified the following tabs
#    |3523-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-NONE-ADV.ACC-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
# And I Navigate to Accounting web page
# And I search with transaction id & verified the accounting entries
#    |3523-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-NONE-ADV.ACC-Makerepayment1.xlsx|Acc_Disbursement|Acc_RepaymentDisbursement|Acc_Repayment|Acc_Periodic|


@scenario25-3524-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-PREPAY-PERIODIC
	  Scenario: 3524-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-PREPAY-PERIODIC  

      Given I setup the product loan "Setup"
					| Productloannavigation.xlsx |
 	  Then I entered the values into product loan from "ProductLoanInput" Sheet
					|3524-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-PREPAY-PERIODIC-Loanproduct.xlsx|
      Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			| 3524-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-PREPAY-PERIODIC-Newcreateloan.xlsx|
	  Then I make repayment and verified the following tabs
       			|3524-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-PREPAY-PERIODIC-Makerepayment1.xlsx|Input|
	  Then I "Make Pre Payment" and verified the following tabs
	  			|3524-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-PREPAY-PERIODIC-Newcreateloan.xlsx|Prepay Loan|Summary|Repayment Schedule|Transactions|
	  
@scenario26-3525-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-PREPAY-PERIODIC
	  Scenario: 3525-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-PREPAY-PERIODIC  

      Given I setup the product loan "Setup"
					| Productloannavigation.xlsx |
 	  Then I entered the values into product loan from "ProductLoanInput" Sheet
					|3525-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-PREPAY-PERIODIC-Loanproduct.xlsx|
      Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			|3525-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-PREPAY-PERIODIC-Newcreateloan1.xlsx|
	  Then I make repayment and verified the following tabs
       			|3525-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-PREPAY-PERIODIC-Makerepayment1.xlsx|Input|
	   And I disburse loan from "NewLoanInput" sheet
      			|3525-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-PREPAY-PERIODIC-Newcreateloan2.xlsx|
	  Then I "Make Pre Payment" and verified the following tabs
	  			|3525-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-PREPAY-PERIODIC-Newcreateloan1.xlsx|Prepay Loan|Summary|Repayment Schedule|Transactions|
  			
@scenario27-3526-RBI-EI-DB-DL-REC-NON-RNI-CTRFD-DL-MD-TR-1-PREPAY-PERIODIC
	  Scenario: 3526-RBI-EI-DB-DL-REC-NON-RNI-CTRFD-DL-MD-TR-1-PREPAY-PERIODIC  

      Given I setup the product loan "Setup"
					| Productloannavigation.xlsx |
 	  Then I entered the values into product loan from "ProductLoanInput" Sheet
					|3526-RBI-EI-DB-DL-REC-NON-RNI-CTRFD-DL-MD-TR-1-PREPAY-PERIODIC-Loanproduct.xlsx|
      Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			|3526-RBI-EI-DB-DL-REC-NON-RNI-CTRFD-DL-MD-TR-1-PREPAY-PERIODIC-Newcreateloan.xlsx|
	  Then I "Make Pre Payment" and verified the following tabs
	  			|3526-RBI-EI-DB-DL-REC-NON-RNI-CTRFD-DL-MD-TR-1-PREPAY-PERIODIC-Newcreateloan.xlsx|Prepay Loan|Summary|Repayment Schedule|Transactions|
	  	
@scenario28-3527-RBI-EI-DB-SAR-REC-NON-RNI-CTRFD-SAR-MD-TR-1-PREPAY-PERIODIC
	  Scenario: 3527-RBI-EI-DB-SAR-REC-NON-RNI-CTRFD-SAR-MD-TR-1-PREPAY-PERIODIC  

      Given I setup the product loan "Setup"
					| Productloannavigation.xlsx |
 	  Then I entered the values into product loan from "ProductLoanInput" Sheet
					|3527-RBI-EI-DB-SAR-REC-NON-RNI-CTRFD-SAR-MD-TR-1-PREPAY-PERIODIC-Loanproduct.xlsx|
      Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			|3527-RBI-EI-DB-SAR-REC-NON-RNI-CTRFD-SAR-MD-TR-1-PREPAY-PERIODIC-Newcreateloan.xlsx|
	  Then I "Make Pre Payment" and verified the following tabs
	  			|3527-RBI-EI-DB-SAR-REC-NON-RNI-CTRFD-SAR-MD-TR-1-PREPAY-PERIODIC-Newcreateloan.xlsx|Prepay Loan|Summary|Repayment Schedule|Transactions|
	  			
@scenario29-3528-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-PREPAY-PERIODIC
	  Scenario: 3528-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-PREPAY-PERIODIC  

      Given I setup the product loan "Setup"
					| Productloannavigation.xlsx |
 	  Then I entered the values into product loan from "ProductLoanInput" Sheet
					|3528-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-PREPAY-PERIODIC-Loanproduct.xlsx|
      Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			|3528-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-PREPAY-PERIODIC-Newcreateloan.xlsx|
	  Then I "Make Pre Payment" and verified the following tabs
	  			|3528-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-PREPAY-PERIODIC-Newcreateloan.xlsx|Prepay Loan|Summary|Repayment Schedule|Transactions|

@scenario30-3529-RBI-EI-DB-SAR-REC-NON-RNI-CTRFD-SAR-MD-TR-1-PREPAY-PERIODIC
	  Scenario: 3529-RBI-EI-DB-SAR-REC-NON-RNI-CTRFD-SAR-MD-TR-1-PREPAY-PERIODIC  

      Given I setup the product loan "Setup"
					| Productloannavigation.xlsx |
 	  Then I entered the values into product loan from "ProductLoanInput" Sheet
					|3529-RBI-EI-DB-SAR-REC-NON-RNI-CTRFD-SAR-MD-TR-1-PREPAY-PERIODIC-Loanproduct.xlsx|
      Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			|3529-RBI-EI-DB-SAR-REC-NON-RNI-CTRFD-SAR-MD-TR-1-PREPAY-PERIODIC-Newcreateloan.xlsx|
	  Then I "Make Pre Payment" and verified the following tabs
	  			|3529-RBI-EI-DB-SAR-REC-NON-RNI-CTRFD-SAR-MD-TR-1-PREPAY-PERIODIC-Newcreateloan.xlsx|Prepay Loan|Summary|Repayment Schedule|Transactions|
	  			
@scenario31-3530-RBI-EI-DB-SAR-REC-NON-RNI-CTPD-SAR-MD-TR-1-INSTALLMENT-FEE-FLAT-PREPAY-PERIODIC
	  Scenario: 3530-RBI-EI-DB-SAR-REC-NON-RNI-CTPD-SAR-MD-TR-1-INSTALLMENT-FEE-FLAT-PREPAY-PERIODIC  

      Given I setup the product loan "Setup"
					| Productloannavigation.xlsx |
 	  Then I entered the values into product loan from "ProductLoanInput" Sheet
					|3530-RBI-EI-DB-SAR-REC-NON-RNI-CTPD-SAR-MD-TR-1-INSTALLMENT-FEE-FLAT-PREPAY-PERIODIC-Loanproduct.xlsx|
      Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			|3530-RBI-EI-DB-SAR-REC-NON-RNI-CTPD-SAR-MD-TR-1-INSTALLMENT-FEE-FLAT-PREPAY-PERIODIC-Newcreateloan.xlsx|
	  Then I navigate to scheduler job & execute "Periodic Accrual Transactions"
	  Then I "Make Pre Payment" and verified the following tabs
	  			|3530-RBI-EI-DB-SAR-REC-NON-RNI-CTPD-SAR-MD-TR-1-INSTALLMENT-FEE-FLAT-PREPAY-PERIODIC-Newcreateloan.xlsx|Prepay Loan|Summary|Repayment Schedule|Transactions|
	  
@scenario32-3531-RBI-EI-DB-SAR-REC-NON-RNI-CTRFD-SAR-MD-TR-1-SP-FLAT-PREPAY-PERIODIC
	  Scenario: 3531-RBI-EI-DB-SAR-REC-NON-RNI-CTRFD-SAR-MD-TR-1-SP-FLAT-PREPAY-PERIODIC  

      Given I setup the product loan "Setup"
					| Productloannavigation.xlsx |
 	  Then I entered the values into product loan from "ProductLoanInput" Sheet
					|3531-RBI-EI-DB-SAR-REC-NON-RNI-CTRFD-SAR-MD-TR-1-SP-FLAT-PREPAY-PERIODIC-Loanproduct.xlsx|
      Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			|3531-RBI-EI-DB-SAR-REC-NON-RNI-CTRFD-SAR-MD-TR-1-SP-FLAT-PREPAY-PERIODIC-Newcreateloan.xlsx|
	  Then I navigate to scheduler job & execute "Periodic Accrual Transactions"
	  Then I "Make Pre Payment" and verified the following tabs
	  			|3531-RBI-EI-DB-SAR-REC-NON-RNI-CTRFD-SAR-MD-TR-1-SP-FLAT-PREPAY-PERIODIC-Newcreateloan.xlsx|Prepay Loan|Summary|Repayment Schedule|Transactions|

@scenario33-3532-RBI-EI-DB-SAR-REC-NON-RNI-CTRFD-SAR-MD-TR-1-SP-FLAT-WaiveCharge-PREPAY-PERIODIC
	  Scenario: 3532-RBI-EI-DB-SAR-REC-NON-RNI-CTRFD-SAR-MD-TR-1-SP-FLAT-WaiveCharge-PREPAY-PERIODIC
	
	Given I setup the product loan "Setup"
		| Productloannavigation.xlsx |
	Then I entered the values into product loan from "ProductLoanInput" Sheet
		|3532-RBI-EI-DB-SAR-REC-NON-RNI-CTRFD-SAR-MD-TR-1-SP-FLAT-WaiveCharge-PREPAY-PERIODIC-Loanproduct.xlsx|
	  Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			| 3532-RBI-EI-DB-SAR-REC-NON-RNI-CTRFD-SAR-MD-TR-1-SP-FLAT-WaiveCharge-PREPAY-PERIODIC-Newcreateloan.xlsx|
	  Then I "WAIVEPENALTY" and verified the following tabs
	  			| 3532-RBI-EI-DB-SAR-REC-NON-RNI-CTRFD-SAR-MD-TR-1-SP-FLAT-WaiveCharge-PREPAY-PERIODIC-Newcreateloan.xlsx|Charges|
	  Then I "Make Pre Payment" and verified the following tabs
       			|3532-RBI-EI-DB-SAR-REC-NON-RNI-CTRFD-SAR-MD-TR-1-SP-FLAT-WaiveCharge-PREPAY-PERIODIC-Newcreateloan.xlsx|Prepay Loan|Summary|Repayment Schedule|Transactions|

@scenario34-3533-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-PREPAY-CASH-PREPAY
	  Scenario: 3533-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-PREPAY-CASH-PREPAY

	Given I setup the product loan "Setup"
		| Productloannavigation.xlsx |
	Then I entered the values into product loan from "ProductLoanInput" Sheet
		|3533-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-PREPAY-CASH-PREPAY-Loanproduct.xlsx|
	Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			| 3533-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-PREPAY-CASH-PREPAY-Newcreateloan1.xlsx|
	  And I disburse loan from "NewLoanInput" sheet
      			| 3533-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-PREPAY-CASH-PREPAY-Newcreateloan2.xlsx|
      Then I "Make Pre Payment" and verified the following tabs
       			|3533-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-PREPAY-CASH-PREPAY-Newcreateloan1.xlsx|Prepay Loan|Summary|Repayment Schedule|Transactions|
       			
@scenario35-3534-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-WaiveInterest-PREPAY-CASH
	  Scenario: 3534-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-WaiveInterest-PREPAY-CASH

	Given I setup the product loan "Setup"
		| Productloannavigation.xlsx |
	Then I entered the values into product loan from "ProductLoanInput" Sheet
		|3534-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-WaiveInterest-PREPAY-CASH-Loanproduct.xlsx|
	Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			| 3534-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-WaiveInterest-PREPAY-CASH-Newcreateloan.xlsx|
	  Then I "WaiveInterest" and verified the following tabs
	  			|3534-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-WaiveInterest-PREPAY-CASH-Newcreateloan.xlsx|Modify Transaction|
	  Then I "Make Pre Payment" and verified the following tabs
       			|3534-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-WaiveInterest-PREPAY-CASH-Newcreateloan.xlsx|Prepay Loan|Summary|Repayment Schedule|Transactions|
       		  			
@scenario36-3535-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-SP-FLAT-PENALTY-WaivePenalty-PREPAY-CASH
	  Scenario: 3535-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-SP-FLAT-PENALTY-WaivePenalty-PREPAY-CASH
	
	Given I setup the product loan "Setup"
		| Productloannavigation.xlsx |
	Then I entered the values into product loan from "ProductLoanInput" Sheet
		|3535-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-SP-FLAT-PENALTY-WaivePenalty-PREPAY-CASH-Loanproduct.xlsx|
	  Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			| 3535-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-SP-FLAT-PENALTY-WaivePenalty-PREPAY-CASH-Newcreateloan.xlsx|
	  Then I "WAIVEPENALTY" and verified the following tabs
	  			| 3535-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-SP-FLAT-PENALTY-WaivePenalty-PREPAY-CASH-Newcreateloan.xlsx|Charges|
	  Then I "Make Pre Payment" and verified the following tabs
       			|3535-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-SP-FLAT-PENALTY-WaivePenalty-PREPAY-CASH-Newcreateloan.xlsx|Prepay Loan|Summary|Repayment Schedule|Transactions|
	 
@scenario37-3535-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-NONE-AllRepayment
	  Scenario: 3535-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-NONE-AllRepayment  

      Given I setup the product loan "Setup"
					| Productloannavigation.xlsx |
 	  Then I entered the values into product loan from "ProductLoanInput" Sheet
					|3535-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-NONE-AllRepayment-Loanproduct.xlsx|
      Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|3535-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-NONE-AllRepayment-Createclient.xlsx|
	  Then I should see client created successfully from "Output" sheet
	  			|3535-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-NONE-AllRepayment-Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			|3535-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-NONE-AllRepayment-Newcreateloan.xlsx|
	  Then I make repayment and verified the following tabs
       			|3535-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-NONE-AllRepayment-Makerepayment1.xlsx|Input|
       			|3535-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-NONE-AllRepayment-Makerepayment2.xlsx|Input|
       			|3535-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-NONE-AllRepayment-Makerepayment3.xlsx|Input|
       			|3535-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-NONE-AllRepayment-Makerepayment4.xlsx|Input|
       			|3535-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-NONE-AllRepayment-Makerepayment5.xlsx|Input|
	  Then I make repayment and verified the following tabs       			
       			|3535-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-NONE-AllRepayment-Makerepayment6.xlsx|Input|Summary|Repayment Schedule|Transactions|

@scenario38-3536-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-NONE-AllRepayment
	  Scenario: 3536-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-NONE-AllRepayment  

      Given I setup the product loan "Setup"
					| Productloannavigation.xlsx |
 	  Then I entered the values into product loan from "ProductLoanInput" Sheet
					|3536-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-NONE-AllRepayment-Loanproduct.xlsx|
      Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|3535-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-NONE-AllRepayment-Createclient.xlsx|
	  Then I should see client created successfully from "Output" sheet
	  			|3535-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-NONE-AllRepayment-Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			|3536-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-NONE-AllRepayment-Newcreateloan1.xlsx|
	  Then I make repayment and verified the following tabs
       			|3536-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-NONE-AllRepayment-Makerepayment1.xlsx|Input|
      And I disburse loan from "NewLoanInput" sheet
				|3536-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-NONE-AllRepayment-Newcreateloan2.xlsx|
      Then I make repayment and verified the following tabs 			
       			|3536-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-NONE-AllRepayment-Makerepayment2.xlsx|Input|
       			|3536-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-NONE-AllRepayment-Makerepayment3.xlsx|Input|
       			|3536-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-NONE-AllRepayment-Makerepayment4.xlsx|Input|
       			|3536-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-NONE-AllRepayment-Makerepayment5.xlsx|Input|
	  Then I make repayment and verified the following tabs       			
       			|3536-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-NONE-AllRepayment-Makerepayment6.xlsx|Input|Summary|Repayment Schedule|Transactions|
       			
@scenario39-2650-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-REPAY-AccCL1stFEB-REPAY1stMAR
	  Scenario: 2650-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-REPAY-AccCL1stFEB-REPAY1stMAR  
Given I setup the product loan "Setup"
	 | Productloannavigation.xlsx |
Then I entered the values into product loan from "ProductLoanInput" Sheet
	 |2650-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-ACCOUNTCLOSER-PERIODIC-Loanproduct.xlsx|
 Given I Delete Account Closures Entry from "DeleteAccountClosures" sheet
 	 |2650-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-REPAY-AccCL1stFEB-REPAY1stMAR-Newcreateloan1.xlsx|
 Given I setup the clients 
 Then I entered the values into client from "Input" sheet
	 |Createclient.xlsx|
 Then I should see client created successfully from "Output" sheet
	 |Createclient.xlsx|
 When I set up the new create loan from "NewLoanInput" sheet
	 |2650-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-REPAY-AccCL1stFEB-REPAY1stMAR-Newcreateloan1.xlsx|
 Then I make repayment and verified the following tabs
    |2650-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-REPAY-AccCL1stFEB-REPAY1stMAR-Newcreateloan1.xlsx|Repay1|
 And I create Account Closures Entry from "CreateAccountClosures" sheet
 	 |2650-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-REPAY-AccCL1stFEB-REPAY1stMAR-Newcreateloan1.xlsx|
 Then I make repayment and verified the following tabs
    |2650-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-REPAY-AccCL1stFEB-REPAY1stMAR-Newcreateloan1.xlsx|Repay2|
 Then I Execute Periodic Accrual Accounting
     |2650-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-REPAY-AccCL1stFEB-REPAY1stMAR-Newcreateloan1.xlsx|RunPeriodicAccrual|
  	 
@scenario40-2651-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-LESS-REPAY-AccCL1stFEB-REPAY1stFEB
	Scenario: 2651-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-LESS-REPAY-AccCL1stFEB-REPAY1stFEB  
 Given I Delete Account Closures Entry from "DeleteAccountClosures" sheet
 	 |2651-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-LESS-REPAY-AccCL1stFEB-REPAY1stFEB-Newcreateloan1.xlsx|
 Given I setup the clients 
 Then I entered the values into client from "Input" sheet
	 |Createclient.xlsx|
 Then I should see client created successfully from "Output" sheet
	 |Createclient.xlsx|
 When I set up the new create loan from "NewLoanInput" sheet
	 |2651-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-LESS-REPAY-AccCL1stFEB-REPAY1stFEB-Newcreateloan1.xlsx|
 Then I make repayment and verified the following tabs
    |2651-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-LESS-REPAY-AccCL1stFEB-REPAY1stFEB-Newcreateloan1.xlsx|Repay1|
 And I create Account Closures Entry from "CreateAccountClosures" sheet
 	 |2651-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-LESS-REPAY-AccCL1stFEB-REPAY1stFEB-Newcreateloan1.xlsx|
 Then I make repayment and verified the following tabs
    |2651-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-LESS-REPAY-AccCL1stFEB-REPAY1stFEB-Newcreateloan1.xlsx|Repay2|
 Then i validate and Verify from "Output" sheet
	|2651-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-LESS-REPAY-AccCL1stFEB-REPAY1stFEB-Newcreateloan1.xlsx|
  	 
@scenario41-2652-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-LESS-REPAY-AccCL1stFEB-REPAY2ndFEB
	Scenario: 2652-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-LESS-REPAY-AccCL1stFEB-REPAY2ndFEB  
 Given I Delete Account Closures Entry from "DeleteAccountClosures" sheet
 	 |2652-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-LESS-REPAY-AccCL1stFEB-REPAY2ndFEB-Newcreateloan1.xlsx|
 Given I setup the clients 
 Then I entered the values into client from "Input" sheet
	 |Createclient.xlsx|
 Then I should see client created successfully from "Output" sheet
	 |Createclient.xlsx|
 When I set up the new create loan from "NewLoanInput" sheet
	 |2652-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-LESS-REPAY-AccCL1stFEB-REPAY2ndFEB-Newcreateloan1.xlsx|
 Then I make repayment and verified the following tabs
    |2652-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-LESS-REPAY-AccCL1stFEB-REPAY2ndFEB-Newcreateloan1.xlsx|Repay1|
 And I create Account Closures Entry from "CreateAccountClosures" sheet
 	 |2652-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-LESS-REPAY-AccCL1stFEB-REPAY2ndFEB-Newcreateloan1.xlsx|
 Then I make repayment and verified the following tabs
    |2652-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-LESS-REPAY-AccCL1stFEB-REPAY2ndFEB-Newcreateloan1.xlsx|Repay2|Summary|
  	 
@scenario42-2653-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-MORE-REPAY-AccCL1stMAR-REPAY1stMAR
	Scenario: 2653-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-MORE-REPAY-AccCL1stMAR-REPAY1stMAR  
 Given I Delete Account Closures Entry from "DeleteAccountClosures" sheet
 	 |2653-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-MORE-REPAY-AccCL1stMAR-REPAY1stMAR-Newcreateloan1.xlsx|
 Given I setup the clients 
 Then I entered the values into client from "Input" sheet
	 |Createclient.xlsx|
 Then I should see client created successfully from "Output" sheet
	 |Createclient.xlsx|
 When I set up the new create loan from "NewLoanInput" sheet
	 |2653-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-MORE-REPAY-AccCL1stMAR-REPAY1stMAR-Newcreateloan1.xlsx|
 Then I make repayment and verified the following tabs
    |2653-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-MORE-REPAY-AccCL1stMAR-REPAY1stMAR-Newcreateloan1.xlsx|Repay1|
 And I create Account Closures Entry from "CreateAccountClosures" sheet
 	 |2653-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-MORE-REPAY-AccCL1stMAR-REPAY1stMAR-Newcreateloan1.xlsx|
 Then I make repayment and verified the following tabs
    |2653-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-MORE-REPAY-AccCL1stMAR-REPAY1stMAR-Newcreateloan1.xlsx|Repay2|
 Then i validate and Verify from "Output" sheet
	|2653-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-MORE-REPAY-AccCL1stMAR-REPAY1stMAR-Newcreateloan1.xlsx|
  	  	  	
@scenario43-2654-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-Early-REPAY-AccCL1stFEB-REPAY2ndFEB
	Scenario: 2654-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-Early-REPAY-AccCL1stFEB-REPAY2ndFEB  
 Given I Delete Account Closures Entry from "DeleteAccountClosures" sheet
 	|2654-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-Early-REPAY-AccCL1stFEB-REPAY2ndFEB-Newcreateloan1.xlsx| 
 Given I setup the clients 
 Then I entered the values into client from "Input" sheet
	 |Createclient.xlsx|
 Then I should see client created successfully from "Output" sheet
	 |Createclient.xlsx|
 When I set up the new create loan from "NewLoanInput" sheet
	|2654-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-Early-REPAY-AccCL1stFEB-REPAY2ndFEB-Newcreateloan1.xlsx|
 Then I make repayment and verified the following tabs
    |2654-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-Early-REPAY-AccCL1stFEB-REPAY2ndFEB-Newcreateloan1.xlsx|Repay1|
 And I create Account Closures Entry from "CreateAccountClosures" sheet
 	|2654-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-Early-REPAY-AccCL1stFEB-REPAY2ndFEB-Newcreateloan1.xlsx|
 Then I make repayment and verified the following tabs
    |2654-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-Early-REPAY-AccCL1stFEB-REPAY2ndFEB-Newcreateloan1.xlsx|Repay2|Summary|
  	
@scenario44-2655-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-REPAY-AccCL1stFEB-EDIT-TRANSACTION-AMT
	Scenario: 2655-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-REPAY-AccCL1stFEB-EDIT-TRANSACTION-AMT  
 Given I Delete Account Closures Entry from "DeleteAccountClosures" sheet
 	|2655-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-REPAY-AccCL1stFEB-EDIT-TRANSACTION-AMT-Newcreateloan1.xlsx| 	 
 Given I setup the clients 
 Then I entered the values into client from "Input" sheet
	 |Createclient.xlsx|
 Then I should see client created successfully from "Output" sheet
	 |Createclient.xlsx|
 When I set up the new create loan from "NewLoanInput" sheet
	|2655-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-REPAY-AccCL1stFEB-EDIT-TRANSACTION-AMT-Newcreateloan1.xlsx|
 Then I make repayment and verified the following tabs
    |2655-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-REPAY-AccCL1stFEB-EDIT-TRANSACTION-AMT-Newcreateloan1.xlsx|Repay1|
 And I create Account Closures Entry from "CreateAccountClosures" sheet
 	|2655-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-REPAY-AccCL1stFEB-EDIT-TRANSACTION-AMT-Newcreateloan1.xlsx|
 Then I Modify Transaction 
    |2655-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-REPAY-AccCL1stFEB-EDIT-TRANSACTION-AMT-Newcreateloan1.xlsx|Edit Transaction|
  	
 @scenario45-2656-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-REPAY-AccCL1stFEB-EDIT-TRANSACTION-DATE
	Scenario: 2656-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-REPAY-AccCL1stFEB-EDIT-TRANSACTION-DATE  
 Given I Delete Account Closures Entry from "DeleteAccountClosures" sheet
 	|2656-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-REPAY-AccCL1stFEB-EDIT-TRANSACTION-DATE-Newcreateloan1.xlsx|	
 Given I setup the clients 
 Then I entered the values into client from "Input" sheet
	 |Createclient.xlsx|
 Then I should see client created successfully from "Output" sheet
	 |Createclient.xlsx|
 When I set up the new create loan from "NewLoanInput" sheet
	|2656-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-REPAY-AccCL1stFEB-EDIT-TRANSACTION-DATE-Newcreateloan1.xlsx|
 Then I make repayment and verified the following tabs
    |2656-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-REPAY-AccCL1stFEB-EDIT-TRANSACTION-DATE-Newcreateloan1.xlsx|Repay1|
 And I create Account Closures Entry from "CreateAccountClosures" sheet
 	|2656-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-REPAY-AccCL1stFEB-EDIT-TRANSACTION-DATE-Newcreateloan1.xlsx|
 Then I Modify Transaction 
    |2656-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-REPAY-AccCL1stFEB-EDIT-TRANSACTION-DATE-Newcreateloan1.xlsx|Edit Transaction|
  
@scenario46-2657-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-REPAY-AccCL1stFEB-EDIT-TRANSACTION-AMT+DATE
	Scenario: 2657-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-REPAY-AccCL1stFEB-EDIT-TRANSACTION-AMT+DATE  
 Given I Delete Account Closures Entry from "DeleteAccountClosures" sheet
 	|2657-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-REPAY-AccCL1stFEB-EDIT-TRANSACTION-AMT+DATE-Newcreateloan1.xlsx|	
 Given I setup the clients 
 Then I entered the values into client from "Input" sheet
	 |Createclient.xlsx|
 Then I should see client created successfully from "Output" sheet
	 |Createclient.xlsx|
 When I set up the new create loan from "NewLoanInput" sheet
	|2657-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-REPAY-AccCL1stFEB-EDIT-TRANSACTION-AMT+DATE-Newcreateloan1.xlsx|
 Then I make repayment and verified the following tabs
    |2657-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-REPAY-AccCL1stFEB-EDIT-TRANSACTION-AMT+DATE-Newcreateloan1.xlsx|Repay1|
 And I create Account Closures Entry from "CreateAccountClosures" sheet
 	|2657-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-REPAY-AccCL1stFEB-EDIT-TRANSACTION-AMT+DATE-Newcreateloan1.xlsx|
 Then I Modify Transaction 
    |2657-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-REPAY-AccCL1stFEB-EDIT-TRANSACTION-AMT+DATE-Newcreateloan1.xlsx|Edit Transaction|
 
@scenario47-2658-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-REPAY-AccCL1stFEB-DELETE-TRANSACTION
	Scenario: 2658-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-REPAY-AccCL1stFEB-DELETE-TRANSACTION  
 Given I Delete Account Closures Entry from "DeleteAccountClosures" sheet
 	|2658-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-REPAY-AccCL1stFEB-DELETE-TRANSACTION-Newcreateloan1.xlsx|	
 Given I setup the clients 
 Then I entered the values into client from "Input" sheet
	 |Createclient.xlsx|
 Then I should see client created successfully from "Output" sheet
	 |Createclient.xlsx|
 When I set up the new create loan from "NewLoanInput" sheet
	|2658-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-REPAY-AccCL1stFEB-DELETE-TRANSACTION-Newcreateloan1.xlsx|
 Then I make repayment and verified the following tabs
    |2658-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-REPAY-AccCL1stFEB-DELETE-TRANSACTION-Newcreateloan1.xlsx|Repay1|
 And I create Account Closures Entry from "CreateAccountClosures" sheet
 	|2658-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-REPAY-AccCL1stFEB-DELETE-TRANSACTION-Newcreateloan1.xlsx|
 Then I Modify Transaction 
    |2658-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-REPAY-AccCL1stFEB-DELETE-TRANSACTION-Newcreateloan1.xlsx|Edit Transaction|
  	
@scenario48-2659-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-AccCL1stFEB-OVERDUE-FEE-FLAT
	Scenario: 2659-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-AccCL1stFEB-OVERDUE-FEE-FLAT  
 Given I setup the product loan "Setup"
	 | Productloannavigation.xlsx |
 Then I entered the values into product loan from "ProductLoanInput" Sheet
	 |2659-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-AccCL1stFEB-OVERDUE-FEE-FLAT-Loanproduct.xlsx|
 Given I Delete Account Closures Entry from "DeleteAccountClosures" sheet
 	|2659-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-AccCL1stFEB-OVERDUE-FEE-FLAT-Newcreateloan1.xlsx|	
 Given I setup the clients 
 Then I entered the values into client from "Input" sheet
	 |Createclient.xlsx|
 Then I should see client created successfully from "Output" sheet
	 |Createclient.xlsx|
 When I set up the new create loan from "NewLoanInput" sheet
	|2659-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-AccCL1stFEB-OVERDUE-FEE-FLAT-Newcreateloan1.xlsx|
 And I create Account Closures Entry from "CreateAccountClosures" sheet
 	|2659-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-AccCL1stFEB-OVERDUE-FEE-FLAT-Newcreateloan1.xlsx|
 Then I navigate to scheduler job & execute "Apply penalty to overdue loans"
 Then I verified the "Summary" details successfully 
	|2659-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-AccCL1stFEB-OVERDUE-FEE-FLAT-Newcreateloan1.xlsx|
  	 	 	
@scenario49-2661-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-AccCL1stFEB-PREPAY-ON-31JAN
	Scenario: 2661-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-AccCL1stFEB-PREPAY-ON-31JAN   
 Given I Delete Account Closures Entry from "DeleteAccountClosures" sheet
 	|2661-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-AccCL1stFEB-PREPAY-ON-31JAN-Newcreateloan1.xlsx|	
 Given I setup the clients 
 Then I entered the values into client from "Input" sheet
	 |Createclient.xlsx|
 Then I should see client created successfully from "Output" sheet
	 |Createclient.xlsx|
 When I set up the new create loan from "NewLoanInput" sheet
	|2661-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-AccCL1stFEB-PREPAY-ON-31JAN-Newcreateloan1.xlsx|
 And I create Account Closures Entry from "CreateAccountClosures" sheet
 	|2661-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-AccCL1stFEB-PREPAY-ON-31JAN-Newcreateloan1.xlsx|
 Then I "Make Pre Payment" and verified the following tabs
	|2661-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-AccCL1stFEB-PREPAY-ON-31JAN-Newcreateloan1.xlsx|Prepay Loan|
  
@scenario50-2662-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-AccCL1stFEB-PREPAY-ON-2ndFEB
	Scenario: 2662-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-AccCL1stFEB-PREPAY-ON-2ndFEB   
 Given I Delete Account Closures Entry from "DeleteAccountClosures" sheet
 	|2662-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-AccCL1stFEB-PREPAY-ON-2ndFEB-Newcreateloan1.xlsx|	
 Given I setup the clients 
 Then I entered the values into client from "Input" sheet
	 |Createclient.xlsx|
 Then I should see client created successfully from "Output" sheet
	 |Createclient.xlsx|
 When I set up the new create loan from "NewLoanInput" sheet
	|2662-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-AccCL1stFEB-PREPAY-ON-2ndFEB-Newcreateloan1.xlsx|
 And I create Account Closures Entry from "CreateAccountClosures" sheet
 	|2662-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-AccCL1stFEB-PREPAY-ON-2ndFEB-Newcreateloan1.xlsx|
 Then I "Make Pre Payment" and verified the following tabs
	|2662-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-AccCL1stFEB-PREPAY-ON-2ndFEB-Newcreateloan1.xlsx|Prepay Loan|
 Then I verified the "Summary" details successfully 
 	|2662-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-AccCL1stFEB-PREPAY-ON-2ndFEB-Newcreateloan1.xlsx|
  	
@scenario51-2663-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-REPAY-AccCL1stFEB-WAIVEINTEREST-ON-1stFEB
	Scenario: 2663-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-REPAY-AccCL1stFEB-WAIVEINTEREST-ON-1stFEB  
 Given I Delete Account Closures Entry from "DeleteAccountClosures" sheet
 	|2663-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-REPAY-AccCL1stFEB-WAIVEINTEREST-ON-1stFEB-Newcreateloan1.xlsx|	
 Given I setup the clients 
 Then I entered the values into client from "Input" sheet
	 |Createclient.xlsx|
 Then I should see client created successfully from "Output" sheet
	 |Createclient.xlsx|
 When I set up the new create loan from "NewLoanInput" sheet
	|2663-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-REPAY-AccCL1stFEB-WAIVEINTEREST-ON-1stFEB-Newcreateloan1.xlsx|
 Then I make repayment and verified the following tabs
    |2663-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-REPAY-AccCL1stFEB-WAIVEINTEREST-ON-1stFEB-Newcreateloan1.xlsx|Repay1|
 And I create Account Closures Entry from "CreateAccountClosures" sheet
 	|2663-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-REPAY-AccCL1stFEB-WAIVEINTEREST-ON-1stFEB-Newcreateloan1.xlsx|
 Then I "WaiveInterest" and verified the following tabs
	|2663-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-REPAY-AccCL1stFEB-WAIVEINTEREST-ON-1stFEB-Newcreateloan1.xlsx|Modify Transaction|
  	
@scenario52-2664-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-REPAY-AccCL1stFEB-WAIVEINTEREST-ON-2ndFEB
	Scenario: 2664-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-REPAY-AccCL1stFEB-WAIVEINTEREST-ON-2ndFEB  
 Given I Delete Account Closures Entry from "DeleteAccountClosures" sheet
 	|2664-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-REPAY-AccCL1stFEB-WAIVEINTEREST-ON-2ndFEB-Newcreateloan1.xlsx|	
 Given I setup the clients 
 Then I entered the values into client from "Input" sheet
	 |Createclient.xlsx|
 Then I should see client created successfully from "Output" sheet
	 |Createclient.xlsx|
 When I set up the new create loan from "NewLoanInput" sheet
	|2664-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-REPAY-AccCL1stFEB-WAIVEINTEREST-ON-2ndFEB-Newcreateloan1.xlsx|
 Then I make repayment and verified the following tabs
    |2664-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-REPAY-AccCL1stFEB-WAIVEINTEREST-ON-2ndFEB-Newcreateloan1.xlsx|Repay1|
 And I create Account Closures Entry from "CreateAccountClosures" sheet
 	|2664-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-REPAY-AccCL1stFEB-WAIVEINTEREST-ON-2ndFEB-Newcreateloan1.xlsx|
 Then I "WaiveInterest" and verified the following tabs
	|2664-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-REPAY-AccCL1stFEB-WAIVEINTEREST-ON-2ndFEB-Newcreateloan1.xlsx|Modify Transaction|Summary|
 
@scenario53-2665-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-SP-FLAT-ON-15JAN-AccCL1stFEB-WAIVECHARGE
	Scenario: 2665-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-SP-FLAT-ON-15JAN-AccCL1stFEB-WAIVECHARGE  
 Given I Delete Account Closures Entry from "DeleteAccountClosures" sheet
 	|2665-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-SP-FLAT-ON-15JAN-AccCL1stFEB-WAIVECHARGE-Newcreateloan1.xlsx| 	
 Given I setup the clients 
 Then I entered the values into client from "Input" sheet
	 |Createclient.xlsx|
 Then I should see client created successfully from "Output" sheet
	 |Createclient.xlsx|
 When I set up the new create loan from "NewLoanInput" sheet
	|2665-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-SP-FLAT-ON-15JAN-AccCL1stFEB-WAIVECHARGE-Newcreateloan1.xlsx|
 And I create Account Closures Entry from "CreateAccountClosures" sheet
 	|2665-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-SP-FLAT-ON-15JAN-AccCL1stFEB-WAIVECHARGE-Newcreateloan1.xlsx|
 Then I "Wave Charge from Charges tab" and verified the following tabs
	|2665-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-SP-FLAT-ON-15JAN-AccCL1stFEB-WAIVECHARGE-Newcreateloan1.xlsx|Charges|

@scenario54-2666-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-INST-FEE-FLAT-AccCL1stFEB-WAIVECHARGE-ON-1stINST
	Scenario: 2666-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-INST-FEE-FLAT-AccCL1stFEB-WAIVECHARGE-ON-1stINST  
 Given I Delete Account Closures Entry from "DeleteAccountClosures" sheet
 	|2666-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-INST-FEE-FLAT-AccCL1stFEB-WAIVECHARGE-ON-1stINST-Newcreateloan1.xlsx| 	
 Given I setup the clients 
 Then I entered the values into client from "Input" sheet
	 |Createclient.xlsx|
 Then I should see client created successfully from "Output" sheet
	 |Createclient.xlsx|
 When I set up the new create loan from "NewLoanInput" sheet
	|2666-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-INST-FEE-FLAT-AccCL1stFEB-WAIVECHARGE-ON-1stINST-Newcreateloan1.xlsx|
 And I create Account Closures Entry from "CreateAccountClosures" sheet
 	|2666-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-INST-FEE-FLAT-AccCL1stFEB-WAIVECHARGE-ON-1stINST-Newcreateloan1.xlsx|
 Then I "Wave Charge from Charges tab" and verified the following tabs
	|2666-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-INST-FEE-FLAT-AccCL1stFEB-WAIVECHARGE-ON-1stINST-Newcreateloan1.xlsx|Charges|

@scenario55-2667-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-INST-FEE-FLAT-AccCL1stFEB-WAIVECHARGE-ON-2stINST
	Scenario: 2667-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-INST-FEE-FLAT-AccCL1stFEB-WAIVECHARGE-ON-2stINST  
 Given I Delete Account Closures Entry from "DeleteAccountClosures" sheet
 	|2667-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-INST-FEE-FLAT-AccCL1stFEB-WAIVECHARGE-ON-2stINST-Newcreateloan1.xlsx| 	
 Given I setup the clients 
 Then I entered the values into client from "Input" sheet
	 |Createclient.xlsx|
 Then I should see client created successfully from "Output" sheet
	 |Createclient.xlsx|
 When I set up the new create loan from "NewLoanInput" sheet
	|2667-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-INST-FEE-FLAT-AccCL1stFEB-WAIVECHARGE-ON-2stINST-Newcreateloan1.xlsx|
 And I create Account Closures Entry from "CreateAccountClosures" sheet
 	|2667-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-INST-FEE-FLAT-AccCL1stFEB-WAIVECHARGE-ON-2stINST-Newcreateloan1.xlsx|
 Then I "Wave Charge from Charges tab" and verified the following tabs
	|2667-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-INST-FEE-FLAT-AccCL1stFEB-WAIVECHARGE-ON-2stINST-Newcreateloan1.xlsx|Charges|

@scenario56-2668-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-REPAY-AccCL1stFEB-WRITEOFF-ON-1stFEB
	Scenario: 2668-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-REPAY-AccCL1stFEB-WRITEOFF-ON-1stFEB  
 Given I Delete Account Closures Entry from "DeleteAccountClosures" sheet
 	|2668-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-REPAY-AccCL1stFEB-WRITEOFF-ON-1stFEB-Newcreateloan1.xlsx| 	
 Given I setup the clients 
 Then I entered the values into client from "Input" sheet
	 |Createclient.xlsx|
 Then I should see client created successfully from "Output" sheet
	 |Createclient.xlsx|
 When I set up the new create loan from "NewLoanInput" sheet
	|2668-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-REPAY-AccCL1stFEB-WRITEOFF-ON-1stFEB-Newcreateloan1.xlsx|
 And I create Account Closures Entry from "CreateAccountClosures" sheet
 	|2668-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-REPAY-AccCL1stFEB-WRITEOFF-ON-1stFEB-Newcreateloan1.xlsx|
 Then I "WRITEOFF" and verified the following tabs
	|2668-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-REPAY-AccCL1stFEB-WRITEOFF-ON-1stFEB-Newcreateloan1.xlsx|Modify Transaction|

@scenario57-2669-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-REPAY-AccCL1stFEB-WRITEOFF-ON-2ndFEB
	Scenario: 2669-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-REPAY-AccCL1stFEB-WRITEOFF-ON-2ndFEB  
 Given I Delete Account Closures Entry from "DeleteAccountClosures" sheet
 	|2669-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-REPAY-AccCL1stFEB-WRITEOFF-ON-2ndFEB-Newcreateloan1.xlsx| 	
 Given I setup the clients 
 Then I entered the values into client from "Input" sheet
	 |Createclient.xlsx|
 Then I should see client created successfully from "Output" sheet
	 |Createclient.xlsx|
 When I set up the new create loan from "NewLoanInput" sheet
	|2669-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-REPAY-AccCL1stFEB-WRITEOFF-ON-2ndFEB-Newcreateloan1.xlsx|
 And I create Account Closures Entry from "CreateAccountClosures" sheet
 	|2669-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-REPAY-AccCL1stFEB-WRITEOFF-ON-2ndFEB-Newcreateloan1.xlsx|
 Then I "WRITEOFF" and verified the following tabs
	|2669-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-REPAY-AccCL1stFEB-WRITEOFF-ON-2ndFEB-Newcreateloan1.xlsx|Modify Transaction|Summary|
	
@scenario58-2670-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-EARLY-LESS-REPAY-AccCL1stFEB-REPAY-ON-15JAN-MORO-PRIN-1
	  Scenario: 2670-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-EARLY-LESS-REPAY-AccCL1stFEB-REPAY-ON-15JAN-MORO-PRIN-1  
 Given I Delete Account Closures Entry from "DeleteAccountClosures" sheet
 	 |2670-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-EARLY-LESS-REPAY-AccCL1stFEB-REPAY-ON-15JAN-MORO-PRIN-1-Newcreateloan1.xlsx|
 Given I setup the clients 
 Then I entered the values into client from "Input" sheet
	 |Createclient.xlsx|
 Then I should see client created successfully from "Output" sheet
	 |Createclient.xlsx|
 When I set up the new create loan from "NewLoanInput" sheet
	 |2670-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-EARLY-LESS-REPAY-AccCL1stFEB-REPAY-ON-15JAN-MORO-PRIN-1-Newcreateloan1.xlsx|
 Then I make repayment and verified the following tabs
    |2670-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-EARLY-LESS-REPAY-AccCL1stFEB-REPAY-ON-15JAN-MORO-PRIN-1-Newcreateloan1.xlsx|Repay1|
 And I create Account Closures Entry from "CreateAccountClosures" sheet
 	 |2670-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-EARLY-LESS-REPAY-AccCL1stFEB-REPAY-ON-15JAN-MORO-PRIN-1-Newcreateloan1.xlsx|
 Then I make repayment and verified the following tabs
    |2670-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-EARLY-LESS-REPAY-AccCL1stFEB-REPAY-ON-15JAN-MORO-PRIN-1-Newcreateloan1.xlsx|Repay2|
 Then i validate and Verify from "Output" sheet
	|2670-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-EARLY-LESS-REPAY-AccCL1stFEB-REPAY-ON-15JAN-MORO-PRIN-1-Newcreateloan1.xlsx|
#Then I Execute Periodic Accrual Accounting
#     |2670-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-EARLY-LESS-REPAY-AccCL1stFEB-REPAY-ON-15JAN-MORO-PRIN-1-Newcreateloan1.xlsx|RunPeriodicAccrual|

@scenario59-2671-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-EARLY-LESS-REPAY-AccCL1stFEB-REPAY-ON-15JAN-MORO-INT-1
	  Scenario: 2671-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-EARLY-LESS-REPAY-AccCL1stFEB-REPAY-ON-15JAN-MORO-INT-1  
 Given I Delete Account Closures Entry from "DeleteAccountClosures" sheet
 	 |2671-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-EARLY-LESS-REPAY-AccCL1stFEB-REPAY-ON-15JAN-MORO-INT-1-Newcreateloan1.xlsx|
 Given I setup the clients 
 Then I entered the values into client from "Input" sheet
	 |Createclient.xlsx|
 Then I should see client created successfully from "Output" sheet
	 |Createclient.xlsx|
 When I set up the new create loan from "NewLoanInput" sheet
	 |2671-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-EARLY-LESS-REPAY-AccCL1stFEB-REPAY-ON-15JAN-MORO-INT-1-Newcreateloan1.xlsx|
 Then I make repayment and verified the following tabs
    |2671-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-EARLY-LESS-REPAY-AccCL1stFEB-REPAY-ON-15JAN-MORO-INT-1-Newcreateloan1.xlsx|Repay1|
 And I create Account Closures Entry from "CreateAccountClosures" sheet
 	 |2671-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-EARLY-LESS-REPAY-AccCL1stFEB-REPAY-ON-15JAN-MORO-INT-1-Newcreateloan1.xlsx|
 Then I make repayment and verified the following tabs
    |2671-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-EARLY-LESS-REPAY-AccCL1stFEB-REPAY-ON-15JAN-MORO-INT-1-Newcreateloan1.xlsx|Repay2|
 Then i validate and Verify from "Output" sheet
	|2671-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-EARLY-LESS-REPAY-AccCL1stFEB-REPAY-ON-15JAN-MORO-INT-1-Newcreateloan1.xlsx|

@scenario60-2672-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-EARLY-LESS-REPAY-AccCL1stFEB-REPAY-ON-15JAN-MORO-PRIN+INT-1
	  Scenario: 2672-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-EARLY-LESS-REPAY-AccCL1stFEB-REPAY-ON-15JAN-MORO-PRIN+INT-1  
 Given I Delete Account Closures Entry from "DeleteAccountClosures" sheet
 	 |2672-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-EARLY-LESS-REPAY-AccCL1stFEB-REPAY-ON-15JAN-MORO-PRIN+INT-1-Newcreateloan1.xlsx|
 Given I setup the clients 
 Then I entered the values into client from "Input" sheet
	 |Createclient.xlsx|
 Then I should see client created successfully from "Output" sheet
	 |Createclient.xlsx|
 When I set up the new create loan from "NewLoanInput" sheet
	 |2672-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-EARLY-LESS-REPAY-AccCL1stFEB-REPAY-ON-15JAN-MORO-PRIN+INT-1-Newcreateloan1.xlsx|
 Then I make repayment and verified the following tabs
    |2672-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-EARLY-LESS-REPAY-AccCL1stFEB-REPAY-ON-15JAN-MORO-PRIN+INT-1-Newcreateloan1.xlsx|Repay1|
 And I create Account Closures Entry from "CreateAccountClosures" sheet
 	 |2672-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-EARLY-LESS-REPAY-AccCL1stFEB-REPAY-ON-15JAN-MORO-PRIN+INT-1-Newcreateloan1.xlsx|
 Then I make repayment and verified the following tabs
    |2672-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-EARLY-LESS-REPAY-AccCL1stFEB-REPAY-ON-15JAN-MORO-PRIN+INT-1-Newcreateloan1.xlsx|Repay2|
 Then i validate and Verify from "Output" sheet
	|2672-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-EARLY-LESS-REPAY-AccCL1stFEB-REPAY-ON-15JAN-MORO-PRIN+INT-1-Newcreateloan1.xlsx|

@scenario61-2673-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-LATE-MORE-REPAY-AccCL1stFEB-REPAY-ON-15FEB-MORO-PRIN-1-PERIODIC
	  Scenario: 2673-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-LATE-MORE-REPAY-AccCL1stFEB-REPAY-ON-15FEB-MORO-PRIN-1-PERIODIC  
 Given I Delete Account Closures Entry from "DeleteAccountClosures" sheet
 	 |2673-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-LATE-MORE-REPAY-AccCL1stFEB-REPAY-ON-15FEB-MORO-PRIN-1-PERIODIC-Newcreateloan1.xlsx|
 Given I setup the clients 
 Then I entered the values into client from "Input" sheet
	 |Createclient.xlsx|
 Then I should see client created successfully from "Output" sheet
	 |Createclient.xlsx|
 When I set up the new create loan from "NewLoanInput" sheet
	 |2673-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-LATE-MORE-REPAY-AccCL1stFEB-REPAY-ON-15FEB-MORO-PRIN-1-PERIODIC-Newcreateloan1.xlsx|
 Then I make repayment and verified the following tabs
    |2673-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-LATE-MORE-REPAY-AccCL1stFEB-REPAY-ON-15FEB-MORO-PRIN-1-PERIODIC-Newcreateloan1.xlsx|Repay1|
 And I create Account Closures Entry from "CreateAccountClosures" sheet
 	 |2673-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-LATE-MORE-REPAY-AccCL1stFEB-REPAY-ON-15FEB-MORO-PRIN-1-PERIODIC-Newcreateloan1.xlsx|
 Then I make repayment and verified the following tabs
    |2673-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-LATE-MORE-REPAY-AccCL1stFEB-REPAY-ON-15FEB-MORO-PRIN-1-PERIODIC-Newcreateloan1.xlsx|Repay2|
 Then I Execute Periodic Accrual Accounting
     |2673-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-LATE-MORE-REPAY-AccCL1stFEB-REPAY-ON-15FEB-MORO-PRIN-1-PERIODIC-Newcreateloan1.xlsx|RunPeriodicAccrual|

@scenario62-2674-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-LATE-MORE-REPAY-AccCL1stFEB-REPAY-ON-15FEB-MORO-INT-1-PERIODIC
	  Scenario: 2674-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-LATE-MORE-REPAY-AccCL1stFEB-REPAY-ON-15FEB-MORO-INT-1-PERIODIC  
 Given I Delete Account Closures Entry from "DeleteAccountClosures" sheet
 	 |2674-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-LATE-MORE-REPAY-AccCL1stFEB-REPAY-ON-15FEB-MORO-INT-1-PERIODIC-Newcreateloan1.xlsx|
 Given I setup the clients 
 Then I entered the values into client from "Input" sheet
	 |Createclient.xlsx|
 Then I should see client created successfully from "Output" sheet
	 |Createclient.xlsx|
 When I set up the new create loan from "NewLoanInput" sheet
	 |2674-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-LATE-MORE-REPAY-AccCL1stFEB-REPAY-ON-15FEB-MORO-INT-1-PERIODIC-Newcreateloan1.xlsx|
 Then I make repayment and verified the following tabs
    |2674-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-LATE-MORE-REPAY-AccCL1stFEB-REPAY-ON-15FEB-MORO-INT-1-PERIODIC-Newcreateloan1.xlsx|Repay1|
 And I create Account Closures Entry from "CreateAccountClosures" sheet
 	 |2674-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-LATE-MORE-REPAY-AccCL1stFEB-REPAY-ON-15FEB-MORO-INT-1-PERIODIC-Newcreateloan1.xlsx|
 Then I make repayment and verified the following tabs
    |2674-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-LATE-MORE-REPAY-AccCL1stFEB-REPAY-ON-15FEB-MORO-INT-1-PERIODIC-Newcreateloan1.xlsx|Repay2|
 Then I Execute Periodic Accrual Accounting
     |2674-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-LATE-MORE-REPAY-AccCL1stFEB-REPAY-ON-15FEB-MORO-INT-1-PERIODIC-Newcreateloan1.xlsx|RunPeriodicAccrual|

@scenario63-2675-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-LATE-MORE-REPAY-AccCL1stFEB-REPAY-ON-15FEB-MORO-PRIN+INT-1-PERIODIC
	  Scenario: 2675-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-LATE-MORE-REPAY-AccCL1stFEB-REPAY-ON-15FEB-MORO-PRIN+INT-1-PERIODIC  
 Given I Delete Account Closures Entry from "DeleteAccountClosures" sheet
 	 |2675-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-LATE-MORE-REPAY-AccCL1stFEB-REPAY-ON-15FEB-MORO-PRIN+INT-1-PERIODIC-Newcreateloan1.xlsx|
 Given I setup the clients 
 Then I entered the values into client from "Input" sheet
	 |Createclient.xlsx|
 Then I should see client created successfully from "Output" sheet
	 |Createclient.xlsx|
 When I set up the new create loan from "NewLoanInput" sheet
	 |2675-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-LATE-MORE-REPAY-AccCL1stFEB-REPAY-ON-15FEB-MORO-PRIN+INT-1-PERIODIC-Newcreateloan1.xlsx|
 Then I make repayment and verified the following tabs
    |2675-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-LATE-MORE-REPAY-AccCL1stFEB-REPAY-ON-15FEB-MORO-PRIN+INT-1-PERIODIC-Newcreateloan1.xlsx|Repay1|
 And I create Account Closures Entry from "CreateAccountClosures" sheet
 	 |2675-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-LATE-MORE-REPAY-AccCL1stFEB-REPAY-ON-15FEB-MORO-PRIN+INT-1-PERIODIC-Newcreateloan1.xlsx|
 Then I make repayment and verified the following tabs
    |2675-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-LATE-MORE-REPAY-AccCL1stFEB-REPAY-ON-15FEB-MORO-PRIN+INT-1-PERIODIC-Newcreateloan1.xlsx|Repay2|
 Then I Execute Periodic Accrual Accounting
     |2675-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-LATE-MORE-REPAY-AccCL1stFEB-REPAY-ON-15FEB-MORO-PRIN+INT-1-PERIODIC-Newcreateloan1.xlsx|RunPeriodicAccrual|

@scenario64-2676-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-LATE-MORE-REPAY-AccCL1stFEB-REPAY-ON-15FEB-MORO-PRIN-1-DEL-AccCL-PERIODIC
	  Scenario: 2676-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-LATE-MORE-REPAY-AccCL1stFEB-REPAY-ON-15FEB-MORO-PRIN-1-DEL-AccCL-PERIODIC  
 Given I Delete Account Closures Entry from "DeleteAccountClosures" sheet
 	 |2676-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-LATE-MORE-REPAY-AccCL1stFEB-REPAY-ON-15FEB-MORO-PRIN-1-DEL-AccCL-PERIODIC-Newcreateloan1.xlsx|
 Given I setup the clients 
 Then I entered the values into client from "Input" sheet
	 |Createclient.xlsx|
 Then I should see client created successfully from "Output" sheet
	 |Createclient.xlsx|
 When I set up the new create loan from "NewLoanInput" sheet
	 |2676-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-LATE-MORE-REPAY-AccCL1stFEB-REPAY-ON-15FEB-MORO-PRIN-1-DEL-AccCL-PERIODIC-Newcreateloan1.xlsx|
 Then I make repayment and verified the following tabs
    |2676-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-LATE-MORE-REPAY-AccCL1stFEB-REPAY-ON-15FEB-MORO-PRIN-1-DEL-AccCL-PERIODIC-Newcreateloan1.xlsx|Repay1|
 And I create Account Closures Entry from "CreateAccountClosures" sheet
 	 |2676-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-LATE-MORE-REPAY-AccCL1stFEB-REPAY-ON-15FEB-MORO-PRIN-1-DEL-AccCL-PERIODIC-Newcreateloan1.xlsx|
 Then I make repayment and verified the following tabs
    |2676-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-LATE-MORE-REPAY-AccCL1stFEB-REPAY-ON-15FEB-MORO-PRIN-1-DEL-AccCL-PERIODIC-Newcreateloan1.xlsx|Repay2|
 Then I Delete Account Closures Entry from "DeleteAccountClosures" sheet
 	 |2676-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-LATE-MORE-REPAY-AccCL1stFEB-REPAY-ON-15FEB-MORO-PRIN-1-DEL-AccCL-PERIODIC-Newcreateloan1.xlsx|
 Then I Execute Periodic Accrual Accounting
     |2676-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-LATE-MORE-REPAY-AccCL1stFEB-REPAY-ON-15FEB-MORO-PRIN-1-DEL-AccCL-PERIODIC-Newcreateloan1.xlsx|RunPeriodicAccrual|Transactions|

@scenario65-2677-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-LATE-MORE-REPAY-AccCL1stFEB-REPAY-ON-15FEB-MORO-INT-1-DEL-AccCL-PERIODIC
	  Scenario: 2677-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-LATE-MORE-REPAY-AccCL1stFEB-REPAY-ON-15FEB-MORO-INT-1-DEL-AccCL-PERIODIC  
 Given I Delete Account Closures Entry from "DeleteAccountClosures" sheet
 	 |2677-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-LATE-MORE-REPAY-AccCL1stFEB-REPAY-ON-15FEB-MORO-INT-1-DEL-AccCL-PERIODIC-Newcreateloan1.xlsx|
 Given I setup the clients 
 Then I entered the values into client from "Input" sheet
	 |Createclient.xlsx|
 Then I should see client created successfully from "Output" sheet
	 |Createclient.xlsx|
 When I set up the new create loan from "NewLoanInput" sheet
	 |2677-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-LATE-MORE-REPAY-AccCL1stFEB-REPAY-ON-15FEB-MORO-INT-1-DEL-AccCL-PERIODIC-Newcreateloan1.xlsx|
 Then I make repayment and verified the following tabs
    |2677-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-LATE-MORE-REPAY-AccCL1stFEB-REPAY-ON-15FEB-MORO-INT-1-DEL-AccCL-PERIODIC-Newcreateloan1.xlsx|Repay1|
 And I create Account Closures Entry from "CreateAccountClosures" sheet
 	 |2677-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-LATE-MORE-REPAY-AccCL1stFEB-REPAY-ON-15FEB-MORO-INT-1-DEL-AccCL-PERIODIC-Newcreateloan1.xlsx|
 Then I make repayment and verified the following tabs
    |2677-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-LATE-MORE-REPAY-AccCL1stFEB-REPAY-ON-15FEB-MORO-INT-1-DEL-AccCL-PERIODIC-Newcreateloan1.xlsx|Repay2|
 Then I Delete Account Closures Entry from "DeleteAccountClosures" sheet
 	 |2677-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-LATE-MORE-REPAY-AccCL1stFEB-REPAY-ON-15FEB-MORO-INT-1-DEL-AccCL-PERIODIC-Newcreateloan1.xlsx|
 Then I Execute Periodic Accrual Accounting
     |2677-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-LATE-MORE-REPAY-AccCL1stFEB-REPAY-ON-15FEB-MORO-INT-1-DEL-AccCL-PERIODIC-Newcreateloan1.xlsx|RunPeriodicAccrual|Transactions|

@scenario66-2678-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-LATE-MORE-REPAY-AccCL1stFEB-REPAY-ON-15FEB-MORO-PRIN+INT-1-DEL-AccCL-PERIODIC
	  Scenario: 2678-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-LATE-MORE-REPAY-AccCL1stFEB-REPAY-ON-15FEB-MORO-PRIN+INT-1-DEL-AccCL-PERIODIC  
 Given I Delete Account Closures Entry from "DeleteAccountClosures" sheet
 	 |2678-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-LATE-MORE-REPAY-AccCL1stFEB-REPAY-ON-15FEB-MORO-PRIN+INT-1-DEL-AccCL-PERIODIC-Newcreateloan1.xlsx|
 Given I setup the clients 
 Then I entered the values into client from "Input" sheet
	 |Createclient.xlsx|
 Then I should see client created successfully from "Output" sheet
	 |Createclient.xlsx|
 When I set up the new create loan from "NewLoanInput" sheet
	 |2678-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-LATE-MORE-REPAY-AccCL1stFEB-REPAY-ON-15FEB-MORO-PRIN+INT-1-DEL-AccCL-PERIODIC-Newcreateloan1.xlsx|
 Then I make repayment and verified the following tabs
    |2678-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-LATE-MORE-REPAY-AccCL1stFEB-REPAY-ON-15FEB-MORO-PRIN+INT-1-DEL-AccCL-PERIODIC-Newcreateloan1.xlsx|Repay1|
 And I create Account Closures Entry from "CreateAccountClosures" sheet
 	 |2678-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-LATE-MORE-REPAY-AccCL1stFEB-REPAY-ON-15FEB-MORO-PRIN+INT-1-DEL-AccCL-PERIODIC-Newcreateloan1.xlsx|
 Then I make repayment and verified the following tabs
    |2678-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-LATE-MORE-REPAY-AccCL1stFEB-REPAY-ON-15FEB-MORO-PRIN+INT-1-DEL-AccCL-PERIODIC-Newcreateloan1.xlsx|Repay2|
 Then I Delete Account Closures Entry from "DeleteAccountClosures" sheet
 	 |2678-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-LATE-MORE-REPAY-AccCL1stFEB-REPAY-ON-15FEB-MORO-PRIN+INT-1-DEL-AccCL-PERIODIC-Newcreateloan1.xlsx|
 Then I Execute Periodic Accrual Accounting
     |2678-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-LATE-MORE-REPAY-AccCL1stFEB-REPAY-ON-15FEB-MORO-PRIN+INT-1-DEL-AccCL-PERIODIC-Newcreateloan1.xlsx|RunPeriodicAccrual|Transactions|

@scenario67-2679-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-EARLY-REPAY+RunPER-ON31JAN+AccCL31JAN+DISTR2-31JAN
	  Scenario: 2679-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-EARLY-REPAY+RunPER-ON31JAN+AccCL31JAN+DISTR2-31JAN  
 Given I Delete Account Closures Entry from "DeleteAccountClosures" sheet
 	 |2679-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-EARLY-REPAY+RunPER-ON31JAN+AccCL31JAN+DISTR2-31JAN-Newcreateloan1.xlsx|
 Given I setup the clients 
 Then I entered the values into client from "Input" sheet
	 |Createclient.xlsx|
 Then I should see client created successfully from "Output" sheet
	 |Createclient.xlsx|
 When I set up the new create loan from "NewLoanInput" sheet
	 |2679-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-EARLY-REPAY+RunPER-ON31JAN+AccCL31JAN+DISTR2-31JAN-Newcreateloan1.xlsx|
 Then I make repayment and verified the following tabs
    |2679-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-EARLY-REPAY+RunPER-ON31JAN+AccCL31JAN+DISTR2-31JAN-Newcreateloan1.xlsx|Repay1|
 Then I Execute Periodic Accrual Accounting
     |2679-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-EARLY-REPAY+RunPER-ON31JAN+AccCL31JAN+DISTR2-31JAN-Newcreateloan1.xlsx|RunPeriodicAccrual|
 And I create Account Closures Entry from "CreateAccountClosures" sheet
 	 |2679-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-EARLY-REPAY+RunPER-ON31JAN+AccCL31JAN+DISTR2-31JAN-Newcreateloan1.xlsx|
 Then I disburse loan from "Second Tranch" sheet
     |2679-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-EARLY-REPAY+RunPER-ON31JAN+AccCL31JAN+DISTR2-31JAN-Newcreateloan1.xlsx|	
     
@scenario68-2680-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-EARLYREPAY-RunPERon31JAN-AccCL31JAN-DISTR2on1stFEB
	  Scenario: 2680-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-EARLYREPAY-RunPERon31JAN-AccCL31JAN-DISTR2on1stFEB  
 Given I Delete Account Closures Entry from "DeleteAccountClosures" sheet
 	 |2680-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-EARLYREPAY-RunPERon31JAN-AccCL31JAN-DISTR2on1stFEB-Newcreateloan1.xlsx|
 Given I setup the clients 
 Then I entered the values into client from "Input" sheet
	 |Createclient.xlsx|
 Then I should see client created successfully from "Output" sheet
	 |Createclient.xlsx|
 When I set up the new create loan from "NewLoanInput" sheet
	 |2680-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-EARLYREPAY-RunPERon31JAN-AccCL31JAN-DISTR2on1stFEB-Newcreateloan1.xlsx|
 Then I make repayment and verified the following tabs
    |2680-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-EARLYREPAY-RunPERon31JAN-AccCL31JAN-DISTR2on1stFEB-Newcreateloan1.xlsx|Repay1|
 Then I Execute Periodic Accrual Accounting
     |2680-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-EARLYREPAY-RunPERon31JAN-AccCL31JAN-DISTR2on1stFEB-Newcreateloan1.xlsx|RunPeriodicAccrual|
 And I create Account Closures Entry from "CreateAccountClosures" sheet
 	 |2680-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-EARLYREPAY-RunPERon31JAN-AccCL31JAN-DISTR2on1stFEB-Newcreateloan1.xlsx|
 Then I disburse loan from "Second Tranch" sheet
     |2680-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-EARLYREPAY-RunPERon31JAN-AccCL31JAN-DISTR2on1stFEB-Newcreateloan1.xlsx|	
 And I verified the "Transactions" details successfully	
	 |2680-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-EARLYREPAY-RunPERon31JAN-AccCL31JAN-DISTR2on1stFEB-Newcreateloan1.xlsx|

@scenario69-2681-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-lATEREPAY-RunPERon15FEB-AccCL15FEB-DISTR2on20thFEB
	  Scenario: 2681-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-lATEREPAY-RunPERon15FEB-AccCL15FEB-DISTR2on20thFEB  
 Given I Delete Account Closures Entry from "DeleteAccountClosures" sheet
 	 |2681-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-lATEREPAY-RunPERon15FEB-AccCL15FEB-DISTR2on20thFEB-Newcreateloan1.xlsx|
 Given I setup the clients 
 Then I entered the values into client from "Input" sheet
	 |Createclient.xlsx|
 Then I should see client created successfully from "Output" sheet
	 |Createclient.xlsx|
 When I set up the new create loan from "NewLoanInput" sheet
	 |2681-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-lATEREPAY-RunPERon15FEB-AccCL15FEB-DISTR2on20thFEB-Newcreateloan1.xlsx|
 Then I make repayment and verified the following tabs
    |2681-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-lATEREPAY-RunPERon15FEB-AccCL15FEB-DISTR2on20thFEB-Newcreateloan1.xlsx|Repay1|
 Then I Execute Periodic Accrual Accounting
     |2681-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-lATEREPAY-RunPERon15FEB-AccCL15FEB-DISTR2on20thFEB-Newcreateloan1.xlsx|RunPeriodicAccrual|
 And I create Account Closures Entry from "CreateAccountClosures" sheet
 	 |2681-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-lATEREPAY-RunPERon15FEB-AccCL15FEB-DISTR2on20thFEB-Newcreateloan1.xlsx|
 Then I disburse loan from "Second Tranch" sheet
     |2681-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-lATEREPAY-RunPERon15FEB-AccCL15FEB-DISTR2on20thFEB-Newcreateloan1.xlsx|	
 And I verified the "Transactions" details successfully	
	 |2681-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-lATEREPAY-RunPERon15FEB-AccCL15FEB-DISTR2on20thFEB-Newcreateloan1.xlsx|

@scenario70-2682-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIMEREPAY-RunPERon15FEB-AccCL15FEB-DISTR2on20thFEB
	  Scenario: 2682-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIMEREPAY-RunPERon15FEB-AccCL15FEB-DISTR2on20thFEB  
 Given I Delete Account Closures Entry from "DeleteAccountClosures" sheet
 	 |2682-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIMEREPAY-RunPERon15FEB-AccCL15FEB-DISTR2on20thFEB-Newcreateloan1.xlsx|
 Given I setup the clients 
 Then I entered the values into client from "Input" sheet
	 |Createclient.xlsx|
 Then I should see client created successfully from "Output" sheet
	 |Createclient.xlsx|
 When I set up the new create loan from "NewLoanInput" sheet
	 |2682-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIMEREPAY-RunPERon15FEB-AccCL15FEB-DISTR2on20thFEB-Newcreateloan1.xlsx|
 Then I make repayment and verified the following tabs
    |2682-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIMEREPAY-RunPERon15FEB-AccCL15FEB-DISTR2on20thFEB-Newcreateloan1.xlsx|Repay1|
 Then I Execute Periodic Accrual Accounting
     |2682-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIMEREPAY-RunPERon15FEB-AccCL15FEB-DISTR2on20thFEB-Newcreateloan1.xlsx|RunPeriodicAccrual|
 And I create Account Closures Entry from "CreateAccountClosures" sheet
 	 |2682-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIMEREPAY-RunPERon15FEB-AccCL15FEB-DISTR2on20thFEB-Newcreateloan1.xlsx|
 Then I disburse loan from "Second Tranch" sheet
     |2682-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIMEREPAY-RunPERon15FEB-AccCL15FEB-DISTR2on20thFEB-Newcreateloan1.xlsx|	
 And I verified the "Transactions" details successfully	
	 |2682-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIMEREPAY-RunPERon15FEB-AccCL15FEB-DISTR2on20thFEB-Newcreateloan1.xlsx|

@scenario71-2683-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-EARLYREPAY-RunPERon31JAN-AccCL31JAN-REPAY31JAN
	  Scenario: 2683-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-EARLYREPAY-RunPERon31JAN-AccCL31JAN-REPAY31JAN  
 Given I Delete Account Closures Entry from "DeleteAccountClosures" sheet
 	 |2683-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-EARLYREPAY-RunPERon31JAN-AccCL31JAN-REPAY31JAN-Newcreateloan1.xlsx|
 Given I setup the clients 
 Then I entered the values into client from "Input" sheet
	 |Createclient.xlsx|
 Then I should see client created successfully from "Output" sheet
	 |Createclient.xlsx|
 When I set up the new create loan from "NewLoanInput" sheet
	 |2683-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-EARLYREPAY-RunPERon31JAN-AccCL31JAN-REPAY31JAN-Newcreateloan1.xlsx|
 Then I make repayment and verified the following tabs
    |2683-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-EARLYREPAY-RunPERon31JAN-AccCL31JAN-REPAY31JAN-Newcreateloan1.xlsx|Repay1|
 Then I Execute Periodic Accrual Accounting
     |2683-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-EARLYREPAY-RunPERon31JAN-AccCL31JAN-REPAY31JAN-Newcreateloan1.xlsx|RunPeriodicAccrual|
 And I create Account Closures Entry from "CreateAccountClosures" sheet
 	 |2683-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-EARLYREPAY-RunPERon31JAN-AccCL31JAN-REPAY31JAN-Newcreateloan1.xlsx|
 Then I make repayment and verified the following tabs
    |2683-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-EARLYREPAY-RunPERon31JAN-AccCL31JAN-REPAY31JAN-Newcreateloan1.xlsx|Repay2|
 Then i validate and Verify from "Output" sheet
	|2683-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-EARLYREPAY-RunPERon31JAN-AccCL31JAN-REPAY31JAN-Newcreateloan1.xlsx|

@scenario72-2684-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-EARLYREPAY-RunPERon31JAN-AccCL31JAN-REPAY10thFEB
	  Scenario: 2684-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-EARLYREPAY-RunPERon31JAN-AccCL31JAN-REPAY10thFEB  
 Given I Delete Account Closures Entry from "DeleteAccountClosures" sheet
 	 |2684-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-EARLYREPAY-RunPERon31JAN-AccCL31JAN-REPAY10thFEB-Newcreateloan1.xlsx|
 Given I setup the clients 
 Then I entered the values into client from "Input" sheet
	 |Createclient.xlsx|
 Then I should see client created successfully from "Output" sheet
	 |Createclient.xlsx|
 When I set up the new create loan from "NewLoanInput" sheet
	 |2684-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-EARLYREPAY-RunPERon31JAN-AccCL31JAN-REPAY10thFEB-Newcreateloan1.xlsx|
 Then I make repayment and verified the following tabs
    |2684-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-EARLYREPAY-RunPERon31JAN-AccCL31JAN-REPAY10thFEB-Newcreateloan1.xlsx|Repay1|
 Then I Execute Periodic Accrual Accounting
     |2684-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-EARLYREPAY-RunPERon31JAN-AccCL31JAN-REPAY10thFEB-Newcreateloan1.xlsx|RunPeriodicAccrual|
 And I create Account Closures Entry from "CreateAccountClosures" sheet
 	 |2684-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-EARLYREPAY-RunPERon31JAN-AccCL31JAN-REPAY10thFEB-Newcreateloan1.xlsx|
 Then I make repayment and verified the following tabs
    |2684-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-EARLYREPAY-RunPERon31JAN-AccCL31JAN-REPAY10thFEB-Newcreateloan1.xlsx|Repay2|Transactions|

@scenario73-2685-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-LATEREPAY-RunPERon15FEB-AccCL15FEB-REPAY10thMAR
	  Scenario: 2685-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-LATEREPAY-RunPERon15FEB-AccCL15FEB-REPAY10thMAR  
 Given I Delete Account Closures Entry from "DeleteAccountClosures" sheet
 	 |2685-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-LATEREPAY-RunPERon15FEB-AccCL15FEB-REPAY10thMAR-Newcreateloan1.xlsx|
 Given I setup the clients 
 Then I entered the values into client from "Input" sheet
	 |Createclient.xlsx|
 Then I should see client created successfully from "Output" sheet
	|Createclient.xlsx|
 When I set up the new create loan from "NewLoanInput" sheet
	|2685-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-LATEREPAY-RunPERon15FEB-AccCL15FEB-REPAY10thMAR-Newcreateloan1.xlsx|
 Then I make repayment and verified the following tabs
    |2685-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-LATEREPAY-RunPERon15FEB-AccCL15FEB-REPAY10thMAR-Newcreateloan1.xlsx|Repay1|
 Then I Execute Periodic Accrual Accounting
    |2685-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-LATEREPAY-RunPERon15FEB-AccCL15FEB-REPAY10thMAR-Newcreateloan1.xlsx|RunPeriodicAccrual|
 And I create Account Closures Entry from "CreateAccountClosures" sheet
 	|2685-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-LATEREPAY-RunPERon15FEB-AccCL15FEB-REPAY10thMAR-Newcreateloan1.xlsx|
 Then I make repayment and verified the following tabs
    |2685-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-LATEREPAY-RunPERon15FEB-AccCL15FEB-REPAY10thMAR-Newcreateloan1.xlsx|Repay2|Transactions|

@scenario74-2686-RBI-EI-DB-DL-REC-Non-RNI-CTPD-DL-MD-TR-2-ONTIMEREPAY-RunPERon15FEB-AccCL15FEB-REPAY1stMAR
	  Scenario: 2686-RBI-EI-DB-DL-REC-Non-RNI-CTPD-DL-MD-TR-2-ONTIMEREPAY-RunPERon15FEB-AccCL15FEB-REPAY1stMAR  
 Given I Delete Account Closures Entry from "DeleteAccountClosures" sheet
 	 |2686-RBI-EI-DB-DL-REC-Non-RNI-CTPD-DL-MD-TR-2-ONTIMEREPAY-RunPERon15FEB-AccCL15FEB-REPAY1stMAR-Newcreateloan1.xlsx|
 Given I setup the clients 
 Then I entered the values into client from "Input" sheet
	 |Createclient.xlsx|
 Then I should see client created successfully from "Output" sheet
	|Createclient.xlsx|
 When I set up the new create loan from "NewLoanInput" sheet
	|2686-RBI-EI-DB-DL-REC-Non-RNI-CTPD-DL-MD-TR-2-ONTIMEREPAY-RunPERon15FEB-AccCL15FEB-REPAY1stMAR-Newcreateloan1.xlsx|
 Then I make repayment and verified the following tabs
    |2686-RBI-EI-DB-DL-REC-Non-RNI-CTPD-DL-MD-TR-2-ONTIMEREPAY-RunPERon15FEB-AccCL15FEB-REPAY1stMAR-Newcreateloan1.xlsx|Repay1|
 Then I Execute Periodic Accrual Accounting
    |2686-RBI-EI-DB-DL-REC-Non-RNI-CTPD-DL-MD-TR-2-ONTIMEREPAY-RunPERon15FEB-AccCL15FEB-REPAY1stMAR-Newcreateloan1.xlsx|RunPeriodicAccrual|
 And I create Account Closures Entry from "CreateAccountClosures" sheet
 	|2686-RBI-EI-DB-DL-REC-Non-RNI-CTPD-DL-MD-TR-2-ONTIMEREPAY-RunPERon15FEB-AccCL15FEB-REPAY1stMAR-Newcreateloan1.xlsx|
 Then I make repayment and verified the following tabs
    |2686-RBI-EI-DB-DL-REC-Non-RNI-CTPD-DL-MD-TR-2-ONTIMEREPAY-RunPERon15FEB-AccCL15FEB-REPAY1stMAR-Newcreateloan1.xlsx|Repay2|Transactions|

@scenario75-2687-RBI-EI-DB-DL-REC-Non-RNI-CTPD-DL-MD-TR-2-DIS-RunPERon1stAPR-LESSREPAYon1stFEB-AccCL1stFEB-RunPERon1stFEB
	  Scenario: 2687-RBI-EI-DB-DL-REC-Non-RNI-CTPD-DL-MD-TR-2-DIS-RunPERon1stAPR-LESSREPAYon1stFEB-AccCL1stFEB-RunPERon1stFEB  
 Given I Delete Account Closures Entry from "DeleteAccountClosures" sheet
 	 |2687-RBI-EI-DB-DL-REC-Non-RNI-CTPD-DL-MD-TR-2-DIS-RunPERon1stAPR-LESSREPAYon1stFEB-AccCL1stFEB-RunPERon1stFEB-Newcreateloan1.xlsx|
 Given I setup the clients 
 Then I entered the values into client from "Input" sheet
	 |Createclient.xlsx|
 Then I should see client created successfully from "Output" sheet
	|Createclient.xlsx|
 When I set up the new create loan from "NewLoanInput" sheet
	|2687-RBI-EI-DB-DL-REC-Non-RNI-CTPD-DL-MD-TR-2-DIS-RunPERon1stAPR-LESSREPAYon1stFEB-AccCL1stFEB-RunPERon1stFEB-Newcreateloan1.xlsx|
 Then I Execute Periodic Accrual Accounting
    |2687-RBI-EI-DB-DL-REC-Non-RNI-CTPD-DL-MD-TR-2-DIS-RunPERon1stAPR-LESSREPAYon1stFEB-AccCL1stFEB-RunPERon1stFEB-Newcreateloan1.xlsx|RunPeriodicAccrual|
 Then I make repayment and verified the following tabs
    |2687-RBI-EI-DB-DL-REC-Non-RNI-CTPD-DL-MD-TR-2-DIS-RunPERon1stAPR-LESSREPAYon1stFEB-AccCL1stFEB-RunPERon1stFEB-Newcreateloan1.xlsx|Repay1|
 And I create Account Closures Entry from "CreateAccountClosures" sheet
 	|2687-RBI-EI-DB-DL-REC-Non-RNI-CTPD-DL-MD-TR-2-DIS-RunPERon1stAPR-LESSREPAYon1stFEB-AccCL1stFEB-RunPERon1stFEB-Newcreateloan1.xlsx|
 Then I Execute Periodic Accrual Accounting
    |2687-RBI-EI-DB-DL-REC-Non-RNI-CTPD-DL-MD-TR-2-DIS-RunPERon1stAPR-LESSREPAYon1stFEB-AccCL1stFEB-RunPERon1stFEB-Newcreateloan1.xlsx|RunPeriodicAccrual1|
 
@scenario76-2688-RBI-EI-DB-DL-REC-Non-RNI-CTPD-DL-MD-TR-2-DIS-RunPERon1stAPR-LESSREPAYon1stFEB-AccCL1stFEB-RUNPERon2ndFEB
	  Scenario: 2688-RBI-EI-DB-DL-REC-Non-RNI-CTPD-DL-MD-TR-2-DIS-RunPERon1stAPR-LESSREPAYon1stFEB-AccCL1stFEB-RUNPERon2ndFEB  
 Given I Delete Account Closures Entry from "DeleteAccountClosures" sheet
 	 |2688-RBI-EI-DB-DL-REC-Non-RNI-CTPD-DL-MD-TR-2-DIS-RunPERon1stAPR-LESSREPAYon1stFEB-AccCL1stFEB-RUNPERon2ndFEB-Newcreateloan1.xlsx|
 Given I setup the clients 
 Then I entered the values into client from "Input" sheet
	 |Createclient.xlsx|
 Then I should see client created successfully from "Output" sheet
	|Createclient.xlsx|
 When I set up the new create loan from "NewLoanInput" sheet
	|2688-RBI-EI-DB-DL-REC-Non-RNI-CTPD-DL-MD-TR-2-DIS-RunPERon1stAPR-LESSREPAYon1stFEB-AccCL1stFEB-RUNPERon2ndFEB-Newcreateloan1.xlsx|
 Then I Execute Periodic Accrual Accounting
    |2688-RBI-EI-DB-DL-REC-Non-RNI-CTPD-DL-MD-TR-2-DIS-RunPERon1stAPR-LESSREPAYon1stFEB-AccCL1stFEB-RUNPERon2ndFEB-Newcreateloan1.xlsx|RunPeriodicAccrual|
 Then I make repayment and verified the following tabs
    |2688-RBI-EI-DB-DL-REC-Non-RNI-CTPD-DL-MD-TR-2-DIS-RunPERon1stAPR-LESSREPAYon1stFEB-AccCL1stFEB-RUNPERon2ndFEB-Newcreateloan1.xlsx|Repay1|
 And I create Account Closures Entry from "CreateAccountClosures" sheet
 	|2688-RBI-EI-DB-DL-REC-Non-RNI-CTPD-DL-MD-TR-2-DIS-RunPERon1stAPR-LESSREPAYon1stFEB-AccCL1stFEB-RUNPERon2ndFEB-Newcreateloan1.xlsx|
 Then I Execute Periodic Accrual Accounting
    |2688-RBI-EI-DB-DL-REC-Non-RNI-CTPD-DL-MD-TR-2-DIS-RunPERon1stAPR-LESSREPAYon1stFEB-AccCL1stFEB-RUNPERon2ndFEB-Newcreateloan1.xlsx|RunPeriodicAccrual1|
 
@scenario77-2689-RBI-EI-DB-DL-REC-Non-RNI-CTPD-DL-MD-TR-2-DIS-AccCL1stFEB-RunPERON1stFEB-DELETEAccCL-REPAYon1stFEB
	  Scenario: 2689-RBI-EI-DB-DL-REC-Non-RNI-CTPD-DL-MD-TR-2-DIS-AccCL1stFEB-RunPERON1stFEB-DELETEAccCL-REPAYon1stFEB  
 Given I Delete Account Closures Entry from "DeleteAccountClosures" sheet
 	 |2689-RBI-EI-DB-DL-REC-Non-RNI-CTPD-DL-MD-TR-2-DIS-AccCL1stFEB-RunPERON1stFEB-DELETEAccCL-REPAYon1stFEB-Newcreateloan1.xlsx|
 Given I setup the clients 
 Then I entered the values into client from "Input" sheet
	 |Createclient.xlsx|
 Then I should see client created successfully from "Output" sheet
	|Createclient.xlsx|
 When I set up the new create loan from "NewLoanInput" sheet
	|2689-RBI-EI-DB-DL-REC-Non-RNI-CTPD-DL-MD-TR-2-DIS-AccCL1stFEB-RunPERON1stFEB-DELETEAccCL-REPAYon1stFEB-Newcreateloan1.xlsx|
 And I create Account Closures Entry from "CreateAccountClosures" sheet
 	|2689-RBI-EI-DB-DL-REC-Non-RNI-CTPD-DL-MD-TR-2-DIS-AccCL1stFEB-RunPERON1stFEB-DELETEAccCL-REPAYon1stFEB-Newcreateloan1.xlsx|
 Then I Execute Periodic Accrual Accounting
    |2689-RBI-EI-DB-DL-REC-Non-RNI-CTPD-DL-MD-TR-2-DIS-AccCL1stFEB-RunPERON1stFEB-DELETEAccCL-REPAYon1stFEB-Newcreateloan1.xlsx|RunPeriodicAccrual|
 Then I Delete Account Closures Entry from "DeleteAccountClosures" sheet
 	 |2689-RBI-EI-DB-DL-REC-Non-RNI-CTPD-DL-MD-TR-2-DIS-AccCL1stFEB-RunPERON1stFEB-DELETEAccCL-REPAYon1stFEB-Newcreateloan1.xlsx|
 And I navigate To Loan Account Page
 Then I make repayment and verified the following tabs
    |2689-RBI-EI-DB-DL-REC-Non-RNI-CTPD-DL-MD-TR-2-DIS-AccCL1stFEB-RunPERON1stFEB-DELETEAccCL-REPAYon1stFEB-Newcreateloan1.xlsx|Repay1|Transactions|
 
@scenario78-2690-RBI-EI-DB-DL-REC-Non-RNI-CTPD-DL-MD-TR-2-DIS-AccCL1stFEB-RunPERON1stFEB-DELETEAccCL-REPAYon2ndFEB-RunPERON2ndFEB
	  Scenario: 2690-RBI-EI-DB-DL-REC-Non-RNI-CTPD-DL-MD-TR-2-DIS-AccCL1stFEB-RunPERON1stFEB-DELETEAccCL-REPAYon2ndFEB-RunPERON2ndFEB  
 Given I Delete Account Closures Entry from "DeleteAccountClosures" sheet
 	 |2690-RBI-EI-DB-DL-REC-Non-RNI-CTPD-DL-MD-TR-2-DIS-AccCL1stFEB-RunPERON1stFEB-DELETEAccCL-REPAYon2ndFEB-RunPERON2ndFEB-Newcreateloan1.xlsx|
 Given I setup the clients 
 Then I entered the values into client from "Input" sheet
	 |Createclient.xlsx|
 Then I should see client created successfully from "Output" sheet
	|Createclient.xlsx|
 When I set up the new create loan from "NewLoanInput" sheet
	|2690-RBI-EI-DB-DL-REC-Non-RNI-CTPD-DL-MD-TR-2-DIS-AccCL1stFEB-RunPERON1stFEB-DELETEAccCL-REPAYon2ndFEB-RunPERON2ndFEB-Newcreateloan1.xlsx|
 And I create Account Closures Entry from "CreateAccountClosures" sheet
 	|2690-RBI-EI-DB-DL-REC-Non-RNI-CTPD-DL-MD-TR-2-DIS-AccCL1stFEB-RunPERON1stFEB-DELETEAccCL-REPAYon2ndFEB-RunPERON2ndFEB-Newcreateloan1.xlsx|
 Then I Execute Periodic Accrual Accounting
    |2690-RBI-EI-DB-DL-REC-Non-RNI-CTPD-DL-MD-TR-2-DIS-AccCL1stFEB-RunPERON1stFEB-DELETEAccCL-REPAYon2ndFEB-RunPERON2ndFEB-Newcreateloan1.xlsx|RunPeriodicAccrual|
 Then I Delete Account Closures Entry from "DeleteAccountClosures" sheet
 	 |2690-RBI-EI-DB-DL-REC-Non-RNI-CTPD-DL-MD-TR-2-DIS-AccCL1stFEB-RunPERON1stFEB-DELETEAccCL-REPAYon2ndFEB-RunPERON2ndFEB-Newcreateloan1.xlsx|
 And I navigate To Loan Account Page
 Then I make repayment and verified the following tabs
    |2690-RBI-EI-DB-DL-REC-Non-RNI-CTPD-DL-MD-TR-2-DIS-AccCL1stFEB-RunPERON1stFEB-DELETEAccCL-REPAYon2ndFEB-RunPERON2ndFEB-Newcreateloan1.xlsx|Repay1|
 Then I Execute Periodic Accrual Accounting
    |2690-RBI-EI-DB-DL-REC-Non-RNI-CTPD-DL-MD-TR-2-DIS-AccCL1stFEB-RunPERON1stFEB-DELETEAccCL-REPAYon2ndFEB-RunPERON2ndFEB-Newcreateloan1.xlsx|RunPeriodicAccrual1|Transactions|

@scenario79-2691-RBI-EI-DB-DL-REC-Non-RNI-CTPD-DL-MD-TR-2-DIS-AccCL1stFEB-REPAYon2ndFEB-RunPERon2ndFEB
	  Scenario: 2691-RBI-EI-DB-DL-REC-Non-RNI-CTPD-DL-MD-TR-2-DIS-AccCL1stFEB-REPAYon2ndFEB-RunPERon2ndFEB  
 Given I Delete Account Closures Entry from "DeleteAccountClosures" sheet
 	 |2691-RBI-EI-DB-DL-REC-Non-RNI-CTPD-DL-MD-TR-2-DIS-AccCL1stFEB-REPAYon2ndFEB-RunPERon2ndFEB-Newcreateloan1.xlsx|
 Given I setup the clients 
 Then I entered the values into client from "Input" sheet
	 |Createclient.xlsx|
 Then I should see client created successfully from "Output" sheet
	|Createclient.xlsx|
 When I set up the new create loan from "NewLoanInput" sheet
	|2691-RBI-EI-DB-DL-REC-Non-RNI-CTPD-DL-MD-TR-2-DIS-AccCL1stFEB-REPAYon2ndFEB-RunPERon2ndFEB-Newcreateloan1.xlsx|
 And I create Account Closures Entry from "CreateAccountClosures" sheet
 	|2691-RBI-EI-DB-DL-REC-Non-RNI-CTPD-DL-MD-TR-2-DIS-AccCL1stFEB-REPAYon2ndFEB-RunPERon2ndFEB-Newcreateloan1.xlsx|
 Then I make repayment and verified the following tabs
    |2691-RBI-EI-DB-DL-REC-Non-RNI-CTPD-DL-MD-TR-2-DIS-AccCL1stFEB-REPAYon2ndFEB-RunPERon2ndFEB-Newcreateloan1.xlsx|Repay1|
 Then I Execute Periodic Accrual Accounting
    |2691-RBI-EI-DB-DL-REC-Non-RNI-CTPD-DL-MD-TR-2-DIS-AccCL1stFEB-REPAYon2ndFEB-RunPERon2ndFEB-Newcreateloan1.xlsx|RunPeriodicAccrual|

@scenario80-2692-RBI-EI-DB-DL-REC-Non-RNI-CTPD-DL-MD-TR-2-DIS-AccCL1stFEB-REPAYon2ndFEB-RunPERon2ndFEB-DELETEAccCL-REPAYONTIME-RunPERon1stMAR
	  Scenario: 2692-RBI-EI-DB-DL-REC-Non-RNI-CTPD-DL-MD-TR-2-DIS-AccCL1stFEB-REPAYon2ndFEB-RunPERon2ndFEB-DELETEAccCL-REPAYONTIME-RunPERon1stMAR  
 Given I Delete Account Closures Entry from "DeleteAccountClosures" sheet
 	 |2692-RBI-EI-DB-DL-REC-Non-RNI-CTPD-DL-MD-TR-2-DIS-AccCL1stFEB-REPAYon2ndFEB-RunPERon2ndFEB-DELETEAccCL-REPAYONTIME-RunPERon1stMAR-Newcreateloan1.xlsx|
 Given I setup the clients 
 Then I entered the values into client from "Input" sheet
	 |Createclient.xlsx|
 Then I should see client created successfully from "Output" sheet
	|Createclient.xlsx|
 When I set up the new create loan from "NewLoanInput" sheet
	|2692-RBI-EI-DB-DL-REC-Non-RNI-CTPD-DL-MD-TR-2-DIS-AccCL1stFEB-REPAYon2ndFEB-RunPERon2ndFEB-DELETEAccCL-REPAYONTIME-RunPERon1stMAR-Newcreateloan1.xlsx|
 And I create Account Closures Entry from "CreateAccountClosures" sheet
 	|2692-RBI-EI-DB-DL-REC-Non-RNI-CTPD-DL-MD-TR-2-DIS-AccCL1stFEB-REPAYon2ndFEB-RunPERon2ndFEB-DELETEAccCL-REPAYONTIME-RunPERon1stMAR-Newcreateloan1.xlsx|
 Then I make repayment and verified the following tabs
    |2692-RBI-EI-DB-DL-REC-Non-RNI-CTPD-DL-MD-TR-2-DIS-AccCL1stFEB-REPAYon2ndFEB-RunPERon2ndFEB-DELETEAccCL-REPAYONTIME-RunPERon1stMAR-Newcreateloan1.xlsx|Repay1|
 Then I Execute Periodic Accrual Accounting
    |2692-RBI-EI-DB-DL-REC-Non-RNI-CTPD-DL-MD-TR-2-DIS-AccCL1stFEB-REPAYon2ndFEB-RunPERon2ndFEB-DELETEAccCL-REPAYONTIME-RunPERon1stMAR-Newcreateloan1.xlsx|RunPeriodicAccrual|
 Then I Delete Account Closures Entry from "DeleteAccountClosures" sheet
 	 |2692-RBI-EI-DB-DL-REC-Non-RNI-CTPD-DL-MD-TR-2-DIS-AccCL1stFEB-REPAYon2ndFEB-RunPERon2ndFEB-DELETEAccCL-REPAYONTIME-RunPERon1stMAR-Newcreateloan1.xlsx|
 And I navigate To Loan Account Page
 Then I make repayment and verified the following tabs
    |2692-RBI-EI-DB-DL-REC-Non-RNI-CTPD-DL-MD-TR-2-DIS-AccCL1stFEB-REPAYon2ndFEB-RunPERon2ndFEB-DELETEAccCL-REPAYONTIME-RunPERon1stMAR-Newcreateloan1.xlsx|Repay2|
 Then I Execute Periodic Accrual Accounting
    |2692-RBI-EI-DB-DL-REC-Non-RNI-CTPD-DL-MD-TR-2-DIS-AccCL1stFEB-REPAYon2ndFEB-RunPERon2ndFEB-DELETEAccCL-REPAYONTIME-RunPERon1stMAR-Newcreateloan1.xlsx|RunPeriodicAccrual1|Transactions|

@scenario81-2693-RBI-EI-DB-DL-REC-Non-RNI-CTPD-DL-MD-TR-2-DIS-AccCL1stFEB-REPAYon2ndFEB-RunPERon2ndFEB-DELETEAccCL-REPAYLATE-RunPERon15thMAR
	  Scenario: 2693-RBI-EI-DB-DL-REC-Non-RNI-CTPD-DL-MD-TR-2-DIS-AccCL1stFEB-REPAYon2ndFEB-RunPERon2ndFEB-DELETEAccCL-REPAYLATE-RunPERon15thMAR  
 Given I Delete Account Closures Entry from "DeleteAccountClosures" sheet
 	 |2693-RBI-EI-DB-DL-REC-Non-RNI-CTPD-DL-MD-TR-2-DIS-AccCL1stFEB-REPAYon2ndFEB-RunPERon2ndFEB-DELETEAccCL-REPAYLATE-RunPERon15thMAR-Newcreateloan1.xlsx|
 Given I setup the clients 
 Then I entered the values into client from "Input" sheet
	 |Createclient.xlsx|
 Then I should see client created successfully from "Output" sheet
	|Createclient.xlsx|
 When I set up the new create loan from "NewLoanInput" sheet
	|2693-RBI-EI-DB-DL-REC-Non-RNI-CTPD-DL-MD-TR-2-DIS-AccCL1stFEB-REPAYon2ndFEB-RunPERon2ndFEB-DELETEAccCL-REPAYLATE-RunPERon15thMAR-Newcreateloan1.xlsx|
 And I create Account Closures Entry from "CreateAccountClosures" sheet
 	|2693-RBI-EI-DB-DL-REC-Non-RNI-CTPD-DL-MD-TR-2-DIS-AccCL1stFEB-REPAYon2ndFEB-RunPERon2ndFEB-DELETEAccCL-REPAYLATE-RunPERon15thMAR-Newcreateloan1.xlsx|
 Then I make repayment and verified the following tabs
    |2693-RBI-EI-DB-DL-REC-Non-RNI-CTPD-DL-MD-TR-2-DIS-AccCL1stFEB-REPAYon2ndFEB-RunPERon2ndFEB-DELETEAccCL-REPAYLATE-RunPERon15thMAR-Newcreateloan1.xlsx|Repay1|
 Then I Execute Periodic Accrual Accounting
    |2693-RBI-EI-DB-DL-REC-Non-RNI-CTPD-DL-MD-TR-2-DIS-AccCL1stFEB-REPAYon2ndFEB-RunPERon2ndFEB-DELETEAccCL-REPAYLATE-RunPERon15thMAR-Newcreateloan1.xlsx|RunPeriodicAccrual|
 Then I Delete Account Closures Entry from "DeleteAccountClosures" sheet
 	 |2693-RBI-EI-DB-DL-REC-Non-RNI-CTPD-DL-MD-TR-2-DIS-AccCL1stFEB-REPAYon2ndFEB-RunPERon2ndFEB-DELETEAccCL-REPAYLATE-RunPERon15thMAR-Newcreateloan1.xlsx|
 And I navigate To Loan Account Page
 Then I make repayment and verified the following tabs
    |2693-RBI-EI-DB-DL-REC-Non-RNI-CTPD-DL-MD-TR-2-DIS-AccCL1stFEB-REPAYon2ndFEB-RunPERon2ndFEB-DELETEAccCL-REPAYLATE-RunPERon15thMAR-Newcreateloan1.xlsx|Repay2|
 Then I Execute Periodic Accrual Accounting
    |2693-RBI-EI-DB-DL-REC-Non-RNI-CTPD-DL-MD-TR-2-DIS-AccCL1stFEB-REPAYon2ndFEB-RunPERon2ndFEB-DELETEAccCL-REPAYLATE-RunPERon15thMAR-Newcreateloan1.xlsx|RunPeriodicAccrual1|Transactions|
 
@scenario82-2694-RBI-EI-DB-DL-REC-Non-RNI-CTPD-DL-MD-TR-2-DIS-AccCL1stFEB-REPAYon2ndFEB-RunPERon2ndFEB-DELETEAccCL-REPAYEARLY-RunPERon1stMAR
	  Scenario: 2694-RBI-EI-DB-DL-REC-Non-RNI-CTPD-DL-MD-TR-2-DIS-AccCL1stFEB-REPAYon2ndFEB-RunPERon2ndFEB-DELETEAccCL-REPAYEARLY-RunPERon1stMAR  
 Given I Delete Account Closures Entry from "DeleteAccountClosures" sheet
 	 |2694-RBI-EI-DB-DL-REC-Non-RNI-CTPD-DL-MD-TR-2-DIS-AccCL1stFEB-REPAYon2ndFEB-RunPERon2ndFEB-DELETEAccCL-REPAYEARLY-RunPERon1stMAR-Newcreateloan1.xlsx|
 Given I setup the clients 
 Then I entered the values into client from "Input" sheet
	 |Createclient.xlsx|
 Then I should see client created successfully from "Output" sheet
	|Createclient.xlsx|
 When I set up the new create loan from "NewLoanInput" sheet
	|2694-RBI-EI-DB-DL-REC-Non-RNI-CTPD-DL-MD-TR-2-DIS-AccCL1stFEB-REPAYon2ndFEB-RunPERon2ndFEB-DELETEAccCL-REPAYEARLY-RunPERon1stMAR-Newcreateloan1.xlsx|
 And I create Account Closures Entry from "CreateAccountClosures" sheet
 	|2694-RBI-EI-DB-DL-REC-Non-RNI-CTPD-DL-MD-TR-2-DIS-AccCL1stFEB-REPAYon2ndFEB-RunPERon2ndFEB-DELETEAccCL-REPAYEARLY-RunPERon1stMAR-Newcreateloan1.xlsx|
 Then I make repayment and verified the following tabs
    |2694-RBI-EI-DB-DL-REC-Non-RNI-CTPD-DL-MD-TR-2-DIS-AccCL1stFEB-REPAYon2ndFEB-RunPERon2ndFEB-DELETEAccCL-REPAYEARLY-RunPERon1stMAR-Newcreateloan1.xlsx|Repay1|
 Then I Execute Periodic Accrual Accounting
    |2694-RBI-EI-DB-DL-REC-Non-RNI-CTPD-DL-MD-TR-2-DIS-AccCL1stFEB-REPAYon2ndFEB-RunPERon2ndFEB-DELETEAccCL-REPAYEARLY-RunPERon1stMAR-Newcreateloan1.xlsx|RunPeriodicAccrual|
 Then I Delete Account Closures Entry from "DeleteAccountClosures" sheet
 	 |2694-RBI-EI-DB-DL-REC-Non-RNI-CTPD-DL-MD-TR-2-DIS-AccCL1stFEB-REPAYon2ndFEB-RunPERon2ndFEB-DELETEAccCL-REPAYEARLY-RunPERon1stMAR-Newcreateloan1.xlsx|
 And I navigate To Loan Account Page
 Then I make repayment and verified the following tabs
    |2694-RBI-EI-DB-DL-REC-Non-RNI-CTPD-DL-MD-TR-2-DIS-AccCL1stFEB-REPAYon2ndFEB-RunPERon2ndFEB-DELETEAccCL-REPAYEARLY-RunPERon1stMAR-Newcreateloan1.xlsx|Repay2|
 Then I Execute Periodic Accrual Accounting
    |2694-RBI-EI-DB-DL-REC-Non-RNI-CTPD-DL-MD-TR-2-DIS-AccCL1stFEB-REPAYon2ndFEB-RunPERon2ndFEB-DELETEAccCL-REPAYEARLY-RunPERon1stMAR-Newcreateloan1.xlsx|RunPeriodicAccrual1|Transactions|

@scenario83-2695-RBI-EI-DB-DL-REC-Non-RNI-CTPD-DL-MD-TR-2-DIS-AccCL1stFEB-RunPERon1stFEB-DELETEAccCL-RunPERON1stFEB
	  Scenario: 2695-RBI-EI-DB-DL-REC-Non-RNI-CTPD-DL-MD-TR-2-DIS-AccCL1stFEB-RunPERon1stFEB-DELETEAccCL-RunPERON1stFEB  
 Given I Delete Account Closures Entry from "DeleteAccountClosures" sheet
 	 |2695-RBI-EI-DB-DL-REC-Non-RNI-CTPD-DL-MD-TR-2-DIS-AccCL1stFEB-RunPERon1stFEB-DELETEAccCL-RunPERON1stFEB-Newcreateloan1.xlsx|
 Given I setup the clients 
 Then I entered the values into client from "Input" sheet
	 |Createclient.xlsx|
 Then I should see client created successfully from "Output" sheet
	|Createclient.xlsx|
 When I set up the new create loan from "NewLoanInput" sheet
	|2695-RBI-EI-DB-DL-REC-Non-RNI-CTPD-DL-MD-TR-2-DIS-AccCL1stFEB-RunPERon1stFEB-DELETEAccCL-RunPERON1stFEB-Newcreateloan1.xlsx|
 And I create Account Closures Entry from "CreateAccountClosures" sheet
 	|2695-RBI-EI-DB-DL-REC-Non-RNI-CTPD-DL-MD-TR-2-DIS-AccCL1stFEB-RunPERon1stFEB-DELETEAccCL-RunPERON1stFEB-Newcreateloan1.xlsx|
 Then I Execute Periodic Accrual Accounting
    |2695-RBI-EI-DB-DL-REC-Non-RNI-CTPD-DL-MD-TR-2-DIS-AccCL1stFEB-RunPERon1stFEB-DELETEAccCL-RunPERON1stFEB-Newcreateloan1.xlsx|RunPeriodicAccrual|
 Then I Delete Account Closures Entry from "DeleteAccountClosures" sheet
 	 |2695-RBI-EI-DB-DL-REC-Non-RNI-CTPD-DL-MD-TR-2-DIS-AccCL1stFEB-RunPERon1stFEB-DELETEAccCL-RunPERON1stFEB-Newcreateloan1.xlsx|
 And I navigate To Loan Account Page
 Then I Execute Periodic Accrual Accounting
    |2695-RBI-EI-DB-DL-REC-Non-RNI-CTPD-DL-MD-TR-2-DIS-AccCL1stFEB-RunPERon1stFEB-DELETEAccCL-RunPERON1stFEB-Newcreateloan1.xlsx|RunPeriodicAccrual1|Transactions|

@scenario84-2696-RBI-EI-DB-DL-REC-Non-RNI-CTPD-DL-MD-TR-2-DIS-AccCL1stFEB-RunPERon1stFEB-DELETEAccCL-RunPERON1stFEB-AccCL1stFEB-RunPERON1stFEB
	  Scenario: 2696-RBI-EI-DB-DL-REC-Non-RNI-CTPD-DL-MD-TR-2-DIS-AccCL1stFEB-RunPERon1stFEB-DELETEAccCL-RunPERON1stFEB-AccCL1stFEB-RunPERON1stFEB  
 Given I Delete Account Closures Entry from "DeleteAccountClosures" sheet
 	 |2696-RBI-EI-DB-DL-REC-Non-RNI-CTPD-DL-MD-TR-2-DIS-AccCL1stFEB-RunPERon1stFEB-DELETEAccCL-RunPERON1stFEB-AccCL1stFEB-RunPERON1stFEB-Newcreateloan1.xlsx|
 Given I setup the clients 
 Then I entered the values into client from "Input" sheet
	 |Createclient.xlsx|
 Then I should see client created successfully from "Output" sheet
	|Createclient.xlsx|
 When I set up the new create loan from "NewLoanInput" sheet
	|2696-RBI-EI-DB-DL-REC-Non-RNI-CTPD-DL-MD-TR-2-DIS-AccCL1stFEB-RunPERon1stFEB-DELETEAccCL-RunPERON1stFEB-AccCL1stFEB-RunPERON1stFEB-Newcreateloan1.xlsx|
 And I create Account Closures Entry from "CreateAccountClosures" sheet
 	|2696-RBI-EI-DB-DL-REC-Non-RNI-CTPD-DL-MD-TR-2-DIS-AccCL1stFEB-RunPERon1stFEB-DELETEAccCL-RunPERON1stFEB-AccCL1stFEB-RunPERON1stFEB-Newcreateloan1.xlsx|
 Then I Execute Periodic Accrual Accounting
    |2696-RBI-EI-DB-DL-REC-Non-RNI-CTPD-DL-MD-TR-2-DIS-AccCL1stFEB-RunPERon1stFEB-DELETEAccCL-RunPERON1stFEB-AccCL1stFEB-RunPERON1stFEB-Newcreateloan1.xlsx|RunPeriodicAccrual|
 Then I Delete Account Closures Entry from "DeleteAccountClosures" sheet
 	 |2696-RBI-EI-DB-DL-REC-Non-RNI-CTPD-DL-MD-TR-2-DIS-AccCL1stFEB-RunPERon1stFEB-DELETEAccCL-RunPERON1stFEB-AccCL1stFEB-RunPERON1stFEB-Newcreateloan1.xlsx|
 And I navigate To Loan Account Page
 Then I Execute Periodic Accrual Accounting
    |2696-RBI-EI-DB-DL-REC-Non-RNI-CTPD-DL-MD-TR-2-DIS-AccCL1stFEB-RunPERon1stFEB-DELETEAccCL-RunPERON1stFEB-AccCL1stFEB-RunPERON1stFEB-Newcreateloan1.xlsx|RunPeriodicAccrual1|
 And I create Account Closures Entry from "CreateAccountClosures" sheet
 	|2696-RBI-EI-DB-DL-REC-Non-RNI-CTPD-DL-MD-TR-2-DIS-AccCL1stFEB-RunPERon1stFEB-DELETEAccCL-RunPERON1stFEB-AccCL1stFEB-RunPERON1stFEB-Newcreateloan1.xlsx|
 Then I Execute Periodic Accrual Accounting
    |2696-RBI-EI-DB-DL-REC-Non-RNI-CTPD-DL-MD-TR-2-DIS-AccCL1stFEB-RunPERon1stFEB-DELETEAccCL-RunPERON1stFEB-AccCL1stFEB-RunPERON1stFEB-Newcreateloan1.xlsx|RunPeriodicAccrual2|

@scenario85-2697-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-REPAY-AccCL1stFEB-DISTR2on1stFEB
	  Scenario: 2697-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-REPAY-AccCL1stFEB-DISTR2on1stFEB  
 Given I Delete Account Closures Entry from "DeleteAccountClosures" sheet
 	 |2697-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-REPAY-AccCL1stFEB-DISTR2on1stFEB-Newcreateloan1.xlsx|
 Given I setup the clients 
 Then I entered the values into client from "Input" sheet
	 |Createclient.xlsx|
 Then I should see client created successfully from "Output" sheet
	 |Createclient.xlsx|
 When I set up the new create loan from "NewLoanInput" sheet
	 |2697-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-REPAY-AccCL1stFEB-DISTR2on1stFEB-Newcreateloan1.xlsx|
 Then I make repayment and verified the following tabs
    |2697-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-REPAY-AccCL1stFEB-DISTR2on1stFEB-Newcreateloan1.xlsx|Repay1|
 And I create Account Closures Entry from "CreateAccountClosures" sheet
 	 |2697-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-REPAY-AccCL1stFEB-DISTR2on1stFEB-Newcreateloan1.xlsx|
 Then I disburse loan from "Second Tranch" sheet
     |2697-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-REPAY-AccCL1stFEB-DISTR2on1stFEB-Newcreateloan1.xlsx|	

@scenario86-2698-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-EARLY-REPAY-AccCL1stFEB-DISTR2on2ndFEB
	  Scenario: 2698-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-EARLY-REPAY-AccCL1stFEB-DISTR2on2ndFEB  
 Given I Delete Account Closures Entry from "DeleteAccountClosures" sheet
 	 |2698-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-EARLY-REPAY-AccCL1stFEB-DISTR2on2ndFEB-Newcreateloan1.xlsx|
 Given I setup the clients 
 Then I entered the values into client from "Input" sheet
	 |Createclient.xlsx|
 Then I should see client created successfully from "Output" sheet
	 |Createclient.xlsx|
 When I set up the new create loan from "NewLoanInput" sheet
	 |2698-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-EARLY-REPAY-AccCL1stFEB-DISTR2on2ndFEB-Newcreateloan1.xlsx|
 Then I make repayment and verified the following tabs
    |2698-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-EARLY-REPAY-AccCL1stFEB-DISTR2on2ndFEB-Newcreateloan1.xlsx|Repay1|
 And I create Account Closures Entry from "CreateAccountClosures" sheet
 	 |2698-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-EARLY-REPAY-AccCL1stFEB-DISTR2on2ndFEB-Newcreateloan1.xlsx|
 Then I disburse loan from "Second Tranch" sheet
     |2698-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-EARLY-REPAY-AccCL1stFEB-DISTR2on2ndFEB-Newcreateloan1.xlsx|
 And I verified the "Transactions" details successfully 
	|2698-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-EARLY-REPAY-AccCL1stFEB-DISTR2on2ndFEB-Newcreateloan1.xlsx|
 
@scenario87-2699-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-LATE-REPAY-AccCL1stFEB-DISTR2on31JAN
	  Scenario: 2699-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-LATE-REPAY-AccCL1stFEB-DISTR2on31JAN  
 Given I Delete Account Closures Entry from "DeleteAccountClosures" sheet
 	 |2699-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-LATE-REPAY-AccCL1stFEB-DISTR2on31JAN-Newcreateloan1.xlsx|
 Given I setup the clients 
 Then I entered the values into client from "Input" sheet
	 |Createclient.xlsx|
 Then I should see client created successfully from "Output" sheet
	 |Createclient.xlsx|
 When I set up the new create loan from "NewLoanInput" sheet
	 |2699-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-LATE-REPAY-AccCL1stFEB-DISTR2on31JAN-Newcreateloan1.xlsx|
 Then I make repayment and verified the following tabs
    |2699-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-LATE-REPAY-AccCL1stFEB-DISTR2on31JAN-Newcreateloan1.xlsx|Repay1|
 And I create Account Closures Entry from "CreateAccountClosures" sheet
 	 |2699-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-LATE-REPAY-AccCL1stFEB-DISTR2on31JAN-Newcreateloan1.xlsx|
 Then I disburse loan from "Second Tranch" sheet
     |2699-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-LATE-REPAY-AccCL1stFEB-DISTR2on31JAN-Newcreateloan1.xlsx|
     
@scenario88-2700-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-DIS-AccCL1stFEB-DISTR2on1stFEB
	  Scenario: 2700-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-DIS-AccCL1stFEB-DISTR2on1stFEB  
 Given I Delete Account Closures Entry from "DeleteAccountClosures" sheet
 	 |2700-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-DIS-AccCL1stFEB-DISTR2on1stFEB-Newcreateloan1.xlsx|
 Given I setup the clients 
 Then I entered the values into client from "Input" sheet
	 |Createclient.xlsx|
 Then I should see client created successfully from "Output" sheet
	 |Createclient.xlsx|
 When I set up the new create loan from "NewLoanInput" sheet
	 |2700-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-DIS-AccCL1stFEB-DISTR2on1stFEB-Newcreateloan1.xlsx|
 And I create Account Closures Entry from "CreateAccountClosures" sheet
 	 |2700-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-DIS-AccCL1stFEB-DISTR2on1stFEB-Newcreateloan1.xlsx|
 Then I disburse loan from "Second Tranch" sheet
     |2700-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-DIS-AccCL1stFEB-DISTR2on1stFEB-Newcreateloan1.xlsx|

@scenario89-2701-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-DIS-AccCL1stFEB-DISTR2on2ndFEB-RunPERon1stFEB
	  Scenario: 2701-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-DIS-AccCL1stFEB-DISTR2on2ndFEB-RunPERon1stFEB  
 Given I Delete Account Closures Entry from "DeleteAccountClosures" sheet
 	 |2701-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-DIS-AccCL1stFEB-DISTR2on2ndFEB-RunPERon1stFEB-Newcreateloan1.xlsx|
 Given I setup the clients 
 Then I entered the values into client from "Input" sheet
	 |Createclient.xlsx|
 Then I should see client created successfully from "Output" sheet
	 |Createclient.xlsx|
 When I set up the new create loan from "NewLoanInput" sheet
	 |2701-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-DIS-AccCL1stFEB-DISTR2on2ndFEB-RunPERon1stFEB-Newcreateloan1.xlsx|
 And I create Account Closures Entry from "CreateAccountClosures" sheet
 	 |2701-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-DIS-AccCL1stFEB-DISTR2on2ndFEB-RunPERon1stFEB-Newcreateloan1.xlsx|
 Then I disburse loan from "Second Tranch" sheet
     |2701-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-DIS-AccCL1stFEB-DISTR2on2ndFEB-RunPERon1stFEB-Newcreateloan1.xlsx|
 Then I Execute Periodic Accrual Accounting
     |2701-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-DIS-AccCL1stFEB-DISTR2on2ndFEB-RunPERon1stFEB-Newcreateloan1.xlsx|RunPeriodicAccrual|

@scenario90-2702-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-DIS-AccCL1stFEB-DISTR2on2ndFEB-RunPERon2ndFEB
	  Scenario: 2702-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-DIS-AccCL1stFEB-DISTR2on2ndFEB-RunPERon2ndFEB  
 Given I Delete Account Closures Entry from "DeleteAccountClosures" sheet
 	 |2702-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-DIS-AccCL1stFEB-DISTR2on2ndFEB-RunPERon2ndFEB-Newcreateloan1.xlsx|
 Given I setup the clients 
 Then I entered the values into client from "Input" sheet
	 |Createclient.xlsx|
 Then I should see client created successfully from "Output" sheet
	 |Createclient.xlsx|
 When I set up the new create loan from "NewLoanInput" sheet
	 |2702-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-DIS-AccCL1stFEB-DISTR2on2ndFEB-RunPERon2ndFEB-Newcreateloan1.xlsx|
 And I create Account Closures Entry from "CreateAccountClosures" sheet
 	 |2702-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-DIS-AccCL1stFEB-DISTR2on2ndFEB-RunPERon2ndFEB-Newcreateloan1.xlsx|
 Then I disburse loan from "Second Tranch" sheet
     |2702-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-DIS-AccCL1stFEB-DISTR2on2ndFEB-RunPERon2ndFEB-Newcreateloan1.xlsx|
 Then I Execute Periodic Accrual Accounting
     |2702-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-DIS-AccCL1stFEB-DISTR2on2ndFEB-RunPERon2ndFEB-Newcreateloan1.xlsx|RunPeriodicAccrual|

@scenario91-2703-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-EARLYREPAY-RunPERon31JAN-AccCL31JAN-DISTR2on31JAN
	  Scenario: 2703-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-EARLYREPAY-RunPERon31JAN-AccCL31JAN-DISTR2on31JAN  
 Given I Delete Account Closures Entry from "DeleteAccountClosures" sheet
 	 |2703-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-EARLYREPAY-RunPERon31JAN-AccCL31JAN-DISTR2on31JAN-Newcreateloan1.xlsx|
 Given I setup the clients 
 Then I entered the values into client from "Input" sheet
	 |Createclient.xlsx|
 Then I should see client created successfully from "Output" sheet
	 |Createclient.xlsx|
 When I set up the new create loan from "NewLoanInput" sheet
	 |2703-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-EARLYREPAY-RunPERon31JAN-AccCL31JAN-DISTR2on31JAN-Newcreateloan1.xlsx|
 Then I make repayment and verified the following tabs
    |2703-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-EARLYREPAY-RunPERon31JAN-AccCL31JAN-DISTR2on31JAN-Newcreateloan1.xlsx|Repay1|
 Then I Execute Periodic Accrual Accounting
     |2703-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-EARLYREPAY-RunPERon31JAN-AccCL31JAN-DISTR2on31JAN-Newcreateloan1.xlsx|RunPeriodicAccrual|
 And I create Account Closures Entry from "CreateAccountClosures" sheet
 	 |2703-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-EARLYREPAY-RunPERon31JAN-AccCL31JAN-DISTR2on31JAN-Newcreateloan1.xlsx|
 Then I disburse loan from "Second Tranch" sheet
     |2703-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-EARLYREPAY-RunPERon31JAN-AccCL31JAN-DISTR2on31JAN-Newcreateloan1.xlsx|
 
@scenario92-2704-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-EARLYREPAY-RunPERon31JAN-AccCL31JAN-DISTR2on10thFEB
	  Scenario: 2704-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-EARLYREPAY-RunPERon31JAN-AccCL31JAN-DISTR2on10thFEB  
 Given I Delete Account Closures Entry from "DeleteAccountClosures" sheet
 	 |2704-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-EARLYREPAY-RunPERon31JAN-AccCL31JAN-DISTR2on10thFEB-Newcreateloan1.xlsx|
 Given I setup the clients 
 Then I entered the values into client from "Input" sheet
	 |Createclient.xlsx|
 Then I should see client created successfully from "Output" sheet
	 |Createclient.xlsx|
 When I set up the new create loan from "NewLoanInput" sheet
	 |2704-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-EARLYREPAY-RunPERon31JAN-AccCL31JAN-DISTR2on10thFEB-Newcreateloan1.xlsx|
 Then I make repayment and verified the following tabs
    |2704-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-EARLYREPAY-RunPERon31JAN-AccCL31JAN-DISTR2on10thFEB-Newcreateloan1.xlsx|Repay1|
 Then I Execute Periodic Accrual Accounting
     |2704-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-EARLYREPAY-RunPERon31JAN-AccCL31JAN-DISTR2on10thFEB-Newcreateloan1.xlsx|RunPeriodicAccrual|
 And I create Account Closures Entry from "CreateAccountClosures" sheet
 	 |2704-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-EARLYREPAY-RunPERon31JAN-AccCL31JAN-DISTR2on10thFEB-Newcreateloan1.xlsx|
 Then I disburse loan from "Second Tranch" sheet
     |2704-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-EARLYREPAY-RunPERon31JAN-AccCL31JAN-DISTR2on10thFEB-Newcreateloan1.xlsx|
 And I verified the "Transactions" details successfully	
	 |2704-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-EARLYREPAY-RunPERon31JAN-AccCL31JAN-DISTR2on10thFEB-Newcreateloan1.xlsx|

@scenario93-2705-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-MODAPP-DISTR1-AccCL28FEB-DISTR2on10thFEB
	  Scenario: 2705-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-MODAPP-DISTR1-AccCL28FEB-DISTR2on10thFEB  
 Given I Delete Account Closures Entry from "DeleteAccountClosures" sheet
 	 |2705-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-MODAPP-DISTR1-AccCL28FEB-DISTR2on10thFEB-Newcreateloan1.xlsx|
 Given I setup the clients 
 Then I entered the values into client from "Input" sheet
	 |Createclient.xlsx|
 Then I should see client created successfully from "Output" sheet
	 |Createclient.xlsx|
 When I set up the new create loan from "NewLoanInput" sheet
	 |2705-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-MODAPP-DISTR1-AccCL28FEB-DISTR2on10thFEB-Newcreateloan1.xlsx|
 And I modify New Loan Account from "ModifyLoan" sheet
	 |2705-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-MODAPP-DISTR1-AccCL28FEB-DISTR2on10thFEB-Newcreateloan1.xlsx|
 And I create Account Closures Entry from "CreateAccountClosures" sheet
 	 |2705-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-MODAPP-DISTR1-AccCL28FEB-DISTR2on10thFEB-Newcreateloan1.xlsx|
 Then I disburse loan from "Second Tranch" sheet
     |2705-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-MODAPP-DISTR1-AccCL28FEB-DISTR2on10thFEB-Newcreateloan1.xlsx|

@scenario94-2706-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-MODAPP-AccCL10JAN-DISTR10JAN
	  Scenario: 2706-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-MODAPP-AccCL10JAN-DISTR10JAN  
 Given I Delete Account Closures Entry from "DeleteAccountClosures" sheet
 	 |2706-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-MODAPP-AccCL10JAN-DISTR10JAN-Newcreateloan1.xlsx|
 Given I setup the clients 
 Then I entered the values into client from "Input" sheet
	 |Createclient.xlsx|
 Then I should see client created successfully from "Output" sheet
	 |Createclient.xlsx|
 When I set up the new create loan from "NewLoanInput" sheet
	 |2706-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-MODAPP-AccCL10JAN-DISTR10JAN-Newcreateloan1.xlsx|
 And I modify New Loan Account from "ModifyLoan" sheet
	 |2706-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-MODAPP-AccCL10JAN-DISTR10JAN-Newcreateloan1.xlsx|
 And I create Account Closures Entry from "CreateAccountClosures" sheet
 	 |2706-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-MODAPP-AccCL10JAN-DISTR10JAN-Newcreateloan1.xlsx|
 Then I disburse loan from "Second Tranch" sheet
     |2706-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-MODAPP-AccCL10JAN-DISTR10JAN-Newcreateloan1.xlsx|
     
@scenario95-2707-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-MODAPP-DISTR20JAN-AccCL10FEB-RunPERon10thFEB
	  Scenario: 2707-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-MODAPP-DISTR20JAN-AccCL10FEB-RunPERon10thFEB  
 Given I Delete Account Closures Entry from "DeleteAccountClosures" sheet
 	 |2707-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-MODAPP-DISTR20JAN-AccCL10FEB-RunPERon10thFEB-Newcreateloan1.xlsx|
 Given I setup the clients 
 Then I entered the values into client from "Input" sheet
	 |Createclient.xlsx|
 Then I should see client created successfully from "Output" sheet
	 |Createclient.xlsx|
 When I set up the new create loan from "NewLoanInput" sheet
	 |2707-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-MODAPP-DISTR20JAN-AccCL10FEB-RunPERon10thFEB-Newcreateloan1.xlsx|
 And I modify New Loan Account from "ModifyLoan" sheet
	 |2707-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-MODAPP-DISTR20JAN-AccCL10FEB-RunPERon10thFEB-Newcreateloan1.xlsx|
 And I create Account Closures Entry from "CreateAccountClosures" sheet
 	 |2707-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-MODAPP-DISTR20JAN-AccCL10FEB-RunPERon10thFEB-Newcreateloan1.xlsx|
 Then I disburse loan from "Second Tranch" sheet
     |2707-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-MODAPP-DISTR20JAN-AccCL10FEB-RunPERon10thFEB-Newcreateloan1.xlsx|     

@scenario96-2708-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-DuringAPRAddTR2-DISTR01JAN-AccCL01FEB-RunPERon31stJAN
	  Scenario: 2708-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-DuringAPRAddTR2-DISTR01JAN-AccCL01FEB-RunPERon31stJAN  
 Given I Delete Account Closures Entry from "DeleteAccountClosures" sheet
 	 |2708-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-DuringAPRAddTR2-DISTR01JAN-AccCL01FEB-RunPERon31stJAN-Newcreateloan1.xlsx|
 Given I setup the clients 
 Then I entered the values into client from "Input" sheet
	 |Createclient.xlsx|
 Then I should see client created successfully from "Output" sheet
	 |Createclient.xlsx|
 When I set up the new create loan from "NewLoanInput" sheet
	 |2708-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-DuringAPRAddTR2-DISTR01JAN-AccCL01FEB-RunPERon31stJAN-Newcreateloan1.xlsx|
 And I create Account Closures Entry from "CreateAccountClosures" sheet
 	 |2708-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-DuringAPRAddTR2-DISTR01JAN-AccCL01FEB-RunPERon31stJAN-Newcreateloan1.xlsx|
 Then I Execute Periodic Accrual Accounting
     |2708-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-DuringAPRAddTR2-DISTR01JAN-AccCL01FEB-RunPERon31stJAN-Newcreateloan1.xlsx|RunPeriodicAccrual|

@scenario97-2709-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-DuringAPRAddTR2-DISTR2on15JAN-AccCL01FEB-RunPERon01FEB
	  Scenario: 2709-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-DuringAPRAddTR2-DISTR2on15JAN-AccCL01FEB-RunPERon01FEB  
 Given I Delete Account Closures Entry from "DeleteAccountClosures" sheet
 	 |2709-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-DuringAPRAddTR2-DISTR2on15JAN-AccCL01FEB-RunPERon01FEB-Newcreateloan1.xlsx|
 Given I setup the clients 
 Then I entered the values into client from "Input" sheet
	 |Createclient.xlsx|
 Then I should see client created successfully from "Output" sheet
	 |Createclient.xlsx|
 When I set up the new create loan from "NewLoanInput" sheet
	 |2709-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-DuringAPRAddTR2-DISTR2on15JAN-AccCL01FEB-RunPERon01FEB-Newcreateloan1.xlsx|
 Then I disburse loan from "Second Tranch" sheet
     |2709-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-DuringAPRAddTR2-DISTR2on15JAN-AccCL01FEB-RunPERon01FEB-Newcreateloan1.xlsx|     
 And I create Account Closures Entry from "CreateAccountClosures" sheet
 	 |2709-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-DuringAPRAddTR2-DISTR2on15JAN-AccCL01FEB-RunPERon01FEB-Newcreateloan1.xlsx|
 Then I Execute Periodic Accrual Accounting
     |2709-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-DuringAPRAddTR2-DISTR2on15JAN-AccCL01FEB-RunPERon01FEB-Newcreateloan1.xlsx|RunPeriodicAccrual|

@scenario98-2710-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-DuringAPRAddTR2-DISTR2on1FEB-AccCL02MAR-Repayon03MAR
	  Scenario: 2710-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-DuringAPRAddTR2-DISTR2on1FEB-AccCL02MAR-Repayon03MAR  
 Given I Delete Account Closures Entry from "DeleteAccountClosures" sheet
 	 |2710-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-DuringAPRAddTR2-DISTR2on1FEB-AccCL02MAR-Repayon03MAR-Newcreateloan1.xlsx|
 Given I setup the clients 
 Then I entered the values into client from "Input" sheet
	 |Createclient.xlsx|
 Then I should see client created successfully from "Output" sheet
	 |Createclient.xlsx|
 When I set up the new create loan from "NewLoanInput" sheet
	 |2710-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-DuringAPRAddTR2-DISTR2on1FEB-AccCL02MAR-Repayon03MAR-Newcreateloan1.xlsx|
 Then I disburse loan from "Second Tranch" sheet
     |2710-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-DuringAPRAddTR2-DISTR2on1FEB-AccCL02MAR-Repayon03MAR-Newcreateloan1.xlsx|     
 And I create Account Closures Entry from "CreateAccountClosures" sheet
 	 |2710-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-DuringAPRAddTR2-DISTR2on1FEB-AccCL02MAR-Repayon03MAR-Newcreateloan1.xlsx|
 Then I make repayment and verified the following tabs
     |2710-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-DuringAPRAddTR2-DISTR2on1FEB-AccCL02MAR-Repayon03MAR-Newcreateloan1.xlsx|Repay1|Transactions|

@scenario99-2711-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-DuringAPREDITTR2-AccCL15JAN-DISTR20JAN-RunPERON25JAN2014
	  Scenario: 2711-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-DuringAPREDITTR2-AccCL15JAN-DISTR20JAN-RunPERON25JAN2014  
 Given I Delete Account Closures Entry from "DeleteAccountClosures" sheet
 	 |2711-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-DuringAPREDITTR2-AccCL15JAN-DISTR20JAN-RunPERON25JAN2014-Newcreateloan1.xlsx|
 Given I setup the clients 
 Then I entered the values into client from "Input" sheet
	 |Createclient.xlsx|
 Then I should see client created successfully from "Output" sheet
	 |Createclient.xlsx|
 When I set up the new create loan from "NewLoanInput" sheet
	 |2711-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-DuringAPREDITTR2-AccCL15JAN-DISTR20JAN-RunPERON25JAN2014-Newcreateloan1.xlsx|
 And I create Account Closures Entry from "CreateAccountClosures" sheet
 	 |2711-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-DuringAPREDITTR2-AccCL15JAN-DISTR20JAN-RunPERON25JAN2014-Newcreateloan1.xlsx|
 Then I disburse loan from "Second Tranch" sheet
     |2711-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-DuringAPREDITTR2-AccCL15JAN-DISTR20JAN-RunPERON25JAN2014-Newcreateloan1.xlsx|     
 Then I Execute Periodic Accrual Accounting
     |2711-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-DuringAPREDITTR2-AccCL15JAN-DISTR20JAN-RunPERON25JAN2014-Newcreateloan1.xlsx|RunPeriodicAccrual|Transactions|

@scenario100-2712-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-DuringAPRADDTR2-DISTR20JAN-AccCL1FEB-RunPERON1FEB
	  Scenario: 2712-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-DuringAPRADDTR2-DISTR20JAN-AccCL1FEB-RunPERON1FEB  
 Given I Delete Account Closures Entry from "DeleteAccountClosures" sheet
 	 |2712-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-DuringAPRADDTR2-DISTR20JAN-AccCL1FEB-RunPERON1FEB-Newcreateloan1.xlsx|
 Given I setup the clients 
 Then I entered the values into client from "Input" sheet
	 |Createclient.xlsx|
 Then I should see client created successfully from "Output" sheet
	 |Createclient.xlsx|
 When I set up the new create loan from "NewLoanInput" sheet
	 |2712-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-DuringAPRADDTR2-DISTR20JAN-AccCL1FEB-RunPERON1FEB-Newcreateloan1.xlsx|
 Then I disburse loan from "Second Tranch" sheet
     |2712-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-DuringAPRADDTR2-DISTR20JAN-AccCL1FEB-RunPERON1FEB-Newcreateloan1.xlsx|     
 And I create Account Closures Entry from "CreateAccountClosures" sheet
 	 |2712-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-DuringAPRADDTR2-DISTR20JAN-AccCL1FEB-RunPERON1FEB-Newcreateloan1.xlsx|
 Then I Execute Periodic Accrual Accounting
     |2712-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-DuringAPRADDTR2-DISTR20JAN-AccCL1FEB-RunPERON1FEB-Newcreateloan1.xlsx|RunPeriodicAccrual|

@scenario101-2713-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-DISTR1-AccCL28FEB-DISTR2on10thFEB
	  Scenario: 2713-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-DISTR1-AccCL28FEB-DISTR2on10thFEB  
 Given I Delete Account Closures Entry from "DeleteAccountClosures" sheet
 	 |2713-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-DISTR1-AccCL28FEB-DISTR2on10thFEB-Newcreateloan1.xlsx|
 Given I setup the clients 
 Then I entered the values into client from "Input" sheet
	 |Createclient.xlsx|
 Then I should see client created successfully from "Output" sheet
	 |Createclient.xlsx|
 When I set up the new create loan from "NewLoanInput" sheet
	 |2713-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-DISTR1-AccCL28FEB-DISTR2on10thFEB-Newcreateloan1.xlsx|
 And I create Account Closures Entry from "CreateAccountClosures" sheet
 	 |2713-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-DISTR1-AccCL28FEB-DISTR2on10thFEB-Newcreateloan1.xlsx|
 Then I disburse loan from "Second Tranch" sheet
     |2713-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-DISTR1-AccCL28FEB-DISTR2on10thFEB-Newcreateloan1.xlsx|    
     
@scenario102-2714-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-DISTR1JAN-DISTR2on01stFEB-AccCL01MARCH-UNDODISBURSE
	  Scenario: 2714-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-DISTR1JAN-DISTR2on01stFEB-AccCL01MARCH-UNDODISBURSE  
 Given I Delete Account Closures Entry from "DeleteAccountClosures" sheet
 	 |2714-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-DISTR1JAN-DISTR2on01stFEB-AccCL01MARCH-UNDODISBURSE-Newcreateloan1.xlsx|
 Given I setup the clients 
 Then I entered the values into client from "Input" sheet
	 |Createclient.xlsx|
 Then I should see client created successfully from "Output" sheet
	 |Createclient.xlsx|
 When I set up the new create loan from "NewLoanInput" sheet
	 |2714-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-DISTR1JAN-DISTR2on01stFEB-AccCL01MARCH-UNDODISBURSE-Newcreateloan1.xlsx|
 Then I disburse loan from "Second Tranch" sheet
     |2714-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-DISTR1JAN-DISTR2on01stFEB-AccCL01MARCH-UNDODISBURSE-Newcreateloan1.xlsx|     
 And I create Account Closures Entry from "CreateAccountClosures" sheet
 	 |2714-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-DISTR1JAN-DISTR2on01stFEB-AccCL01MARCH-UNDODISBURSE-Newcreateloan1.xlsx|
 Then I "Do Undo Disbursal" and verified the following tabs
	|2714-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-DISTR1JAN-DISTR2on01stFEB-AccCL01MARCH-UNDODISBURSE-Newcreateloan1.xlsx|Undo Disbursal|

@scenario103-2715-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-DISTR1JAN-DISTR2on01stFEB-AccCL01MARCH-DELETEAccCL-UNDODISBURSE
	  Scenario: 2715-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-DISTR1JAN-DISTR2on01stFEB-AccCL01MARCH-DELETEAccCL-UNDODISBURSE  
 Given I Delete Account Closures Entry from "DeleteAccountClosures" sheet
 	 |2715-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-DISTR1JAN-DISTR2on01stFEB-AccCL01MARCH-DELETEAccCL-UNDODISBURSE-Newcreateloan1.xlsx|
 Given I setup the clients 
 Then I entered the values into client from "Input" sheet
	 |Createclient.xlsx|
 Then I should see client created successfully from "Output" sheet
	 |Createclient.xlsx|
 When I set up the new create loan from "NewLoanInput" sheet
	 |2715-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-DISTR1JAN-DISTR2on01stFEB-AccCL01MARCH-DELETEAccCL-UNDODISBURSE-Newcreateloan1.xlsx|
 Then I disburse loan from "Second Tranch" sheet
     |2715-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-DISTR1JAN-DISTR2on01stFEB-AccCL01MARCH-DELETEAccCL-UNDODISBURSE-Newcreateloan1.xlsx|     
 And I create Account Closures Entry from "CreateAccountClosures" sheet
 	 |2715-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-DISTR1JAN-DISTR2on01stFEB-AccCL01MARCH-DELETEAccCL-UNDODISBURSE-Newcreateloan1.xlsx|
 Then I Delete Account Closures Entry from "DeleteAccountClosures" sheet
 	 |2715-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-DISTR1JAN-DISTR2on01stFEB-AccCL01MARCH-DELETEAccCL-UNDODISBURSE-Newcreateloan1.xlsx|
 
@scenario104-2716-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-DISTR1JAN-DISTR2on01stFEB-AccCL01MARCH-ReapayON1MAR
	  Scenario: 2716-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-DISTR1JAN-DISTR2on01stFEB-AccCL01MARCH-ReapayON1MAR  
 Given I Delete Account Closures Entry from "DeleteAccountClosures" sheet
 	 |2716-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-DISTR1JAN-DISTR2on01stFEB-AccCL01MARCH-ReapayON1MAR-Newcreateloan1.xlsx|
 Given I setup the clients 
 Then I entered the values into client from "Input" sheet
	 |Createclient.xlsx|
 Then I should see client created successfully from "Output" sheet
	 |Createclient.xlsx|
 When I set up the new create loan from "NewLoanInput" sheet
	 |2716-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-DISTR1JAN-DISTR2on01stFEB-AccCL01MARCH-ReapayON1MAR-Newcreateloan1.xlsx|
 Then I disburse loan from "Second Tranch" sheet
     |2716-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-DISTR1JAN-DISTR2on01stFEB-AccCL01MARCH-ReapayON1MAR-Newcreateloan1.xlsx|     
 And I create Account Closures Entry from "CreateAccountClosures" sheet
 	 |2716-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-DISTR1JAN-DISTR2on01stFEB-AccCL01MARCH-ReapayON1MAR-Newcreateloan1.xlsx|
 Then I make repayment and verified the following tabs
     |2716-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-DISTR1JAN-DISTR2on01stFEB-AccCL01MARCH-ReapayON1MAR-Newcreateloan1.xlsx|Repay1|
 Then i validate and Verify from "Output" sheet
	|2716-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-DISTR1JAN-DISTR2on01stFEB-AccCL01MARCH-ReapayON1MAR-Newcreateloan1.xlsx|
       			
	 	 	  			    			
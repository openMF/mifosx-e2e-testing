Feature:LoanOtherScenarios

Background:
	Given I navigate to mifos
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
    |3515-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-PERIODIC-OVERDUE-FEE-FLAT-PENALTY-FRE-1-Makerepayment1.xlsx|Acc_Disbursement|Acc_RepaymentDisbursement|Acc_Repayment|Acc_Periodic|	  			    			

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
	 	 	  			    			
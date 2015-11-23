Feature:Tests

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
	 #  |Loanproduct.xlsx|
	 	|3504-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-DISBURSE-FEE-%APR-AMT-Reg-PERIODIC-Loanproduct.xlsx|
		
@scenario1-3500-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-DISBURSE-FEE-%APR-AMT-Reg-PERIODIC	   
	  Scenario: 3500-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-DISBURSE-FEE-%APR-AMT-Reg-PERIODIC  

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

@scenario1-3501-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-DISBURSE-FEE-%APR-AMT-Reg-PERIODIC	   
	  Scenario: 3501-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-DISBURSE-FEE-%APR-AMT-Reg-PERIODIC  

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

@scenario1-3502-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-DISBURSE-FEE-%APR-AMT-Reg-PERIODIC
	  Scenario: 3502-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-DISBURSE-FEE-%APR-AMT-Reg-PERIODIC  

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
	 			
@scenario1-3503-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-DISBURSE-FEE-%APR-AMT-Reg-PERIODIC
	  Scenario: 3503-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-DISBURSE-FEE-%APR-AMT-Reg-PERIODIC  

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

  @scenario1-3504-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-DISBURSE-FEE-%APR-AMT-Reg-PERIODIC
	  Scenario: 3504-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-DISBURSE-FEE-%APR-AMT-Reg-PERIODIC  

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
	  Then I "Add" trance from trache tab and verified the following tabs
	  	|3504-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-DISBURSE-FEE-%APR-AMT-AddTranche-LoanTranche.xlsx|Loan Tranche Details|Summary|Repayment Schedule|Transactions|

 @scenario1-3505-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-DISBURSE-FEE-%APR-AMT-AddTranche
	  Scenario: 3505-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-DISBURSE-FEE-%APR-AMT-AddTranche  

      Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			| 3505-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-DISBURSE-FEE-%APR-AMT-EditTranche-Newcreateloan.xlsx|
	  Then I verified the "Summary" details successfully 
	  			| 3505-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-DISBURSE-FEE-%APR-AMT-DeleteTranche-Newcreateloan.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
	  			| 3505-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-DISBURSE-FEE-%APR-AMT-DeleteTranche-Newcreateloan.xlsx|
	  Then I "Delete" trance from trache tab and verified the following tabs
	  			|3505-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-DISBURSE-FEE-%APR-AMT-DeleteTranche-LoanTranche.xlsx|Loan Tranche Details|

@scenario1-3506-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-DISBURSE-FEE-%APR-AMT-AddThirdTranche
	  Scenario: 3506-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-DISBURSE-FEE-%APR-AMT-AddThirdTranche  

      Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			| 3506-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-DISBURSE-FEE-%APR-AMT-AddThirdTranche-Newcreateloan.xlsx|
#	  Then I verified the "Summary" details successfully 
#	  			| 3506-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-DISBURSE-FEE-%APR-AMT-AddThirdTranche-Newcreateloan.xlsx|
#	  And I verified the "Repayment Schedule" details successfully 
#	  			| 3506-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-DISBURSE-FEE-%APR-AMT-AddThirdTranche-Newcreateloan.xlsx|
	  Then I "Add Third " trance from trache tab and verified the following tabs
	  			|3506-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-DISBURSE-FEE-%APR-AMT-AddThirdTranche-LoanTranche.xlsx|Loan Tranche Details|
	  Then i validate and Verify from "Output" sheet
	  			|3506-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-DISBURSE-FEE-%APR-AMT-AddThirdTranche-LoanTranche.xlsx|
	  			    			
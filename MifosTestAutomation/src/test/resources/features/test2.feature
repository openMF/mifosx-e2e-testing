Feature:FloatingRatesRBI
Background:
	Given I navigate to mifos
	And I login into mifos site using "Login" excel sheet
		| Login.xlsx  |
	Then I should see logged in successfully
	
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
       			
		
       			
	 
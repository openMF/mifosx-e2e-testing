Feature:Charges-RBI-MIFOS

Background:
	Given I navigate to mifos using "default1#/"
	And I login into mifos site using "Login" excel sheet
		| Login.xlsx  |
	Then I should see logged in successfully
			
@scenario1-3000-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-DISBURSE-FEE-FLAT-Regular-CASH	   
	  Scenario: 3000-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-DISBURSE-FEE-FLAT-Regular-CASH  

   	  Given I setup the product loan "Setup"
				| Productloannavigation.xlsx |
	  Then I entered the values into product loan from "ProductLoanInput" Sheet
				|3000-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-DISBURSE-FEE-FLAT-Regular-CASH-Loanproduct.xlsx|
   	  Given I setup the clients 
	  Then I entered the values into client from "Input" sheet
				|Createclient.xlsx|
	  Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			|3000-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-DISBURSE-FEE-FLAT-Regular-CASH-Newcreateloan.xlsx|
	  Then I verified the "Summary" details successfully 
	  			| 3000-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-DISBURSE-FEE-FLAT-Regular-CASH-Newcreateloan.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
	  			| 3000-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-DISBURSE-FEE-FLAT-Regular-CASH-Newcreateloan.xlsx|
	  Then I verified the "Transactions" details and read the transaction Id
	  			| 3000-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-DISBURSE-FEE-FLAT-Regular-CASH-Newcreateloan.xlsx|			
	  And I Navigate to Accounting web page
	  Then I search with transaction id & verified the accounting entries
	   			|3000-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-DISBURSE-FEE-FLAT-Regular-CASH-Newcreateloan.xlsx|Acc_RepaymentDisbursement|Acc_Disbursement|

@scenario2-3001-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-DISBURSE-FEE-%APR-AMT-Regular-CASH   
	  Scenario: 3001-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-DISBURSE-FEE-%APR-AMT-Regular-CASH  

   	  Given I setup the product loan "Setup"
				| Productloannavigation.xlsx |
	  Then I entered the values into product loan from "ProductLoanInput" Sheet
				|3001-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-DISBURSE-FEE-%APR-AMT-Regular-CASH-Loanproduct.xlsx|
   	  Given I setup the clients 
	  Then I entered the values into client from "Input" sheet
				|Createclient.xlsx|
	  Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			|3001-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-DISBURSE-FEE-%APR-AMT-Regular-CASH-Newcreateloan.xlsx|
	  Then I verified the "Summary" details successfully 
	  			| 3001-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-DISBURSE-FEE-%APR-AMT-Regular-CASH-Newcreateloan.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
	  			| 3001-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-DISBURSE-FEE-%APR-AMT-Regular-CASH-Newcreateloan.xlsx|
	  Then I verified the "Transactions" details and read the transaction Id 
	  			| 3001-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-DISBURSE-FEE-%APR-AMT-Regular-CASH-Newcreateloan.xlsx|			
	  And I Navigate to Accounting web page
	  Then I search with transaction id & verified the accounting entries
	   			|3001-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-DISBURSE-FEE-%APR-AMT-Regular-CASH-Newcreateloan.xlsx|Acc_RepaymentDisbursement|Acc_Disbursement|
	   			
@scenario3-3002-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-DISBURSE-FEE-%LOANAMT+INTEREST-Regular-CASH   
	  Scenario: 3002-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-DISBURSE-FEE-%LOANAMT+INTEREST-Regular-CASH

   	  Given I setup the product loan "Setup"
				| Productloannavigation.xlsx |
	  Then I entered the values into product loan from "ProductLoanInput" Sheet
				|3002-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-DISBURSE-FEE-%LOANAMT+INTEREST-Regular-CASH-Loanproduct.xlsx|
   	  Given I setup the clients 
	  Then I entered the values into client from "Input" sheet
				|Createclient.xlsx|
	  Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			|3002-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-DISBURSE-FEE-%LOANAMT+INTEREST-Regular-CASH-Newcreateloan.xlsx|
	  Then I verified the "Summary" details successfully 
	  			| 3002-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-DISBURSE-FEE-%LOANAMT+INTEREST-Regular-CASH-Newcreateloan.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
	  			| 3002-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-DISBURSE-FEE-%LOANAMT+INTEREST-Regular-CASH-Newcreateloan.xlsx|
	  Then I verified the "Transactions" details and read the transaction Id 
	  			| 3002-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-DISBURSE-FEE-%LOANAMT+INTEREST-Regular-CASH-Newcreateloan.xlsx|			
	  And I Navigate to Accounting web page
	  Then I search with transaction id & verified the accounting entries
	   			|3002-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-DISBURSE-FEE-%LOANAMT+INTEREST-Regular-CASH-Newcreateloan.xlsx|Acc_RepaymentDisbursement|Acc_Disbursement|	   				 	  			

@scenario4-3003-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-DISBURSE-FEE-%INTEREST-Regular-CASH   
	  Scenario: 3003-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-DISBURSE-FEE-%INTEREST-Regular-CASH  

   	  Given I setup the product loan "Setup"
				| Productloannavigation.xlsx |
	  Then I entered the values into product loan from "ProductLoanInput" Sheet
				|3003-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-DISBURSE-FEE-%INTEREST-Regular-CASH-Loanproduct.xlsx|
   	  Given I setup the clients 
	  Then I entered the values into client from "Input" sheet
				|Createclient.xlsx|
	  Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			|3003-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-DISBURSE-FEE-%INTEREST-Regular-CASH-Newcreateloan.xlsx|
	  Then I verified the "Summary" details successfully 
	  			| 3003-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-DISBURSE-FEE-%INTEREST-Regular-CASH-Newcreateloan.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
	  			| 3003-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-DISBURSE-FEE-%INTEREST-Regular-CASH-Newcreateloan.xlsx|
	  Then I verified the "Transactions" details and read the transaction Id 
	  			| 3003-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-DISBURSE-FEE-%INTEREST-Regular-CASH-Newcreateloan.xlsx|			
	  And I Navigate to Accounting web page
	  Then I search with transaction id & verified the accounting entries
	   			|3003-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-DISBURSE-FEE-%INTEREST-Regular-CASH-Newcreateloan.xlsx|Acc_RepaymentDisbursement|Acc_Disbursement|
	   			
#@scenario5-3004-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-DISBURSE-FEE-%DIS-AMT-Regular-CASH
#	  Scenario: 3004-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-DISBURSE-FEE-%DIS-AMT-Regular-CASH  

#     Given I setup the product loan "Setup"
#				| Productloannavigation.xlsx |
#	  Then I entered the values into product loan from "ProductLoanInput" Sheet
#				|3004-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-DISBURSE-FEE-%DIS-AMT-Regular-CASH-Loanproduct.xlsx|
#	  Given I setup the clients 
#	  Then I entered the values into client from "Input" sheet
#				|Createclient.xlsx|
#	  Then I should see client created successfully from "Output" sheet
#	  			|Createclient.xlsx|
#	  When I set up the new create loan from "NewLoanInput" sheet
#	  			|3004-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-DISBURSE-FEE-%DIS-AMT-Regular-CASH-Newcreateloan.xlsx|
#	  Then I verified the "Summary" details successfully 
#	  			| 3004-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-DISBURSE-FEE-%DIS-AMT-Regular-CASH-Newcreateloan.xlsx|
#	  And I verified the "Repayment Schedule" details successfully 
#	  			| 3004-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-DISBURSE-FEE-%DIS-AMT-Regular-CASH-Newcreateloan.xlsx|
#	  Then I verified the "Transactions" details and read the transaction Id 
#	  			| 3004-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-DISBURSE-FEE-%DIS-AMT-Regular-CASH-Newcreateloan.xlsx|			
#	  And I Navigate to Accounting web page
#	  Then I search with transaction id & verified the accounting entries
#	   			|3004-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-DISBURSE-FEE-%DIS-AMT-Regular-CASH-Newcreateloan.xlsx|Acc_RepaymentDisbursement|Acc_Disbursement|	  			

@scenario6-3005-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-SPEDUEDATE-FEE-FLAT-Regular-CASH	   
	  Scenario: 3005-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-SPEDUEDATE-FEE-FLAT-Regular-CASH  

   	  Given I setup the product loan "Setup"
				| Productloannavigation.xlsx |
	  Then I entered the values into product loan from "ProductLoanInput" Sheet
				|3005-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-SPEDUEDATE-FEE-FLAT-Regular-CASH-Loanproduct.xlsx|
   	  Given I setup the clients 
	  Then I entered the values into client from "Input" sheet
				|Createclient.xlsx|
	  Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			| 3005-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-SPEDUEDATE-FEE-FLAT-Regular-CASH-Newcreateloan.xlsx|
	  Then I verified the "Summary" details successfully 
	  			| 3005-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-SPEDUEDATE-FEE-FLAT-Regular-CASH-Newcreateloan.xlsx|
 	  And I verified the "Repayment Schedule" details successfully 
	  			| 3005-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-SPEDUEDATE-FEE-FLAT-Regular-CASH-Newcreateloan.xlsx|	  			
	  Then I make repayment and read the transaction Id
       			|3005-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-SPEDUEDATE-FEE-FLAT-Regular-CASH-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
      And I Navigate to Accounting web page
	  Then I search with transaction id & verified the accounting entries
	   			| 3005-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-SPEDUEDATE-FEE-FLAT-Regular-CASH-Makerepayment1.xlsx|Acc_Disbursement|Acc_Repayment|

@scenario7-3006-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-SPEDUEDATE-FEE-%APR-AMT-Regular-CASH	   
	  Scenario: 3006-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-SPEDUEDATE-FEE-%APR-AMT-Regular-CASH  

   	  Given I setup the product loan "Setup"
				| Productloannavigation.xlsx |
	  Then I entered the values into product loan from "ProductLoanInput" Sheet
				|3006-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-SPEDUEDATE-FEE-%APR-AMT-Regular-CASH-Loanproduct.xlsx|
   	  Given I setup the clients 
	  Then I entered the values into client from "Input" sheet
				|Createclient.xlsx|
	  Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			|3006-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-SPEDUEDATE-FEE-%APR-AMT-Regular-CASH-Newcreateloan.xlsx|
	  Then I verified the "Summary" details successfully 
	  			|3006-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-SPEDUEDATE-FEE-%APR-AMT-Regular-CASH-Newcreateloan.xlsx|
 	  And I verified the "Repayment Schedule" details successfully 
	  			|3006-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-SPEDUEDATE-FEE-%APR-AMT-Regular-CASH-Newcreateloan.xlsx|
	  Then I make repayment and read the transaction Id
       			|3006-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-SPEDUEDATE-FEE-%APR-AMT-Regular-CASH-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
      And I Navigate to Accounting web page
	  Then I search with transaction id & verified the accounting entries
	   			| 3006-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-SPEDUEDATE-FEE-%APR-AMT-Regular-CASH-Makerepayment1.xlsx|Acc_Disbursement|Acc_Repayment|

#@scenario8-3007-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-SPEDUEDATE-FEE-%DIS-AMT-Regular-CASH	   
#	  Scenario: 3007-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-SPEDUEDATE-FEE-%DIS-AMT-Regular-CASH  

#	  Given I setup the product loan "Setup"
#				| Productloannavigation.xlsx |
#	  Then I entered the values into product loan from "ProductLoanInput" Sheet
#				|3007-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-SPEDUEDATE-FEE-%DIS-AMT-Regular-CASH-Loanproduct.xlsx|
#   	  Given I setup the clients 
#	  Then I entered the values into client from "Input" sheet
#				|Createclient.xlsx|
#	  Then I should see client created successfully from "Output" sheet
#	  			|Createclient.xlsx|
#	  When I set up the new create loan from "NewLoanInput" sheet
#	  			|3007-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-SPEDUEDATE-FEE-%DIS-AMT-Regular-CASH-Newcreateloan.xlsx|
#	  Then I verified the "Summary" details successfully 
#	  			|3007-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-SPEDUEDATE-FEE-%DIS-AMT-Regular-CASH-Newcreateloan.xlsx|
#	  And I verified the "Repayment Schedule" details successfully 
#  			|3007-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-SPEDUEDATE-FEE-%DIS-AMT-Regular-CASH-Newcreateloan.xlsx|
#	  Then I make repayment and read the transaction Id
#      			|3007-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-SPEDUEDATE-FEE-%DIS-AMT-Regular-CASH-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
#      And I Navigate to Accounting web page
#	  Then I search with transaction id & verified the accounting entries
#	   			| 3007-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-SPEDUEDATE-FEE-%DIS-AMT-Regular-CASH-Makerepayment1.xlsx|Acc_Disbursement|Acc_Repayment|

@scenario9-3008-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-INSTALLMENT-FEE-FLAT-Regular-CASH	   
	  Scenario: 3008-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-INSTALLMENT-FEE-FLAT-Regular-CASH  

   	  Given I setup the product loan "Setup"
				| Productloannavigation.xlsx |
	  Then I entered the values into product loan from "ProductLoanInput" Sheet
				|3008-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-INSTALLMENT-FEE-FLAT-Regular-CASH-Loanproduct.xlsx|
   	  Given I setup the clients 
	  Then I entered the values into client from "Input" sheet
				|Createclient.xlsx|
	  Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			| 3008-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-INSTALLMENT-FEE-FLAT-Regular-CASH-Newcreateloan.xlsx|
	   Then I verified the "Summary" details successfully 
	  			| 3008-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-INSTALLMENT-FEE-FLAT-Regular-CASH-Newcreateloan.xlsx|
 	  And I verified the "Repayment Schedule" details successfully 
	  			| 3008-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-INSTALLMENT-FEE-FLAT-Regular-CASH-Newcreateloan.xlsx|	  			
	  Then I make repayment and read the transaction Id
       			|3008-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-INSTALLMENT-FEE-FLAT-Regular-CASH-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
      And I Navigate to Accounting web page
	  Then I search with transaction id & verified the accounting entries
	   			| 3008-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-INSTALLMENT-FEE-FLAT-Regular-CASH-Makerepayment1.xlsx|Acc_Disbursement|Acc_Repayment|

@scenario10-3009-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-INSTALLMENT-FEE-%INTEREST-Regular-CASH	   
	  Scenario: 3009-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-INSTALLMENT-FEE-%INTEREST-Regular-CASH  

   	  Given I setup the product loan "Setup"
				| Productloannavigation.xlsx |
	  Then I entered the values into product loan from "ProductLoanInput" Sheet
				|3009-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-INSTALLMENT-FEE-%INTEREST-Regular-CASH-Loanproduct.xlsx|
   	  Given I setup the clients 
	  Then I entered the values into client from "Input" sheet
				|Createclient.xlsx|
	  Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			| 3009-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-INSTALLMENT-FEE-%INTEREST-Regular-CASH-Newcreateloan.xlsx|
	  Then I verified the "Summary" details successfully 
	  			| 3009-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-INSTALLMENT-FEE-%INTEREST-Regular-CASH-Newcreateloan.xlsx|
 	  And I verified the "Repayment Schedule" details successfully 
	  			| 3009-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-INSTALLMENT-FEE-%INTEREST-Regular-CASH-Newcreateloan.xlsx|	  			
	  Then I make repayment and read the transaction Id
       			|3009-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-INSTALLMENT-FEE-%INTEREST-Regular-CASH-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
      And I Navigate to Accounting web page
	  Then I search with transaction id & verified the accounting entries
	   			| 3009-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-INSTALLMENT-FEE-%INTEREST-Regular-CASH-Makerepayment1.xlsx|Acc_Disbursement|Acc_Repayment|

#@scenario11-3010-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-INSTALLMENT-FEE-%DIS-AMT-Regular-CASH
#	  Scenario: 3010-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-INSTALLMENT-FEE-%DIS-AMT-Regular-CASH  

#	  Given I setup the product loan "Setup"
#				| Productloannavigation.xlsx |
#	  Then I entered the values into product loan from "ProductLoanInput" Sheet
#				|3010-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-INSTALLMENT-FEE-%DIS-AMT-Regular-CASH-Loanproduct.xlsx|
#   	  Given I setup the clients 
#	  Then I entered the values into client from "Input" sheet
#				|Createclient.xlsx|
#	  Then I should see client created successfully from "Output" sheet
#	  			|Createclient.xlsx|
#	  When I set up the new create loan from "NewLoanInput" sheet
#	  			| 3010-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-INSTALLMENT-FEE-%DIS-AMT-Regular-CASH-Newcreateloan.xlsx|
#	  And I verified the "Repayment Schedule" details successfully 
#	  			| 3010-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-INSTALLMENT-FEE-%DIS-AMT-Regular-CASH-Newcreateloan.xlsx|	  			
#	  Then I make repayment and read the transaction Id
#      			|3010-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-INSTALLMENT-FEE-%DIS-AMT-Regular-CASH-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
#	  Then I make repayment and read the transaction Id
#       			|3010-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-INSTALLMENT-FEE-%DIS-AMT-Regular-CASH-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
#       		#	|Makerepayment3.xlsx|Input|Summary|Repayment Schedule|Transactions|
#      And I Navigate to Accounting web page
#	  Then I search with transaction id & verified the accounting entries
#	   			| 3010-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-INSTALLMENT-FEE-%DIS-AMT-Regular-CASH-Makerepayment1.xlsx|Acc_Disbursement|Acc_Repayment|

@scenario12-3011-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-OVERDUE-FEE-FLAT-Regular-CASH
	  Scenario: 3011-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-OVERDUE-FEE-FLAT-Regular-CASH
 Given I setup the product loan "Setup"
	| Productloannavigation.xlsx |
 Then I entered the values into product loan from "ProductLoanInput" Sheet
	|3011-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-OVERDUE-FEE-FLAT-Regular-CASH-Loanproduct.xlsx|
 Given I setup the clients 
 Then I entered the values into client from "Input" sheet
	|Createclient.xlsx|
 Then I should see client created successfully from "Output" sheet
	|Createclient.xlsx|
 When I set up the new create loan from "NewLoanInput" sheet
	| 3011-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-OVERDUE-FEE-FLAT-Regular-CASH-Newcreateloan.xlsx|
 Then I navigate to scheduler job & execute "Apply penalty to overdue loans"
 Then I verified the "Summary" details successfully 
	  			| 3011-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-OVERDUE-FEE-FLAT-Regular-CASH-Newcreateloan.xlsx|
 And I verified the "Repayment Schedule" details successfully 
	  			| 3011-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-OVERDUE-FEE-FLAT-Regular-CASH-Newcreateloan.xlsx|
 Then I make repayment and read the transaction Id
 	|3011-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-OVERDUE-FEE-FLAT-Regular-CASH-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
 And I Navigate to Accounting web page
 And I search with transaction id & verified the accounting entries
	| 3011-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-OVERDUE-FEE-FLAT-Regular-CASH-Makerepayment1.xlsx|Acc_Disbursement|Acc_Repayment|

@scenario13-3012-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-OVERDUE-FEE-%APR-AMT-Regular-CASH
	  Scenario: 3012-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-OVERDUE-FEE-%APR-AMT-Regular-CASH  
 Given I setup the product loan "Setup"
	| Productloannavigation.xlsx |
 Then I entered the values into product loan from "ProductLoanInput" Sheet
	|3012-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-OVERDUE-FEE-%APR-AMT-Regular-CASH-Loanproduct.xlsx|
 Given I setup the clients 
 Then I entered the values into client from "Input" sheet
	|Createclient.xlsx|
 Then I should see client created successfully from "Output" sheet
	|Createclient.xlsx|
 When I set up the new create loan from "NewLoanInput" sheet
	| 3012-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-OVERDUE-FEE-%APR-AMT-Regular-CASH-Newcreateloan.xlsx|
 Then I navigate to scheduler job & execute "Apply penalty to overdue loans"
 Then I verified the "Summary" details successfully 
	  			| 3012-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-OVERDUE-FEE-%APR-AMT-Regular-CASH-Newcreateloan.xlsx|
 And I verified the "Repayment Schedule" details successfully 
	  			| 3012-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-OVERDUE-FEE-%APR-AMT-Regular-CASH-Newcreateloan.xlsx|
 Then I make repayment and read the transaction Id
 	|3012-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-OVERDUE-FEE-%APR-AMT-Regular-CASH-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
 And I Navigate to Accounting web page
 And I search with transaction id & verified the accounting entries
	| 3012-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-OVERDUE-FEE-%APR-AMT-Regular-CASH-Makerepayment1.xlsx|Acc_Disbursement|Acc_Repayment|

@scenario14-3013-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-OVERDUE-FEE-%LOANAMT+INT-Regular-CASH
	  Scenario: 3013-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-OVERDUE-FEE-%LOANAMT+INT-Regular-CASH  

 Given I setup the product loan "Setup"
	| Productloannavigation.xlsx |
 Then I entered the values into product loan from "ProductLoanInput" Sheet
	|3013-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-OVERDUE-FEE-%LOANAMT+INT-Regular-CASH-Loanproduct.xlsx|
 Given I setup the clients 
 Then I entered the values into client from "Input" sheet
	|Createclient.xlsx|
 Then I should see client created successfully from "Output" sheet
	|Createclient.xlsx|
 When I set up the new create loan from "NewLoanInput" sheet
	| 3013-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-OVERDUE-FEE-%LOANAMT+INT-Regular-CASH-Newcreateloan.xlsx|
 Then I navigate to scheduler job & execute "Apply penalty to overdue loans"
 Then I verified the "Summary" details successfully 
	| 3013-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-OVERDUE-FEE-%LOANAMT+INT-Regular-CASH-Newcreateloan.xlsx|
 And I verified the "Repayment Schedule" details successfully 
	| 3013-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-OVERDUE-FEE-%LOANAMT+INT-Regular-CASH-Newcreateloan.xlsx|
 Then I make repayment and read the transaction Id
 	|3013-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-OVERDUE-FEE-%LOANAMT+INT-Regular-CASH-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
 And I Navigate to Accounting web page
 And I search with transaction id & verified the accounting entries
	| 3013-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-OVERDUE-FEE-%LOANAMT+INT-Regular-CASH-Makerepayment1.xlsx|Acc_Disbursement|Acc_Repayment|

@scenario15-3014-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-OVERDUE-FEE-%INTEREST-Regular-CASH
	  Scenario: 3014-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-OVERDUE-FEE-%INTEREST-Regular-CASH  

 Given I setup the product loan "Setup"
	| Productloannavigation.xlsx |
 Then I entered the values into product loan from "ProductLoanInput" Sheet
	|3014-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-OVERDUE-FEE-%INTEREST-Regular-CASH-Loanproduct.xlsx|
 Given I setup the clients 
 Then I entered the values into client from "Input" sheet
	|Createclient.xlsx|
 Then I should see client created successfully from "Output" sheet
	|Createclient.xlsx|
 When I set up the new create loan from "NewLoanInput" sheet
	| 3014-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-OVERDUE-FEE-%INTEREST-Regular-CASH-Newcreateloan.xlsx|
 Then I navigate to scheduler job & execute "Apply penalty to overdue loans"
 Then I verified the "Summary" details successfully 
	| 3014-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-OVERDUE-FEE-%INTEREST-Regular-CASH-Newcreateloan.xlsx|
 And I verified the "Repayment Schedule" details successfully 
	| 3014-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-OVERDUE-FEE-%INTEREST-Regular-CASH-Newcreateloan.xlsx|
 Then I make repayment and read the transaction Id
 	|3014-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-OVERDUE-FEE-%INTEREST-Regular-CASH-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
 And I Navigate to Accounting web page
 And I search with transaction id & verified the accounting entries
	| 3014-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-OVERDUE-FEE-%INTEREST-Regular-CASH-Makerepayment1.xlsx|Acc_Disbursement|Acc_Repayment|
	
@scenario16-3015-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-TR-DISB-FEE-FLAT-Regular-CASH
	  Scenario: 3015-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-TR-DISB-FEE-FLAT-Regular-CASH  

   	  Given I setup the product loan "Setup"
				| Productloannavigation.xlsx |
	  Then I entered the values into product loan from "ProductLoanInput" Sheet
				|3015-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-TR-DISB-FEE-FLAT-Regular-CASH-Loanproduct.xlsx|
   	  Given I setup the clients 
	  Then I entered the values into client from "Input" sheet
				|Createclient.xlsx|
	  Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			| 3015-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-TR-DISB-FEE-FLAT-Regular-CASH-Newcreateloan.xlsx|
	  Then I verified the "Summary" details successfully 
				| 3015-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-TR-DISB-FEE-FLAT-Regular-CASH-Newcreateloan.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
				| 3015-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-TR-DISB-FEE-FLAT-Regular-CASH-Newcreateloan.xlsx|
	  Then I make repayment and read the transaction Id
 				|3015-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-TR-DISB-FEE-FLAT-Regular-CASH-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
  	  And I Navigate to Accounting web page
	  Then I search with transaction id & verified the accounting entries
	   			| 3015-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-TR-DISB-FEE-FLAT-Regular-CASH-Makerepayment1.xlsx|Acc_RepaymentDisbursement|Acc_Disbursement|Acc_Repayment|

@scenario17-3016-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-TR-%DISB-AMT-Regular-CASH
	  Scenario: 3016-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-TR-%DISB-AMT-Regular-CASH  

   	  Given I setup the product loan "Setup"
				| Productloannavigation.xlsx |
	  Then I entered the values into product loan from "ProductLoanInput" Sheet
				|3016-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-TR-%DISB-AMT-Regular-CASH-Loanproduct.xlsx|
   	  Given I setup the clients 
	  Then I entered the values into client from "Input" sheet
				|Createclient.xlsx|
	  Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			| 3016-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-TR-%DISB-AMT-Regular-CASH-Newcreateloan.xlsx|
	  Then I verified the "Summary" details successfully 
				| 3016-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-TR-%DISB-AMT-Regular-CASH-Newcreateloan.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
				| 3016-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-TR-%DISB-AMT-Regular-CASH-Newcreateloan.xlsx|
	  Then I make repayment and read the transaction Id
 				|3016-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-TR-%DISB-AMT-Regular-CASH-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
  	  And I Navigate to Accounting web page
	  Then I search with transaction id & verified the accounting entries
	   			| 3016-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-TR-%DISB-AMT-Regular-CASH-Makerepayment1.xlsx|Acc_RepaymentDisbursement|Acc_Disbursement|Acc_Repayment|
	   			
@scenario18-3022-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-SPEDUEDATE-FEE-FLAT-Regular-CASH	   
	  Scenario: 3022-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-SPEDUEDATE-FEE-FLAT-Regular-CASH 

  	  Given I setup the product loan "Setup"
				| Productloannavigation.xlsx |
	  Then I entered the values into product loan from "ProductLoanInput" Sheet
				|3022-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-SPEDUEDATE-FEE-FLAT-Regular-CASH-Loanproduct.xlsx|
  	  Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			|3022-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-SPEDUEDATE-FEE-FLAT-Regular-CASH-Newcreateloan1.xlsx|
	  Then I verified the "Summary" details successfully 
	  			|3022-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-SPEDUEDATE-FEE-FLAT-Regular-CASH-Newcreateloan1.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
	  			|3022-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-SPEDUEDATE-FEE-FLAT-Regular-CASH-Newcreateloan1.xlsx|
	  And I verified the "Transactions" details successfully	
				|3022-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-SPEDUEDATE-FEE-FLAT-Regular-CASH-Newcreateloan1.xlsx|
	  Then I make repayment and verified the following tabs
       			|3022-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-SPEDUEDATE-FEE-FLAT-Regular-CASH-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
      And I disburse loan from "NewLoanInput" sheet
      			|3022-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-SPEDUEDATE-FEE-FLAT-Regular-CASH-Newcreateloan2.xlsx|
      Then I verified the "Summary" details successfully 
	  			|3022-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-SPEDUEDATE-FEE-FLAT-Regular-CASH-Newcreateloan2.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
	  			|3022-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-SPEDUEDATE-FEE-FLAT-Regular-CASH-Newcreateloan2.xlsx| 			
	  And I verified the "Transactions" details successfully	
				|3022-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-SPEDUEDATE-FEE-FLAT-Regular-CASH-Newcreateloan2.xlsx|
	  Then I make repayment and read the transaction Id
 				|3022-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-SPEDUEDATE-FEE-FLAT-Regular-CASH-Makerepayment2.xlsx|Input|Transactions|
 	  And I Navigate to Accounting web page
 	  And I search with transaction id & verified the accounting entries
				|3022-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-SPEDUEDATE-FEE-FLAT-Regular-CASH-Makerepayment2.xlsx|Acc_Disbursement|Acc_Repayment|Acc_Disbursement1|Acc_Repayment1|
	
@scenario19-3023-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-SPEDUEDATE-FEE-%APRAMT-Regular-CASH	   
	  Scenario: 3023-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-SPEDUEDATE-FEE-%APRAMT-Regular-CASH 

  	  Given I setup the product loan "Setup"
				| Productloannavigation.xlsx |
	  Then I entered the values into product loan from "ProductLoanInput" Sheet
				|3023-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-SPEDUEDATE-FEE-%APRAMT-Regular-CASH-Loanproduct.xlsx|
  	  Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			|3023-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-SPEDUEDATE-FEE-%APRAMT-Regular-CASH-Newcreateloan1.xlsx|
	  Then I verified the "Summary" details successfully 
	  			|3023-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-SPEDUEDATE-FEE-%APRAMT-Regular-CASH-Newcreateloan1.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
	  			|3023-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-SPEDUEDATE-FEE-%APRAMT-Regular-CASH-Newcreateloan1.xlsx|
	  And I verified the "Transactions" details successfully	
				|3023-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-SPEDUEDATE-FEE-%APRAMT-Regular-CASH-Newcreateloan1.xlsx|
	  Then I make repayment and verified the following tabs
       			|3023-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-SPEDUEDATE-FEE-%APRAMT-Regular-CASH-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
      And I disburse loan from "NewLoanInput" sheet
      			|3023-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-SPEDUEDATE-FEE-%APRAMT-Regular-CASH-Newcreateloan2.xlsx|
      Then I verified the "Summary" details successfully 
	  			|3023-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-SPEDUEDATE-FEE-%APRAMT-Regular-CASH-Newcreateloan2.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
	  			|3023-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-SPEDUEDATE-FEE-%APRAMT-Regular-CASH-Newcreateloan2.xlsx| 			
	  And I verified the "Transactions" details successfully	
				|3023-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-SPEDUEDATE-FEE-%APRAMT-Regular-CASH-Newcreateloan2.xlsx|
	 Then I make repayment and read the transaction Id
 				|3023-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-SPEDUEDATE-FEE-%APRAMT-Regular-CASH-Makerepayment2.xlsx|Input|Transactions|
 	 And I Navigate to Accounting web page
 	 And I search with transaction id & verified the accounting entries
				|3023-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-SPEDUEDATE-FEE-%APRAMT-Regular-CASH-Makerepayment2.xlsx|Acc_Disbursement|Acc_Repayment|Acc_Disbursement1|Acc_Repayment1|


@scenario20-3025-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-INSTALLMENT-FEE-FLAT-Regular-CASH	   
	  Scenario: 3025-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-INSTALLMENT-FEE-FLAT-Regular-CASH 

  	  Given I setup the product loan "Setup"
				| Productloannavigation.xlsx |
	  Then I entered the values into product loan from "ProductLoanInput" Sheet
				|3025-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-INSTALLMENT-FEE-FLAT-Regular-CASH-Loanproduct.xlsx|
  	  Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			|3025-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-INSTALLMENT-FEE-FLAT-Regular-CASH-Newcreateloan1.xlsx|
	  Then I verified the "Summary" details successfully 
	  			|3025-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-INSTALLMENT-FEE-FLAT-Regular-CASH-Newcreateloan1.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
	  			|3025-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-INSTALLMENT-FEE-FLAT-Regular-CASH-Newcreateloan1.xlsx|
	  And I verified the "Transactions" details successfully	
				|3025-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-INSTALLMENT-FEE-FLAT-Regular-CASH-Newcreateloan1.xlsx|
	  Then I make repayment and verified the following tabs
       			|3025-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-INSTALLMENT-FEE-FLAT-Regular-CASH-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
      And I disburse loan from "NewLoanInput" sheet
      			|3025-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-INSTALLMENT-FEE-FLAT-Regular-CASH-Newcreateloan2.xlsx|
      Then I verified the "Summary" details successfully 
	  			|3025-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-INSTALLMENT-FEE-FLAT-Regular-CASH-Newcreateloan2.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
	  			|3025-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-INSTALLMENT-FEE-FLAT-Regular-CASH-Newcreateloan2.xlsx| 			
	  And I verified the "Transactions" details successfully	
				|3025-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-INSTALLMENT-FEE-FLAT-Regular-CASH-Newcreateloan2.xlsx|
	 Then I make repayment and read the transaction Id
 				|3025-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-INSTALLMENT-FEE-FLAT-Regular-CASH-Makerepayment2.xlsx|Input|Transactions|
 	 And I Navigate to Accounting web page
 	 And I search with transaction id & verified the accounting entries
				|3025-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-INSTALLMENT-FEE-FLAT-Regular-CASH-Makerepayment2.xlsx|Acc_Disbursement|Acc_Repayment|Acc_Disbursement1|Acc_Repayment1|

@scenario21-3026-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-INSTALLMENT-FEE-%INTEREST-Regular-CASH	
	  Scenario: 3026-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-INSTALLMENT-FEE-%INTEREST-Regular-CASH 

  	  Given I setup the product loan "Setup"
				| Productloannavigation.xlsx |
	  Then I entered the values into product loan from "ProductLoanInput" Sheet
				|3026-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-INSTALLMENT-FEE-%INTEREST-Regular-CASH-Loanproduct.xlsx|
  	  Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			|3026-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-INSTALLMENT-FEE-%INTEREST-Regular-CASH-Newcreateloan1.xlsx|
	  Then I verified the "Summary" details successfully 
	  			|3026-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-INSTALLMENT-FEE-%INTEREST-Regular-CASH-Newcreateloan1.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
	  			|3026-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-INSTALLMENT-FEE-%INTEREST-Regular-CASH-Newcreateloan1.xlsx|
	  And I verified the "Transactions" details successfully	
				|3026-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-INSTALLMENT-FEE-%INTEREST-Regular-CASH-Newcreateloan1.xlsx|
	  Then I make repayment and verified the following tabs
       			|3026-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-INSTALLMENT-FEE-%INTEREST-Regular-CASH-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
      And I disburse loan from "NewLoanInput" sheet
      			|3026-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-INSTALLMENT-FEE-%INTEREST-Regular-CASH-Newcreateloan2.xlsx|
      Then I verified the "Summary" details successfully 
	  			|3026-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-INSTALLMENT-FEE-%INTEREST-Regular-CASH-Newcreateloan2.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
	  			|3026-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-INSTALLMENT-FEE-%INTEREST-Regular-CASH-Newcreateloan2.xlsx| 			
	  And I verified the "Transactions" details successfully	
				|3026-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-INSTALLMENT-FEE-%INTEREST-Regular-CASH-Newcreateloan2.xlsx|
	 Then I make repayment and read the transaction Id
 				|3026-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-INSTALLMENT-FEE-%INTEREST-Regular-CASH-Makerepayment2.xlsx|Input|Transactions|
 	 And I Navigate to Accounting web page
 	 And I search with transaction id & verified the accounting entries
				|3026-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-INSTALLMENT-FEE-%INTEREST-Regular-CASH-Makerepayment2.xlsx|Acc_Disbursement|Acc_Repayment|Acc_Disbursement1|Acc_Repayment1|

@scenario22-3028-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-OVERDUE-FEE-FLAT-Regular-CASH	
	  Scenario: 3028-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-OVERDUE-FEE-FLAT-Regular-CASH 

  	  Given I setup the product loan "Setup"
				| Productloannavigation.xlsx |
	  Then I entered the values into product loan from "ProductLoanInput" Sheet
				|3028-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-OVERDUE-FEE-FLAT-Regular-CASH-Loanproduct.xlsx|
  	  Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			|3028-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-OVERDUE-FEE-FLAT-Regular-CASH-Newcreateloan1.xlsx|
	  Then I navigate to scheduler job & execute "Apply penalty to overdue loans"
	  Then I verified the "Summary" details successfully 
	  			|3028-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-OVERDUE-FEE-FLAT-Regular-CASH-Newcreateloan1.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
	  			|3028-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-OVERDUE-FEE-FLAT-Regular-CASH-Newcreateloan1.xlsx|
	  And I verified the "Transactions" details successfully	
				|3028-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-OVERDUE-FEE-FLAT-Regular-CASH-Newcreateloan1.xlsx|
	  Then I make repayment and verified the following tabs
       			|3028-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-OVERDUE-FEE-FLAT-Regular-CASH-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
      And I disburse loan from "NewLoanInput" sheet
      			|3028-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-OVERDUE-FEE-FLAT-Regular-CASH-Newcreateloan2.xlsx|
      Then I verified the "Summary" details successfully 
	  			|3028-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-OVERDUE-FEE-FLAT-Regular-CASH-Newcreateloan2.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
	  			|3028-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-OVERDUE-FEE-FLAT-Regular-CASH-Newcreateloan2.xlsx| 			
	  And I verified the "Transactions" details successfully	
				|3028-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-OVERDUE-FEE-FLAT-Regular-CASH-Newcreateloan2.xlsx|
	 Then I make repayment and read the transaction Id
 				|3028-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-OVERDUE-FEE-FLAT-Regular-CASH-Makerepayment2.xlsx|Input|Transactions|
 	 And I Navigate to Accounting web page
 	 And I search with transaction id & verified the accounting entries
				|3028-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-OVERDUE-FEE-FLAT-Regular-CASH-Makerepayment2.xlsx|Acc_Disbursement|Acc_Repayment|Acc_Disbursement1|Acc_Repayment1|

@scenario23-3029-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-OVERDUE-FEE-%APR-AMT-Regular-CASH	
	  Scenario: 3029-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-OVERDUE-FEE-%APR-AMT-Regular-CASH 

  	  Given I setup the product loan "Setup"
				| Productloannavigation.xlsx |
	  Then I entered the values into product loan from "ProductLoanInput" Sheet
				|3029-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-OVERDUE-FEE-%APR-AMT-Regular-CASH-Loanproduct.xlsx|
  	  Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			|3029-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-OVERDUE-FEE-%APR-AMT-Regular-CASH-Newcreateloan1.xlsx|
	  Then I navigate to scheduler job & execute "Apply penalty to overdue loans"
	  Then I verified the "Summary" details successfully 
	  			|3029-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-OVERDUE-FEE-%APR-AMT-Regular-CASH-Newcreateloan1.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
	  			|3029-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-OVERDUE-FEE-%APR-AMT-Regular-CASH-Newcreateloan1.xlsx|
	  And I verified the "Transactions" details successfully	
				|3029-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-OVERDUE-FEE-%APR-AMT-Regular-CASH-Newcreateloan1.xlsx|
	  Then I make repayment and verified the following tabs
       			|3029-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-OVERDUE-FEE-%APR-AMT-Regular-CASH-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
      And I disburse loan from "NewLoanInput" sheet
      			|3029-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-OVERDUE-FEE-%APR-AMT-Regular-CASH-Newcreateloan2.xlsx|
      Then I verified the "Summary" details successfully 
	  			|3029-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-OVERDUE-FEE-%APR-AMT-Regular-CASH-Newcreateloan2.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
	  			|3029-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-OVERDUE-FEE-%APR-AMT-Regular-CASH-Newcreateloan2.xlsx| 			
	  And I verified the "Transactions" details successfully	
				|3029-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-OVERDUE-FEE-%APR-AMT-Regular-CASH-Newcreateloan2.xlsx|
	 Then I make repayment and read the transaction Id
 				|3029-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-OVERDUE-FEE-%APR-AMT-Regular-CASH-Makerepayment2.xlsx|Input|Transactions|
 	 And I Navigate to Accounting web page
 	 And I search with transaction id & verified the accounting entries
				|3029-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-OVERDUE-FEE-%APR-AMT-Regular-CASH-Makerepayment2.xlsx|Acc_Disbursement|Acc_Repayment|Acc_Disbursement1|Acc_Repayment1|

@scenario24-3030-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-OVERDUE-FEE-%LOANAMT+INT-Regular-CASH	
	  Scenario: 3030-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-OVERDUE-FEE-%LOANAMT+INT-Regular-CASH 

  	  Given I setup the product loan "Setup"
				| Productloannavigation.xlsx |
	  Then I entered the values into product loan from "ProductLoanInput" Sheet
				|3030-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-OVERDUE-FEE-%LOANAMT+INT-Regular-CASH-Loanproduct.xlsx|
  	  Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			|3030-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-OVERDUE-FEE-%LOANAMT+INT-Regular-CASH-Newcreateloan1.xlsx|
	  Then I navigate to scheduler job & execute "Apply penalty to overdue loans"
	  Then I verified the "Summary" details successfully 
	  			|3030-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-OVERDUE-FEE-%LOANAMT+INT-Regular-CASH-Newcreateloan1.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
	  			|3030-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-OVERDUE-FEE-%LOANAMT+INT-Regular-CASH-Newcreateloan1.xlsx|
	  And I verified the "Transactions" details successfully	
				|3030-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-OVERDUE-FEE-%LOANAMT+INT-Regular-CASH-Newcreateloan1.xlsx|
	  Then I make repayment and verified the following tabs
       			|3030-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-OVERDUE-FEE-%LOANAMT+INT-Regular-CASH-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
      And I disburse loan from "NewLoanInput" sheet
      			|3030-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-OVERDUE-FEE-%LOANAMT+INT-Regular-CASH-Newcreateloan2.xlsx|
      Then I verified the "Summary" details successfully 
	  			|3030-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-OVERDUE-FEE-%LOANAMT+INT-Regular-CASH-Newcreateloan2.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
	  			|3030-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-OVERDUE-FEE-%LOANAMT+INT-Regular-CASH-Newcreateloan2.xlsx| 			
	  And I verified the "Transactions" details successfully	
				|3030-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-OVERDUE-FEE-%LOANAMT+INT-Regular-CASH-Newcreateloan2.xlsx|
	 Then I make repayment and read the transaction Id
 				|3030-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-OVERDUE-FEE-%LOANAMT+INT-Regular-CASH-Makerepayment2.xlsx|Input|Transactions|
 	 And I Navigate to Accounting web page
 	 And I search with transaction id & verified the accounting entries
				|3030-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-OVERDUE-FEE-%LOANAMT+INT-Regular-CASH-Makerepayment2.xlsx|Acc_Disbursement|Acc_Repayment|Acc_Disbursement1|Acc_Repayment1|
	
@scenario25-3031-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-OVERDUE-FEE-%INTEREST-Regular-CASH
	  Scenario: 3031-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-OVERDUE-FEE-%INTEREST-Regular-CASH 

  	  Given I setup the product loan "Setup"
				| Productloannavigation.xlsx |
	  Then I entered the values into product loan from "ProductLoanInput" Sheet
				|3031-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-OVERDUE-FEE-%INTEREST-Regular-CASH-Loanproduct.xlsx|
  	  Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			|3031-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-OVERDUE-FEE-%INTEREST-Regular-CASH-Newcreateloan1.xlsx|
	  Then I navigate to scheduler job & execute "Apply penalty to overdue loans"
	  Then I verified the "Summary" details successfully 
	  			|3031-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-OVERDUE-FEE-%INTEREST-Regular-CASH-Newcreateloan1.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
	  			|3031-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-OVERDUE-FEE-%INTEREST-Regular-CASH-Newcreateloan1.xlsx|
	  And I verified the "Transactions" details successfully	
				|3031-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-OVERDUE-FEE-%INTEREST-Regular-CASH-Newcreateloan1.xlsx|
	  Then I make repayment and verified the following tabs
       			|3031-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-OVERDUE-FEE-%INTEREST-Regular-CASH-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
      And I disburse loan from "NewLoanInput" sheet
      			|3031-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-OVERDUE-FEE-%INTEREST-Regular-CASH-Newcreateloan2.xlsx|
      Then I verified the "Summary" details successfully 
	  			|3031-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-OVERDUE-FEE-%INTEREST-Regular-CASH-Newcreateloan2.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
	  			|3031-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-OVERDUE-FEE-%INTEREST-Regular-CASH-Newcreateloan2.xlsx| 			
	  And I verified the "Transactions" details successfully	
				|3031-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-OVERDUE-FEE-%INTEREST-Regular-CASH-Newcreateloan2.xlsx|
	 Then I make repayment and read the transaction Id
 				|3031-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-OVERDUE-FEE-%INTEREST-Regular-CASH-Makerepayment2.xlsx|Input|Transactions|
 	 And I Navigate to Accounting web page
 	 And I search with transaction id & verified the accounting entries
				|3031-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-OVERDUE-FEE-%INTEREST-Regular-CASH-Makerepayment2.xlsx|Acc_Disbursement|Acc_Repayment|Acc_Disbursement1|Acc_Repayment1|

@scenario26-3034-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-DISBURSE-FEE-FLAT-Regular-PERIODIC
	  Scenario: 3034-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-DISBURSE-FEE-FLAT-Regular-PERIODIC
 Given I setup the product loan "Setup"
	| Productloannavigation.xlsx |
 Then I entered the values into product loan from "ProductLoanInput" Sheet
 	|3034-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-DISBURSE-FEE-FLAT-Regular-PERIODIC-Loanproduct.xlsx|		
 Given I setup the clients 
 Then I entered the values into client from "Input" sheet
    |Createclient.xlsx|
 Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|	
 When I set up the new create loan from "NewLoanInput" sheet
	|3034-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-DISBURSE-FEE-FLAT-Regular-PERIODIC-Newcreateloan.xlsx|
 Then I navigate to scheduler job & execute "Periodic Accrual Transactions"
 Then I verified the "Summary" details successfully 
	|3034-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-DISBURSE-FEE-FLAT-Regular-PERIODIC-Newcreateloan.xlsx|
 And I verified the "Repayment Schedule" details successfully 
    |3034-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-DISBURSE-FEE-FLAT-Regular-PERIODIC-Newcreateloan.xlsx|
 Then I verified the "Transactions" details and read the transaction Id 
	|3034-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-DISBURSE-FEE-FLAT-Regular-PERIODIC-Newcreateloan.xlsx|
 #When I make repayment and verified the following tabs
 #   |3034-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-DISBURSE-FEE-FLAT-Regular-PERIODIC-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
 And I Navigate to Accounting web page
 And I search with transaction id & verified the accounting entries
    |3034-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-DISBURSE-FEE-FLAT-Regular-PERIODIC-Makerepayment1.xlsx|Acc_RepaymentDisbursement|Acc_Disbursement|Acc_Periodic|

@scenario27-3035-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-DISBURSE-FEE-%APR-AMT-Regular-PERIODIC
	  Scenario: 3035-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-DISBURSE-FEE-%APR-AMT-Regular-PERIODIC
		
 Given I setup the product loan "Setup"
	| Productloannavigation.xlsx |
 Then I entered the values into product loan from "ProductLoanInput" Sheet
 	|3035-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-DISBURSE-FEE-%APR-AMT-Regular-PERIODIC-Loanproduct.xlsx|
 Given I setup the clients 
 Then I entered the values into client from "Input" sheet
    |Createclient.xlsx|
 Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|	
 When I set up the new create loan from "NewLoanInput" sheet
	|3035-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-DISBURSE-FEE-%APR-AMT-Regular-PERIODIC-Newcreateloan.xlsx|
 Then I navigate to scheduler job & execute "Periodic Accrual Transactions"
 Then I verified the "Summary" details successfully 
	|3035-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-DISBURSE-FEE-%APR-AMT-Regular-PERIODIC-Newcreateloan.xlsx|
 And I verified the "Repayment Schedule" details successfully 
    |3035-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-DISBURSE-FEE-%APR-AMT-Regular-PERIODIC-Newcreateloan.xlsx|
 Then I verified the "Transactions" details and read the transaction Id 
	|3035-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-DISBURSE-FEE-%APR-AMT-Regular-PERIODIC-Newcreateloan.xlsx|
# When I make repayment and verified the following tabs
#    |3035-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-DISBURSE-FEE-%APR-AMT-Regular-PERIODIC-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
 And I Navigate to Accounting web page
 And I search with transaction id & verified the accounting entries
    |3035-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-DISBURSE-FEE-%APR-AMT-Regular-PERIODIC-Newcreateloan.xlsx|Acc_RepaymentDisbursement|Acc_Disbursement|Acc_Periodic|

@scenario28-3036-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-DISBURSE-FEE-%LOANAMT+INTEREST-Regular-PERIODIC
	  Scenario: 3036-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-DISBURSE-FEE-%LOANAMT+INTEREST-Regular-PERIODIC
		
 Given I setup the product loan "Setup"
	| Productloannavigation.xlsx |
 Then I entered the values into product loan from "ProductLoanInput" Sheet
 	|3036-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-DISBURSE-FEE-%LOANAMT+INTEREST-Regular-PERIODIC-Loanproduct.xlsx|
 Given I setup the clients 
 Then I entered the values into client from "Input" sheet
    |Createclient.xlsx|
 Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|	
 When I set up the new create loan from "NewLoanInput" sheet
	|3036-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-DISBURSE-FEE-%LOANAMT+INTEREST-Regular-PERIODIC-Newcreateloan.xlsx|
 Then I navigate to scheduler job & execute "Periodic Accrual Transactions"
 Then I verified the "Summary" details successfully 
	|3036-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-DISBURSE-FEE-%LOANAMT+INTEREST-Regular-PERIODIC-Newcreateloan.xlsx|
 And I verified the "Repayment Schedule" details successfully 
    |3036-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-DISBURSE-FEE-%LOANAMT+INTEREST-Regular-PERIODIC-Newcreateloan.xlsx|
 Then I verified the "Transactions" details and read the transaction Id 
	|3036-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-DISBURSE-FEE-%LOANAMT+INTEREST-Regular-PERIODIC-Newcreateloan.xlsx|
 #When I make repayment and verified the following tabs
 #   |3036-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-DISBURSE-FEE-%LOANAMT+INTEREST-Regular-PERIODIC-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
 And I Navigate to Accounting web page
 And I search with transaction id & verified the accounting entries
    |3036-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-DISBURSE-FEE-%LOANAMT+INTEREST-Regular-PERIODIC-Makerepayment1.xlsx|Acc_RepaymentDisbursement|Acc_Disbursement|Acc_Periodic|

@scenario29-3037-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-DISBURSE-FEE-%INTEREST-Regular-PERIODIC
	  Scenario: 3037-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-DISBURSE-FEE-%INTEREST-Regular-PERIODIC

 Given I setup the product loan "Setup"
	| Productloannavigation.xlsx |
 Then I entered the values into product loan from "ProductLoanInput" Sheet
 	|3037-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-DISBURSE-FEE-%INTEREST-Regular-PERIODIC-Loanproduct.xlsx|		
 Given I setup the clients 
 Then I entered the values into client from "Input" sheet
    |Createclient.xlsx|
 Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|	
 When I set up the new create loan from "NewLoanInput" sheet
	|3037-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-DISBURSE-FEE-%INTEREST-Regular-PERIODIC-Newcreateloan.xlsx|
 Then I navigate to scheduler job & execute "Periodic Accrual Transactions"
 Then I verified the "Summary" details successfully 
	|3037-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-DISBURSE-FEE-%INTEREST-Regular-PERIODIC-Newcreateloan.xlsx|
 And I verified the "Repayment Schedule" details successfully 
    |3037-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-DISBURSE-FEE-%INTEREST-Regular-PERIODIC-Newcreateloan.xlsx|
 Then I verified the "Transactions" details and read the transaction Id 
	|3037-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-DISBURSE-FEE-%INTEREST-Regular-PERIODIC-Newcreateloan.xlsx|
 #When I make repayment and verified the following tabs
 #   |3037-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-DISBURSE-FEE-%INTEREST-Regular-PERIODIC-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
 And I Navigate to Accounting web page
 And I search with transaction id & verified the accounting entries
    |3037-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-DISBURSE-FEE-%INTEREST-Regular-PERIODIC-Makerepayment1.xlsx|Acc_RepaymentDisbursement|Acc_Disbursement|Acc_Periodic|

@scenario30-3039-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-SPEDUEDATE-FEE-FLAT-Regular-PERIODIC
	  Scenario: 3039-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-SPEDUEDATE-FEE-FLAT-Regular-PERIODIC

 Given I setup the product loan "Setup"
	| Productloannavigation.xlsx |
 Then I entered the values into product loan from "ProductLoanInput" Sheet
 	|3039-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-SPEDUEDATE-FEE-FLAT-Regular-PERIODIC-Loanproduct.xlsx|	
 Given I setup the clients 
 Then I entered the values into client from "Input" sheet
    |Createclient.xlsx|
 Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|	
 When I set up the new create loan from "NewLoanInput" sheet
	|3039-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-SPEDUEDATE-FEE-FLAT-Regular-PERIODIC-Newcreateloan.xlsx|
 Then I navigate to scheduler job & execute "Periodic Accrual Transactions"
 Then I verified the "Summary" details successfully 
	|3039-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-SPEDUEDATE-FEE-FLAT-Regular-PERIODIC-Newcreateloan.xlsx|
 And I verified the "Repayment Schedule" details successfully 
    |3039-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-SPEDUEDATE-FEE-FLAT-Regular-PERIODIC-Newcreateloan.xlsx|
 And I verified the "Transactions" details successfully 
	|3039-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-SPEDUEDATE-FEE-FLAT-Regular-PERIODIC-Newcreateloan.xlsx|
 When I make repayment and verified the following tabs
    |3039-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-SPEDUEDATE-FEE-FLAT-Regular-PERIODIC-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
 And I Navigate to Accounting web page
 And I search with transaction id & verified the accounting entries
    |3039-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-SPEDUEDATE-FEE-FLAT-Regular-PERIODIC-Makerepayment1.xlsx|Acc_Disbursement|Acc_Repayment|Acc_Periodic|
       			
@scenario31-3040-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-SPEDUEDATE-FEE-%APR-AMT-Regular-PERIODIC
	  Scenario: 3040-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-SPEDUEDATE-FEE-%APR-AMT-Regular-PERIODIC

 Given I setup the product loan "Setup"
	| Productloannavigation.xlsx |
 Then I entered the values into product loan from "ProductLoanInput" Sheet
 	|3040-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-SPEDUEDATE-FEE-%APR-AMT-Regular-PERIODIC-Loanproduct.xlsx|
 Given I setup the clients 
 Then I entered the values into client from "Input" sheet
    |Createclient.xlsx|
 Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|	
 When I set up the new create loan from "NewLoanInput" sheet
	|3040-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-SPEDUEDATE-FEE-%APR-AMT-Regular-PERIODIC-Newcreateloan.xlsx|
 Then I navigate to scheduler job & execute "Periodic Accrual Transactions"
 Then I verified the "Summary" details successfully 
	|3040-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-SPEDUEDATE-FEE-%APR-AMT-Regular-PERIODIC-Newcreateloan.xlsx|
 And I verified the "Repayment Schedule" details successfully 
    |3040-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-SPEDUEDATE-FEE-%APR-AMT-Regular-PERIODIC-Newcreateloan.xlsx|
 And I verified the "Transactions" details successfully 
	|3040-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-SPEDUEDATE-FEE-%APR-AMT-Regular-PERIODIC-Newcreateloan.xlsx|
 When I make repayment and verified the following tabs
    |3040-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-SPEDUEDATE-FEE-%APR-AMT-Regular-PERIODIC-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
 And I Navigate to Accounting web page
 And I search with transaction id & verified the accounting entries
    |3040-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-SPEDUEDATE-FEE-%APR-AMT-Regular-PERIODIC-Makerepayment1.xlsx|Acc_Disbursement|Acc_Repayment|Acc_Periodic|

@scenario32-3042-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-INSTALLMENT-FEE-FLAT-Regular-PERIODIC
	  Scenario: 3042-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-INSTALLMENT-FEE-FLAT-Regular-PERIODIC

 Given I setup the product loan "Setup"
	| Productloannavigation.xlsx |
 Then I entered the values into product loan from "ProductLoanInput" Sheet
 	|3042-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-INSTALLMENT-FEE-FLAT-Regular-PERIODIC-Loanproduct.xlsx|
 Given I setup the clients 
 Then I entered the values into client from "Input" sheet
    |Createclient.xlsx|
 Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|	
 When I set up the new create loan from "NewLoanInput" sheet
	|3042-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-INSTALLMENT-FEE-FLAT-Regular-PERIODIC-Newcreateloan.xlsx|
 Then I navigate to scheduler job & execute "Periodic Accrual Transactions"
 Then I verified the "Summary" details successfully 
	|3042-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-INSTALLMENT-FEE-FLAT-Regular-PERIODIC-Newcreateloan.xlsx|
 And I verified the "Repayment Schedule" details successfully 
    |3042-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-INSTALLMENT-FEE-FLAT-Regular-PERIODIC-Newcreateloan.xlsx|
 And I verified the "Transactions" details successfully 
	|3042-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-INSTALLMENT-FEE-FLAT-Regular-PERIODIC-Newcreateloan.xlsx|
 When I make repayment and verified the following tabs
    |3042-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-INSTALLMENT-FEE-FLAT-Regular-PERIODIC-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
 And I Navigate to Accounting web page
 And I search with transaction id & verified the accounting entries
    |3042-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-INSTALLMENT-FEE-FLAT-Regular-PERIODIC-Makerepayment1.xlsx|Acc_Disbursement|Acc_Repayment|Acc_Periodic|

 @scenario33-3043-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-INSTALLMENT-FEE-%INTEREST-Regular-PERIODIC
	  Scenario: 3043-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-INSTALLMENT-FEE-%INTEREST-Regular-PERIODIC
 Given I setup the product loan "Setup"
	| Productloannavigation.xlsx |
 Then I entered the values into product loan from "ProductLoanInput" Sheet
 	|3043-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-INSTALLMENT-FEE-%INTEREST-Regular-PERIODIC-Loanproduct.xlsx|
 Given I setup the clients 
 Then I entered the values into client from "Input" sheet
    |Createclient.xlsx|
 Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|	
 When I set up the new create loan from "NewLoanInput" sheet
	|3043-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-INSTALLMENT-FEE-%INTEREST-Regular-PERIODIC-Newcreateloan.xlsx|
 Then I navigate to scheduler job & execute "Periodic Accrual Transactions"
 Then I verified the "Summary" details successfully 
	|3043-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-INSTALLMENT-FEE-%INTEREST-Regular-PERIODIC-Newcreateloan.xlsx|
 And I verified the "Repayment Schedule" details successfully 
    |3043-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-INSTALLMENT-FEE-%INTEREST-Regular-PERIODIC-Newcreateloan.xlsx|
 And I verified the "Transactions" details successfully 
	|3043-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-INSTALLMENT-FEE-%INTEREST-Regular-PERIODIC-Newcreateloan.xlsx|
 When I make repayment and verified the following tabs
    |3043-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-INSTALLMENT-FEE-%INTEREST-Regular-PERIODIC-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
 And I Navigate to Accounting web page
 And I search with transaction id & verified the accounting entries
    |3043-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-INSTALLMENT-FEE-%INTEREST-Regular-PERIODIC-Makerepayment1.xlsx|Acc_Disbursement|Acc_Repayment|Acc_Periodic|
   
@scenario34-3045-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-OVERDUE-FEE-FLAT-Regular-PERIODIC
	  Scenario: 3045-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-OVERDUE-FEE-FLAT-Regular-PERIODIC
 
 Given I setup the product loan "Setup"
	| Productloannavigation.xlsx |
 Then I entered the values into product loan from "ProductLoanInput" Sheet
 	|3045-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-OVERDUE-FEE-FLAT-Regular-PERIODIC-Loanproduct.xlsx|
 Given I setup the clients 
 Then I entered the values into client from "Input" sheet
    |Createclient.xlsx|
 Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|	
 When I set up the new create loan from "NewLoanInput" sheet
	|3045-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-OVERDUE-FEE-FLAT-Regular-PERIODIC-Newcreateloan.xlsx|
 Then I navigate to scheduler job & execute "Periodic & penalty to overdue loans"
 Then I verified the "Summary" details successfully 
	|3045-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-OVERDUE-FEE-FLAT-Regular-PERIODIC-Newcreateloan.xlsx|
 And I verified the "Repayment Schedule" details successfully 
    |3045-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-OVERDUE-FEE-FLAT-Regular-PERIODIC-Newcreateloan.xlsx|
 And I verified the "Transactions" details successfully 
	|3045-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-OVERDUE-FEE-FLAT-Regular-PERIODIC-Newcreateloan.xlsx|
 When I make repayment and verified the following tabs
    |3045-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-OVERDUE-FEE-FLAT-Regular-PERIODIC-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
 And I Navigate to Accounting web page
 And I search with transaction id & verified the accounting entries
    |3045-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-OVERDUE-FEE-FLAT-Regular-PERIODIC-Makerepayment1.xlsx|Acc_Disbursement|Acc_Repayment|Acc_Periodic|

@scenario35-3046-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-OVERDUE-FEE-%APR-AMT-Regular-PERIODIC
	  Scenario: 3046-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-OVERDUE-FEE-%APR-AMT-Regular-PERIODIC

 Given I setup the product loan "Setup"
	| Productloannavigation.xlsx |
 Then I entered the values into product loan from "ProductLoanInput" Sheet
 	|3046-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-OVERDUE-FEE-%APR-AMT-Regular-PERIODIC-Loanproduct.xlsx|
 Given I setup the clients 
 Then I entered the values into client from "Input" sheet
    |Createclient.xlsx|
 Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|	
 When I set up the new create loan from "NewLoanInput" sheet
	|3046-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-OVERDUE-FEE-%APR-AMT-Regular-PERIODIC-Newcreateloan.xlsx|
 Then I navigate to scheduler job & execute "Periodic & penalty to overdue loans"
 Then I verified the "Summary" details successfully 
	|3046-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-OVERDUE-FEE-%APR-AMT-Regular-PERIODIC-Newcreateloan.xlsx|
 And I verified the "Repayment Schedule" details successfully 
    |3046-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-OVERDUE-FEE-%APR-AMT-Regular-PERIODIC-Newcreateloan.xlsx|
 And I verified the "Transactions" details successfully 
	|3046-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-OVERDUE-FEE-%APR-AMT-Regular-PERIODIC-Newcreateloan.xlsx|
 When I make repayment and verified the following tabs
    |3046-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-OVERDUE-FEE-%APR-AMT-Regular-PERIODIC-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
 And I Navigate to Accounting web page
 And I search with transaction id & verified the accounting entries
    |3046-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-OVERDUE-FEE-%APR-AMT-Regular-PERIODIC-Makerepayment1.xlsx|Acc_Disbursement|Acc_Repayment|Acc_Periodic|

@scenario36-3047-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-OVERDUE-FEE-%LOANAMT+INT-Regular-PERIODIC
	  Scenario: 3047-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-OVERDUE-FEE-%LOANAMT+INT-Regular-PERIODIC

 Given I setup the product loan "Setup"
	| Productloannavigation.xlsx |
 Then I entered the values into product loan from "ProductLoanInput" Sheet
 	|3047-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-OVERDUE-FEE-%LOANAMT+INT-Regular-PERIODIC-Loanproduct.xlsx|
 Given I setup the clients 
 Then I entered the values into client from "Input" sheet
    |Createclient.xlsx|
 Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|	
 When I set up the new create loan from "NewLoanInput" sheet
	|3047-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-OVERDUE-FEE-%LOANAMT+INT-Regular-PERIODIC-Newcreateloan.xlsx|
 Then I navigate to scheduler job & execute "Periodic & penalty to overdue loans"
 Then I verified the "Summary" details successfully 
	|3047-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-OVERDUE-FEE-%LOANAMT+INT-Regular-PERIODIC-Newcreateloan.xlsx|
 And I verified the "Repayment Schedule" details successfully 
    |3047-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-OVERDUE-FEE-%LOANAMT+INT-Regular-PERIODIC-Newcreateloan.xlsx|
 And I verified the "Transactions" details successfully 
	|3047-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-OVERDUE-FEE-%LOANAMT+INT-Regular-PERIODIC-Newcreateloan.xlsx|
 When I make repayment and verified the following tabs
    |3047-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-OVERDUE-FEE-%LOANAMT+INT-Regular-PERIODIC-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
 And I Navigate to Accounting web page
 And I search with transaction id & verified the accounting entries
    |3047-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-OVERDUE-FEE-%LOANAMT+INT-Regular-PERIODIC-Makerepayment1.xlsx|Acc_Disbursement|Acc_Repayment|Acc_Periodic|

@scenario37-3048-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-OVERDUE-FEE-%INT-Regular-PERIODIC
	  Scenario: 3048-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-OVERDUE-FEE-%INT-Regular-PERIODIC

 Given I setup the product loan "Setup"
	| Productloannavigation.xlsx |
 Then I entered the values into product loan from "ProductLoanInput" Sheet
 	|3048-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-OVERDUE-FEE-%INT-Regular-PERIODIC-Loanproduct.xlsx|
 Given I setup the clients 
 Then I entered the values into client from "Input" sheet
    |Createclient.xlsx|
 Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|	
 When I set up the new create loan from "NewLoanInput" sheet
	|3048-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-OVERDUE-FEE-%INT-Regular-PERIODIC-Newcreateloan.xlsx|
 Then I navigate to scheduler job & execute "Periodic & penalty to overdue loans"
 Then I verified the "Summary" details successfully 
	|3048-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-OVERDUE-FEE-%INT-Regular-PERIODIC-Newcreateloan.xlsx|
 And I verified the "Repayment Schedule" details successfully 
    |3048-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-OVERDUE-FEE-%INT-Regular-PERIODIC-Newcreateloan.xlsx|
 And I verified the "Transactions" details successfully 
	|3048-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-OVERDUE-FEE-%INT-Regular-PERIODIC-Newcreateloan.xlsx|
 When I make repayment and verified the following tabs
    |3048-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-OVERDUE-FEE-%INT-Regular-PERIODIC-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
 And I Navigate to Accounting web page
 And I search with transaction id & verified the accounting entries
    |3048-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-OVERDUE-FEE-%INT-Regular-PERIODIC-Makerepayment1.xlsx|Acc_Disbursement|Acc_Repayment|Acc_Periodic|

@scenario46-3068-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-DISBURSE-FEE-FLAT-Regular-UPFRONT
	  Scenario: 3068-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-DISBURSE-FEE-FLAT-Regular-UPFRONT
		
 Given I setup the product loan "Setup"
	| Productloannavigation.xlsx |
 Then I entered the values into product loan from "ProductLoanInput" Sheet
 	|3068-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-DISBURSE-FEE-FLAT-Regular-UPFRONT-Loanproduct.xlsx|
 Given I setup the clients 
 Then I entered the values into client from "Input" sheet
    |Createclient.xlsx|
 Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|	
 When I set up the new create loan from "NewLoanInput" sheet
	|3068-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-DISBURSE-FEE-FLAT-Regular-UPFRONT-Newcreateloan.xlsx|
 Then I navigate to scheduler job & execute "Add Upfront Accrual Transactions"
 Then I verified the "Summary" details successfully 
	|3068-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-DISBURSE-FEE-FLAT-Regular-UPFRONT-Newcreateloan.xlsx|
 And I verified the "Repayment Schedule" details successfully 
    |3068-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-DISBURSE-FEE-FLAT-Regular-UPFRONT-Newcreateloan.xlsx|
 Then I verified the "Transactions" details and read the transaction Id 
	|3068-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-DISBURSE-FEE-FLAT-Regular-UPFRONT-Newcreateloan.xlsx|
 And I Navigate to Accounting web page
 And I search with transaction id & verified the accounting entries
    |3068-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-DISBURSE-FEE-FLAT-Regular-UPFRONT-Newcreateloan.xlsx|Acc_RepaymentDisbursement|Acc_Disbursement|Acc_Upfront|

@scenario47-3069-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-DISBURSE-FEE-%APR-AMT-Regular-UPFRONT
	  Scenario: 3069-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-DISBURSE-FEE-%APR-AMT-Regular-UPFRONT
		
 Given I setup the product loan "Setup"
	| Productloannavigation.xlsx |
 Then I entered the values into product loan from "ProductLoanInput" Sheet
 	|3069-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-DISBURSE-FEE-%APR-AMT-Regular-UPFRONT-Loanproduct.xlsx|
 Given I setup the clients 
 Then I entered the values into client from "Input" sheet
    |Createclient.xlsx|
 Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|	
 When I set up the new create loan from "NewLoanInput" sheet
	|3069-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-DISBURSE-FEE-%APR-AMT-Regular-UPFRONT-Newcreateloan.xlsx|
 Then I navigate to scheduler job & execute "Add Upfront Accrual Transactions"
 Then I verified the "Summary" details successfully 
	|3069-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-DISBURSE-FEE-%APR-AMT-Regular-UPFRONT-Newcreateloan.xlsx|
 And I verified the "Repayment Schedule" details successfully 
    |3069-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-DISBURSE-FEE-%APR-AMT-Regular-UPFRONT-Newcreateloan.xlsx|
 Then I verified the "Transactions" details and read the transaction Id 
	|3069-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-DISBURSE-FEE-%APR-AMT-Regular-UPFRONT-Newcreateloan.xlsx|
 And I Navigate to Accounting web page
 And I search with transaction id & verified the accounting entries
    |3069-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-DISBURSE-FEE-%APR-AMT-Regular-UPFRONT-Newcreateloan.xlsx|Acc_RepaymentDisbursement|Acc_Disbursement|Acc_Upfront|

@scenario48-3070-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-DISBURSE-FEE-%LOANAMT+INTEREST-Regular-UPFRONT
	  Scenario: 3070-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-DISBURSE-FEE-%LOANAMT+INTEREST-Regular-UPFRONT
		
 Given I setup the product loan "Setup"
	| Productloannavigation.xlsx |
 Then I entered the values into product loan from "ProductLoanInput" Sheet
 	|3070-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-DISBURSE-FEE-%LOANAMT+INTEREST-Regular-UPFRONT-Loanproduct.xlsx|
 Given I setup the clients 
 Then I entered the values into client from "Input" sheet
    |Createclient.xlsx|
 Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|	
 When I set up the new create loan from "NewLoanInput" sheet
	|3070-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-DISBURSE-FEE-%LOANAMT+INTEREST-Regular-UPFRONT-Newcreateloan.xlsx|
 Then I navigate to scheduler job & execute "Add Upfront Accrual Transactions"
 Then I verified the "Summary" details successfully 
	|3070-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-DISBURSE-FEE-%LOANAMT+INTEREST-Regular-UPFRONT-Newcreateloan.xlsx|
 And I verified the "Repayment Schedule" details successfully 
    |3070-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-DISBURSE-FEE-%LOANAMT+INTEREST-Regular-UPFRONT-Newcreateloan.xlsx|
 Then I verified the "Transactions" details and read the transaction Id 
	|3070-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-DISBURSE-FEE-%LOANAMT+INTEREST-Regular-UPFRONT-Newcreateloan.xlsx|
 And I Navigate to Accounting web page
 And I search with transaction id & verified the accounting entries
    |3070-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-DISBURSE-FEE-%LOANAMT+INTEREST-Regular-UPFRONT-Newcreateloan.xlsx|Acc_RepaymentDisbursement|Acc_Disbursement|Acc_Upfront|

@scenario49-3071-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-DISBURSE-FEE-%INTEREST-Regular-UPFRONT
	  Scenario: 3071-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-DISBURSE-FEE-%INTEREST-Regular-UPFRONT
		
 Given I setup the product loan "Setup"
	| Productloannavigation.xlsx |
 Then I entered the values into product loan from "ProductLoanInput" Sheet
 	|3071-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-DISBURSE-FEE-%INTEREST-Regular-UPFRONT-Loanproduct.xlsx|
 Given I setup the clients 
 Then I entered the values into client from "Input" sheet
    |Createclient.xlsx|
 Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|	
 When I set up the new create loan from "NewLoanInput" sheet
	|3071-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-DISBURSE-FEE-%INTEREST-Regular-UPFRONT-Newcreateloan.xlsx|
 Then I navigate to scheduler job & execute "Add Upfront Accrual Transactions"
 Then I verified the "Summary" details successfully 
	|3071-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-DISBURSE-FEE-%INTEREST-Regular-UPFRONT-Newcreateloan.xlsx|
 And I verified the "Repayment Schedule" details successfully 
    |3071-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-DISBURSE-FEE-%INTEREST-Regular-UPFRONT-Newcreateloan.xlsx|
 Then I verified the "Transactions" details and read the transaction Id 
	|3071-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-DISBURSE-FEE-%INTEREST-Regular-UPFRONT-Newcreateloan.xlsx|
 And I Navigate to Accounting web page
 And I search with transaction id & verified the accounting entries
    |3071-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-DISBURSE-FEE-%INTEREST-Regular-UPFRONT-Newcreateloan.xlsx|Acc_RepaymentDisbursement|Acc_Disbursement|Acc_Upfront|

@scenario50-3073-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-SPEDUEDATE-FEE-FLAT-Regular-UPFRONT
	  Scenario: 3073-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-SPEDUEDATE-FEE-FLAT-Regular-UPFRONT

 Given I setup the product loan "Setup"
	| Productloannavigation.xlsx |
 Then I entered the values into product loan from "ProductLoanInput" Sheet
 	|3073-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-SPEDUEDATE-FEE-FLAT-Regular-UPFRONT-Loanproduct.xlsx|
 Given I setup the clients 
 Then I entered the values into client from "Input" sheet
    |Createclient.xlsx|
 Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|	
 When I set up the new create loan from "NewLoanInput" sheet
	|3073-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-SPEDUEDATE-FEE-FLAT-Regular-UPFRONT-Newcreateloan.xlsx|
 Then I navigate to scheduler job & execute "Add Upfront Accrual Transactions"
 Then I verified the "Summary" details successfully 
	|3073-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-SPEDUEDATE-FEE-FLAT-Regular-UPFRONT-Newcreateloan.xlsx|
 And I verified the "Repayment Schedule" details successfully 
    |3073-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-SPEDUEDATE-FEE-FLAT-Regular-UPFRONT-Newcreateloan.xlsx|
 And I verified the "Transactions" details successfully 
	|3073-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-SPEDUEDATE-FEE-FLAT-Regular-UPFRONT-Newcreateloan.xlsx|
 When I make repayment and verified the following tabs
    |3073-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-SPEDUEDATE-FEE-FLAT-Regular-UPFRONT-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
 And I Navigate to Accounting web page
 And I search with transaction id & verified the accounting entries
    |3073-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-SPEDUEDATE-FEE-FLAT-Regular-UPFRONT-Makerepayment1.xlsx|Acc_Disbursement|Acc_Repayment|Acc_Upfront|

@scenario51-3074-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-SPEDUEDATE-FEE-%APR-AMT-Regular-UPFRONT
	  Scenario: 3074-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-SPEDUEDATE-FEE-%APR-AMT-Regular-UPFRONT

 Given I setup the product loan "Setup"
	| Productloannavigation.xlsx |
 Then I entered the values into product loan from "ProductLoanInput" Sheet
 	|3074-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-SPEDUEDATE-FEE-%APR-AMT-Regular-UPFRONT-Loanproduct.xlsx|
 Given I setup the clients 
 Then I entered the values into client from "Input" sheet
    |Createclient.xlsx|
 Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|	
 When I set up the new create loan from "NewLoanInput" sheet
	|3074-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-SPEDUEDATE-FEE-%APR-AMT-Regular-UPFRONT-Newcreateloan.xlsx|
 Then I navigate to scheduler job & execute "Add Upfront Accrual Transactions"
 Then I verified the "Summary" details successfully 
	|3074-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-SPEDUEDATE-FEE-%APR-AMT-Regular-UPFRONT-Newcreateloan.xlsx|
 And I verified the "Repayment Schedule" details successfully 
    |3074-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-SPEDUEDATE-FEE-%APR-AMT-Regular-UPFRONT-Newcreateloan.xlsx|
 And I verified the "Transactions" details successfully 
	|3074-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-SPEDUEDATE-FEE-%APR-AMT-Regular-UPFRONT-Newcreateloan.xlsx|
 When I make repayment and verified the following tabs
    |3074-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-SPEDUEDATE-FEE-%APR-AMT-Regular-UPFRONT-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
 And I Navigate to Accounting web page
 And I search with transaction id & verified the accounting entries
    |3074-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-SPEDUEDATE-FEE-%APR-AMT-Regular-UPFRONT-Makerepayment1.xlsx|Acc_Disbursement|Acc_Repayment|Acc_Upfront1|Acc_Upfront2|

@scenario52-3076-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-INSTALLMENT-FEE-FLAT-Regular-UPFRONT
	  Scenario: 3076-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-INSTALLMENT-FEE-FLAT-Regular-UPFRONT

 Given I setup the product loan "Setup"
	| Productloannavigation.xlsx |
 Then I entered the values into product loan from "ProductLoanInput" Sheet
 	|3076-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-INSTALLMENT-FEE-FLAT-Regular-UPFRONT-Loanproduct.xlsx|
 Given I setup the clients 
 Then I entered the values into client from "Input" sheet
    |Createclient.xlsx|
 Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|	
 When I set up the new create loan from "NewLoanInput" sheet
	|3076-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-INSTALLMENT-FEE-FLAT-Regular-UPFRONT-Newcreateloan.xlsx|
 Then I navigate to scheduler job & execute "Add Upfront Accrual Transactions"
 Then I verified the "Summary" details successfully 
	|3076-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-INSTALLMENT-FEE-FLAT-Regular-UPFRONT-Newcreateloan.xlsx|
 And I verified the "Repayment Schedule" details successfully 
    |3076-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-INSTALLMENT-FEE-FLAT-Regular-UPFRONT-Newcreateloan.xlsx|
 And I verified the "Transactions" details successfully 
	|3076-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-INSTALLMENT-FEE-FLAT-Regular-UPFRONT-Newcreateloan.xlsx|
 When I make repayment and verified the following tabs
    |3076-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-INSTALLMENT-FEE-FLAT-Regular-UPFRONT-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
 And I Navigate to Accounting web page
 And I search with transaction id & verified the accounting entries
    |3076-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-INSTALLMENT-FEE-FLAT-Regular-UPFRONT-Makerepayment1.xlsx|Acc_Disbursement|Acc_Repayment|Acc_Upfront1|Acc_Upfront2|

 @scenario53-3077-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-INSTALLMENT-FEE-%INTEREST-Regular-UPFRONT
	  Scenario: 3077-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-INSTALLMENT-FEE-%INTEREST-Regular-UPFRONT

 Given I setup the product loan "Setup"
	| Productloannavigation.xlsx |
 Then I entered the values into product loan from "ProductLoanInput" Sheet
 	|3077-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-INSTALLMENT-FEE-%INTEREST-Regular-UPFRONT-Loanproduct.xlsx|
 Given I setup the clients 
 Then I entered the values into client from "Input" sheet
    |Createclient.xlsx|
 Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|	
 When I set up the new create loan from "NewLoanInput" sheet
	|3077-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-INSTALLMENT-FEE-%INTEREST-Regular-UPFRONT-Newcreateloan.xlsx|
 Then I navigate to scheduler job & execute "Add Upfront Accrual Transactions"
 When I make repayment and verified the following tabs
    |3077-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-INSTALLMENT-FEE-%INTEREST-Regular-UPFRONT-Makerepayment1.xlsx|Input|Transactions|
 And I Navigate to Accounting web page
 And I search with transaction id & verified the accounting entries
    |3077-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-INSTALLMENT-FEE-%INTEREST-Regular-UPFRONT-Makerepayment1.xlsx|Acc_Disbursement|Acc_Repayment|Acc_Upfront1|Acc_Upfront2|
    
@scenario54-3079-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-OVERDUE-FEE-FLAT-Regular-UPFRONT
Scenario: 3079-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-OVERDUE-FEE-FLAT-Regular-UPFRONT
 
 Given I setup the product loan "Setup"
	| Productloannavigation.xlsx |
 Then I entered the values into product loan from "ProductLoanInput" Sheet
 	|3079-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-OVERDUE-FEE-FLAT-Regular-UPFRONT-Loanproduct.xlsx|
 Given I setup the clients 
 Then I entered the values into client from "Input" sheet
    |Createclient.xlsx|
 Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|	
 When I set up the new create loan from "NewLoanInput" sheet
	|3079-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-OVERDUE-FEE-FLAT-Regular-UPFRONT-Newcreateloan.xlsx|
 Then I navigate to scheduler job & execute "Upfront & penalty to overdue loans"
 Then I verified the "Summary" details successfully 
	|3079-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-OVERDUE-FEE-FLAT-Regular-UPFRONT-Newcreateloan.xlsx|
 And I verified the "Repayment Schedule" details successfully 
    |3079-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-OVERDUE-FEE-FLAT-Regular-UPFRONT-Newcreateloan.xlsx|
 And I verified the "Transactions" details successfully 
	|3079-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-OVERDUE-FEE-FLAT-Regular-UPFRONT-Newcreateloan.xlsx|
 When I make repayment and verified the following tabs
    |3079-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-OVERDUE-FEE-FLAT-Regular-UPFRONT-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
 And I Navigate to Accounting web page
 And I search with transaction id & verified the accounting entries
    |3079-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-OVERDUE-FEE-FLAT-Regular-UPFRONT-Makerepayment1.xlsx|Acc_Disbursement|Acc_Repayment|Acc_Upfront1|Acc_Upfront2|Acc_Upfront3|

@scenario55-3080-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-OVERDUE-FEE-%APR-AMT-Regular-UPFRONT
	  Scenario: 3080-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-OVERDUE-FEE-%APR-AMT-Regular-UPFRONT

 Given I setup the product loan "Setup"
	| Productloannavigation.xlsx |
 Then I entered the values into product loan from "ProductLoanInput" Sheet
 	|3080-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-OVERDUE-FEE-%APR-AMT-Regular-UPFRONT-Loanproduct.xlsx|
 Given I setup the clients 
 Then I entered the values into client from "Input" sheet
    |Createclient.xlsx|
 Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|	
 When I set up the new create loan from "NewLoanInput" sheet
	|3080-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-OVERDUE-FEE-%APR-AMT-Regular-UPFRONT-Newcreateloan.xlsx|
 Then I navigate to scheduler job & execute "Upfront & penalty to overdue loans"
 Then I verified the "Summary" details successfully 
	|3080-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-OVERDUE-FEE-%APR-AMT-Regular-UPFRONT-Newcreateloan.xlsx|
 And I verified the "Repayment Schedule" details successfully 
    |3080-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-OVERDUE-FEE-%APR-AMT-Regular-UPFRONT-Newcreateloan.xlsx|
 And I verified the "Transactions" details successfully 
	|3080-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-OVERDUE-FEE-%APR-AMT-Regular-UPFRONT-Newcreateloan.xlsx|
 When I make repayment and verified the following tabs
    |3080-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-OVERDUE-FEE-%APR-AMT-Regular-UPFRONT-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
 And I Navigate to Accounting web page
 And I search with transaction id & verified the accounting entries
    |3080-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-OVERDUE-FEE-%APR-AMT-Regular-UPFRONT-Makerepayment1.xlsx|Acc_Disbursement|Acc_Repayment|Acc_Upfront1|Acc_Upfront2|Acc_Upfront3|

@scenario56-3081-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-OVERDUE-FEE-%LOANAMT+INT-Regular-UPFRONT
	  Scenario: 3081-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-OVERDUE-FEE-%LOANAMT+INT-Regular-UPFRONT

 Given I setup the product loan "Setup"
	| Productloannavigation.xlsx |
 Then I entered the values into product loan from "ProductLoanInput" Sheet
 	|3081-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-OVERDUE-FEE-%LOANAMT+INT-Regular-UPFRONT-Loanproduct.xlsx|
 Given I setup the clients 
 Then I entered the values into client from "Input" sheet
    |Createclient.xlsx|
 Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|	
 When I set up the new create loan from "NewLoanInput" sheet
	|3081-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-OVERDUE-FEE-%LOANAMT+INT-Regular-UPFRONT-Newcreateloan.xlsx|
 Then I navigate to scheduler job & execute "Upfront & penalty to overdue loans"
 Then I verified the "Summary" details successfully 
	|3081-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-OVERDUE-FEE-%LOANAMT+INT-Regular-UPFRONT-Newcreateloan.xlsx|
 And I verified the "Repayment Schedule" details successfully 
    |3081-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-OVERDUE-FEE-%LOANAMT+INT-Regular-UPFRONT-Newcreateloan.xlsx|
 And I verified the "Transactions" details successfully 
	|3081-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-OVERDUE-FEE-%LOANAMT+INT-Regular-UPFRONT-Newcreateloan.xlsx|
 When I make repayment and verified the following tabs
    |3081-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-OVERDUE-FEE-%LOANAMT+INT-Regular-UPFRONT-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
 And I Navigate to Accounting web page
 And I search with transaction id & verified the accounting entries
    |3081-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-OVERDUE-FEE-%LOANAMT+INT-Regular-UPFRONT-Makerepayment1.xlsx|Acc_Disbursement|Acc_Repayment|Acc_Upfront1|Acc_Upfront2|Acc_Upfront3|

@scenario57-3082-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-OVERDUE-FEE-%INT-Regular-UPFRONT
	  Scenario: 3082-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-OVERDUE-FEE-%INT-Regular-UPFRONT

 Given I setup the product loan "Setup"
	| Productloannavigation.xlsx |
 Then I entered the values into product loan from "ProductLoanInput" Sheet
 	|3082-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-OVERDUE-FEE-%INT-Regular-UPFRONT-Loanproduct.xlsx|
 Given I setup the clients 
 Then I entered the values into client from "Input" sheet
    |Createclient.xlsx|
 Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|	
 When I set up the new create loan from "NewLoanInput" sheet
	|3082-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-OVERDUE-FEE-%INT-Regular-UPFRONT-Newcreateloan.xlsx|
 Then I navigate to scheduler job & execute "Upfront & penalty to overdue loans"
 Then I verified the "Summary" details successfully 
	|3082-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-OVERDUE-FEE-%INT-Regular-UPFRONT-Newcreateloan.xlsx|
 And I verified the "Repayment Schedule" details successfully 
    |3082-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-OVERDUE-FEE-%INT-Regular-UPFRONT-Newcreateloan.xlsx|
 And I verified the "Transactions" details successfully 
	|3082-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-OVERDUE-FEE-%INT-Regular-UPFRONT-Newcreateloan.xlsx|
 When I make repayment and verified the following tabs
    |3082-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-OVERDUE-FEE-%INT-Regular-UPFRONT-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
 And I Navigate to Accounting web page
 And I search with transaction id & verified the accounting entries
    |3082-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-OVERDUE-FEE-%INT-Regular-UPFRONT-Makerepayment1.xlsx|Acc_Disbursement|Acc_Repayment|Acc_Upfront1|Acc_Upfront2|Acc_Upfront3|

@scenario1-3102-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-DISBURSE-FEE-FLAT-Regular-CASH
	  Scenario: 3102-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-DISBURSE-FEE-FLAT-Regular-CASH  

   	  Given I setup the product loan "Setup"
				| Productloannavigation.xlsx |
	  Then I entered the values into product loan from "ProductLoanInput" Sheet
				|3102-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-DISBURSE-FEE-FLAT-Regular-CASH-Loanproduct.xlsx|
   	  Given I setup the clients 
	  Then I entered the values into client from "Input" sheet
				|Createclient.xlsx|
	  Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			|3102-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-DISBURSE-FEE-FLAT-Regular-CASH-Newcreateloan.xlsx|
	  Then I verified the "Summary" details successfully 
	  			| 3102-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-DISBURSE-FEE-FLAT-Regular-CASH-Newcreateloan.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
	  			| 3102-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-DISBURSE-FEE-FLAT-Regular-CASH-Newcreateloan.xlsx|
	  Then I verified the "Transactions" details and read the transaction Id
	  			| 3102-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-DISBURSE-FEE-FLAT-Regular-CASH-Newcreateloan.xlsx|			
	  And I Navigate to Accounting web page
	  Then I search with transaction id & verified the accounting entries
	   			|3102-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-DISBURSE-FEE-FLAT-Regular-CASH-Newcreateloan.xlsx|Acc_RepaymentDisbursement|Acc_Disbursement|

@scenario2-3103-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-DISBURSE-FEE-%APR-AMT-Regular-CASH   
	  Scenario: 3103-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-DISBURSE-FEE-%APR-AMT-Regular-CASH  

   	  Given I setup the product loan "Setup"
				| Productloannavigation.xlsx |
	  Then I entered the values into product loan from "ProductLoanInput" Sheet
				|3103-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-DISBURSE-FEE-%APR-AMT-Regular-CASH-Loanproduct.xlsx|
   	  Given I setup the clients 
	  Then I entered the values into client from "Input" sheet
				|Createclient.xlsx|
	  Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			|3103-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-DISBURSE-FEE-%APR-AMT-Regular-CASH-Newcreateloan.xlsx|
	  Then I verified the "Summary" details successfully 
	  			| 3103-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-DISBURSE-FEE-%APR-AMT-Regular-CASH-Newcreateloan.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
	  			| 3103-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-DISBURSE-FEE-%APR-AMT-Regular-CASH-Newcreateloan.xlsx|
	  Then I verified the "Transactions" details and read the transaction Id 
	  			| 3103-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-DISBURSE-FEE-%APR-AMT-Regular-CASH-Newcreateloan.xlsx|			
	  And I Navigate to Accounting web page
	  Then I search with transaction id & verified the accounting entries
	   			|3103-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-DISBURSE-FEE-%APR-AMT-Regular-CASH-Newcreateloan.xlsx|Acc_RepaymentDisbursement|Acc_Disbursement|
	   			
@scenario3-3104-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-DISBURSE-FEE-%LOANAMT+INTEREST-Regular-CASH   
	  Scenario: 3104-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-DISBURSE-FEE-%LOANAMT+INTEREST-Regular-CASH

   	  Given I setup the product loan "Setup"
				| Productloannavigation.xlsx |
	  Then I entered the values into product loan from "ProductLoanInput" Sheet
				|3104-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-DISBURSE-FEE-%LOANAMT+INTEREST-Regular-CASH-Loanproduct.xlsx|
   	  Given I setup the clients 
	  Then I entered the values into client from "Input" sheet
				|Createclient.xlsx|
	  Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			|3104-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-DISBURSE-FEE-%LOANAMT+INTEREST-Regular-CASH-Newcreateloan.xlsx|
	  Then I verified the "Summary" details successfully 
	  			| 3104-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-DISBURSE-FEE-%LOANAMT+INTEREST-Regular-CASH-Newcreateloan.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
	  			| 3104-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-DISBURSE-FEE-%LOANAMT+INTEREST-Regular-CASH-Newcreateloan.xlsx|
	  Then I verified the "Transactions" details and read the transaction Id 
	  			| 3104-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-DISBURSE-FEE-%LOANAMT+INTEREST-Regular-CASH-Newcreateloan.xlsx|			
	  And I Navigate to Accounting web page
	  Then I search with transaction id & verified the accounting entries
	   			|3104-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-DISBURSE-FEE-%LOANAMT+INTEREST-Regular-CASH-Newcreateloan.xlsx|Acc_RepaymentDisbursement|Acc_Disbursement|	   				 	  			

@scenario4-3105-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-DISBURSE-FEE-%INTEREST-Regular-CASH   
	  Scenario: 3105-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-DISBURSE-FEE-%INTEREST-Regular-CASH  

   	  Given I setup the product loan "Setup"
				| Productloannavigation.xlsx |
	  Then I entered the values into product loan from "ProductLoanInput" Sheet
				|3105-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-DISBURSE-FEE-%INTEREST-Regular-CASH-Loanproduct.xlsx|
   	  Given I setup the clients 
	  Then I entered the values into client from "Input" sheet
				|Createclient.xlsx|
	  Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			|3105-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-DISBURSE-FEE-%INTEREST-Regular-CASH-Newcreateloan.xlsx|
	  Then I verified the "Summary" details successfully 
	  			| 3105-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-DISBURSE-FEE-%INTEREST-Regular-CASH-Newcreateloan.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
	  			| 3105-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-DISBURSE-FEE-%INTEREST-Regular-CASH-Newcreateloan.xlsx|
	  Then I verified the "Transactions" details and read the transaction Id 
	  			| 3105-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-DISBURSE-FEE-%INTEREST-Regular-CASH-Newcreateloan.xlsx|			
	  And I Navigate to Accounting web page
	  Then I search with transaction id & verified the accounting entries
	   			|3105-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-DISBURSE-FEE-%INTEREST-Regular-CASH-Newcreateloan.xlsx|Acc_RepaymentDisbursement|Acc_Disbursement|
	   			
#@scenario5-3106-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-DISBURSE-FEE-%DIS-AMT-Regular-CASH
#	  Scenario: 3106-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-DISBURSE-FEE-%DIS-AMT-Regular-CASH  

#	  Given I setup the product loan "Setup"
#				| Productloannavigation.xlsx |
#	  Then I entered the values into product loan from "ProductLoanInput" Sheet
#				|3106-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-DISBURSE-FEE-%DIS-AMT-Regular-CASH-Loanproduct.xlsx|
#   	  Given I setup the clients 
#	  Then I entered the values into client from "Input" sheet
#				|Createclient.xlsx|
#	  Then I should see client created successfully from "Output" sheet
#	  			|Createclient.xlsx|
#	  When I set up the new create loan from "NewLoanInput" sheet
#	  			|3106-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-DISBURSE-FEE-%DIS-AMT-Regular-CASH-Newcreateloan.xlsx|
#	  Then I verified the "Summary" details successfully 
#	  			| 3106-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-DISBURSE-FEE-%DIS-AMT-Regular-CASH-Newcreateloan.xlsx|
#	  And I verified the "Repayment Schedule" details successfully 
#	  			| 3106-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-DISBURSE-FEE-%DIS-AMT-Regular-CASH-Newcreateloan.xlsx|
#	  Then I verified the "Transactions" details and read the transaction Id 
#	  			| 3106-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-DISBURSE-FEE-%DIS-AMT-Regular-CASH-Newcreateloan.xlsx|			
#	  And I Navigate to Accounting web page
#	  Then I search with transaction id & verified the accounting entries
#	   			|3106-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-DISBURSE-FEE-%DIS-AMT-Regular-CASH-Newcreateloan.xlsx|Acc_RepaymentDisbursement|Acc_Disbursement|	  			

@scenario6-3107-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-SPEDUEDATE-FEE-FLAT-Regular-CASH	   
	  Scenario: 3107-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-SPEDUEDATE-FEE-FLAT-Regular-CASH  

   	  Given I setup the product loan "Setup"
				| Productloannavigation.xlsx |
	  Then I entered the values into product loan from "ProductLoanInput" Sheet
				|3107-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-SPEDUEDATE-FEE-FLAT-Regular-CASH-Loanproduct.xlsx|
   	  Given I setup the clients 
	  Then I entered the values into client from "Input" sheet
				|Createclient.xlsx|
	  Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			| 3107-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-SPEDUEDATE-FEE-FLAT-Regular-CASH-Newcreateloan.xlsx|
	  Then I verified the "Summary" details successfully 
	  			| 3107-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-SPEDUEDATE-FEE-FLAT-Regular-CASH-Newcreateloan.xlsx|
 	  And I verified the "Repayment Schedule" details successfully 
	  			| 3107-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-SPEDUEDATE-FEE-FLAT-Regular-CASH-Newcreateloan.xlsx|	  			
	  Then I make repayment and read the transaction Id
       			|3107-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-SPEDUEDATE-FEE-FLAT-Regular-CASH-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
      And I Navigate to Accounting web page
	  Then I search with transaction id & verified the accounting entries
	   			| 3107-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-SPEDUEDATE-FEE-FLAT-Regular-CASH-Makerepayment1.xlsx|Acc_Disbursement|Acc_Repayment|

@scenario7-3108-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-SPEDUEDATE-FEE-%APR-AMT-Regular-CASH	   
	  Scenario: 3108-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-SPEDUEDATE-FEE-%APR-AMT-Regular-CASH  

   	  Given I setup the product loan "Setup"
				| Productloannavigation.xlsx |
	  Then I entered the values into product loan from "ProductLoanInput" Sheet
				|3108-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-SPEDUEDATE-FEE-%APR-AMT-Regular-CASH-Loanproduct.xlsx|
   	  Given I setup the clients 
	  Then I entered the values into client from "Input" sheet
				|Createclient.xlsx|
	  Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			|3108-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-SPEDUEDATE-FEE-%APR-AMT-Regular-CASH-Newcreateloan.xlsx|
	  Then I verified the "Summary" details successfully 
	  			|3108-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-SPEDUEDATE-FEE-%APR-AMT-Regular-CASH-Newcreateloan.xlsx|
 	  And I verified the "Repayment Schedule" details successfully 
	  			|3108-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-SPEDUEDATE-FEE-%APR-AMT-Regular-CASH-Newcreateloan.xlsx|
	  Then I make repayment and read the transaction Id
       			|3108-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-SPEDUEDATE-FEE-%APR-AMT-Regular-CASH-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
      And I Navigate to Accounting web page
	  Then I search with transaction id & verified the accounting entries
	   			| 3108-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-SPEDUEDATE-FEE-%APR-AMT-Regular-CASH-Makerepayment1.xlsx|Acc_Disbursement|Acc_Repayment|

#@scenario8-3109-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-SPEDUEDATE-FEE-%DIS-AMT-Regular-CASH	   
#	  Scenario: 3109-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-SPEDUEDATE-FEE-%DIS-AMT-Regular-CASH  

#	  Given I setup the product loan "Setup"
#				| Productloannavigation.xlsx |
#	  Then I entered the values into product loan from "ProductLoanInput" Sheet
#				|3109-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-SPEDUEDATE-FEE-%DIS-AMT-Regular-CASH-Loanproduct.xlsx|
#   	  Given I setup the clients 
#	  Then I entered the values into client from "Input" sheet
#				|Createclient.xlsx|
#	  Then I should see client created successfully from "Output" sheet
#	  			|Createclient.xlsx|
#	  When I set up the new create loan from "NewLoanInput" sheet
#	  			|3109-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-SPEDUEDATE-FEE-%DIS-AMT-Regular-CASH-Newcreateloan.xlsx|
#	  Then I verified the "Summary" details successfully 
#	  			|3109-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-SPEDUEDATE-FEE-%DIS-AMT-Regular-CASH-Newcreateloan.xlsx|
#	  And I verified the "Repayment Schedule" details successfully 
#  			|3109-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-SPEDUEDATE-FEE-%DIS-AMT-Regular-CASH-Newcreateloan.xlsx|
#	  Then I make repayment and read the transaction Id
#      			|3109-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-SPEDUEDATE-FEE-%DIS-AMT-Regular-CASH-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
#      And I Navigate to Accounting web page
#	  Then I search with transaction id & verified the accounting entries
#	   			| 3109-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-SPEDUEDATE-FEE-%DIS-AMT-Regular-CASH-Makerepayment1.xlsx|Acc_Disbursement|Acc_Repayment|

@scenario9-3110-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-INSTALLMENT-FEE-FLAT-Regular-CASH	   
	  Scenario: 3110-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-INSTALLMENT-FEE-FLAT-Regular-CASH  

   	  Given I setup the product loan "Setup"
				| Productloannavigation.xlsx |
	  Then I entered the values into product loan from "ProductLoanInput" Sheet
				|3110-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-INSTALLMENT-FEE-FLAT-Regular-CASH-Loanproduct.xlsx|
   	  Given I setup the clients 
	  Then I entered the values into client from "Input" sheet
				|Createclient.xlsx|
	  Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			| 3110-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-INSTALLMENT-FEE-FLAT-Regular-CASH-Newcreateloan.xlsx|
	   Then I verified the "Summary" details successfully 
	  			| 3110-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-INSTALLMENT-FEE-FLAT-Regular-CASH-Newcreateloan.xlsx|
 	  And I verified the "Repayment Schedule" details successfully 
	  			| 3110-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-INSTALLMENT-FEE-FLAT-Regular-CASH-Newcreateloan.xlsx|	  			
	  Then I make repayment and read the transaction Id
       			|3110-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-INSTALLMENT-FEE-FLAT-Regular-CASH-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
      And I Navigate to Accounting web page
	  Then I search with transaction id & verified the accounting entries
	   			| 3110-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-INSTALLMENT-FEE-FLAT-Regular-CASH-Makerepayment1.xlsx|Acc_Disbursement|Acc_Repayment|

@scenario10-3111-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-INSTALLMENT-FEE-%INTEREST-Regular-CASH	   
	  Scenario: 3111-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-INSTALLMENT-FEE-%INTEREST-Regular-CASH  

   	  Given I setup the product loan "Setup"
				| Productloannavigation.xlsx |
	  Then I entered the values into product loan from "ProductLoanInput" Sheet
				|3111-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-INSTALLMENT-FEE-%INTEREST-Regular-CASH-Loanproduct.xlsx|
   	  Given I setup the clients 
	  Then I entered the values into client from "Input" sheet
				|Createclient.xlsx|
	  Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			| 3111-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-INSTALLMENT-FEE-%INTEREST-Regular-CASH-Newcreateloan.xlsx|
	  Then I verified the "Summary" details successfully 
	  			| 3111-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-INSTALLMENT-FEE-%INTEREST-Regular-CASH-Newcreateloan.xlsx|
 	  And I verified the "Repayment Schedule" details successfully 
	  			| 3111-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-INSTALLMENT-FEE-%INTEREST-Regular-CASH-Newcreateloan.xlsx|	  			
	  Then I make repayment and read the transaction Id
       			|3111-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-INSTALLMENT-FEE-%INTEREST-Regular-CASH-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
      And I Navigate to Accounting web page
	  Then I search with transaction id & verified the accounting entries
	   			| 3111-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-INSTALLMENT-FEE-%INTEREST-Regular-CASH-Makerepayment1.xlsx|Acc_Disbursement|Acc_Repayment|
						

#@scenario11-3112-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-INSTALLMENT-FEE-%DIS-AMT-Regular-CASH
#	  Scenario: 3112-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-INSTALLMENT-FEE-%DIS-AMT-Regular-CASH  

#	  Given I setup the product loan "Setup"
#				| Productloannavigation.xlsx |
#	  Then I entered the values into product loan from "ProductLoanInput" Sheet
#				|3112-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-INSTALLMENT-FEE-%DIS-AMT-Regular-CASH-Loanproduct.xlsx|
#   	  Given I setup the clients 
#	  Then I entered the values into client from "Input" sheet
#				|Createclient.xlsx|
#	  Then I should see client created successfully from "Output" sheet
#	  			|Createclient.xlsx|
#	  When I set up the new create loan from "NewLoanInput" sheet
#	  			| 3112-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-INSTALLMENT-FEE-%DIS-AMT-Regular-CASH-Newcreateloan.xlsx|
#	  And I verified the "Repayment Schedule" details successfully 
#	  			| 3112-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-INSTALLMENT-FEE-%DIS-AMT-Regular-CASH-Newcreateloan.xlsx|	  			
#	  Then I make repayment and read the transaction Id
#      			|3112-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-INSTALLMENT-FEE-%DIS-AMT-Regular-CASH-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
#	  Then I make repayment and read the transaction Id
#       			|3112-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-INSTALLMENT-FEE-%DIS-AMT-Regular-CASH-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
#       		#	|Makerepayment3.xlsx|Input|Summary|Repayment Schedule|Transactions|
#      And I Navigate to Accounting web page
#	  Then I search with transaction id & verified the accounting entries
#	   			| 3112-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-INSTALLMENT-FEE-%DIS-AMT-Regular-CASH-Makerepayment1.xlsx|Acc_Disbursement|Acc_Repayment|

@scenario12-3113-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-OVERDUE-FEE-FLAT-Regular-CASH
	  Scenario: 3113-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-OVERDUE-FEE-FLAT-Regular-CASH
 
 Given I setup the product loan "Setup"
	| Productloannavigation.xlsx |
 Then I entered the values into product loan from "ProductLoanInput" Sheet
	|3113-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-OVERDUE-FEE-FLAT-Regular-CASH-Loanproduct.xlsx|
 Given I setup the clients 
 Then I entered the values into client from "Input" sheet
	|Createclient.xlsx|
 Then I should see client created successfully from "Output" sheet
	|Createclient.xlsx|
 When I set up the new create loan from "NewLoanInput" sheet
	| 3113-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-OVERDUE-FEE-FLAT-Regular-CASH-Newcreateloan.xlsx|
 Then I navigate to scheduler job & execute "Apply penalty to overdue loans"
 Then I verified the "Summary" details successfully 
	  			| 3113-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-OVERDUE-FEE-FLAT-Regular-CASH-Newcreateloan.xlsx|
 And I verified the "Repayment Schedule" details successfully 
	  			| 3113-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-OVERDUE-FEE-FLAT-Regular-CASH-Newcreateloan.xlsx|
  Then I make repayment and read the transaction Id
 	|3113-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-OVERDUE-FEE-FLAT-Regular-CASH-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
 And I Navigate to Accounting web page
 And I search with transaction id & verified the accounting entries
	| 3113-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-OVERDUE-FEE-FLAT-Regular-CASH-Makerepayment1.xlsx|Acc_Disbursement|Acc_Repayment|

@scenario13-3114-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-OVERDUE-FEE-%APR-AMT-Regular-CASH
	  Scenario: 3114-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-OVERDUE-FEE-%APR-AMT-Regular-CASH  
 
 Given I setup the product loan "Setup"
	| Productloannavigation.xlsx |
 Then I entered the values into product loan from "ProductLoanInput" Sheet
	|3114-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-OVERDUE-FEE-%APR-AMT-Regular-CASH-Loanproduct.xlsx|
 Given I setup the clients 
 Then I entered the values into client from "Input" sheet
	|Createclient.xlsx|
 Then I should see client created successfully from "Output" sheet
	|Createclient.xlsx|
 When I set up the new create loan from "NewLoanInput" sheet
	| 3114-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-OVERDUE-FEE-%APR-AMT-Regular-CASH-Newcreateloan.xlsx|
 Then I navigate to scheduler job & execute "Apply penalty to overdue loans"
 Then I verified the "Summary" details successfully 
	| 3114-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-OVERDUE-FEE-%APR-AMT-Regular-CASH-Newcreateloan.xlsx|
 And I verified the "Repayment Schedule" details successfully 
	| 3114-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-OVERDUE-FEE-%APR-AMT-Regular-CASH-Newcreateloan.xlsx|
 Then I make repayment and read the transaction Id
 	|3114-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-OVERDUE-FEE-%APR-AMT-Regular-CASH-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
 And I Navigate to Accounting web page
 And I search with transaction id & verified the accounting entries
	| 3114-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-OVERDUE-FEE-%APR-AMT-Regular-CASH-Makerepayment1.xlsx|Acc_Disbursement|Acc_Repayment|

@scenario14-3115-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-OVERDUE-FEE-%LOANAMT+INT-Regular-CASH
	  Scenario: 3115-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-OVERDUE-FEE-%LOANAMT+INT-Regular-CASH  
 Given I setup the product loan "Setup"
	| Productloannavigation.xlsx |
 Then I entered the values into product loan from "ProductLoanInput" Sheet
	|3115-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-OVERDUE-FEE-%LOANAMT+INT-Regular-CASH-Loanproduct.xlsx|
 Given I setup the clients 
 Then I entered the values into client from "Input" sheet
	|Createclient.xlsx|
 Then I should see client created successfully from "Output" sheet
	|Createclient.xlsx|
 When I set up the new create loan from "NewLoanInput" sheet
	| 3115-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-OVERDUE-FEE-%LOANAMT+INT-Regular-CASH-Newcreateloan.xlsx|
 Then I navigate to scheduler job & execute "Apply penalty to overdue loans"
 Then I verified the "Summary" details successfully 
	| 3115-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-OVERDUE-FEE-%LOANAMT+INT-Regular-CASH-Newcreateloan.xlsx|
 And I verified the "Repayment Schedule" details successfully 
	| 3115-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-OVERDUE-FEE-%LOANAMT+INT-Regular-CASH-Newcreateloan.xlsx|
 Then I make repayment and read the transaction Id
 	|3115-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-OVERDUE-FEE-%LOANAMT+INT-Regular-CASH-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
 And I Navigate to Accounting web page
 And I search with transaction id & verified the accounting entries
	| 3115-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-OVERDUE-FEE-%LOANAMT+INT-Regular-CASH-Makerepayment1.xlsx|Acc_Disbursement|Acc_Repayment|

@scenario15-3116-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-OVERDUE-FEE-%INTEREST-Regular-CASH
	  Scenario: 3116-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-OVERDUE-FEE-%INTEREST-Regular-CASH  
 
 Given I setup the product loan "Setup"
	| Productloannavigation.xlsx |
 Then I entered the values into product loan from "ProductLoanInput" Sheet
	|3116-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-OVERDUE-FEE-%INTEREST-Regular-CASH-Loanproduct.xlsx|
 Given I setup the clients 
 Then I entered the values into client from "Input" sheet
	|Createclient.xlsx|
 Then I should see client created successfully from "Output" sheet
	|Createclient.xlsx|
 When I set up the new create loan from "NewLoanInput" sheet
	| 3116-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-OVERDUE-FEE-%INTEREST-Regular-CASH-Newcreateloan.xlsx|
 Then I navigate to scheduler job & execute "Apply penalty to overdue loans"
 Then I verified the "Summary" details successfully 
	| 3116-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-OVERDUE-FEE-%INTEREST-Regular-CASH-Newcreateloan.xlsx|
 And I verified the "Repayment Schedule" details successfully 
	| 3116-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-OVERDUE-FEE-%INTEREST-Regular-CASH-Newcreateloan.xlsx|
 Then I make repayment and read the transaction Id
 	|3116-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-OVERDUE-FEE-%INTEREST-Regular-CASH-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
 And I Navigate to Accounting web page
 And I search with transaction id & verified the accounting entries
	| 3116-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-OVERDUE-FEE-%INTEREST-Regular-CASH-Makerepayment1.xlsx|Acc_Disbursement|Acc_Repayment|
	
@scenario16-3117-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-TR-DISB-FEE-FLAT-Regular-CASH
	  Scenario: 3117-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-TR-DISB-FEE-FLAT-Regular-CASH  

   	  Given I setup the product loan "Setup"
				| Productloannavigation.xlsx |
 	  Then I entered the values into product loan from "ProductLoanInput" Sheet
				|3117-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-TR-DISB-FEE-FLAT-Regular-CASH-Loanproduct.xlsx|
   	  Given I setup the clients 
	  Then I entered the values into client from "Input" sheet
				|Createclient.xlsx|
	  Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			| 3117-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-TR-DISB-FEE-FLAT-Regular-CASH-Newcreateloan.xlsx|
	  Then I verified the "Summary" details successfully 
				| 3117-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-TR-DISB-FEE-FLAT-Regular-CASH-Newcreateloan.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
				| 3117-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-TR-DISB-FEE-FLAT-Regular-CASH-Newcreateloan.xlsx|
	  Then I make repayment and read the transaction Id
       			|3117-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-TR-DISB-FEE-FLAT-Regular-CASH-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
      And I Navigate to Accounting web page
	  Then I search with transaction id & verified the accounting entries
	   			| 3117-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-TR-DISB-FEE-FLAT-Regular-CASH-Makerepayment1.xlsx|Acc_RepaymentDisbursement|Acc_Disbursement|Acc_Repayment|

@scenario17-3118-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-TR-%DISB-AMT-Regular-CASH
	  Scenario: 3118-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-TR-%DISB-AMT-Regular-CASH  

   	  Given I setup the product loan "Setup"
				| Productloannavigation.xlsx |
 	  Then I entered the values into product loan from "ProductLoanInput" Sheet
				|3118-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-TR-%DISB-AMT-Regular-CASH-Loanproduct.xlsx|
   	  Given I setup the clients 
	  Then I entered the values into client from "Input" sheet
				|Createclient.xlsx|
	  Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			| 3118-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-TR-%DISB-AMT-Regular-CASH-Newcreateloan.xlsx|
	   Then I verified the "Summary" details successfully 
				| 3118-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-TR-%DISB-AMT-Regular-CASH-Newcreateloan.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
				| 3118-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-TR-%DISB-AMT-Regular-CASH-Newcreateloan.xlsx|
	  Then I make repayment and read the transaction Id
       			|3118-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-TR-%DISB-AMT-Regular-CASH-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
      And I Navigate to Accounting web page
	  Then I search with transaction id & verified the accounting entries
	   			| 3118-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-TR-%DISB-AMT-Regular-CASH-Makerepayment1.xlsx|Acc_RepaymentDisbursement|Acc_Disbursement|Acc_Repayment|
	   			
@scenario18-3124-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-SPEDUEDATE-FEE-FLAT-Regular-CASH	   
	  Scenario: 3124-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-SPEDUEDATE-FEE-FLAT-Regular-CASH 

  	  Given I setup the product loan "Setup"
				| Productloannavigation.xlsx |
 	  Then I entered the values into product loan from "ProductLoanInput" Sheet
				|3124-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-SPEDUEDATE-FEE-FLAT-Regular-CASH-Loanproduct.xlsx|
  	  Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			|3124-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-SPEDUEDATE-FEE-FLAT-Regular-CASH-Newcreateloan1.xlsx|
	  Then I verified the "Summary" details successfully 
	  			|3124-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-SPEDUEDATE-FEE-FLAT-Regular-CASH-Newcreateloan1.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
	  			|3124-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-SPEDUEDATE-FEE-FLAT-Regular-CASH-Newcreateloan1.xlsx|
	  And I verified the "Transactions" details successfully	
				|3124-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-SPEDUEDATE-FEE-FLAT-Regular-CASH-Newcreateloan1.xlsx|
	  Then I make repayment and verified the following tabs
       			|3124-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-SPEDUEDATE-FEE-FLAT-Regular-CASH-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
      And I disburse loan from "NewLoanInput" sheet
      			|3124-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-SPEDUEDATE-FEE-FLAT-Regular-CASH-Newcreateloan2.xlsx|
      Then I verified the "Summary" details successfully 
	  			|3124-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-SPEDUEDATE-FEE-FLAT-Regular-CASH-Newcreateloan2.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
	  			|3124-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-SPEDUEDATE-FEE-FLAT-Regular-CASH-Newcreateloan2.xlsx| 			
	  And I verified the "Transactions" details successfully	
				|3124-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-SPEDUEDATE-FEE-FLAT-Regular-CASH-Newcreateloan2.xlsx|
	  Then I make repayment and read the transaction Id
 				|3124-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-SPEDUEDATE-FEE-FLAT-Regular-CASH-Makerepayment2.xlsx|Input|Transactions|
 	  And I Navigate to Accounting web page
 	  And I search with transaction id & verified the accounting entries
				|3124-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-SPEDUEDATE-FEE-FLAT-Regular-CASH-Makerepayment2.xlsx|Acc_Disbursement|Acc_Repayment|Acc_Disbursement1|Acc_Repayment1|
	
@scenario19-3125-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-SPEDUEDATE-FEE-%APRAMT-Regular-CASH	   
	  Scenario: 3125-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-SPEDUEDATE-FEE-%APRAMT-Regular-CASH 

  	  Given I setup the product loan "Setup"
				| Productloannavigation.xlsx |
 	  Then I entered the values into product loan from "ProductLoanInput" Sheet
				|3125-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-SPEDUEDATE-FEE-%APRAMT-Regular-CASH-Loanproduct.xlsx|
  	  Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			|3125-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-SPEDUEDATE-FEE-%APRAMT-Regular-CASH-Newcreateloan1.xlsx|
	  Then I verified the "Summary" details successfully 
	  			|3125-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-SPEDUEDATE-FEE-%APRAMT-Regular-CASH-Newcreateloan1.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
	  			|3125-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-SPEDUEDATE-FEE-%APRAMT-Regular-CASH-Newcreateloan1.xlsx|
	  And I verified the "Transactions" details successfully	
				|3125-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-SPEDUEDATE-FEE-%APRAMT-Regular-CASH-Newcreateloan1.xlsx|
	  Then I make repayment and verified the following tabs
       			|3125-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-SPEDUEDATE-FEE-%APRAMT-Regular-CASH-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
      And I disburse loan from "NewLoanInput" sheet
      			|3125-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-SPEDUEDATE-FEE-%APRAMT-Regular-CASH-Newcreateloan2.xlsx|
      Then I verified the "Summary" details successfully 
	  			|3125-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-SPEDUEDATE-FEE-%APRAMT-Regular-CASH-Newcreateloan2.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
	  			|3125-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-SPEDUEDATE-FEE-%APRAMT-Regular-CASH-Newcreateloan2.xlsx| 			
	  And I verified the "Transactions" details successfully	
				|3125-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-SPEDUEDATE-FEE-%APRAMT-Regular-CASH-Newcreateloan2.xlsx|
	 Then I make repayment and read the transaction Id
 				|3125-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-SPEDUEDATE-FEE-%APRAMT-Regular-CASH-Makerepayment2.xlsx|Input|Transactions|
 	 And I Navigate to Accounting web page
 	 And I search with transaction id & verified the accounting entries
				|3125-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-SPEDUEDATE-FEE-%APRAMT-Regular-CASH-Makerepayment2.xlsx|Acc_Disbursement|Acc_Repayment|Acc_Disbursement1|Acc_Repayment1|


@scenario20-3127-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-INSTALLMENT-FEE-FLAT-Regular-CASH	   
	  Scenario: 3127-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-INSTALLMENT-FEE-FLAT-Regular-CASH 

  	  Given I setup the product loan "Setup"
				| Productloannavigation.xlsx |
 	  Then I entered the values into product loan from "ProductLoanInput" Sheet
				|3127-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-INSTALLMENT-FEE-FLAT-Regular-CASH-Loanproduct.xlsx|
  	  Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			|3127-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-INSTALLMENT-FEE-FLAT-Regular-CASH-Newcreateloan1.xlsx|
	  Then I verified the "Summary" details successfully 
	  			|3127-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-INSTALLMENT-FEE-FLAT-Regular-CASH-Newcreateloan1.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
	  			|3127-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-INSTALLMENT-FEE-FLAT-Regular-CASH-Newcreateloan1.xlsx|
	  And I verified the "Transactions" details successfully	
				|3127-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-INSTALLMENT-FEE-FLAT-Regular-CASH-Newcreateloan1.xlsx|
	  Then I make repayment and verified the following tabs
       			|3127-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-INSTALLMENT-FEE-FLAT-Regular-CASH-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
      And I disburse loan from "NewLoanInput" sheet
      			|3127-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-INSTALLMENT-FEE-FLAT-Regular-CASH-Newcreateloan2.xlsx|
      Then I verified the "Summary" details successfully 
	  			|3127-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-INSTALLMENT-FEE-FLAT-Regular-CASH-Newcreateloan2.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
	  			|3127-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-INSTALLMENT-FEE-FLAT-Regular-CASH-Newcreateloan2.xlsx| 			
	  And I verified the "Transactions" details successfully	
				|3127-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-INSTALLMENT-FEE-FLAT-Regular-CASH-Newcreateloan2.xlsx|
	 Then I make repayment and read the transaction Id
 				|3127-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-INSTALLMENT-FEE-FLAT-Regular-CASH-Makerepayment2.xlsx|Input|Transactions|
 	 And I Navigate to Accounting web page
 	 And I search with transaction id & verified the accounting entries
				|3127-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-INSTALLMENT-FEE-FLAT-Regular-CASH-Makerepayment2.xlsx|Acc_Disbursement|Acc_Repayment|Acc_Disbursement1|Acc_Repayment1|

@scenario21-3128-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-INSTALLMENT-FEE-%INTEREST-Regular-CASH	
	  Scenario: 3128-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-INSTALLMENT-FEE-%INTEREST-Regular-CASH 

  	  Given I setup the product loan "Setup"
				| Productloannavigation.xlsx |
 	  Then I entered the values into product loan from "ProductLoanInput" Sheet
				|3128-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-INSTALLMENT-FEE-%INTEREST-Regular-CASH-Loanproduct.xlsx|
  	  Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			|3128-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-INSTALLMENT-FEE-%INTEREST-Regular-CASH-Newcreateloan1.xlsx|
	  Then I verified the "Summary" details successfully 
	  			|3128-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-INSTALLMENT-FEE-%INTEREST-Regular-CASH-Newcreateloan1.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
	  			|3128-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-INSTALLMENT-FEE-%INTEREST-Regular-CASH-Newcreateloan1.xlsx|
	  And I verified the "Transactions" details successfully	
				|3128-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-INSTALLMENT-FEE-%INTEREST-Regular-CASH-Newcreateloan1.xlsx|
	  Then I make repayment and verified the following tabs
       			|3128-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-INSTALLMENT-FEE-%INTEREST-Regular-CASH-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
      And I disburse loan from "NewLoanInput" sheet
      			|3128-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-INSTALLMENT-FEE-%INTEREST-Regular-CASH-Newcreateloan2.xlsx|
      Then I verified the "Summary" details successfully 
	  			|3128-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-INSTALLMENT-FEE-%INTEREST-Regular-CASH-Newcreateloan2.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
	  			|3128-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-INSTALLMENT-FEE-%INTEREST-Regular-CASH-Newcreateloan2.xlsx| 			
	  And I verified the "Transactions" details successfully	
				|3128-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-INSTALLMENT-FEE-%INTEREST-Regular-CASH-Newcreateloan2.xlsx|
	 Then I make repayment and read the transaction Id
 				|3128-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-INSTALLMENT-FEE-%INTEREST-Regular-CASH-Makerepayment2.xlsx|Input|Transactions|
 	 And I Navigate to Accounting web page
 	 And I search with transaction id & verified the accounting entries
				|3128-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-INSTALLMENT-FEE-%INTEREST-Regular-CASH-Makerepayment2.xlsx|Acc_Disbursement|Acc_Repayment|Acc_Disbursement1|Acc_Repayment1|

@scenario22-3130-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-OVERDUE-FEE-FLAT-Regular-CASH	
	  Scenario: 3130-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-OVERDUE-FEE-FLAT-Regular-CASH 

  	  Given I setup the product loan "Setup"
				| Productloannavigation.xlsx |
 	  Then I entered the values into product loan from "ProductLoanInput" Sheet
				|3130-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-OVERDUE-FEE-FLAT-Regular-CASH-Loanproduct.xlsx|
  	  Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			|3130-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-OVERDUE-FEE-FLAT-Regular-CASH-Newcreateloan1.xlsx|
	  Then I navigate to scheduler job & execute "Apply penalty to overdue loans"
	  Then I verified the "Summary" details successfully 
	  			|3130-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-OVERDUE-FEE-FLAT-Regular-CASH-Newcreateloan1.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
	  			|3130-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-OVERDUE-FEE-FLAT-Regular-CASH-Newcreateloan1.xlsx|
	  And I verified the "Transactions" details successfully	
				|3130-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-OVERDUE-FEE-FLAT-Regular-CASH-Newcreateloan1.xlsx|
	  Then I make repayment and verified the following tabs
       			|3130-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-OVERDUE-FEE-FLAT-Regular-CASH-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
      And I disburse loan from "NewLoanInput" sheet
      			|3130-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-OVERDUE-FEE-FLAT-Regular-CASH-Newcreateloan2.xlsx|
      Then I verified the "Summary" details successfully 
	  			|3130-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-OVERDUE-FEE-FLAT-Regular-CASH-Newcreateloan2.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
	  			|3130-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-OVERDUE-FEE-FLAT-Regular-CASH-Newcreateloan2.xlsx| 			
	  And I verified the "Transactions" details successfully	
				|3130-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-OVERDUE-FEE-FLAT-Regular-CASH-Newcreateloan2.xlsx|
	 Then I make repayment and read the transaction Id
 				|3130-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-OVERDUE-FEE-FLAT-Regular-CASH-Makerepayment2.xlsx|Input|Transactions|
 	 And I Navigate to Accounting web page
 	 And I search with transaction id & verified the accounting entries
				|3130-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-OVERDUE-FEE-FLAT-Regular-CASH-Makerepayment2.xlsx|Acc_Disbursement|Acc_Repayment|Acc_Disbursement1|Acc_Repayment1|

@scenario23-3131-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-OVERDUE-FEE-%APR-AMT-Regular-CASH	
	  Scenario: 3131-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-OVERDUE-FEE-%APR-AMT-Regular-CASH 

  	  Given I setup the product loan "Setup"
				| Productloannavigation.xlsx |
 	  Then I entered the values into product loan from "ProductLoanInput" Sheet
				|3131-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-OVERDUE-FEE-%APR-AMT-Regular-CASH-Loanproduct.xlsx|
  	  Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			|3131-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-OVERDUE-FEE-%APR-AMT-Regular-CASH-Newcreateloan1.xlsx|
	  Then I navigate to scheduler job & execute "Apply penalty to overdue loans"
	  Then I verified the "Summary" details successfully 
	  			|3131-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-OVERDUE-FEE-%APR-AMT-Regular-CASH-Newcreateloan1.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
	  			|3131-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-OVERDUE-FEE-%APR-AMT-Regular-CASH-Newcreateloan1.xlsx|
	  And I verified the "Transactions" details successfully	
				|3131-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-OVERDUE-FEE-%APR-AMT-Regular-CASH-Newcreateloan1.xlsx|
	  Then I make repayment and verified the following tabs
       			|3131-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-OVERDUE-FEE-%APR-AMT-Regular-CASH-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
      And I disburse loan from "NewLoanInput" sheet
      			|3131-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-OVERDUE-FEE-%APR-AMT-Regular-CASH-Newcreateloan2.xlsx|
      Then I verified the "Summary" details successfully 
	  			|3131-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-OVERDUE-FEE-%APR-AMT-Regular-CASH-Newcreateloan2.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
	  			|3131-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-OVERDUE-FEE-%APR-AMT-Regular-CASH-Newcreateloan2.xlsx| 			
	  And I verified the "Transactions" details successfully	
				|3131-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-OVERDUE-FEE-%APR-AMT-Regular-CASH-Newcreateloan2.xlsx|
	 Then I make repayment and read the transaction Id
 				|3131-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-OVERDUE-FEE-%APR-AMT-Regular-CASH-Makerepayment2.xlsx|Input|Transactions|
 	 And I Navigate to Accounting web page
 	 And I search with transaction id & verified the accounting entries
				|3131-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-OVERDUE-FEE-%APR-AMT-Regular-CASH-Makerepayment2.xlsx|Acc_Disbursement|Acc_Repayment|Acc_Disbursement1|Acc_Repayment1|

@scenario24-3132-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-OVERDUE-FEE-%LOANAMT+INT-Regular-CASH	
	  Scenario: 3132-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-OVERDUE-FEE-%LOANAMT+INT-Regular-CASH 

  	  Given I setup the product loan "Setup"
				| Productloannavigation.xlsx |
 	  Then I entered the values into product loan from "ProductLoanInput" Sheet
				|3132-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-OVERDUE-FEE-%LOANAMT+INT-Regular-CASH-Loanproduct.xlsx|
  	  Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			|3132-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-OVERDUE-FEE-%LOANAMT+INT-Regular-CASH-Newcreateloan1.xlsx|
	  Then I navigate to scheduler job & execute "Apply penalty to overdue loans"
	  Then I verified the "Summary" details successfully 
	  			|3132-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-OVERDUE-FEE-%LOANAMT+INT-Regular-CASH-Newcreateloan1.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
	  			|3132-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-OVERDUE-FEE-%LOANAMT+INT-Regular-CASH-Newcreateloan1.xlsx|
	  And I verified the "Transactions" details successfully	
				|3132-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-OVERDUE-FEE-%LOANAMT+INT-Regular-CASH-Newcreateloan1.xlsx|
	  Then I make repayment and verified the following tabs
       			|3132-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-OVERDUE-FEE-%LOANAMT+INT-Regular-CASH-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
      And I disburse loan from "NewLoanInput" sheet
      			|3132-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-OVERDUE-FEE-%LOANAMT+INT-Regular-CASH-Newcreateloan2.xlsx|
      Then I verified the "Summary" details successfully 
	  			|3132-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-OVERDUE-FEE-%LOANAMT+INT-Regular-CASH-Newcreateloan2.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
	  			|3132-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-OVERDUE-FEE-%LOANAMT+INT-Regular-CASH-Newcreateloan2.xlsx| 			
	  And I verified the "Transactions" details successfully	
				|3132-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-OVERDUE-FEE-%LOANAMT+INT-Regular-CASH-Newcreateloan2.xlsx|
	 Then I make repayment and read the transaction Id
 				|3132-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-OVERDUE-FEE-%LOANAMT+INT-Regular-CASH-Makerepayment2.xlsx|Input|Transactions|
 	 And I Navigate to Accounting web page
 	 And I search with transaction id & verified the accounting entries
				|3132-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-OVERDUE-FEE-%LOANAMT+INT-Regular-CASH-Makerepayment2.xlsx|Acc_Disbursement|Acc_Repayment|Acc_Disbursement1|Acc_Repayment1|
	
@scenario25-3133-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-OVERDUE-FEE-%INTEREST-Regular-CASH
	  Scenario: 3133-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-OVERDUE-FEE-%INTEREST-Regular-CASH 

  	  Given I setup the product loan "Setup"
				| Productloannavigation.xlsx |
 	  Then I entered the values into product loan from "ProductLoanInput" Sheet
				|3133-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-OVERDUE-FEE-%INTEREST-Regular-CASH-Loanproduct.xlsx|
  	  Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			|3133-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-OVERDUE-FEE-%INTEREST-Regular-CASH-Newcreateloan1.xlsx|
	  Then I navigate to scheduler job & execute "Apply penalty to overdue loans"
	  Then I verified the "Summary" details successfully 
	  			|3133-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-OVERDUE-FEE-%INTEREST-Regular-CASH-Newcreateloan1.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
	  			|3133-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-OVERDUE-FEE-%INTEREST-Regular-CASH-Newcreateloan1.xlsx|
	  And I verified the "Transactions" details successfully	
				|3133-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-OVERDUE-FEE-%INTEREST-Regular-CASH-Newcreateloan1.xlsx|
	  Then I make repayment and verified the following tabs
       			|3133-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-OVERDUE-FEE-%INTEREST-Regular-CASH-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
      And I disburse loan from "NewLoanInput" sheet
      			|3133-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-OVERDUE-FEE-%INTEREST-Regular-CASH-Newcreateloan2.xlsx|
      Then I verified the "Summary" details successfully 
	  			|3133-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-OVERDUE-FEE-%INTEREST-Regular-CASH-Newcreateloan2.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
	  			|3133-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-OVERDUE-FEE-%INTEREST-Regular-CASH-Newcreateloan2.xlsx| 			
	  And I verified the "Transactions" details successfully	
				|3133-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-OVERDUE-FEE-%INTEREST-Regular-CASH-Newcreateloan2.xlsx|
	 Then I make repayment and read the transaction Id
 				|3133-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-OVERDUE-FEE-%INTEREST-Regular-CASH-Makerepayment2.xlsx|Input|Transactions|
 	 And I Navigate to Accounting web page
 	 And I search with transaction id & verified the accounting entries
				|3133-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-OVERDUE-FEE-%INTEREST-Regular-CASH-Makerepayment2.xlsx|Acc_Disbursement|Acc_Repayment|Acc_Disbursement1|Acc_Repayment1|
	
@scenario26-3136-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-DISBURSE-FEE-FLAT-Regular-PERIODIC
	  Scenario: 3136-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-DISBURSE-FEE-FLAT-Regular-PERIODIC
 Given I setup the product loan "Setup"
	| Productloannavigation.xlsx |
 Then I entered the values into product loan from "ProductLoanInput" Sheet
	|3136-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-DISBURSE-FEE-FLAT-Regular-PERIODIC-Loanproduct.xlsx|	
 Given I setup the clients 
 Then I entered the values into client from "Input" sheet
    |Createclient.xlsx|
 Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|	
 When I set up the new create loan from "NewLoanInput" sheet
	|3136-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-DISBURSE-FEE-FLAT-Regular-PERIODIC-Newcreateloan.xlsx|
 Then I navigate to scheduler job & execute "Periodic Accrual Transactions"
 Then I verified the "Summary" details successfully 
	|3136-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-DISBURSE-FEE-FLAT-Regular-PERIODIC-Newcreateloan.xlsx|
 And I verified the "Repayment Schedule" details successfully 
    |3136-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-DISBURSE-FEE-FLAT-Regular-PERIODIC-Newcreateloan.xlsx|
 Then I verified the "Transactions" details and read the transaction Id 
	|3136-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-DISBURSE-FEE-FLAT-Regular-PERIODIC-Newcreateloan.xlsx|
 #When I make repayment and verified the following tabs
 #   |3136-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-DISBURSE-FEE-FLAT-Regular-PERIODIC-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
 And I Navigate to Accounting web page
 And I search with transaction id & verified the accounting entries
    |3136-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-DISBURSE-FEE-FLAT-Regular-PERIODIC-Makerepayment1.xlsx|Acc_RepaymentDisbursement|Acc_Disbursement|Acc_Periodic|

@scenario27-3137-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-DISBURSE-FEE-%APR-AMT-Regular-PERIODIC
	  Scenario: 3137-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-DISBURSE-FEE-%APR-AMT-Regular-PERIODIC

 Given I setup the product loan "Setup"
	| Productloannavigation.xlsx |
 Then I entered the values into product loan from "ProductLoanInput" Sheet
	|3137-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-DISBURSE-FEE-%APR-AMT-Regular-PERIODIC-Loanproduct.xlsx|	
 Given I setup the clients 
 Then I entered the values into client from "Input" sheet
    |Createclient.xlsx|
 Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|	
 When I set up the new create loan from "NewLoanInput" sheet
	|3137-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-DISBURSE-FEE-%APR-AMT-Regular-PERIODIC-Newcreateloan.xlsx|
 Then I navigate to scheduler job & execute "Periodic Accrual Transactions"
 Then I verified the "Summary" details successfully 
	|3137-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-DISBURSE-FEE-%APR-AMT-Regular-PERIODIC-Newcreateloan.xlsx|
 And I verified the "Repayment Schedule" details successfully 
    |3137-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-DISBURSE-FEE-%APR-AMT-Regular-PERIODIC-Newcreateloan.xlsx|
 Then I verified the "Transactions" details and read the transaction Id 
	|3137-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-DISBURSE-FEE-%APR-AMT-Regular-PERIODIC-Newcreateloan.xlsx|
# When I make repayment and verified the following tabs
#    |3137-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-DISBURSE-FEE-%APR-AMT-Regular-PERIODIC-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
 And I Navigate to Accounting web page
 And I search with transaction id & verified the accounting entries
    |3137-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-DISBURSE-FEE-%APR-AMT-Regular-PERIODIC-Makerepayment1.xlsx|Acc_RepaymentDisbursement|Acc_Disbursement|Acc_Periodic|

@scenario28-3138-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-DISBURSE-FEE-%LOANAMT+INTEREST-Regular-PERIODIC
	  Scenario: 3138-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-DISBURSE-FEE-%LOANAMT+INTEREST-Regular-PERIODIC
		
 Given I setup the product loan "Setup"
	| Productloannavigation.xlsx |
 Then I entered the values into product loan from "ProductLoanInput" Sheet
	|3138-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-DISBURSE-FEE-%LOANAMT+INTEREST-Regular-PERIODIC-Loanproduct.xlsx|
 Given I setup the clients 
 Then I entered the values into client from "Input" sheet
    |Createclient.xlsx|
 Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|	
 When I set up the new create loan from "NewLoanInput" sheet
	|3138-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-DISBURSE-FEE-%LOANAMT+INTEREST-Regular-PERIODIC-Newcreateloan.xlsx|
 Then I navigate to scheduler job & execute "Periodic Accrual Transactions"
 Then I verified the "Summary" details successfully 
	|3138-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-DISBURSE-FEE-%LOANAMT+INTEREST-Regular-PERIODIC-Newcreateloan.xlsx|
 And I verified the "Repayment Schedule" details successfully 
    |3138-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-DISBURSE-FEE-%LOANAMT+INTEREST-Regular-PERIODIC-Newcreateloan.xlsx|
 Then I verified the "Transactions" details and read the transaction Id 
	|3138-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-DISBURSE-FEE-%LOANAMT+INTEREST-Regular-PERIODIC-Newcreateloan.xlsx|
 #When I make repayment and verified the following tabs
 #   |3138-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-DISBURSE-FEE-%LOANAMT+INTEREST-Regular-PERIODIC-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
 And I Navigate to Accounting web page
 And I search with transaction id & verified the accounting entries
    |3138-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-DISBURSE-FEE-%LOANAMT+INTEREST-Regular-PERIODIC-Makerepayment1.xlsx|Acc_RepaymentDisbursement|Acc_Disbursement|Acc_Periodic|

@scenario29-3139-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-DISBURSE-FEE-%INTEREST-Regular-PERIODIC
	  Scenario: 3139-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-DISBURSE-FEE-%INTEREST-Regular-PERIODIC

 Given I setup the product loan "Setup"
	| Productloannavigation.xlsx |
 Then I entered the values into product loan from "ProductLoanInput" Sheet
	|3139-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-DISBURSE-FEE-%INTEREST-Regular-PERIODIC-Loanproduct.xlsx|		
 Given I setup the clients 
 Then I entered the values into client from "Input" sheet
    |Createclient.xlsx|
 Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|	
 When I set up the new create loan from "NewLoanInput" sheet
	|3139-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-DISBURSE-FEE-%INTEREST-Regular-PERIODIC-Newcreateloan.xlsx|
 Then I navigate to scheduler job & execute "Periodic Accrual Transactions"
 Then I verified the "Summary" details successfully 
	|3139-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-DISBURSE-FEE-%INTEREST-Regular-PERIODIC-Newcreateloan.xlsx|
 And I verified the "Repayment Schedule" details successfully 
    |3139-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-DISBURSE-FEE-%INTEREST-Regular-PERIODIC-Newcreateloan.xlsx|
 Then I verified the "Transactions" details and read the transaction Id 
	|3139-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-DISBURSE-FEE-%INTEREST-Regular-PERIODIC-Newcreateloan.xlsx|
 #When I make repayment and verified the following tabs
 #   |3139-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-DISBURSE-FEE-%INTEREST-Regular-PERIODIC-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
 And I Navigate to Accounting web page
 And I search with transaction id & verified the accounting entries
    |3139-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-DISBURSE-FEE-%INTEREST-Regular-PERIODIC-Makerepayment1.xlsx|Acc_RepaymentDisbursement|Acc_Disbursement|Acc_Periodic|

@scenario30-3142-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-SPEDUEDATE-FEE-FLAT-Regular-PERIODIC
	  Scenario: 3142-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-SPEDUEDATE-FEE-FLAT-Regular-PERIODIC

 Given I setup the product loan "Setup"
	| Productloannavigation.xlsx |
 Then I entered the values into product loan from "ProductLoanInput" Sheet
	|3142-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-SPEDUEDATE-FEE-FLAT-Regular-PERIODIC-Loanproduct.xlsx|	
 Given I setup the clients 
 Then I entered the values into client from "Input" sheet
    |Createclient.xlsx|
 Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|	
 When I set up the new create loan from "NewLoanInput" sheet
	|3142-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-SPEDUEDATE-FEE-FLAT-Regular-PERIODIC-Newcreateloan.xlsx|
 Then I navigate to scheduler job & execute "Periodic Accrual Transactions"
 Then I verified the "Summary" details successfully 
	|3142-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-SPEDUEDATE-FEE-FLAT-Regular-PERIODIC-Newcreateloan.xlsx|
 And I verified the "Repayment Schedule" details successfully 
    |3142-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-SPEDUEDATE-FEE-FLAT-Regular-PERIODIC-Newcreateloan.xlsx|
 And I verified the "Transactions" details successfully 
	|3142-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-SPEDUEDATE-FEE-FLAT-Regular-PERIODIC-Newcreateloan.xlsx|
 When I make repayment and verified the following tabs
    |3142-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-SPEDUEDATE-FEE-FLAT-Regular-PERIODIC-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
 And I Navigate to Accounting web page
 And I search with transaction id & verified the accounting entries
    |3142-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-SPEDUEDATE-FEE-FLAT-Regular-PERIODIC-Makerepayment1.xlsx|Acc_Disbursement|Acc_Repayment|Acc_Periodic|
       			
@scenario31-3143-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-SPEDUEDATE-FEE-%APR-AMT-Regular-PERIODIC
	  Scenario: 3143-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-SPEDUEDATE-FEE-%APR-AMT-Regular-PERIODIC

 Given I setup the product loan "Setup"
	| Productloannavigation.xlsx |
 Then I entered the values into product loan from "ProductLoanInput" Sheet
	|3143-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-SPEDUEDATE-FEE-%APR-AMT-Regular-PERIODIC-Loanproduct.xlsx|	
 Given I setup the clients 
 Then I entered the values into client from "Input" sheet
    |Createclient.xlsx|
 Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|	
 When I set up the new create loan from "NewLoanInput" sheet
	|3143-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-SPEDUEDATE-FEE-%APR-AMT-Regular-PERIODIC-Newcreateloan.xlsx|
 Then I navigate to scheduler job & execute "Periodic Accrual Transactions"
 Then I verified the "Summary" details successfully 
	|3143-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-SPEDUEDATE-FEE-%APR-AMT-Regular-PERIODIC-Newcreateloan.xlsx|
 And I verified the "Repayment Schedule" details successfully 
    |3143-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-SPEDUEDATE-FEE-%APR-AMT-Regular-PERIODIC-Newcreateloan.xlsx|
 And I verified the "Transactions" details successfully 
	|3143-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-SPEDUEDATE-FEE-%APR-AMT-Regular-PERIODIC-Newcreateloan.xlsx|
 When I make repayment and verified the following tabs
    |3143-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-SPEDUEDATE-FEE-%APR-AMT-Regular-PERIODIC-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
 And I Navigate to Accounting web page
 And I search with transaction id & verified the accounting entries
    |3143-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-SPEDUEDATE-FEE-%APR-AMT-Regular-PERIODIC-Makerepayment1.xlsx|Acc_Disbursement|Acc_Repayment|Acc_Periodic|

@scenario32-3144-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-INSTALLMENT-FEE-FLAT-Regular-PERIODIC
	  Scenario: 3144-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-INSTALLMENT-FEE-FLAT-Regular-PERIODIC

 Given I setup the product loan "Setup"
	| Productloannavigation.xlsx |
 Then I entered the values into product loan from "ProductLoanInput" Sheet
	|3144-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-INSTALLMENT-FEE-FLAT-Regular-PERIODIC-Loanproduct.xlsx|
 Given I setup the clients 
 Then I entered the values into client from "Input" sheet
    |Createclient.xlsx|
 Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|	
 When I set up the new create loan from "NewLoanInput" sheet
	|3144-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-INSTALLMENT-FEE-FLAT-Regular-PERIODIC-Newcreateloan.xlsx|
 Then I navigate to scheduler job & execute "Periodic Accrual Transactions"
 Then I verified the "Summary" details successfully 
	|3144-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-INSTALLMENT-FEE-FLAT-Regular-PERIODIC-Newcreateloan.xlsx|
 And I verified the "Repayment Schedule" details successfully 
    |3144-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-INSTALLMENT-FEE-FLAT-Regular-PERIODIC-Newcreateloan.xlsx|
 And I verified the "Transactions" details successfully 
	|3144-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-INSTALLMENT-FEE-FLAT-Regular-PERIODIC-Newcreateloan.xlsx|
 When I make repayment and verified the following tabs
    |3144-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-INSTALLMENT-FEE-FLAT-Regular-PERIODIC-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
 And I Navigate to Accounting web page
 And I search with transaction id & verified the accounting entries
    |3144-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-INSTALLMENT-FEE-FLAT-Regular-PERIODIC-Makerepayment1.xlsx|Acc_Disbursement|Acc_Repayment|Acc_Periodic|

 @scenario33-3145-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-INSTALLMENT-FEE-%INTEREST-Regular-PERIODIC
	  Scenario: 3145-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-INSTALLMENT-FEE-%INTEREST-Regular-PERIODIC

 Given I setup the product loan "Setup"
	| Productloannavigation.xlsx |
 Then I entered the values into product loan from "ProductLoanInput" Sheet
	|3145-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-INSTALLMENT-FEE-%INTEREST-Regular-PERIODIC-Loanproduct.xlsx|
 Given I setup the clients 
 Then I entered the values into client from "Input" sheet
    |Createclient.xlsx|
 Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|	
 When I set up the new create loan from "NewLoanInput" sheet
	|3145-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-INSTALLMENT-FEE-%INTEREST-Regular-PERIODIC-Newcreateloan.xlsx|
 Then I navigate to scheduler job & execute "Periodic Accrual Transactions"
 Then I verified the "Summary" details successfully 
	|3145-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-INSTALLMENT-FEE-%INTEREST-Regular-PERIODIC-Newcreateloan.xlsx|
 And I verified the "Repayment Schedule" details successfully 
    |3145-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-INSTALLMENT-FEE-%INTEREST-Regular-PERIODIC-Newcreateloan.xlsx|
 And I verified the "Transactions" details successfully 
	|3145-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-INSTALLMENT-FEE-%INTEREST-Regular-PERIODIC-Newcreateloan.xlsx|
 When I make repayment and verified the following tabs
    |3145-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-INSTALLMENT-FEE-%INTEREST-Regular-PERIODIC-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
 And I Navigate to Accounting web page
 And I search with transaction id & verified the accounting entries
    |3145-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-INSTALLMENT-FEE-%INTEREST-Regular-PERIODIC-Makerepayment1.xlsx|Acc_Disbursement|Acc_Repayment|Acc_Periodic|
   
@scenario34-3147-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-OVERDUE-FEE-FLAT-Regular-PERIODIC
	  Scenario: 3147-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-OVERDUE-FEE-FLAT-Regular-PERIODIC

 Given I setup the product loan "Setup"
	| Productloannavigation.xlsx |
 Then I entered the values into product loan from "ProductLoanInput" Sheet
	|3147-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-OVERDUE-FEE-FLAT-Regular-PERIODIC-Loanproduct.xlsx|
 Given I setup the clients 
 Then I entered the values into client from "Input" sheet
    |Createclient.xlsx|
 Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|	
 When I set up the new create loan from "NewLoanInput" sheet
	|3147-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-OVERDUE-FEE-FLAT-Regular-PERIODIC-Newcreateloan.xlsx|
 Then I navigate to scheduler job & execute "Periodic & penalty to overdue loans"
 Then I verified the "Summary" details successfully 
	|3147-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-OVERDUE-FEE-FLAT-Regular-PERIODIC-Newcreateloan.xlsx|
 And I verified the "Repayment Schedule" details successfully 
    |3147-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-OVERDUE-FEE-FLAT-Regular-PERIODIC-Newcreateloan.xlsx|
 And I verified the "Transactions" details successfully 
	|3147-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-OVERDUE-FEE-FLAT-Regular-PERIODIC-Newcreateloan.xlsx|
 When I make repayment and verified the following tabs
    |3147-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-OVERDUE-FEE-FLAT-Regular-PERIODIC-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
 And I Navigate to Accounting web page
 And I search with transaction id & verified the accounting entries
    |3147-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-OVERDUE-FEE-FLAT-Regular-PERIODIC-Makerepayment1.xlsx|Acc_Disbursement|Acc_Repayment|Acc_Periodic|

@scenario35-3148-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-OVERDUE-FEE-%APR-AMT-Regular-PERIODIC
	  Scenario: 3148-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-OVERDUE-FEE-%APR-AMT-Regular-PERIODIC

 Given I setup the product loan "Setup"
	| Productloannavigation.xlsx |
 Then I entered the values into product loan from "ProductLoanInput" Sheet
	|3148-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-OVERDUE-FEE-%APR-AMT-Regular-PERIODIC-Loanproduct.xlsx|
 Given I setup the clients 
 Then I entered the values into client from "Input" sheet
    |Createclient.xlsx|
 Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|	
 When I set up the new create loan from "NewLoanInput" sheet
	|3148-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-OVERDUE-FEE-%APR-AMT-Regular-PERIODIC-Newcreateloan.xlsx|
 Then I navigate to scheduler job & execute "Periodic & penalty to overdue loans"
 Then I verified the "Summary" details successfully 
	|3148-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-OVERDUE-FEE-%APR-AMT-Regular-PERIODIC-Newcreateloan.xlsx|
 And I verified the "Repayment Schedule" details successfully 
    |3148-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-OVERDUE-FEE-%APR-AMT-Regular-PERIODIC-Newcreateloan.xlsx|
 And I verified the "Transactions" details successfully 
	|3148-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-OVERDUE-FEE-%APR-AMT-Regular-PERIODIC-Newcreateloan.xlsx|
 When I make repayment and verified the following tabs
    |3148-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-OVERDUE-FEE-%APR-AMT-Regular-PERIODIC-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
 And I Navigate to Accounting web page
 And I search with transaction id & verified the accounting entries
    |3148-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-OVERDUE-FEE-%APR-AMT-Regular-PERIODIC-Makerepayment1.xlsx|Acc_Disbursement|Acc_Repayment|Acc_Periodic|

@scenario36-3149-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-OVERDUE-FEE-%LOANAMT+INT-Regular-PERIODIC
	  Scenario: 3149-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-OVERDUE-FEE-%LOANAMT+INT-Regular-PERIODIC

 Given I setup the product loan "Setup"
	| Productloannavigation.xlsx |
 Then I entered the values into product loan from "ProductLoanInput" Sheet
	|3149-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-OVERDUE-FEE-%LOANAMT+INT-Regular-PERIODIC-Loanproduct.xlsx|
 Given I setup the clients 
 Then I entered the values into client from "Input" sheet
    |Createclient.xlsx|
 Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|	
 When I set up the new create loan from "NewLoanInput" sheet
	|3149-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-OVERDUE-FEE-%LOANAMT+INT-Regular-PERIODIC-Newcreateloan.xlsx|
 Then I navigate to scheduler job & execute "Periodic & penalty to overdue loans"
 Then I verified the "Summary" details successfully 
	|3149-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-OVERDUE-FEE-%LOANAMT+INT-Regular-PERIODIC-Newcreateloan.xlsx|
 And I verified the "Repayment Schedule" details successfully 
    |3149-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-OVERDUE-FEE-%LOANAMT+INT-Regular-PERIODIC-Newcreateloan.xlsx|
 And I verified the "Transactions" details successfully 
	|3149-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-OVERDUE-FEE-%LOANAMT+INT-Regular-PERIODIC-Newcreateloan.xlsx|
 When I make repayment and verified the following tabs
    |3149-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-OVERDUE-FEE-%LOANAMT+INT-Regular-PERIODIC-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
 And I Navigate to Accounting web page
 And I search with transaction id & verified the accounting entries
    |3149-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-OVERDUE-FEE-%LOANAMT+INT-Regular-PERIODIC-Makerepayment1.xlsx|Acc_Disbursement|Acc_Repayment|Acc_Periodic|

@scenario37-3150-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-OVERDUE-FEE-%INT-Regular-PERIODIC
	  Scenario: 3150-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-OVERDUE-FEE-%INT-Regular-PERIODIC

 Given I setup the product loan "Setup"
	| Productloannavigation.xlsx |
 Then I entered the values into product loan from "ProductLoanInput" Sheet
	|3150-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-OVERDUE-FEE-%INT-Regular-PERIODIC-Loanproduct.xlsx|
 Given I setup the clients 
 Then I entered the values into client from "Input" sheet
    |Createclient.xlsx|
 Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|	
 When I set up the new create loan from "NewLoanInput" sheet
	|3150-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-OVERDUE-FEE-%INT-Regular-PERIODIC-Newcreateloan.xlsx|
 Then I navigate to scheduler job & execute "Periodic & penalty to overdue loans"
 Then I verified the "Summary" details successfully 
	|3150-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-OVERDUE-FEE-%INT-Regular-PERIODIC-Newcreateloan.xlsx|
 And I verified the "Repayment Schedule" details successfully 
    |3150-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-OVERDUE-FEE-%INT-Regular-PERIODIC-Newcreateloan.xlsx|
 And I verified the "Transactions" details successfully 
	|3150-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-OVERDUE-FEE-%INT-Regular-PERIODIC-Newcreateloan.xlsx|
 When I make repayment and verified the following tabs
    |3150-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-OVERDUE-FEE-%INT-Regular-PERIODIC-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
 And I Navigate to Accounting web page
 And I search with transaction id & verified the accounting entries
    |3150-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-OVERDUE-FEE-%INT-Regular-PERIODIC-Makerepayment1.xlsx|Acc_Disbursement|Acc_Repayment|Acc_Periodic|

@scenario46-3170-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-DISBURSE-FEE-FLAT-Regular-UPFRONT
	  Scenario: 3170-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-DISBURSE-FEE-FLAT-Regular-UPFRONT
		
 Given I setup the product loan "Setup"
	| Productloannavigation.xlsx |
 Then I entered the values into product loan from "ProductLoanInput" Sheet
	|3170-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-DISBURSE-FEE-FLAT-Regular-UPFRONT-Loanproduct.xlsx|
 Given I setup the clients 
 Then I entered the values into client from "Input" sheet
    |Createclient.xlsx|
 Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|	
 When I set up the new create loan from "NewLoanInput" sheet
	|3170-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-DISBURSE-FEE-FLAT-Regular-UPFRONT-Newcreateloan.xlsx|
 Then I navigate to scheduler job & execute "Add Upfront Accrual Transactions"
 Then I verified the "Summary" details successfully 
	|3170-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-DISBURSE-FEE-FLAT-Regular-UPFRONT-Newcreateloan.xlsx|
 And I verified the "Repayment Schedule" details successfully 
    |3170-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-DISBURSE-FEE-FLAT-Regular-UPFRONT-Newcreateloan.xlsx|
 Then I verified the "Transactions" details and read the transaction Id 
	|3170-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-DISBURSE-FEE-FLAT-Regular-UPFRONT-Newcreateloan.xlsx|
 And I Navigate to Accounting web page
 And I search with transaction id & verified the accounting entries
    |3170-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-DISBURSE-FEE-FLAT-Regular-UPFRONT-Newcreateloan.xlsx|Acc_RepaymentDisbursement|Acc_Disbursement|Acc_Upfront|

@scenario47-3171-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-DISBURSE-FEE-%APR-AMT-Regular-UPFRONT
	  Scenario: 3171-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-DISBURSE-FEE-%APR-AMT-Regular-UPFRONT
		
 Given I setup the product loan "Setup"
	| Productloannavigation.xlsx |
 Then I entered the values into product loan from "ProductLoanInput" Sheet
	|3171-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-DISBURSE-FEE-%APR-AMT-Regular-UPFRONT-Loanproduct.xlsx|
 Given I setup the clients 
 Then I entered the values into client from "Input" sheet
    |Createclient.xlsx|
 Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|	
 When I set up the new create loan from "NewLoanInput" sheet
	|3171-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-DISBURSE-FEE-%APR-AMT-Regular-UPFRONT-Newcreateloan.xlsx|
 Then I navigate to scheduler job & execute "Add Upfront Accrual Transactions"
 Then I verified the "Summary" details successfully 
	|3171-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-DISBURSE-FEE-%APR-AMT-Regular-UPFRONT-Newcreateloan.xlsx|
 And I verified the "Repayment Schedule" details successfully 
    |3171-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-DISBURSE-FEE-%APR-AMT-Regular-UPFRONT-Newcreateloan.xlsx|
 Then I verified the "Transactions" details and read the transaction Id 
	|3171-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-DISBURSE-FEE-%APR-AMT-Regular-UPFRONT-Newcreateloan.xlsx|
 And I Navigate to Accounting web page
 And I search with transaction id & verified the accounting entries
    |3171-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-DISBURSE-FEE-%APR-AMT-Regular-UPFRONT-Newcreateloan.xlsx|Acc_RepaymentDisbursement|Acc_Disbursement|Acc_Upfront|

@scenario48-3172-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-DISBURSE-FEE-%LOANAMT+INTEREST-Regular-UPFRONT
	  Scenario: 3172-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-DISBURSE-FEE-%LOANAMT+INTEREST-Regular-UPFRONT
		
 Given I setup the product loan "Setup"
	| Productloannavigation.xlsx |
 Then I entered the values into product loan from "ProductLoanInput" Sheet
	|3172-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-DISBURSE-FEE-%LOANAMT+INTEREST-Regular-UPFRONT-Loanproduct.xlsx|
 Given I setup the clients 
 Then I entered the values into client from "Input" sheet
    |Createclient.xlsx|
 Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|	
 When I set up the new create loan from "NewLoanInput" sheet
	|3172-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-DISBURSE-FEE-%LOANAMT+INTEREST-Regular-UPFRONT-Newcreateloan.xlsx|
 Then I navigate to scheduler job & execute "Add Upfront Accrual Transactions"
 Then I verified the "Summary" details successfully 
	|3172-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-DISBURSE-FEE-%LOANAMT+INTEREST-Regular-UPFRONT-Newcreateloan.xlsx|
 And I verified the "Repayment Schedule" details successfully 
    |3172-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-DISBURSE-FEE-%LOANAMT+INTEREST-Regular-UPFRONT-Newcreateloan.xlsx|
 Then I verified the "Transactions" details and read the transaction Id 
	|3172-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-DISBURSE-FEE-%LOANAMT+INTEREST-Regular-UPFRONT-Newcreateloan.xlsx|
 And I Navigate to Accounting web page
 And I search with transaction id & verified the accounting entries
    |3172-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-DISBURSE-FEE-%LOANAMT+INTEREST-Regular-UPFRONT-Newcreateloan.xlsx|Acc_RepaymentDisbursement|Acc_Disbursement|Acc_Upfront|

@scenario49-3173-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-DISBURSE-FEE-%INTEREST-Regular-UPFRONT
	  Scenario: 3173-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-DISBURSE-FEE-%INTEREST-Regular-UPFRONT
		
 Given I setup the product loan "Setup"
	| Productloannavigation.xlsx |
 Then I entered the values into product loan from "ProductLoanInput" Sheet
	|3173-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-DISBURSE-FEE-%INTEREST-Regular-UPFRONT-Loanproduct.xlsx|
 Given I setup the clients 
 Then I entered the values into client from "Input" sheet
    |Createclient.xlsx|
 Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|	
 When I set up the new create loan from "NewLoanInput" sheet
	|3173-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-DISBURSE-FEE-%INTEREST-Regular-UPFRONT-Newcreateloan.xlsx|
 Then I navigate to scheduler job & execute "Add Upfront Accrual Transactions"
 Then I verified the "Summary" details successfully 
	|3173-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-DISBURSE-FEE-%INTEREST-Regular-UPFRONT-Newcreateloan.xlsx|
 And I verified the "Repayment Schedule" details successfully 
    |3173-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-DISBURSE-FEE-%INTEREST-Regular-UPFRONT-Newcreateloan.xlsx|
 Then I verified the "Transactions" details and read the transaction Id 
	|3173-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-DISBURSE-FEE-%INTEREST-Regular-UPFRONT-Newcreateloan.xlsx|
 And I Navigate to Accounting web page
 And I search with transaction id & verified the accounting entries
    |3173-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-DISBURSE-FEE-%INTEREST-Regular-UPFRONT-Newcreateloan.xlsx|Acc_RepaymentDisbursement|Acc_Disbursement|Acc_Upfront|

@scenario50-3175-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-SPEDUEDATE-FEE-FLAT-Regular-UPFRONT
	  Scenario: 3175-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-SPEDUEDATE-FEE-FLAT-Regular-UPFRONT

 Given I setup the product loan "Setup"
	| Productloannavigation.xlsx |
 Then I entered the values into product loan from "ProductLoanInput" Sheet
	|3175-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-SPEDUEDATE-FEE-FLAT-Regular-UPFRONT-Loanproduct.xlsx|
 Given I setup the clients 
 Then I entered the values into client from "Input" sheet
    |Createclient.xlsx|
 Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|	
 When I set up the new create loan from "NewLoanInput" sheet
	|3175-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-SPEDUEDATE-FEE-FLAT-Regular-UPFRONT-Newcreateloan.xlsx|
 Then I navigate to scheduler job & execute "Add Upfront Accrual Transactions"
 Then I verified the "Summary" details successfully 
	|3175-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-SPEDUEDATE-FEE-FLAT-Regular-UPFRONT-Newcreateloan.xlsx|
 And I verified the "Repayment Schedule" details successfully 
    |3175-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-SPEDUEDATE-FEE-FLAT-Regular-UPFRONT-Newcreateloan.xlsx|
 And I verified the "Transactions" details successfully 
	|3175-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-SPEDUEDATE-FEE-FLAT-Regular-UPFRONT-Newcreateloan.xlsx|
 When I make repayment and verified the following tabs
    |3175-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-SPEDUEDATE-FEE-FLAT-Regular-UPFRONT-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
 And I Navigate to Accounting web page
 And I search with transaction id & verified the accounting entries
    |3175-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-SPEDUEDATE-FEE-FLAT-Regular-UPFRONT-Makerepayment1.xlsx|Acc_Disbursement|Acc_Repayment|Acc_Upfront1|Acc_Upfront2|

@scenario51-3176-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-SPEDUEDATE-FEE-%APR-AMT-Regular-UPFRONT
	  Scenario: 3176-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-SPEDUEDATE-FEE-%APR-AMT-Regular-UPFRONT

 Given I setup the product loan "Setup"
	| Productloannavigation.xlsx |
 Then I entered the values into product loan from "ProductLoanInput" Sheet
	|3176-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-SPEDUEDATE-FEE-%APR-AMT-Regular-UPFRONT-Loanproduct.xlsx|
 Given I setup the clients 
 Then I entered the values into client from "Input" sheet
    |Createclient.xlsx|
 Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|	
 When I set up the new create loan from "NewLoanInput" sheet
	|3176-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-SPEDUEDATE-FEE-%APR-AMT-Regular-UPFRONT-Newcreateloan.xlsx|
 Then I navigate to scheduler job & execute "Add Upfront Accrual Transactions"
 Then I verified the "Summary" details successfully 
	|3176-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-SPEDUEDATE-FEE-%APR-AMT-Regular-UPFRONT-Newcreateloan.xlsx|
 And I verified the "Repayment Schedule" details successfully 
    |3176-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-SPEDUEDATE-FEE-%APR-AMT-Regular-UPFRONT-Newcreateloan.xlsx|
 And I verified the "Transactions" details successfully 
	|3176-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-SPEDUEDATE-FEE-%APR-AMT-Regular-UPFRONT-Newcreateloan.xlsx|
 When I make repayment and verified the following tabs
    |3176-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-SPEDUEDATE-FEE-%APR-AMT-Regular-UPFRONT-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
 And I Navigate to Accounting web page
 And I search with transaction id & verified the accounting entries
    |3176-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-SPEDUEDATE-FEE-%APR-AMT-Regular-UPFRONT-Makerepayment1.xlsx|Acc_Disbursement|Acc_Repayment|Acc_Upfront1|Acc_Upfront2|

@scenario52-3178-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-INSTALLMENT-FEE-FLAT-Regular-UPFRONT
	  Scenario: 3178-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-INSTALLMENT-FEE-FLAT-Regular-UPFRONT

 Given I setup the product loan "Setup"
	| Productloannavigation.xlsx |
 Then I entered the values into product loan from "ProductLoanInput" Sheet
	|3178-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-INSTALLMENT-FEE-FLAT-Regular-UPFRONT-Loanproduct.xlsx|
 Given I setup the clients 
 Then I entered the values into client from "Input" sheet
    |Createclient.xlsx|
 Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|	
 When I set up the new create loan from "NewLoanInput" sheet
	|3178-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-INSTALLMENT-FEE-FLAT-Regular-UPFRONT-Newcreateloan.xlsx|
 Then I navigate to scheduler job & execute "Add Upfront Accrual Transactions"
 Then I verified the "Summary" details successfully 
	|3178-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-INSTALLMENT-FEE-FLAT-Regular-UPFRONT-Newcreateloan.xlsx|
 And I verified the "Repayment Schedule" details successfully 
    |3178-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-INSTALLMENT-FEE-FLAT-Regular-UPFRONT-Newcreateloan.xlsx|
 And I verified the "Transactions" details successfully 
	|3178-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-INSTALLMENT-FEE-FLAT-Regular-UPFRONT-Newcreateloan.xlsx|
 When I make repayment and verified the following tabs
    |3178-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-INSTALLMENT-FEE-FLAT-Regular-UPFRONT-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
 And I Navigate to Accounting web page
 And I search with transaction id & verified the accounting entries
    |3178-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-INSTALLMENT-FEE-FLAT-Regular-UPFRONT-Makerepayment1.xlsx|Acc_Disbursement|Acc_Repayment|Acc_Upfront1|Acc_Upfront2|

 @scenario53-3179-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-INSTALLMENT-FEE-%INTEREST-Regular-UPFRONT
	  Scenario: 3179-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-INSTALLMENT-FEE-%INTEREST-Regular-UPFRONT

  Given I setup the product loan "Setup"
	| Productloannavigation.xlsx |
 Then I entered the values into product loan from "ProductLoanInput" Sheet
	|3179-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-INSTALLMENT-FEE-%INTEREST-Regular-UPFRONT-Loanproduct.xlsx|
 Given I setup the clients 
 Then I entered the values into client from "Input" sheet
    |Createclient.xlsx|
 Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|	
 When I set up the new create loan from "NewLoanInput" sheet
	|3179-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-INSTALLMENT-FEE-%INTEREST-Regular-UPFRONT-Newcreateloan.xlsx|
 Then I navigate to scheduler job & execute "Add Upfront Accrual Transactions"
 Then I verified the "Summary" details successfully 
	|3179-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-INSTALLMENT-FEE-%INTEREST-Regular-UPFRONT-Newcreateloan.xlsx|
 And I verified the "Repayment Schedule" details successfully 
    |3179-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-INSTALLMENT-FEE-%INTEREST-Regular-UPFRONT-Newcreateloan.xlsx|
 And I verified the "Transactions" details successfully 
	|3179-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-INSTALLMENT-FEE-%INTEREST-Regular-UPFRONT-Newcreateloan.xlsx|
 When I make repayment and verified the following tabs
    |3179-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-INSTALLMENT-FEE-%INTEREST-Regular-UPFRONT-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
 And I Navigate to Accounting web page
 And I search with transaction id & verified the accounting entries
    |3179-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-INSTALLMENT-FEE-%INTEREST-Regular-UPFRONT-Makerepayment1.xlsx|Acc_Disbursement|Acc_Repayment|Acc_Upfront1|Acc_Upfront2|
    
@scenario54-3181-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-OVERDUE-FEE-FLAT-Regular-UPFRONT
Scenario: 3181-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-OVERDUE-FEE-FLAT-Regular-UPFRONT
 Given I setup the product loan "Setup"
	| Productloannavigation.xlsx |
 Then I entered the values into product loan from "ProductLoanInput" Sheet
	|3181-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-OVERDUE-FEE-FLAT-Regular-UPFRONT-Loanproduct.xlsx|
 Given I setup the clients 
 Then I entered the values into client from "Input" sheet
    |Createclient.xlsx|
 Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|	
 When I set up the new create loan from "NewLoanInput" sheet
	|3181-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-OVERDUE-FEE-FLAT-Regular-UPFRONT-Newcreateloan.xlsx|
 Then I navigate to scheduler job & execute "Upfront & penalty to overdue loans"
 Then I verified the "Summary" details successfully 
	|3181-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-OVERDUE-FEE-FLAT-Regular-UPFRONT-Newcreateloan.xlsx|
 And I verified the "Repayment Schedule" details successfully 
    |3181-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-OVERDUE-FEE-FLAT-Regular-UPFRONT-Newcreateloan.xlsx|
 And I verified the "Transactions" details successfully 
	|3181-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-OVERDUE-FEE-FLAT-Regular-UPFRONT-Newcreateloan.xlsx|
 When I make repayment and verified the following tabs
    |3181-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-OVERDUE-FEE-FLAT-Regular-UPFRONT-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
 And I Navigate to Accounting web page
 And I search with transaction id & verified the accounting entries
    |3181-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-OVERDUE-FEE-FLAT-Regular-UPFRONT-Makerepayment1.xlsx|Acc_Disbursement|Acc_Repayment|Acc_Upfront1|Acc_Upfront2|Acc_Upfront3|

@scenario55-3182-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-OVERDUE-FEE-%APR-AMT-Regular-UPFRONT
	  Scenario: 3182-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-OVERDUE-FEE-%APR-AMT-Regular-UPFRONT

 Given I setup the product loan "Setup"
	| Productloannavigation.xlsx |
 Then I entered the values into product loan from "ProductLoanInput" Sheet
	|3182-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-OVERDUE-FEE-%APR-AMT-Regular-UPFRONT-Loanproduct.xlsx|
 Given I setup the clients 
 Then I entered the values into client from "Input" sheet
    |Createclient.xlsx|
 Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|	
 When I set up the new create loan from "NewLoanInput" sheet
	|3182-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-OVERDUE-FEE-%APR-AMT-Regular-UPFRONT-Newcreateloan.xlsx|
 Then I navigate to scheduler job & execute "Upfront & penalty to overdue loans"
 Then I verified the "Summary" details successfully 
	|3182-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-OVERDUE-FEE-%APR-AMT-Regular-UPFRONT-Newcreateloan.xlsx|
 And I verified the "Repayment Schedule" details successfully 
    |3182-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-OVERDUE-FEE-%APR-AMT-Regular-UPFRONT-Newcreateloan.xlsx|
 And I verified the "Transactions" details successfully 
	|3182-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-OVERDUE-FEE-%APR-AMT-Regular-UPFRONT-Newcreateloan.xlsx|
 When I make repayment and verified the following tabs
    |3182-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-OVERDUE-FEE-%APR-AMT-Regular-UPFRONT-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
 And I Navigate to Accounting web page
 And I search with transaction id & verified the accounting entries
    |3182-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-OVERDUE-FEE-%APR-AMT-Regular-UPFRONT-Makerepayment1.xlsx|Acc_Disbursement|Acc_Repayment|Acc_Upfront1|Acc_Upfront2|Acc_Upfront3|

@scenario56-3183-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-OVERDUE-FEE-%LOANAMT+INT-Regular-UPFRONT
	  Scenario: 3183-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-OVERDUE-FEE-%LOANAMT+INT-Regular-UPFRONT

 Given I setup the product loan "Setup"
	| Productloannavigation.xlsx |
 Then I entered the values into product loan from "ProductLoanInput" Sheet
	|3183-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-OVERDUE-FEE-%LOANAMT+INT-Regular-UPFRONT-Loanproduct.xlsx|
 Given I setup the clients 
 Then I entered the values into client from "Input" sheet
    |Createclient.xlsx|
 Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|	
 When I set up the new create loan from "NewLoanInput" sheet
	|3183-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-OVERDUE-FEE-%LOANAMT+INT-Regular-UPFRONT-Newcreateloan.xlsx|
 Then I navigate to scheduler job & execute "Upfront & penalty to overdue loans"
 Then I verified the "Summary" details successfully 
	|3183-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-OVERDUE-FEE-%LOANAMT+INT-Regular-UPFRONT-Newcreateloan.xlsx|
 And I verified the "Repayment Schedule" details successfully 
    |3183-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-OVERDUE-FEE-%LOANAMT+INT-Regular-UPFRONT-Newcreateloan.xlsx|
 And I verified the "Transactions" details successfully 
	|3183-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-OVERDUE-FEE-%LOANAMT+INT-Regular-UPFRONT-Newcreateloan.xlsx|
 When I make repayment and verified the following tabs
    |3183-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-OVERDUE-FEE-%LOANAMT+INT-Regular-UPFRONT-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
 And I Navigate to Accounting web page
 And I search with transaction id & verified the accounting entries
    |3183-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-OVERDUE-FEE-%LOANAMT+INT-Regular-UPFRONT-Makerepayment1.xlsx|Acc_Disbursement|Acc_Repayment|Acc_Upfront1|Acc_Upfront2|Acc_Upfront3|

@scenario57-3184-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-OVERDUE-FEE-%INT-Regular-UPFRONT
	  Scenario: 3184-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-OVERDUE-FEE-%INT-Regular-UPFRONT

 Given I setup the product loan "Setup"
	| Productloannavigation.xlsx |
 Then I entered the values into product loan from "ProductLoanInput" Sheet
	|3184-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-OVERDUE-FEE-%INT-Regular-UPFRONT-Loanproduct.xlsx|
 Given I setup the clients 
 Then I entered the values into client from "Input" sheet
    |Createclient.xlsx|
 Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|	
 When I set up the new create loan from "NewLoanInput" sheet
	|3184-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-OVERDUE-FEE-%INT-Regular-UPFRONT-Newcreateloan.xlsx|
 Then I navigate to scheduler job & execute "Upfront & penalty to overdue loans"
 Then I verified the "Summary" details successfully 
	|3184-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-OVERDUE-FEE-%INT-Regular-UPFRONT-Newcreateloan.xlsx|
 And I verified the "Repayment Schedule" details successfully 
    |3184-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-OVERDUE-FEE-%INT-Regular-UPFRONT-Newcreateloan.xlsx|
 And I verified the "Transactions" details successfully 
	|3184-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-OVERDUE-FEE-%INT-Regular-UPFRONT-Newcreateloan.xlsx|
 When I make repayment and verified the following tabs
    |3184-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-OVERDUE-FEE-%INT-Regular-UPFRONT-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
 And I Navigate to Accounting web page
 And I search with transaction id & verified the accounting entries
    |3184-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-OVERDUE-FEE-%INT-Regular-UPFRONT-Makerepayment1.xlsx|Acc_Disbursement|Acc_Repayment|Acc_Upfront1|Acc_Upfront2|Acc_Upfront3|

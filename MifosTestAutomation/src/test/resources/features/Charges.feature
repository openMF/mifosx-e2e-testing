Feature:Charges

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
	 	|3000-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-DISBURSE-FEE-FLAT-Regular-CASH-Loanproduct.xlsx|
	 	|3001-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-DISBURSE-FEE-%APR-AMT-Regular-CASH-Loanproduct.xlsx|
	 	|3002-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-DISBURSE-FEE-%LOANAMT+INTEREST-Regular-CASH-Loanproduct.xlsx|
	 	|3003-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-DISBURSE-FEE-%INTEREST-Regular-CASH-Loanproduct.xlsx|
	 	|3004-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-DISBURSE-FEE-%DIS-AMT-Regular-CASH-Loanproduct.xlsx|
	 	|3005-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-SPEDUEDATE-FEE-FLAT-Regular-CASH-Loanproduct.xlsx|
	 	|3006-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-SPEDUEDATE-FEE-%APR-AMT-Regular-CASH-Loanproduct.xlsx|
	 	|3007-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-SPEDUEDATE-FEE-%DIS-AMT-Regular-CASH-Loanproduct.xlsx|
	 	|3008-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-INSTALLMENT-FEE-FLAT-Regular-CASH-Loanproduct.xlsx|
		|3009-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-INSTALLMENT-FEE-%INTEREST-Regular-CASH-Loanproduct.xlsx|
	#	|3010-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-INSTALLMENT-FEE-%DIS-AMT-Regular-CASH-Loanproduct.xlsx|
	 	|3011-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-OVERDUE-FEE-FLAT-Regular-CASH-Loanproduct.xlsx|
		|3012-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-OVERDUE-FEE-%APR-AMT-Regular-CASH-Loanproduct.xlsx|
		|3013-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-OVERDUE-FEE-%LOANAMT+INT-Regular-CASH-Loanproduct.xlsx|
		|3014-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-OVERDUE-FEE-%INTEREST-Regular-CASH-Loanproduct.xlsx|
		|3015-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-TR-DISB-FEE-FLAT-Regular-CASH-Loanproduct.xlsx|
		|3016-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-TR-%DISB-AMT-Regular-CASH-Loanproduct.xlsx|
	 
@scenario1-3000-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-DISBURSE-FEE-FLAT-Regular-CASH	   
	  Scenario: 3000-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-DISBURSE-FEE-FLAT-Regular-CASH  

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
	  And I verified the "Transactions" details successfully 
	  			| 3000-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-DISBURSE-FEE-FLAT-Regular-CASH-Newcreateloan.xlsx|			
	  And I Navigate to Accounting web page
	  Then I search with transaction id & verified the accounting entries
	   			|3000-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-DISBURSE-FEE-FLAT-Regular-CASH-Newcreateloan.xlsx|Acc_Disbursement|Acc_Repaymentdisbursement|

@scenario2-3001-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-DISBURSE-FEE-%APR-AMT-Regular-CASH   
	  Scenario: 3001-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-DISBURSE-FEE-%APR-AMT-Regular-CASH  

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
	  And I verified the "Transactions" details successfully 
	  			| 3001-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-DISBURSE-FEE-%APR-AMT-Regular-CASH-Newcreateloan.xlsx|			
	  And I Navigate to Accounting web page
	  Then I search with transaction id & verified the accounting entries
	   			|3001-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-DISBURSE-FEE-%APR-AMT-Regular-CASH-Newcreateloan.xlsx|Acc_Disbursement|Acc_Repaymentdisbursement|
	   			
@scenario3-3002-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-DISBURSE-FEE-%LOANAMT+INTEREST-Regular-CASH   
	  Scenario: 3002-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-DISBURSE-FEE-%LOANAMT+INTEREST-Regular-CASH

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
	  And I verified the "Transactions" details successfully 
	  			| 3002-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-DISBURSE-FEE-%LOANAMT+INTEREST-Regular-CASH-Newcreateloan.xlsx|			
	  And I Navigate to Accounting web page
	  Then I search with transaction id & verified the accounting entries
	   			|3002-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-DISBURSE-FEE-%LOANAMT+INTEREST-Regular-CASH-Newcreateloan.xlsx|Acc_Disbursement|Acc_Repaymentdisbursement|	   				 	  			

@scenario4-3003-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-DISBURSE-FEE-%INTEREST-Regular-CASH   
	  Scenario: 3003-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-DISBURSE-FEE-%INTEREST-Regular-CASH  

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
	  And I verified the "Transactions" details successfully 
	  			| 3003-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-DISBURSE-FEE-%INTEREST-Regular-CASH-Newcreateloan.xlsx|			
	  And I Navigate to Accounting web page
	  Then I search with transaction id & verified the accounting entries
	   			|3003-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-DISBURSE-FEE-%INTEREST-Regular-CASH-Newcreateloan.xlsx|Acc_Disbursement|Acc_Repaymentdisbursement|
	   			
@scenario5-3004-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-DISBURSE-FEE-%DIS-AMT-Regular-CASH
	  Scenario: 3004-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-DISBURSE-FEE-%DIS-AMT-Regular-CASH  

   	  Given I setup the clients 
	  Then I entered the values into client from "Input" sheet
				|Createclient.xlsx|
	  Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			|3004-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-DISBURSE-FEE-%DIS-AMT-Regular-CASH-Newcreateloan.xlsx|
	  Then I verified the "Summary" details successfully 
	  			| 3004-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-DISBURSE-FEE-%DIS-AMT-Regular-CASH-Newcreateloan.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
	  			| 3004-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-DISBURSE-FEE-%DIS-AMT-Regular-CASH-Newcreateloan.xlsx|
	  And I verified the "Transactions" details successfully 
	  			| 3004-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-DISBURSE-FEE-%DIS-AMT-Regular-CASH-Newcreateloan.xlsx|			
	  And I Navigate to Accounting web page
	  Then I search with transaction id & verified the accounting entries
	   			|3004-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-DISBURSE-FEE-%DIS-AMT-Regular-CASH-Newcreateloan.xlsx|Acc_Disbursement|Acc_Repaymentdisbursement|	  			

@scenario6-3005-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-SPEDUEDATE-FEE-FLAT-Regular-CASH	   
	  Scenario: 3005-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-SPEDUEDATE-FEE-FLAT-Regular-CASH  

   	  Given I setup the clients 
	  Then I entered the values into client from "Input" sheet
				|Createclient.xlsx|
	  Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			| 3005-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-SPEDUEDATE-FEE-FLAT-Regular-CASH-Newcreateloan.xlsx|
	  Then I make repayment and read the transaction Id
       			|3005-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-SPEDUEDATE-FEE-FLAT-Regular-CASH-Makerepayment1.xlsx|Input|Transactions|
       		#	|Makerepayment3.xlsx|Input|Summary|Repayment Schedule|Transactions|
      And I Navigate to Accounting web page
	  Then I search with transaction id & verified the accounting entries
	   			| 3005-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-SPEDUEDATE-FEE-FLAT-Regular-CASH-Makerepayment1.xlsx|Acc_Disbursement|Acc_Repayment|

@scenario7-3006-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-SPEDUEDATE-FEE-%APR-AMT-Regular-CASH	   
	  Scenario: 3006-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-SPEDUEDATE-FEE-%APR-AMT-Regular-CASH  

   	  Given I setup the clients 
	  Then I entered the values into client from "Input" sheet
				|Createclient.xlsx|
	  Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			| 3006-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-SPEDUEDATE-FEE-%APR-AMT-Regular-CASH-Newcreateloan.xlsx|
	  Then I make repayment and read the transaction Id
       			|3006-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-SPEDUEDATE-FEE-%APR-AMT-Regular-CASH-Makerepayment1.xlsx|Input|Transactions|
       		#	|Makerepayment3.xlsx|Input|Summary|Repayment Schedule|Transactions|
      And I Navigate to Accounting web page
	  Then I search with transaction id & verified the accounting entries
	   			| 3006-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-SPEDUEDATE-FEE-%APR-AMT-Regular-CASH-Makerepayment1.xlsx|Acc_Disbursement|Acc_Repayment|

@scenario8-3007-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-SPEDUEDATE-FEE-%DIS-AMT-Regular-CASH	   
	  Scenario: 3007-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-SPEDUEDATE-FEE-%DIS-AMT-Regular-CASH  

   	  Given I setup the clients 
	  Then I entered the values into client from "Input" sheet
				|Createclient.xlsx|
	  Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			| 3007-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-SPEDUEDATE-FEE-%DIS-AMT-Regular-CASH-Newcreateloan.xlsx|
	  Then I make repayment and read the transaction Id
       			|3007-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-SPEDUEDATE-FEE-%DIS-AMT-Regular-CASH-Makerepayment1.xlsx|Input|Transactions|
       		#	|Makerepayment3.xlsx|Input|Summary|Repayment Schedule|Transactions|
      And I Navigate to Accounting web page
	  Then I search with transaction id & verified the accounting entries
	   			| 3007-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-SPEDUEDATE-FEE-%DIS-AMT-Regular-CASH-Makerepayment1.xlsx|Acc_Disbursement|Acc_Repayment|

@scenario9-3008-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-INSTALLMENT-FEE-FLAT-Regular-CASH	   
	  Scenario: 3008-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-INSTALLMENT-FEE-FLAT-Regular-CASH  

   	  Given I setup the clients 
	  Then I entered the values into client from "Input" sheet
				|Createclient.xlsx|
	  Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			| 3008-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-INSTALLMENT-FEE-FLAT-Regular-CASH-Newcreateloan.xlsx|
	  Then I make repayment and read the transaction Id
       			|3008-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-INSTALLMENT-FEE-FLAT-Regular-CASH-Makerepayment1.xlsx|Input|Transactions|
       		#	|Makerepayment3.xlsx|Input|Summary|Repayment Schedule|Transactions|
      And I Navigate to Accounting web page
	  Then I search with transaction id & verified the accounting entries
	   			| 3008-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-INSTALLMENT-FEE-FLAT-Regular-CASH-Makerepayment1.xlsx|Acc_Disbursement|Acc_Repayment|

@scenario10-3009-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-INSTALLMENT-FEE-%INTEREST-Regular-CASH	   
	  Scenario: 3009-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-INSTALLMENT-FEE-%INTEREST-Regular-CASH  

   	  Given I setup the clients 
	  Then I entered the values into client from "Input" sheet
				|Createclient.xlsx|
	  Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			| 3009-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-INSTALLMENT-FEE-%INTEREST-Regular-CASH-Newcreateloan.xlsx|
	  Then I make repayment and read the transaction Id
       			|3009-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-INSTALLMENT-FEE-%INTEREST-Regular-CASH-Makerepayment1.xlsx|Input|Transactions|
       		#	|Makerepayment3.xlsx|Input|Summary|Repayment Schedule|Transactions|
      And I Navigate to Accounting web page
	  Then I search with transaction id & verified the accounting entries
	   			| 3009-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-INSTALLMENT-FEE-%INTEREST-Regular-CASH-Makerepayment1.xlsx|Acc_Disbursement|Acc_Repayment|

@scenario11-3010-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-INSTALLMENT-FEE-%DIS-AMT-Regular-CASH
	  Scenario: 3010-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-INSTALLMENT-FEE-%DIS-AMT-Regular-CASH  

   	  Given I setup the clients 
	  Then I entered the values into client from "Input" sheet
				|Createclient.xlsx|
	  Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			| 3010-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-INSTALLMENT-FEE-%DIS-AMT-Regular-CASH-Newcreateloan.xlsx|
	  Then I make repayment and read the transaction Id
       			|3010-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-INSTALLMENT-FEE-%DIS-AMT-Regular-CASH-Makerepayment1.xlsx|Input|Transactions|
       		#	|Makerepayment3.xlsx|Input|Summary|Repayment Schedule|Transactions|
      And I Navigate to Accounting web page
	  Then I search with transaction id & verified the accounting entries
	   			| 3010-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-INSTALLMENT-FEE-%DIS-AMT-Regular-CASH-Makerepayment1.xlsx|Acc_Disbursement|Acc_Repayment|

@scenario12-3011-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-OVERDUE-FEE-FLAT-Regular-CASH
	  Scenario: 3011-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-OVERDUE-FEE-FLAT-Regular-CASH  

 Given I setup the clients 
 Then I entered the values into client from "Input" sheet
	|Createclient.xlsx|
 Then I should see client created successfully from "Output" sheet
	|Createclient.xlsx|
 When I set up the new create loan from "NewLoanInput" sheet
	| 3011-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-OVERDUE-FEE-FLAT-Regular-CASH-Newcreateloan.xlsx|
 Then I navigate to scheduler job & execute "Apply penalty to overdue loans"
 Then I make repayment and read the transaction Id
 	|3011-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-OVERDUE-FEE-FLAT-Regular-CASH-Makerepayment1.xlsx|Input|Transactions|
 And I Navigate to Accounting web page
 And I search with transaction id & verified the accounting entries
	| 3011-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-OVERDUE-FEE-FLAT-Regular-CASH-Makerepayment1.xlsx|Acc_Disbursement|Acc_Repayment|

@scenario13-3012-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-OVERDUE-FEE-%APR-AMT-Regular-CASH
	  Scenario: 3012-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-OVERDUE-FEE-%APR-AMT-Regular-CASH  
 Given I setup the clients 
 Then I entered the values into client from "Input" sheet
	|Createclient.xlsx|
 Then I should see client created successfully from "Output" sheet
	|Createclient.xlsx|
 When I set up the new create loan from "NewLoanInput" sheet
	| 3012-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-OVERDUE-FEE-%APR-AMT-Regular-CASH-Newcreateloan.xlsx|
 Then I navigate to scheduler job & execute "Apply penalty to overdue loans"
 Then I make repayment and read the transaction Id
 	|3012-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-OVERDUE-FEE-%APR-AMT-Regular-CASH-Makerepayment1.xlsx|Input|Transactions|
 And I Navigate to Accounting web page
 And I search with transaction id & verified the accounting entries
	| 3012-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-OVERDUE-FEE-%APR-AMT-Regular-CASH-Makerepayment1.xlsx|Acc_Disbursement|Acc_Repayment|

@scenario14-3013-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-OVERDUE-FEE-%LOANAMT+INT-Regular-CASH
	  Scenario: 3013-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-OVERDUE-FEE-%LOANAMT+INT-Regular-CASH  

 Given I setup the clients 
 Then I entered the values into client from "Input" sheet
	|Createclient.xlsx|
 Then I should see client created successfully from "Output" sheet
	|Createclient.xlsx|
 When I set up the new create loan from "NewLoanInput" sheet
	| 3013-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-OVERDUE-FEE-%LOANAMT+INT-Regular-CASH-Newcreateloan.xlsx|
 Then I navigate to scheduler job & execute "Apply penalty to overdue loans"
 Then I make repayment and read the transaction Id
 	|3013-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-OVERDUE-FEE-%LOANAMT+INT-Regular-CASH-Makerepayment1.xlsx|Input|Transactions|
 And I Navigate to Accounting web page
 And I search with transaction id & verified the accounting entries
	| 3013-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-OVERDUE-FEE-%LOANAMT+INT-Regular-CASH-Makerepayment1.xlsx|Acc_Disbursement|Acc_Repayment|

@scenario15-3014-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-OVERDUE-FEE-%INTEREST-Regular-CASH
	  Scenario: 3014-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-OVERDUE-FEE-%INTEREST-Regular-CASH  

 Given I setup the clients 
 Then I entered the values into client from "Input" sheet
	|Createclient.xlsx|
 Then I should see client created successfully from "Output" sheet
	|Createclient.xlsx|
 When I set up the new create loan from "NewLoanInput" sheet
	| 3014-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-OVERDUE-FEE-%INTEREST-Regular-CASH-Newcreateloan.xlsx|
 Then I navigate to scheduler job & execute "Apply penalty to overdue loans"
 Then I make repayment and read the transaction Id
 	|3014-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-OVERDUE-FEE-%INTEREST-Regular-CASH-Makerepayment1.xlsx|Input|Transactions|
 And I Navigate to Accounting web page
 And I search with transaction id & verified the accounting entries
	| 3014-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-OVERDUE-FEE-%INTEREST-Regular-CASH-Makerepayment1.xlsx|Acc_Disbursement|Acc_Repayment|
	
@scenario16-3015-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-TR-DISB-FEE-FLAT-Regular-CASH
	  Scenario: 3015-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-TR-DISB-FEE-FLAT-Regular-CASH  

   	  Given I setup the clients 
	  Then I entered the values into client from "Input" sheet
				|Createclient.xlsx|
	  Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			| 3015-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-TR-DISB-FEE-FLAT-Regular-CASH-Newcreateloan.xlsx|
	  Then I make repayment and read the transaction Id
       			|3015-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-TR-DISB-FEE-FLAT-Regular-CASH-Makerepayment1.xlsx|Input|Transactions|
      And I Navigate to Accounting web page
	  Then I search with transaction id & verified the accounting entries
	   			| 3015-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-TR-DISB-FEE-FLAT-Regular-CASH-Makerepayment1.xlsx|Acc_Disbursement|Acc_RepaymentDisbursement|Acc_Repayment|

@scenario17-3016-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-TR-%DISB-AMT-Regular-CASH
	  Scenario: 3016-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-TR-%DISB-AMT-Regular-CASH  

   	  Given I setup the clients 
	  Then I entered the values into client from "Input" sheet
				|Createclient.xlsx|
	  Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			| 3016-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-TR-%DISB-AMT-Regular-CASH-Newcreateloan.xlsx|
	  Then I make repayment and read the transaction Id
       			|3016-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-TR-%DISB-AMT-Regular-CASH-Makerepayment1.xlsx|Input|Transactions|
      And I Navigate to Accounting web page
	  Then I search with transaction id & verified the accounting entries
	   			| 3016-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-TR-%DISB-AMT-Regular-CASH-Makerepayment1.xlsx|Acc_Disbursement|Acc_RepaymentDisbursement|Acc_Repayment|
	   			
	   			
		   			
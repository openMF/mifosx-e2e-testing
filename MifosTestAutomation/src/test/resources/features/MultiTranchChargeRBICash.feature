Feature:MultiTranchChargeCash

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
	 	|3022-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-SPEDUEDATE-FEE-FLAT-Regular-CASH-Loanproduct.xlsx|
	 	|3023-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-SPEDUEDATE-FEE-%APRAMT-Regular-CASH-Loanproduct.xlsx|
	 	|3025-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-INSTALLMENT-FEE-FLAT-Regular-CASH-Loanproduct.xlsx|
	 	|3026-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-INSTALLMENT-FEE-%INTEREST-Regular-CASH-Loanproduct.xlsx|
	 	|3028-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-OVERDUE-FEE-FLAT-Regular-CASH-Loanproduct.xlsx|
 	 	|3029-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-OVERDUE-FEE-%APR-AMT-Regular-CASH-Loanproduct.xlsx|
	 	|3030-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-OVERDUE-FEE-%LOANAMT+INT-Regular-CASH-Loanproduct.xlsx|
	 	|3031-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-OVERDUE-FEE-%INTEREST-Regular-CASH-Loanproduct.xlsx|
		
@scenario30-3022-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-SPEDUEDATE-FEE-FLAT-Regular-CASH	   
	  Scenario: 3022-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-SPEDUEDATE-FEE-FLAT-Regular-CASH 

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
	
@scenario31-3023-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-SPEDUEDATE-FEE-%APRAMT-Regular-CASH	   
	  Scenario: 3023-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-SPEDUEDATE-FEE-%APRAMT-Regular-CASH 

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


@scenario32-3025-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-INSTALLMENT-FEE-FLAT-Regular-CASH	   
	  Scenario: 3025-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-INSTALLMENT-FEE-FLAT-Regular-CASH 

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

@scenario33-3026-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-INSTALLMENT-FEE-%INTEREST-Regular-CASH	
	  Scenario: 3026-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-INSTALLMENT-FEE-%INTEREST-Regular-CASH 

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

@scenario34-3028-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-OVERDUE-FEE-FLAT-Regular-CASH	
	  Scenario: 3028-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-OVERDUE-FEE-FLAT-Regular-CASH 

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

@scenario35-3029-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-OVERDUE-FEE-%APR-AMT-Regular-CASH	
	  Scenario: 3029-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-OVERDUE-FEE-%APR-AMT-Regular-CASH 

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

@scenario36-3030-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-OVERDUE-FEE-%LOANAMT+INT-Regular-CASH	
	  Scenario: 3030-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-OVERDUE-FEE-%LOANAMT+INT-Regular-CASH 

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
	
@scenario37-3031-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-OVERDUE-FEE-%INTEREST-Regular-CASH
	  Scenario: 3031-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-OVERDUE-FEE-%INTEREST-Regular-CASH 

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
	   			
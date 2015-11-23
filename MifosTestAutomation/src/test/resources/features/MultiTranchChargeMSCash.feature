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
	 	|3124-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-SPEDUEDATE-FEE-FLAT-Regular-CASH-Loanproduct.xlsx|
	 	|3125-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-SPEDUEDATE-FEE-%APRAMT-Regular-CASH-Loanproduct.xlsx|
	 	|3127-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-INSTALLMENT-FEE-FLAT-Regular-CASH-Loanproduct.xlsx|
	 	|3128-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-INSTALLMENT-FEE-%INTEREST-Regular-CASH-Loanproduct.xlsx|
	 	|3130-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-OVERDUE-FEE-FLAT-Regular-CASH-Loanproduct.xlsx|
 	 	|3131-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-OVERDUE-FEE-%APR-AMT-Regular-CASH-Loanproduct.xlsx|
	 	|3132-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-OVERDUE-FEE-%LOANAMT+INT-Regular-CASH-Loanproduct.xlsx|
	 	|3133-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-OVERDUE-FEE-%INTEREST-Regular-CASH-Loanproduct.xlsx|
		
@scenario18-3124-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-SPEDUEDATE-FEE-FLAT-Regular-CASH	   
	  Scenario: 3124-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-SPEDUEDATE-FEE-FLAT-Regular-CASH 

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
	   			
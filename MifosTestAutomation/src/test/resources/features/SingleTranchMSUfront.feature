Feature:Test

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
	 	|3170-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-DISBURSE-FEE-FLAT-Regular-UPFRONT-Loanproduct.xlsx|
	 	|3171-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-DISBURSE-FEE-%APR-AMT-Regular-UPFRONT-Loanproduct.xlsx|
	 	|3172-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-DISBURSE-FEE-%LOANAMT+INTEREST-Regular-UPFRONT-Loanproduct.xlsx|
	 	|3173-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-DISBURSE-FEE-%INTEREST-Regular-UPFRONT-Loanproduct.xlsx|
	 	|3175-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-SPEDUEDATE-FEE-FLAT-Regular-UPFRONT-Loanproduct.xlsx|
	 	|3176-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-SPEDUEDATE-FEE-%APR-AMT-Regular-UPFRONT-Loanproduct.xlsx|
	 	|3178-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-INSTALLMENT-FEE-FLAT-Regular-UPFRONT-Loanproduct.xlsx|
	 	|3179-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-INSTALLMENT-FEE-%INTEREST-Regular-UPFRONT-Loanproduct.xlsx|
	 	|3181-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-OVERDUE-FEE-FLAT-Regular-UPFRONT-Loanproduct.xlsx|
	 	|3182-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-OVERDUE-FEE-%APR-AMT-Regular-UPFRONT-Loanproduct.xlsx|
	 	|3183-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-OVERDUE-FEE-%LOANAMT+INT-Regular-UPFRONT-Loanproduct.xlsx|
	 	|3184-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-OVERDUE-FEE-%INT-Regular-UPFRONT-Loanproduct.xlsx|
		 	
 
 @scenario46-3170-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-DISBURSE-FEE-FLAT-Regular-UPFRONT
	  Scenario: 3170-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-DISBURSE-FEE-FLAT-Regular-UPFRONT
		
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
    |3170-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-DISBURSE-FEE-FLAT-Regular-UPFRONT-Newcreateloan.xlsx|Acc_Disbursement|Acc_RepaymentDisbursement|Acc_Upfront|

@scenario47-3171-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-DISBURSE-FEE-%APR-AMT-Regular-UPFRONT
	  Scenario: 3171-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-DISBURSE-FEE-%APR-AMT-Regular-UPFRONT
		
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
    |3171-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-DISBURSE-FEE-%APR-AMT-Regular-UPFRONT-Newcreateloan.xlsx|Acc_Disbursement|Acc_RepaymentDisbursement|Acc_Upfront|

@scenario48-3172-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-DISBURSE-FEE-%LOANAMT+INTEREST-Regular-UPFRONT
	  Scenario: 3172-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-DISBURSE-FEE-%LOANAMT+INTEREST-Regular-UPFRONT
		
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
    |3172-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-DISBURSE-FEE-%LOANAMT+INTEREST-Regular-UPFRONT-Newcreateloan.xlsx|Acc_Disbursement|Acc_RepaymentDisbursement|Acc_Upfront|

@scenario49-3173-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-DISBURSE-FEE-%INTEREST-Regular-UPFRONT
	  Scenario: 3173-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-DISBURSE-FEE-%INTEREST-Regular-UPFRONT
		
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
    |3173-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-DISBURSE-FEE-%INTEREST-Regular-UPFRONT-Newcreateloan.xlsx|Acc_Disbursement|Acc_RepaymentDisbursement|Acc_Upfront|

@scenario50-3175-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-SPEDUEDATE-FEE-FLAT-Regular-UPFRONT
	  Scenario: 3175-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-SPEDUEDATE-FEE-FLAT-Regular-UPFRONT

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
    |3175-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-SPEDUEDATE-FEE-FLAT-Regular-UPFRONT-Makerepayment1.xlsx|Acc_Disbursement|Acc_Repayment|Acc_Upfront|

@scenario51-3176-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-SPEDUEDATE-FEE-%APR-AMT-Regular-UPFRONT
	  Scenario: 3176-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-SPEDUEDATE-FEE-%APR-AMT-Regular-UPFRONT

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
    |3176-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-SPEDUEDATE-FEE-%APR-AMT-Regular-UPFRONT-Makerepayment1.xlsx|Acc_Disbursement|Acc_Repayment|Acc_Upfront|

@scenario52-3178-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-INSTALLMENT-FEE-FLAT-Regular-UPFRONT
	  Scenario: 3178-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-INSTALLMENT-FEE-FLAT-Regular-UPFRONT

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
    |3178-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-INSTALLMENT-FEE-FLAT-Regular-UPFRONT-Makerepayment1.xlsx|Acc_Disbursement|Acc_Repayment|Acc_Upfront|

 @scenario53-3179-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-INSTALLMENT-FEE-%INTEREST-Regular-UPFRONT
	  Scenario: 3179-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-INSTALLMENT-FEE-%INTEREST-Regular-UPFRONT

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
    |3179-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-INSTALLMENT-FEE-%INTEREST-Regular-UPFRONT-Makerepayment1.xlsx|Acc_Disbursement|Acc_Repayment|Acc_Upfront|
    
@scenario54-3181-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-OVERDUE-FEE-FLAT-Regular-UPFRONT
Scenario: 3181-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-OVERDUE-FEE-FLAT-Regular-UPFRONT
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
    |3181-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-OVERDUE-FEE-FLAT-Regular-UPFRONT-Makerepayment1.xlsx|Acc_Disbursement|Acc_RepaymentDisbursement|Acc_Repayment|Acc_Upfront|

@scenario55-3182-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-OVERDUE-FEE-%APR-AMT-Regular-UPFRONT
	  Scenario: 3182-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-OVERDUE-FEE-%APR-AMT-Regular-UPFRONT

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
    |3182-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-OVERDUE-FEE-%APR-AMT-Regular-UPFRONT-Makerepayment1.xlsx|Acc_Disbursement|Acc_RepaymentDisbursement|Acc_Repayment|Acc_Upfront|

@scenario56-3183-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-OVERDUE-FEE-%LOANAMT+INT-Regular-UPFRONT
	  Scenario: 3183-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-OVERDUE-FEE-%LOANAMT+INT-Regular-UPFRONT

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
    |3183-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-OVERDUE-FEE-%LOANAMT+INT-Regular-UPFRONT-Makerepayment1.xlsx|Acc_Disbursement|Acc_RepaymentDisbursement|Acc_Repayment|Acc_Upfront|

@scenario57-3184-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-OVERDUE-FEE-%INT-Regular-UPFRONT
	  Scenario: 3184-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-OVERDUE-FEE-%INT-Regular-UPFRONT

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
    |3184-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-OVERDUE-FEE-%INT-Regular-UPFRONT-Makerepayment1.xlsx|Acc_Disbursement|Acc_RepaymentDisbursement|Acc_Repayment|Acc_Upfront|
    
		   			
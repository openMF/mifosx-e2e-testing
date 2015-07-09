Feature:LoanMIFOS
	
	Background:
	 Given I navigate to mifos
	 And I use login folder 
	 When I login into mifos site using excel sheet
	   | Login.xlsx  | 
	 Then I should see logged in successfully
 		   
	 		  		   
  			 		
	@LoanProduct
	Scenario Outline: Loan
				 Given I setup the product loan 
				| Productloannavigation.xlsx |
		And I entered the values into product loan using
				| <excelsheet> |
		Then I should see product loan created successfully	
				| <excelsheet> |
 		Examples:
				| excelsheet   | 
			   |581-MS-EI-DB-DL-REC-NON-RNI-CTPD-SAR-MD-TR-1-EarlyRePayment-Loanproduct.xlsx|
	 		   |582-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-EarlyRePayment-Loanproduct.xlsx|
			   |583-MS-EI-DB-DL-REC-NON-RNI-CTRFD-SAR-MD-TR-1-EarlyRePayment-Loanproduct.xlsx|
	 		   |584-MS-EI-DB-DL-REC-NON-RNI-CTRFD-DL-MD-TR-1-EarlyRePayment-Loanproduct.xlsx|
	 		   |629-MS-EI-DB-SAR-REC-NON-RNI-CTPD-SAR-MD-TR-1-EarlyRePayment-Loanproduct.xlsx|
	 		   |630-MS-EI-DB-SAR-REC-NON-RNI-CTPD-DL-MD-TR-1-EarlyRePayment-Loanproduct.xlsx|
	 		   |631-MS-EI-DB-SAR-REC-NON-RNI-CTRFD-SAR-MD-TR-1-EarlyRePayment-Loanproduct.xlsx|
	 		   |632-MS-EI-DB-SAR-REC-NON-RNI-CTRFD-DL-MD-TR-1-EarlyRePayment-Loanproduct.xlsx|
	 		   |677-MS-EPP-DB-DL-REC-NON-RNI-CTPD-SAR-MD-TR-1-EarlyRePaymentt-Loanproduct.xlsx|
	 		   |678-MS-EPP-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-EarlyRePayment-Loanproduct.xlsx|
	 		   |679-MS-EPP-DB-DL-REC-NON-RNI-CTRFD-SAR-MD-TR-1-EarlyRePayment-Loanproduct.xlsx|
	 		   |680-MS-EPP-DB-DL-REC-NON-RNI-CTRFD-DL-MD-TR-1-EarlyRePayment-Loanproduct.xlsx|
	 		   |725-MS-EPP-DB-SAR-REC-NON-RNI-CTPD-SAR-MD-TR-1-EarlyRePayment-Loanproduct.xlsx|
	 		   |726-MS-EPP-DB-SAR-REC-NON-RNI-CTPD-DL-MD-TR-1-EarlyRePayment-Loanproduct.xlsx|
	 		   |727-MS-EPP-DB-SAR-REC-NON-RNI-CTRFD-SAR-MD-TR-1-EarlyRePayment-Loanproduct.xlsx|
	 		   |728-MS-EPP-DB-SAR-REC-NON-RNI-CTRFD-DL-MD-TR-1-EarlyRePaymentt-Loanproduct.xlsx|
	 		   |197-MS-EI-DB-DL-REC-NON-RNI-CTPD-SAR-MD-TR-1-ONTIME-Loanproduct.xlsx|
			   |198-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-Loanproduct.xlsx|
			   |199-MS-EI-DB-DL-REC-NON-RNI-CTRFD-SAR-MD-TR-1-ONTIME-Loanproduct.xlsx|
			   |200-MS-EI-DB-DL-REC-NON-RNI-CTRFD-DL-MD-TR-1-ONTIME-Loanproduct.xlsx|
			   |245-MS-EI-DB-SAR-REC-NON-RNI-CTPD-SAR-MD-TR-1-ONTIME-Loanproduct.xlsx|
			   |246-MS-EI-DB-SAR-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-Loanproduct.xlsx|
			   |247-MS-EI-DB-SAR-REC-NON-RNI-CTRFD-SAR-MD-TR-1-ONTIME-Loanproduct.xlsx|
			   |248-MS-EI-DB-SAR-REC-NON-RNI-CTRFD-DL-MD-TR-1-ONTIME-Loanproduct.xlsx|
		       |293-MS-EPP-DB-DL-REC-NON-RNI-CTPD-SAR-MD-TR-1-ONTIME-Loanproduct.xlsx|
			   |294-MS-EPP-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-Loanproduct.xlsx|
			   |295-MS-EPP-DB-DL-REC-NON-RNI-CTRFD-SAR-MD-TR-1-ONTIME-Loanproduct.xlsx|
			   |296-MS-EPP-DB-DL-REC-NON-RNI-CTRFD-DL-MD-TR-1-ONTIME-Loanproduct.xlsx|
			   |341-MS-EPP-DB-SAR-REC-NON-RNI-CTPD-SAR-MD-TR-1-ONTIME-Loanproduct.xlsx|
			   |342-MS-EPP-DB-SAR-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-Loanproduct.xlsx|
			   |343-MS-EPP-DB-SAR-REC-NON-RNI-CTRFD-SAR-MD-TR-1-ONTIME-Loanproduct.xlsx|
			   |344-MS-EPP-DB-SAR-REC-NON-RNI-CTRFD-DL-MD-TR-1-ONTIME-Loanproduct.xlsx|
			   |965-MS-EI-DB-DL-REC-NON-RNI-CTPD-SAR-MD-TR-1-LateRepayment-Loanproduct.xlsx|
			   |966-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-LateRepayment-Loanproduct.xlsx|
			   |967-MS-EI-DB-DL-REC-NON-RNI-CTRFD-SAR-MD-TR-1-LateRepayment-Loanproduct.xlsx|
			   |968-MS-EI-DB-DL-REC-NON-RNI-CTRFD-DL-MD-TR-1-LateRepayment-Loanproduct.xlsx|
			   |1013-MS-EI-DB-SAR-REC-NON-RNI-CTPD-SAR-MD-TR-1-LateRepayment-Loanproduct.xlsx|
			   |1014-MS-EI-DB-SAR-REC-NON-RNI-CTPD-DL-MD-TR-1-LateRepayment-Loanproduct.xlsx|
			   |1015-MS-EI-DB-SAR-REC-NON-RNI-CTRFD-SAR-MD-TR-1-LateRepayment-Loanproduct.xlsx|
			   |1016-MS-EI-DB-SAR-REC-NON-RNI-CTRFD-DL-MD-TR-1-LateRepayment-Loanproduct.xlsx|
			   |1061-MS-EPP-DB-DL-REC-NON-RNI-CTPD-SAR-MD-TR-1-LateRepayment-Loanproduct.xlsx|
			   |1062-MS-EPP-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-LateRepayment-Loanproduct.xlsx|
			   |1063-MS-EPP-DB-DL-REC-NON-RNI-CTRFD-SAR-MD-TR-1-LateRepayment-Loanproduct|
			   |1064-MS-EPP-DB-DL-REC-NON-RNI-CTRFD-DL-MD-TR-1-LateRepayment-Loanproduct.xlsx|
			   |1109-MS-EPP-DB-SAR-REC-NON-RNI-CTPD-SAR-MD-TR-1-LateRepayment-Loanproduct.xlsx|
			   |1110-MS-EPP-DB-SAR-REC-NON-RNI-CTPD-DL-MD-TR-1-LateRepayment-Loanproduct.xlsx|
			   |1111-MS-EPP-DB-SAR-REC-NON-RNI-CTRFD-SAR-MD-TR-1-LateRepayment-Loanproduct.xlsx|
			   |1112-MS-EPP-DB-SAR-REC-NON-RNI-CTRFD-DL-MD-TR-1-LateRepayment-Loanproduct.xlsx|
	 		   

@scenario1-Loan-581-MS-EI-DB-DL-REC-NON-RNI-CTPD-SAR-MD-TR-1-EarlyRePayment		   
	  Scenario: Loan-581-MS-EI-DB-DL-REC-NON-RNI-CTPD-SAR-MD-TR-1-EarlyRePayment
	  Given I setup the clients 
	  			| Clientnavigation.xlsx |
	  When I entered the values into client form using
	  			|Createclient.xlsx|
	  Then I should see client created successfully
	  			|Createclient.xlsx|   
	  When I set up the new create loan
	  			| 581-MS-EI-DB-DL-REC-NON-RNI-CTPD-SAR-MD-TR-1-EarlyRePayment-Newcreateloan.xlsx|
	  Then I verified the "Summary" details successfully 
	  			| 581-MS-EI-DB-DL-REC-NON-RNI-CTPD-SAR-MD-TR-1-EarlyRePayment-Newcreateloan.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
	  			| 581-MS-EI-DB-DL-REC-NON-RNI-CTPD-SAR-MD-TR-1-EarlyRePayment-Newcreateloan.xlsx|
	  When I make repayment and verified the following tabs
       			|581-MS-EI-DB-DL-REC-NON-RNI-CTPD-SAR-MD-TR-1-EarlyRePayment-Makerepayment1.xlsx|Repayment Schedule|	 		 

@scenario2-Loan-582-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-EarlyRePayment		   
	  Scenario: Loan-582-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-EarlyRePayment
	  Given I setup the clients 
	  			| Clientnavigation.xlsx |
	  When I entered the values into client form using
	  			|Createclient.xlsx|
	  Then I should see client created successfully
	  			|Createclient.xlsx|   
	  When I set up the new create loan
	  			| 582-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-EarlyRePayment-Newcreateloan.xlsx|
	  Then I verified the "Summary" details successfully 
	  			| 582-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-EarlyRePayment-Newcreateloan.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
	  			| 582-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-EarlyRePayment-Newcreateloan.xlsx|
	  When I make repayment and verified the following tabs
       			|582-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-EarlyRePayment-Makerepayment1.xlsx|Repayment Schedule|
       			
@scenario3-Loan-583-MS-EI-DB-DL-REC-NON-RNI-CTRFD-SAR-MD-TR-1-EarlyRePayment		   
	  Scenario: Loan-583-MS-EI-DB-DL-REC-NON-RNI-CTRFD-SAR-MD-TR-1-EarlyRePayment
	  Given I setup the clients 
	  			| Clientnavigation.xlsx |
	  When I entered the values into client form using
	  			|Createclient.xlsx|
	  Then I should see client created successfully
	  			|Createclient.xlsx|   
	  When I set up the new create loan
	  			| 583-MS-EI-DB-DL-REC-NON-RNI-CTRFD-SAR-MD-TR-1-EarlyRePayment-Newcreateloan.xlsx|
	  Then I verified the "Summary" details successfully 
	  			| 583-MS-EI-DB-DL-REC-NON-RNI-CTRFD-SAR-MD-TR-1-EarlyRePayment-Newcreateloan.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
	  			| 583-MS-EI-DB-DL-REC-NON-RNI-CTRFD-SAR-MD-TR-1-EarlyRePayment-Newcreateloan.xlsx|
	  When I make repayment and verified the following tabs
       			|583-MS-EI-DB-DL-REC-NON-RNI-CTRFD-SAR-MD-TR-1-EarlyRePayment-Makerepayment1.xlsx|Repayment Schedule|
       			
@scenario4-Loan-584-MS-EI-DB-DL-REC-NON-RNI-CTRFD-DL-MD-TR-1-EarlyRePayment		   
	  Scenario: Loan-584-MS-EI-DB-DL-REC-NON-RNI-CTRFD-DL-MD-TR-1-EarlyRePayment
	  Given I setup the clients 
	  			| Clientnavigation.xlsx |
	  When I entered the values into client form using
	  			|Createclient.xlsx|
	  Then I should see client created successfully
	  			|Createclient.xlsx|   
	  When I set up the new create loan
	  			| 584-MS-EI-DB-DL-REC-NON-RNI-CTRFD-DL-MD-TR-1-EarlyRePayment-Newcreateloan.xlsx|
	  Then I verified the "Summary" details successfully 
	  			| 584-MS-EI-DB-DL-REC-NON-RNI-CTRFD-DL-MD-TR-1-EarlyRePayment-Newcreateloan.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
	  			| 584-MS-EI-DB-DL-REC-NON-RNI-CTRFD-DL-MD-TR-1-EarlyRePayment-Newcreateloan.xlsx|
	  When I make repayment and verified the following tabs
       			|584-MS-EI-DB-DL-REC-NON-RNI-CTRFD-DL-MD-TR-1-EarlyRePayment-Makerepayment1.xlsx|Repayment Schedule|
 
@scenario5-Loan-629-MS-EI-DB-SAR-REC-NON-RNI-CTPD-SAR-MD-TR-1-EarlyRePayment		   
	  Scenario: Loan-629-MS-EI-DB-SAR-REC-NON-RNI-CTPD-SAR-MD-TR-1-EarlyRePayment
	  Given I setup the clients 
	  			| Clientnavigation.xlsx |
	  When I entered the values into client form using
	  			|Createclient.xlsx|
	  Then I should see client created successfully
	  			|Createclient.xlsx|   
	  When I set up the new create loan
	  			| 629-MS-EI-DB-SAR-REC-NON-RNI-CTPD-SAR-MD-TR-1-EarlyRePayment-Newcreateloan.xlsx|
	  Then I verified the "Summary" details successfully 
	  			| 629-MS-EI-DB-SAR-REC-NON-RNI-CTPD-SAR-MD-TR-1-EarlyRePayment-Newcreateloan.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
	  			| 629-MS-EI-DB-SAR-REC-NON-RNI-CTPD-SAR-MD-TR-1-EarlyRePayment-Newcreateloan.xlsx|
	  When I make repayment and verified the following tabs
       			|629-MS-EI-DB-SAR-REC-NON-RNI-CTPD-SAR-MD-TR-1-EarlyRePayment-Makerepayment1.xlsx|Repayment Schedule|

@scenario6-Loan-630-MS-EI-DB-SAR-REC-NON-RNI-CTPD-DL-MD-TR-1-EarlyRePayment		   
	  Scenario: Loan-630-MS-EI-DB-SAR-REC-NON-RNI-CTPD-DL-MD-TR-1-EarlyRePayment
	  Given I setup the clients 
	  			| Clientnavigation.xlsx |
	  When I entered the values into client form using
	  			|Createclient.xlsx|
	  Then I should see client created successfully
	  			|Createclient.xlsx|   
	  When I set up the new create loan
	  			| 630-MS-EI-DB-SAR-REC-NON-RNI-CTPD-DL-MD-TR-1-EarlyRePayment-Newcreateloan.xlsx|
	  Then I verified the "Summary" details successfully 
	  			| 630-MS-EI-DB-SAR-REC-NON-RNI-CTPD-DL-MD-TR-1-EarlyRePayment-Newcreateloan.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
	  			| 630-MS-EI-DB-SAR-REC-NON-RNI-CTPD-DL-MD-TR-1-EarlyRePayment-Newcreateloan.xlsx|
	  When I make repayment and verified the following tabs
       			|630-MS-EI-DB-SAR-REC-NON-RNI-CTPD-DL-MD-TR-1-EarlyRePayment-Makerepayment1.xlsx|Repayment Schedule|

@scenario7-Loan-631-MS-EI-DB-SAR-REC-NON-RNI-CTRFD-SAR-MD-TR-1-EarlyRePayment		   
	  Scenario: Loan-631-MS-EI-DB-SAR-REC-NON-RNI-CTRFD-SAR-MD-TR-1-EarlyRePayment
	  Given I setup the clients 
	  			| Clientnavigation.xlsx |
	  When I entered the values into client form using
	  			|Createclient.xlsx|
	  Then I should see client created successfully
	  			|Createclient.xlsx|   
	  When I set up the new create loan
	  			| 631-MS-EI-DB-SAR-REC-NON-RNI-CTRFD-SAR-MD-TR-1-EarlyRePayment-Newcreateloan.xlsx|
	  Then I verified the "Summary" details successfully 
	  			| 631-MS-EI-DB-SAR-REC-NON-RNI-CTRFD-SAR-MD-TR-1-EarlyRePayment-Newcreateloan.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
	  			| 631-MS-EI-DB-SAR-REC-NON-RNI-CTRFD-SAR-MD-TR-1-EarlyRePayment-Newcreateloan.xlsx|
	  When I make repayment and verified the following tabs
       			|631-MS-EI-DB-SAR-REC-NON-RNI-CTRFD-SAR-MD-TR-1-EarlyRePayment-Makerepayment1.xlsx|Repayment Schedule|

@scenario8-Loan-632-MS-EI-DB-SAR-REC-NON-RNI-CTRFD-DL-MD-TR-1-EarlyRePayment		   
	  Scenario: Loan-632-MS-EI-DB-SAR-REC-NON-RNI-CTRFD-DL-MD-TR-1-EarlyRePayment
	  Given I setup the clients 
	  			| Clientnavigation.xlsx |
	  When I entered the values into client form using
	  			|Createclient.xlsx|
	  Then I should see client created successfully
	  			|Createclient.xlsx|   
	  When I set up the new create loan
	  			| 632-MS-EI-DB-SAR-REC-NON-RNI-CTRFD-DL-MD-TR-1-EarlyRePayment-Newcreateloan.xlsx|
	  Then I verified the "Summary" details successfully 
	  			| 632-MS-EI-DB-SAR-REC-NON-RNI-CTRFD-DL-MD-TR-1-EarlyRePayment-Newcreateloan.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
	  			| 632-MS-EI-DB-SAR-REC-NON-RNI-CTRFD-DL-MD-TR-1-EarlyRePayment-Newcreateloan.xlsx|
	  When I make repayment and verified the following tabs
       			|632-MS-EI-DB-SAR-REC-NON-RNI-CTRFD-DL-MD-TR-1-EarlyRePayment-Makerepayment1.xlsx|Repayment Schedule|
       			
@scenario9-Loan-677-MS-EPP-DB-DL-REC-NON-RNI-CTPD-SAR-MD-TR-1-EarlyRePaymentt		   
	  Scenario: Loan-677-MS-EPP-DB-DL-REC-NON-RNI-CTPD-SAR-MD-TR-1-EarlyRePaymentt
	  Given I setup the clients 
	  			| Clientnavigation.xlsx |
	  When I entered the values into client form using
	  			|Createclient.xlsx|
	  Then I should see client created successfully
	  			|Createclient.xlsx|   
	  When I set up the new create loan
	  			| 677-MS-EPP-DB-DL-REC-NON-RNI-CTPD-SAR-MD-TR-1-EarlyRePaymentt-Newcreateloan.xlsx|
	  Then I verified the "Summary" details successfully 
	  			| 677-MS-EPP-DB-DL-REC-NON-RNI-CTPD-SAR-MD-TR-1-EarlyRePaymentt-Newcreateloan.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
	  			| 677-MS-EPP-DB-DL-REC-NON-RNI-CTPD-SAR-MD-TR-1-EarlyRePaymentt-Newcreateloan.xlsx|
	  When I make repayment and verified the following tabs
       			|677-MS-EPP-DB-DL-REC-NON-RNI-CTPD-SAR-MD-TR-1-EarlyRePaymentt-Makerepayment1.xlsx|Repayment Schedule|
       			
@scenario10-Loan-678-MS-EPP-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-EarlyRePayment		   
	  Scenario: Loan-678-MS-EPP-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-EarlyRePayment
	  Given I setup the clients 
	  			| Clientnavigation.xlsx |
	  When I entered the values into client form using
	  			|Createclient.xlsx|
	  Then I should see client created successfully
	  			|Createclient.xlsx|   
	  When I set up the new create loan
	  			| 678-MS-EPP-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-EarlyRePayment-Newcreateloan.xlsx|
	  Then I verified the "Summary" details successfully 
	  			| 678-MS-EPP-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-EarlyRePayment-Newcreateloan.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
	  			| 678-MS-EPP-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-EarlyRePayment-Newcreateloan.xlsx|
	  When I make repayment and verified the following tabs
       			|678-MS-EPP-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-EarlyRePayment-Makerepayment1.xlsx|Repayment Schedule|
       			
@scenario11-Loan-679-MS-EPP-DB-DL-REC-NON-RNI-CTRFD-SAR-MD-TR-1-EarlyRePayment		   
	  Scenario: Loan-679-MS-EPP-DB-DL-REC-NON-RNI-CTRFD-SAR-MD-TR-1-EarlyRePayment
	  Given I setup the clients 
	  			| Clientnavigation.xlsx |
	  When I entered the values into client form using
	  			|Createclient.xlsx|
	  Then I should see client created successfully
	  			|Createclient.xlsx|   
	  When I set up the new create loan
	  			| 679-MS-EPP-DB-DL-REC-NON-RNI-CTRFD-SAR-MD-TR-1-EarlyRePayment-Newcreateloan.xlsx|
	  Then I verified the "Summary" details successfully 
	  			| 679-MS-EPP-DB-DL-REC-NON-RNI-CTRFD-SAR-MD-TR-1-EarlyRePayment-Newcreateloan.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
	  			| 679-MS-EPP-DB-DL-REC-NON-RNI-CTRFD-SAR-MD-TR-1-EarlyRePayment-Newcreateloan.xlsx|
	  When I make repayment and verified the following tabs
       			|679-MS-EPP-DB-DL-REC-NON-RNI-CTRFD-SAR-MD-TR-1-EarlyRePayment-Makerepayment1.xlsx|Repayment Schedule|
       			
@scenario12-Loan-680-MS-EPP-DB-DL-REC-NON-RNI-CTRFD-DL-MD-TR-1-EarlyRePayment		   
	  Scenario: Loan-680-MS-EPP-DB-DL-REC-NON-RNI-CTRFD-DL-MD-TR-1-EarlyRePayment
	  Given I setup the clients 
	  			| Clientnavigation.xlsx |
	  When I entered the values into client form using
	  			|Createclient.xlsx|
	  Then I should see client created successfully
	  			|Createclient.xlsx|   
	  When I set up the new create loan
	  			| 680-MS-EPP-DB-DL-REC-NON-RNI-CTRFD-DL-MD-TR-1-EarlyRePayment-Newcreateloan.xlsx|
	  Then I verified the "Summary" details successfully 
	  			| 680-MS-EPP-DB-DL-REC-NON-RNI-CTRFD-DL-MD-TR-1-EarlyRePayment-Newcreateloan.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
	  			| 680-MS-EPP-DB-DL-REC-NON-RNI-CTRFD-DL-MD-TR-1-EarlyRePayment-Newcreateloan.xlsx|
	  When I make repayment and verified the following tabs
       			|680-MS-EPP-DB-DL-REC-NON-RNI-CTRFD-DL-MD-TR-1-EarlyRePayment-Makerepayment1.xlsx|Repayment Schedule|
       			
@scenario13-Loan-725-MS-EPP-DB-SAR-REC-NON-RNI-CTPD-SAR-MD-TR-1-EarlyRePayment		   
	  Scenario: Loan-725-MS-EPP-DB-SAR-REC-NON-RNI-CTPD-SAR-MD-TR-1-EarlyRePayment
	  Given I setup the clients 
	  			| Clientnavigation.xlsx |
	  When I entered the values into client form using
	  			|Createclient.xlsx|
	  Then I should see client created successfully
	  			|Createclient.xlsx|   
	  When I set up the new create loan
	  			| 725-MS-EPP-DB-SAR-REC-NON-RNI-CTPD-SAR-MD-TR-1-EarlyRePayment-Newcreateloan.xlsx|
	  Then I verified the "Summary" details successfully 
	  			| 725-MS-EPP-DB-SAR-REC-NON-RNI-CTPD-SAR-MD-TR-1-EarlyRePayment-Newcreateloan.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
	  			| 725-MS-EPP-DB-SAR-REC-NON-RNI-CTPD-SAR-MD-TR-1-EarlyRePayment-Newcreateloan.xlsx|
	  When I make repayment and verified the following tabs
       			|725-MS-EPP-DB-SAR-REC-NON-RNI-CTPD-SAR-MD-TR-1-EarlyRePayment-Makerepayment1.xlsx|Repayment Schedule|
       			
@scenario14-Loan-726-MS-EPP-DB-SAR-REC-NON-RNI-CTPD-DL-MD-TR-1-EarlyRePayment		   
	  Scenario: Loan-726-MS-EPP-DB-SAR-REC-NON-RNI-CTPD-DL-MD-TR-1-EarlyRePayment
	  Given I setup the clients 
	  			| Clientnavigation.xlsx |
	  When I entered the values into client form using
	  			|Createclient.xlsx|
	  Then I should see client created successfully
	  			|Createclient.xlsx|   
	  When I set up the new create loan
	  			| 726-MS-EPP-DB-SAR-REC-NON-RNI-CTPD-DL-MD-TR-1-EarlyRePayment-Newcreateloan.xlsx|
	  Then I verified the "Summary" details successfully 
	  			| 726-MS-EPP-DB-SAR-REC-NON-RNI-CTPD-DL-MD-TR-1-EarlyRePayment-Newcreateloan.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
	  			| 726-MS-EPP-DB-SAR-REC-NON-RNI-CTPD-DL-MD-TR-1-EarlyRePayment-Newcreateloan.xlsx|
	  When I make repayment and verified the following tabs
       			|726-MS-EPP-DB-SAR-REC-NON-RNI-CTPD-DL-MD-TR-1-EarlyRePayment-Makerepayment1.xlsx|Repayment Schedule|
       			
@scenario15-Loan-727-MS-EPP-DB-SAR-REC-NON-RNI-CTRFD-SAR-MD-TR-1-EarlyRePayment		   
	  Scenario: Loan-727-MS-EPP-DB-SAR-REC-NON-RNI-CTRFD-SAR-MD-TR-1-EarlyRePayment
	  Given I setup the clients 
	  			| Clientnavigation.xlsx |
	  When I entered the values into client form using
	  			|Createclient.xlsx|
	  Then I should see client created successfully
	  			|Createclient.xlsx|   
	  When I set up the new create loan
	  			| 727-MS-EPP-DB-SAR-REC-NON-RNI-CTRFD-SAR-MD-TR-1-EarlyRePayment-Newcreateloan.xlsx|
	  Then I verified the "Summary" details successfully 
	  			| 727-MS-EPP-DB-SAR-REC-NON-RNI-CTRFD-SAR-MD-TR-1-EarlyRePayment-Newcreateloan.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
	  			| 727-MS-EPP-DB-SAR-REC-NON-RNI-CTRFD-SAR-MD-TR-1-EarlyRePayment-Newcreateloan.xlsx|
	  When I make repayment and verified the following tabs
       			|727-MS-EPP-DB-SAR-REC-NON-RNI-CTRFD-SAR-MD-TR-1-EarlyRePayment-Makerepayment1.xlsx|Repayment Schedule|
       			
@scenario16-Loan-728-MS-EPP-DB-SAR-REC-NON-RNI-CTRFD-DL-MD-TR-1-EarlyRePayment		   
	  Scenario: Loan-728-MS-EPP-DB-SAR-REC-NON-RNI-CTRFD-DL-MD-TR-1-EarlyRePayment
	  Given I setup the clients 
	  			| Clientnavigation.xlsx |
	  When I entered the values into client form using
	  			|Createclient.xlsx|
	  Then I should see client created successfully
	  			|Createclient.xlsx|   
	  When I set up the new create loan
	  			| 728-MS-EPP-DB-SAR-REC-NON-RNI-CTRFD-DL-MD-TR-1-EarlyRePayment-Newcreateloan.xlsx|
	  Then I verified the "Summary" details successfully 
	  			| 728-MS-EPP-DB-SAR-REC-NON-RNI-CTRFD-DL-MD-TR-1-EarlyRePayment-Newcreateloan.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
	  			| 728-MS-EPP-DB-SAR-REC-NON-RNI-CTRFD-DL-MD-TR-1-EarlyRePayment-Newcreateloan.xlsx|
	  When I make repayment and verified the following tabs
       			|728-MS-EPP-DB-SAR-REC-NON-RNI-CTRFD-DL-MD-TR-1-EarlyRePayment-Makerepayment1.xlsx|Repayment Schedule|
       			
@scenario17-Loan-197-MS-EI-DB-DL-REC-NON-RNI-CTPD-SAR-MD-TR-1-ONTIME		   
	  Scenario: Loan-197-MS-EI-DB-DL-REC-NON-RNI-CTPD-SAR-MD-TR-1-ONTIME
	  Given I setup the clients 
	  			| Clientnavigation.xlsx |
	  When I entered the values into client form using
	  			|Createclient.xlsx|
	  Then I should see client created successfully
	  			|Createclient.xlsx|   
	  When I set up the new create loan
	  			| 197-MS-EI-DB-DL-REC-NON-RNI-CTPD-SAR-MD-TR-1-ONTIME-Newcreateloan.xlsx|
	  Then I verified the "Summary" details successfully 
	  			| 197-MS-EI-DB-DL-REC-NON-RNI-CTPD-SAR-MD-TR-1-ONTIME-Newcreateloan.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
	  			| 197-MS-EI-DB-DL-REC-NON-RNI-CTPD-SAR-MD-TR-1-ONTIME-Newcreateloan.xlsx|
	  When I make repayment and verified the following tabs
       			|197-MS-EI-DB-DL-REC-NON-RNI-CTPD-SAR-MD-TR-1-ONTIME-Makerepayment1.xlsx|Repayment Schedule|
       			
@scenario18-Loan-198-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME		   
	  Scenario: Loan-198-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME
	  Given I setup the clients 
	  			| Clientnavigation.xlsx |
	  When I entered the values into client form using
	  			|Createclient.xlsx|
	  Then I should see client created successfully
	  			|Createclient.xlsx|   
	  When I set up the new create loan
	  			| 198-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-Newcreateloan.xlsx|
	  Then I verified the "Summary" details successfully 
	  			| 198-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-Newcreateloan.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
	  			| 198-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-Newcreateloan.xlsx|
	  When I make repayment and verified the following tabs
       			|198-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-Makerepayment1.xlsx|Repayment Schedule|
       			
@scenario19-Loan-199-MS-EI-DB-DL-REC-NON-RNI-CTRFD-SAR-MD-TR-1-ONTIME		   
	  Scenario: Loan-199-MS-EI-DB-DL-REC-NON-RNI-CTRFD-SAR-MD-TR-1-ONTIME
	  Given I setup the clients 
	  			| Clientnavigation.xlsx |
	  When I entered the values into client form using
	  			|Createclient.xlsx|
	  Then I should see client created successfully
	  			|Createclient.xlsx|   
	  When I set up the new create loan
	  			| 199-MS-EI-DB-DL-REC-NON-RNI-CTRFD-SAR-MD-TR-1-ONTIME-Newcreateloan.xlsx|
	  Then I verified the "Summary" details successfully 
	  			| 199-MS-EI-DB-DL-REC-NON-RNI-CTRFD-SAR-MD-TR-1-ONTIME-Newcreateloan.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
	  			| 199-MS-EI-DB-DL-REC-NON-RNI-CTRFD-SAR-MD-TR-1-ONTIME-Newcreateloan.xlsx|
	  When I make repayment and verified the following tabs
       			|199-MS-EI-DB-DL-REC-NON-RNI-CTRFD-SAR-MD-TR-1-ONTIME-Makerepayment1.xlsx|Repayment Schedule|
       			
@scenario20-Loan-200-MS-EI-DB-DL-REC-NON-RNI-CTRFD-DL-MD-TR-1-ONTIME		   
	  Scenario: Loan-200-MS-EI-DB-DL-REC-NON-RNI-CTRFD-DL-MD-TR-1-ONTIME
	  Given I setup the clients 
	  			| Clientnavigation.xlsx |
	  When I entered the values into client form using
	  			|Createclient.xlsx|
	  Then I should see client created successfully
	  			|Createclient.xlsx|   
	  When I set up the new create loan
	  			| 200-MS-EI-DB-DL-REC-NON-RNI-CTRFD-DL-MD-TR-1-ONTIME-Newcreateloan.xlsx|
	  Then I verified the "Summary" details successfully 
	  			| 200-MS-EI-DB-DL-REC-NON-RNI-CTRFD-DL-MD-TR-1-ONTIME-Newcreateloan.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
	  			| 200-MS-EI-DB-DL-REC-NON-RNI-CTRFD-DL-MD-TR-1-ONTIME-Newcreateloan.xlsx|
	  When I make repayment and verified the following tabs
       			|200-MS-EI-DB-DL-REC-NON-RNI-CTRFD-DL-MD-TR-1-ONTIME-Makerepayment1.xlsx|Repayment Schedule|
       			
@scenario21-Loan-245-MS-EI-DB-SAR-REC-NON-RNI-CTPD-SAR-MD-TR-1-ONTIME		   
	  Scenario: Loan-245-MS-EI-DB-SAR-REC-NON-RNI-CTPD-SAR-MD-TR-1-ONTIME
	  Given I setup the clients 
	  			| Clientnavigation.xlsx |
	  When I entered the values into client form using
	  			|Createclient.xlsx|
	  Then I should see client created successfully
	  			|Createclient.xlsx|   
	  When I set up the new create loan
	  			| 245-MS-EI-DB-SAR-REC-NON-RNI-CTPD-SAR-MD-TR-1-ONTIME-Newcreateloan.xlsx|
	  Then I verified the "Summary" details successfully 
	  			| 245-MS-EI-DB-SAR-REC-NON-RNI-CTPD-SAR-MD-TR-1-ONTIME-Newcreateloan.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
	  			| 245-MS-EI-DB-SAR-REC-NON-RNI-CTPD-SAR-MD-TR-1-ONTIME-Newcreateloan.xlsx|
	  When I make repayment and verified the following tabs
       			|245-MS-EI-DB-SAR-REC-NON-RNI-CTPD-SAR-MD-TR-1-ONTIME-Makerepayment1.xlsx|Repayment Schedule|
       			
@scenario22-Loan-246-MS-EI-DB-SAR-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME		   
	  Scenario: Loan-246-MS-EI-DB-SAR-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME
	  Given I setup the clients 
	  			| Clientnavigation.xlsx |
	  When I entered the values into client form using
	  			|Createclient.xlsx|
	  Then I should see client created successfully
	  			|Createclient.xlsx|   
	  When I set up the new create loan
	  			| 246-MS-EI-DB-SAR-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-Newcreateloan.xlsx|
	  Then I verified the "Summary" details successfully 
	  			| 246-MS-EI-DB-SAR-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-Newcreateloan.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
	  			| 246-MS-EI-DB-SAR-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-Newcreateloan.xlsx|
	  When I make repayment and verified the following tabs
       			|246-MS-EI-DB-SAR-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-Makerepayment1.xlsx|Repayment Schedule|
       			
@scenario23-Loan-247-MS-EI-DB-SAR-REC-NON-RNI-CTRFD-SAR-MD-TR-1-ONTIME		   
	  Scenario: Loan-247-MS-EI-DB-SAR-REC-NON-RNI-CTRFD-SAR-MD-TR-1-ONTIME
	  Given I setup the clients 
	  			| Clientnavigation.xlsx |
	  When I entered the values into client form using
	  			|Createclient.xlsx|
	  Then I should see client created successfully
	  			|Createclient.xlsx|   
	  When I set up the new create loan
	  			| 247-MS-EI-DB-SAR-REC-NON-RNI-CTRFD-SAR-MD-TR-1-ONTIME-Newcreateloan.xlsx|
	  Then I verified the "Summary" details successfully 
	  			| 247-MS-EI-DB-SAR-REC-NON-RNI-CTRFD-SAR-MD-TR-1-ONTIME-Newcreateloan.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
	  			| 247-MS-EI-DB-SAR-REC-NON-RNI-CTRFD-SAR-MD-TR-1-ONTIME-Newcreateloan.xlsx|
	  When I make repayment and verified the following tabs
       			|247-MS-EI-DB-SAR-REC-NON-RNI-CTRFD-SAR-MD-TR-1-ONTIME-Makerepayment1.xlsx|Repayment Schedule|
       			
@scenario24-Loan-248-MS-EI-DB-SAR-REC-NON-RNI-CTRFD-DL-MD-TR-1-ONTIME		   
	  Scenario: Loan-248-MS-EI-DB-SAR-REC-NON-RNI-CTRFD-DL-MD-TR-1-ONTIME
	  Given I setup the clients 
	  			| Clientnavigation.xlsx |
	  When I entered the values into client form using
	  			|Createclient.xlsx|
	  Then I should see client created successfully
	  			|Createclient.xlsx|   
	  When I set up the new create loan
	  			| 248-MS-EI-DB-SAR-REC-NON-RNI-CTRFD-DL-MD-TR-1-ONTIME-Newcreateloan.xlsx|
	  Then I verified the "Summary" details successfully 
	  			| 248-MS-EI-DB-SAR-REC-NON-RNI-CTRFD-DL-MD-TR-1-ONTIME-Newcreateloan.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
	  			| 248-MS-EI-DB-SAR-REC-NON-RNI-CTRFD-DL-MD-TR-1-ONTIME-Newcreateloan.xlsx|
	  When I make repayment and verified the following tabs
       			|248-MS-EI-DB-SAR-REC-NON-RNI-CTRFD-DL-MD-TR-1-ONTIME-Makerepayment1.xlsx|Repayment Schedule|
       			
@scenario25-Loan-293-MS-EPP-DB-DL-REC-NON-RNI-CTPD-SAR-MD-TR-1-ONTIME		   
	  Scenario: Loan-293-MS-EPP-DB-DL-REC-NON-RNI-CTPD-SAR-MD-TR-1-ONTIME
	  Given I setup the clients 
	  			| Clientnavigation.xlsx |
	  When I entered the values into client form using
	  			|Createclient.xlsx|
	  Then I should see client created successfully
	  			|Createclient.xlsx|   
	  When I set up the new create loan
	  			| 293-MS-EPP-DB-DL-REC-NON-RNI-CTPD-SAR-MD-TR-1-ONTIME-Newcreateloan.xlsx|
	  Then I verified the "Summary" details successfully 
	  			| 293-MS-EPP-DB-DL-REC-NON-RNI-CTPD-SAR-MD-TR-1-ONTIME-Newcreateloan.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
	  			| 293-MS-EPP-DB-DL-REC-NON-RNI-CTPD-SAR-MD-TR-1-ONTIME-Newcreateloan.xlsx|
	  When I make repayment and verified the following tabs
       			|293-MS-EPP-DB-DL-REC-NON-RNI-CTPD-SAR-MD-TR-1-ONTIME-Makerepayment1.xlsx|Repayment Schedule|
       			
@scenario26-Loan-294-MS-EPP-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME		   
	  Scenario: Loan-294-MS-EPP-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME
	  Given I setup the clients 
	  			| Clientnavigation.xlsx |
	  When I entered the values into client form using
	  			|Createclient.xlsx|
	  Then I should see client created successfully
	  			|Createclient.xlsx|   
	  When I set up the new create loan
	  			| 294-MS-EPP-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-Newcreateloan.xlsx|
	  Then I verified the "Summary" details successfully 
	  			| 294-MS-EPP-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-Newcreateloan.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
	  			| 294-MS-EPP-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-Newcreateloan.xlsx|
	  When I make repayment and verified the following tabs
       			|294-MS-EPP-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-Makerepayment1.xlsx|Repayment Schedule|
       			
@scenario27-Loan-295-MS-EPP-DB-DL-REC-NON-RNI-CTRFD-SAR-MD-TR-1-ONTIME		   
	  Scenario: Loan-295-MS-EPP-DB-DL-REC-NON-RNI-CTRFD-SAR-MD-TR-1-ONTIME
	  Given I setup the clients 
	  			| Clientnavigation.xlsx |
	  When I entered the values into client form using
	  			|Createclient.xlsx|
	  Then I should see client created successfully
	  			|Createclient.xlsx|   
	  When I set up the new create loan
	  			| 295-MS-EPP-DB-DL-REC-NON-RNI-CTRFD-SAR-MD-TR-1-ONTIME-Newcreateloan.xlsx|
	  Then I verified the "Summary" details successfully 
	  			| 295-MS-EPP-DB-DL-REC-NON-RNI-CTRFD-SAR-MD-TR-1-ONTIME-Newcreateloan.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
	  			| 295-MS-EPP-DB-DL-REC-NON-RNI-CTRFD-SAR-MD-TR-1-ONTIME-Newcreateloan.xlsx|
	  When I make repayment and verified the following tabs
       			|295-MS-EPP-DB-DL-REC-NON-RNI-CTRFD-SAR-MD-TR-1-ONTIME-Makerepayment1.xlsx|Repayment Schedule|
       			
@scenario28-Loan-296-MS-EPP-DB-DL-REC-NON-RNI-CTRFD-DL-MD-TR-1-ONTIME		   
	  Scenario: Loan-296-MS-EPP-DB-DL-REC-NON-RNI-CTRFD-DL-MD-TR-1-ONTIME
	  Given I setup the clients 
	  			| Clientnavigation.xlsx |
	  When I entered the values into client form using
	  			|Createclient.xlsx|
	  Then I should see client created successfully
	  			|Createclient.xlsx|   
	  When I set up the new create loan
	  			| 296-MS-EPP-DB-DL-REC-NON-RNI-CTRFD-DL-MD-TR-1-ONTIME-Newcreateloan.xlsx|
	  Then I verified the "Summary" details successfully 
	  			| 296-MS-EPP-DB-DL-REC-NON-RNI-CTRFD-DL-MD-TR-1-ONTIME-Newcreateloan.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
	  			| 296-MS-EPP-DB-DL-REC-NON-RNI-CTRFD-DL-MD-TR-1-ONTIME-Newcreateloan.xlsx|
	  When I make repayment and verified the following tabs
       			|296-MS-EPP-DB-DL-REC-NON-RNI-CTRFD-DL-MD-TR-1-ONTIME-Makerepayment1.xlsx|Repayment Schedule|
       			
@scenario29-Loan-341-MS-EPP-DB-SAR-REC-NON-RNI-CTPD-SAR-MD-TR-1-ONTIME		   
	  Scenario: Loan-341-MS-EPP-DB-SAR-REC-NON-RNI-CTPD-SAR-MD-TR-1-ONTIME
	  Given I setup the clients 
	  			| Clientnavigation.xlsx |
	  When I entered the values into client form using
	  			|Createclient.xlsx|
	  Then I should see client created successfully
	  			|Createclient.xlsx|   
	  When I set up the new create loan
	  			| 341-MS-EPP-DB-SAR-REC-NON-RNI-CTPD-SAR-MD-TR-1-ONTIME-Newcreateloan.xlsx|
	  Then I verified the "Summary" details successfully 
	  			| 341-MS-EPP-DB-SAR-REC-NON-RNI-CTPD-SAR-MD-TR-1-ONTIME-Newcreateloan.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
	  			| 341-MS-EPP-DB-SAR-REC-NON-RNI-CTPD-SAR-MD-TR-1-ONTIME-Newcreateloan.xlsx|
	  When I make repayment and verified the following tabs
       			|341-MS-EPP-DB-SAR-REC-NON-RNI-CTPD-SAR-MD-TR-1-ONTIME-Makerepayment1.xlsx|Repayment Schedule|
       			
@scenario30-Loan-342-MS-EPP-DB-SAR-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME		   
	  Scenario: Loan-342-MS-EPP-DB-SAR-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME
	  Given I setup the clients 
	  			| Clientnavigation.xlsx |
	  When I entered the values into client form using
	  			|Createclient.xlsx|
	  Then I should see client created successfully
	  			|Createclient.xlsx|   
	  When I set up the new create loan
	  			| 342-MS-EPP-DB-SAR-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-Newcreateloan.xlsx|
	  Then I verified the "Summary" details successfully 
	  			| 342-MS-EPP-DB-SAR-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-Newcreateloan.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
	  			| 342-MS-EPP-DB-SAR-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-Newcreateloan.xlsx|
	  When I make repayment and verified the following tabs
       			|342-MS-EPP-DB-SAR-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-Makerepayment1.xlsx|Repayment Schedule|
       			
@scenario31-Loan-343-MS-EPP-DB-SAR-REC-NON-RNI-CTRFD-SAR-MD-TR-1-ONTIME		   
	  Scenario: Loan-343-MS-EPP-DB-SAR-REC-NON-RNI-CTRFD-SAR-MD-TR-1-ONTIME
	  Given I setup the clients 
	  			| Clientnavigation.xlsx |
	  When I entered the values into client form using
	  			|Createclient.xlsx|
	  Then I should see client created successfully
	  			|Createclient.xlsx|   
	  When I set up the new create loan
	  			| 343-MS-EPP-DB-SAR-REC-NON-RNI-CTRFD-SAR-MD-TR-1-ONTIME-Newcreateloan.xlsx|
	  Then I verified the "Summary" details successfully 
	  			| 343-MS-EPP-DB-SAR-REC-NON-RNI-CTRFD-SAR-MD-TR-1-ONTIME-Newcreateloan.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
	  			| 343-MS-EPP-DB-SAR-REC-NON-RNI-CTRFD-SAR-MD-TR-1-ONTIME-Newcreateloan.xlsx|
	  When I make repayment and verified the following tabs
       			|343-MS-EPP-DB-SAR-REC-NON-RNI-CTRFD-SAR-MD-TR-1-ONTIME-Makerepayment1.xlsx|Repayment Schedule|
       			
@scenario32-Loan-344-MS-EPP-DB-SAR-REC-NON-RNI-CTRFD-DL-MD-TR-1-ONTIME		   
	  Scenario: Loan-344-MS-EPP-DB-SAR-REC-NON-RNI-CTRFD-DL-MD-TR-1-ONTIME
	  Given I setup the clients 
	  			| Clientnavigation.xlsx |
	  When I entered the values into client form using
	  			|Createclient.xlsx|
	  Then I should see client created successfully
	  			|Createclient.xlsx|   
	  When I set up the new create loan
	  			| 344-MS-EPP-DB-SAR-REC-NON-RNI-CTRFD-DL-MD-TR-1-ONTIME-Newcreateloan.xlsx|
	  Then I verified the "Summary" details successfully 
	  			| 344-MS-EPP-DB-SAR-REC-NON-RNI-CTRFD-DL-MD-TR-1-ONTIME-Newcreateloan.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
	  			| 344-MS-EPP-DB-SAR-REC-NON-RNI-CTRFD-DL-MD-TR-1-ONTIME-Newcreateloan.xlsx|
	  When I make repayment and verified the following tabs
       			|344-MS-EPP-DB-SAR-REC-NON-RNI-CTRFD-DL-MD-TR-1-ONTIME-Makerepayment1.xlsx|Repayment Schedule|
       			
@scenario33-Loan-965-MS-EI-DB-DL-REC-NON-RNI-CTPD-SAR-MD-TR-1-LateRepayment		   
	  Scenario: Loan-965-MS-EI-DB-DL-REC-NON-RNI-CTPD-SAR-MD-TR-1-LateRepayment
	  Given I setup the clients 
	  			| Clientnavigation.xlsx |
	  When I entered the values into client form using
	  			|Createclient.xlsx|
	  Then I should see client created successfully
	  			|Createclient.xlsx|   
	  When I set up the new create loan
	  			| 965-MS-EI-DB-DL-REC-NON-RNI-CTPD-SAR-MD-TR-1-LateRepayment-Newcreateloan.xlsx|
	  Then I verified the "Summary" details successfully 
	  			| 965-MS-EI-DB-DL-REC-NON-RNI-CTPD-SAR-MD-TR-1-LateRepayment-Newcreateloan.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
	  			| 965-MS-EI-DB-DL-REC-NON-RNI-CTPD-SAR-MD-TR-1-LateRepayment-Newcreateloan.xlsx|
	  When I make repayment and verified the following tabs
       			|965-MS-EI-DB-DL-REC-NON-RNI-CTPD-SAR-MD-TR-1-LateRepayment-Makerepayment1.xlsx|Repayment Schedule|
       			
@scenario34-Loan-|966-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-LateRepayment		   
	  Scenario: Loan-|966-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-LateRepayment
	  Given I setup the clients 
	  			| Clientnavigation.xlsx |
	  When I entered the values into client form using
	  			|Createclient.xlsx|
	  Then I should see client created successfully
	  			|Createclient.xlsx|   
	  When I set up the new create loan
	  			| |966-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-LateRepayment-Newcreateloan.xlsx|
	  Then I verified the "Summary" details successfully 
	  			| |966-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-LateRepayment-Newcreateloan.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
	  			| |966-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-LateRepayment-Newcreateloan.xlsx|
	  When I make repayment and verified the following tabs
       			||966-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-LateRepayment-Makerepayment1.xlsx|Repayment Schedule|
       			
@scenario35-Loan-967-MS-EI-DB-DL-REC-NON-RNI-CTRFD-SAR-MD-TR-1-LateRepayment		   
	  Scenario: Loan-967-MS-EI-DB-DL-REC-NON-RNI-CTRFD-SAR-MD-TR-1-LateRepayment
	  Given I setup the clients 
	  			| Clientnavigation.xlsx |
	  When I entered the values into client form using
	  			|Createclient.xlsx|
	  Then I should see client created successfully
	  			|Createclient.xlsx|   
	  When I set up the new create loan
	  			| 967-MS-EI-DB-DL-REC-NON-RNI-CTRFD-SAR-MD-TR-1-LateRepayment-Newcreateloan.xlsx|
	  Then I verified the "Summary" details successfully 
	  			| 967-MS-EI-DB-DL-REC-NON-RNI-CTRFD-SAR-MD-TR-1-LateRepayment-Newcreateloan.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
	  			| 967-MS-EI-DB-DL-REC-NON-RNI-CTRFD-SAR-MD-TR-1-LateRepayment-Newcreateloan.xlsx|
	  When I make repayment and verified the following tabs
       			|967-MS-EI-DB-DL-REC-NON-RNI-CTRFD-SAR-MD-TR-1-LateRepayment-Makerepayment1.xlsx|Repayment Schedule|
       			
@scenario36-Loan-968-MS-EI-DB-DL-REC-NON-RNI-CTRFD-DL-MD-TR-1-LateRepayment		   
	  Scenario: Loan-968-MS-EI-DB-DL-REC-NON-RNI-CTRFD-DL-MD-TR-1-LateRepayment
	  Given I setup the clients 
	  			| Clientnavigation.xlsx |
	  When I entered the values into client form using
	  			|Createclient.xlsx|
	  Then I should see client created successfully
	  			|Createclient.xlsx|   
	  When I set up the new create loan
	  			| 968-MS-EI-DB-DL-REC-NON-RNI-CTRFD-DL-MD-TR-1-LateRepayment-Newcreateloan.xlsx|
	  Then I verified the "Summary" details successfully 
	  			| 968-MS-EI-DB-DL-REC-NON-RNI-CTRFD-DL-MD-TR-1-LateRepayment-Newcreateloan.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
	  			| 968-MS-EI-DB-DL-REC-NON-RNI-CTRFD-DL-MD-TR-1-LateRepayment-Newcreateloan.xlsx|
	  When I make repayment and verified the following tabs
       			|968-MS-EI-DB-DL-REC-NON-RNI-CTRFD-DL-MD-TR-1-LateRepayment-Makerepayment1.xlsx|Repayment Schedule|
       			
@scenario37-Loan-1013-MS-EI-DB-SAR-REC-NON-RNI-CTPD-SAR-MD-TR-1-LateRepayment		   
	  Scenario: Loan-1013-MS-EI-DB-SAR-REC-NON-RNI-CTPD-SAR-MD-TR-1-LateRepayment
	  Given I setup the clients 
	  			| Clientnavigation.xlsx |
	  When I entered the values into client form using
	  			|Createclient.xlsx|
	  Then I should see client created successfully
	  			|Createclient.xlsx|   
	  When I set up the new create loan
	  			| 1013-MS-EI-DB-SAR-REC-NON-RNI-CTPD-SAR-MD-TR-1-LateRepayment-Newcreateloan.xlsx|
	  Then I verified the "Summary" details successfully 
	  			| 1013-MS-EI-DB-SAR-REC-NON-RNI-CTPD-SAR-MD-TR-1-LateRepayment-Newcreateloan.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
	  			| 1013-MS-EI-DB-SAR-REC-NON-RNI-CTPD-SAR-MD-TR-1-LateRepayment-Newcreateloan.xlsx|
	  When I make repayment and verified the following tabs
       			|1013-MS-EI-DB-SAR-REC-NON-RNI-CTPD-SAR-MD-TR-1-LateRepayment-Makerepayment1.xlsx|Repayment Schedule|
       			
@scenario38-Loan-1014-MS-EI-DB-SAR-REC-NON-RNI-CTPD-DL-MD-TR-1-LateRepayment		   
	  Scenario: Loan-1014-MS-EI-DB-SAR-REC-NON-RNI-CTPD-DL-MD-TR-1-LateRepayment
	  Given I setup the clients 
	  			| Clientnavigation.xlsx |
	  When I entered the values into client form using
	  			|Createclient.xlsx|
	  Then I should see client created successfully
	  			|Createclient.xlsx|   
	  When I set up the new create loan
	  			| 1014-MS-EI-DB-SAR-REC-NON-RNI-CTPD-DL-MD-TR-1-LateRepayment-Newcreateloan.xlsx|
	  Then I verified the "Summary" details successfully 
	  			| 1014-MS-EI-DB-SAR-REC-NON-RNI-CTPD-DL-MD-TR-1-LateRepayment-Newcreateloan.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
	  			| 1014-MS-EI-DB-SAR-REC-NON-RNI-CTPD-DL-MD-TR-1-LateRepayment-Newcreateloan.xlsx|
	  When I make repayment and verified the following tabs
       			|1014-MS-EI-DB-SAR-REC-NON-RNI-CTPD-DL-MD-TR-1-LateRepayment-Makerepayment1.xlsx|Repayment Schedule|
       			
@scenario39-Loan-1015-MS-EI-DB-SAR-REC-NON-RNI-CTRFD-SAR-MD-TR-1-LateRepayment		   
	  Scenario: Loan-1015-MS-EI-DB-SAR-REC-NON-RNI-CTRFD-SAR-MD-TR-1-LateRepayment
	  Given I setup the clients 
	  			| Clientnavigation.xlsx |
	  When I entered the values into client form using
	  			|Createclient.xlsx|
	  Then I should see client created successfully
	  			|Createclient.xlsx|   
	  When I set up the new create loan
	  			| 1015-MS-EI-DB-SAR-REC-NON-RNI-CTRFD-SAR-MD-TR-1-LateRepayment-Newcreateloan.xlsx|
	  Then I verified the "Summary" details successfully 
	  			| 1015-MS-EI-DB-SAR-REC-NON-RNI-CTRFD-SAR-MD-TR-1-LateRepayment-Newcreateloan.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
	  			| 1015-MS-EI-DB-SAR-REC-NON-RNI-CTRFD-SAR-MD-TR-1-LateRepayment-Newcreateloan.xlsx|
	  When I make repayment and verified the following tabs
       			|1015-MS-EI-DB-SAR-REC-NON-RNI-CTRFD-SAR-MD-TR-1-LateRepayment-Makerepayment1.xlsx|Repayment Schedule|
       			
@scenario40-Loan-1016-MS-EI-DB-SAR-REC-NON-RNI-CTRFD-DL-MD-TR-1-LateRepayment		   
	  Scenario: Loan-1016-MS-EI-DB-SAR-REC-NON-RNI-CTRFD-DL-MD-TR-1-LateRepayment
	  Given I setup the clients 
	  			| Clientnavigation.xlsx |
	  When I entered the values into client form using
	  			|Createclient.xlsx|
	  Then I should see client created successfully
	  			|Createclient.xlsx|   
	  When I set up the new create loan
	  			| 1016-MS-EI-DB-SAR-REC-NON-RNI-CTRFD-DL-MD-TR-1-LateRepayment-Newcreateloan.xlsx|
	  Then I verified the "Summary" details successfully 
	  			| 1016-MS-EI-DB-SAR-REC-NON-RNI-CTRFD-DL-MD-TR-1-LateRepayment-Newcreateloan.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
	  			| 1016-MS-EI-DB-SAR-REC-NON-RNI-CTRFD-DL-MD-TR-1-LateRepayment-Newcreateloan.xlsx|
	  When I make repayment and verified the following tabs
       			|1016-MS-EI-DB-SAR-REC-NON-RNI-CTRFD-DL-MD-TR-1-LateRepayment-Makerepayment1.xlsx|Repayment Schedule|
       			
@scenario41-Loan-1061-MS-EPP-DB-DL-REC-NON-RNI-CTPD-SAR-MD-TR-1-LateRepayment		   
	  Scenario: Loan-1061-MS-EPP-DB-DL-REC-NON-RNI-CTPD-SAR-MD-TR-1-LateRepayment
	  Given I setup the clients 
	  			| Clientnavigation.xlsx |
	  When I entered the values into client form using
	  			|Createclient.xlsx|
	  Then I should see client created successfully
	  			|Createclient.xlsx|   
	  When I set up the new create loan
	  			| 1061-MS-EPP-DB-DL-REC-NON-RNI-CTPD-SAR-MD-TR-1-LateRepayment-Newcreateloan.xlsx|
	  Then I verified the "Summary" details successfully 
	  			| 1061-MS-EPP-DB-DL-REC-NON-RNI-CTPD-SAR-MD-TR-1-LateRepayment-Newcreateloan.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
	  			| 1061-MS-EPP-DB-DL-REC-NON-RNI-CTPD-SAR-MD-TR-1-LateRepayment-Newcreateloan.xlsx|
	  When I make repayment and verified the following tabs
       			|1061-MS-EPP-DB-DL-REC-NON-RNI-CTPD-SAR-MD-TR-1-LateRepayment-Makerepayment1.xlsx|Repayment Schedule|
       			
@scenario42-Loan-1062-MS-EPP-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-LateRepayment		   
	  Scenario: Loan-1062-MS-EPP-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-LateRepayment
	  Given I setup the clients 
	  			| Clientnavigation.xlsx |
	  When I entered the values into client form using
	  			|Createclient.xlsx|
	  Then I should see client created successfully
	  			|Createclient.xlsx|   
	  When I set up the new create loan
	  			| 1062-MS-EPP-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-LateRepayment-Newcreateloan.xlsx|
	  Then I verified the "Summary" details successfully 
	  			| 1062-MS-EPP-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-LateRepayment-Newcreateloan.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
	  			| 1062-MS-EPP-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-LateRepayment-Newcreateloan.xlsx|
	  When I make repayment and verified the following tabs
       			|1062-MS-EPP-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-LateRepayment-Makerepayment1.xlsx|Repayment Schedule|
       			
@scenario43-Loan-1063-MS-EPP-DB-DL-REC-NON-RNI-CTRFD-SAR-MD-TR-1-LateRepayment		   
	  Scenario: Loan-1063-MS-EPP-DB-DL-REC-NON-RNI-CTRFD-SAR-MD-TR-1-LateRepayment
	  Given I setup the clients 
	  			| Clientnavigation.xlsx |
	  When I entered the values into client form using
	  			|Createclient.xlsx|
	  Then I should see client created successfully
	  			|Createclient.xlsx|   
	  When I set up the new create loan
	  			| 1063-MS-EPP-DB-DL-REC-NON-RNI-CTRFD-SAR-MD-TR-1-LateRepayment-Newcreateloan.xlsx|
	  Then I verified the "Summary" details successfully 
	  			| 1063-MS-EPP-DB-DL-REC-NON-RNI-CTRFD-SAR-MD-TR-1-LateRepayment-Newcreateloan.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
	  			| 1063-MS-EPP-DB-DL-REC-NON-RNI-CTRFD-SAR-MD-TR-1-LateRepayment-Newcreateloan.xlsx|
	  When I make repayment and verified the following tabs
       			|1063-MS-EPP-DB-DL-REC-NON-RNI-CTRFD-SAR-MD-TR-1-LateRepayment-Makerepayment1.xlsx|Repayment Schedule|
       			
@scenario44-Loan-1064-MS-EPP-DB-DL-REC-NON-RNI-CTRFD-DL-MD-TR-1-LateRepayment		   
	  Scenario: Loan-1064-MS-EPP-DB-DL-REC-NON-RNI-CTRFD-DL-MD-TR-1-LateRepayment
	  Given I setup the clients 
	  			| Clientnavigation.xlsx |
	  When I entered the values into client form using
	  			|Createclient.xlsx|
	  Then I should see client created successfully
	  			|Createclient.xlsx|   
	  When I set up the new create loan
	  			| 1064-MS-EPP-DB-DL-REC-NON-RNI-CTRFD-DL-MD-TR-1-LateRepayment-Newcreateloan.xlsx|
	  Then I verified the "Summary" details successfully 
	  			| 1064-MS-EPP-DB-DL-REC-NON-RNI-CTRFD-DL-MD-TR-1-LateRepayment-Newcreateloan.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
	  			| 1064-MS-EPP-DB-DL-REC-NON-RNI-CTRFD-DL-MD-TR-1-LateRepayment-Newcreateloan.xlsx|
	  When I make repayment and verified the following tabs
       			|1064-MS-EPP-DB-DL-REC-NON-RNI-CTRFD-DL-MD-TR-1-LateRepayment-Makerepayment1.xlsx|Repayment Schedule|
       			
@scenario45-Loan-1109-MS-EPP-DB-SAR-REC-NON-RNI-CTPD-SAR-MD-TR-1-LateRepayment		   
	  Scenario: Loan-1109-MS-EPP-DB-SAR-REC-NON-RNI-CTPD-SAR-MD-TR-1-LateRepayment
	  Given I setup the clients 
	  			| Clientnavigation.xlsx |
	  When I entered the values into client form using
	  			|Createclient.xlsx|
	  Then I should see client created successfully
	  			|Createclient.xlsx|   
	  When I set up the new create loan
	  			| 1109-MS-EPP-DB-SAR-REC-NON-RNI-CTPD-SAR-MD-TR-1-LateRepayment-Newcreateloan.xlsx|
	  Then I verified the "Summary" details successfully 
	  			| 1109-MS-EPP-DB-SAR-REC-NON-RNI-CTPD-SAR-MD-TR-1-LateRepayment-Newcreateloan.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
	  			| 1109-MS-EPP-DB-SAR-REC-NON-RNI-CTPD-SAR-MD-TR-1-LateRepayment-Newcreateloan.xlsx|
	  When I make repayment and verified the following tabs
       			|1109-MS-EPP-DB-SAR-REC-NON-RNI-CTPD-SAR-MD-TR-1-LateRepayment-Makerepayment1.xlsx|Repayment Schedule|
       			
@scenario46-Loan-1110-MS-EPP-DB-SAR-REC-NON-RNI-CTPD-DL-MD-TR-1-LateRepayment		   
	  Scenario: Loan-1110-MS-EPP-DB-SAR-REC-NON-RNI-CTPD-DL-MD-TR-1-LateRepayment
	  Given I setup the clients 
	  			| Clientnavigation.xlsx |
	  When I entered the values into client form using
	  			|Createclient.xlsx|
	  Then I should see client created successfully
	  			|Createclient.xlsx|   
	  When I set up the new create loan
	  			| 1110-MS-EPP-DB-SAR-REC-NON-RNI-CTPD-DL-MD-TR-1-LateRepayment-Newcreateloan.xlsx|
	  Then I verified the "Summary" details successfully 
	  			| 1110-MS-EPP-DB-SAR-REC-NON-RNI-CTPD-DL-MD-TR-1-LateRepayment-Newcreateloan.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
	  			| 1110-MS-EPP-DB-SAR-REC-NON-RNI-CTPD-DL-MD-TR-1-LateRepayment-Newcreateloan.xlsx|
	  When I make repayment and verified the following tabs
       			|1110-MS-EPP-DB-SAR-REC-NON-RNI-CTPD-DL-MD-TR-1-LateRepayment-Makerepayment1.xlsx|Repayment Schedule|
       			
@scenario47-Loan-|1111-MS-EPP-DB-SAR-REC-NON-RNI-CTRFD-SAR-MD-TR-1-LateRepayment		   
	  Scenario: Loan-|1111-MS-EPP-DB-SAR-REC-NON-RNI-CTRFD-SAR-MD-TR-1-LateRepayment
	  Given I setup the clients 
	  			| Clientnavigation.xlsx |
	  When I entered the values into client form using
	  			|Createclient.xlsx|
	  Then I should see client created successfully
	  			|Createclient.xlsx|   
	  When I set up the new create loan
	  			| |1111-MS-EPP-DB-SAR-REC-NON-RNI-CTRFD-SAR-MD-TR-1-LateRepayment-Newcreateloan.xlsx|
	  Then I verified the "Summary" details successfully 
	  			| |1111-MS-EPP-DB-SAR-REC-NON-RNI-CTRFD-SAR-MD-TR-1-LateRepayment-Newcreateloan.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
	  			| |1111-MS-EPP-DB-SAR-REC-NON-RNI-CTRFD-SAR-MD-TR-1-LateRepayment-Newcreateloan.xlsx|
	  When I make repayment and verified the following tabs
       			||1111-MS-EPP-DB-SAR-REC-NON-RNI-CTRFD-SAR-MD-TR-1-LateRepayment-Makerepayment1.xlsx|Repayment Schedule|
       			
@scenario48-Loan-1112-MS-EPP-DB-SAR-REC-NON-RNI-CTRFD-DL-MD-TR-1-LateRepayment		   
	  Scenario: Loan-1112-MS-EPP-DB-SAR-REC-NON-RNI-CTRFD-DL-MD-TR-1-LateRepayment
	  Given I setup the clients 
	  			| Clientnavigation.xlsx |
	  When I entered the values into client form using
	  			|Createclient.xlsx|
	  Then I should see client created successfully
	  			|Createclient.xlsx|   
	  When I set up the new create loan
	  			| 1112-MS-EPP-DB-SAR-REC-NON-RNI-CTRFD-DL-MD-TR-1-LateRepayment-Newcreateloan.xlsx|
	  Then I verified the "Summary" details successfully 
	  			| 1112-MS-EPP-DB-SAR-REC-NON-RNI-CTRFD-DL-MD-TR-1-LateRepayment-Newcreateloan.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
	  			| 1112-MS-EPP-DB-SAR-REC-NON-RNI-CTRFD-DL-MD-TR-1-LateRepayment-Newcreateloan.xlsx|
	  When I make repayment and verified the following tabs
       			|1112-MS-EPP-DB-SAR-REC-NON-RNI-CTRFD-DL-MD-TR-1-LateRepayment-Makerepayment1.xlsx|Repayment Schedule|
       		
       		
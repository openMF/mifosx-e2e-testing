Feature:RBI

Background:
	Given I navigate to mifos
	And I login into mifos site using "Login" excel sheet
		|Login.xlsx|
	Then I should see logged in successfully  

@scenario16-3515-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-PERIODIC-OVERDUE-FEE-FLAT-PENALTY-FRE-1
	  Scenario: 3515-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-PERIODIC-OVERDUE-FEE-FLAT-PENALTY-FRE-1
 Given I setup the clients 
 Then I entered the values into client from "Input" sheet
    |Createclient.xlsx|
 Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|	
 When I set up the new create loan from "NewLoanInput" sheet
	|3515-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-PERIODIC-OVERDUE-FEE-FLAT-PENALTY-FRE-1-Newcreateloan.xlsx|
 Then I navigate to scheduler job & execute "Periodic & penalty to overdue loans"
 When I make repayment and verified the following tabs
    |3515-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-PERIODIC-OVERDUE-FEE-FLAT-PENALTY-FRE-1-Makerepayment1.xlsx|Input|Transactions|
 And I Navigate to Accounting web page
 And I search with transaction id & verified the accounting entries
    |3515-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-PERIODIC-OVERDUE-FEE-FLAT-PENALTY-FRE-1-Makerepayment1.xlsx|Acc_Disbursement|Acc_Repayment|Acc_Periodic|	  			    			


@scenario1-Loan-389-RBI-EI-DB-DL-REC-NON-RNI-CTPD-SAR-MD-TR-1-EarlyRePayment
	  Scenario: Loan-389-RBI-EI-DB-DL-REC-NON-RNI-CTPD-SAR-MD-TR-1-EarlyRePayment
	  
	  Given I setup the product loan "Setup"
				| Productloannavigation.xlsx |
	  Then I entered the values into product loan from "ProductLoanInput" Sheet
				|389-RBI-EI-DB-DL-REC-NON-RNI-CTPD-SAR-MD-TR-1-EarlyRePayment-Loanproduct.xlsx|
	  Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			| 389-RBI-EI-DB-DL-REC-NON-RNI-CTPD-SAR-MD-TR-1-EarlyRePayment-Newcreateloan.xlsx|
	  Then I verified the "Summary" details successfully 
	  			| 389-RBI-EI-DB-DL-REC-NON-RNI-CTPD-SAR-MD-TR-1-EarlyRePayment-Newcreateloan.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
	  			| 389-RBI-EI-DB-DL-REC-NON-RNI-CTPD-SAR-MD-TR-1-EarlyRePayment-Newcreateloan.xlsx|
	  Then I make repayment and verified the following tabs
       			|389-RBI-EI-DB-DL-REC-NON-RNI-CTPD-SAR-MD-TR-1-EarlyRePayment-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|

@scenario68-2697-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-REPAY-AccCL1stFEB-DISTR2on1stFEB
	  Scenario: 2697-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-REPAY-AccCL1stFEB-DISTR2on1stFEB  
 And I Navigate to Accounting web page
 And I search with transaction id & verified the accounting entries
    |3515-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-PERIODIC-OVERDUE-FEE-FLAT-PENALTY-FRE-1-Makerepayment1.xlsx|Acc_Disbursement|Acc_RepaymentDisbursement|Acc_Repayment|Acc_Periodic|	  			    			
	
@scenario68-2697-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-REPAY-AccCL1stFEB-DISTR2on1stFEB
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

@scenario68-2698-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-EARLY-REPAY-AccCL1stFEB-DISTR2on2ndFEB
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

@scenario68-2699-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-LATE-REPAY-AccCL1stFEB-DISTR2on31JAN
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
  
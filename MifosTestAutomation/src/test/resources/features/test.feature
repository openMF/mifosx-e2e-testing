Feature:RBI

Background:
	Given I navigate to mifos
	And I login into mifos site using "Login" excel sheet
		|Login.xlsx|
	Then I should see logged in successfully  

@scenario85-2697-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-REPAY-AccCL1stFEB-DISTR2on1stFEB
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

@scenario86-2698-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-EARLY-REPAY-AccCL1stFEB-DISTR2on2ndFEB
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
 
@scenario87-2699-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-LATE-REPAY-AccCL1stFEB-DISTR2on31JAN
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
     
@scenario88-2700-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-DIS-AccCL1stFEB-DISTR2on1stFEB
	  Scenario: 2700-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-DIS-AccCL1stFEB-DISTR2on1stFEB  
 Given I Delete Account Closures Entry from "DeleteAccountClosures" sheet
 	 |2700-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-DIS-AccCL1stFEB-DISTR2on1stFEB-Newcreateloan1.xlsx|
 Given I setup the clients 
 Then I entered the values into client from "Input" sheet
	 |Createclient.xlsx|
 Then I should see client created successfully from "Output" sheet
	 |Createclient.xlsx|
 When I set up the new create loan from "NewLoanInput" sheet
	 |2700-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-DIS-AccCL1stFEB-DISTR2on1stFEB-Newcreateloan1.xlsx|
 And I create Account Closures Entry from "CreateAccountClosures" sheet
 	 |2700-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-DIS-AccCL1stFEB-DISTR2on1stFEB-Newcreateloan1.xlsx|
 Then I disburse loan from "Second Tranch" sheet
     |2700-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-DIS-AccCL1stFEB-DISTR2on1stFEB-Newcreateloan1.xlsx|

@scenario89-2701-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-DIS-AccCL1stFEB-DISTR2on2ndFEB-RunPERon1stFEB
	  Scenario: 2701-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-DIS-AccCL1stFEB-DISTR2on2ndFEB-RunPERon1stFEB  
 Given I Delete Account Closures Entry from "DeleteAccountClosures" sheet
 	 |2701-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-DIS-AccCL1stFEB-DISTR2on2ndFEB-RunPERon1stFEB-Newcreateloan1.xlsx|
 Given I setup the clients 
 Then I entered the values into client from "Input" sheet
	 |Createclient.xlsx|
 Then I should see client created successfully from "Output" sheet
	 |Createclient.xlsx|
 When I set up the new create loan from "NewLoanInput" sheet
	 |2701-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-DIS-AccCL1stFEB-DISTR2on2ndFEB-RunPERon1stFEB-Newcreateloan1.xlsx|
 And I create Account Closures Entry from "CreateAccountClosures" sheet
 	 |2701-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-DIS-AccCL1stFEB-DISTR2on2ndFEB-RunPERon1stFEB-Newcreateloan1.xlsx|
 Then I disburse loan from "Second Tranch" sheet
     |2701-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-DIS-AccCL1stFEB-DISTR2on2ndFEB-RunPERon1stFEB-Newcreateloan1.xlsx|
 Then I Execute Periodic Accrual Accounting
     |2701-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-DIS-AccCL1stFEB-DISTR2on2ndFEB-RunPERon1stFEB-Newcreateloan1.xlsx|RunPeriodicAccrual|

@scenario90-2702-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-DIS-AccCL1stFEB-DISTR2on2ndFEB-RunPERon2ndFEB
	  Scenario: 2702-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-DIS-AccCL1stFEB-DISTR2on2ndFEB-RunPERon2ndFEB  
 Given I Delete Account Closures Entry from "DeleteAccountClosures" sheet
 	 |2702-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-DIS-AccCL1stFEB-DISTR2on2ndFEB-RunPERon2ndFEB-Newcreateloan1.xlsx|
 Given I setup the clients 
 Then I entered the values into client from "Input" sheet
	 |Createclient.xlsx|
 Then I should see client created successfully from "Output" sheet
	 |Createclient.xlsx|
 When I set up the new create loan from "NewLoanInput" sheet
	 |2702-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-DIS-AccCL1stFEB-DISTR2on2ndFEB-RunPERon2ndFEB-Newcreateloan1.xlsx|
 And I create Account Closures Entry from "CreateAccountClosures" sheet
 	 |2702-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-DIS-AccCL1stFEB-DISTR2on2ndFEB-RunPERon2ndFEB-Newcreateloan1.xlsx|
 Then I disburse loan from "Second Tranch" sheet
     |2702-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-DIS-AccCL1stFEB-DISTR2on2ndFEB-RunPERon2ndFEB-Newcreateloan1.xlsx|
 Then I Execute Periodic Accrual Accounting
     |2702-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-DIS-AccCL1stFEB-DISTR2on2ndFEB-RunPERon2ndFEB-Newcreateloan1.xlsx|RunPeriodicAccrual|

@scenario91-2703-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-EARLYREPAY-RunPERon31JAN-AccCL31JAN-DISTR2on31JAN
	  Scenario: 2703-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-EARLYREPAY-RunPERon31JAN-AccCL31JAN-DISTR2on31JAN  
 Given I Delete Account Closures Entry from "DeleteAccountClosures" sheet
 	 |2703-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-EARLYREPAY-RunPERon31JAN-AccCL31JAN-DISTR2on31JAN-Newcreateloan1.xlsx|
 Given I setup the clients 
 Then I entered the values into client from "Input" sheet
	 |Createclient.xlsx|
 Then I should see client created successfully from "Output" sheet
	 |Createclient.xlsx|
 When I set up the new create loan from "NewLoanInput" sheet
	 |2703-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-EARLYREPAY-RunPERon31JAN-AccCL31JAN-DISTR2on31JAN-Newcreateloan1.xlsx|
 Then I make repayment and verified the following tabs
    |2703-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-EARLYREPAY-RunPERon31JAN-AccCL31JAN-DISTR2on31JAN-Newcreateloan1.xlsx|Repay1|
 Then I Execute Periodic Accrual Accounting
     |2703-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-EARLYREPAY-RunPERon31JAN-AccCL31JAN-DISTR2on31JAN-Newcreateloan1.xlsx|RunPeriodicAccrual|
 And I create Account Closures Entry from "CreateAccountClosures" sheet
 	 |2703-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-EARLYREPAY-RunPERon31JAN-AccCL31JAN-DISTR2on31JAN-Newcreateloan1.xlsx|
 Then I disburse loan from "Second Tranch" sheet
     |2703-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-EARLYREPAY-RunPERon31JAN-AccCL31JAN-DISTR2on31JAN-Newcreateloan1.xlsx|
 
@scenario92-2704-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-EARLYREPAY-RunPERon31JAN-AccCL31JAN-DISTR2on10thFEB
	  Scenario: 2704-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-EARLYREPAY-RunPERon31JAN-AccCL31JAN-DISTR2on10thFEB  
 Given I Delete Account Closures Entry from "DeleteAccountClosures" sheet
 	 |2704-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-EARLYREPAY-RunPERon31JAN-AccCL31JAN-DISTR2on10thFEB-Newcreateloan1.xlsx|
 Given I setup the clients 
 Then I entered the values into client from "Input" sheet
	 |Createclient.xlsx|
 Then I should see client created successfully from "Output" sheet
	 |Createclient.xlsx|
 When I set up the new create loan from "NewLoanInput" sheet
	 |2704-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-EARLYREPAY-RunPERon31JAN-AccCL31JAN-DISTR2on10thFEB-Newcreateloan1.xlsx|
 Then I make repayment and verified the following tabs
    |2704-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-EARLYREPAY-RunPERon31JAN-AccCL31JAN-DISTR2on10thFEB-Newcreateloan1.xlsx|Repay1|
 Then I Execute Periodic Accrual Accounting
     |2704-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-EARLYREPAY-RunPERon31JAN-AccCL31JAN-DISTR2on10thFEB-Newcreateloan1.xlsx|RunPeriodicAccrual|
 And I create Account Closures Entry from "CreateAccountClosures" sheet
 	 |2704-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-EARLYREPAY-RunPERon31JAN-AccCL31JAN-DISTR2on10thFEB-Newcreateloan1.xlsx|
 Then I disburse loan from "Second Tranch" sheet
     |2704-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-EARLYREPAY-RunPERon31JAN-AccCL31JAN-DISTR2on10thFEB-Newcreateloan1.xlsx|
 And I verified the "Transactions" details successfully	
	 |2704-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-EARLYREPAY-RunPERon31JAN-AccCL31JAN-DISTR2on10thFEB-Newcreateloan1.xlsx|

@scenario93-2705-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-MODAPP-DISTR1-AccCL28FEB-DISTR2on10thFEB
	  Scenario: 2705-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-MODAPP-DISTR1-AccCL28FEB-DISTR2on10thFEB  
 Given I Delete Account Closures Entry from "DeleteAccountClosures" sheet
 	 |2705-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-MODAPP-DISTR1-AccCL28FEB-DISTR2on10thFEB-Newcreateloan1.xlsx|
 Given I setup the clients 
 Then I entered the values into client from "Input" sheet
	 |Createclient.xlsx|
 Then I should see client created successfully from "Output" sheet
	 |Createclient.xlsx|
 When I set up the new create loan from "NewLoanInput" sheet
	 |2705-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-MODAPP-DISTR1-AccCL28FEB-DISTR2on10thFEB-Newcreateloan1.xlsx|
 And I modify New Loan Account from "ModifyLoan" sheet
	 |2705-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-MODAPP-DISTR1-AccCL28FEB-DISTR2on10thFEB-Newcreateloan1.xlsx|
 And I create Account Closures Entry from "CreateAccountClosures" sheet
 	 |2705-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-MODAPP-DISTR1-AccCL28FEB-DISTR2on10thFEB-Newcreateloan1.xlsx|
 Then I disburse loan from "Second Tranch" sheet
     |2705-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-MODAPP-DISTR1-AccCL28FEB-DISTR2on10thFEB-Newcreateloan1.xlsx|

@scenario94-2706-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-MODAPP-AccCL10JAN-DISTR10JAN
	  Scenario: 2706-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-MODAPP-AccCL10JAN-DISTR10JAN  
 Given I Delete Account Closures Entry from "DeleteAccountClosures" sheet
 	 |2706-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-MODAPP-AccCL10JAN-DISTR10JAN-Newcreateloan1.xlsx|
 Given I setup the clients 
 Then I entered the values into client from "Input" sheet
	 |Createclient.xlsx|
 Then I should see client created successfully from "Output" sheet
	 |Createclient.xlsx|
 When I set up the new create loan from "NewLoanInput" sheet
	 |2706-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-MODAPP-AccCL10JAN-DISTR10JAN-Newcreateloan1.xlsx|
 And I modify New Loan Account from "ModifyLoan" sheet
	 |2706-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-MODAPP-AccCL10JAN-DISTR10JAN-Newcreateloan1.xlsx|
 And I create Account Closures Entry from "CreateAccountClosures" sheet
 	 |2706-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-MODAPP-AccCL10JAN-DISTR10JAN-Newcreateloan1.xlsx|
 Then I disburse loan from "Second Tranch" sheet
     |2706-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-MODAPP-AccCL10JAN-DISTR10JAN-Newcreateloan1.xlsx|
     
@scenario95-2707-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-MODAPP-DISTR20JAN-AccCL10FEB-RunPERon10thFEB
	  Scenario: 2707-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-MODAPP-DISTR20JAN-AccCL10FEB-RunPERon10thFEB  
 Given I Delete Account Closures Entry from "DeleteAccountClosures" sheet
 	 |2707-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-MODAPP-DISTR20JAN-AccCL10FEB-RunPERon10thFEB-Newcreateloan1.xlsx|
 Given I setup the clients 
 Then I entered the values into client from "Input" sheet
	 |Createclient.xlsx|
 Then I should see client created successfully from "Output" sheet
	 |Createclient.xlsx|
 When I set up the new create loan from "NewLoanInput" sheet
	 |2707-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-MODAPP-DISTR20JAN-AccCL10FEB-RunPERon10thFEB-Newcreateloan1.xlsx|
 And I modify New Loan Account from "ModifyLoan" sheet
	 |2707-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-MODAPP-DISTR20JAN-AccCL10FEB-RunPERon10thFEB-Newcreateloan1.xlsx|
 And I create Account Closures Entry from "CreateAccountClosures" sheet
 	 |2707-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-MODAPP-DISTR20JAN-AccCL10FEB-RunPERon10thFEB-Newcreateloan1.xlsx|
 Then I disburse loan from "Second Tranch" sheet
     |2707-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-MODAPP-DISTR20JAN-AccCL10FEB-RunPERon10thFEB-Newcreateloan1.xlsx|     

@scenario96-2708-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-DuringAPRAddTR2-DISTR01JAN-AccCL01FEB-RunPERon31stJAN
	  Scenario: 2708-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-DuringAPRAddTR2-DISTR01JAN-AccCL01FEB-RunPERon31stJAN  
 Given I Delete Account Closures Entry from "DeleteAccountClosures" sheet
 	 |2708-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-DuringAPRAddTR2-DISTR01JAN-AccCL01FEB-RunPERon31stJAN-Newcreateloan1.xlsx|
 Given I setup the clients 
 Then I entered the values into client from "Input" sheet
	 |Createclient.xlsx|
 Then I should see client created successfully from "Output" sheet
	 |Createclient.xlsx|
 When I set up the new create loan from "NewLoanInput" sheet
	 |2708-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-DuringAPRAddTR2-DISTR01JAN-AccCL01FEB-RunPERon31stJAN-Newcreateloan1.xlsx|
 And I create Account Closures Entry from "CreateAccountClosures" sheet
 	 |2708-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-DuringAPRAddTR2-DISTR01JAN-AccCL01FEB-RunPERon31stJAN-Newcreateloan1.xlsx|
 Then I Execute Periodic Accrual Accounting
     |2708-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-DuringAPRAddTR2-DISTR01JAN-AccCL01FEB-RunPERon31stJAN-Newcreateloan1.xlsx|RunPeriodicAccrual|

@scenario97-2709-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-DuringAPRAddTR2-DISTR2on15JAN-AccCL01FEB-RunPERon01FEB
	  Scenario: 2709-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-DuringAPRAddTR2-DISTR2on15JAN-AccCL01FEB-RunPERon01FEB  
 Given I Delete Account Closures Entry from "DeleteAccountClosures" sheet
 	 |2709-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-DuringAPRAddTR2-DISTR2on15JAN-AccCL01FEB-RunPERon01FEB-Newcreateloan1.xlsx|
 Given I setup the clients 
 Then I entered the values into client from "Input" sheet
	 |Createclient.xlsx|
 Then I should see client created successfully from "Output" sheet
	 |Createclient.xlsx|
 When I set up the new create loan from "NewLoanInput" sheet
	 |2709-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-DuringAPRAddTR2-DISTR2on15JAN-AccCL01FEB-RunPERon01FEB-Newcreateloan1.xlsx|
 Then I disburse loan from "Second Tranch" sheet
     |2709-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-DuringAPRAddTR2-DISTR2on15JAN-AccCL01FEB-RunPERon01FEB-Newcreateloan1.xlsx|     
 And I create Account Closures Entry from "CreateAccountClosures" sheet
 	 |2709-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-DuringAPRAddTR2-DISTR2on15JAN-AccCL01FEB-RunPERon01FEB-Newcreateloan1.xlsx|
 Then I Execute Periodic Accrual Accounting
     |2709-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-DuringAPRAddTR2-DISTR2on15JAN-AccCL01FEB-RunPERon01FEB-Newcreateloan1.xlsx|RunPeriodicAccrual|

@scenario98-2710-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-DuringAPRAddTR2-DISTR2on1FEB-AccCL02MAR-Repayon03MAR
	  Scenario: 2710-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-DuringAPRAddTR2-DISTR2on1FEB-AccCL02MAR-Repayon03MAR  
 Given I Delete Account Closures Entry from "DeleteAccountClosures" sheet
 	 |2710-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-DuringAPRAddTR2-DISTR2on1FEB-AccCL02MAR-Repayon03MAR-Newcreateloan1.xlsx|
 Given I setup the clients 
 Then I entered the values into client from "Input" sheet
	 |Createclient.xlsx|
 Then I should see client created successfully from "Output" sheet
	 |Createclient.xlsx|
 When I set up the new create loan from "NewLoanInput" sheet
	 |2710-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-DuringAPRAddTR2-DISTR2on1FEB-AccCL02MAR-Repayon03MAR-Newcreateloan1.xlsx|
 Then I disburse loan from "Second Tranch" sheet
     |2710-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-DuringAPRAddTR2-DISTR2on1FEB-AccCL02MAR-Repayon03MAR-Newcreateloan1.xlsx|     
 And I create Account Closures Entry from "CreateAccountClosures" sheet
 	 |2710-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-DuringAPRAddTR2-DISTR2on1FEB-AccCL02MAR-Repayon03MAR-Newcreateloan1.xlsx|
 Then I make repayment and verified the following tabs
     |2710-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-DuringAPRAddTR2-DISTR2on1FEB-AccCL02MAR-Repayon03MAR-Newcreateloan1.xlsx|Repay1|Transactions|

@scenario99-2711-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-DuringAPREDITTR2-AccCL15JAN-DISTR20JAN-RunPERON25JAN2014
	  Scenario: 2711-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-DuringAPREDITTR2-AccCL15JAN-DISTR20JAN-RunPERON25JAN2014  
 Given I Delete Account Closures Entry from "DeleteAccountClosures" sheet
 	 |2711-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-DuringAPREDITTR2-AccCL15JAN-DISTR20JAN-RunPERON25JAN2014-Newcreateloan1.xlsx|
 Given I setup the clients 
 Then I entered the values into client from "Input" sheet
	 |Createclient.xlsx|
 Then I should see client created successfully from "Output" sheet
	 |Createclient.xlsx|
 When I set up the new create loan from "NewLoanInput" sheet
	 |2711-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-DuringAPREDITTR2-AccCL15JAN-DISTR20JAN-RunPERON25JAN2014-Newcreateloan1.xlsx|
 And I create Account Closures Entry from "CreateAccountClosures" sheet
 	 |2711-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-DuringAPREDITTR2-AccCL15JAN-DISTR20JAN-RunPERON25JAN2014-Newcreateloan1.xlsx|
 Then I disburse loan from "Second Tranch" sheet
     |2711-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-DuringAPREDITTR2-AccCL15JAN-DISTR20JAN-RunPERON25JAN2014-Newcreateloan1.xlsx|     
 Then I Execute Periodic Accrual Accounting
     |2711-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-DuringAPREDITTR2-AccCL15JAN-DISTR20JAN-RunPERON25JAN2014-Newcreateloan1.xlsx|RunPeriodicAccrual|Transactions|

@scenario100-2712-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-DuringAPRADDTR2-DISTR20JAN-AccCL1FEB-RunPERON1FEB
	  Scenario: 2712-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-DuringAPRADDTR2-DISTR20JAN-AccCL1FEB-RunPERON1FEB  
 Given I Delete Account Closures Entry from "DeleteAccountClosures" sheet
 	 |2712-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-DuringAPRADDTR2-DISTR20JAN-AccCL1FEB-RunPERON1FEB-Newcreateloan1.xlsx|
 Given I setup the clients 
 Then I entered the values into client from "Input" sheet
	 |Createclient.xlsx|
 Then I should see client created successfully from "Output" sheet
	 |Createclient.xlsx|
 When I set up the new create loan from "NewLoanInput" sheet
	 |2712-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-DuringAPRADDTR2-DISTR20JAN-AccCL1FEB-RunPERON1FEB-Newcreateloan1.xlsx|
 Then I disburse loan from "Second Tranch" sheet
     |2712-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-DuringAPRADDTR2-DISTR20JAN-AccCL1FEB-RunPERON1FEB-Newcreateloan1.xlsx|     
 And I create Account Closures Entry from "CreateAccountClosures" sheet
 	 |2712-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-DuringAPRADDTR2-DISTR20JAN-AccCL1FEB-RunPERON1FEB-Newcreateloan1.xlsx|
 Then I Execute Periodic Accrual Accounting
     |2712-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-DuringAPRADDTR2-DISTR20JAN-AccCL1FEB-RunPERON1FEB-Newcreateloan1.xlsx|RunPeriodicAccrual|

@scenario101-2713-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-DISTR1-AccCL28FEB-DISTR2on10thFEB
	  Scenario: 2713-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-DISTR1-AccCL28FEB-DISTR2on10thFEB  
 Given I Delete Account Closures Entry from "DeleteAccountClosures" sheet
 	 |2713-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-DISTR1-AccCL28FEB-DISTR2on10thFEB-Newcreateloan1.xlsx|
 Given I setup the clients 
 Then I entered the values into client from "Input" sheet
	 |Createclient.xlsx|
 Then I should see client created successfully from "Output" sheet
	 |Createclient.xlsx|
 When I set up the new create loan from "NewLoanInput" sheet
	 |2713-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-DISTR1-AccCL28FEB-DISTR2on10thFEB-Newcreateloan1.xlsx|
 And I create Account Closures Entry from "CreateAccountClosures" sheet
 	 |2713-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-DISTR1-AccCL28FEB-DISTR2on10thFEB-Newcreateloan1.xlsx|
 Then I disburse loan from "Second Tranch" sheet
     |2713-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-DISTR1-AccCL28FEB-DISTR2on10thFEB-Newcreateloan1.xlsx|    
     
@scenario102-2714-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-DISTR1JAN-DISTR2on01stFEB-AccCL01MARCH-UNDODISBURSE
	  Scenario: 2714-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-DISTR1JAN-DISTR2on01stFEB-AccCL01MARCH-UNDODISBURSE  
 Given I Delete Account Closures Entry from "DeleteAccountClosures" sheet
 	 |2714-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-DISTR1JAN-DISTR2on01stFEB-AccCL01MARCH-UNDODISBURSE-Newcreateloan1.xlsx|
 Given I setup the clients 
 Then I entered the values into client from "Input" sheet
	 |Createclient.xlsx|
 Then I should see client created successfully from "Output" sheet
	 |Createclient.xlsx|
 When I set up the new create loan from "NewLoanInput" sheet
	 |2714-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-DISTR1JAN-DISTR2on01stFEB-AccCL01MARCH-UNDODISBURSE-Newcreateloan1.xlsx|
 Then I disburse loan from "Second Tranch" sheet
     |2714-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-DISTR1JAN-DISTR2on01stFEB-AccCL01MARCH-UNDODISBURSE-Newcreateloan1.xlsx|     
 And I create Account Closures Entry from "CreateAccountClosures" sheet
 	 |2714-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-DISTR1JAN-DISTR2on01stFEB-AccCL01MARCH-UNDODISBURSE-Newcreateloan1.xlsx|
 Then I "Do Undo Disbursal" and verified the following tabs
	|2714-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-DISTR1JAN-DISTR2on01stFEB-AccCL01MARCH-UNDODISBURSE-Newcreateloan1.xlsx|Undo Disbursal|

@scenario103-2715-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-DISTR1JAN-DISTR2on01stFEB-AccCL01MARCH-DELETEAccCL-UNDODISBURSE
	  Scenario: 2715-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-DISTR1JAN-DISTR2on01stFEB-AccCL01MARCH-DELETEAccCL-UNDODISBURSE  
 Given I Delete Account Closures Entry from "DeleteAccountClosures" sheet
 	 |2715-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-DISTR1JAN-DISTR2on01stFEB-AccCL01MARCH-DELETEAccCL-UNDODISBURSE-Newcreateloan1.xlsx|
 Given I setup the clients 
 Then I entered the values into client from "Input" sheet
	 |Createclient.xlsx|
 Then I should see client created successfully from "Output" sheet
	 |Createclient.xlsx|
 When I set up the new create loan from "NewLoanInput" sheet
	 |2715-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-DISTR1JAN-DISTR2on01stFEB-AccCL01MARCH-DELETEAccCL-UNDODISBURSE-Newcreateloan1.xlsx|
 Then I disburse loan from "Second Tranch" sheet
     |2715-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-DISTR1JAN-DISTR2on01stFEB-AccCL01MARCH-DELETEAccCL-UNDODISBURSE-Newcreateloan1.xlsx|     
 And I create Account Closures Entry from "CreateAccountClosures" sheet
 	 |2715-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-DISTR1JAN-DISTR2on01stFEB-AccCL01MARCH-DELETEAccCL-UNDODISBURSE-Newcreateloan1.xlsx|
 Then I Delete Account Closures Entry from "DeleteAccountClosures" sheet
 	 |2715-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-DISTR1JAN-DISTR2on01stFEB-AccCL01MARCH-DELETEAccCL-UNDODISBURSE-Newcreateloan1.xlsx|
 
@scenario104-2716-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-DISTR1JAN-DISTR2on01stFEB-AccCL01MARCH-ReapayON1MAR
	  Scenario: 2716-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-DISTR1JAN-DISTR2on01stFEB-AccCL01MARCH-ReapayON1MAR  
 Given I Delete Account Closures Entry from "DeleteAccountClosures" sheet
 	 |2716-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-DISTR1JAN-DISTR2on01stFEB-AccCL01MARCH-ReapayON1MAR-Newcreateloan1.xlsx|
 Given I setup the clients 
 Then I entered the values into client from "Input" sheet
	 |Createclient.xlsx|
 Then I should see client created successfully from "Output" sheet
	 |Createclient.xlsx|
 When I set up the new create loan from "NewLoanInput" sheet
	 |2716-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-DISTR1JAN-DISTR2on01stFEB-AccCL01MARCH-ReapayON1MAR-Newcreateloan1.xlsx|
 Then I disburse loan from "Second Tranch" sheet
     |2716-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-DISTR1JAN-DISTR2on01stFEB-AccCL01MARCH-ReapayON1MAR-Newcreateloan1.xlsx|     
 And I create Account Closures Entry from "CreateAccountClosures" sheet
 	 |2716-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-DISTR1JAN-DISTR2on01stFEB-AccCL01MARCH-ReapayON1MAR-Newcreateloan1.xlsx|
 Then I make repayment and verified the following tabs
     |2716-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-DISTR1JAN-DISTR2on01stFEB-AccCL01MARCH-ReapayON1MAR-Newcreateloan1.xlsx|Repay1|
 Then i validate and Verify from "Output" sheet
	|2716-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-DISTR1JAN-DISTR2on01stFEB-AccCL01MARCH-ReapayON1MAR-Newcreateloan1.xlsx|
 
 
 
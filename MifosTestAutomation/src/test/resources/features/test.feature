Feature:RBI

Background:
	Given I navigate to mifos using "default#/"
	And I login into mifos site using "Login" excel sheet
		|Login.xlsx|
	Then I should see logged in successfully


@RunnerClass1
	Scenario: Loan-200-MS-EI-DB-DL-REC-NON-RNI-CTRFD-DL-MD-TR-1-ONTIME
	  
	  
	  Given I setup the clients 
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			| 200-MS-EI-DB-DL-REC-NON-RNI-CTRFD-DL-MD-TR-1-ONTIME-Newcreateloan.xlsx|
	  Then I verified the "Summary" details successfully 
	  			| 200-MS-EI-DB-DL-REC-NON-RNI-CTRFD-DL-MD-TR-1-ONTIME-Newcreateloan.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
	  			| 200-MS-EI-DB-DL-REC-NON-RNI-CTRFD-DL-MD-TR-1-ONTIME-Newcreateloan.xlsx|
	  When I make repayment and verified the following tabs
       			|200-MS-EI-DB-DL-REC-NON-RNI-CTRFD-DL-MD-TR-1-ONTIME-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
       			
  
Feature:RBI

Background:
	Given I navigate to mifos using "default8#/"
	And I login into mifos site using "Login" excel sheet
		|Login.xlsx|
	Then I should see logged in successfully

@4203-RBI-EI-DB-DL-REC-FEE-RNI-FFC-SAR-FFROP-DAILY-1-CTRFD-MD-TR-1-MORE-PERIODIC
   	  Scenario: 4783-SUBMITRD01JAN2015(AMT5000-PRD03MNT)-ACT01JAN2015-DPT01JAN2015-RUNSCHEDjOB-CloseRDAcc01April2015
     
	  
	  Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  When I set up the new create RD account from "NewRDInput" sheet
	  			|4783-SUBMITRD01JAN2015(AMT5000-PRD03MNT)-ACT01JAN2015-DPT01JAN2015-RUNSCHEDjOB-CloseRDAcc01April2015.xlsx|
	  Then I "Do Jan Deposit Transaction" and verified the following tabs 
	            |4783-SUBMITRD01JAN2015(AMT5000-PRD03MNT)-ACT01JAN2015-DPT01JAN2015-RUNSCHEDjOB-CloseRDAcc01April2015.xlsx| RecurringDeposit |
	  Then I navigate to scheduler job & execute "Update Deposit Accounts Maturity details"
	  Then I navigate To Saving Account Page
	  Then I "Close Recurring Deposit Account" and verified the following tabs
	  			|4783-SUBMITRD01JAN2015(AMT5000-PRD03MNT)-ACT01JAN2015-DPT01JAN2015-RUNSCHEDjOB-CloseRDAcc01April2015.xlsx|Modify Transaction|
	  And I verified the "RecurringDeposit Summary" details successfully
	  			|4783-SUBMITRD01JAN2015(AMT5000-PRD03MNT)-ACT01JAN2015-DPT01JAN2015-RUNSCHEDjOB-CloseRDAcc01April2015.xlsx|
	  And I verified the "RecurringDeposit Transaction" details successfully 
	  			|4783-SUBMITRD01JAN2015(AMT5000-PRD03MNT)-ACT01JAN2015-DPT01JAN2015-RUNSCHEDjOB-CloseRDAcc01April2015.xlsx|
		   	
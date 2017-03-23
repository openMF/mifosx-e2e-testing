Feature:RBI

Background:
	Given I navigate to mifos using "default#/"
	And I login into mifos site using "Login" excel sheet
		|Login.xlsx|
	Then I should see logged in successfully


@RunnerClass1	     
	Scenario:4693-SUBMIT01JAN2015-ADDGUARANTOR-SELF+EXT-DISB01JAN2015-writeoffloan-withdraw9000-fromSELFguarentorsavingsacc
          
      Given I setup the clients
	  When I entered the values into client from "Create Client1" sheet
	  			|4693-SUBMIT01JAN2015-ADDGUARANTOR-SELF+EXT-DISB01JAN2015-writeoffloan-withdraw9000-fromSELFguarentorsavingsacc.xlsx|
	  When I set up the new create saving account from "NewSavingInput" sheet
	  			|4693-SUBMIT01JAN2015-ADDGUARANTOR-SELF+EXT-DISB01JAN2015-writeoffloan-withdraw9000-fromSELFguarentorsavingsacc.xlsx|
	  Given I setup the clients
	  When I entered the values into client from "Create Client2" sheet
	  			|4693-SUBMIT01JAN2015-ADDGUARANTOR-SELF+EXT-DISB01JAN2015-writeoffloan-withdraw9000-fromSELFguarentorsavingsacc.xlsx|
	  When I set up the new create saving account from "NewSavingInput1" sheet
	  			|4693-SUBMIT01JAN2015-ADDGUARANTOR-SELF+EXT-DISB01JAN2015-writeoffloan-withdraw9000-fromSELFguarentorsavingsacc.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			|4693-SUBMIT01JAN2015-ADDGUARANTOR-SELF+EXT-DISB01JAN2015-writeoffloan-withdraw9000-fromSELFguarentorsavingsacc.xlsx|			
	  Then I add Guarentor for loan application from "Self Guarentor" sheet
	            |4693-SUBMIT01JAN2015-ADDGUARANTOR-SELF+EXT-DISB01JAN2015-writeoffloan-withdraw9000-fromSELFguarentorsavingsacc.xlsx|
	  Then I add Guarentor for loan application from "External Guarentor" sheet
	            |4693-SUBMIT01JAN2015-ADDGUARANTOR-SELF+EXT-DISB01JAN2015-writeoffloan-withdraw9000-fromSELFguarentorsavingsacc.xlsx|
	  When I set up the new create loan from "NewLoanInput1" sheet
	  			|4693-SUBMIT01JAN2015-ADDGUARANTOR-SELF+EXT-DISB01JAN2015-writeoffloan-withdraw9000-fromSELFguarentorsavingsacc.xlsx|
	  Then I "WriteOff" and verified the following tabs
	  			|4693-SUBMIT01JAN2015-ADDGUARANTOR-SELF+EXT-DISB01JAN2015-writeoffloan-withdraw9000-fromSELFguarentorsavingsacc.xlsx|Modify Transaction|
	  Then I navigate To Saving Account Page
	  Then I "Withdraw" and verified the following tabs
	            |4693-SUBMIT01JAN2015-ADDGUARANTOR-SELF+EXT-DISB01JAN2015-writeoffloan-withdraw9000-fromSELFguarentorsavingsacc.xlsx| Modify Transaction1 |
	  Then i validate and Verify from "Validate" sheet
	 			|4693-SUBMIT01JAN2015-ADDGUARANTOR-SELF+EXT-DISB01JAN2015-writeoffloan-withdraw9000-fromSELFguarentorsavingsacc.xlsx|
				
	
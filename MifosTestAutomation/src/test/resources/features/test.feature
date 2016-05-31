Feature:RBI

Background:
	Given I navigate to mifos using "default1#/"
	And I login into mifos site using "Login" excel sheet
		|Login.xlsx|
	Then I should see logged in successfully  

@4000-CREATECLIENT
	  Scenario:4000-CREATECLIENT
Given I setup the clients 
Then I entered the values into client from "Input" sheet
	 |4000-CREATECLIENT.xlsx|
Then i validate and Verify from "Output" sheet
	 |4000-CREATECLIENT.xlsx|
	 
@4001-CREATECLIENT
	  Scenario:4001-CREATECLIENT
Given I setup the clients 
Then I entered the values into client from "Input" sheet
	 |4001-CREATECLIENT.xlsx|
Then i validate and Verify from "Output" sheet
	 |4001-CREATECLIENT.xlsx|
	 
@4002-CREATECLIENT-PERSON
	  Scenario:4002-CREATECLIENT-PERSON
Given I setup the clients 
Then I entered the values into client from "Input" sheet
	 |4002-CREATECLIENT-PERSON.xlsx|
Then i validate and Verify from "Output" sheet
	 |4002-CREATECLIENT-PERSON.xlsx|
	 
@4003-CREATECLIENT-PERSON
	  Scenario:4003-CREATECLIENT-PERSON
Given I setup the clients 
Then I entered the values into client from "Input" sheet
	 |4003-CREATECLIENT-PERSON.xlsx|
Then i validate and Verify from "Output" sheet
	 |4003-CREATECLIENT-PERSON.xlsx|	 	
	 
#@4004-CREATECLIENT-ENTITY
#	  Scenario:4004-CREATECLIENT-ENTITY
#Given I setup the clients 
#Then I entered the values into client from "Input" sheet
#	 |4004-CREATECLIENT-ENTITY.xlsx|
#Then i validate and Verify from "Output" sheet
	 |4004-CREATECLIENT-ENTITY.xlsx|
	 
@4005-CREATECLIENT-ENTITY
	  Scenario:4005-CREATECLIENT-ENTITY
Given I setup the clients 
Then I entered the values into client from "Input" sheet
	 |4005-CREATECLIENT-ENTITY.xlsx|
Then i validate and Verify from "Output" sheet
	 |4005-CREATECLIENT-ENTITY.xlsx|
	 
@4006-CREATECLIENT-PERSON-DUPLICATEEXTID
	  Scenario:4006-CREATECLIENT-PERSON-DUPLICATEEXTID
Given I setup the clients 
Then I entered the values into client from "Input" sheet
	 |4006-CREATECLIENT-PERSON-DUPLICATEEXTID.xlsx|
Then i validate and Verify from "Output" sheet
	 |4006-CREATECLIENT-PERSON-DUPLICATEEXTID.xlsx|	 	  	 

@4007-CREATECLIENT-PERSON-DUPLICATENAME
	  Scenario:4007-CREATECLIENT-PERSON-DUPLICATENAME
Given I setup the clients 
Then I entered the values into client from "Input" sheet
	 |4007-CREATECLIENT-PERSON-DUPLICATENAME.xlsx|
Then i validate and Verify from "Output" sheet
	 |4007-CREATECLIENT-PERSON-DUPLICATENAME.xlsx|
	 
@4008-CREATECLIENT-ENTITY-DUPLICATE-EXTID
	  Scenario:4008-CREATECLIENT-ENTITY-DUPLICATE EXTID
Given I setup the clients 
Then I entered the values into client from "Input" sheet
	 |4008-CREATECLIENT-ENTITY-DUPLICATE EXTID.xlsx|
Then i validate and Verify from "Output" sheet
	 |4008-CREATECLIENT-ENTITY-DUPLICATE EXTID.xlsx|	
	 
@4009-CREATECLIENT-ENTITY-DUPLICATE-NAME
	  Scenario:4009-CREATECLIENT-ENTITY-DUPLICATE NAME
Given I setup the clients 
Then I entered the values into client from "Input" sheet
	 |4009-CREATECLIENT-ENTITY-DUPLICATE NAME.xlsx|
Then i validate and Verify from "Output" sheet
	 |4009-CREATECLIENT-ENTITY-DUPLICATE NAME.xlsx|		
	 
@4010-CREATECLIENT-PERSON-SAVINGSACC
	  Scenario:4010-CREATECLIENT-PERSON-SAVINGSACC
Given I setup the clients 
Then I entered the values into client from "Input" sheet
	 |4010-CREATECLIENT-PERSON-SAVINGSACC.xlsx|
Then i validate and Verify from "Output" sheet
	 |4010-CREATECLIENT-PERSON-SAVINGSACC.xlsx|	 
	 
@4011-CREATECLIENT-ENTITY-SAVINGSACC
	  Scenario:4011-CREATECLIENT-ENTITY-SAVINGSACC
Given I setup the clients 
Then I entered the values into client from "Input" sheet
	 |4011-CREATECLIENT-ENTITY-SAVINGSACC.xlsx|
Then i validate and Verify from "Output" sheet
	 |4011-CREATECLIENT-ENTITY-SAVINGSACC.xlsx|
	 
@4012-CREATEACTIVECLIENT-PERSON
	  Scenario:4012-CREATEACTIVECLIENT-PERSON
Given I setup the clients 
Then I entered the values into client from "Input" sheet
	 |4012-CREATEACTIVECLIENT-PERSON.xlsx|
Then i validate and Verify from "Output" sheet
	 |4012-CREATEACTIVECLIENT-PERSON.xlsx|
	 
@4013-CREATEACTIVECLIENT-ENTITY
	  Scenario:4013-CREATEACTIVECLIENT-ENTITY
Given I setup the clients 
Then I entered the values into client from "Input" sheet
	 |4013-CREATEACTIVECLIENT-ENTITY.xlsx|
Then i validate and Verify from "Output" sheet
	 |4013-CREATEACTIVECLIENT-ENTITY.xlsx|
	 	
@4014-CREATEACTIVECLIENT
	  Scenario:4014-CREATEACTIVECLIENT
Given I setup the clients 
Then I entered the values into client from "Input" sheet
	 |4014-CREATEACTIVECLIENT.xlsx|
Then i validate and Verify from "Output" sheet
	 |4014-CREATEACTIVECLIENT.xlsx|	 	
	 
@4015-CREATEACTIVECLIENT-PERSON-SAVINGSACC
	  Scenario:4015-CREATEACTIVECLIENT-PERSON-SAVINGSACC
Given I setup the clients 
Then I entered the values into client from "Input" sheet
	 |4015-CREATEACTIVECLIENT-PERSON-SAVINGSACC.xlsx|
Then i validate and Verify from "Output" sheet
	 |4015-CREATEACTIVECLIENT-PERSON-SAVINGSACC.xlsx|	
	 
@4016-CREATEACTIVECLIENT-ENTITY-SAVINGSACC
	  Scenario:4016-CREATEACTIVECLIENT-ENTITY-SAVINGSACC
Given I setup the clients 
Then I entered the values into client from "Input" sheet
	 |4016-CREATEACTIVECLIENT-ENTITY-SAVINGSACC.xlsx|
Then i validate and Verify from "Output" sheet
	 |4016-CREATEACTIVECLIENT-ENTITY-SAVINGSACC.xlsx|
	 
@4017-CREATECLIENT-NOINPUTS
	  Scenario:4017-CREATECLIENT-NOINPUTS
Given I setup the clients 
Then I entered the values into client from "Input" sheet
	 |4017-CREATECLIENT-NOINPUTS.xlsx|
Then i validate and Verify from "Output" sheet
	 |4017-CREATECLIENT-NOINPUTS.xlsx|	 
	 
@4018-CREATECLIENT-CLICK-CANCEL
	  Scenario:4018-CREATECLIENT-CLICK-CANCEL
Given I setup the clients 
Then I entered the values into client from "Input" sheet
	 |4018-CREATECLIENT-CLICK-CANCEL.xlsx|
Then i validate and Verify from "Output" sheet
	 |4018-CREATECLIENT-CLICK-CANCEL.xlsx|
	 
@4019-ACTIVECLIENT-PERSON
	  Scenario:4019-ACTIVECLIENT-PERSON
Given I setup the clients 
Then I entered the values into client from "Input" sheet
	 |4019-ACTIVECLIENT-PERSON.xlsx|
	 
@4020-ACTIVECLIENT-ENTITY
	  Scenario:4020-ACTIVECLIENT-ENTITY
Given I setup the clients 
Then I entered the values into client from "Input" sheet
	 |4020-ACTIVECLIENT-ENTITY.xlsx|
	 
@4021-ACTIVECLIENT-BeforeSubmitedDate-ENTITY
	  Scenario:4021-ACTIVECLIENT-BeforeSubmitedDate-ENTITY
Given I setup the clients 
Then I entered the values into client from "Input" sheet
	 |4021-ACTIVECLIENT-BeforeSubmitedDate-ENTITY.xlsx|	 
	 
@4022-CREATECLIENT-CLOSE-WITHOUT-ACTIVATION&REASON
	  Scenario:4022-CREATECLIENT-CLOSE-WITHOUT-ACTIVATION&REASON
Given I setup the clients 
Then I entered the values into client from "Input" sheet
	 |4022-CREATECLIENT-CLOSE-WITHOUT-ACTIVATION&REASON.xlsx|	
	 
@4023-CREATECLIENT-CLOSE-WITHOUT-ACTIVATION
	  Scenario:4023-CREATECLIENT-CLOSE-WITHOUT-ACTIVATION
Given I setup the clients 
Then I entered the values into client from "Input" sheet
	 |4023-CREATECLIENT-CLOSE-WITHOUT-ACTIVATION.xlsx|	
	 
@4024-CREATE-ACTIVECLIENT-CLOSE-WITHOUT-REASON
	  Scenario:4024-CREATE-ACTIVECLIENT-CLOSE-WITHOUT-REASON
Given I setup the clients 
Then I entered the values into client from "Input" sheet
	 |4024-CREATE-ACTIVECLIENT-CLOSE-WITHOUT-REASON.xlsx|	
	 
@4025-CREATE-ACTIVECLIENT-CLOSE-WITH-REASON
	  Scenario:4025-CREATE-ACTIVECLIENT-CLOSE-WITH-REASON
Given I setup the clients 
Then I entered the values into client from "Input" sheet
	 |4025-CREATE-ACTIVECLIENT-CLOSE-WITH-REASON.xlsx|		 	 	 	 

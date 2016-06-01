Feature:RBI

Background:
	Given I navigate to mifos using "default1#/"
	And I login into mifos site using "Login" excel sheet
		|Login.xlsx|
	Then I should see logged in successfully  

@4026-CREATE-ACTIVECLIENT-REJECTCLIENT-WITH-REASON
	  Scenario:4026-CREATE-ACTIVECLIENT-REJECTCLIENT-WITH-REASON 
Given I setup the clients 
Then I entered the values into client from "Input" sheet
	 |4026-CREATE-ACTIVECLIENT-REJECTCLIENT-WITH-REASON.xlsx|
Then i validate and Verify from "Output" sheet
	 |4026-CREATE-ACTIVECLIENT-REJECTCLIENT-WITH-REASON.xlsx|	 
	 
	 
@4027-CREATE-ACTIVECLIENT-REJECTCLIENT-WITHOUT-REASON
	  Scenario:4027-CREATE-ACTIVECLIENT-REJECTCLIENT-WITHOUT-REASON
Given I setup the clients 
Then I entered the values into client from "Input" sheet
	 |4027-CREATE-ACTIVECLIENT-REJECTCLIENT-WITHOUT-REASON.xlsx|
	 
@4028-CREATE-ACTIVECLIENT-WITHDRAW-WITH-REASON
	  Scenario:4028-CREATE-ACTIVECLIENT-WITHDRAW-WITH-REASON 
Given I setup the clients 
Then I entered the values into client from "Input" sheet
	 |4028-CREATE-ACTIVECLIENT-WITHDRAW-WITH-REASON.xlsx|

@4029-CREATE-ACTIVECLIENT-WITHDRAW-WITHOUT-REASON
	  Scenario:4029-CREATE-ACTIVECLIENT-WITHDRAW-WITHOUT-REASON
Given I setup the clients 
Then I entered the values into client from "Input" sheet
	 |4029-CREATE-ACTIVECLIENT-WITHDRAW-WITHOUT-REASON.xlsx|
	 
@4030-CREATE-CLIENT-DELETE-INACTIVECLIENT
	  Scenario:4030-CREATE-CLIENT-DELETE-INACTIVECLIENT
Given I setup the clients 
Then I entered the values into client from "Input" sheet
	 |4030-CREATE-CLIENT-DELETE-INACTIVECLIENT.xlsx|	
	 
@4031-CREATE-PERSON-ASSIGNSTAFF
	  Scenario:4031-CREATE-PERSON-ASSIGNSTAFF
Given I setup the clients 
Then I entered the values into client from "Input" sheet
	 |4031-CREATE-PERSON-ASSIGNSTAFF.xlsx|
	 
@4032-CREATE-PERSON-UNASSIGNSTAFF
	  Scenario:4032-CREATE-PERSON-UNASSIGNSTAFF
Given I setup the clients 
Then I entered the values into client from "Input" sheet
	 |4032-CREATE-PERSON-UNASSIGNSTAFF.xlsx|
	 
@4033-CREATE-ACTIVEPERSON-ASSIGNSTAFF
	  Scenario:4033-CREATE-ACTIVEPERSON-ASSIGNSTAFF
Given I setup the clients 
Then I entered the values into client from "Input" sheet
	 |4033-CREATE-ACTIVEPERSON-ASSIGNSTAFF.xlsx|
	 
@4034-CREATE-ACTIVE-PERSON-UNASSIGNSTAFF
	  Scenario:4034-CREATE-ACTIVE-PERSON-UNASSIGNSTAFF
Given I setup the clients 
Then I entered the values into client from "Input" sheet
	 |4034-CREATE-ACTIVE-PERSON-UNASSIGNSTAFF.xlsx|  	 
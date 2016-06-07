Feature:RBI

Background:
	Given I navigate to mifos using "default#/"
	And I login into mifos site using "Login" excel sheet
		|Login.xlsx|
	Then I should see logged in successfully  

@4035-CREATE-ACTIVEPERSON-CLOSECLENT-WITH-REASON
	  Scenario:4035-CREATE-ACTIVEPERSON-CLOSECLENT-WITH-REASON
Given I setup the clients 
Then I entered the values into client from "Input" sheet
	 |4035-CREATE-ACTIVEPERSON-CLOSECLENT-WITH-REASON.xlsx|
	 
@4036-CREATEACTIVECLIENT-PERSON-EDIT
	  Scenario:4036-CREATEACTIVECLIENT-PERSON-EDIT 
Given I setup the clients 
Then I entered the values into client from "Input" sheet
	 |4036-CREATEACTIVECLIENT-PERSON-EDIT.xlsx|
Then I Edit Client from "Edit Client" sheet
	 |4036-CREATEACTIVECLIENT-PERSON-EDIT.xlsx|	 
Then i validate and Verify from "Output" sheet
	 |4036-CREATEACTIVECLIENT-PERSON-EDIT.xlsx|	 
	 
@4037-EDITCLIENT-ENTITYtoPERSON
	  Scenario:4037-EDITCLIENT-ENTITYtoPERSON 
Given I setup the clients 
Then I entered the values into client from "Input" sheet
	 |4037-EDITCLIENT-ENTITYtoPERSON.xlsx|
Then I Edit Client from "Edit Client" sheet
	 |4037-EDITCLIENT-ENTITYtoPERSON.xlsx|	 
Then i validate and Verify from "Output" sheet
	 |4037-EDITCLIENT-ENTITYtoPERSON.xlsx|	 
	 
@4038-EDITCLIENT-PERSONtoENTITY
	  Scenario:4038-EDITCLIENT-PERSONtoENTITY 
Given I setup the clients 
Then I entered the values into client from "Input" sheet
	 |4038-EDITCLIENT-PERSONtoENTITY.xlsx|
Then I Edit Client from "Edit Client" sheet
	 |4038-EDITCLIENT-PERSONtoENTITY.xlsx|	 
Then i validate and Verify from "Output" sheet
	 |4038-EDITCLIENT-PERSONtoENTITY.xlsx|		 	 
	 
@4039-CREATECLIENT-PERSON-EDIT-ACTIVATE
	  Scenario:4039-CREATECLIENT-PERSON-EDIT-ACTIVATE 
Given I setup the clients 
Then I entered the values into client from "Input" sheet
	 |4039-CREATECLIENT-PERSON-EDIT-ACTIVATE.xlsx|
Then I Edit Client from "Edit Client" sheet
	 |4039-CREATECLIENT-PERSON-EDIT-ACTIVATE.xlsx|	 
Then i validate and Verify from "Output" sheet
	 |4039-CREATECLIENT-PERSON-EDIT-ACTIVATE.xlsx|	
	 
@4040-ACTIVECLIENT-PERSON-TRANSFERCLIENT-ACCEPTTRANSFER
	  Scenario:4040-ACTIVECLIENT-PERSON-TRANSFERCLIENT-ACCEPTTRANSFER 
Given I setup the clients 
Then I entered the values into client from "Input" sheet
	 |4040-ACTIVECLIENT-PERSON-TRANSFERCLIENT-ACCEPTTRANSFER.xlsx|
Then I "Transfer Client" from "Transfer Client" sheet
	 |4040-ACTIVECLIENT-PERSON-TRANSFERCLIENT-ACCEPTTRANSFER.xlsx|	 
Then i validate and Verify from "Output" sheet
	 |4040-ACTIVECLIENT-PERSON-TRANSFERCLIENT-ACCEPTTRANSFER.xlsx|	
	 
@4041-ACTIVECLIENT-PERSON-TRANSFERCLIENT-RejectTRANSFER
	  Scenario:4041-ACTIVECLIENT-PERSON-TRANSFERCLIENT-RejectTRANSFER 
Given I setup the clients 
Then I entered the values into client from "Input" sheet
	 |4041-ACTIVECLIENT-PERSON-TRANSFERCLIENT-RejectTRANSFER.xlsx|
Then I "Transfer Client" from "Transfer Client" sheet
	 |4041-ACTIVECLIENT-PERSON-TRANSFERCLIENT-RejectTRANSFER.xlsx|	 
Then i validate and Verify from "Output" sheet
	 |4041-ACTIVECLIENT-PERSON-TRANSFERCLIENT-RejectTRANSFER.xlsx|
	 
@4042-ACTIVECLIENT-PERSON-TRANSFERCLIENT-UNDOTRANSFER
	  Scenario:4042-ACTIVECLIENT-PERSON-TRANSFERCLIENT-UNDOTRANSFER 
Given I setup the clients 
Then I entered the values into client from "Input" sheet
	 |4042-ACTIVECLIENT-PERSON-TRANSFERCLIENT-UNDOTRANSFER.xlsx|
Then I "Transfer Client" from "Transfer Client" sheet
	 |4042-ACTIVECLIENT-PERSON-TRANSFERCLIENT-UNDOTRANSFER.xlsx|	 
Then i validate and Verify from "Output" sheet
	 |4042-ACTIVECLIENT-PERSON-TRANSFERCLIENT-UNDOTRANSFER.xlsx|
	 
@4043-ACTIVECLIENT-PERSON-TRANSFERCLIENT-CANCEL
	  Scenario:4043-ACTIVECLIENT-PERSON-TRANSFERCLIENT-CANCEL 
Given I setup the clients 
Then I entered the values into client from "Input" sheet
	 |4043-ACTIVECLIENT-PERSON-TRANSFERCLIENT-CANCEL.xlsx|
Then I "Transfer Client" from "Transfer Client" sheet
	 |4043-ACTIVECLIENT-PERSON-TRANSFERCLIENT-CANCEL.xlsx|	 
Then i validate and Verify from "Output" sheet
	 |4043-ACTIVECLIENT-PERSON-TRANSFERCLIENT-CANCEL.xlsx|	
	 
@4044-ACTIVECLIENT-PERSON-TRANSFER-SAMEBRANCH
	  Scenario:4044-ACTIVECLIENT-PERSON-TRANSFER-SAMEBRANCH 
Given I setup the clients 
Then I entered the values into client from "Input" sheet
	 |4044-ACTIVECLIENT-PERSON-TRANSFER-SAMEBRANCH.xlsx|
Then I "Transfer Client" from "Transfer Client" sheet
	 |4044-ACTIVECLIENT-PERSON-TRANSFER-SAMEBRANCH.xlsx|	 

@4045-ACTIVECLIENT-ENTITY-TRANSFERCLIENT-ACCEPTTRANSFER
	  Scenario:4045-ACTIVECLIENT-ENTITY-TRANSFERCLIENT-ACCEPTTRANSFER 
Given I setup the clients 
Then I entered the values into client from "Input" sheet
	 |4045-ACTIVECLIENT-ENTITY-TRANSFERCLIENT-ACCEPTTRANSFER.xlsx|
Then I "Transfer Client" from "Transfer Client" sheet
	 |4045-ACTIVECLIENT-ENTITY-TRANSFERCLIENT-ACCEPTTRANSFER.xlsx|	 
Then i validate and Verify from "Output" sheet
	 |4045-ACTIVECLIENT-ENTITY-TRANSFERCLIENT-ACCEPTTRANSFER.xlsx|	
	 
@4046-ACTIVECLIENT-ENTITY-TRANSFERCLIENT-RejectTRANSFER
	  Scenario:4046-ACTIVECLIENT-ENTITY-TRANSFERCLIENT-RejectTRANSFER 
Given I setup the clients 
Then I entered the values into client from "Input" sheet
	 |4046-ACTIVECLIENT-ENTITY-TRANSFERCLIENT-RejectTRANSFER.xlsx|
Then I "Transfer Client" from "Transfer Client" sheet
	 |4046-ACTIVECLIENT-ENTITY-TRANSFERCLIENT-RejectTRANSFER.xlsx|	 
Then i validate and Verify from "Output" sheet
	 |4046-ACTIVECLIENT-ENTITY-TRANSFERCLIENT-RejectTRANSFER.xlsx|
	 
@4047-ACTIVECLIENT-ENTITY-TRANSFERCLIENT-UNDOTRANSFER
	  Scenario:4047-ACTIVECLIENT-ENTITY-TRANSFERCLIENT-UNDOTRANSFER 
Given I setup the clients 
Then I entered the values into client from "Input" sheet
	 |4047-ACTIVECLIENT-ENTITY-TRANSFERCLIENT-UNDOTRANSFER.xlsx|
Then I "Transfer Client" from "Transfer Client" sheet
	 |4047-ACTIVECLIENT-ENTITY-TRANSFERCLIENT-UNDOTRANSFER.xlsx|	 
Then i validate and Verify from "Output" sheet
	 |4047-ACTIVECLIENT-ENTITY-TRANSFERCLIENT-UNDOTRANSFER.xlsx|
	 
@4048-ACTIVECLIENT-ENTITY-TRANSFERCLIENT-CANCEL
	  Scenario:4048-ACTIVECLIENT-ENTITY-TRANSFERCLIENT-CANCEL 
Given I setup the clients 
Then I entered the values into client from "Input" sheet
	 |4048-ACTIVECLIENT-ENTITY-TRANSFERCLIENT-CANCEL.xlsx|
Then I "Transfer Client" from "Transfer Client" sheet
	 |4048-ACTIVECLIENT-ENTITY-TRANSFERCLIENT-CANCEL.xlsx|	 
Then i validate and Verify from "Output" sheet
	 |4048-ACTIVECLIENT-ENTITY-TRANSFERCLIENT-CANCEL.xlsx|	
	 
@4049-ACTIVECLIENT-ENTITY-TRANSFER-SAMEBRANCH
	  Scenario:4049-ACTIVECLIENT-ENTITY-TRANSFER-SAMEBRANCH 
Given I setup the clients 
Then I entered the values into client from "Input" sheet
	 |4049-ACTIVECLIENT-ENTITY-TRANSFER-SAMEBRANCH.xlsx|
Then I "Transfer Client" from "Transfer Client" sheet
	 |4049-ACTIVECLIENT-ENTITY-TRANSFER-SAMEBRANCH.xlsx|
	 
@4050-CREATEACTIVECLIENT-PERSON-ADD-CLIENTCHARGE-SPECIFIED-DUEDATE
	  Scenario:4050-CREATEACTIVECLIENT-PERSON-ADD-CLIENTCHARGE-SPECIFIED-DUEDATE 
Given I setup the clients 
Then I entered the values into client from "Input" sheet
	 |4050-CREATEACTIVECLIENT-PERSON-ADD-CLIENTCHARGE-SPECIFIED-DUEDATE.xlsx|
Then I "Apply Charge" from "Client Charge" sheet
	 |4050-CREATEACTIVECLIENT-PERSON-ADD-CLIENTCHARGE-SPECIFIED-DUEDATE.xlsx|	  	 	  	  	 
	 
@4051-CREATEACTIVECLIENT-PERSON-ADD-CLIENTCHARGE-SPECIFIED-DUEDATE-PENALTY
	  Scenario:4051-CREATEACTIVECLIENT-PERSON-ADD-CLIENTCHARGE-SPECIFIED-DUEDATE-PENALTY 
Given I setup the clients 
Then I entered the values into client from "Input" sheet
	 |4051-CREATEACTIVECLIENT-PERSON-ADD-CLIENTCHARGE-SPECIFIED-DUEDATE-PENALTY.xlsx|
Then I "Apply Charge" from "Client Charge" sheet
	 |4051-CREATEACTIVECLIENT-PERSON-ADD-CLIENTCHARGE-SPECIFIED-DUEDATE-PENALTY.xlsx| 	
	 
@4052-CREATEACTIVECLIENT-PERSON-ADD-CLIENTCHARGE-SPECIFIED-DUEDATE-WITHOUT-DATEFIELD
	  Scenario:4052-CREATEACTIVECLIENT-PERSON-ADD-CLIENTCHARGE-SPECIFIED-DUEDATE-WITHOUT-DATEFIELD 
Given I setup the clients 
Then I entered the values into client from "Input" sheet
	 |4052-CREATEACTIVECLIENT-PERSON-ADD-CLIENTCHARGE-SPECIFIED-DUEDATE-WITHOUT-DATEFIELD.xlsx|
Then I "Apply Charge" from "Client Charge" sheet
	 |4052-CREATEACTIVECLIENT-PERSON-ADD-CLIENTCHARGE-SPECIFIED-DUEDATE-WITHOUT-DATEFIELD.xlsx|	  	  	 
	 
@4053-CREATEACTIVECLIENT-PERSON-ADD-CLIENTCHARGE-SPECIFIED-DUEDATE-BeforeClientCreation-DATE
	  Scenario:4053-CREATEACTIVECLIENT-PERSON-ADD-CLIENTCHARGE-SPECIFIED-DUEDATE-BeforeClientCreation-DATE 
Given I setup the clients 
Then I entered the values into client from "Input" sheet
	 |4053-CREATEACTIVECLIENT-PERSON-ADD-CLIENTCHARGE-SPECIFIED-DUEDATE-BeforeClientCreation-DATE.xlsx|
Then I "Apply Charge" from "Client Charge" sheet
	 |4053-CREATEACTIVECLIENT-PERSON-ADD-CLIENTCHARGE-SPECIFIED-DUEDATE-BeforeClientCreation-DATE.xlsx|	 	 
	 
@4054-CREATEACTIVECLIENT-PERSON-ADD-CLIENTCHARGE-SPECIFIED-DUEDATE-PENALTY-BeforeClientCreation-DATE
	  Scenario:4054-CREATEACTIVECLIENT-PERSON-ADD-CLIENTCHARGE-SPECIFIED-DUEDATE-PENALTY-BeforeClientCreation-DATE 
Given I setup the clients 
Then I entered the values into client from "Input" sheet
	 |4054-CREATEACTIVECLIENT-PERSON-ADD-CLIENTCHARGE-SPECIFIED-DUEDATE-PENALTY-BeforeClientCreation-DATE.xlsx|
Then I "Apply Charge" from "Client Charge" sheet
	 |4054-CREATEACTIVECLIENT-PERSON-ADD-CLIENTCHARGE-SPECIFIED-DUEDATE-PENALTY-BeforeClientCreation-DATE.xlsx|		  	 

@4055-CREATEACTIVECLIENT-PERSON-ADD-CLIENTCHARGE-SPECIFIED-DUEDATE-BeforeACTIVATION-DATE
	  Scenario:4055-CREATEACTIVECLIENT-PERSON-ADD-CLIENTCHARGE-SPECIFIED-DUEDATE-BeforeACTIVATION-DATE 
Given I setup the clients 
Then I entered the values into client from "Input" sheet
	 |4055-CREATEACTIVECLIENT-PERSON-ADD-CLIENTCHARGE-SPECIFIED-DUEDATE-BeforeACTIVATION-DATE.xlsx|
Then I "Apply Charge" from "Client Charge" sheet
	 |4055-CREATEACTIVECLIENT-PERSON-ADD-CLIENTCHARGE-SPECIFIED-DUEDATE-BeforeACTIVATION-DATE.xlsx|	 	 
	 
@4056-CREATEACTIVECLIENT-PERSON-ADD-CLIENTCHARGE-SPECIFIED-DUEDATE-PENALTY-BeforeACTIVATION-DATE
	  Scenario:4056-CREATEACTIVECLIENT-PERSON-ADD-CLIENTCHARGE-SPECIFIED-DUEDATE-PENALTY-BeforeACTIVATION-DATE 
Given I setup the clients 
Then I entered the values into client from "Input" sheet
	 |4056-CREATEACTIVECLIENT-PERSON-ADD-CLIENTCHARGE-SPECIFIED-DUEDATE-PENALTY-BeforeACTIVATION-DATE.xlsx|
Then I "Apply Charge" from "Client Charge" sheet
	 |4056-CREATEACTIVECLIENT-PERSON-ADD-CLIENTCHARGE-SPECIFIED-DUEDATE-PENALTY-BeforeACTIVATION-DATE.xlsx|	
	 
@4057-CREATECLIENT-SEARCHCLIENTID
	  Scenario:4057-CREATECLIENT-SEARCHCLIENTID 
Given I setup the clients 
Then I entered the values into client from "Input" sheet
	 |4057-CREATECLIENT-SEARCHCLIENTID.xlsx|
Then I "SEARCH CLIENT ID" from "Search Client" sheet
	 |4057-CREATECLIENT-SEARCHCLIENTID.xlsx|
	 
@4058-CREATECLIENT-SEARCHwithEXTID
	  Scenario:4058-CREATECLIENT-SEARCHwithEXTID 
Given I setup the clients 
Then I entered the values into client from "Input" sheet
	 |4058-CREATECLIENT-SEARCHwithEXTID.xlsx|
Then I "SEARCH CLIENT ID" from "Search Client" sheet
	 |4058-CREATECLIENT-SEARCHwithEXTID.xlsx|	 	 	  	 
Then i validate and Verify from "Output" sheet
	 |4058-CREATECLIENT-SEARCHwithEXTID.xlsx|
	 
@4059-CREATECLIENT-SEARCHwithNAME
	  Scenario:4059-CREATECLIENT-SEARCHwithNAME 
Given I setup the clients 
Then I entered the values into client from "Input" sheet
	 |4059-CREATECLIENT-SEARCHwithNAME.xlsx|
Then I "SEARCH CLIENT Name" from "Search Client" sheet
	 |4059-CREATECLIENT-SEARCHwithNAME.xlsx|	 	 	  	 
Then i validate and Verify from "Output" sheet
	 |4059-CREATECLIENT-SEARCHwithNAME.xlsx|
	 
@4060-CREATECLIENT-SEARCHwithMOBILENUM
	  Scenario:4060-CREATECLIENT-SEARCHwithMOBILENUM 
Given I setup the clients 
Then I entered the values into client from "Input" sheet
	 |4060-CREATECLIENT-SEARCHwithMOBILENUM.xlsx|
Then I "SEARCH CLIENT Mobile No" from "Search Client" sheet
	 |4060-CREATECLIENT-SEARCHwithMOBILENUM.xlsx|	 	 	  	 
Then i validate and Verify from "Output" sheet
	 |4060-CREATECLIENT-SEARCHwithMOBILENUM.xlsx|
	 	 

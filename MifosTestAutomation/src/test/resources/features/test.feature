Feature:RBI

Background:
	Given I navigate to mifos using "default#/"
	And I login into mifos site using "Login" excel sheet
		|Login.xlsx|
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
	 #  |Loanproduct.xlsx|
	 	|3015-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-TR-DISB-FEE-FLAT-Regular-CASH-Loanproduct.xlsx|
		|3016-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-TR-%DISB-AMT-Regular-CASH-Loanproduct.xlsx|
		|3022-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-SPEDUEDATE-FEE-FLAT-Regular-CASH-Loanproduct.xlsx|
	 		 	
@scenario85-2697-1
	  Scenario: 2697-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-REPAY-AccCL1stFEB-DISTR2on1stFEB  
Given I setup the clients 
 Then I entered the values into client from "Input" sheet
	 |Createclient.xlsx|
	 
@scenario85-2697-2
	  Scenario: 2697-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-REPAY-AccCL1stFEB-DISTR2on1stFEB  
 Given I setup the clients 
 Then I entered the values into client from "Input" sheet
	 |Createclient.xlsx|	 
	 
@scenario85-2697-3
	  Scenario: 2697-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-REPAY-AccCL1stFEB-DISTR2on1stFEB  
Given I setup the clients 
 Then I entered the values into client from "Input" sheet
	 |Createclient.xlsx|
	 
@scenario85-2697-4
	  Scenario: 2697-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-REPAY-AccCL1stFEB-DISTR2on1stFEB  
 Given I setup the clients 
 Then I entered the values into client from "Input" sheet
	 |Createclient.xlsx|	
	 
@scenario85-2697-5
	  Scenario: 2697-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-REPAY-AccCL1stFEB-DISTR2on1stFEB  
Given I setup the clients 
 Then I entered the values into client from "Input" sheet
	 |Createclient.xlsx|
	 
@scenario85-2697-6
	  Scenario: 2697-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-REPAY-AccCL1stFEB-DISTR2on1stFEB  
 Given I setup the clients 
 Then I entered the values into client from "Input" sheet
	 |Createclient.xlsx|		 	 
 
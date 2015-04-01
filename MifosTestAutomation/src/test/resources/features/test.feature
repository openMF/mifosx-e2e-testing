Feature:Test

Background:
	Given I navigate to mifos
	And I login into mifos site using "Login" excel sheet
		| Login.xlsx  |
	Then I should see logged in successfully
	

@scenario25-2350-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-ONTIME-BLR
	  Scenario: 2350-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-ONTIME-BLR  
	
#	Given I Define floating rates for loan products from "FloatingRates" Sheet
#		|2350-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-ONTIME-BLR-Loanproduct.xlsx|
#	Then I setup the product loan "Setup"
#		| Productloannavigation.xlsx |
#	Then I entered the values into product loan from "ProductLoanInput" Sheet
#		|2350-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-ONTIME-BLR-Loanproduct.xlsx|
	  Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			| 2350-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-ONTIME-BLR-CASH-Newcreateloan1.xlsx|
	  Then I verified the "Summary" details successfully 
	  			| 2350-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-ONTIME-BLR-CASH-Newcreateloan1.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
	  			| 2350-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-ONTIME-BLR-CASH-Newcreateloan1.xlsx|
	  And I verified the "Transactions" details successfully	
				| 2350-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-ONTIME-BLR-CASH-Newcreateloan1.xlsx| 
	  And I verified the "Floating Interest Rates" details successfully	
				| 2350-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-ONTIME-BLR-CASH-Newcreateloan1.xlsx|
			

@scenario25-2351-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-ONTIME-DLR
	  Scenario: 2351-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-ONTIME-DLR  

#	Given I Define floating rates for loan products from "FloatingRates" Sheet
#		|2351-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-ONTIME-DLR-Loanproduct.xlsx|
#	Then I setup the product loan "Setup"
#		| Productloannavigation.xlsx |
#	Then I entered the values into product loan from "ProductLoanInput" Sheet
#		|2351-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-ONTIME-DLR-Loanproduct.xlsx|	
	  Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			| 2351-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-ONTIME-DLR-Newcreateloan1.xlsx|
#	  Then I verified the "Summary" details successfully 
#	  			| 2351-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-ONTIME-DLR-Newcreateloan1.xlsx|
#	  And I verified the "Repayment Schedule" details successfully 
#	  			| 2351-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-ONTIME-DLR-Newcreateloan1.xlsx|
#	  And I verified the "Transactions" details successfully	
#				| 2351-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-ONTIME-DLR-Newcreateloan1.xlsx| 
	  And I verified the "Floating Interest Rates" details successfully	
				| 2351-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-ONTIME-DLR-Newcreateloan1.xlsx|
		
	
@scenario25-2352-RBI-EI-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-ONTIME-DLR
	  Scenario: 2352-RBI-EI-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-ONTIME-DLR  

	Then I setup the product loan "Setup"
		| Productloannavigation.xlsx |
	Then I entered the values into product loan from "ProductLoanInput" Sheet
		|2352-RBI-EI-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-ONTIME-DLR-Loanproduct.xlsx|		
	

@scenario25-2353-RBI-EI-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-ONTIME-BLR
	  Scenario: 2353-RBI-EI-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-ONTIME-BLR

	Then I setup the product loan "Setup"
		| Productloannavigation.xlsx |
	Then I entered the values into product loan from "ProductLoanInput" Sheet
		|2353-RBI-EI-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-ONTIME-BLR-Loanproduct.xlsx|		

@scenario25-2354-RBI-EPP-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-ONTIME-DLR
	  Scenario: 2354-RBI-EPP-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-ONTIME-DLR

	Then I setup the product loan "Setup"
		| Productloannavigation.xlsx |
	Then I entered the values into product loan from "ProductLoanInput" Sheet
		|2354-RBI-EPP-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-ONTIME-DLR-Loanproduct.xlsx|		
	
@scenario25-2355-RBI-EPP-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-BLR
	  Scenario: 2355-RBI-EPP-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-BLR

	Then I setup the product loan "Setup"
		| Productloannavigation.xlsx |
	Then I entered the values into product loan from "ProductLoanInput" Sheet
		|2355-RBI-EPP-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-BLR-Loanproduct.xlsx|	

@scenario25-2356-RBI-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-ONTIME-DLR
	  Scenario: 2356-RBI-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-ONTIME-DLR

	Then I setup the product loan "Setup"
		| Productloannavigation.xlsx |
	Then I entered the values into product loan from "ProductLoanInput" Sheet
		|2356-RBI-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-ONTIME-DLR-Loanproduct.xlsx|	

@scenario25-2357-RBI-EPP-DB-SAR-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-BLR
	  Scenario: 2357-RBI-EPP-DB-SAR-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-BLR

	Then I setup the product loan "Setup"
		| Productloannavigation.xlsx |
	Then I entered the values into product loan from "ProductLoanInput" Sheet
		|2357-RBI-EPP-DB-SAR-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-BLR-Loanproduct.xlsx|	
				
@scenario25-2358-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-ONTIME-DLR
	  Scenario: 2358-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-ONTIME-DLR

	Then I setup the product loan "Setup"
		| Productloannavigation.xlsx |
	Then I entered the values into product loan from "ProductLoanInput" Sheet
		|2358-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-ONTIME-DLR-Loanproduct.xlsx|

@scenario25-2359-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-ONTIME-BLR
	  Scenario: 2359-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-ONTIME-BLR

	Then I setup the product loan "Setup"
		| Productloannavigation.xlsx |
	Then I entered the values into product loan from "ProductLoanInput" Sheet
		|2359-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-ONTIME-BLR-Loanproduct.xlsx|
		
@scenario25-2360-RBI-EI-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-ONTIME-DLR
	  Scenario: 2360-RBI-EI-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-ONTIME-DLR

	Then I setup the product loan "Setup"
		| Productloannavigation.xlsx |
	Then I entered the values into product loan from "ProductLoanInput" Sheet
		|2360-RBI-EI-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-ONTIME-DLR-Loanproduct.xlsx|
		
@scenario25-2361-RBI-EI-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-ONTIME-BLR
	  Scenario: 2361-RBI-EI-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-ONTIME-BLR

	Then I setup the product loan "Setup"
		| Productloannavigation.xlsx |
	Then I entered the values into product loan from "ProductLoanInput" Sheet
		|2361-RBI-EI-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-ONTIME-BLR-Loanproduct.xlsx|
		
@scenario25-2362-RBI-EPP-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-ONTIME-DLR
	  Scenario: 2362-RBI-EPP-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-ONTIME-DLR

	Then I setup the product loan "Setup"
		| Productloannavigation.xlsx |
	Then I entered the values into product loan from "ProductLoanInput" Sheet
		|2362-RBI-EPP-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-ONTIME-DLR-Loanproduct.xlsx|		
	
@scenario25-2363-RBI-EPP-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-BLR
	  Scenario: 2363-RBI-EPP-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-BLR

	Then I setup the product loan "Setup"
		| Productloannavigation.xlsx |
	Then I entered the values into product loan from "ProductLoanInput" Sheet
		|2363-RBI-EPP-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-BLR-Loanproduct.xlsx|	
		
@scenario25-2364-RBI-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-ONTIME-DLR
	  Scenario: 2364-RBI-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-ONTIME-DLR

	Then I setup the product loan "Setup"
		| Productloannavigation.xlsx |
	Then I entered the values into product loan from "ProductLoanInput" Sheet
		|2364-RBI-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-ONTIME-DLR-Loanproduct.xlsx|
		
@scenario25-2365-RBI-EPP-DB-SAR-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-BLR
	  Scenario: 2365-RBI-EPP-DB-SAR-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-BLR

	Then I setup the product loan "Setup"
		| Productloannavigation.xlsx |
	Then I entered the values into product loan from "ProductLoanInput" Sheet
		|2365-RBI-EPP-DB-SAR-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-BLR-Loanproduct.xlsx|
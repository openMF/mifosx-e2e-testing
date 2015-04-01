<<<<<<< HEAD
Feature:FloatingRates
=======
Feature:Test

>>>>>>> 10ecfb8927341c12eea6300df0a0a13d9fc358e2
Background:
	Given I navigate to mifos
	And I login into mifos site using "Login" excel sheet
		| Login.xlsx  |
	Then I should see logged in successfully
	
<<<<<<< HEAD
@scenario1-2350-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-BLR-EARLY-CASH
	  Scenario: 2350-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-BLR-EARLY-CASH  
	
#	Given I Define floating rates for loan products from "FloatingRates" Sheet
#		|2350-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-BLR-EARLY-CASH-Loanproduct.xlsx|
	Given I setup the product loan "Setup"
		| Productloannavigation.xlsx |
	Then I entered the values into product loan from "ProductLoanInput" Sheet
		|2350-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-BLR-EARLY-CASH-Loanproduct.xlsx|
=======

@scenario25-2350-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-ONTIME-BLR
	  Scenario: 2350-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-ONTIME-BLR  
	
#	Given I Define floating rates for loan products from "FloatingRates" Sheet
#		|2350-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-ONTIME-BLR-Loanproduct.xlsx|
#	Then I setup the product loan "Setup"
#		| Productloannavigation.xlsx |
#	Then I entered the values into product loan from "ProductLoanInput" Sheet
#		|2350-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-ONTIME-BLR-Loanproduct.xlsx|
>>>>>>> 10ecfb8927341c12eea6300df0a0a13d9fc358e2
	  Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
<<<<<<< HEAD
	  			| 2350-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-BLR-EARLY-CASH-Newcreateloan1.xlsx|
	  Then I verified the "Summary" details successfully 
	  			| 2350-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-BLR-EARLY-CASH-Newcreateloan1.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
	  			| 2350-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-BLR-EARLY-CASH-Newcreateloan1.xlsx|
	  And I verified the "Transactions" details successfully	
				| 2350-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-BLR-EARLY-CASH-Newcreateloan1.xlsx| 
	  Then I make repayment and verified the following tabs
       			|2350-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-BLR-EARLY-CASH-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
#	  And I verified the "Floating Interest Rates" details successfully	
#				| 2350-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-BLR-EARLY-CASH-Newcreateloan1.xlsx|
			

@scenario2-2351-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-DLR-LATE-CASH
	  Scenario: 2351-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-DLR-LATE-CASH  

	Given I setup the product loan "Setup"
		| Productloannavigation.xlsx |
	Then I entered the values into product loan from "ProductLoanInput" Sheet
		|2351-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-DLR-LATE-CASH-Loanproduct.xlsx|	
=======
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
>>>>>>> 10ecfb8927341c12eea6300df0a0a13d9fc358e2
	  Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
<<<<<<< HEAD
	  			| 2351-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-DLR-LATE-CASH-Newcreateloan1.xlsx|
	  Then I verified the "Summary" details successfully 
	  			| 2351-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-DLR-LATE-CASH-Newcreateloan1.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
	  			| 2351-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-DLR-LATE-CASH-Newcreateloan1.xlsx|
	  And I verified the "Transactions" details successfully	
				| 2351-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-DLR-LATE-CASH-Newcreateloan1.xlsx| 
	  Then I make repayment and verified the following tabs
       			|2351-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-DLR-LATE-CASH-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
	  	
@scenario3-2352-RBI-EI-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-ONTIME-DLR-CASH
	  Scenario: 2352-RBI-EI-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-ONTIME-DLR-CASH  

	Given I setup the product loan "Setup"
		| Productloannavigation.xlsx |
	Then I entered the values into product loan from "ProductLoanInput" Sheet
		|2352-RBI-EI-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-ONTIME-DLR-CASH-Loanproduct.xlsx|	
	Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			| 2352-RBI-EI-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-ONTIME-DLR-CASH-Newcreateloan1.xlsx|
	  Then I verified the "Summary" details successfully 
	  			| 2352-RBI-EI-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-ONTIME-DLR-CASH-Newcreateloan1.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
	  			| 2352-RBI-EI-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-ONTIME-DLR-CASH-Newcreateloan1.xlsx|
	  And I verified the "Transactions" details successfully	
				| 2352-RBI-EI-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-ONTIME-DLR-CASH-Newcreateloan1.xlsx| 
				
	

@scenario4-2353-RBI-EI-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-ONTIME-BLR-CASH
	  Scenario: 2353-RBI-EI-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-ONTIME-BLR-CASH

	Given I setup the product loan "Setup"
		| Productloannavigation.xlsx |
	Then I entered the values into product loan from "ProductLoanInput" Sheet
		|2353-RBI-EI-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-ONTIME-BLR-CASH-Loanproduct.xlsx|	
	Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			| 2353-RBI-EI-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-ONTIME-BLR-CASH-Newcreateloan1.xlsx|
	  Then I verified the "Summary" details successfully 
	  			| 2353-RBI-EI-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-ONTIME-BLR-CASH-Newcreateloan1.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
	  			| 2353-RBI-EI-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-ONTIME-BLR-CASH-Newcreateloan1.xlsx|
	  And I verified the "Transactions" details successfully	
				| 2353-RBI-EI-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-ONTIME-BLR-CASH-Newcreateloan1.xlsx| 
		
			

@scenario5-2354-RBI-EPP-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-ONTIME-DLR-CASH
	  Scenario: 2354-RBI-EPP-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-ONTIME-DLR-CASH

	Given I setup the product loan "Setup"
		| Productloannavigation.xlsx |
	Then I entered the values into product loan from "ProductLoanInput" Sheet
		|2354-RBI-EPP-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-ONTIME-DLR-CASH-Loanproduct.xlsx|
	Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			| 2354-RBI-EPP-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-ONTIME-DLR-CASH-Newcreateloan1.xlsx|
	  Then I verified the "Summary" details successfully 
	  			| 2354-RBI-EPP-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-ONTIME-DLR-CASH-Newcreateloan1.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
	  			| 2354-RBI-EPP-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-ONTIME-DLR-CASH-Newcreateloan1.xlsx|
	  And I verified the "Transactions" details successfully	
				| 2354-RBI-EPP-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-ONTIME-DLR-CASH-Newcreateloan1.xlsx| 
		
	
@scenario6-2355-RBI-EPP-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-BLR-ONTIME-CASH
	  Scenario: 2355-RBI-EPP-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-BLR-ONTIME-CASH

	Given I setup the product loan "Setup"
		| Productloannavigation.xlsx |
	Then I entered the values into product loan from "ProductLoanInput" Sheet
		|2355-RBI-EPP-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-BLR-ONTIME-CASH-Loanproduct.xlsx|	
	Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			| 2355-RBI-EPP-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-BLR-ONTIME-CASH-Newcreateloan1.xlsx|
	  Then I verified the "Summary" details successfully 
	  			| 2355-RBI-EPP-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-BLR-ONTIME-CASH-Newcreateloan1.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
	  			| 2355-RBI-EPP-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-BLR-ONTIME-CASH-Newcreateloan1.xlsx|
	  And I verified the "Transactions" details successfully	
				| 2355-RBI-EPP-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-BLR-ONTIME-CASH-Newcreateloan1.xlsx| 
	  Then I make repayment and verified the following tabs
       			|2355-RBI-EPP-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-BLR-ONTIME-CASH-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|

@scenario7-2356-RBI-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-DLR-EARLY-CASH
	  Scenario: 2356-RBI-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-DLR-EARLY-CASH

	Given I setup the product loan "Setup"
		| Productloannavigation.xlsx |
	Then I entered the values into product loan from "ProductLoanInput" Sheet
		|2356-RBI-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-DLR-EARLY-CASH-Loanproduct.xlsx|	
	Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			| 2356-RBI-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-DLR-EARLY-CASH-Newcreateloan1.xlsx|
	  Then I verified the "Summary" details successfully 
	  			| 2356-RBI-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-DLR-EARLY-CASH-Newcreateloan1.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
	  			| 2356-RBI-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-DLR-EARLY-CASH-Newcreateloan1.xlsx|
	  And I verified the "Transactions" details successfully	
				| 2356-RBI-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-DLR-EARLY-CASH-Newcreateloan1.xlsx| 
	  Then I make repayment and verified the following tabs
       			|2356-RBI-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-DLR-EARLY-CASH-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
	  		

@scenario8-2357-RBI-EPP-DB-SAR-REC-NON-RNI-CTPD-DL-MD-TR-1-BLR-LATE-CASH
	  Scenario: 2357-RBI-EPP-DB-SAR-REC-NON-RNI-CTPD-DL-MD-TR-1-BLR-LATE-CASH

	Given I setup the product loan "Setup"
		| Productloannavigation.xlsx |
	Then I entered the values into product loan from "ProductLoanInput" Sheet
		|2357-RBI-EPP-DB-SAR-REC-NON-RNI-CTPD-DL-MD-TR-1-BLR-LATE-CASH-Loanproduct.xlsx|	
	Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			| 2357-RBI-EPP-DB-SAR-REC-NON-RNI-CTPD-DL-MD-TR-1-BLR-LATE-CASH-Newcreateloan1.xlsx|
	  Then I verified the "Summary" details successfully 
	  			| 2357-RBI-EPP-DB-SAR-REC-NON-RNI-CTPD-DL-MD-TR-1-BLR-LATE-CASH-Newcreateloan1.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
	  			| 2357-RBI-EPP-DB-SAR-REC-NON-RNI-CTPD-DL-MD-TR-1-BLR-LATE-CASH-Newcreateloan1.xlsx|
	  And I verified the "Transactions" details successfully	
				| 2357-RBI-EPP-DB-SAR-REC-NON-RNI-CTPD-DL-MD-TR-1-BLR-LATE-CASH-Newcreateloan1.xlsx| 
	  Then I make repayment and verified the following tabs
       			|2357-RBI-EPP-DB-SAR-REC-NON-RNI-CTPD-DL-MD-TR-1-BLR-LATE-CASH-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
	  					
@scenario9-2358-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-ONTIME-DLR-CASH
	  Scenario: 2358-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-ONTIME-DLR-CASH

#	Given I setup the product loan "Setup"
#		| Productloannavigation.xlsx |
#	Then I entered the values into product loan from "ProductLoanInput" Sheet
#		|2358-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-ONTIME-DLR-CASH-Loanproduct.xlsx|
	Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			| 2358-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-ONTIME-DLR-CASH-Newcreateloan1.xlsx|
	  And I disburse loan from "NewLoanInput" sheet
      			| 2358-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-ONTIME-DLR-CASH-Newcreateloan2.xlsx|
      Then I verified the "Summary" details successfully 
	  			| 2358-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-ONTIME-DLR-CASH-Newcreateloan2.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
	  			| 2358-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-ONTIME-DLR-CASH-Newcreateloan2.xlsx|
	  And I verified the "Transactions" details successfully	
				| 2358-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-ONTIME-DLR-CASH-Newcreateloan2.xlsx| 
		

@scenario10-2359-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-ONTIME-BLR-CASH
	  Scenario: 2359-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-ONTIME-BLR-CASH

#	Given I setup the product loan "Setup"
#		| Productloannavigation.xlsx |
#	Then I entered the values into product loan from "ProductLoanInput" Sheet
#		|2359-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-ONTIME-BLR-CASH-Loanproduct.xlsx|
	Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			| 2359-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-ONTIME-BLR-CASH-Newcreateloan1.xlsx|
	  And I disburse loan from "NewLoanInput" sheet
      			| 2359-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-ONTIME-BLR-CASH-Newcreateloan2.xlsx|
      Then I verified the "Summary" details successfully 
	  			| 2359-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-ONTIME-BLR-CASH-Newcreateloan2.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
	  			| 2359-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-ONTIME-BLR-CASH-Newcreateloan2.xlsx|
	  And I verified the "Transactions" details successfully	
				| 2359-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-ONTIME-BLR-CASH-Newcreateloan2.xlsx| 
		
		
@scenario11-2360-RBI-EI-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-ONTIME-DLR-CASH
	  Scenario: 2360-RBI-EI-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-ONTIME-DLR-CASH

#	Given I setup the product loan "Setup"
#		| Productloannavigation.xlsx |
#	Then I entered the values into product loan from "ProductLoanInput" Sheet
#		|2360-RBI-EI-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-ONTIME-DLR-CASH-Loanproduct.xlsx|
	Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			| 2360-RBI-EI-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-ONTIME-DLR-CASH-Newcreateloan1.xlsx|
	  And I disburse loan from "NewLoanInput" sheet
      			| 2360-RBI-EI-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-ONTIME-DLR-CASH-Newcreateloan2.xlsx|
      Then I verified the "Summary" details successfully 
	  			| 2360-RBI-EI-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-ONTIME-DLR-CASH-Newcreateloan2.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
	  			| 2360-RBI-EI-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-ONTIME-DLR-CASH-Newcreateloan2.xlsx|
	  And I verified the "Transactions" details successfully	
				| 2360-RBI-EI-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-ONTIME-DLR-CASH-Newcreateloan2.xlsx| 
		
		
@scenario12-2361-RBI-EI-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-ONTIME-BLR-CASH
	  Scenario: 2361-RBI-EI-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-ONTIME-BLR-CASH

#	Given I setup the product loan "Setup"
#		| Productloannavigation.xlsx |
#	Then I entered the values into product loan from "ProductLoanInput" Sheet
#		|2361-RBI-EI-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-ONTIME-BLR-CASH-Loanproduct.xlsx|
	Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			| 2361-RBI-EI-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-ONTIME-BLR-CASH-Newcreateloan1.xlsx|
	  And I disburse loan from "NewLoanInput" sheet
      			| 2361-RBI-EI-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-ONTIME-BLR-CASH-Newcreateloan2.xlsx|
	  Then I verified the "Summary" details successfully 
	  			| 2361-RBI-EI-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-ONTIME-BLR-CASH-Newcreateloan2.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
	  			| 2361-RBI-EI-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-ONTIME-BLR-CASH-Newcreateloan2.xlsx|
	  And I verified the "Transactions" details successfully	
				| 2361-RBI-EI-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-ONTIME-BLR-CASH-Newcreateloan2.xlsx| 
		
		
@scenario13-2362-RBI-EPP-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-ONTIME-DLR-CASH
	  Scenario: 2362-RBI-EPP-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-ONTIME-DLR-CASH

#	Given I setup the product loan "Setup"
#		| Productloannavigation.xlsx |
#	Then I entered the values into product loan from "ProductLoanInput" Sheet
#		|2362-RBI-EPP-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-ONTIME-DLR-CASH-Loanproduct.xlsx|		
	Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			| 2362-RBI-EPP-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-ONTIME-DLR-CASH-Newcreateloan1.xlsx|
	  And I disburse loan from "NewLoanInput" sheet
      			| 2362-RBI-EPP-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-ONTIME-DLR-CASH-Newcreateloan2.xlsx|
	  Then I verified the "Summary" details successfully 
	  			| 2362-RBI-EPP-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-ONTIME-DLR-CASH-Newcreateloan2.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
	  			| 2362-RBI-EPP-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-ONTIME-DLR-CASH-Newcreateloan2.xlsx|
	  And I verified the "Transactions" details successfully	
				| 2362-RBI-EPP-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-ONTIME-DLR-CASH-Newcreateloan2.xlsx| 
		
	
@scenario14-2363-RBI-EPP-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-BLR-OnTime-CASH
	  Scenario: 2363-RBI-EPP-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-BLR-OnTime-CASH

#	Given I setup the product loan "Setup"
#		| Productloannavigation.xlsx |
#	Then I entered the values into product loan from "ProductLoanInput" Sheet
#		|2363-RBI-EPP-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-BLR-OnTime-CASH-Loanproduct.xlsx|	
	Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			| 2363-RBI-EPP-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-BLR-OnTime-CASH-Newcreateloan1.xlsx|
	  Then I make repayment and verified the following tabs
       			|2363-RBI-EPP-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-BLR-OnTime-CASH-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
	  And I disburse loan from "NewLoanInput" sheet
      			| 2363-RBI-EPP-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-BLR-OnTime-CASH-Newcreateloan2.xlsx|
	  Then I verified the "Summary" details successfully 
	  			| 2363-RBI-EPP-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-BLR-OnTime-CASH-Newcreateloan2.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
	  			| 2363-RBI-EPP-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-BLR-OnTime-CASH-Newcreateloan2.xlsx|
	  And I verified the "Transactions" details successfully	
				| 2363-RBI-EPP-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-BLR-OnTime-CASH-Newcreateloan2.xlsx| 
		
		
@scenario15-2364-RBI-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-DLR-Early-CASH
	  Scenario: 2364-RBI-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-DLR-Early-CASH

#	Given I setup the product loan "Setup"
#		| Productloannavigation.xlsx |
#	Then I entered the values into product loan from "ProductLoanInput" Sheet
#		|2364-RBI-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-DLR-Early-CASH-Loanproduct.xlsx|
	Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			|2364-RBI-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-DLR-Early-CASH-Newcreateloan1.xlsx|
	  Then I make repayment and verified the following tabs
       			|2364-RBI-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-DLR-Early-CASH-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
	  And I disburse loan from "NewLoanInput" sheet
      			| 2364-RBI-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-DLR-Early-CASH-Newcreateloan2.xlsx|
	  Then I verified the "Summary" details successfully 
	  			| 2364-RBI-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-DLR-Early-CASH-Newcreateloan2.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
	  			| 2364-RBI-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-DLR-Early-CASH-Newcreateloan2.xlsx|
	  And I verified the "Transactions" details successfully	
				| 2364-RBI-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-DLR-Early-CASH-Newcreateloan2.xlsx| 
		
		
@scenario16-2365-RBI-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-BLR-Late-CASH
	  Scenario: 2365-RBI-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-BLR-Late-CASH

#	Given I setup the product loan "Setup"
#		| Productloannavigation.xlsx |
#	Then I entered the values into product loan from "ProductLoanInput" Sheet
#		|2365-RBI-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-BLR-Late-CASH-Loanproduct.xlsx|
	Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			|2365-RBI-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-BLR-Late-CASH-Newcreateloan1.xlsx|
	  Then I make repayment and verified the following tabs
       			|2365-RBI-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-BLR-Late-CASH-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
	  And I disburse loan from "NewLoanInput" sheet
      			| 2365-RBI-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-BLR-Late-CASH-Newcreateloan2.xlsx|			
	  Then I verified the "Summary" details successfully 
	  			| 2365-RBI-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-BLR-Late-CASH-Newcreateloan2.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
	  			| 2365-RBI-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-BLR-Late-CASH-Newcreateloan2.xlsx|
	  And I verified the "Transactions" details successfully	
				| 2365-RBI-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-BLR-Late-CASH-Newcreateloan2.xlsx| 

@scenario17-2400-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-BLR-EARLY-CASH
	  Scenario: 2400-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-BLR-EARLY-CASH
	
	Given I setup the product loan "Setup"
		| Productloannavigation.xlsx |
	Then I entered the values into product loan from "ProductLoanInput" Sheet
		|2400-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-BLR-EARLY-CASH-Loanproduct.xlsx|
	  Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			| 2400-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-BLR-EARLY-CASH-Newcreateloan1.xlsx|
	  Then I verified the "Summary" details successfully 
	  			| 2400-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-BLR-EARLY-CASH-Newcreateloan1.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
	  			| 2400-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-BLR-EARLY-CASH-Newcreateloan1.xlsx|
	  And I verified the "Transactions" details successfully	
				| 2400-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-BLR-EARLY-CASH-Newcreateloan1.xlsx|
	  Then I make repayment and verified the following tabs
       			|2400-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-BLR-EARLY-CASH-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
	  			

@scenario18-2401-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-DLR-LATE-CASH
	  Scenario: 2401-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-DLR-LATE-CASH  

		Given I setup the product loan "Setup"
		| Productloannavigation.xlsx |
	Then I entered the values into product loan from "ProductLoanInput" Sheet
		|2401-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-DLR-LATE-CASH-Loanproduct.xlsx|	
	  Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			| 2401-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-DLR-LATE-CASH-Newcreateloan1.xlsx|
	  Then I verified the "Summary" details successfully 
	  			| 2401-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-DLR-LATE-CASH-Newcreateloan1.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
	  			| 2401-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-DLR-LATE-CASH-Newcreateloan1.xlsx|
	  And I verified the "Transactions" details successfully	
				| 2401-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-DLR-LATE-CASH-Newcreateloan1.xlsx| 
	  Then I make repayment and verified the following tabs
       			|2401-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-DLR-LATE-CASH-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
	
@scenario19-2402-MS-EI-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-ONTIME-DLR-CASH
	  Scenario: 2402-MS-EI-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-ONTIME-DLR-CASH  

	Given I setup the product loan "Setup"
		| Productloannavigation.xlsx |
	Then I entered the values into product loan from "ProductLoanInput" Sheet
		|2402-MS-EI-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-ONTIME-DLR-CASH-Loanproduct.xlsx|	
	Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			| 2402-MS-EI-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-ONTIME-DLR-CASH-Newcreateloan1.xlsx|
	  Then I verified the "Summary" details successfully 
	  			| 2402-MS-EI-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-ONTIME-DLR-CASH-Newcreateloan1.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
	  			| 2402-MS-EI-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-ONTIME-DLR-CASH-Newcreateloan1.xlsx|
	  And I verified the "Transactions" details successfully	
				| 2402-MS-EI-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-ONTIME-DLR-CASH-Newcreateloan1.xlsx| 
				
	

@scenario20-2403-MS-EI-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-ONTIME-BLR-CASH
	  Scenario: 2403-MS-EI-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-ONTIME-BLR-CASH

	Given I setup the product loan "Setup"
		| Productloannavigation.xlsx |
	Then I entered the values into product loan from "ProductLoanInput" Sheet
		|2403-MS-EI-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-ONTIME-BLR-CASH-Loanproduct.xlsx|	
	Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			| 2403-MS-EI-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-ONTIME-BLR-CASH-Newcreateloan1.xlsx|
	  Then I verified the "Summary" details successfully 
	  			| 2403-MS-EI-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-ONTIME-BLR-CASH-Newcreateloan1.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
	  			| 2403-MS-EI-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-ONTIME-BLR-CASH-Newcreateloan1.xlsx|
	  And I verified the "Transactions" details successfully	
				| 2403-MS-EI-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-ONTIME-BLR-CASH-Newcreateloan1.xlsx| 
		
			

@scenario21-2404-MS-EPP-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-ONTIME-DLR-CASH
	  Scenario: 2404-MS-EPP-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-ONTIME-DLR-CASH

	Given I setup the product loan "Setup"
		| Productloannavigation.xlsx |
	Then I entered the values into product loan from "ProductLoanInput" Sheet
		|2404-MS-EPP-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-ONTIME-DLR-CASH-Loanproduct.xlsx|
	Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			| 2404-MS-EPP-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-ONTIME-DLR-CASH-Newcreateloan1.xlsx|
	  Then I verified the "Summary" details successfully 
	  			| 2404-MS-EPP-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-ONTIME-DLR-CASH-Newcreateloan1.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
	  			| 2404-MS-EPP-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-ONTIME-DLR-CASH-Newcreateloan1.xlsx|
	  And I verified the "Transactions" details successfully	
				| 2404-MS-EPP-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-ONTIME-DLR-CASH-Newcreateloan1.xlsx| 
		
	
@scenario22-2405-MS-EPP-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-BLR-ONTIME-CASH
	  Scenario: 2405-MS-EPP-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-BLR-ONTIME-CASH

	Given I setup the product loan "Setup"
		| Productloannavigation.xlsx |
	Then I entered the values into product loan from "ProductLoanInput" Sheet
		|2405-MS-EPP-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-BLR-ONTIME-CASH-Loanproduct.xlsx|	
	Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			| 2405-MS-EPP-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-BLR-ONTIME-CASH-Newcreateloan1.xlsx|
	  Then I verified the "Summary" details successfully 
	  			| 2405-MS-EPP-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-BLR-ONTIME-CASH-Newcreateloan1.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
	  			| 2405-MS-EPP-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-BLR-ONTIME-CASH-Newcreateloan1.xlsx|
	  And I verified the "Transactions" details successfully	
				| 2405-MS-EPP-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-BLR-ONTIME-CASH-Newcreateloan1.xlsx| 
	  Then I make repayment and verified the following tabs
       			|2405-MS-EPP-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-BLR-ONTIME-CASH-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|

@scenario23-2406-MS-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-DLR-EARLY-CASH
	  Scenario: 2406-MS-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-DLR-EARLY-CASH

	Given I setup the product loan "Setup"
		| Productloannavigation.xlsx |
	Then I entered the values into product loan from "ProductLoanInput" Sheet
		|2406-MS-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-DLR-EARLY-CASH-Loanproduct.xlsx|	
	Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			| 2406-MS-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-DLR-EARLY-CASH-Newcreateloan1.xlsx|
	  Then I verified the "Summary" details successfully 
	  			| 2406-MS-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-DLR-EARLY-CASH-Newcreateloan1.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
	  			| 2406-MS-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-DLR-EARLY-CASH-Newcreateloan1.xlsx|
	  And I verified the "Transactions" details successfully	
				| 2406-MS-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-DLR-EARLY-CASH-Newcreateloan1.xlsx| 
	  Then I make repayment and verified the following tabs
       			|2406-MS-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-DLR-EARLY-CASH-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
	  		

@scenario24-2407-MS-EPP-DB-SAR-REC-NON-RNI-CTPD-DL-MD-TR-1-BLR-LATE-CASH
	  Scenario: 2407-MS-EPP-DB-SAR-REC-NON-RNI-CTPD-DL-MD-TR-1-BLR-LATE-CASH

	Given I setup the product loan "Setup"
		| Productloannavigation.xlsx |
	Then I entered the values into product loan from "ProductLoanInput" Sheet
		|2407-MS-EPP-DB-SAR-REC-NON-RNI-CTPD-DL-MD-TR-1-BLR-LATE-CASH-Loanproduct.xlsx|	
	Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			| 2407-MS-EPP-DB-SAR-REC-NON-RNI-CTPD-DL-MD-TR-1-BLR-LATE-CASH-Newcreateloan1.xlsx|
	  Then I verified the "Summary" details successfully 
	  			| 2407-MS-EPP-DB-SAR-REC-NON-RNI-CTPD-DL-MD-TR-1-BLR-LATE-CASH-Newcreateloan1.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
	  			| 2407-MS-EPP-DB-SAR-REC-NON-RNI-CTPD-DL-MD-TR-1-BLR-LATE-CASH-Newcreateloan1.xlsx|
	  And I verified the "Transactions" details successfully	
				| 2407-MS-EPP-DB-SAR-REC-NON-RNI-CTPD-DL-MD-TR-1-BLR-LATE-CASH-Newcreateloan1.xlsx| 
	  Then I make repayment and verified the following tabs
       			|2407-MS-EPP-DB-SAR-REC-NON-RNI-CTPD-DL-MD-TR-1-BLR-LATE-CASH-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|

@scenario25-2408-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-ONTIME-DLR-CASH
	  Scenario: 2408-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-ONTIME-DLR-CASH

#	Given I setup the product loan "Setup"
#		| Productloannavigation.xlsx |
#	Then I entered the values into product loan from "ProductLoanInput" Sheet
#		|2408-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-ONTIME-DLR-CASH-Loanproduct.xlsx|
	Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			| 2408-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-ONTIME-DLR-CASH-Newcreateloan1.xlsx|
	  And I disburse loan from "NewLoanInput" sheet
      			| 2408-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-ONTIME-DLR-CASH-Newcreateloan2.xlsx|
      Then I verified the "Summary" details successfully 
	  			| 2408-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-ONTIME-DLR-CASH-Newcreateloan2.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
	  			| 2408-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-ONTIME-DLR-CASH-Newcreateloan2.xlsx|
	  And I verified the "Transactions" details successfully	
				| 2408-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-ONTIME-DLR-CASH-Newcreateloan2.xlsx| 
		

@scenario26-2409-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-ONTIME-BLR-CASH
	  Scenario: 2409-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-ONTIME-BLR-CASH

#	Given I setup the product loan "Setup"
#		| Productloannavigation.xlsx |
#	Then I entered the values into product loan from "ProductLoanInput" Sheet
#		|2409-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-ONTIME-BLR-CASH-Loanproduct.xlsx|
	Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			| 2409-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-ONTIME-BLR-CASH-Newcreateloan1.xlsx|
	  And I disburse loan from "NewLoanInput" sheet
      			| 2409-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-ONTIME-BLR-CASH-Newcreateloan2.xlsx|
      Then I verified the "Summary" details successfully 
	  			| 2409-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-ONTIME-BLR-CASH-Newcreateloan2.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
	  			| 2409-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-ONTIME-BLR-CASH-Newcreateloan2.xlsx|
	  And I verified the "Transactions" details successfully	
				| 2409-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-ONTIME-BLR-CASH-Newcreateloan2.xlsx| 
		
		
@scenario27-2410-MS-EI-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-ONTIME-DLR-CASH
	  Scenario: 2410-MS-EI-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-ONTIME-DLR-CASH

#	Given I setup the product loan "Setup"
#		| Productloannavigation.xlsx |
#	Then I entered the values into product loan from "ProductLoanInput" Sheet
#		|2410-MS-EI-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-ONTIME-DLR-CASH-Loanproduct.xlsx|
	Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			| 2410-MS-EI-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-ONTIME-DLR-CASH-Newcreateloan1.xlsx|
	  And I disburse loan from "NewLoanInput" sheet
      			| 2410-MS-EI-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-ONTIME-DLR-CASH-Newcreateloan2.xlsx|
      Then I verified the "Summary" details successfully 
	  			| 2410-MS-EI-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-ONTIME-DLR-CASH-Newcreateloan2.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
	  			| 2410-MS-EI-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-ONTIME-DLR-CASH-Newcreateloan2.xlsx|
	  And I verified the "Transactions" details successfully	
				| 2410-MS-EI-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-ONTIME-DLR-CASH-Newcreateloan2.xlsx| 
		
		
@scenario28-2411-MS-EI-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-ONTIME-BLR-CASH
	  Scenario: 2411-MS-EI-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-ONTIME-BLR-CASH

#	Given I setup the product loan "Setup"
#		| Productloannavigation.xlsx |
#	Then I entered the values into product loan from "ProductLoanInput" Sheet
#		|2411-MS-EI-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-ONTIME-BLR-CASH-Loanproduct.xlsx|
	Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			| 2411-MS-EI-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-ONTIME-BLR-CASH-Newcreateloan1.xlsx|
	  And I disburse loan from "NewLoanInput" sheet
      			| 2411-MS-EI-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-ONTIME-BLR-CASH-Newcreateloan2.xlsx|
	  Then I verified the "Summary" details successfully 
	  			| 2411-MS-EI-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-ONTIME-BLR-CASH-Newcreateloan2.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
	  			| 2411-MS-EI-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-ONTIME-BLR-CASH-Newcreateloan2.xlsx|
	  And I verified the "Transactions" details successfully	
				| 2411-MS-EI-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-ONTIME-BLR-CASH-Newcreateloan2.xlsx| 
		
		
@scenario29-2412-MS-EPP-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-ONTIME-DLR-CASH
	  Scenario: 2412-MS-EPP-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-ONTIME-DLR-CASH

#	Given I setup the product loan "Setup"
#		| Productloannavigation.xlsx |
#	Then I entered the values into product loan from "ProductLoanInput" Sheet
#		|2412-MS-EPP-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-ONTIME-DLR-CASH-Loanproduct.xlsx|		
	Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			| 2412-MS-EPP-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-ONTIME-DLR-CASH-Newcreateloan1.xlsx|
	  And I disburse loan from "NewLoanInput" sheet
      			| 2412-MS-EPP-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-ONTIME-DLR-CASH-Newcreateloan2.xlsx|
	  Then I verified the "Summary" details successfully 
	  			| 2412-MS-EPP-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-ONTIME-DLR-CASH-Newcreateloan2.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
	  			| 2412-MS-EPP-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-ONTIME-DLR-CASH-Newcreateloan2.xlsx|
	  And I verified the "Transactions" details successfully	
				| 2412-MS-EPP-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-ONTIME-DLR-CASH-Newcreateloan2.xlsx| 
		
	
@scenario30-2413-MS-EPP-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-BLR-OnTime-CASH
	  Scenario: 2413-MS-EPP-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-BLR-OnTime-CASH

#	Given I setup the product loan "Setup"
#		| Productloannavigation.xlsx |
#	Then I entered the values into product loan from "ProductLoanInput" Sheet
#		|2413-MS-EPP-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-BLR-OnTime-CASH-Loanproduct.xlsx|	
	Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			| 2413-MS-EPP-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-BLR-OnTime-CASH-Newcreateloan1.xlsx|
	  Then I make repayment and verified the following tabs
       			|2413-MS-EPP-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-BLR-OnTime-CASH-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
	  And I disburse loan from "NewLoanInput" sheet
      			| 2413-MS-EPP-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-BLR-OnTime-CASH-Newcreateloan2.xlsx|
	  Then I verified the "Summary" details successfully 
	  			| 2413-MS-EPP-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-BLR-OnTime-CASH-Newcreateloan2.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
	  			| 2413-MS-EPP-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-BLR-OnTime-CASH-Newcreateloan2.xlsx|
	  And I verified the "Transactions" details successfully	
				| 2413-MS-EPP-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-BLR-OnTime-CASH-Newcreateloan2.xlsx| 
		
		
@scenario31-2414-MS-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-DLR-Early-CASH
	  Scenario: 2414-MS-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-DLR-Early-CASH

#	Given I setup the product loan "Setup"
#		| Productloannavigation.xlsx |
#	Then I entered the values into product loan from "ProductLoanInput" Sheet
#		|2414-MS-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-DLR-Early-CASH-Loanproduct.xlsx|
	Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			|2414-MS-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-DLR-Early-CASH-Newcreateloan1.xlsx|
	  Then I make repayment and verified the following tabs
       			|2414-MS-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-DLR-Early-CASH-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
	  And I disburse loan from "NewLoanInput" sheet
      			| 2414-MS-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-DLR-Early-CASH-Newcreateloan2.xlsx|
	  Then I verified the "Summary" details successfully 
	  			| 2414-MS-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-DLR-Early-CASH-Newcreateloan2.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
	  			| 2414-MS-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-DLR-Early-CASH-Newcreateloan2.xlsx|
	  And I verified the "Transactions" details successfully	
				| 2414-MS-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-DLR-Early-CASH-Newcreateloan2.xlsx| 
		
		
@scenario32-2415-MS-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-BLR-Late-CASH
	  Scenario: 2415-MS-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-BLR-Late-CASH

#	Given I setup the product loan "Setup"
#		| Productloannavigation.xlsx |
#	Then I entered the values into product loan from "ProductLoanInput" Sheet
		|2415-MS-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-BLR-Late-CASH-Loanproduct.xlsx|
	Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			|2415-MS-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-BLR-Late-CASH-Newcreateloan1.xlsx|
	  Then I make repayment and verified the following tabs
       			|2415-MS-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-BLR-Late-CASH-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
	  And I disburse loan from "NewLoanInput" sheet
      			| 2415-MS-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-BLR-Late-CASH-Newcreateloan2.xlsx|			
	  Then I verified the "Summary" details successfully 
	  			| 2415-MS-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-BLR-Late-CASH-Newcreateloan2.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
	  			| 2415-MS-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-BLR-Late-CASH-Newcreateloan2.xlsx|
	  And I verified the "Transactions" details successfully	
				| 2415-MS-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-BLR-Late-CASH-Newcreateloan2.xlsx| 
       			
	
=======
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
>>>>>>> 10ecfb8927341c12eea6300df0a0a13d9fc358e2

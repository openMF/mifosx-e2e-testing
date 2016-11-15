Feature:Floating/Foreclosure
Background:
	Given I navigate to mifos using "default#/"
	And I login into mifos site using "Login" excel sheet
		| Login.xlsx  |
	Then I should see logged in successfully

@scenario1-2350-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-BLR-EARLY-CASH
	  Scenario: 2350-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-BLR-EARLY-CASH  
	
#	Given I Define floating rates for loan products from "FloatingRates" Sheet
#		|2350-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-BLR-EARLY-CASH-Loanproduct.xlsx|
	Given I setup the product loan "Setup"
		| Productloannavigation.xlsx |
	Then I entered the values into product loan from "ProductLoanInput" Sheet
		|2350-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-BLR-EARLY-CASH-Loanproduct.xlsx|
	  Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
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
	  Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
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

@scenario9-2358-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-DLR-EARLY-CASH
	  Scenario: 2358-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-DLR-EARLY-CASH

	Given I setup the product loan "Setup"
		| Productloannavigation.xlsx |
	Then I entered the values into product loan from "ProductLoanInput" Sheet
		|2358-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-DLR-EARLY-CASH-Loanproduct.xlsx|
		 
	Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			| 2358-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-DLR-EARLY-CASH-Newcreateloan1.xlsx|
	  Then I verified the "Summary" details successfully 
	  			| 2358-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-DLR-EARLY-CASH-Newcreateloan1.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
	  			| 2358-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-DLR-EARLY-CASH-Newcreateloan1.xlsx|
	  Then I make repayment and verified the following tabs
      			| 2358-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-DLR-EARLY-CASH-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
	  And I disburse loan from "NewLoanInput" sheet
      			| 2358-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-DLR-EARLY-CASH-Newcreateloan2.xlsx|
      Then I verified the "Summary" details successfully 
	  			| 2358-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-DLR-EARLY-CASH-Newcreateloan2.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
	  			| 2358-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-DLR-EARLY-CASH-Newcreateloan2.xlsx|
	  And I verified the "Transactions" details successfully	
				| 2358-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-DLR-EARLY-CASH-Newcreateloan2.xlsx| 

@scenario10-2359-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-BLR-ONTIME-CASH
	  Scenario: 2359-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-BLR-ONTIME-CASH

	Given I setup the product loan "Setup"
		| Productloannavigation.xlsx |
	Then I entered the values into product loan from "ProductLoanInput" Sheet
		|2359-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-BLR-ONTIME-CASH-Loanproduct.xlsx|
		 
	Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			| 2359-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-BLR-ONTIME-CASH-Newcreateloan1.xlsx|
	  Then I verified the "Summary" details successfully 
	  			| 2359-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-BLR-ONTIME-CASH-Newcreateloan1.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
	  			| 2359-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-BLR-ONTIME-CASH-Newcreateloan1.xlsx|
	  Then I make repayment and verified the following tabs
      			| 2359-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-BLR-ONTIME-CASH-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
	  And I disburse loan from "NewLoanInput" sheet
      			| 2359-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-BLR-ONTIME-CASH-Newcreateloan2.xlsx|
      Then I verified the "Summary" details successfully 
	  			| 2359-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-BLR-ONTIME-CASH-Newcreateloan2.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
	  			| 2359-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-BLR-ONTIME-CASH-Newcreateloan2.xlsx|
	  And I verified the "Transactions" details successfully	
				| 2359-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-BLR-ONTIME-CASH-Newcreateloan2.xlsx| 
		
@scenario11-2360-RBI-EI-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-DLR-LATE-CASH
	  Scenario: 2360-RBI-EI-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-DLR-LATE-CASH

	Given I setup the product loan "Setup"
		| Productloannavigation.xlsx |
	Then I entered the values into product loan from "ProductLoanInput" Sheet
		|2360-RBI-EI-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-DLR-LATE-CASH-Loanproduct.xlsx|
		 
	Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			| 2360-RBI-EI-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-DLR-LATE-CASH-Newcreateloan1.xlsx|
	  Then I verified the "Summary" details successfully 
	  			| 2360-RBI-EI-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-DLR-LATE-CASH-Newcreateloan1.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
	  			| 2360-RBI-EI-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-DLR-LATE-CASH-Newcreateloan1.xlsx|
	  Then I make repayment and verified the following tabs
      			| 2360-RBI-EI-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-DLR-LATE-CASH-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
	  And I disburse loan from "NewLoanInput" sheet
      			| 2360-RBI-EI-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-DLR-LATE-CASH-Newcreateloan2.xlsx|
      Then I verified the "Summary" details successfully 
	  			| 2360-RBI-EI-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-DLR-LATE-CASH-Newcreateloan2.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
	  			| 2360-RBI-EI-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-DLR-LATE-CASH-Newcreateloan2.xlsx|
	  And I verified the "Transactions" details successfully	
				| 2360-RBI-EI-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-DLR-LATE-CASH-Newcreateloan2.xlsx| 
				
@scenario12-2361-RBI-EI-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-BLR-ONTIME-CASH
	  Scenario: 2361-RBI-EI-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-BLR-ONTIME-CASH

	Given I setup the product loan "Setup"
		| Productloannavigation.xlsx |
	Then I entered the values into product loan from "ProductLoanInput" Sheet
		|2361-RBI-EI-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-BLR-ONTIME-CASH-Loanproduct.xlsx|
		 
	Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			| 2361-RBI-EI-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-BLR-ONTIME-CASH-Newcreateloan1.xlsx|
	  Then I verified the "Summary" details successfully 
	  			| 2361-RBI-EI-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-BLR-ONTIME-CASH-Newcreateloan1.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
	  			| 2361-RBI-EI-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-BLR-ONTIME-CASH-Newcreateloan1.xlsx|
	  Then I make repayment and verified the following tabs
      			| 2361-RBI-EI-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-BLR-ONTIME-CASH-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
	  And I disburse loan from "NewLoanInput" sheet
      			| 2361-RBI-EI-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-BLR-ONTIME-CASH-Newcreateloan2.xlsx|
      Then I verified the "Summary" details successfully 
	  			| 2361-RBI-EI-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-BLR-ONTIME-CASH-Newcreateloan2.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
	  			| 2361-RBI-EI-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-BLR-ONTIME-CASH-Newcreateloan2.xlsx|
	  And I verified the "Transactions" details successfully	
				| 2361-RBI-EI-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-BLR-ONTIME-CASH-Newcreateloan2.xlsx| 
												
@scenario13-2362-RBI-EPP-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-DLR-EARLY-CASH
	  Scenario: 2362-RBI-EPP-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-DLR-EARLY-CASH

	Given I setup the product loan "Setup"
		| Productloannavigation.xlsx |
	Then I entered the values into product loan from "ProductLoanInput" Sheet
		|2362-RBI-EPP-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-DLR-EARLY-CASH-Loanproduct.xlsx|
		 
	Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			| 2362-RBI-EPP-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-DLR-EARLY-CASH-Newcreateloan1.xlsx|
	  Then I verified the "Summary" details successfully 
	  			| 2362-RBI-EPP-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-DLR-EARLY-CASH-Newcreateloan1.xlsx|
	 Then I make repayment and verified the following tabs
      			| 2362-RBI-EPP-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-DLR-EARLY-CASH-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
	  And I disburse loan from "NewLoanInput" sheet
      			| 2362-RBI-EPP-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-DLR-EARLY-CASH-Newcreateloan2.xlsx|
      Then I verified the "Summary" details successfully 
	  			| 2362-RBI-EPP-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-DLR-EARLY-CASH-Newcreateloan2.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
	  			| 2362-RBI-EPP-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-DLR-EARLY-CASH-Newcreateloan2.xlsx|
	  And I verified the "Transactions" details successfully	
				| 2362-RBI-EPP-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-DLR-EARLY-CASH-Newcreateloan2.xlsx| 
				
@scenario14-2363-RBI-EPP-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-BLR-ONTIME-CASH
	  Scenario: 2363-RBI-EPP-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-BLR-ONTIME-CASH

	Given I setup the product loan "Setup"
		| Productloannavigation.xlsx |
	Then I entered the values into product loan from "ProductLoanInput" Sheet
		|2363-RBI-EPP-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-BLR-ONTIME-CASH-Loanproduct.xlsx|

	Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			| 2363-RBI-EPP-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-BLR-ONTIME-CASH-Newcreateloan1.xlsx|
	   Then I verified the "Summary" details successfully 
	  			| 2363-RBI-EPP-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-BLR-ONTIME-CASH-Newcreateloan1.xlsx|
	  Then I make repayment and verified the following tabs
       			| 2363-RBI-EPP-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-BLR-ONTIME-CASH-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
	  And I disburse loan from "NewLoanInput" sheet
      			| 2363-RBI-EPP-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-BLR-ONTIME-CASH-Newcreateloan2.xlsx|
      Then I verified the "Summary" details successfully 
	  			| 2363-RBI-EPP-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-BLR-ONTIME-CASH-Newcreateloan2.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
	  			| 2363-RBI-EPP-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-BLR-ONTIME-CASH-Newcreateloan2.xlsx|
	  And I verified the "Transactions" details successfully	
				| 2363-RBI-EPP-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-BLR-ONTIME-CASH-Newcreateloan2.xlsx| 				
								
@scenario15-2364-RBI-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-DLR-LATE-CASH
	  Scenario: 2364-RBI-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-DLR-LATE-CASH

	Given I setup the product loan "Setup"
		| Productloannavigation.xlsx |
	Then I entered the values into product loan from "ProductLoanInput" Sheet
		|2364-RBI-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-DLR-LATE-CASH-Loanproduct.xlsx|

	Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			| 2364-RBI-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-DLR-LATE-CASH-Newcreateloan1.xlsx|
	  Then I verified the "Summary" details successfully 
	  			| 2364-RBI-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-DLR-LATE-CASH-Newcreateloan1.xlsx|
	  Then I make repayment and verified the following tabs
       			| 2364-RBI-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-DLR-LATE-CASH-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
	  And I disburse loan from "NewLoanInput" sheet
      			| 2364-RBI-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-DLR-LATE-CASH-Newcreateloan2.xlsx|
      Then I verified the "Summary" details successfully 
	  			| 2364-RBI-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-DLR-LATE-CASH-Newcreateloan2.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
	  			| 2364-RBI-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-DLR-LATE-CASH-Newcreateloan2.xlsx|
	  And I verified the "Transactions" details successfully	
				| 2364-RBI-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-DLR-LATE-CASH-Newcreateloan2.xlsx| 				
				
@scenario16-2365-RBI-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-BLR-ONTIME-CASH
	  Scenario: 2365-RBI-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-BLR-ONTIME-CASH

	Given I setup the product loan "Setup"
		| Productloannavigation.xlsx |
	Then I entered the values into product loan from "ProductLoanInput" Sheet
		|2365-RBI-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-BLR-ONTIME-CASH-Loanproduct.xlsx|

	Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			| 2365-RBI-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-BLR-ONTIME-CASH-Newcreateloan1.xlsx|
	  Then I verified the "Summary" details successfully 
	  			| 2365-RBI-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-BLR-ONTIME-CASH-Newcreateloan1.xlsx|
	  Then I make repayment and verified the following tabs
       			| 2365-RBI-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-BLR-ONTIME-CASH-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
	  And I disburse loan from "NewLoanInput" sheet
      			| 2365-RBI-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-BLR-ONTIME-CASH-Newcreateloan2.xlsx|
      Then I verified the "Summary" details successfully 
	  			| 2365-RBI-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-BLR-ONTIME-CASH-Newcreateloan2.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
	  			| 2365-RBI-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-BLR-ONTIME-CASH-Newcreateloan2.xlsx|
	  And I verified the "Transactions" details successfully	
				| 2365-RBI-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-BLR-ONTIME-CASH-Newcreateloan2.xlsx|

@scenario17-2366-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-Uncheck-FR-BLR
	  Scenario: 2366-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-Uncheck-FR-BLR

	Given I setup the product loan "Setup"
		| Productloannavigation.xlsx |
	Then I entered the values into product loan from "ProductLoanInput" Sheet
		|2366-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-Uncheck-FR-BLR-Loanproduct.xlsx|
		 
	Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			| 2366-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-Uncheck-FR-BLR-Newcreateloan1.xlsx|
	 Then I verified the "Summary" details successfully 
	  			| 2366-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-Uncheck-FR-BLR-Newcreateloan1.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
	  			| 2366-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-Uncheck-FR-BLR-Newcreateloan1.xlsx|

@scenario18-2367-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-ModifyApp-EDIT-IRD-Uncheck-FR-BLR
	  Scenario: 2367-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-ModifyApp-EDIT-IRD-Uncheck-FR-BLR

	Given I setup the product loan "Setup"
		| Productloannavigation.xlsx |
	Then I entered the values into product loan from "ProductLoanInput" Sheet
		|2367-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-ModifyApp-EDIT-IRD-Uncheck-FR-BLR-Loanproduct.xlsx|
		 
	Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			| 2367-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-ModifyApp-EDIT-IRD-Uncheck-FR-BLR-Newcreateloan1.xlsx|
	  And I modify New Loan Account from "ModifyLoan" sheet
	  			| 2367-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-ModifyApp-EDIT-IRD-Uncheck-FR-BLR-Newcreateloan1.xlsx|
	  Then I verified the "Summary" details successfully 
	  			| 2367-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-ModifyApp-EDIT-IRD-Uncheck-FR-BLR-Newcreateloan1.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
	  			| 2367-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-ModifyApp-EDIT-IRD-Uncheck-FR-BLR-Newcreateloan1.xlsx|
	  			
@scenario19-2368-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-ModifyApp-EDIT-IRD-Check-FR-BLR
	  Scenario: 2368-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-ModifyApp-EDIT-IRD-Check-FR-BLR

	Given I setup the product loan "Setup"
		| Productloannavigation.xlsx |
	Then I entered the values into product loan from "ProductLoanInput" Sheet
		|2368-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-ModifyApp-EDIT-IRD-Check-FR-BLR-Loanproduct.xlsx|
		 
	Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			| 2368-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-ModifyApp-EDIT-IRD-Check-FR-BLR-Newcreateloan1.xlsx|
	  And I modify New Loan Account from "ModifyLoan" sheet
	  			| 2368-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-ModifyApp-EDIT-IRD-Check-FR-BLR-Newcreateloan1.xlsx|
	  Then I verified the "Summary" details successfully 
	  			| 2368-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-ModifyApp-EDIT-IRD-Check-FR-BLR-Newcreateloan1.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
	  			| 2368-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-ModifyApp-EDIT-IRD-Check-FR-BLR-Newcreateloan1.xlsx|

@scenario20-2369-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-EDIT-ApproveDate-BLR
	  Scenario: 2369-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-EDIT-ApproveDate-BLR

	Given I setup the product loan "Setup"
		| Productloannavigation.xlsx |
	Then I entered the values into product loan from "ProductLoanInput" Sheet
		|2369-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-EDIT-ApproveDate-BLR-Loanproduct.xlsx|
		 
	Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			| 2369-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-EDIT-ApproveDate-BLR-Newcreateloan1.xlsx|
	  Then I verified the "Summary" details successfully 
	  			| 2369-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-EDIT-ApproveDate-BLR-Newcreateloan1.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
	  			| 2369-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-EDIT-ApproveDate-BLR-Newcreateloan1.xlsx|
	  			
@scenario21-2370-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-MOROTORIUM-PRINCIPAL-3-BLR
	  Scenario: 2370-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-MOROTORIUM-PRINCIPAL-3-BLR

	Given I setup the product loan "Setup"
		| Productloannavigation.xlsx |
	Then I entered the values into product loan from "ProductLoanInput" Sheet
		|2370-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-MOROTORIUM-PRINCIPAL-3-BLR-Loanproduct.xlsx|
		 
	Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			| 2370-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-MOROTORIUM-PRINCIPAL-3-BLR-Newcreateloan1.xlsx|
	  Then I verified the "Summary" details successfully 
	  			| 2370-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-MOROTORIUM-PRINCIPAL-3-BLR-Newcreateloan1.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
	  			| 2370-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-MOROTORIUM-PRINCIPAL-3-BLR-Newcreateloan1.xlsx|
	  			
@scenario22-2371-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-MOROTORIUM-INTEREST-3-BLR
	  Scenario: 2371-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-MOROTORIUM-INTEREST-3-BLR

	Given I setup the product loan "Setup"
		| Productloannavigation.xlsx |
	Then I entered the values into product loan from "ProductLoanInput" Sheet
		|2371-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-MOROTORIUM-INTEREST-3-BLR-Loanproduct.xlsx|
		 
	Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			| 2371-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-MOROTORIUM-INTEREST-3-BLR-Newcreateloan1.xlsx|
	  Then I verified the "Summary" details successfully 
	  			| 2371-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-MOROTORIUM-INTEREST-3-BLR-Newcreateloan1.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
	  			| 2371-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-MOROTORIUM-INTEREST-3-BLR-Newcreateloan1.xlsx|
	  			
@scenario23-2372-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-MOROTORIUM-PRINCIPAL+INT-3-BLR
	  Scenario: 2372-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-MOROTORIUM-PRINCIPAL+INT-3-BLR

	Given I setup the product loan "Setup"
		| Productloannavigation.xlsx |
	Then I entered the values into product loan from "ProductLoanInput" Sheet
		|2372-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-MOROTORIUM-PRINCIPAL+INT-3-BLR-Loanproduct.xlsx|
		 
	Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			| 2372-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-MOROTORIUM-PRINCIPAL+INT-3-BLR-Newcreateloan1.xlsx|
	  Then I verified the "Summary" details successfully 
	  			| 2372-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-MOROTORIUM-PRINCIPAL+INT-3-BLR-Newcreateloan1.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
	  			| 2372-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-MOROTORIUM-PRINCIPAL+INT-3-BLR-Newcreateloan1.xlsx|	

@scenario24-2373-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-PREPAY-ON-15-JAN-BLR
	  Scenario: 2373-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-PREPAY-ON-15-JAN-BLR

	Given I setup the product loan "Setup"
		| Productloannavigation.xlsx |
	Then I entered the values into product loan from "ProductLoanInput" Sheet
		|2373-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-PREPAY-ON-15-JAN-BLR-Loanproduct.xlsx|
		 
	Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			| 2373-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-PREPAY-ON-15-JAN-BLR-Newcreateloan1.xlsx|
	  Then I "Make Pre Payment" and verified the following tabs
	  			|2373-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-PREPAY-ON-15-JAN-BLR-Newcreateloan1.xlsx|Prepay Loan|Summary|Repayment Schedule|Transactions|
	  			
@scenario25-2374-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-OVERDUE-FEE-%LOANAMT+INT-BLR
	  Scenario: 2374-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-OVERDUE-FEE-%LOANAMT+INT-BLR  

	 Given I setup the product loan "Setup"
		| Productloannavigation.xlsx |
	 Then I entered the values into product loan from "ProductLoanInput" Sheet
		|2374-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-OVERDUE-FEE-%LOANAMT+INT-BLR-Loanproduct.xlsx|
	
	 Given I setup the clients 
	 Then I entered the values into client from "Input" sheet
		|Createclient.xlsx|
	 Then I should see client created successfully from "Output" sheet
		|Createclient.xlsx|
	 When I set up the new create loan from "NewLoanInput" sheet
		| 2374-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-OVERDUE-FEE-%LOANAMT+INT-BLR-Newcreateloan1.xlsx|
	 Then I navigate to scheduler job & execute "Apply penalty to overdue loans"
	 Then I verified the "Summary" details successfully 
		| 2374-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-OVERDUE-FEE-%LOANAMT+INT-BLR-Newcreateloan1.xlsx|
	 And I verified the "Repayment Schedule" details successfully 
		| 2374-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-OVERDUE-FEE-%LOANAMT+INT-BLR-Newcreateloan1.xlsx|
		
@scenario26-2375-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-3-ADD-TWO-TR-AFTER-DIS-BLR
	  Scenario: 2375-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-3-ADD-TWO-TR-AFTER-DIS-BLR  

	 Given I setup the product loan "Setup"
		| Productloannavigation.xlsx |
	 Then I entered the values into product loan from "ProductLoanInput" Sheet
		|2375-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-3-ADD-TWO-TR-AFTER-DIS-BLR-Loanproduct.xlsx|
	
	 Given I setup the clients 
	 Then I entered the values into client from "Input" sheet
		|Createclient.xlsx|
	 Then I should see client created successfully from "Output" sheet
		|Createclient.xlsx|
	 When I set up the new create loan from "NewLoanInput" sheet
		| 2375-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-3-ADD-TWO-TR-AFTER-DIS-BLR-Newcreateloan1.xlsx|
	 Then I verified the "Summary" details successfully 
		| 2375-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-3-ADD-TWO-TR-AFTER-DIS-BLR-Newcreateloan1.xlsx|
	 And I verified the "Repayment Schedule" details successfully 
		| 2375-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-3-ADD-TWO-TR-AFTER-DIS-BLR-Newcreateloan1.xlsx|
	 Then I "Add Third trance from trache tab" and verified the following tabs
	  			|2375-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-3-ADD-TWO-TR-AFTER-DIS-BLR-LoanTranche.xlsx|Loan Tranche Details|Summary|Repayment Schedule|Transactions|
		
@scenario27-2376-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-WaiveInterest-BLR
	  Scenario: 2376-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-WaiveInterest-BLR  

      Given I setup the product loan "Setup"
				| Productloannavigation.xlsx |
	  Then I entered the values into product loan from "ProductLoanInput" Sheet
				|2376-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-WaiveInterest-BLR-Loanproduct.xlsx|
      Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			| 2376-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-WaiveInterest-BLR-Newcreateloan1.xlsx|
	  Then I "WaiveInterest" and verified the following tabs
	  			| 2376-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-WaiveInterest-BLR-Newcreateloan1.xlsx|Modify Transaction|Summary|Repayment Schedule|Transactions|
	  			
@scenario28-2377-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-Writeoff-BLR
	  Scenario: 2377-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-Writeoff-BLR  

     Given I setup the product loan "Setup"
				| Productloannavigation.xlsx |
	  Then I entered the values into product loan from "ProductLoanInput" Sheet
				|2377-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-Writeoff-BLR-Loanproduct.xlsx|
      Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			| 2377-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-Writeoff-BLR-Newcreateloan1.xlsx|
	  Then I "WaiveInterest" and verified the following tabs
	  			| 2377-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-Writeoff-BLR-Newcreateloan1.xlsx|Modify Transaction|Summary|Repayment Schedule|Transactions|		
	  			
@scenario29-2378-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-EDIT-INT-From4thJan+Repayment0n-1Feb-BLR
	  Scenario: 2378-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-EDIT-INT-From 4thJan+Repayment0n-1Feb-BLR

	Given I setup the product loan "Setup"
		| Productloannavigation.xlsx |
	Then I entered the values into product loan from "ProductLoanInput" Sheet
		|2378-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-EDIT-INT-From 4thJan+Repayment0n-1Feb-BLR-Loanproduct.xlsx|
		 
	Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			| 2378-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-EDIT-INT-From 4thJan+Repayment0n-1Feb-BLR-Newcreateloan1.xlsx|
	  Then I verified the "Summary" details successfully 
	  			| 2378-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-EDIT-INT-From 4thJan+Repayment0n-1Feb-BLR-Newcreateloan1.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
	  			| 2378-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-EDIT-INT-From 4thJan+Repayment0n-1Feb-BLR-Newcreateloan1.xlsx|		    			

@scenario30-2379-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-Uncheck-FR-DLR
	  Scenario: 2379-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-Uncheck-FR-DLR

	Given I setup the product loan "Setup"
		| Productloannavigation.xlsx |
	Then I entered the values into product loan from "ProductLoanInput" Sheet
		|2379-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-Uncheck-FR-DLR-Loanproduct.xlsx|
		 
	Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			| 2379-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-Uncheck-FR-DLR-Newcreateloan1.xlsx|
	  Then I verified the "Summary" details successfully 
	  			| 2379-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-Uncheck-FR-DLR-Newcreateloan1.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
	  			| 2379-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-Uncheck-FR-DLR-Newcreateloan1.xlsx|

@scenario31-2380-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-ModifyApp-EDIT-IRD-Uncheck-FR-DLR
	  Scenario: 2380-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-ModifyApp-EDIT-IRD-Uncheck-FR-DLR

	Given I setup the product loan "Setup"
		| Productloannavigation.xlsx |
	Then I entered the values into product loan from "ProductLoanInput" Sheet
		|2380-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-ModifyApp-EDIT-IRD-Uncheck-FR-DLR-Loanproduct.xlsx|
		 
	Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			| 2380-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-ModifyApp-EDIT-IRD-Uncheck-FR-DLR-Newcreateloan1.xlsx|
	  And I modify New Loan Account from "ModifyLoan" sheet
	  			| 2380-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-ModifyApp-EDIT-IRD-Uncheck-FR-DLR-Newcreateloan1.xlsx|
	  Then I verified the "Summary" details successfully 
	  			| 2380-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-ModifyApp-EDIT-IRD-Uncheck-FR-DLR-Newcreateloan1.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
	  			| 2380-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-ModifyApp-EDIT-IRD-Uncheck-FR-DLR-Newcreateloan1.xlsx|
	  			
@scenario32-2381-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-ModifyApp-EDIT-IRD-Check-FR-DLR
	  Scenario: 2381-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-ModifyApp-EDIT-IRD-Check-FR-DLR

	Given I setup the product loan "Setup"
		| Productloannavigation.xlsx |
	Then I entered the values into product loan from "ProductLoanInput" Sheet
		|2381-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-ModifyApp-EDIT-IRD-Check-FR-DLR-Loanproduct.xlsx|
		 
	Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			| 2381-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-ModifyApp-EDIT-IRD-Check-FR-DLR-Newcreateloan1.xlsx|
	  And I modify New Loan Account from "ModifyLoan" sheet
	  			| 2381-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-ModifyApp-EDIT-IRD-Check-FR-DLR-Newcreateloan1.xlsx|
	  Then I verified the "Summary" details successfully 
	  			| 2381-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-ModifyApp-EDIT-IRD-Check-FR-DLR-Newcreateloan1.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
	  			| 2381-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-ModifyApp-EDIT-IRD-Check-FR-DLR-Newcreateloan1.xlsx|

@scenario33-2382-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-EDIT-ApproveDate-DLR
	  Scenario: 2382-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-EDIT-ApproveDate-DLR

	Given I setup the product loan "Setup"
		| Productloannavigation.xlsx |
	Then I entered the values into product loan from "ProductLoanInput" Sheet
		|2382-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-EDIT-ApproveDate-DLR-Loanproduct.xlsx|
		 
	Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			| 2382-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-EDIT-ApproveDate-DLR-Newcreateloan1.xlsx|
	  Then I verified the "Summary" details successfully 
	  			| 2382-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-EDIT-ApproveDate-DLR-Newcreateloan1.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
	  			| 2382-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-EDIT-ApproveDate-DLR-Newcreateloan1.xlsx|
	  			
@scenario34-2383-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-MOROTORIUM-PRINCIPAL-3-DLR
	  Scenario: 2383-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-MOROTORIUM-PRINCIPAL-3-DLR

	Given I setup the product loan "Setup"
		| Productloannavigation.xlsx |
	Then I entered the values into product loan from "ProductLoanInput" Sheet
		|2383-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-MOROTORIUM-PRINCIPAL-3-DLR-Loanproduct.xlsx|
		 
	Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			| 2383-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-MOROTORIUM-PRINCIPAL-3-DLR-Newcreateloan1.xlsx|
	  Then I verified the "Summary" details successfully 
	  			| 2383-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-MOROTORIUM-PRINCIPAL-3-DLR-Newcreateloan1.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
	  			| 2383-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-MOROTORIUM-PRINCIPAL-3-DLR-Newcreateloan1.xlsx|
	  			
@scenario35-2384-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-MOROTORIUM-INTEREST-3-DLR
	  Scenario: 2384-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-MOROTORIUM-INTEREST-3-DLR

	Given I setup the product loan "Setup"
		| Productloannavigation.xlsx |
	Then I entered the values into product loan from "ProductLoanInput" Sheet
		|2384-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-MOROTORIUM-INTEREST-3-DLR-Loanproduct.xlsx|
		 
	Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			| 2384-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-MOROTORIUM-INTEREST-3-DLR-Newcreateloan1.xlsx|
	  Then I verified the "Summary" details successfully 
	  			| 2384-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-MOROTORIUM-INTEREST-3-DLR-Newcreateloan1.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
	  			| 2384-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-MOROTORIUM-INTEREST-3-DLR-Newcreateloan1.xlsx|
	  			
@scenario36-2385-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-MOROTORIUM-PRINCIPAL+INT-3-DLR
	  Scenario: 2385-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-MOROTORIUM-PRINCIPAL+INT-3-DLR

	Given I setup the product loan "Setup"
		| Productloannavigation.xlsx |
	Then I entered the values into product loan from "ProductLoanInput" Sheet
		|2385-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-MOROTORIUM-PRINCIPAL+INT-3-DLR-Loanproduct.xlsx|
		 
	Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			| 2385-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-MOROTORIUM-PRINCIPAL+INT-3-DLR-Newcreateloan1.xlsx|
	  Then I verified the "Summary" details successfully 
	  			| 2385-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-MOROTORIUM-PRINCIPAL+INT-3-DLR-Newcreateloan1.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
	  			| 2385-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-MOROTORIUM-PRINCIPAL+INT-3-DLR-Newcreateloan1.xlsx|	

@scenario37-2386-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-PREPAY-ON-15-JAN-DLR
	  Scenario: 2386-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-PREPAY-ON-15-JAN-DLR

	Given I setup the product loan "Setup"
		| Productloannavigation.xlsx |
	Then I entered the values into product loan from "ProductLoanInput" Sheet
		|2386-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-PREPAY-ON-15-JAN-DLR-Loanproduct.xlsx|
		 
	Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			| 2386-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-PREPAY-ON-15-JAN-DLR-Newcreateloan1.xlsx|
	  Then I "Make Pre Payment" and verified the following tabs
	  			|2386-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-PREPAY-ON-15-JAN-DLR-Newcreateloan1.xlsx|Prepay Loan|Summary|Repayment Schedule|Transactions|
	  			
@scenario38-2387-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-OVERDUE-FEE-%LOANAMT+INT-DLR
	  Scenario: 2387-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-OVERDUE-FEE-%LOANAMT+INT-DLR  

	 Given I setup the product loan "Setup"
		| Productloannavigation.xlsx |
	 Then I entered the values into product loan from "ProductLoanInput" Sheet
		|2387-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-OVERDUE-FEE-%LOANAMT+INT-DLR-Loanproduct.xlsx|
	
	 Given I setup the clients 
	 Then I entered the values into client from "Input" sheet
		|Createclient.xlsx|
	 Then I should see client created successfully from "Output" sheet
		|Createclient.xlsx|
	 When I set up the new create loan from "NewLoanInput" sheet
		| 2387-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-OVERDUE-FEE-%LOANAMT+INT-DLR-Newcreateloan1.xlsx|
	 Then I navigate to scheduler job & execute "Apply penalty to overdue loans"
	 Then I verified the "Summary" details successfully 
		| 2387-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-OVERDUE-FEE-%LOANAMT+INT-DLR-Newcreateloan1.xlsx|
	 And I verified the "Repayment Schedule" details successfully 
		| 2387-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-OVERDUE-FEE-%LOANAMT+INT-DLR-Newcreateloan1.xlsx|
		
@scenario39-2388-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-3-ADD-TWO-TR-AFTER-DIS-DLR
	  Scenario: 2388-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-3-ADD-TWO-TR-AFTER-DIS-DLR  

	 Given I setup the product loan "Setup"
		| Productloannavigation.xlsx |
	 Then I entered the values into product loan from "ProductLoanInput" Sheet
		|2388-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-3-ADD-TWO-TR-AFTER-DIS-DLR-Loanproduct.xlsx|
	
	 Given I setup the clients 
	 Then I entered the values into client from "Input" sheet
		|Createclient.xlsx|
	 Then I should see client created successfully from "Output" sheet
		|Createclient.xlsx|
	 When I set up the new create loan from "NewLoanInput" sheet
		| 2388-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-3-ADD-TWO-TR-AFTER-DIS-DLR-Newcreateloan1.xlsx|
	 Then I verified the "Summary" details successfully 
		| 2388-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-3-ADD-TWO-TR-AFTER-DIS-DLR-Newcreateloan1.xlsx|
	 And I verified the "Repayment Schedule" details successfully 
		| 2388-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-3-ADD-TWO-TR-AFTER-DIS-DLR-Newcreateloan1.xlsx|
	 Then I "Add Third trance from trache tab" and verified the following tabs
	  			|2388-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-3-ADD-TWO-TR-AFTER-DIS-DLR-LoanTranche.xlsx|Loan Tranche Details|Summary|Repayment Schedule|Transactions|
		
@scenario40-2389-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-WaiveInterest-DLR
	  Scenario: 2389-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-WaiveInterest-DLR  

      Given I setup the product loan "Setup"
				| Productloannavigation.xlsx |
	  Then I entered the values into product loan from "ProductLoanInput" Sheet
				|2389-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-WaiveInterest-DLR-Loanproduct.xlsx|
      Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			| 2389-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-WaiveInterest-DLR-Newcreateloan1.xlsx|
	  Then I "WaiveInterest" and verified the following tabs
	  			| 2389-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-WaiveInterest-DLR-Newcreateloan1.xlsx|Modify Transaction|Summary|Repayment Schedule|Transactions|
	  			
@scenario41-2390-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-Writeoff-DLR
	  Scenario: 2390-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-Writeoff-DLR  

     Given I setup the product loan "Setup"
				| Productloannavigation.xlsx |
	  Then I entered the values into product loan from "ProductLoanInput" Sheet
				|2390-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-Writeoff-DLR-Loanproduct.xlsx|
      Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			| 2390-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-Writeoff-DLR-Newcreateloan1.xlsx|
	  Then I "WaiveInterest" and verified the following tabs
	  			| 2390-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-Writeoff-DLR-Newcreateloan1.xlsx|Modify Transaction|Summary|Repayment Schedule|Transactions|		

@scenario42-2391-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-EDIT-INT-From4thJan+Repayment0n-1FebDLR
	  Scenario: 2391-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-EDIT-INT-From 4thJan+Repayment0n-1FebDLR

	Given I setup the product loan "Setup"
		| Productloannavigation.xlsx |
	Then I entered the values into product loan from "ProductLoanInput" Sheet
		|2391-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-EDIT-INT-From 4thJan+Repayment0n-1FebDLR-Loanproduct.xlsx|
		 
	Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			| 2391-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-EDIT-INT-From 4thJan+Repayment0n-1FebDLR-Newcreateloan1.xlsx|
	  Then I verified the "Summary" details successfully 
	  			| 2391-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-EDIT-INT-From 4thJan+Repayment0n-1FebDLR-Newcreateloan1.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
	  			| 2391-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-EDIT-INT-From 4thJan+Repayment0n-1FebDLR-Newcreateloan1.xlsx|	  			

@scenario51-2400-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-BLR-EARLY-CASH
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
	  			

@scenario52-2401-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-DLR-LATE-CASH
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
	  
@scenario53-2402-MS-EI-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-ONTIME-DLR-CASH
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
				
	

@scenario54-2403-MS-EI-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-ONTIME-BLR-CASH
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
		
			

@scenario55-2404-MS-EPP-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-ONTIME-DLR-CASH
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
		
	
@scenario56-2405-MS-EPP-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-BLR-ONTIME-CASH
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

@scenario57-2406-MS-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-DLR-EARLY-CASH
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
	  		

@scenario58-2407-MS-EPP-DB-SAR-REC-NON-RNI-CTPD-DL-MD-TR-1-BLR-LATE-CASH
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
		
@scenario59-2408-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-DLR-EARLY-CASH
	  Scenario: 2408-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-DLR-EARLY-CASH

	Given I setup the product loan "Setup"
		| Productloannavigation.xlsx |
	Then I entered the values into product loan from "ProductLoanInput" Sheet
		|2408-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-DLR-EARLY-CASH-Loanproduct.xlsx|
	Then I should see product loan created successfully	from "ProductLoanOutput" Sheet
		|2408-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-DLR-EARLY-CASH-Loanproduct.xlsx|	
	Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			| 2408-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-DLR-EARLY-CASH-Newcreateloan1.xlsx|
	  Then I verified the "Summary" details successfully 
	  			| 2408-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-DLR-EARLY-CASH-Newcreateloan1.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
	  			| 2408-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-DLR-EARLY-CASH-Newcreateloan1.xlsx|	  			
	  Then I make repayment and verified the following tabs
       			| 2408-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-DLR-EARLY-CASH-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
	  And I disburse loan from "NewLoanInput" sheet
      			| 2408-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-DLR-EARLY-CASH-Newcreateloan2.xlsx|
      Then I verified the "Summary" details successfully 
	  			| 2408-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-DLR-EARLY-CASH-Newcreateloan2.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
	  			| 2408-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-DLR-EARLY-CASH-Newcreateloan2.xlsx|
	  And I verified the "Transactions" details successfully	
				| 2408-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-DLR-EARLY-CASH-Newcreateloan2.xlsx|	

@scenario60-2409-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-BLR-ONTIME-CASH
	  Scenario: 2409-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-BLR-ONTIME-CASH

	Given I setup the product loan "Setup"
		| Productloannavigation.xlsx |
	Then I entered the values into product loan from "ProductLoanInput" Sheet
		|2409-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-BLR-ONTIME-CASH-Loanproduct.xlsx|
	Then I should see product loan created successfully	from "ProductLoanOutput" Sheet
		|2409-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-BLR-ONTIME-CASH-Loanproduct.xlsx|	

	Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			| 2409-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-BLR-ONTIME-CASH-Newcreateloan1.xlsx|
	  Then I verified the "Summary" details successfully 
	  			| 2409-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-BLR-ONTIME-CASH-Newcreateloan1.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
	  			| 2409-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-BLR-ONTIME-CASH-Newcreateloan1.xlsx|	  			
	  Then I make repayment and verified the following tabs
       			| 2409-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-BLR-ONTIME-CASH-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
	  And I disburse loan from "NewLoanInput" sheet
      			| 2409-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-BLR-ONTIME-CASH-Newcreateloan2.xlsx|
      Then I verified the "Summary" details successfully 
	  			| 2409-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-BLR-ONTIME-CASH-Newcreateloan2.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
	  			| 2409-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-BLR-ONTIME-CASH-Newcreateloan2.xlsx|
	  And I verified the "Transactions" details successfully	
				| 2409-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-BLR-ONTIME-CASH-Newcreateloan2.xlsx|								

@scenario61-2410-MS-EI-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-DLR-LATE-CASH
	  Scenario: 2410-MS-EI-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-DLR-LATE-CASH

	Given I setup the product loan "Setup"
		| Productloannavigation.xlsx |
	Then I entered the values into product loan from "ProductLoanInput" Sheet
		|2410-MS-EI-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-DLR-LATE-CASH-Loanproduct.xlsx|
	Then I should see product loan created successfully	from "ProductLoanOutput" Sheet
		|2410-MS-EI-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-DLR-LATE-CASH-Loanproduct.xlsx|	

	Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			| 2410-MS-EI-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-DLR-LATE-CASH-Newcreateloan1.xlsx|
	  Then I verified the "Summary" details successfully 
	  			| 2410-MS-EI-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-DLR-LATE-CASH-Newcreateloan1.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
	  			| 2410-MS-EI-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-DLR-LATE-CASH-Newcreateloan1.xlsx|	  			
	  Then I make repayment and verified the following tabs
       			| 2410-MS-EI-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-DLR-LATE-CASH-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
	  And I disburse loan from "NewLoanInput" sheet
      			| 2410-MS-EI-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-DLR-LATE-CASH-Newcreateloan2.xlsx|
      Then I verified the "Summary" details successfully 
	  			| 2410-MS-EI-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-DLR-LATE-CASH-Newcreateloan2.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
	  			| 2410-MS-EI-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-DLR-LATE-CASH-Newcreateloan2.xlsx|
	  And I verified the "Transactions" details successfully	
				| 2410-MS-EI-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-DLR-LATE-CASH-Newcreateloan2.xlsx|								

@scenario62-2411-MS-EI-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-BLR-ONTIME-CASH
	  Scenario: 2411-MS-EI-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-BLR-ONTIME-CASH

	Given I setup the product loan "Setup"
		| Productloannavigation.xlsx |
	Then I entered the values into product loan from "ProductLoanInput" Sheet
		|2411-MS-EI-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-BLR-ONTIME-CASH-Loanproduct.xlsx|
	Then I should see product loan created successfully	from "ProductLoanOutput" Sheet
		|2411-MS-EI-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-BLR-ONTIME-CASH-Loanproduct.xlsx|	

	Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			| 2411-MS-EI-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-BLR-ONTIME-CASH-Newcreateloan1.xlsx|
	  Then I verified the "Summary" details successfully 
	  			| 2411-MS-EI-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-BLR-ONTIME-CASH-Newcreateloan1.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
	  			| 2411-MS-EI-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-BLR-ONTIME-CASH-Newcreateloan1.xlsx|	  			
	  Then I make repayment and verified the following tabs
       			| 2411-MS-EI-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-BLR-ONTIME-CASH-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
	  And I disburse loan from "NewLoanInput" sheet
      			| 2411-MS-EI-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-BLR-ONTIME-CASH-Newcreateloan2.xlsx|
      Then I verified the "Summary" details successfully 
	  			| 2411-MS-EI-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-BLR-ONTIME-CASH-Newcreateloan2.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
	  			| 2411-MS-EI-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-BLR-ONTIME-CASH-Newcreateloan2.xlsx|
	  And I verified the "Transactions" details successfully	
				| 2411-MS-EI-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-BLR-ONTIME-CASH-Newcreateloan2.xlsx|	

@scenario63-2412-MS-EPP-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-DLR-EARLY-CASH
	  Scenario: 2412-MS-EPP-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-DLR-EARLY-CASH

	Given I setup the product loan "Setup"
		| Productloannavigation.xlsx |
	Then I entered the values into product loan from "ProductLoanInput" Sheet
		|2412-MS-EPP-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-DLR-EARLY-CASH-Loanproduct.xlsx|
	Then I should see product loan created successfully	from "ProductLoanOutput" Sheet
		|2412-MS-EPP-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-DLR-EARLY-CASH-Loanproduct.xlsx|	

	Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			| 2412-MS-EPP-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-DLR-EARLY-CASH-Newcreateloan1.xlsx|
	  Then I verified the "Summary" details successfully 
	  			| 2412-MS-EPP-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-DLR-EARLY-CASH-Newcreateloan1.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
	  			| 2412-MS-EPP-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-DLR-EARLY-CASH-Newcreateloan1.xlsx|	  			
	  Then I make repayment and verified the following tabs
       			| 2412-MS-EPP-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-DLR-EARLY-CASH-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
	  And I disburse loan from "NewLoanInput" sheet
      			| 2412-MS-EPP-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-DLR-EARLY-CASH-Newcreateloan2.xlsx|
      Then I verified the "Summary" details successfully 
	  			| 2412-MS-EPP-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-DLR-EARLY-CASH-Newcreateloan2.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
	  			| 2412-MS-EPP-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-DLR-EARLY-CASH-Newcreateloan2.xlsx|
	  And I verified the "Transactions" details successfully	
				| 2412-MS-EPP-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-DLR-EARLY-CASH-Newcreateloan2.xlsx|								

@scenario64-2413-MS-EPP-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-BLR-ONTIME-CASH
	  Scenario: 2413-MS-EPP-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-BLR-ONTIME-CASH

	Given I setup the product loan "Setup"
		| Productloannavigation.xlsx |
	Then I entered the values into product loan from "ProductLoanInput" Sheet
		|2413-MS-EPP-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-BLR-ONTIME-CASH-Loanproduct.xlsx|
	Then I should see product loan created successfully	from "ProductLoanOutput" Sheet
		|2413-MS-EPP-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-BLR-ONTIME-CASH-Loanproduct.xlsx|	

	Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			| 2413-MS-EPP-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-BLR-ONTIME-CASH-Newcreateloan1.xlsx|
	  Then I verified the "Summary" details successfully 
	  			| 2413-MS-EPP-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-BLR-ONTIME-CASH-Newcreateloan1.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
	  			| 2413-MS-EPP-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-BLR-ONTIME-CASH-Newcreateloan1.xlsx|	  			
	  Then I make repayment and verified the following tabs
       			| 2413-MS-EPP-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-BLR-ONTIME-CASH-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
	  And I disburse loan from "NewLoanInput" sheet
      			| 2413-MS-EPP-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-BLR-ONTIME-CASH-Newcreateloan2.xlsx|
      Then I verified the "Summary" details successfully 
	  			| 2413-MS-EPP-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-BLR-ONTIME-CASH-Newcreateloan2.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
	  			| 2413-MS-EPP-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-BLR-ONTIME-CASH-Newcreateloan2.xlsx|
	  And I verified the "Transactions" details successfully	
				| 2413-MS-EPP-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-BLR-ONTIME-CASH-Newcreateloan2.xlsx|								
							
@scenario65-2414-MS-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-DLR-LATE-CASH
	  Scenario: 2414-MS-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-DLR-LATE-CASH

	Given I setup the product loan "Setup"
		| Productloannavigation.xlsx |
	Then I entered the values into product loan from "ProductLoanInput" Sheet
		|2414-MS-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-DLR-LATE-CASH-Loanproduct.xlsx|
	Then I should see product loan created successfully	from "ProductLoanOutput" Sheet
		|2414-MS-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-DLR-LATE-CASH-Loanproduct.xlsx|	

	Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			| 2414-MS-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-DLR-LATE-CASH-Newcreateloan1.xlsx|
	  Then I verified the "Summary" details successfully 
	  			| 2414-MS-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-DLR-LATE-CASH-Newcreateloan1.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
	  			| 2414-MS-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-DLR-LATE-CASH-Newcreateloan1.xlsx|	  			
	  Then I make repayment and verified the following tabs
       			| 2414-MS-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-DLR-LATE-CASH-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
	  And I disburse loan from "NewLoanInput" sheet
      			| 2414-MS-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-DLR-LATE-CASH-Newcreateloan2.xlsx|
      Then I verified the "Summary" details successfully 
	  			| 2414-MS-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-DLR-LATE-CASH-Newcreateloan2.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
	  			| 2414-MS-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-DLR-LATE-CASH-Newcreateloan2.xlsx|
	  And I verified the "Transactions" details successfully	
				| 2414-MS-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-DLR-LATE-CASH-Newcreateloan2.xlsx|								
							
@scenario66-2415-MS-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-BLR-ONTIME-CASH
	  Scenario: 2415-MS-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-BLR-ONTIME-CASH

	Given I setup the product loan "Setup"
		| Productloannavigation.xlsx |
	Then I entered the values into product loan from "ProductLoanInput" Sheet
		|2415-MS-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-BLR-ONTIME-CASH-Loanproduct.xlsx|
	Then I should see product loan created successfully	from "ProductLoanOutput" Sheet
		|2415-MS-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-BLR-ONTIME-CASH-Loanproduct.xlsx|	

	Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			| 2415-MS-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-BLR-ONTIME-CASH-Newcreateloan1.xlsx|
	  Then I verified the "Summary" details successfully 
	  			| 2415-MS-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-BLR-ONTIME-CASH-Newcreateloan1.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
	  			| 2415-MS-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-BLR-ONTIME-CASH-Newcreateloan1.xlsx|	  			
	  Then I make repayment and verified the following tabs
       			| 2415-MS-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-BLR-ONTIME-CASH-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
	  And I disburse loan from "NewLoanInput" sheet
      			| 2415-MS-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-BLR-ONTIME-CASH-Newcreateloan2.xlsx|
      Then I verified the "Summary" details successfully 
	  			| 2415-MS-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-BLR-ONTIME-CASH-Newcreateloan2.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
	  			| 2415-MS-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-BLR-ONTIME-CASH-Newcreateloan2.xlsx|
	  And I verified the "Transactions" details successfully	
				| 2415-MS-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-BLR-ONTIME-CASH-Newcreateloan2.xlsx|		
				
				
				
########## Foreclosure 



@4625-EI-DB-SAR-CIFEDIPP-CHECKED-DISB-01JAN2015-FC-15JAN2015
Scenario:4625-EI-DB-SAR-CIFEDIPP-CHECKED-DISB-01JAN2015-FC-15JAN2015
      Given I setup the product loan "Setup"
		        | Productloannavigation.xlsx |
	  Then I entered the values into product loan from "ProductLoanInput" Sheet
		        |4625-EI-DB-SAR-CIFEDIPP-CHECKED-DISB-01JAN2015-FC-15JAN2015.xlsx|
	  Given I setup the clients
	  When I entered the values into client from "Input" sheet
	 			|Createclient.xlsx|
	  Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			|4625-EI-DB-SAR-CIFEDIPP-CHECKED-DISB-01JAN2015-FC-15JAN2015.xlsx|
	  Then I "Foreclosure" and verified the following tabs
	  			|4625-EI-DB-SAR-CIFEDIPP-CHECKED-DISB-01JAN2015-FC-15JAN2015.xlsx| Foreclosure | Transactions |
				
				
@4626-EI-DB-SAR-CIFEDIPP-UNCHECKED-DISB-01JAN2015-FC-15JAN2015
Scenario:4626-EI-DB-SAR-CIFEDIPP-UNCHECKED-DISB-01JAN2015-FC-15JAN2015
      Given I setup the product loan "Setup"
		        | Productloannavigation.xlsx |
	  Then I entered the values into product loan from "ProductLoanInput" Sheet
		        |4626-EI-DB-SAR-CIFEDIPP-UNCHECKED-DISB-01JAN2015-FC-15JAN2015.xlsx|
	  Given I setup the clients
	  When I entered the values into client from "Input" sheet
	 			|Createclient.xlsx|
	  Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			|4626-EI-DB-SAR-CIFEDIPP-UNCHECKED-DISB-01JAN2015-FC-15JAN2015.xlsx|
	  Then I "Foreclosure" and verified the following tabs
	  			|4626-EI-DB-SAR-CIFEDIPP-UNCHECKED-DISB-01JAN2015-FC-15JAN2015.xlsx| Foreclosure | Transactions |
				
				
@4627-EPP-DB-SAR-CIFEDIPP-CHECKED-DISB-01JAN2015-FC-15JAN2015
Scenario:4627-EPP-DB-SAR-CIFEDIPP-CHECKED-DISB-01JAN2015-FC-15JAN2015
      Given I setup the product loan "Setup"
		        | Productloannavigation.xlsx |
	  Then I entered the values into product loan from "ProductLoanInput" Sheet
		        |4627-EPP-DB-SAR-CIFEDIPP-CHECKED-DISB-01JAN2015-FC-15JAN2015.xlsx|
	  Given I setup the clients
	  When I entered the values into client from "Input" sheet
	 			|Createclient.xlsx|
	  Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			|4627-EPP-DB-SAR-CIFEDIPP-CHECKED-DISB-01JAN2015-FC-15JAN2015.xlsx|
	  Then I "Foreclosure" and verified the following tabs
	  			|4627-EPP-DB-SAR-CIFEDIPP-CHECKED-DISB-01JAN2015-FC-15JAN2015.xlsx| Foreclosure | Transactions |
	  			
@4628-EPP-DB-SAR-CIFEDIPP-UNCHECKED-DISB-01JAN2015-FC-15JAN2015
Scenario:4628-EPP-DB-SAR-CIFEDIPP-UNCHECKED-DISB-01JAN2015-FC-15JAN2015
      Given I setup the product loan "Setup"
		        | Productloannavigation.xlsx |
	  Then I entered the values into product loan from "ProductLoanInput" Sheet
		        |4628-EPP-DB-SAR-CIFEDIPP-UNCHECKED-DISB-01JAN2015-FC-15JAN2015.xlsx|
	  Given I setup the clients
	  When I entered the values into client from "Input" sheet
	 			|Createclient.xlsx|
	  Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			|4628-EPP-DB-SAR-CIFEDIPP-UNCHECKED-DISB-01JAN2015-FC-15JAN2015.xlsx|
	  Then I "Foreclosure" and verified the following tabs
	  			|4628-EPP-DB-SAR-CIFEDIPP-UNCHECKED-DISB-01JAN2015-FC-15JAN2015.xlsx| Foreclosure | Transactions |
				
				
@4629-EI-DB-DL-DISB-01JAN2015-FC-15JAN2015
Scenario:4629-EI-DB-DL-DISB-01JAN2015-FC-15JAN2015
      Given I setup the product loan "Setup"
		        | Productloannavigation.xlsx |
	  Then I entered the values into product loan from "ProductLoanInput" Sheet
		        |4629-EI-DB-DL-DISB-01JAN2015-FC-15JAN2015.xlsx|
	  Given I setup the clients
	  When I entered the values into client from "Input" sheet
	 			|Createclient.xlsx|
	  Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			|4629-EI-DB-DL-DISB-01JAN2015-FC-15JAN2015.xlsx|
	  Then I "Foreclosure" and verified the following tabs
	  			|4629-EI-DB-DL-DISB-01JAN2015-FC-15JAN2015.xlsx| Foreclosure | Transactions |
				
@4630-EPP-DB-DL-DISB-01JAN2015-FC-15JAN20155
Scenario:4630-EPP-DB-DL-DISB-01JAN2015-FC-15JAN2015
      Given I setup the product loan "Setup"
		        | Productloannavigation.xlsx |
	  Then I entered the values into product loan from "ProductLoanInput" Sheet
		        |4630-EPP-DB-DL-DISB-01JAN2015-FC-15JAN2015.xlsx|
	  Given I setup the clients
	  When I entered the values into client from "Input" sheet
	 			|Createclient.xlsx|
	  Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			|4630-EPP-DB-DL-DISB-01JAN2015-FC-15JAN2015.xlsx|
	  Then I "Foreclosure" and verified the following tabs
	  			|4630-EPP-DB-DL-DISB-01JAN2015-FC-15JAN2015.xlsx| Foreclosure | Transactions |
				
				
@4631-EI-FL-SAR-CIFEDIPP-CHECKED-DISB-01JAN2015-FC-15JAN2015
Scenario:4631-EI-FL-SAR-CIFEDIPP-CHECKED-DISB-01JAN2015-FC-15JAN2015
      Given I setup the product loan "Setup"
		        | Productloannavigation.xlsx |
	  Then I entered the values into product loan from "ProductLoanInput" Sheet
		        |4631-EI-FL-SAR-CIFEDIPP-CHECKED-DISB-01JAN2015-FC-15JAN2015.xlsx|
	  Given I setup the clients
	  When I entered the values into client from "Input" sheet
	 			|Createclient.xlsx|
	  Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			|4631-EI-FL-SAR-CIFEDIPP-CHECKED-DISB-01JAN2015-FC-15JAN2015.xlsx|
	  Then I "Foreclosure" and verified the following tabs
	  			|4631-EI-FL-SAR-CIFEDIPP-CHECKED-DISB-01JAN2015-FC-15JAN2015.xlsx| Foreclosure | Transactions |
	  			

@4632-EI-FL-SAR-CIFEDIPP-UNCHECKED-DISB-01JAN2015-FC-15JAN2015
Scenario:4632-EI-FL-SAR-CIFEDIPP-UNCHECKED-DISB-01JAN2015-FC-15JAN2015
      Given I setup the product loan "Setup"
		        | Productloannavigation.xlsx |
	  Then I entered the values into product loan from "ProductLoanInput" Sheet
		        |4632-EI-FL-SAR-CIFEDIPP-UNCHECKED-DISB-01JAN2015-FC-15JAN2015.xlsx|
	  Given I setup the clients
	  When I entered the values into client from "Input" sheet
	 			|Createclient.xlsx|
	  Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			|4632-EI-FL-SAR-CIFEDIPP-UNCHECKED-DISB-01JAN2015-FC-15JAN2015.xlsx|
	  Then I "Foreclosure" and verified the following tabs
	  			|4632-EI-FL-SAR-CIFEDIPP-UNCHECKED-DISB-01JAN2015-FC-15JAN2015.xlsx| Foreclosure | Transactions |
	  			
@4633-EI-FL-DL-DISB-01JAN2015-FC-15JAN2015
Scenario:4633-EI-FL-DL-DISB-01JAN2015-FC-15JAN2015
      Given I setup the product loan "Setup"
		        | Productloannavigation.xlsx |
	  Then I entered the values into product loan from "ProductLoanInput" Sheet
		        |4633-EI-FL-DL-DISB-01JAN2015-FC-15JAN2015.xlsx|
	  Given I setup the clients
	  When I entered the values into client from "Input" sheet
	 			|Createclient.xlsx|
	  Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			|4633-EI-FL-DL-DISB-01JAN2015-FC-15JAN2015.xlsx|
	  Then I "Foreclosure" and verified the following tabs
	  			|4633-EI-FL-DL-DISB-01JAN2015-FC-15JAN2015.xlsx| Foreclosure | Transactions |
				
				
@4634-EI-DB-DL-MORATORIUMonINT-1-DISB-01JAN2015-FC-15JAN2015
Scenario:4634-EI-DB-DL-MORATORIUMonINT-1-DISB-01JAN2015-FC-15JAN2015
      Given I setup the product loan "Setup"
		        | Productloannavigation.xlsx |
	  Then I entered the values into product loan from "ProductLoanInput" Sheet
		        |4634-EI-DB-DL-MORATORIUMonINT-1-DISB-01JAN2015-FC-15JAN2015.xlsx|
	  Given I setup the clients
	  When I entered the values into client from "Input" sheet
	 			|Createclient.xlsx|
	  Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			|4634-EI-DB-DL-MORATORIUMonINT-1-DISB-01JAN2015-FC-15JAN2015.xlsx|
	  Then I "Foreclosure" and verified the following tabs
	  			|4634-EI-DB-DL-MORATORIUMonINT-1-DISB-01JAN2015-FC-15JAN2015.xlsx| Foreclosure | Transactions |
	  			
	  			
@4635-EI-DB-DL-MORATORIUMonPRINCIPAL+INT-1-DISB-01JAN2015-FC-15JAN2015
Scenario:4635-EI-DB-DL-MORATORIUMonPRINCIPAL+INT-1-DISB-01JAN2015-FC-15JAN2015
      Given I setup the product loan "Setup"
		        | Productloannavigation.xlsx |
	  Then I entered the values into product loan from "ProductLoanInput" Sheet
		        |4635-EI-DB-DL-MORATORIUMonPRINCIPAL+INT-1-DISB-01JAN2015-FC-15JAN2015.xlsx|
	  Given I setup the clients
	  When I entered the values into client from "Input" sheet
	 			|Createclient.xlsx|
	  Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			|4635-EI-DB-DL-MORATORIUMonPRINCIPAL+INT-1-DISB-01JAN2015-FC-15JAN2015.xlsx|
	  Then I "Foreclosure" and verified the following tabs
	  			|4635-EI-DB-DL-MORATORIUMonPRINCIPAL+INT-1-DISB-01JAN2015-FC-15JAN2015.xlsx| Foreclosure | Transactions |
				
@4636-EI-DB-DL-INTCHARGEDFROM-015FEB2015-DISB-01JAN2015-FC-15JAN2015
Scenario:4636-EI-DB-DL-INTCHARGEDFROM-015FEB2015-DISB-01JAN2015-FC-15JAN2015
   	  Given I setup the clients
	  When I entered the values into client from "Input" sheet
	 			|Createclient.xlsx|
	  Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			|4636-EI-DB-DL-INTCHARGEDFROM-015FEB2015-DISB-01JAN2015-FC-15JAN2015.xlsx|
	  Then I "Foreclosure" and verified the following tabs
	  			|4636-EI-DB-DL-INTCHARGEDFROM-015FEB2015-DISB-01JAN2015-FC-15JAN2015.xlsx| Foreclosure | Transactions |
				
@4637-EI-DB-DL-OVERDUEFEEflat100-DISB-01JAN2015-FC-15JAN2015
Scenario:4637-EI-DB-DL-OVERDUEFEEflat100-DISB-01JAN2015-FC-15JAN2015
      Given I setup the product loan "Setup"
		        | Productloannavigation.xlsx |
	  Then I entered the values into product loan from "ProductLoanInput" Sheet
		        |4637-EI-DB-DL-OVERDUEFEEflat100-DISB-01JAN2015-FC-15JAN2015.xlsx|       
	  Given I setup the clients
	  When I entered the values into client from "Input" sheet
	 			|Createclient.xlsx|
	  Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			|4637-EI-DB-DL-OVERDUEFEEflat100-DISB-01JAN2015-FC-15JAN2015.xlsx|
	  Then I navigate to scheduler job & execute "Apply penalty to overdue loans"
	  Then I "Foreclosure" and verified the following tabs
	  			|4637-EI-DB-DL-OVERDUEFEEflat100-DISB-01JAN2015-FC-15JAN2015.xlsx| Foreclosure | Transactions |
	  			
	  							
@4638-EI-DB-DL-SPDUEDATEFEEon10JAN2015-DISB-01JAN2015-FC-15JAN2015
Scenario:4638-EI-DB-DL-SPDUEDATEFEEon10JAN2015-DISB-01JAN2015-FC-15JAN2015 
	  Given I setup the clients
	  When I entered the values into client from "Input" sheet
	 			|Createclient.xlsx|
	  Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			|4638-EI-DB-DL-SPDUEDATEFEEon10JAN2015-DISB-01JAN2015-FC-15JAN2015.xlsx|
	  Then I "Foreclosure" and verified the following tabs
	  			|4638-EI-DB-DL-SPDUEDATEFEEon10JAN2015-DISB-01JAN2015-FC-15JAN2015.xlsx| Foreclosure | Transactions |
	  			
@4639-EI-DB-DL-SPDUEDATEFEEon20JAN2015-DISB-01JAN2015-FC-15JAN2015
Scenario:4639-EI-DB-DL-SPDUEDATEFEEon20JAN2015-DISB-01JAN2015-FC-15JAN2015      
	  Given I setup the clients
	  When I entered the values into client from "Input" sheet
	 			|Createclient.xlsx|
	  Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			|4639-EI-DB-DL-SPDUEDATEFEEon20JAN2015-DISB-01JAN2015-FC-15JAN2015.xlsx|
	  Then I "Foreclosure" and verified the following tabs
	  			|4639-EI-DB-DL-SPDUEDATEFEEon20JAN2015-DISB-01JAN2015-FC-15JAN2015.xlsx| Foreclosure | Transactions |	
	  			
@4640-EI-FL-DL-VARINST-DATE-15JAN2015-DISB-FC-25JAN2015
Scenario:4640-EI-FL-DL-VARINST-DATE-15JAN2015-DISB-FC-25JAN2015 
      Given I setup the product loan "Setup"
		        | Productloannavigation.xlsx |
	  Then I entered the values into product loan from "ProductLoanInput" Sheet
		        |4640-EI-FL-DL-VARINST-DATE-15JAN2015-DISB-FC-25JAN2015.xlsx|  
	  Given I setup the clients
	  When I entered the values into client from "Input" sheet
	 			|Createclient.xlsx|
	  Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			|4640-EI-FL-DL-VARINST-DATE-15JAN2015-DISB-FC-25JAN2015.xlsx|
	  Then I "Edit Date " In Edit Repayment Schedule page
                |4640-EI-FL-DL-VARINST-DATE-15JAN2015-DISB-FC-25JAN2015.xlsx|Edit Repayment Schedule|
	  Then I "Foreclosure" and verified the following tabs
	  			|4640-EI-FL-DL-VARINST-DATE-15JAN2015-DISB-FC-25JAN2015.xlsx| Foreclosure | Transactions |	
	
@4641-EI-FL-DL-DISB-01JAN2015-REPAYon15JAN2016-FC-15JAN2015
Scenario:4641-EI-FL-DL-DISB-01JAN2015-REPAYon15JAN2016-FC-15JAN2015      
	  Given I setup the clients
	  When I entered the values into client from "Input" sheet
	 			|Createclient.xlsx|
	  Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			|4641-EI-FL-DL-DISB-01JAN2015-REPAYon15JAN2016-FC-15JAN2015.xlsx|
	  Then I make repayment and verified the following tabs
     			|4641-EI-FL-DL-DISB-01JAN2015-REPAYon15JAN2016-FC-15JAN2015.xlsx|Repay1|
	  Then I "Foreclosure" and verified the following tabs
	  			|4641-EI-FL-DL-DISB-01JAN2015-REPAYon15JAN2016-FC-15JAN2015.xlsx| Foreclosure | Transactions |
				
				
@4642-EI-FL-DL-DISB-01JAN2015-WAIVEINT-FC-15JAN2015
Scenario:4642-EI-FL-DL-DISB-01JAN2015-WAIVEINT-FC-15JAN2015      
	  Given I setup the clients
	  When I entered the values into client from "Input" sheet
	 			|Createclient.xlsx|
	  Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			|4642-EI-FL-DL-DISB-01JAN2015-WAIVEINT-FC-15JAN2015.xlsx|
	  Then I "WaiveInterest" and verified the following tabs
	            |4642-EI-FL-DL-DISB-01JAN2015-WAIVEINT-FC-15JAN2015.xlsx|Modify Transaction|
	  Then I "Foreclosure" and verified the following tabs
	  			|4642-EI-FL-DL-DISB-01JAN2015-WAIVEINT-FC-15JAN2015.xlsx| Foreclosure | Transactions |
				
				
@4643-EI-DB-DL-SPDUEDATEFEEon10JAN2015-DISB-01JAN2015-WAIVECHARGE-FC-15JAN2015
Scenario:4643-EI-DB-DL-SPDUEDATEFEEon10JAN2015-DISB-01JAN2015-WAIVECHARGE-FC-15JAN2015     
	  Given I setup the clients
	  When I entered the values into client from "Input" sheet
	 			|Createclient.xlsx|
	  Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			|4643-EI-DB-DL-SPDUEDATEFEEon10JAN2015-DISB-01JAN2015-WAIVECHARGE-FC-15JAN2015.xlsx|
	  Then I "WAIVEPENALTY" and verified the following tabs
	            |4643-EI-DB-DL-SPDUEDATEFEEon10JAN2015-DISB-01JAN2015-WAIVECHARGE-FC-15JAN2015.xlsx|Charges|
	  Then I "Foreclosure" and verified the following tabs
	  			|4643-EI-DB-DL-SPDUEDATEFEEon10JAN2015-DISB-01JAN2015-WAIVECHARGE-FC-15JAN2015.xlsx| Foreclosure | Transactions |
				
@4644-EI-FL-DL-DISB-01JAN2015-FC-15JAN2015-UNDOTRANSACTIONS
Scenario:4644-EI-FL-DL-DISB-01JAN2015-FC-15JAN2015-UNDOTRANSACTIONS     
	  Given I setup the clients
	  When I entered the values into client from "Input" sheet
	 			|Createclient.xlsx|
	  Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			|4644-EI-FL-DL-DISB-01JAN2015-FC-15JAN2015-UNDOTRANSACTIONS.xlsx|
	  Then I "Foreclosure" and verified the following tabs
	  			|4644-EI-FL-DL-DISB-01JAN2015-FC-15JAN2015-UNDOTRANSACTIONS.xlsx| Foreclosure | Transactions |
	  Then I "undo transaction from transaction tab" and verified the following tabs
	  			|4644-EI-FL-DL-DISB-01JAN2015-FC-15JAN2015-UNDOTRANSACTIONS.xlsx|Modify Transaction|
	  Then i validate and Verify from "error" sheet
	 			|4644-EI-FL-DL-DISB-01JAN2015-FC-15JAN2015-UNDOTRANSACTIONS.xlsx|
				
@4645-EI-FL-DL-DISB-15JAN2015-FC-01JAN2015
Scenario:4645-EI-FL-DL-DISB-15JAN2015-FC-01JAN2015     
	  Given I setup the clients
	  When I entered the values into client from "Input" sheet
	 			|Createclient.xlsx|
	  Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			|4645-EI-FL-DL-DISB-15JAN2015-FC-01JAN2015.xlsx|
	  Then I "Foreclosure" and verified the following tabs
	  			|4645-EI-FL-DL-DISB-15JAN2015-FC-01JAN2015.xlsx| Foreclosure |
	  Then i validate and Verify from "error" sheet
	 			|4645-EI-FL-DL-DISB-15JAN2015-FC-01JAN2015.xlsx|
				
@4646-EI-DB-DL-TR2-DISB1stTR-01JAN2015-FC-15JAN2015
Scenario:4646-EI-DB-DL-TR2-DISB1stTR-01JAN2015-FC-15JAN2015    
      Given I setup the product loan "Setup"
		        | Productloannavigation.xlsx |
	  Then I entered the values into product loan from "ProductLoanInput" Sheet
		        |4646-EI-DB-DL-TR2-DISB1stTR-01JAN2015-FC-15JAN2015.xlsx| 
	  Given I setup the clients
	  When I entered the values into client from "Input" sheet
	 			|Createclient.xlsx|
	  Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			|4646-EI-DB-DL-TR2-DISB1stTR-01JAN2015-FC-15JAN2015.xlsx|
	  Then I "Foreclosure" and verified the following tabs
	  			|4646-EI-DB-DL-TR2-DISB1stTR-01JAN2015-FC-15JAN2015.xlsx| Foreclosure | Transactions |
				
				
@4647-EI-DB-DL-TR2-DISB1stTR-01JAN2015-DISB2NDTR-01MAR2015-FC-15JAN2015
Scenario:4647-EI-DB-DL-TR2-DISB1stTR-01JAN2015-DISB2NDTR-01MAR2015-FC-15JAN2015    
	  Given I setup the clients
	  When I entered the values into client from "Input" sheet
	 			|Createclient.xlsx|
	  Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			|4647-EI-DB-DL-TR2-DISB1stTR-01JAN2015-DISB2NDTR-01MAR2015-FC-15JAN2015.xlsx|
	  Then I "Foreclosure" and verified the following tabs
	  			|4647-EI-DB-DL-TR2-DISB1stTR-01JAN2015-DISB2NDTR-01MAR2015-FC-15JAN2015.xlsx| Foreclosure |
	  Then i validate and Verify from "error" sheet
	 			|4647-EI-DB-DL-TR2-DISB1stTR-01JAN2015-DISB2NDTR-01MAR2015-FC-15JAN2015.xlsx|
				
@4648-EI-DB-DL-TR2-DISB1stTR-01JAN2015-DISB2NDTR-01MAR2015-FC-15MAR2015
Scenario:4648-EI-DB-DL-TR2-DISB1stTR-01JAN2015-DISB2NDTR-01MAR2015-FC-15MAR2015    
	  Given I setup the clients
	  When I entered the values into client from "Input" sheet
	 			|Createclient.xlsx|
	  Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			|4648-EI-DB-DL-TR2-DISB1stTR-01JAN2015-DISB2NDTR-01MAR2015-FC-15MAR2015.xlsx|
	  Then I "Foreclosure" and verified the following tabs
	  			|4648-EI-DB-DL-TR2-DISB1stTR-01JAN2015-DISB2NDTR-01MAR2015-FC-15MAR2015.xlsx| Foreclosure | Transactions |
	  			
	  			
@4649-EI-FL-DL-VARINST-DATE-15JAN2015-DISB-FC-25JAN2015
Scenario:4649-EI-FL-DL-VARINST-DATE-15JAN2015-DISB-FC-25JAN2015   
	  Given I setup the clients
	  When I entered the values into client from "Input" sheet
	 			|Createclient.xlsx|
	  Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			|4649-EI-FL-DL-VARINST-DATE-15JAN2015-DISB-FC-25JAN2015.xlsx|
	  Then I "Edit Date " In Edit Repayment Schedule page
                |4649-EI-FL-DL-VARINST-DATE-15JAN2015-DISB-FC-25JAN2015.xlsx|Edit Repayment Schedule|
	  Then I "Foreclosure" and verified the following tabs
	  			|4649-EI-FL-DL-VARINST-DATE-15JAN2015-DISB-FC-25JAN2015.xlsx| Foreclosure | Transactions |			
				
@4650-DISB01JAN2015-RESCHDULE01FEB2015-INSTRESCHDULE15FEB2015
	  Scenario: 4650-DISB01JAN2015-RESCHDULE01FEB2015-INSTRESCHDULE15FEB2015
      Given I setup the product loan "Setup"
				| Productloannavigation.xlsx |
	  Then I entered the values into product loan from "ProductLoanInput" Sheet
				|4650-DISB01JAN2015-RESCHDULE01FEB2015-INSTRESCHDULE15FEB2015.xlsx|
      Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			|4650-DISB01JAN2015-RESCHDULE01FEB2015-INSTRESCHDULE15FEB2015.xlsx|
	  Then I "Edit Date " In Edit Repayment Schedule page
                |4650-DISB01JAN2015-RESCHDULE01FEB2015-INSTRESCHDULE15FEB2015.xlsx|Edit Repayment Schedule|
      And I verified the "Repayment Schedule" details successfully 
	  			|4650-DISB01JAN2015-RESCHDULE01FEB2015-INSTRESCHDULE15FEB2015.xlsx|
				
@4651-DISB01JAN2015-RESCHDULE01FEB2015-Mid-GracePeriods-principal-3and-interest-3
	  Scenario: 4651-DISB01JAN2015-RESCHDULE01FEB2015-Mid-GracePeriods-principal-3and-interest-3
      
      Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			|4651-DISB01JAN2015-RESCHDULE01FEB2015-Mid-GracePeriods-principal-3and-interest-3.xlsx|
	  Then I "Edit Date " In Edit Repayment Schedule page
                |4651-DISB01JAN2015-RESCHDULE01FEB2015-Mid-GracePeriods-principal-3and-interest-3.xlsx|Edit Repayment Schedule|
      And I verified the "Repayment Schedule" details successfully 
	  			|4651-DISB01JAN2015-RESCHDULE01FEB2015-Mid-GracePeriods-principal-3and-interest-3.xlsx|
				
@4652-DISB01JAN2015-RESCHDULE01FEB2015-EXTN-REPAYMENTPRD-NUMBER-OF-REPAYMENT-3
	  Scenario: 4652-DISB01JAN2015-RESCHDULE01FEB2015-EXTN-REPAYMENTPRD-NUMBER-OF-REPAYMENT-3
      
      Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			|4652-DISB01JAN2015-RESCHDULE01FEB2015-EXTN-REPAYMENTPRD-NUMBER-OF-REPAYMENT-3.xlsx|
	  Then I "Edit Date " In Edit Repayment Schedule page
                |4652-DISB01JAN2015-RESCHDULE01FEB2015-EXTN-REPAYMENTPRD-NUMBER-OF-REPAYMENT-3.xlsx|Edit Repayment Schedule|
      And I verified the "Repayment Schedule" details successfully 
	  			|4652-DISB01JAN2015-RESCHDULE01FEB2015-EXTN-REPAYMENTPRD-NUMBER-OF-REPAYMENT-3.xlsx|
				
@4653-DISB01JAN2015-REPAYMENTON-1FEB2015AND1MAR2015-RESCHDULE01APR2015-INTEREST-ON-REMAINDERLOAN-24
	  Scenario: 4653-DISB01JAN2015-REPAYMENTON-1FEB2015AND1MAR2015-RESCHDULE01APR2015-INTEREST-ON-REMAINDERLOAN-24
      
      Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			|4653-DISB01JAN2015-REPAYMENTON-1FEB2015AND1MAR2015-RESCHDULE01APR2015-INTEREST-ON-REMAINDERLOAN-24.xlsx|
	  Then I make repayment and verified the following tabs
     			|4653-DISB01JAN2015-REPAYMENTON-1FEB2015AND1MAR2015-RESCHDULE01APR2015-INTEREST-ON-REMAINDERLOAN-24.xlsx|Repay1|Repay2|
	  Then I "Edit Date " In Edit Repayment Schedule page
                |4653-DISB01JAN2015-REPAYMENTON-1FEB2015AND1MAR2015-RESCHDULE01APR2015-INTEREST-ON-REMAINDERLOAN-24.xlsx|Edit Repayment Schedule|
      And I verified the "Repayment Schedule" details successfully 
	  			|4653-DISB01JAN2015-REPAYMENTON-1FEB2015AND1MAR2015-RESCHDULE01APR2015-INTEREST-ON-REMAINDERLOAN-24.xlsx|
				
@4654-DISB01JAN2015-EARLYREPAYMENTON-15JAN2015-RESCHDULE01MAR2015-INTEREST-ON-REMAINDERLOAN-24
	  Scenario: 4654-DISB01JAN2015-EARLYREPAYMENTON-15JAN2015-RESCHDULE01MAR2015-INTEREST-ON-REMAINDERLOAN-24
      
      Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			|4654-DISB01JAN2015-EARLYREPAYMENTON-15JAN2015-RESCHDULE01MAR2015-INTEREST-ON-REMAINDERLOAN-24.xlsx|
	  Then I make repayment and verified the following tabs
     			|4654-DISB01JAN2015-EARLYREPAYMENTON-15JAN2015-RESCHDULE01MAR2015-INTEREST-ON-REMAINDERLOAN-24.xlsx|Repay1|
	  Then I "Edit Date " In Edit Repayment Schedule page
                |4654-DISB01JAN2015-EARLYREPAYMENTON-15JAN2015-RESCHDULE01MAR2015-INTEREST-ON-REMAINDERLOAN-24.xlsx|Edit Repayment Schedule|
      And I verified the "Repayment Schedule" details successfully 
	  			|4654-DISB01JAN2015-EARLYREPAYMENTON-15JAN2015-RESCHDULE01MAR2015-INTEREST-ON-REMAINDERLOAN-24.xlsx|
				
@4655-DISB01JAN2015-LESSREPAYMENTON-01FEB2015-RESCHDULE01MAR2015-INTEREST-ON-REMAINDERLOAN-2
	  Scenario: 4655-DISB01JAN2015-LESSREPAYMENTON-01FEB2015-RESCHDULE01MAR2015-INTEREST-ON-REMAINDERLOAN-2
      
      Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			|4655-DISB01JAN2015-LESSREPAYMENTON-01FEB2015-RESCHDULE01MAR2015-INTEREST-ON-REMAINDERLOAN-2.xlsx|
	  Then I make repayment and verified the following tabs
     			|4655-DISB01JAN2015-LESSREPAYMENTON-01FEB2015-RESCHDULE01MAR2015-INTEREST-ON-REMAINDERLOAN-2.xlsx|Repay1|
	  Then I "Edit Date " In Edit Repayment Schedule page
                |4655-DISB01JAN2015-LESSREPAYMENTON-01FEB2015-RESCHDULE01MAR2015-INTEREST-ON-REMAINDERLOAN-2.xlsx|Edit Repayment Schedule|
      And I verified the "Repayment Schedule" details successfully 
	  			|4655-DISB01JAN2015-LESSREPAYMENTON-01FEB2015-RESCHDULE01MAR2015-INTEREST-ON-REMAINDERLOAN-2.xlsx|
				
@4656-DISB01JAN2015-MOREREPAYMENTON-01FEB2015-RESCHDULEFROM01MAR2015-INSTRESCHDULETO15MAR2015INTEREST-ON-REMAINDERLOAN-24
	  Scenario: 4656-DISB01JAN2015-MOREREPAYMENTON-01FEB2015-RESCHDULEFROM01MAR2015-INSTRESCHDULETO15MAR2015INTEREST-ON-REMAINDERLOAN-24

      
      Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			|4656-DISB01JAN2015-MOREREPAYMENTON-01FEB2015-RESCHDULEFROM01MAR2015-INSTRESCHDULETO15MAR2015INTEREST-ON-REMAINDERLOAN-24.xlsx|
	  Then I make repayment and verified the following tabs
     			|4656-DISB01JAN2015-MOREREPAYMENTON-01FEB2015-RESCHDULEFROM01MAR2015-INSTRESCHDULETO15MAR2015INTEREST-ON-REMAINDERLOAN-24.xlsx|Repay1|
	  Then I "Edit Date " In Edit Repayment Schedule page
                |4656-DISB01JAN2015-MOREREPAYMENTON-01FEB2015-RESCHDULEFROM01MAR2015-INSTRESCHDULETO15MAR2015INTEREST-ON-REMAINDERLOAN-24.xlsx|Edit Repayment Schedule|
      And I verified the "Repayment Schedule" details successfully 
	  			|4656-DISB01JAN2015-MOREREPAYMENTON-01FEB2015-RESCHDULEFROM01MAR2015-INSTRESCHDULETO15MAR2015INTEREST-ON-REMAINDERLOAN-24.xlsx|
				
@4657-DISB01JAN2015-REPAYMENTON-01FEB2015-RESCHDULEFROM01FEB2015-INSTRESCHDULETO15FEB2015
	  Scenario: 4657-DISB01JAN2015-REPAYMENTON-01FEB2015-RESCHDULEFROM01FEB2015-INSTRESCHDULETO15FEB2015

      
      Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			|4657-DISB01JAN2015-REPAYMENTON-01FEB2015-RESCHDULEFROM01FEB2015-INSTRESCHDULETO15FEB2015.xlsx|
	  Then I make repayment and verified the following tabs
     			|4657-DISB01JAN2015-REPAYMENTON-01FEB2015-RESCHDULEFROM01FEB2015-INSTRESCHDULETO15FEB2015.xlsx|Repay1|
	  Then I "Edit Date " In Edit Repayment Schedule page
                |4657-DISB01JAN2015-REPAYMENTON-01FEB2015-RESCHDULEFROM01FEB2015-INSTRESCHDULETO15FEB2015.xlsx|Edit Repayment Schedule|
   	  Then i validate and Verify from "error" sheet
	 			|4657-DISB01JAN2015-REPAYMENTON-01FEB2015-RESCHDULEFROM01FEB2015-INSTRESCHDULETO15FEB2015.xlsx|										

@4658-DISB01JAN2015-WAIVEINT-RESCHEDULE-INTEREST-ON-REMAINDERLOAN-24
	  Scenario: 4658-DISB01JAN2015-WAIVEINT-RESCHEDULE-INTEREST-ON-REMAINDERLOAN-24
      
      Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			|4658-DISB01JAN2015-WAIVEINT-RESCHEDULE-INTEREST-ON-REMAINDERLOAN-24.xlsx|
	   Then I "WaiveInterest" and verified the following tabs
	            |4658-DISB01JAN2015-WAIVEINT-RESCHEDULE-INTEREST-ON-REMAINDERLOAN-24.xlsx|Modify Transaction|
	  Then I "Edit Date " In Edit Repayment Schedule page
                |4658-DISB01JAN2015-WAIVEINT-RESCHEDULE-INTEREST-ON-REMAINDERLOAN-24.xlsx|Edit Repayment Schedule|
      And I verified the "Repayment Schedule" details successfully 
	  			|4658-DISB01JAN2015-WAIVEINT-RESCHEDULE-INTEREST-ON-REMAINDERLOAN-24.xlsx|
				
	
@4659-DISB01JAN2015-RESCHEDULE-INTEREST-ON-REMAINDERLOAN-24-FORECLOSE
	  Scenario: 4659-DISB01JAN2015-RESCHEDULE-INTEREST-ON-REMAINDERLOAN-24-FORECLOSE
      
      Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			|4659-DISB01JAN2015-RESCHEDULE-INTEREST-ON-REMAINDERLOAN-24-FORECLOSE.xlsx|
	  Then I "Edit Date " In Edit Repayment Schedule page
                |4659-DISB01JAN2015-RESCHEDULE-INTEREST-ON-REMAINDERLOAN-24-FORECLOSE.xlsx|Edit Repayment Schedule|
      And I verified the "Repayment Schedule" details successfully 
	  			|4659-DISB01JAN2015-RESCHEDULE-INTEREST-ON-REMAINDERLOAN-24-FORECLOSE.xlsx|
	  Then I "Foreclosure" and verified the following tabs
	  			|4659-DISB01JAN2015-RESCHEDULE-INTEREST-ON-REMAINDERLOAN-24-FORECLOSE.xlsx| Foreclosure | Transactions |
				
@4660-DISB01JAN2015-RESCHDULE01FEB2015-INSTRESCHDULE15FEB2015-AGAINRESCHDULE15FEB2015-INSTRESCHDULE25FEB2015
	  Scenario: 4660-DISB01JAN2015-RESCHDULE01FEB2015-INSTRESCHDULE15FEB2015-AGAINRESCHDULE15FEB2015-INSTRESCHDULE25FEB2015
      
      Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			|4660-DISB01JAN2015-RESCHDULE01FEB2015-INSTRESCHDULE15FEB2015-AGAINRESCHDULE15FEB2015-INSTRESCHDULE25FEB2015.xlsx|
	  Then I "Edit Date " In Edit Repayment Schedule page
                |4660-DISB01JAN2015-RESCHDULE01FEB2015-INSTRESCHDULE15FEB2015-AGAINRESCHDULE15FEB2015-INSTRESCHDULE25FEB2015.xlsx|Edit Repayment Schedule|
   	  Then I "Edit Date1 " In Edit Repayment Schedule page
                |4660-DISB01JAN2015-RESCHDULE01FEB2015-INSTRESCHDULE15FEB2015-AGAINRESCHDULE15FEB2015-INSTRESCHDULE25FEB2015.xlsx|Edit Repayment Schedule1|
      And I verified the "Repayment Schedule" details successfully 
	  			|4660-DISB01JAN2015-RESCHDULE01FEB2015-INSTRESCHDULE15FEB2015-AGAINRESCHDULE15FEB2015-INSTRESCHDULE25FEB2015.xlsx|
	
@4661-DISB01JAN2015-SPECIFIEDDUEDATEFEE-1%INTON15FEB2015-RESCHDULE01FEB2015-INTEREST-ON-REMAINDERLOAN-24
	  Scenario: 4661-DISB01JAN2015-SPECIFIEDDUEDATEFEE-1%INTON15FEB2015-RESCHDULE01FEB2015-INTEREST-ON-REMAINDERLOAN-24
      
      Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			|4661-DISB01JAN2015-SPECIFIEDDUEDATEFEE-1%INTON15FEB2015-RESCHDULE01FEB2015-INTEREST-ON-REMAINDERLOAN-24.xlsx|
	  Then I "Edit Date " In Edit Repayment Schedule page
                |4661-DISB01JAN2015-SPECIFIEDDUEDATEFEE-1%INTON15FEB2015-RESCHDULE01FEB2015-INTEREST-ON-REMAINDERLOAN-24.xlsx|Edit Repayment Schedule|
      And I verified the "Repayment Schedule" details successfully 
	  			|4661-DISB01JAN2015-SPECIFIEDDUEDATEFEE-1%INTON15FEB2015-RESCHDULE01FEB2015-INTEREST-ON-REMAINDERLOAN-24.xlsx|
	
@4662-DISB01JAN2015-RESCHDULE01FEB2015-Mid-GracePeriods-principal-3and-interest-3-RESCHDULE01MAY2015-INTEREST-ON-REMAINDERLOAN-24
	  Scenario: 4662-DISB01JAN2015-RESCHDULE01FEB2015-Mid-GracePeriods-principal-3and-interest-3-RESCHDULE01MAY2015-INTEREST-ON-REMAINDERLOAN-24
      
           Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			|4662-DISB01JAN2015-RESCHDULE01FEB2015-Mid-GracePeriods-principal-3and-interest-3-RESCHDULE01MAY2015-INTEREST-ON-REMAINDERLOAN-24.xlsx|
	  Then I "Edit Date " In Edit Repayment Schedule page
                |4662-DISB01JAN2015-RESCHDULE01FEB2015-Mid-GracePeriods-principal-3and-interest-3-RESCHDULE01MAY2015-INTEREST-ON-REMAINDERLOAN-24.xlsx|Edit Repayment Schedule|
   	  Then I "Edit Date1 " In Edit Repayment Schedule page
                |4662-DISB01JAN2015-RESCHDULE01FEB2015-Mid-GracePeriods-principal-3and-interest-3-RESCHDULE01MAY2015-INTEREST-ON-REMAINDERLOAN-24.xlsx|Edit Repayment Schedule1|
      And I verified the "Repayment Schedule" details successfully 
	  			|4662-DISB01JAN2015-RESCHDULE01FEB2015-Mid-GracePeriods-principal-3and-interest-3-RESCHDULE01MAY2015-INTEREST-ON-REMAINDERLOAN-24.xlsx|
	
@4663-DISB01JAN2015-RESCHDULE01FEB2015-INSTRESCHDULE15FEB2015-AGAINRESCHDULE-EXTN-REPAYMENTPRD-NUMBER-OF-REPAYMENTS-3
	  Scenario: 4663-DISB01JAN2015-RESCHDULE01FEB2015-INSTRESCHDULE15FEB2015-AGAINRESCHDULE-EXTN-REPAYMENTPRD-NUMBER-OF-REPAYMENTS-3
      
      Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			|4663-DISB01JAN2015-RESCHDULE01FEB2015-INSTRESCHDULE15FEB2015-AGAINRESCHDULE-EXTN-REPAYMENTPRD-NUMBER-OF-REPAYMENTS-3.xlsx|
	  Then I "Edit Date " In Edit Repayment Schedule page
                |4663-DISB01JAN2015-RESCHDULE01FEB2015-INSTRESCHDULE15FEB2015-AGAINRESCHDULE-EXTN-REPAYMENTPRD-NUMBER-OF-REPAYMENTS-3.xlsx|Edit Repayment Schedule|
   	  Then I "Edit Date1 " In Edit Repayment Schedule page
                |4663-DISB01JAN2015-RESCHDULE01FEB2015-INSTRESCHDULE15FEB2015-AGAINRESCHDULE-EXTN-REPAYMENTPRD-NUMBER-OF-REPAYMENTS-3.xlsx|Edit Repayment Schedule1|
      And I verified the "Repayment Schedule" details successfully 
	  			|4663-DISB01JAN2015-RESCHDULE01FEB2015-INSTRESCHDULE15FEB2015-AGAINRESCHDULE-EXTN-REPAYMENTPRD-NUMBER-OF-REPAYMENTS-3.xlsx|
	
@4664-DISB01JAN2015-RESCHDULE01FEB2015-EXTN-REPAYMENTPRD-NUMBER-OF-REPAYMENT-3-AGAINRESCHDULE-INTEREST-ON-REMAINDERLOAN-24
	  Scenario:4664-DISB01JAN2015-RESCHDULE01FEB2015-EXTN-REPAYMENTPRD-NUMBER-OF-REPAYMENT-3-AGAINRESCHDULE-INTEREST-ON-REMAINDERLOAN-24
      
      Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			|4664-DISB01JAN2015-RESCHDULE01FEB2015-EXTN-REPAYMENTPRD-NUMBER-OF-REPAYMENT-3-AGAINRESCHDULE-INTEREST-ON-REMAINDERLOAN-24.xlsx|
	  Then I "Edit Date " In Edit Repayment Schedule page
                |4664-DISB01JAN2015-RESCHDULE01FEB2015-EXTN-REPAYMENTPRD-NUMBER-OF-REPAYMENT-3-AGAINRESCHDULE-INTEREST-ON-REMAINDERLOAN-24.xlsx|Edit Repayment Schedule|
   	  Then I "Edit Date1 " In Edit Repayment Schedule page
                |4664-DISB01JAN2015-RESCHDULE01FEB2015-EXTN-REPAYMENTPRD-NUMBER-OF-REPAYMENT-3-AGAINRESCHDULE-INTEREST-ON-REMAINDERLOAN-24.xlsx|Edit Repayment Schedule1|
      And I verified the "Repayment Schedule" details successfully 
	  			|4664-DISB01JAN2015-RESCHDULE01FEB2015-EXTN-REPAYMENTPRD-NUMBER-OF-REPAYMENT-3-AGAINRESCHDULE-INTEREST-ON-REMAINDERLOAN-24.xlsx|
	
@4665-DISB01JAN2015-RESCHDULE01FEB2015-EXTN-REPAYMENTPRD-NUMBER-OF-REPAYMENT-3-Repayon01FFEB2015-AGAINRESCHDULE-NUMBER-OF-REPAYMENT-3
	  Scenario:4665-DISB01JAN2015-RESCHDULE01FEB2015-EXTN-REPAYMENTPRD-NUMBER-OF-REPAYMENT-3-Repayon01FFEB2015-AGAINRESCHDULE-NUMBER-OF-REPAYMENT-3
      
      Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			|4665-DISB01JAN2015-RESCHDULE01FEB2015-EXTN-REPAYMENTPRD-NUMBER-OF-REPAYMENT-3-Repayon01FFEB2015-AGAINRESCHDULE-NUMBER-OF-REPAYMENT-3.xlsx|
	  Then I "Edit Date " In Edit Repayment Schedule page
                |4665-DISB01JAN2015-RESCHDULE01FEB2015-EXTN-REPAYMENTPRD-NUMBER-OF-REPAYMENT-3-Repayon01FFEB2015-AGAINRESCHDULE-NUMBER-OF-REPAYMENT-3.xlsx|Edit Repayment Schedule|
      Then I make repayment and verified the following tabs
     			|4665-DISB01JAN2015-RESCHDULE01FEB2015-EXTN-REPAYMENTPRD-NUMBER-OF-REPAYMENT-3-Repayon01FFEB2015-AGAINRESCHDULE-NUMBER-OF-REPAYMENT-3.xlsx|Repay1|          
   	  Then I "Edit Date1 " In Edit Repayment Schedule page
                |4665-DISB01JAN2015-RESCHDULE01FEB2015-EXTN-REPAYMENTPRD-NUMBER-OF-REPAYMENT-3-Repayon01FFEB2015-AGAINRESCHDULE-NUMBER-OF-REPAYMENT-3.xlsx|Edit Repayment Schedule1|
      And I verified the "Repayment Schedule" details successfully 
	  			|4665-DISB01JAN2015-RESCHDULE01FEB2015-EXTN-REPAYMENTPRD-NUMBER-OF-REPAYMENT-3-Repayon01FFEB2015-AGAINRESCHDULE-NUMBER-OF-REPAYMENT-3.xlsx|
	
@4666-DISB01JAN2015-RESCHEDULE-INSTRESCHDULE15FEB2015-Midterm-GRACEPRD-2-EXTNREAYMENTPRD-3-INT-ON-RMNDLOAN-24-AGAINRESCHEDULE15MAR2015-INSTRESCHDULETO25APR2015
	  Scenario:4666-DISB01JAN2015-RESCHEDULE-INSTRESCHDULE15FEB2015-Midterm-GRACEPRD-2-EXTNREAYMENTPRD-3-INT-ON-RMNDLOAN-24-AGAINRESCHEDULE15MAR2015-INSTRESCHDULETO25APR2015
      
      Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			|4666-DISB01JAN2015-RESCHEDULE-INSTRESCHDULE15FEB2015-Midterm-GRACEPRD-2-EXTNREAYMENTPRD-3-INT-ON-RMNDLOAN-24-AGAINRESCHEDULE15MAR2015-INSTRESCHDULETO25APR2015.xlsx|
	  Then I "Edit Date " In Edit Repayment Schedule page
                |4666-DISB01JAN2015-RESCHEDULE-INSTRESCHDULE15FEB2015-Midterm-GRACEPRD-2-EXTNREAYMENTPRD-3-INT-ON-RMNDLOAN-24-AGAINRESCHEDULE15MAR2015-INSTRESCHDULETO25APR2015.xlsx|Edit Repayment Schedule|      
   	  Then I "Edit Date1 " In Edit Repayment Schedule page
                |4666-DISB01JAN2015-RESCHEDULE-INSTRESCHDULE15FEB2015-Midterm-GRACEPRD-2-EXTNREAYMENTPRD-3-INT-ON-RMNDLOAN-24-AGAINRESCHEDULE15MAR2015-INSTRESCHDULETO25APR2015.xlsx|Edit Repayment Schedule1|
      And I verified the "Repayment Schedule" details successfully 
	  			|4666-DISB01JAN2015-RESCHEDULE-INSTRESCHDULE15FEB2015-Midterm-GRACEPRD-2-EXTNREAYMENTPRD-3-INT-ON-RMNDLOAN-24-AGAINRESCHEDULE15MAR2015-INSTRESCHDULETO25APR2015.xlsx|

@4667-DISB01JAN2015-MORATORIUMONPRINCIPAL+INT-3-RESCHEDULE-Mid-GracePeriods-3-AGAINRESCHEDULE-INST-ON-remainder-loan-24
	  Scenario:4667-DISB01JAN2015-MORATORIUMONPRINCIPAL+INT-3-RESCHEDULE-Mid-GracePeriods-3-AGAINRESCHEDULE-INST-ON-remainder-loan-24
      
      Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			|4667-DISB01JAN2015-MORATORIUMONPRINCIPAL+INT-3-RESCHEDULE-Mid-GracePeriods-3-AGAINRESCHEDULE-INST-ON-remainder-loan-24.xlsx|
	  Then I "Edit Date " In Edit Repayment Schedule page
                |4667-DISB01JAN2015-MORATORIUMONPRINCIPAL+INT-3-RESCHEDULE-Mid-GracePeriods-3-AGAINRESCHEDULE-INST-ON-remainder-loan-24.xlsx|Edit Repayment Schedule|      
   	  Then I "Edit Date1 " In Edit Repayment Schedule page
                |4667-DISB01JAN2015-MORATORIUMONPRINCIPAL+INT-3-RESCHEDULE-Mid-GracePeriods-3-AGAINRESCHEDULE-INST-ON-remainder-loan-24.xlsx|Edit Repayment Schedule1|
      And I verified the "Repayment Schedule" details successfully 
	  			|4667-DISB01JAN2015-MORATORIUMONPRINCIPAL+INT-3-RESCHEDULE-Mid-GracePeriods-3-AGAINRESCHEDULE-INST-ON-remainder-loan-24.xlsx|
	
				
@4668-SUBMITLOAN01JAN2015-DATE-VAR-INST-15FEB2015-DISBURSE01JAN2015-RESCHEDULE-15FEB2015to25FEB2015
	  Scenario:4668-SUBMITLOAN01JAN2015-DATE-VAR-INST-15FEB2015-DISBURSE01JAN2015-RESCHEDULE-15FEB2015to25FEB2015
      
      Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			|4668-SUBMITLOAN01JAN2015-DATE-VAR-INST-15FEB2015-DISBURSE01JAN2015-RESCHEDULE-15FEB2015to25FEB2015.xlsx|
	  Then I "Edit Date " In Edit Repayment Schedule page
                |4668-SUBMITLOAN01JAN2015-DATE-VAR-INST-15FEB2015-DISBURSE01JAN2015-RESCHEDULE-15FEB2015to25FEB2015.xlsx|Edit Repayment Schedule|      
   	  Then I "Edit Date1 " In Edit Repayment Schedule page
                |4668-SUBMITLOAN01JAN2015-DATE-VAR-INST-15FEB2015-DISBURSE01JAN2015-RESCHEDULE-15FEB2015to25FEB2015.xlsx|Edit Repayment Schedule1|
      And I verified the "Repayment Schedule" details successfully 
	  			|4668-SUBMITLOAN01JAN2015-DATE-VAR-INST-15FEB2015-DISBURSE01JAN2015-RESCHEDULE-15FEB2015to25FEB2015.xlsx|
	
	
########## Loan Provisioning
	
@4669-DISBURSELOANon01JAN2015-RUNSCHEDULERJOB-VIEWJOURNALENTRIES-ON-01MAR2015
	  Scenario:4669-DISBURSELOANon01JAN2015-RUNSCHEDULERJOB-VIEWJOURNALENTRIES-ON-01MAR2015
      
      Given I Navigate and create Loan Provisioning "Criteria" from "Loan Provisioning Criteria" Sheet
                |4669-DISBURSELOANon01JAN2015-RUNSCHEDULERJOB-VIEWJOURNALENTRIES-ON-01MAR2015.xlsx|
      Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			|4669-DISBURSELOANon01JAN2015-RUNSCHEDULERJOB-VIEWJOURNALENTRIES-ON-01MAR2015.xlsx|
	  Given I Navigate and create Loan Provisioning "Entries" from "Create Provisioning Entry" Sheet
	            |4669-DISBURSELOANon01JAN2015-RUNSCHEDULERJOB-VIEWJOURNALENTRIES-ON-01MAR2015.xlsx|
      And I verified the "Loan Provisioning Journals" details successfully 
	  			|4669-DISBURSELOANon01JAN2015-RUNSCHEDULERJOB-VIEWJOURNALENTRIES-ON-01MAR2015.xlsx|


@4670-DISBURSELOANon01JAN2015-REPAY0N01FEB2015-RUNSCHEDULERJOB-VIEWJOURNALENTRIES-ON-02MAR2015
	  Scenario:4670-DISBURSELOANon01JAN2015-REPAY0N01FEB2015-RUNSCHEDULERJOB-VIEWJOURNALENTRIES-ON-02MAR2015
      
      
      Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			|4670-DISBURSELOANon01JAN2015-REPAY0N01FEB2015-RUNSCHEDULERJOB-VIEWJOURNALENTRIES-ON-02MAR2015.xlsx|
	  Then I make repayment and verified the following tabs
       			|4670-DISBURSELOANon01JAN2015-REPAY0N01FEB2015-RUNSCHEDULERJOB-VIEWJOURNALENTRIES-ON-02MAR2015.xlsx|Repay1|
	  Given I Navigate and create Loan Provisioning "Entries" from "Create Provisioning Entry" Sheet
	            |4670-DISBURSELOANon01JAN2015-REPAY0N01FEB2015-RUNSCHEDULERJOB-VIEWJOURNALENTRIES-ON-02MAR2015.xlsx|
      And I verified the "Loan Provisioning Journals" details successfully 
	  			|4670-DISBURSELOANon01JAN2015-REPAY0N01FEB2015-RUNSCHEDULERJOB-VIEWJOURNALENTRIES-ON-02MAR2015.xlsx|
	

	
@4671-DISBLOAN01JAN2015-REPAY01FEB2015-RUNSCHEDJOB-VIEWJOURNALENT-03MAR2015-UNDOLASTTRANSACTION-RUNSCHEDJOB-VIEWJOURNALENTRIES-04MAR2015
	  Scenario:4671-DISBLOAN01JAN2015-REPAY01FEB2015-RUNSCHEDJOB-VIEWJOURNALENT-03MAR2015-UNDOLASTTRANSACTION-RUNSCHEDJOB-VIEWJOURNALENTRIES-04MAR2015
      
      
      Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			|4671-DISBLOAN01JAN2015-REPAY01FEB2015-RUNSCHEDJOB-VIEWJOURNALENT-03MAR2015-UNDOLASTTRANSACTION-RUNSCHEDJOB-VIEWJOURNALENTRIES-04MAR2015.xlsx|
	  Then I make repayment and verified the following tabs
       			|4671-DISBLOAN01JAN2015-REPAY01FEB2015-RUNSCHEDJOB-VIEWJOURNALENT-03MAR2015-UNDOLASTTRANSACTION-RUNSCHEDJOB-VIEWJOURNALENTRIES-04MAR2015.xlsx|Repay1|
	  Given I Navigate and create Loan Provisioning "Entries" from "Create Provisioning Entry" Sheet
	            |4671-DISBLOAN01JAN2015-REPAY01FEB2015-RUNSCHEDJOB-VIEWJOURNALENT-03MAR2015-UNDOLASTTRANSACTION-RUNSCHEDJOB-VIEWJOURNALENTRIES-04MAR2015.xlsx|
      And I verified the "Loan Provisioning Journals" details successfully 
	  			|4671-DISBLOAN01JAN2015-REPAY01FEB2015-RUNSCHEDJOB-VIEWJOURNALENT-03MAR2015-UNDOLASTTRANSACTION-RUNSCHEDJOB-VIEWJOURNALENTRIES-04MAR2015.xlsx|
	  Then I "undo transaction from transaction tab" and verified the following tabs
	  			|4671-DISBLOAN01JAN2015-REPAY01FEB2015-RUNSCHEDJOB-VIEWJOURNALENT-03MAR2015-UNDOLASTTRANSACTION-RUNSCHEDJOB-VIEWJOURNALENTRIES-04MAR2015.xlsx|Modify Transaction|
	  Given I Navigate and create Loan Provisioning "Entries" from "Create Provisioning Entry1" Sheet
	            |4671-DISBLOAN01JAN2015-REPAY01FEB2015-RUNSCHEDJOB-VIEWJOURNALENT-03MAR2015-UNDOLASTTRANSACTION-RUNSCHEDJOB-VIEWJOURNALENTRIES-04MAR2015.xlsx|
      And I verified the "Loan Provisioning Journals1" details successfully 
	  			|4671-DISBLOAN01JAN2015-REPAY01FEB2015-RUNSCHEDJOB-VIEWJOURNALENT-03MAR2015-UNDOLASTTRANSACTION-RUNSCHEDJOB-VIEWJOURNALENTRIES-04MAR2015.xlsx|
				
@4672-DISB01JAN2015-SCHEDJOB-VIEWJOURENT05MAR2015-RESCHD-LOAN-GRACEON-PRI-INT-3-RUNSCHEDJOB-VIEWJOURENT-06MAR2015 
	  Scenario:4672-DISB01JAN2015-SCHEDJOB-VIEWJOURENT05MAR2015-RESCHD-LOAN-GRACEON-PRI-INT-3-RUNSCHEDJOB-VIEWJOURENT-06MAR2015 
      
      
      Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			|4672-DISB01JAN2015-SCHEDJOB-VIEWJOURENT05MAR2015-RESCHD-LOAN-GRACEON-PRI-INT-3-RUNSCHEDJOB-VIEWJOURENT-06MAR2015.xlsx|
	  Given I Navigate and create Loan Provisioning "Entries" from "Create Provisioning Entry" Sheet
	            |4672-DISB01JAN2015-SCHEDJOB-VIEWJOURENT05MAR2015-RESCHD-LOAN-GRACEON-PRI-INT-3-RUNSCHEDJOB-VIEWJOURENT-06MAR2015.xlsx|
      And I verified the "Loan Provisioning Journals" details successfully 
	  			|4672-DISB01JAN2015-SCHEDJOB-VIEWJOURENT05MAR2015-RESCHD-LOAN-GRACEON-PRI-INT-3-RUNSCHEDJOB-VIEWJOURENT-06MAR2015.xlsx|
	  Then I "Edit Date " In Edit Repayment Schedule page
                |4672-DISB01JAN2015-SCHEDJOB-VIEWJOURENT05MAR2015-RESCHD-LOAN-GRACEON-PRI-INT-3-RUNSCHEDJOB-VIEWJOURENT-06MAR2015.xlsx|Edit Repayment Schedule|
	  Given I Navigate and create Loan Provisioning "Entries" from "Create Provisioning Entry1" Sheet
	            |4672-DISB01JAN2015-SCHEDJOB-VIEWJOURENT05MAR2015-RESCHD-LOAN-GRACEON-PRI-INT-3-RUNSCHEDJOB-VIEWJOURENT-06MAR2015.xlsx|
      And I verified the "Loan Provisioning Journals1" details successfully 
	  			|4672-DISB01JAN2015-SCHEDJOB-VIEWJOURENT05MAR2015-RESCHD-LOAN-GRACEON-PRI-INT-3-RUNSCHEDJOB-VIEWJOURENT-06MAR2015.xlsx|

@4673-DISB01JAN2015-REPAY-LESS-ON-01FEB2015-RUNSCHEDJOB-VIEWJOURENT-ON-07MAR2015 
	  Scenario:4673-DISB01JAN2015-REPAY-LESS-ON-01FEB2015-RUNSCHEDJOB-VIEWJOURENT-ON-07MAR2015 
      
      
      Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			|4673-DISB01JAN2015-REPAY-LESS-ON-01FEB2015-RUNSCHEDJOB-VIEWJOURENT-ON-07MAR2015.xlsx|
	  Then I make repayment and verified the following tabs
       			|4673-DISB01JAN2015-REPAY-LESS-ON-01FEB2015-RUNSCHEDJOB-VIEWJOURENT-ON-07MAR2015.xlsx|Repay1|
      Given I Navigate and create Loan Provisioning "Entries" from "Create Provisioning Entry" Sheet
	            |4673-DISB01JAN2015-REPAY-LESS-ON-01FEB2015-RUNSCHEDJOB-VIEWJOURENT-ON-07MAR2015.xlsx|
      And I verified the "Loan Provisioning Journals" details successfully 
	  			|4673-DISB01JAN2015-REPAY-LESS-ON-01FEB2015-RUNSCHEDJOB-VIEWJOURENT-ON-07MAR2015.xlsx|
	 				
				
@4674-DISB01JAN2015-EARLYREPAY-ON-15JAN2015-RUNSCHEDJOB-VIEWJOURENT-ON-08MAR2015 
	  Scenario:4674-DISB01JAN2015-EARLYREPAY-ON-15JAN2015-RUNSCHEDJOB-VIEWJOURENT-ON-08MAR2015 
      
      
      Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			|4674-DISB01JAN2015-EARLYREPAY-ON-15JAN2015-RUNSCHEDJOB-VIEWJOURENT-ON-08MAR2015.xlsx|
	  Then I make repayment and verified the following tabs
       			|4674-DISB01JAN2015-EARLYREPAY-ON-15JAN2015-RUNSCHEDJOB-VIEWJOURENT-ON-08MAR2015.xlsx|Repay1|
      Given I Navigate and create Loan Provisioning "Entries" from "Create Provisioning Entry" Sheet
	            |4674-DISB01JAN2015-EARLYREPAY-ON-15JAN2015-RUNSCHEDJOB-VIEWJOURENT-ON-08MAR2015.xlsx|
      And I verified the "Loan Provisioning Journals" details successfully 
	  			|4674-DISB01JAN2015-EARLYREPAY-ON-15JAN2015-RUNSCHEDJOB-VIEWJOURENT-ON-08MAR2015.xlsx|

@4675-DISB01JAN2015-REPAY01FEB2015-RUNSCHEDJOB-VIEWJOURENT09MAR2015-WRITEOFFLOAN-RUNSCHEDJOB-VIEWJOURENT10MAR2015  
	  Scenario:4675-DISB01JAN2015-REPAY01FEB2015-RUNSCHEDJOB-VIEWJOURENT09MAR2015-WRITEOFFLOAN-RUNSCHEDJOB-VIEWJOURENT10MAR2015 
      
      
      Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			|4675-DISB01JAN2015-REPAY01FEB2015-RUNSCHEDJOB-VIEWJOURENT09MAR2015-WRITEOFFLOAN-RUNSCHEDJOB-VIEWJOURENT10MAR2015.xlsx|
	  Then I make repayment and verified the following tabs
       			|4675-DISB01JAN2015-REPAY01FEB2015-RUNSCHEDJOB-VIEWJOURENT09MAR2015-WRITEOFFLOAN-RUNSCHEDJOB-VIEWJOURENT10MAR2015.xlsx|Repay1|
      Given I Navigate and create Loan Provisioning "Entries" from "Create Provisioning Entry" Sheet
	            |4675-DISB01JAN2015-REPAY01FEB2015-RUNSCHEDJOB-VIEWJOURENT09MAR2015-WRITEOFFLOAN-RUNSCHEDJOB-VIEWJOURENT10MAR2015.xlsx|
      And I verified the "Loan Provisioning Journals" details successfully 
	  			|4675-DISB01JAN2015-REPAY01FEB2015-RUNSCHEDJOB-VIEWJOURENT09MAR2015-WRITEOFFLOAN-RUNSCHEDJOB-VIEWJOURENT10MAR2015.xlsx|
	  Then I "WaiveInterest" and verified the following tabs
	  			|4675-DISB01JAN2015-REPAY01FEB2015-RUNSCHEDJOB-VIEWJOURENT09MAR2015-WRITEOFFLOAN-RUNSCHEDJOB-VIEWJOURENT10MAR2015.xlsx|Modify Transaction|
	  Given I Navigate and create Loan Provisioning "Entries" from "Create Provisioning Entry1" Sheet
	            |4675-DISB01JAN2015-REPAY01FEB2015-RUNSCHEDJOB-VIEWJOURENT09MAR2015-WRITEOFFLOAN-RUNSCHEDJOB-VIEWJOURENT10MAR2015.xlsx|
      And I Verify "element" not visible
	            |ProvisionEntries| 			
				
				
@4676-DISB01JAN2015-REPAY01FEB2015-RUNSCHEDJOB-VIEWJOURENT11MAR2015-FORECLOSELOAN15FEB2015-RUNSCHEDJOB-VIEWJOURENT12MAR2015   
	  Scenario:4676-DISB01JAN2015-REPAY01FEB2015-RUNSCHEDJOB-VIEWJOURENT11MAR2015-FORECLOSELOAN15FEB2015-RUNSCHEDJOB-VIEWJOURENT12MAR2015 
      
      
      Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			|4676-DISB01JAN2015-REPAY01FEB2015-RUNSCHEDJOB-VIEWJOURENT11MAR2015-FORECLOSELOAN15FEB2015-RUNSCHEDJOB-VIEWJOURENT12MAR2015.xlsx|
	  Then I make repayment and verified the following tabs
       			|4676-DISB01JAN2015-REPAY01FEB2015-RUNSCHEDJOB-VIEWJOURENT11MAR2015-FORECLOSELOAN15FEB2015-RUNSCHEDJOB-VIEWJOURENT12MAR2015.xlsx|Repay1|
      Given I Navigate and create Loan Provisioning "Entries" from "Create Provisioning Entry" Sheet
	            |4676-DISB01JAN2015-REPAY01FEB2015-RUNSCHEDJOB-VIEWJOURENT11MAR2015-FORECLOSELOAN15FEB2015-RUNSCHEDJOB-VIEWJOURENT12MAR2015.xlsx|
      And I verified the "Loan Provisioning Journals" details successfully 
	  			|4676-DISB01JAN2015-REPAY01FEB2015-RUNSCHEDJOB-VIEWJOURENT11MAR2015-FORECLOSELOAN15FEB2015-RUNSCHEDJOB-VIEWJOURENT12MAR2015.xlsx|
	  Then I "Foreclosure" and verified the following tabs
	  			|4676-DISB01JAN2015-REPAY01FEB2015-RUNSCHEDJOB-VIEWJOURENT11MAR2015-FORECLOSELOAN15FEB2015-RUNSCHEDJOB-VIEWJOURENT12MAR2015.xlsx| Foreclosure |
	  Given I Navigate and create Loan Provisioning "Entries" from "Create Provisioning Entry1" Sheet
	            |4676-DISB01JAN2015-REPAY01FEB2015-RUNSCHEDJOB-VIEWJOURENT11MAR2015-FORECLOSELOAN15FEB2015-RUNSCHEDJOB-VIEWJOURENT12MAR2015.xlsx|
      And I Verify "element" not visible
	            |ProvisionEntries| 	

@4677-DISB01JAN2015-RUNSCHEDJOB-VIEWJOURENT13MAR2015-UNDODISBRSE-RUNSCHEDJOB-VIEWJOURENT14MAR2015   
	  Scenario:4677-DISB01JAN2015-RUNSCHEDJOB-VIEWJOURENT13MAR2015-UNDODISBRSE-RUNSCHEDJOB-VIEWJOURENT14MAR2015
      
      
      Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			|4677-DISB01JAN2015-RUNSCHEDJOB-VIEWJOURENT13MAR2015-UNDODISBRSE-RUNSCHEDJOB-VIEWJOURENT14MAR2015.xlsx|
      Given I Navigate and create Loan Provisioning "Entries" from "Create Provisioning Entry" Sheet
	            |4677-DISB01JAN2015-RUNSCHEDJOB-VIEWJOURENT13MAR2015-UNDODISBRSE-RUNSCHEDJOB-VIEWJOURENT14MAR2015.xlsx|
      And I verified the "Loan Provisioning Journals" details successfully 
	  			|4677-DISB01JAN2015-RUNSCHEDJOB-VIEWJOURENT13MAR2015-UNDODISBRSE-RUNSCHEDJOB-VIEWJOURENT14MAR2015.xlsx|
	  Then I "Do Undo Disbursal" and verified the following tabs
	            |4677-DISB01JAN2015-RUNSCHEDJOB-VIEWJOURENT13MAR2015-UNDODISBRSE-RUNSCHEDJOB-VIEWJOURENT14MAR2015.xlsx|Undo Disbursal|
	  Given I Navigate and create Loan Provisioning "Entries" from "Create Provisioning Entry1" Sheet
	            |4677-DISB01JAN2015-RUNSCHEDJOB-VIEWJOURENT13MAR2015-UNDODISBRSE-RUNSCHEDJOB-VIEWJOURENT14MAR2015.xlsx|
      And I Verify "element" not visible
	            |ProvisionEntries| 						
	            
	            	
@4678-DISB01JAN2015-REPAY01FEB2015-RUNSCHEDJOB-VIEWJOURENT15MAR2015-PREPAY15FEB2015-RUNSCHEDJOB-VIEWJOURENT01APR2015    
	  Scenario:4678-DISB01JAN2015-REPAY01FEB2015-RUNSCHEDJOB-VIEWJOURENT15MAR2015-PREPAY15FEB2015-RUNSCHEDJOB-VIEWJOURENT01APR2015
    
      Given I setup the product loan "Setup"
				| Productloannavigation.xlsx |
 	  Then I entered the values into product loan from "ProductLoanInput" Sheet
				|4678-DISB01JAN2015-REPAY01FEB2015-RUNSCHEDJOB-VIEWJOURENT15MAR2015-PREPAY15FEB2015-RUNSCHEDJOB-VIEWJOURENT01APR2015.xlsx|   
      Given I Navigate and create Loan Provisioning "Criteria" from "Loan Provisioning Criteria" Sheet
                |4678-DISB01JAN2015-REPAY01FEB2015-RUNSCHEDJOB-VIEWJOURENT15MAR2015-PREPAY15FEB2015-RUNSCHEDJOB-VIEWJOURENT01APR2015.xlsx|
      Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			|4678-DISB01JAN2015-REPAY01FEB2015-RUNSCHEDJOB-VIEWJOURENT15MAR2015-PREPAY15FEB2015-RUNSCHEDJOB-VIEWJOURENT01APR2015.xlsx|
      Then I make repayment and verified the following tabs
       			|4678-DISB01JAN2015-REPAY01FEB2015-RUNSCHEDJOB-VIEWJOURENT15MAR2015-PREPAY15FEB2015-RUNSCHEDJOB-VIEWJOURENT01APR2015.xlsx|Repay1|
      Given I Navigate and create Loan Provisioning "Entries" from "Create Provisioning Entry" Sheet
	            |4678-DISB01JAN2015-REPAY01FEB2015-RUNSCHEDJOB-VIEWJOURENT15MAR2015-PREPAY15FEB2015-RUNSCHEDJOB-VIEWJOURENT01APR2015.xlsx|
      And I verified the "Loan Provisioning Journals" details successfully 
	  			|4678-DISB01JAN2015-REPAY01FEB2015-RUNSCHEDJOB-VIEWJOURENT15MAR2015-PREPAY15FEB2015-RUNSCHEDJOB-VIEWJOURENT01APR2015.xlsx|
	  Then I "Make Pre Payment" and verified the following tabs
	  			|4678-DISB01JAN2015-REPAY01FEB2015-RUNSCHEDJOB-VIEWJOURENT15MAR2015-PREPAY15FEB2015-RUNSCHEDJOB-VIEWJOURENT01APR2015.xlsx|Prepay Loan|
	  Then I navigate to scheduler job & execute "Generate Loan Loss Provisioning"
	  Given I Navigate and create Loan Provisioning "Entries" from "Create Provisioning Entry1" Sheet
	            |4678-DISB01JAN2015-REPAY01FEB2015-RUNSCHEDJOB-VIEWJOURENT15MAR2015-PREPAY15FEB2015-RUNSCHEDJOB-VIEWJOURENT01APR2015.xlsx|
      And I Verify "element" not visible
	            |ProvisionEntries| 				
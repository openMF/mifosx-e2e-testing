Feature:Multitranch
Background:
	Given I navigate to mifos
	And I login into mifos site using "Login" excel sheet
		| Login.xlsx  |
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
	 #   |Loanproduct.xlsx|
	    |1157-RBI-EI-DB-DL-REC-NON-RNI-CTPD-SAR-MD-TR-2-ONTIME-Loanproduct.xlsx|
	 	|1158-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-Loanproduct.xlsx|
	 	|1205-RBI-EI-DB-SAR-REC-NON-RNI-CTPD-SAR-MD-TR-2-ONTIME-Loanproduct.xlsx|
	 	|1206-RBI-EI-DB-SAR-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-Loanproduct.xlsx|
	 	|1541-RBI-EI-DB-DL-REC-NON-RNI-CTPD-SAR-MD-TR-2-EARLY-Loanproduct.xlsx|
	 	|1542-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-EARLY-Loanproduct.xlsx|
	 	|1589-RBI-EI-DB-SAR-REC-NON-RNI-CTPD-SAR-MD-TR-2-EARLY-Loanproduct.xlsx|
	 	|1590-RBI-EI-DB-SAR-REC-NON-RNI-CTPD-DL-MD-TR-2-EARLY-Loanproduct.xlsx|
	 	|1925-RBI-EI-DB-DL-REC-NON-RNI-CTPD-SAR-MD-TR-2-LATE-Loanproduct.xlsx|
	 	|1926-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-LATE-Loanproduct.xlsx|
	 	|1973-RBI-EI-DB-SAR-REC-NON-RNI-CTPD-SAR-MD-TR-2-LATE-Loanproduct.xlsx|
	 	|1974-RBI-EI-DB-SAR-REC-NON-RNI-CTPD-DL-MD-TR-2-LATE-Loanproduct.xlsx|
	 	|1349-MS-EI-DB-DL-REC-NON-RNI-CTPD-SAR-MD-TR-2-ONTIME-Loanproduct.xlsx|
	 		   |1350-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-Loanproduct.xlsx|
	 		   |1397-MS-EI-DB-SAR-REC-NON-RNI-CTPD-SAR-MD-TR-2-ONTIME-Loanproduct.xlsx|
	 		   |1398-MS-EI-DB-SAR-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-Loanproduct.xlsx|
	 		   |1733-MS-EI-DB-DL-REC-NON-RNI-CTPD-SAR-MD-TR-2-EARLY-Loanproduct.xlsx|
	 		   |1734-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-EARLY-Loanproduct.xlsx|
	 		   |1781-MS-EI-DB-SAR-REC-NON-RNI-CTPD-SAR-MD-TR-2-EARLY-Loanproduct.xlsx|
	 		   |1782-MS-EI-DB-SAR-REC-NON-RNI-CTPD-DL-MD-TR-2-EARLY-Loanproduct.xlsx|
	    	   |2117-MS-EI-DB-DL-REC-NON-RNI-CTPD-SAR-MD-TR-2-LATE-Loanproduct.xlsx|
	    	   |2118-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-LATE-Loanproduct.xlsx|
	    	   |2165-MS-EI-DB-SAR-REC-NON-RNI-CTPD-SAR-MD-TR-2-LATE-Loanproduct.xlsx|
     		   |2166-MS-EI-DB-SAR-REC-NON-RNI-CTPD-DL-MD-TR-2-LATE-Loanproduct.xlsx|
   

@scenario49-Loan-1157-RBI-EI-DB-DL-REC-NON-RNI-CTPD-SAR-MD-TR-2-ONTIME	   
	  Scenario: Loan-1157-RBI-EI-DB-DL-REC-NON-RNI-CTPD-SAR-MD-TR-2-ONTIME
	
	  Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			| 1157-RBI-EI-DB-DL-REC-NON-RNI-CTPD-SAR-MD-TR-2-ONTIME-Newcreateloan1.xlsx|
	  Then I verified the "Summary" details successfully 
	  			| 1157-RBI-EI-DB-DL-REC-NON-RNI-CTPD-SAR-MD-TR-2-ONTIME-Newcreateloan1.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
	  			| 1157-RBI-EI-DB-DL-REC-NON-RNI-CTPD-SAR-MD-TR-2-ONTIME-Newcreateloan1.xlsx|
	  Then I make repayment and verified the following tabs
       			|1157-RBI-EI-DB-DL-REC-NON-RNI-CTPD-SAR-MD-TR-2-ONTIME-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
      And I disburse loan from "NewLoanInput" sheet
      			| 1157-RBI-EI-DB-DL-REC-NON-RNI-CTPD-SAR-MD-TR-2-ONTIME-Newcreateloan2.xlsx|
      Then I verified the "Summary" details successfully 
	  			| 1157-RBI-EI-DB-DL-REC-NON-RNI-CTPD-SAR-MD-TR-2-ONTIME-Newcreateloan2.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
	  			| 1157-RBI-EI-DB-DL-REC-NON-RNI-CTPD-SAR-MD-TR-2-ONTIME-Newcreateloan2.xlsx| 			
	  And I verified the "Transactions" details successfully	
				| 1157-RBI-EI-DB-DL-REC-NON-RNI-CTPD-SAR-MD-TR-2-ONTIME-Newcreateloan2.xlsx| 
					 	
@scenario50-Loan-1158-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME	   
	  Scenario: Loan-1158-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME
	
	  Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			| 1158-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-Newcreateloan1.xlsx|
	  Then I verified the "Summary" details successfully 
	  			| 1158-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-Newcreateloan1.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
	  			| 1158-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-Newcreateloan1.xlsx|
	  Then I make repayment and verified the following tabs
       			|1158-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
      And I disburse loan from "NewLoanInput" sheet
      			| 1158-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-Newcreateloan2.xlsx|
      Then I verified the "Summary" details successfully 
	  			| 1158-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-Newcreateloan2.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
	  			| 1158-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-Newcreateloan2.xlsx| 			
	  And I verified the "Transactions" details successfully	
				| 1158-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-Newcreateloan2.xlsx|  

@scenario51-Loan-1205-RBI-EI-DB-SAR-REC-NON-RNI-CTPD-SAR-MD-TR-2-ONTIME	   
	  Scenario: Loan-1205-RBI-EI-DB-SAR-REC-NON-RNI-CTPD-SAR-MD-TR-2-ONTIME
	
	  Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			| 1205-RBI-EI-DB-SAR-REC-NON-RNI-CTPD-SAR-MD-TR-2-ONTIME-Newcreateloan1.xlsx|
	  Then I verified the "Summary" details successfully 
	  			| 1205-RBI-EI-DB-SAR-REC-NON-RNI-CTPD-SAR-MD-TR-2-ONTIME-Newcreateloan1.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
	  			| 1205-RBI-EI-DB-SAR-REC-NON-RNI-CTPD-SAR-MD-TR-2-ONTIME-Newcreateloan1.xlsx|
	  Then I make repayment and verified the following tabs
       			|1205-RBI-EI-DB-SAR-REC-NON-RNI-CTPD-SAR-MD-TR-2-ONTIME-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
      And I disburse loan from "NewLoanInput" sheet
      			| 1205-RBI-EI-DB-SAR-REC-NON-RNI-CTPD-SAR-MD-TR-2-ONTIME-Newcreateloan2.xlsx|
      Then I verified the "Summary" details successfully 
	  			| 1205-RBI-EI-DB-SAR-REC-NON-RNI-CTPD-SAR-MD-TR-2-ONTIME-Newcreateloan2.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
	  			| 1205-RBI-EI-DB-SAR-REC-NON-RNI-CTPD-SAR-MD-TR-2-ONTIME-Newcreateloan2.xlsx| 			
	  And I verified the "Transactions" details successfully	
				| 1205-RBI-EI-DB-SAR-REC-NON-RNI-CTPD-SAR-MD-TR-2-ONTIME-Newcreateloan2.xlsx| 
				
@scenario52-Loan-1206-RBI-EI-DB-SAR-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME	   
	  Scenario: Loan-1206-RBI-EI-DB-SAR-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME
	
	  Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			| 1206-RBI-EI-DB-SAR-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-Newcreateloan1.xlsx|
	  Then I verified the "Summary" details successfully 
	  			| 1206-RBI-EI-DB-SAR-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-Newcreateloan1.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
	  			| 1206-RBI-EI-DB-SAR-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-Newcreateloan1.xlsx|
	  Then I make repayment and verified the following tabs
       			|1206-RBI-EI-DB-SAR-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
      And I disburse loan from "NewLoanInput" sheet
      			| 1206-RBI-EI-DB-SAR-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-Newcreateloan2.xlsx|
      Then I verified the "Summary" details successfully 
	  			| 1206-RBI-EI-DB-SAR-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-Newcreateloan2.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
	  			| 1206-RBI-EI-DB-SAR-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-Newcreateloan2.xlsx| 			
	  And I verified the "Transactions" details successfully	
				| 1206-RBI-EI-DB-SAR-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-Newcreateloan2.xlsx| 
				
@scenario53-Loan-1541-RBI-EI-DB-DL-REC-NON-RNI-CTPD-SAR-MD-TR-2-EARLY	   
	  Scenario: Loan-1541-RBI-EI-DB-DL-REC-NON-RNI-CTPD-SAR-MD-TR-2-EARLY
	
	  Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			| 1541-RBI-EI-DB-DL-REC-NON-RNI-CTPD-SAR-MD-TR-2-EARLY-Newcreateloan1.xlsx|
	  Then I verified the "Summary" details successfully 
	  			| 1541-RBI-EI-DB-DL-REC-NON-RNI-CTPD-SAR-MD-TR-2-EARLY-Newcreateloan1.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
	  			| 1541-RBI-EI-DB-DL-REC-NON-RNI-CTPD-SAR-MD-TR-2-EARLY-Newcreateloan1.xlsx|
	  Then I make repayment and verified the following tabs
       			|1541-RBI-EI-DB-DL-REC-NON-RNI-CTPD-SAR-MD-TR-2-EARLY-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
      And I disburse loan from "NewLoanInput" sheet
      			| 1541-RBI-EI-DB-DL-REC-NON-RNI-CTPD-SAR-MD-TR-2-EARLY-Newcreateloan2.xlsx|
      Then I verified the "Summary" details successfully 
	  			| 1541-RBI-EI-DB-DL-REC-NON-RNI-CTPD-SAR-MD-TR-2-EARLY-Newcreateloan2.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
	  			| 1541-RBI-EI-DB-DL-REC-NON-RNI-CTPD-SAR-MD-TR-2-EARLY-Newcreateloan2.xlsx| 			
	  And I verified the "Transactions" details successfully	
				| 1541-RBI-EI-DB-DL-REC-NON-RNI-CTPD-SAR-MD-TR-2-EARLY-Newcreateloan2.xlsx| 
				
@scenario54-Loan-1542-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-EARLY	   
	  Scenario: Loan-1542-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-EARLY
	
	  Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			| 1542-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-EARLY-Newcreateloan1.xlsx|
	  Then I verified the "Summary" details successfully 
	  			| 1542-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-EARLY-Newcreateloan1.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
	  			| 1542-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-EARLY-Newcreateloan1.xlsx|
	  Then I make repayment and verified the following tabs
       			|1542-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-EARLY-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
      And I disburse loan from "NewLoanInput" sheet
      			| 1542-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-EARLY-Newcreateloan2.xlsx|
      Then I verified the "Summary" details successfully 
	  			| 1542-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-EARLY-Newcreateloan2.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
	  			| 1542-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-EARLY-Newcreateloan2.xlsx| 			
	  And I verified the "Transactions" details successfully	
				| 1542-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-EARLY-Newcreateloan2.xlsx| 
				
@scenario55-Loan-1589-RBI-EI-DB-SAR-REC-NON-RNI-CTPD-SAR-MD-TR-2-EARLY	   
	  Scenario: Loan-1589-RBI-EI-DB-SAR-REC-NON-RNI-CTPD-SAR-MD-TR-2-EARLY
	
	  Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			| 1589-RBI-EI-DB-SAR-REC-NON-RNI-CTPD-SAR-MD-TR-2-EARLY-Newcreateloan1.xlsx|
	  Then I verified the "Summary" details successfully 
	  			| 1589-RBI-EI-DB-SAR-REC-NON-RNI-CTPD-SAR-MD-TR-2-EARLY-Newcreateloan1.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
	  			| 1589-RBI-EI-DB-SAR-REC-NON-RNI-CTPD-SAR-MD-TR-2-EARLY-Newcreateloan1.xlsx|
	  Then I make repayment and verified the following tabs
       			|1589-RBI-EI-DB-SAR-REC-NON-RNI-CTPD-SAR-MD-TR-2-EARLY-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
      And I disburse loan from "NewLoanInput" sheet
      			| 1589-RBI-EI-DB-SAR-REC-NON-RNI-CTPD-SAR-MD-TR-2-EARLY-Newcreateloan2.xlsx|
      Then I verified the "Summary" details successfully 
	  			| 1589-RBI-EI-DB-SAR-REC-NON-RNI-CTPD-SAR-MD-TR-2-EARLY-Newcreateloan2.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
	  			| 1589-RBI-EI-DB-SAR-REC-NON-RNI-CTPD-SAR-MD-TR-2-EARLY-Newcreateloan2.xlsx| 			
	  And I verified the "Transactions" details successfully	
				| 1589-RBI-EI-DB-SAR-REC-NON-RNI-CTPD-SAR-MD-TR-2-EARLY-Newcreateloan2.xlsx| 
				
@scenario56-Loan-1590-RBI-EI-DB-SAR-REC-NON-RNI-CTPD-DL-MD-TR-2-EARLY	   
	  Scenario: Loan-1590-RBI-EI-DB-SAR-REC-NON-RNI-CTPD-DL-MD-TR-2-EARLY
	
	  Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			| 1590-RBI-EI-DB-SAR-REC-NON-RNI-CTPD-DL-MD-TR-2-EARLY-Newcreateloan1.xlsx|
	  Then I verified the "Summary" details successfully 
	  			| 1590-RBI-EI-DB-SAR-REC-NON-RNI-CTPD-DL-MD-TR-2-EARLY-Newcreateloan1.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
	  			| 1590-RBI-EI-DB-SAR-REC-NON-RNI-CTPD-DL-MD-TR-2-EARLY-Newcreateloan1.xlsx|
	  Then I make repayment and verified the following tabs
       			|1590-RBI-EI-DB-SAR-REC-NON-RNI-CTPD-DL-MD-TR-2-EARLY-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
      And I disburse loan from "NewLoanInput" sheet
      			| 1590-RBI-EI-DB-SAR-REC-NON-RNI-CTPD-DL-MD-TR-2-EARLY-Newcreateloan2.xlsx|
      Then I verified the "Summary" details successfully 
	  			| 1590-RBI-EI-DB-SAR-REC-NON-RNI-CTPD-DL-MD-TR-2-EARLY-Newcreateloan2.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
	  			| 1590-RBI-EI-DB-SAR-REC-NON-RNI-CTPD-DL-MD-TR-2-EARLY-Newcreateloan2.xlsx| 			
	  And I verified the "Transactions" details successfully	
				| 1590-RBI-EI-DB-SAR-REC-NON-RNI-CTPD-DL-MD-TR-2-EARLY-Newcreateloan2.xlsx| 
				
@scenario57-Loan-1925-RBI-EI-DB-DL-REC-NON-RNI-CTPD-SAR-MD-TR-2-LATE	   
	  Scenario: Loan-1925-RBI-EI-DB-DL-REC-NON-RNI-CTPD-SAR-MD-TR-2-LATE
	
	  Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			| 1925-RBI-EI-DB-DL-REC-NON-RNI-CTPD-SAR-MD-TR-2-LATE-Newcreateloan1.xlsx|
	  Then I verified the "Summary" details successfully 
	  			| 1925-RBI-EI-DB-DL-REC-NON-RNI-CTPD-SAR-MD-TR-2-LATE-Newcreateloan1.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
	  			| 1925-RBI-EI-DB-DL-REC-NON-RNI-CTPD-SAR-MD-TR-2-LATE-Newcreateloan1.xlsx|
	  Then I make repayment and verified the following tabs
       			|1925-RBI-EI-DB-DL-REC-NON-RNI-CTPD-SAR-MD-TR-2-LATE-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
      And I disburse loan from "NewLoanInput" sheet
      			| 1925-RBI-EI-DB-DL-REC-NON-RNI-CTPD-SAR-MD-TR-2-LATE-Newcreateloan2.xlsx|
      Then I verified the "Summary" details successfully 
	  			| 1925-RBI-EI-DB-DL-REC-NON-RNI-CTPD-SAR-MD-TR-2-LATE-Newcreateloan2.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
	  			| 1925-RBI-EI-DB-DL-REC-NON-RNI-CTPD-SAR-MD-TR-2-LATE-Newcreateloan2.xlsx| 			
	  And I verified the "Transactions" details successfully	
				| 1925-RBI-EI-DB-DL-REC-NON-RNI-CTPD-SAR-MD-TR-2-LATE-Newcreateloan2.xlsx| 
				
@scenario58-Loan-1926-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-LATE 
	  Scenario: Loan-1926-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-LATE
	
	  Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			| 1926-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-LATE-Newcreateloan1.xlsx|
	  Then I verified the "Summary" details successfully 
	  			| 1926-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-LATE-Newcreateloan1.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
	  			| 1926-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-LATE-Newcreateloan1.xlsx|
	  Then I make repayment and verified the following tabs
       			|1926-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-LATE-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
      And I disburse loan from "NewLoanInput" sheet
      			| 1926-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-LATE-Newcreateloan2.xlsx|
      Then I verified the "Summary" details successfully 
	  			| 1926-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-LATE-Newcreateloan2.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
	  			| 1926-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-LATE-Newcreateloan2.xlsx| 			
	  And I verified the "Transactions" details successfully	
				| 1926-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-LATE-Newcreateloan2.xlsx| 
				
@scenario59-Loan-1973-RBI-EI-DB-SAR-REC-NON-RNI-CTPD-SAR-MD-TR-2-LATE	   
	  Scenario: Loan-1973-RBI-EI-DB-SAR-REC-NON-RNI-CTPD-SAR-MD-TR-2-LATE
	
	  Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			| 1973-RBI-EI-DB-SAR-REC-NON-RNI-CTPD-SAR-MD-TR-2-LATE-Newcreateloan1.xlsx|
	  Then I verified the "Summary" details successfully 
	  			| 1973-RBI-EI-DB-SAR-REC-NON-RNI-CTPD-SAR-MD-TR-2-LATE-Newcreateloan1.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
	  			| 1973-RBI-EI-DB-SAR-REC-NON-RNI-CTPD-SAR-MD-TR-2-LATE-Newcreateloan1.xlsx|
	  Then I make repayment and verified the following tabs
       			|1973-RBI-EI-DB-SAR-REC-NON-RNI-CTPD-SAR-MD-TR-2-LATE-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
      And I disburse loan from "NewLoanInput" sheet
      			| 1973-RBI-EI-DB-SAR-REC-NON-RNI-CTPD-SAR-MD-TR-2-LATE-Newcreateloan2.xlsx|
      Then I verified the "Summary" details successfully 
	  			| 1973-RBI-EI-DB-SAR-REC-NON-RNI-CTPD-SAR-MD-TR-2-LATE-Newcreateloan2.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
	  			| 1973-RBI-EI-DB-SAR-REC-NON-RNI-CTPD-SAR-MD-TR-2-LATE-Newcreateloan2.xlsx| 			
	  And I verified the "Transactions" details successfully	
				| 1973-RBI-EI-DB-SAR-REC-NON-RNI-CTPD-SAR-MD-TR-2-LATE-Newcreateloan2.xlsx| 
				
@scenario60-Loan-1974-RBI-EI-DB-SAR-REC-NON-RNI-CTPD-DL-MD-TR-2-LATE	   
	  Scenario: Loan-1974-RBI-EI-DB-SAR-REC-NON-RNI-CTPD-DL-MD-TR-2-LATE
	
	  Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			| 1974-RBI-EI-DB-SAR-REC-NON-RNI-CTPD-DL-MD-TR-2-LATE-Newcreateloan1.xlsx|
	  Then I verified the "Summary" details successfully 
	  			| 1974-RBI-EI-DB-SAR-REC-NON-RNI-CTPD-DL-MD-TR-2-LATE-Newcreateloan1.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
	  			| 1974-RBI-EI-DB-SAR-REC-NON-RNI-CTPD-DL-MD-TR-2-LATE-Newcreateloan1.xlsx|
	  Then I make repayment and verified the following tabs
       			|1974-RBI-EI-DB-SAR-REC-NON-RNI-CTPD-DL-MD-TR-2-LATE-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
      And I disburse loan from "NewLoanInput" sheet
      			| 1974-RBI-EI-DB-SAR-REC-NON-RNI-CTPD-DL-MD-TR-2-LATE-Newcreateloan2.xlsx|
      Then I verified the "Summary" details successfully 
	  			| 1974-RBI-EI-DB-SAR-REC-NON-RNI-CTPD-DL-MD-TR-2-LATE-Newcreateloan2.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
	  			| 1974-RBI-EI-DB-SAR-REC-NON-RNI-CTPD-DL-MD-TR-2-LATE-Newcreateloan2.xlsx| 			
	  And I verified the "Transactions" details successfully	
				| 1974-RBI-EI-DB-SAR-REC-NON-RNI-CTPD-DL-MD-TR-2-LATE-Newcreateloan2.xlsx|
				
@scenario49-Loan-1349-MS-EI-DB-DL-REC-NON-RNI-CTPD-SAR-MD-TR-2-ONTIME	   
	  Scenario: Loan-1349-MS-EI-DB-DL-REC-NON-RNI-CTPD-SAR-MD-TR-2-ONTIME
	
	  Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			| 1349-MS-EI-DB-DL-REC-NON-RNI-CTPD-SAR-MD-TR-2-ONTIME-Newcreateloan1.xlsx|
	  Then I verified the "Summary" details successfully 
	  			| 1349-MS-EI-DB-DL-REC-NON-RNI-CTPD-SAR-MD-TR-2-ONTIME-Newcreateloan1.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
	  			| 1349-MS-EI-DB-DL-REC-NON-RNI-CTPD-SAR-MD-TR-2-ONTIME-Newcreateloan1.xlsx|
	  Then I make repayment and verified the following tabs
       			|1349-MS-EI-DB-DL-REC-NON-RNI-CTPD-SAR-MD-TR-2-ONTIME-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
      And I disburse loan from "NewLoanInput" sheet
      			| 1349-MS-EI-DB-DL-REC-NON-RNI-CTPD-SAR-MD-TR-2-ONTIME-Newcreateloan2.xlsx|
      Then I verified the "Summary" details successfully 
	  			| 1349-MS-EI-DB-DL-REC-NON-RNI-CTPD-SAR-MD-TR-2-ONTIME-Newcreateloan2.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
	  			| 1349-MS-EI-DB-DL-REC-NON-RNI-CTPD-SAR-MD-TR-2-ONTIME-Newcreateloan2.xlsx| 			
	  And I verified the "Transactions" details successfully	
				| 1349-MS-EI-DB-DL-REC-NON-RNI-CTPD-SAR-MD-TR-2-ONTIME-Newcreateloan2.xlsx| 
				
@scenario50-Loan-1350-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME	   
	  Scenario: Loan-1350-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME
	
	  Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			| 1350-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-Newcreateloan1.xlsx|
	  Then I verified the "Summary" details successfully 
	  			| 1350-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-Newcreateloan1.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
	  			| 1350-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-Newcreateloan1.xlsx|
	  Then I make repayment and verified the following tabs
       			|1350-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
      And I disburse loan from "NewLoanInput" sheet
      			| 1350-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-Newcreateloan2.xlsx|
      Then I verified the "Summary" details successfully 
	  			| 1350-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-Newcreateloan2.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
	  			| 1350-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-Newcreateloan2.xlsx| 			
	  And I verified the "Transactions" details successfully	
				| 1350-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-Newcreateloan2.xlsx| 
				
@scenario51-Loan-1397-MS-EI-DB-SAR-REC-NON-RNI-CTPD-SAR-MD-TR-2-ONTIME	   
	  Scenario: Loan-1397-MS-EI-DB-SAR-REC-NON-RNI-CTPD-SAR-MD-TR-2-ONTIME
	
	  Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			| 1397-MS-EI-DB-SAR-REC-NON-RNI-CTPD-SAR-MD-TR-2-ONTIME-Newcreateloan1.xlsx|
	  Then I verified the "Summary" details successfully 
	  			| 1397-MS-EI-DB-SAR-REC-NON-RNI-CTPD-SAR-MD-TR-2-ONTIME-Newcreateloan1.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
	  			| 1397-MS-EI-DB-SAR-REC-NON-RNI-CTPD-SAR-MD-TR-2-ONTIME-Newcreateloan1.xlsx|
	  Then I make repayment and verified the following tabs
       			|1397-MS-EI-DB-SAR-REC-NON-RNI-CTPD-SAR-MD-TR-2-ONTIME-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
      And I disburse loan from "NewLoanInput" sheet
      			| 1397-MS-EI-DB-SAR-REC-NON-RNI-CTPD-SAR-MD-TR-2-ONTIME-Newcreateloan2.xlsx|
      Then I verified the "Summary" details successfully 
	  			| 1397-MS-EI-DB-SAR-REC-NON-RNI-CTPD-SAR-MD-TR-2-ONTIME-Newcreateloan2.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
	  			| 1397-MS-EI-DB-SAR-REC-NON-RNI-CTPD-SAR-MD-TR-2-ONTIME-Newcreateloan2.xlsx| 			
	  And I verified the "Transactions" details successfully	
				| 1397-MS-EI-DB-SAR-REC-NON-RNI-CTPD-SAR-MD-TR-2-ONTIME-Newcreateloan2.xlsx| 
				
@scenario52-Loan-1398-MS-EI-DB-SAR-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME	   
	  Scenario: Loan-1398-MS-EI-DB-SAR-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME
	
	  Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			| 1398-MS-EI-DB-SAR-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-Newcreateloan1.xlsx|
	  Then I verified the "Summary" details successfully 
	  			| 1398-MS-EI-DB-SAR-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-Newcreateloan1.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
	  			| 1398-MS-EI-DB-SAR-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-Newcreateloan1.xlsx|
	  Then I make repayment and verified the following tabs
       			|1398-MS-EI-DB-SAR-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
      And I disburse loan from "NewLoanInput" sheet
      			| 1398-MS-EI-DB-SAR-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-Newcreateloan2.xlsx|
      Then I verified the "Summary" details successfully 
	  			| 1398-MS-EI-DB-SAR-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-Newcreateloan2.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
	  			| 1398-MS-EI-DB-SAR-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-Newcreateloan2.xlsx| 			
	  And I verified the "Transactions" details successfully	
				| 1398-MS-EI-DB-SAR-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-Newcreateloan2.xlsx| 
				
@scenario53-Loan-1733-MS-EI-DB-DL-REC-NON-RNI-CTPD-SAR-MD-TR-2-EARLY	   
	  Scenario: Loan-1733-MS-EI-DB-DL-REC-NON-RNI-CTPD-SAR-MD-TR-2-EARLY
	
	  Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			| 1733-MS-EI-DB-DL-REC-NON-RNI-CTPD-SAR-MD-TR-2-EARLY-Newcreateloan1.xlsx|
	  Then I verified the "Summary" details successfully 
	  			| 1733-MS-EI-DB-DL-REC-NON-RNI-CTPD-SAR-MD-TR-2-EARLY-Newcreateloan1.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
	  			| 1733-MS-EI-DB-DL-REC-NON-RNI-CTPD-SAR-MD-TR-2-EARLY-Newcreateloan1.xlsx|
	  Then I make repayment and verified the following tabs
       			|1733-MS-EI-DB-DL-REC-NON-RNI-CTPD-SAR-MD-TR-2-EARLY-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
      And I disburse loan from "NewLoanInput" sheet
      			| 1733-MS-EI-DB-DL-REC-NON-RNI-CTPD-SAR-MD-TR-2-EARLY-Newcreateloan2.xlsx|
      Then I verified the "Summary" details successfully 
	  			| 1733-MS-EI-DB-DL-REC-NON-RNI-CTPD-SAR-MD-TR-2-EARLY-Newcreateloan2.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
	  			| 1733-MS-EI-DB-DL-REC-NON-RNI-CTPD-SAR-MD-TR-2-EARLY-Newcreateloan2.xlsx| 			
	  And I verified the "Transactions" details successfully	
				| 1733-MS-EI-DB-DL-REC-NON-RNI-CTPD-SAR-MD-TR-2-EARLY-Newcreateloan2.xlsx| 
				
@scenario54-Loan-1734-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-EARLY
	  Scenario: Loan-1734-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-EARLY
	
	  Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			| 1734-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-EARLY-Newcreateloan1.xlsx|
	  Then I verified the "Summary" details successfully 
	  			| 1734-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-EARLY-Newcreateloan1.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
	  			| 1734-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-EARLY-Newcreateloan1.xlsx|
	  Then I make repayment and verified the following tabs
       			|1734-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-EARLY-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
      And I disburse loan from "NewLoanInput" sheet
      			| 1734-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-EARLY-Newcreateloan2.xlsx|
      Then I verified the "Summary" details successfully 
	  			| 1734-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-EARLY-Newcreateloan2.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
	  			| 1734-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-EARLY-Newcreateloan2.xlsx| 			
	  And I verified the "Transactions" details successfully	
				| 1734-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-EARLY-Newcreateloan2.xlsx| 
				
@scenario55-Loan-1781-MS-EI-DB-SAR-REC-NON-RNI-CTPD-SAR-MD-TR-2-EARLY	   
	  Scenario: Loan-1781-MS-EI-DB-SAR-REC-NON-RNI-CTPD-SAR-MD-TR-2-EARLY
	
	  Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			| 1781-MS-EI-DB-SAR-REC-NON-RNI-CTPD-SAR-MD-TR-2-EARLY-Newcreateloan1.xlsx|
	  Then I verified the "Summary" details successfully 
	  			| 1781-MS-EI-DB-SAR-REC-NON-RNI-CTPD-SAR-MD-TR-2-EARLY-Newcreateloan1.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
	  			| 1781-MS-EI-DB-SAR-REC-NON-RNI-CTPD-SAR-MD-TR-2-EARLY-Newcreateloan1.xlsx|
	  Then I make repayment and verified the following tabs
       			|1781-MS-EI-DB-SAR-REC-NON-RNI-CTPD-SAR-MD-TR-2-EARLY-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
      And I disburse loan from "NewLoanInput" sheet
      			| 1781-MS-EI-DB-SAR-REC-NON-RNI-CTPD-SAR-MD-TR-2-EARLY-Newcreateloan2.xlsx|
      Then I verified the "Summary" details successfully 
	  			| 1781-MS-EI-DB-SAR-REC-NON-RNI-CTPD-SAR-MD-TR-2-EARLY-Newcreateloan2.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
	  			| 1781-MS-EI-DB-SAR-REC-NON-RNI-CTPD-SAR-MD-TR-2-EARLY-Newcreateloan2.xlsx| 			
	  And I verified the "Transactions" details successfully	
				| 1781-MS-EI-DB-SAR-REC-NON-RNI-CTPD-SAR-MD-TR-2-EARLY-Newcreateloan2.xlsx| 
				
@scenario56-Loan-1782-MS-EI-DB-SAR-REC-NON-RNI-CTPD-DL-MD-TR-2-EARLY	   
	  Scenario: Loan-1782-MS-EI-DB-SAR-REC-NON-RNI-CTPD-DL-MD-TR-2-EARLY
	
	  Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			| 1782-MS-EI-DB-SAR-REC-NON-RNI-CTPD-DL-MD-TR-2-EARLY-Newcreateloan1.xlsx|
	  Then I verified the "Summary" details successfully 
	  			| 1782-MS-EI-DB-SAR-REC-NON-RNI-CTPD-DL-MD-TR-2-EARLY-Newcreateloan1.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
	  			| 1782-MS-EI-DB-SAR-REC-NON-RNI-CTPD-DL-MD-TR-2-EARLY-Newcreateloan1.xlsx|
	  Then I make repayment and verified the following tabs
       			|1782-MS-EI-DB-SAR-REC-NON-RNI-CTPD-DL-MD-TR-2-EARLY-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
      And I disburse loan from "NewLoanInput" sheet
      			| 1782-MS-EI-DB-SAR-REC-NON-RNI-CTPD-DL-MD-TR-2-EARLY-Newcreateloan2.xlsx|
      Then I verified the "Summary" details successfully 
	  			| 1782-MS-EI-DB-SAR-REC-NON-RNI-CTPD-DL-MD-TR-2-EARLY-Newcreateloan2.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
	  			| 1782-MS-EI-DB-SAR-REC-NON-RNI-CTPD-DL-MD-TR-2-EARLY-Newcreateloan2.xlsx| 			
	  And I verified the "Transactions" details successfully	
				| 1782-MS-EI-DB-SAR-REC-NON-RNI-CTPD-DL-MD-TR-2-EARLY-Newcreateloan2.xlsx| 

@scenario57-Loan-2117-MS-EI-DB-DL-REC-NON-RNI-CTPD-SAR-MD-TR-2-LATE	   
	  Scenario: Loan-2117-MS-EI-DB-DL-REC-NON-RNI-CTPD-SAR-MD-TR-2-LATE
	
	  Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			| 2117-MS-EI-DB-DL-REC-NON-RNI-CTPD-SAR-MD-TR-2-LATE-Newcreateloan1.xlsx|
	  Then I verified the "Summary" details successfully 
	  			| 2117-MS-EI-DB-DL-REC-NON-RNI-CTPD-SAR-MD-TR-2-LATE-Newcreateloan1.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
	  			| 2117-MS-EI-DB-DL-REC-NON-RNI-CTPD-SAR-MD-TR-2-LATE-Newcreateloan1.xlsx|
	  Then I make repayment and verified the following tabs
       			|2117-MS-EI-DB-DL-REC-NON-RNI-CTPD-SAR-MD-TR-2-LATE-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
      And I disburse loan from "NewLoanInput" sheet
      			| 2117-MS-EI-DB-DL-REC-NON-RNI-CTPD-SAR-MD-TR-2-LATE-Newcreateloan2.xlsx|
      Then I verified the "Summary" details successfully 
	  			| 2117-MS-EI-DB-DL-REC-NON-RNI-CTPD-SAR-MD-TR-2-LATE-Newcreateloan2.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
	  			| 2117-MS-EI-DB-DL-REC-NON-RNI-CTPD-SAR-MD-TR-2-LATE-Newcreateloan2.xlsx| 			
	  And I verified the "Transactions" details successfully	
				| 2117-MS-EI-DB-DL-REC-NON-RNI-CTPD-SAR-MD-TR-2-LATE-Newcreateloan2.xlsx| 

@scenario58-Loan-2118-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-LATE	   
	  Scenario: Loan-2118-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-LATE
	
	  Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			| 2118-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-LATE-Newcreateloan1.xlsx|
	  Then I verified the "Summary" details successfully 
	  			| 2118-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-LATE-Newcreateloan1.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
	  			| 2118-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-LATE-Newcreateloan1.xlsx|
	  Then I make repayment and verified the following tabs
       			|2118-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-LATE-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
      And I disburse loan from "NewLoanInput" sheet
      			| 2118-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-LATE-Newcreateloan2.xlsx|
      Then I verified the "Summary" details successfully 
	  			| 2118-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-LATE-Newcreateloan2.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
	  			| 2118-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-LATE-Newcreateloan2.xlsx| 			
	  And I verified the "Transactions" details successfully	
				| 2118-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-LATE-Newcreateloan2.xlsx| 

@scenario59-Loan-2165-MS-EI-DB-SAR-REC-NON-RNI-CTPD-SAR-MD-TR-2-LATE	   
	  Scenario: Loan-2165-MS-EI-DB-SAR-REC-NON-RNI-CTPD-SAR-MD-TR-2-LATE
	
	  Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			| 2165-MS-EI-DB-SAR-REC-NON-RNI-CTPD-SAR-MD-TR-2-LATE-Newcreateloan1.xlsx|
	  Then I verified the "Summary" details successfully 
	  			| 2165-MS-EI-DB-SAR-REC-NON-RNI-CTPD-SAR-MD-TR-2-LATE-Newcreateloan1.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
	  			| 2165-MS-EI-DB-SAR-REC-NON-RNI-CTPD-SAR-MD-TR-2-LATE-Newcreateloan1.xlsx|
	  Then I make repayment and verified the following tabs
       			|2165-MS-EI-DB-SAR-REC-NON-RNI-CTPD-SAR-MD-TR-2-LATE-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
      And I disburse loan from "NewLoanInput" sheet
      			| 2165-MS-EI-DB-SAR-REC-NON-RNI-CTPD-SAR-MD-TR-2-LATE-Newcreateloan2.xlsx|
      Then I verified the "Summary" details successfully 
	  			| 2165-MS-EI-DB-SAR-REC-NON-RNI-CTPD-SAR-MD-TR-2-LATE-Newcreateloan2.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
	  			| 2165-MS-EI-DB-SAR-REC-NON-RNI-CTPD-SAR-MD-TR-2-LATE-Newcreateloan2.xlsx| 			
	  And I verified the "Transactions" details successfully	
				| 2165-MS-EI-DB-SAR-REC-NON-RNI-CTPD-SAR-MD-TR-2-LATE-Newcreateloan2.xlsx| 

@scenario60-Loan-2166-MS-EI-DB-SAR-REC-NON-RNI-CTPD-DL-MD-TR-2-LATE	   
	  Scenario: Loan-2166-MS-EI-DB-SAR-REC-NON-RNI-CTPD-DL-MD-TR-2-LATE
	
	  Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			| 2166-MS-EI-DB-SAR-REC-NON-RNI-CTPD-DL-MD-TR-2-LATE-Newcreateloan1.xlsx|
	  Then I verified the "Summary" details successfully 
	  			| 2166-MS-EI-DB-SAR-REC-NON-RNI-CTPD-DL-MD-TR-2-LATE-Newcreateloan1.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
	  			| 2166-MS-EI-DB-SAR-REC-NON-RNI-CTPD-DL-MD-TR-2-LATE-Newcreateloan1.xlsx|
	  Then I make repayment and verified the following tabs
       			|2166-MS-EI-DB-SAR-REC-NON-RNI-CTPD-DL-MD-TR-2-LATE-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
      And I disburse loan from "NewLoanInput" sheet
      			| 2166-MS-EI-DB-SAR-REC-NON-RNI-CTPD-DL-MD-TR-2-LATE-Newcreateloan2.xlsx|
      Then I verified the "Summary" details successfully 
	  			| 2166-MS-EI-DB-SAR-REC-NON-RNI-CTPD-DL-MD-TR-2-LATE-Newcreateloan2.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
	  			| 2166-MS-EI-DB-SAR-REC-NON-RNI-CTPD-DL-MD-TR-2-LATE-Newcreateloan2.xlsx| 			
	  And I verified the "Transactions" details successfully	
				| 2166-MS-EI-DB-SAR-REC-NON-RNI-CTPD-DL-MD-TR-2-LATE-Newcreateloan2.xlsx|    	
				
				
@scenario12-3011-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-OVERDUE-FEE-FLAT-Regular-CASH
	  Scenario: 3011-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-OVERDUE-FEE-FLAT-Regular-CASH
 Given I setup the clients 
 Then I entered the values into client from "Input" sheet
	|Createclient.xlsx|
 Then I should see client created successfully from "Output" sheet
	|Createclient.xlsx|
 When I set up the new create loan from "NewLoanInput" sheet
	| 3011-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-OVERDUE-FEE-FLAT-Regular-CASH-Newcreateloan.xlsx|
 Then I navigate to scheduler job & execute "Apply penalty to overdue loans"
 Then I verified the "Summary" details successfully 
	  			| 3012-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-OVERDUE-FEE-%APR-AMT-Regular-CASH-Newcreateloan.xlsx|
 And I verified the "Repayment Schedule" details successfully 
	  			| 3012-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-OVERDUE-FEE-%APR-AMT-Regular-CASH-Newcreateloan.xlsx|
 Then I navigate to scheduler job & execute "Apply penalty to overdue loans"
 Then I make repayment and read the transaction Id
 	|3011-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-OVERDUE-FEE-FLAT-Regular-CASH-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
 And I Navigate to Accounting web page
 And I search with transaction id & verified the accounting entries
	| 3011-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-OVERDUE-FEE-FLAT-Regular-CASH-Makerepayment1.xlsx|Acc_Disbursement|Acc_Repayment|

@scenario13-3012-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-OVERDUE-FEE-%APR-AMT-Regular-CASH
	  Scenario: 3012-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-OVERDUE-FEE-%APR-AMT-Regular-CASH  
 Given I setup the clients 
 Then I entered the values into client from "Input" sheet
	|Createclient.xlsx|
 Then I should see client created successfully from "Output" sheet
	|Createclient.xlsx|
 When I set up the new create loan from "NewLoanInput" sheet
	| 3012-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-OVERDUE-FEE-%APR-AMT-Regular-CASH-Newcreateloan.xlsx|
 Then I navigate to scheduler job & execute "Apply penalty to overdue loans"
 Then I verified the "Summary" details successfully 
	  			| 3012-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-OVERDUE-FEE-%APR-AMT-Regular-CASH-Newcreateloan.xlsx|
 And I verified the "Repayment Schedule" details successfully 
	  			| 3012-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-OVERDUE-FEE-%APR-AMT-Regular-CASH-Newcreateloan.xlsx|
Then I navigate to scheduler job & execute "Apply penalty to overdue loans"	  			
 Then I make repayment and read the transaction Id
 	|3012-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-OVERDUE-FEE-%APR-AMT-Regular-CASH-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
 And I Navigate to Accounting web page
 And I search with transaction id & verified the accounting entries
	| 3012-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-OVERDUE-FEE-%APR-AMT-Regular-CASH-Makerepayment1.xlsx|Acc_Disbursement|Acc_Repayment|

@scenario14-3013-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-OVERDUE-FEE-%LOANAMT+INT-Regular-CASH
	  Scenario: 3013-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-OVERDUE-FEE-%LOANAMT+INT-Regular-CASH  

 Given I setup the clients 
 Then I entered the values into client from "Input" sheet
	|Createclient.xlsx|
 Then I should see client created successfully from "Output" sheet
	|Createclient.xlsx|
 When I set up the new create loan from "NewLoanInput" sheet
	| 3013-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-OVERDUE-FEE-%LOANAMT+INT-Regular-CASH-Newcreateloan.xlsx|
 Then I navigate to scheduler job & execute "Apply penalty to overdue loans"
 Then I make repayment and read the transaction Id
 	|3013-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-OVERDUE-FEE-%LOANAMT+INT-Regular-CASH-Makerepayment1.xlsx|Input|Transactions|
 And I Navigate to Accounting web page
 And I search with transaction id & verified the accounting entries
	| 3013-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-OVERDUE-FEE-%LOANAMT+INT-Regular-CASH-Makerepayment1.xlsx|Acc_Disbursement|Acc_Repayment|

@scenario15-3014-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-OVERDUE-FEE-%INTEREST-Regular-CASH
	  Scenario: 3014-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-OVERDUE-FEE-%INTEREST-Regular-CASH  

 Given I setup the clients 
 Then I entered the values into client from "Input" sheet
	|Createclient.xlsx|
 Then I should see client created successfully from "Output" sheet
	|Createclient.xlsx|
 When I set up the new create loan from "NewLoanInput" sheet
	| 3014-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-OVERDUE-FEE-%INTEREST-Regular-CASH-Newcreateloan.xlsx|
 Then I navigate to scheduler job & execute "Apply penalty to overdue loans"
 Then I make repayment and read the transaction Id
 	|3014-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-OVERDUE-FEE-%INTEREST-Regular-CASH-Makerepayment1.xlsx|Input|Transactions|
 And I Navigate to Accounting web page
 And I search with transaction id & verified the accounting entries
	| 3014-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-OVERDUE-FEE-%INTEREST-Regular-CASH-Makerepayment1.xlsx|Acc_Disbursement|Acc_Repayment|
	
@scenario16-3015-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-TR-DISB-FEE-FLAT-Regular-CASH
	  Scenario: 3015-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-TR-DISB-FEE-FLAT-Regular-CASH  

   	  Given I setup the clients 
	  Then I entered the values into client from "Input" sheet
				|Createclient.xlsx|
	  Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			| 3015-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-TR-DISB-FEE-FLAT-Regular-CASH-Newcreateloan.xlsx|
	  Then I make repayment and read the transaction Id
       			|3015-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-TR-DISB-FEE-FLAT-Regular-CASH-Makerepayment1.xlsx|Input|Transactions|
      And I Navigate to Accounting web page
	  Then I search with transaction id & verified the accounting entries
	   			| 3015-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-TR-DISB-FEE-FLAT-Regular-CASH-Makerepayment1.xlsx|Acc_Disbursement|Acc_RepaymentDisbursement|Acc_Repayment|

@scenario17-3016-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-TR-%DISB-AMT-Regular-CASH
	  Scenario: 3016-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-TR-%DISB-AMT-Regular-CASH  

   	  Given I setup the clients 
	  Then I entered the values into client from "Input" sheet
				|Createclient.xlsx|
	  Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			| 3016-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-TR-%DISB-AMT-Regular-CASH-Newcreateloan.xlsx|
	  Then I make repayment and read the transaction Id
       			|3016-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-TR-%DISB-AMT-Regular-CASH-Makerepayment1.xlsx|Input|Transactions|
      And I Navigate to Accounting web page
	  Then I search with transaction id & verified the accounting entries
	   			| 3016-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-TR-%DISB-AMT-Regular-CASH-Makerepayment1.xlsx|Acc_Disbursement|Acc_RepaymentDisbursement|Acc_Repayment|
							      
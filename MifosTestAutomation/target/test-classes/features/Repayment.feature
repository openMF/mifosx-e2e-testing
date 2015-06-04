	Feature:Repayment
	
	Background:
	 Given I navigate to mifos
	 And I use login folder 
	 When I login into mifos site using excel sheet
	   | Login.xlsx  | 
	 Then I should see logged in successfully
	
	  			 		

	Scenario Outline:  Repayment-392-RBI-EI-DB-DL-REC-NON-RNI-CTRFD-DL-MD-TR-1-EarlyRePayment
	
	  Given I setup the product loan 
				| Productloannavigation.xlsx |
		And I entered the values into product loan using
				| <excelsheet> |
		Then I should see product loan created successfully	
				| <excelsheet> |
 		Examples:
				| excelsheet   | 
	 		   |389-RBI-EI-DB-DL-REC-NON-RNI-CTPD-SAR-MD-TR-1-EarlyRePayment-Loanproduct4.xlsx|
	
	@scenario1
	 Scenario:  Repayment-389-RBI-EI-DB-DL-REC-NON-RNI-CTPD-SAR-MD-TR-1-EarlyRePayment
	 
	  Given I setup the clients 
	  			| Clientnavigation.xlsx |
	  When I entered the values into client form using
	  			|Createclient.xlsx|
	  Then I should see client created successfully
	  			|Createclient.xlsx|   
	  			
	  When I set up the new create loan
	  			| 389-RBI-EI-DB-DL-REC-NON-RNI-CTPD-SAR-MD-TR-1-EarlyRePayment-Newcreateloan.xlsx|
	  Then I verified the "Summary" details successfully 
	  			| 389-RBI-EI-DB-DL-REC-NON-RNI-CTPD-SAR-MD-TR-1-EarlyRePayment-Newcreateloan.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
	  			| 389-RBI-EI-DB-DL-REC-NON-RNI-CTPD-SAR-MD-TR-1-EarlyRePayment-Newcreateloan.xlsx|
	  
	  When I make repayment and verified the following tabs
       			|Makerepayment1.xlsx|Repayment Schedule|Transactions|
       			|Makerepayment2.xlsx|Summary|Repayment Schedule|Transactions|
	  
	 	 		
	  @scenario2
	Scenario Outline:  Repayment-392-RBI-EI-DB-DL-REC-NON-RNI-CTRFD-DL-MD-TR-1-EarlyRePayment
	
	  Given I setup the product loan 
				| Productloannavigation.xlsx |
		And I entered the values into product loan using
				| <excelsheet> |
		Then I should see product loan created successfully	
				| <excelsheet> |
 		Examples:
				| excelsheet   | 
	 		   |390-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-EarlyRePayment-Loanproduct4.xlsx|
	  
	  Scenario:  Repayment-390-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-EarlyRePayment
	 
	  Given I setup the clients 
	  			| Clientnavigation.xlsx |
	  When I entered the values into client form using
	  			|Createclient.xlsx|
	  Then I should see client created successfully
	  			|Createclient.xlsx|   
	  			
	  When I set up the new create loan
	  			| 390-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-EarlyRePayment-Newcreateloan.xlsx|
	  Then I verified the "Summary" details successfully 
	  			| 390-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-EarlyRePayment-Newcreateloan.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
	  			| 390-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-EarlyRePayment-Newcreateloan.xlsx|
	  
	  When I make repayment and verified the following tabs
	  			|390-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-EarlyRePayment-Makerepayment1.xlsx|Summary|Repayment Schedule|Transactions|
	  				
	  
	  @scenario3
	Scenario Outline:  Repayment-392-RBI-EI-DB-DL-REC-NON-RNI-CTRFD-DL-MD-TR-1-EarlyRePayment
	
	  Given I setup the product loan 
				| Productloannavigation.xlsx |
		And I entered the values into product loan using
				| <excelsheet> |
		Then I should see product loan created successfully	
				| <excelsheet> |
 		Examples:
				| excelsheet   | 
	 		   |391-RBI-EI-DB-DL-REC-NON-RNI-CTRFD-SAR-MD-TR-1-EarlyRePayment-Loanproduct4.xlsx|
	
	 Scenario:  Repayment-391-RBI-EI-DB-DL-REC-NON-RNI-CTRFD-SAR-MD-TR-1-EarlyRePayment
	 
	  Given I setup the clients 
	  			| Clientnavigation.xlsx |
	  When I entered the values into client form using
	  			|Createclient.xlsx|
	  Then I should see client created successfully
	  			|Createclient.xlsx|   
	  			
	  When I set up the new create loan
	  			| 391-RBI-EI-DB-DL-REC-NON-RNI-CTRFD-SAR-MD-TR-1-EarlyRePayment-Newcreateloan.xlsx|
	  Then I verified the "Summary" details successfully 
	  			| 391-RBI-EI-DB-DL-REC-NON-RNI-CTRFD-SAR-MD-TR-1-EarlyRePayment-Newcreateloan.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
	  			| 391-RBI-EI-DB-DL-REC-NON-RNI-CTRFD-SAR-MD-TR-1-EarlyRePayment-Newcreateloan.xlsx|
	  
	  When I make repayment and verified the following tabs
	  			|391-RBI-EI-DB-DL-REC-NON-RNI-CTRFD-SAR-MD-TR-1-EarlyRePayment-Makerepayment1.xlsx|Summary|Repayment Schedule|Transactions|
	  				
	  
	  @scenario4
	Scenario Outline:  Repayment-392-RBI-EI-DB-DL-REC-NON-RNI-CTRFD-DL-MD-TR-1-EarlyRePayment
	
	  Given I setup the product loan 
				| Productloannavigation.xlsx |
		And I entered the values into product loan using
				| <excelsheet> |
		Then I should see product loan created successfully	
				| <excelsheet> |
 		Examples:
				| excelsheet   | 
	 		   |392-RBI-EI-DB-DL-REC-NON-RNI-CTRFD-DL-MD-TR-1-EarlyRePayment-Loanproduct4.xlsx|
	
	  
	   Scenario:  Repayment-392-RBI-EI-DB-DL-REC-NON-RNI-CTRFD-DL-MD-TR-1-EarlyRePayment
	 
	  Given I setup the clients 
	  			| Clientnavigation.xlsx |
	  When I entered the values into client form using
	  			|Createclient.xlsx|
	  Then I should see client created successfully
	  			|Createclient.xlsx|   
	  			
	  When I set up the new create loan
	  			| 392-RBI-EI-DB-DL-REC-NON-RNI-CTRFD-DL-MD-TR-1-EarlyRePayment-Newcreateloan.xlsx|
	  Then I verified the "Summary" details successfully 
	  			| 392-RBI-EI-DB-DL-REC-NON-RNI-CTRFD-DL-MD-TR-1-EarlyRePayment-Newcreateloan.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
	  			| 392-RBI-EI-DB-DL-REC-NON-RNI-CTRFD-DL-MD-TR-1-EarlyRePayment-Newcreateloan.xlsx|
	  
	  When I make repayment and verified the following tabs
	  			|392-RBI-EI-DB-DL-REC-NON-RNI-CTRFD-DL-MD-TR-1-EarlyRePayment-Makerepayment1.xlsx|Summary|Repayment Schedule|Transactions|
	  								
	  								
	   @scenario5
	Scenario Outline:  Repayment-437-RBI-EI-DB-SAR-REC-NON-RNI-CTPD-SAR-MD-Y-1-EarlyRepayment
	
	  Given I setup the product loan 
				| Productloannavigation.xlsx |
		And I entered the values into product loan using
				| <excelsheet> |
		Then I should see product loan created successfully	
				| <excelsheet> |
 		Examples:
				| excelsheet   | 
	 		   |437-RBI-EI-DB-SAR-REC-NON-RNI-CTPD-SAR-MD-Y-1-EarlyRepayment-Loanproduct4.xlsx|
	
	  
	   Scenario:  Repayment-437-RBI-EI-DB-SAR-REC-NON-RNI-CTPD-SAR-MD-Y-1-EarlyRepayment
	 
	  Given I setup the clients 
	  			| Clientnavigation.xlsx |
	  When I entered the values into client form using
	  			|Createclient.xlsx|
	  Then I should see client created successfully
	  			|Createclient.xlsx|   
	  			
	  When I set up the new create loan
	  			| 437-RBI-EI-DB-SAR-REC-NON-RNI-CTPD-SAR-MD-Y-1-EarlyRepayment-Newcreateloan.xlsx|
	  Then I verified the "Summary" details successfully 
	  			| 437-RBI-EI-DB-SAR-REC-NON-RNI-CTPD-SAR-MD-Y-1-EarlyRepayment-Newcreateloan.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
	  			| 437-RBI-EI-DB-SAR-REC-NON-RNI-CTPD-SAR-MD-Y-1-EarlyRepayment-Newcreateloan.xlsx|
	  
	  When I make repayment and verified the following tabs
	  			|437-RBI-EI-DB-SAR-REC-NON-RNI-CTPD-SAR-MD-Y-1-EarlyRepayment-Makerepayment1.xlsx|Summary|Repayment Schedule|Transactions|
	  
	   @scenario6
	Scenario Outline:  Repayment-438-RBI-EI-DB-SAR-REC-NON-RNI-CTPD-DL-MD-TR-1-EarlyRePayment
	
	  Given I setup the product loan 
				| Productloannavigation.xlsx |
		And I entered the values into product loan using
				| <excelsheet> |
		Then I should see product loan created successfully	
				| <excelsheet> |
 		Examples:
				| excelsheet   | 
	 		   |438-RBI-EI-DB-SAR-REC-NON-RNI-CTPD-DL-MD-TR-1-EarlyRePayment-Loanproduct4.xlsx|
	
	  
	   Scenario:  Repayment-438-RBI-EI-DB-SAR-REC-NON-RNI-CTPD-DL-MD-TR-1-EarlyRePayment
	  Given I setup the clients 
	  			| Clientnavigation.xlsx |
	  When I entered the values into client form using
	  			|Createclient.xlsx|
	  Then I should see client created successfully
	  			|Createclient.xlsx|   
	  			
	  When I set up the new create loan
	  			| 438-RBI-EI-DB-SAR-REC-NON-RNI-CTPD-DL-MD-TR-1-EarlyRePayment-Newcreateloan.xlsx|
	  Then I verified the "Summary" details successfully 
	  			| 438-RBI-EI-DB-SAR-REC-NON-RNI-CTPD-DL-MD-TR-1-EarlyRePayment-Newcreateloan.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
	  			| 438-RBI-EI-DB-SAR-REC-NON-RNI-CTPD-DL-MD-TR-1-EarlyRePayment-Newcreateloan.xlsx|
	  
	  When I make repayment and verified the following tabs
	  			|438-RBI-EI-DB-SAR-REC-NON-RNI-CTPD-DL-MD-TR-1-EarlyRePayment-Makerepayment1.xlsx|Summary|Repayment Schedule|Transactions|
	  
	   @scenario7
	Scenario Outline:  Repayment-439-RBI-EI-DB-SAR-REC-NON-RNI-CTRFD-SAR-MD-TR-1-B-EarlyRePayment
	
	  Given I setup the product loan 
				| Productloannavigation.xlsx |
		And I entered the values into product loan using
				| <excelsheet> |
		Then I should see product loan created successfully	
				| <excelsheet> |
 		Examples:
				| excelsheet   | 
	 		   |439-RBI-EI-DB-SAR-REC-NON-RNI-CTRFD-SAR-MD-TR-1-B-EarlyRePayment-Loanproduct4.xlsx|
	
	  
	   Scenario:  Repayment-439-RBI-EI-DB-SAR-REC-NON-RNI-CTRFD-SAR-MD-TR-1-B-EarlyRePayment
	 
	  Given I setup the clients 
	  			| Clientnavigation.xlsx |
	  When I entered the values into client form using
	  			|Createclient.xlsx|
	  Then I should see client created successfully
	  			|Createclient.xlsx|   
	  When I set up the new create loan
	  			| 439-RBI-EI-DB-SAR-REC-NON-RNI-CTRFD-SAR-MD-TR-1-B-EarlyRePayment-Newcreateloan.xlsx|
	 
	  Then I verified the "Summary" details successfully 
	  			| 439-RBI-EI-DB-SAR-REC-NON-RNI-CTRFD-SAR-MD-TR-1-B-EarlyRePayment-Newcreateloan.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
	  			| 439-RBI-EI-DB-SAR-REC-NON-RNI-CTRFD-SAR-MD-TR-1-B-EarlyRePayment-Newcreateloan.xlsx|
	  
	  When I make repayment and verified the following tabs
	  			|439-RBI-EI-DB-SAR-REC-NON-RNI-CTRFD-SAR-MD-TR-1-B-EarlyRePayment-Makerepayment1.xlsx|Summary|Repayment Schedule|Transactions|
	  
	   @scenario8
	Scenario Outline:  Repayment-440-RBI-EI-DB-SAR-REC-NON-RNI-CTRFD-DL-MD-TR-1-B-EarlyRePayment
	
	  Given I setup the product loan 
				| Productloannavigation.xlsx |
		And I entered the values into product loan using
				| <excelsheet> |
		Then I should see product loan created successfully	
				| <excelsheet> |
 		Examples:
				| excelsheet   | 
	 		   |440-RBI-EI-DB-SAR-REC-NON-RNI-CTRFD-DL-MD-TR-1-B-EarlyRePayment-Loanproduct4.xlsx|
	
	  
	   Scenario:  Repayment-440-RBI-EI-DB-SAR-REC-NON-RNI-CTRFD-DL-MD-TR-1-B-EarlyRePayment
	 
	  Given I setup the clients 
	  			| Clientnavigation.xlsx |
	  When I entered the values into client form using
	  			|Createclient.xlsx|
	  Then I should see client created successfully
	  			|Createclient.xlsx|   
	  			
	  When I set up the new create loan
	  			| 440-RBI-EI-DB-SAR-REC-NON-RNI-CTRFD-DL-MD-TR-1-B-EarlyRePayment-Newcreateloan.xlsx|
	  Then I verified the "Summary" details successfully 
	  			| 440-RBI-EI-DB-SAR-REC-NON-RNI-CTRFD-DL-MD-TR-1-B-EarlyRePayment-Newcreateloan.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
	  			| 440-RBI-EI-DB-SAR-REC-NON-RNI-CTRFD-DL-MD-TR-1-B-EarlyRePayment-Newcreateloan.xlsx|
	  
	  When I make repayment and verified the following tabs
	  			|440-RBI-EI-DB-SAR-REC-NON-RNI-CTRFD-DL-MD-TR-1-B-EarlyRePayment-Makerepayment1.xlsx|Summary|Repayment Schedule|Transactions|
	  
	  				
	   		 		 		 		 		 		 		 		 		 		 		 		 		 		 		 		
	   		 		 		 		 		 		 		 		 		 		
	   		 		
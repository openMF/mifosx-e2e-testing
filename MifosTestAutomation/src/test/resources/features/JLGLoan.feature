Feature:RBI

Background:
	Given I navigate to mifos using "default5#/"
	And I login into mifos site using "Login" excel sheet
		|Login.xlsx|
	Then I should see logged in successfully  

@4130-RBI-EI-DB-DL-NOREC-MOREREPAY
Scenario:4130-RBI-EI-DB-DL-NOREC-MOREREPAY
     Given I setup the product loan "Setup"
		| Productloannavigation.xlsx |
	 Then I entered the values into product loan from "ProductLoanInput" Sheet
		|4130-RBI-EI-DB-DL-NOREC-MOREREPAY-Loanproduct.xlsx|
     Given I setup the group
	 When I entered the values into group from "Input" sheet
	  	|4130-RBI-EI-DB-DL-NOREC-MOREREPAY-Newcreateloan1.xlsx|		  								  				  				  			
	 Then I entered the values into client from "Input" sheet
	 	|Createclient.xlsx|	 				  								  				  				  			
	 When I set up the new create loan from "NewLoanInput" sheet
	  	|4130-RBI-EI-DB-DL-NOREC-MOREREPAY-Newcreateloan1.xlsx|
	 Then I verified the following Tabs details successfully 
	    |4130-RBI-EI-DB-DL-NOREC-MOREREPAY-Newcreateloan1.xlsx|Summary|Repayment Schedule|
	 Then I make repayment and verified the following tabs
    	|4130-RBI-EI-DB-DL-NOREC-MOREREPAY-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|

@4131-RBI-EI-FL-DL-NOREC-MOREREPAY
Scenario:4131-RBI-EI-FL-DL-NOREC-MOREREPAY
     Given I setup the product loan "Setup"
		| Productloannavigation.xlsx |
	 Then I entered the values into product loan from "ProductLoanInput" Sheet
		|4131-RBI-EI-FL-DL-NOREC-MOREREPAY-Loanproduct.xlsx|
     Given I setup the group
	 When I entered the values into group from "Input" sheet
	  	|4131-RBI-EI-FL-DL-NOREC-MOREREPAY-Newcreateloan1.xlsx|		  								  				  				  			
	 Then I entered the values into client from "Input" sheet
	 	|Createclient.xlsx|	 				  								  				  				  			
	 When I set up the new create loan from "NewLoanInput" sheet
	  	|4131-RBI-EI-FL-DL-NOREC-MOREREPAY-Newcreateloan1.xlsx|
	 Then I verified the following Tabs details successfully 
	    |4131-RBI-EI-FL-DL-NOREC-MOREREPAY-Newcreateloan1.xlsx|Summary|Repayment Schedule|
	 Then I make repayment and verified the following tabs
    	|4131-RBI-EI-FL-DL-NOREC-MOREREPAY-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
    	
@4132-RBI-EPP-DB-DL-NOREC-MOREREPAY
Scenario:4132-RBI-EPP-DB-DL-NOREC-MOREREPAY
     Given I setup the product loan "Setup"
		| Productloannavigation.xlsx |
	 Then I entered the values into product loan from "ProductLoanInput" Sheet
		|4132-RBI-EPP-DB-DL-NOREC-MOREREPAY-Loanproduct.xlsx|
     Given I setup the group
	 When I entered the values into group from "Input" sheet
	  	|4132-RBI-EPP-DB-DL-NOREC-MOREREPAY-Newcreateloan1.xlsx|		  								  				  				  			
	 Then I entered the values into client from "Input" sheet
	 	|Createclient.xlsx|	 				  								  				  				  			
	 When I set up the new create loan from "NewLoanInput" sheet
	  	|4132-RBI-EPP-DB-DL-NOREC-MOREREPAY-Newcreateloan1.xlsx|
	 Then I verified the following Tabs details successfully 
	    |4132-RBI-EPP-DB-DL-NOREC-MOREREPAY-Newcreateloan1.xlsx|Summary|Repayment Schedule|
	 Then I make repayment and verified the following tabs
    	|4132-RBI-EPP-DB-DL-NOREC-MOREREPAY-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|

@4133-RBI-EPP-FL-DL-NOREC-MOREREPAY
Scenario:4133-RBI-EPP-FL-DL-NOREC-MOREREPAY
     Given I setup the product loan "Setup"
		| Productloannavigation.xlsx |
	 Then I entered the values into product loan from "ProductLoanInput" Sheet
		|4133-RBI-EPP-FL-DL-NOREC-MOREREPAY-Loanproduct.xlsx|
     Given I setup the group
	 When I entered the values into group from "Input" sheet
	  	|4133-RBI-EPP-FL-DL-NOREC-MOREREPAY-Newcreateloan1.xlsx|		  								  				  				  			
	 Then I entered the values into client from "Input" sheet
	 	|Createclient.xlsx|	 				  								  				  				  			
	 When I set up the new create loan from "NewLoanInput" sheet
	  	|4133-RBI-EPP-FL-DL-NOREC-MOREREPAY-Newcreateloan1.xlsx|
	 Then I verified the following Tabs details successfully 
	    |4133-RBI-EPP-FL-DL-NOREC-MOREREPAY-Newcreateloan1.xlsx|Summary|Repayment Schedule|
	 Then I make repayment and verified the following tabs
    	|4133-RBI-EPP-FL-DL-NOREC-MOREREPAY-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|

@4134-RBI-EI-DB-SAR-NOREC-MOREREPAY
Scenario:4134-RBI-EI-DB-SAR-NOREC-MOREREPAY
     Given I setup the product loan "Setup"
		| Productloannavigation.xlsx |
	 Then I entered the values into product loan from "ProductLoanInput" Sheet
		|4134-RBI-EI-DB-SAR-NOREC-MOREREPAY-Loanproduct.xlsx|
     Given I setup the group
	 When I entered the values into group from "Input" sheet
	  	|4134-RBI-EI-DB-SAR-NOREC-MOREREPAY-Newcreateloan1.xlsx|		  								  				  				  			
	 Then I entered the values into client from "Input" sheet
	 	|Createclient.xlsx|	 				  								  				  				  			
	 When I set up the new create loan from "NewLoanInput" sheet
	  	|4134-RBI-EI-DB-SAR-NOREC-MOREREPAY-Newcreateloan1.xlsx|
	 Then I verified the following Tabs details successfully 
	    |4134-RBI-EI-DB-SAR-NOREC-MOREREPAY-Newcreateloan1.xlsx|Summary|Repayment Schedule|
	 Then I make repayment and verified the following tabs
    	|4134-RBI-EI-DB-SAR-NOREC-MOREREPAY-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|

@4135-RBI-EI-FL-SAR-NOREC-MOREREPAY
Scenario:4135-RBI-EI-FL-SAR-NOREC-MOREREPAY
     Given I setup the product loan "Setup"
		| Productloannavigation.xlsx |
	 Then I entered the values into product loan from "ProductLoanInput" Sheet
		|4135-RBI-EI-FL-SAR-NOREC-MOREREPAY-Loanproduct.xlsx|
     Given I setup the group
	 When I entered the values into group from "Input" sheet
	  	|4135-RBI-EI-FL-SAR-NOREC-MOREREPAY-Newcreateloan1.xlsx|		  								  				  				  			
	 Then I entered the values into client from "Input" sheet
	 	|Createclient.xlsx|	 				  								  				  				  			
	 When I set up the new create loan from "NewLoanInput" sheet
	  	|4135-RBI-EI-FL-SAR-NOREC-MOREREPAY-Newcreateloan1.xlsx|
	 Then I verified the following Tabs details successfully 
	    |4135-RBI-EI-FL-SAR-NOREC-MOREREPAY-Newcreateloan1.xlsx|Summary|Repayment Schedule|
	 Then I make repayment and verified the following tabs
    	|4135-RBI-EI-FL-SAR-NOREC-MOREREPAY-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|

@4136-RBI-EPP-DB-SAR-NOREC-MOREREPAY
Scenario:4136-RBI-EPP-DB-SAR-NOREC-MOREREPAY
     Given I setup the product loan "Setup"
		| Productloannavigation.xlsx |
	 Then I entered the values into product loan from "ProductLoanInput" Sheet
		|4136-RBI-EPP-DB-SAR-NOREC-MOREREPAY-Loanproduct.xlsx|
     Given I setup the group
	 When I entered the values into group from "Input" sheet
	  	|4136-RBI-EPP-DB-SAR-NOREC-MOREREPAY-Newcreateloan1.xlsx|		  								  				  				  			
	 Then I entered the values into client from "Input" sheet
	 	|Createclient.xlsx|	 				  								  				  				  			
	 When I set up the new create loan from "NewLoanInput" sheet
	  	|4136-RBI-EPP-DB-SAR-NOREC-MOREREPAY-Newcreateloan1.xlsx|
	 Then I verified the following Tabs details successfully 
	    |4136-RBI-EPP-DB-SAR-NOREC-MOREREPAY-Newcreateloan1.xlsx|Summary|Repayment Schedule|
	 Then I make repayment and verified the following tabs
    	|4136-RBI-EPP-DB-SAR-NOREC-MOREREPAY-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|

@4137-RBI-EPP-FL-SAR-NOREC-MOREREPAY
Scenario:4137-RBI-EPP-FL-SAR-NOREC-MOREREPAY
     Given I setup the product loan "Setup"
		| Productloannavigation.xlsx |
	 Then I entered the values into product loan from "ProductLoanInput" Sheet
		|4137-RBI-EPP-FL-SAR-NOREC-MOREREPAY-Loanproduct.xlsx|
     Given I setup the group
	 When I entered the values into group from "Input" sheet
	  	|4137-RBI-EPP-FL-SAR-NOREC-MOREREPAY-Newcreateloan1.xlsx|		  								  				  				  			
	 Then I entered the values into client from "Input" sheet
	 	|Createclient.xlsx|	 				  								  				  				  			
	 When I set up the new create loan from "NewLoanInput" sheet
	  	|4137-RBI-EPP-FL-SAR-NOREC-MOREREPAY-Newcreateloan1.xlsx|
	 Then I verified the following Tabs details successfully 
	    |4137-RBI-EPP-FL-SAR-NOREC-MOREREPAY-Newcreateloan1.xlsx|Summary|Repayment Schedule|
	 Then I make repayment and verified the following tabs
    	|4137-RBI-EPP-FL-SAR-NOREC-MOREREPAY-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|

@4200-RBI-EI-DB-DL-REC-FEE-RNI-FFC-SAR-FFROP-DAILY-1-CTRFD-MD-TR-1-ONTIME-PERIODIC
Scenario:4200-RBI-EI-DB-DL-REC-FEE-RNI-FFC-SAR-FFROP-DAILY-1-CTRFD-MD-TR-1-ONTIME-PERIODIC
     Given I setup the product loan "Setup"
		| Productloannavigation.xlsx |
	 Then I entered the values into product loan from "ProductLoanInput" Sheet
		|4200-RBI-EI-DB-DL-REC-FEE-RNI-FFC-SAR-FFROP-DAILY-1-CTRFD-MD-TR-1-ONTIME-PERIODIC-Loanproduct.xlsx|
     Given I setup the group
	 When I entered the values into group from "Input" sheet
	  	|4200-RBI-EI-DB-DL-REC-FEE-RNI-FFC-SAR-FFROP-DAILY-1-CTRFD-MD-TR-1-ONTIME-PERIODIC-Newcreateloan1.xlsx|		  								  				  				  			
	 Then I entered the values into client from "Input" sheet
	 	|Createclient.xlsx|	 				  								  				  				  			
	 When I set up the new create loan from "NewLoanInput" sheet
	  	|4200-RBI-EI-DB-DL-REC-FEE-RNI-FFC-SAR-FFROP-DAILY-1-CTRFD-MD-TR-1-ONTIME-PERIODIC-Newcreateloan1.xlsx|
	 Then I navigate to scheduler job & execute "Periodic Accrual Transactions"
 	 Then I verified the following Tabs details successfully 
	    |4200-RBI-EI-DB-DL-REC-FEE-RNI-FFC-SAR-FFROP-DAILY-1-CTRFD-MD-TR-1-ONTIME-PERIODIC-Newcreateloan1.xlsx|Summary|Repayment Schedule|Transactions|
	 Then I make repayment and verified the following tabs
    	|4200-RBI-EI-DB-DL-REC-FEE-RNI-FFC-SAR-FFROP-DAILY-1-CTRFD-MD-TR-1-ONTIME-PERIODIC-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
	 And I Navigate to Accounting web page
 	 And I search with transaction id & verified the accounting entries
    	|4200-RBI-EI-DB-DL-REC-FEE-RNI-FFC-SAR-FFROP-DAILY-1-CTRFD-MD-TR-1-ONTIME-PERIODIC-Makerepayment1.xlsx|Acc_Disbursement|Acc_Repayment|Acc_Periodic|
	 
@4201-RBI-EI-DB-DL-REC-INT-RNI-FFC-SAR-FFROP-DAILY-1-CTRFD-MD-TR-1-ONTIME-PERIODIC
Scenario:4201-RBI-EI-DB-DL-REC-INT-RNI-FFC-SAR-FFROP-DAILY-1-CTRFD-MD-TR-1-ONTIME-PERIODIC
     Given I setup the product loan "Setup"
		| Productloannavigation.xlsx |
	 Then I entered the values into product loan from "ProductLoanInput" Sheet
		|4201-RBI-EI-DB-DL-REC-INT-RNI-FFC-SAR-FFROP-DAILY-1-CTRFD-MD-TR-1-ONTIME-PERIODIC-Loanproduct.xlsx|
     Given I setup the group
	 When I entered the values into group from "Input" sheet
	  	|4201-RBI-EI-DB-DL-REC-INT-RNI-FFC-SAR-FFROP-DAILY-1-CTRFD-MD-TR-1-ONTIME-PERIODIC-Newcreateloan1.xlsx|		  								  				  				  			
	 Then I entered the values into client from "Input" sheet
	 	|Createclient.xlsx|	 				  								  				  				  			
	 When I set up the new create loan from "NewLoanInput" sheet
	  	|4201-RBI-EI-DB-DL-REC-INT-RNI-FFC-SAR-FFROP-DAILY-1-CTRFD-MD-TR-1-ONTIME-PERIODIC-Newcreateloan1.xlsx|
	 Then I navigate to scheduler job & execute "Periodic Accrual Transactions"
 	 Then I verified the following Tabs details successfully 
	    |4201-RBI-EI-DB-DL-REC-INT-RNI-FFC-SAR-FFROP-DAILY-1-CTRFD-MD-TR-1-ONTIME-PERIODIC-Newcreateloan1.xlsx|Summary|Repayment Schedule|Transactions|
	 Then I make repayment and verified the following tabs
    	|4201-RBI-EI-DB-DL-REC-INT-RNI-FFC-SAR-FFROP-DAILY-1-CTRFD-MD-TR-1-ONTIME-PERIODIC-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
	 And I Navigate to Accounting web page
 	 And I search with transaction id & verified the accounting entries
    	|4201-RBI-EI-DB-DL-REC-INT-RNI-FFC-SAR-FFROP-DAILY-1-CTRFD-MD-TR-1-ONTIME-PERIODIC-Makerepayment1.xlsx|Acc_Disbursement|Acc_Repayment|Acc_Periodic|

@4202-RBI-EI-DB-DL-REC-FEE+INTEREST-RNI-FFC-SAR-FFROP-DAILY-1-CTRFD-MD-TR-1-ONTIME-PERIODIC
Scenario:4202-RBI-EI-DB-DL-REC-FEE+INTEREST-RNI-FFC-SAR-FFROP-DAILY-1-CTRFD-MD-TR-1-ONTIME-PERIODIC
     Given I setup the product loan "Setup"
		| Productloannavigation.xlsx |
	 Then I entered the values into product loan from "ProductLoanInput" Sheet
		|4202-RBI-EI-DB-DL-REC-FEE+INTEREST-RNI-FFC-SAR-FFROP-DAILY-1-CTRFD-MD-TR-1-ONTIME-PERIODIC-Loanproduct.xlsx|
     Given I setup the group
	 When I entered the values into group from "Input" sheet
	  	|4202-RBI-EI-DB-DL-REC-FEE+INTEREST-RNI-FFC-SAR-FFROP-DAILY-1-CTRFD-MD-TR-1-ONTIME-PERIODIC-Newcreateloan1.xlsx|		  								  				  				  			
	 Then I entered the values into client from "Input" sheet
	 	|Createclient.xlsx|	 				  								  				  				  			
	 When I set up the new create loan from "NewLoanInput" sheet
	  	|4202-RBI-EI-DB-DL-REC-FEE+INTEREST-RNI-FFC-SAR-FFROP-DAILY-1-CTRFD-MD-TR-1-ONTIME-PERIODIC-Newcreateloan1.xlsx|
	 Then I navigate to scheduler job & execute "Periodic Accrual Transactions"
 	 Then I verified the following Tabs details successfully 
	    |4202-RBI-EI-DB-DL-REC-FEE+INTEREST-RNI-FFC-SAR-FFROP-DAILY-1-CTRFD-MD-TR-1-ONTIME-PERIODIC-Newcreateloan1.xlsx|Summary|Repayment Schedule|Transactions|
	 Then I make repayment and verified the following tabs
    	|4202-RBI-EI-DB-DL-REC-FEE+INTEREST-RNI-FFC-SAR-FFROP-DAILY-1-CTRFD-MD-TR-1-ONTIME-PERIODIC-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
	 And I Navigate to Accounting web page
 	 And I search with transaction id & verified the accounting entries
    	|4202-RBI-EI-DB-DL-REC-FEE+INTEREST-RNI-FFC-SAR-FFROP-DAILY-1-CTRFD-MD-TR-1-ONTIME-PERIODIC-Makerepayment1.xlsx|Acc_Disbursement|Acc_Repayment|Acc_Periodic|

@4203-RBI-EI-DB-DL-REC-FEE-RNI-FFC-SAR-FFROP-DAILY-1-CTRFD-MD-TR-1-MORE-PERIODIC
Scenario:4203-RBI-EI-DB-DL-REC-FEE-RNI-FFC-SAR-FFROP-DAILY-1-CTRFD-MD-TR-1-MORE-PERIODIC
        Given I setup the group
	 When I entered the values into group from "Input" sheet
	  	|4203-RBI-EI-DB-DL-REC-FEE-RNI-FFC-SAR-FFROP-DAILY-1-CTRFD-MD-TR-1-MORE-PERIODIC-Newcreateloan1.xlsx|		  								  				  				  			
	 Then I entered the values into client from "Input" sheet
	 	|Createclient.xlsx|	 				  								  				  				  			
	 When I set up the new create loan from "NewLoanInput" sheet
	  	|4203-RBI-EI-DB-DL-REC-FEE-RNI-FFC-SAR-FFROP-DAILY-1-CTRFD-MD-TR-1-MORE-PERIODIC-Newcreateloan1.xlsx|
	 Then I navigate to scheduler job & execute "Periodic Accrual Transactions"
 	 Then I verified the following Tabs details successfully 
	    |4203-RBI-EI-DB-DL-REC-FEE-RNI-FFC-SAR-FFROP-DAILY-1-CTRFD-MD-TR-1-MORE-PERIODIC-Newcreateloan1.xlsx|Summary|Repayment Schedule|Transactions|
	 Then I make repayment and verified the following tabs
    	|4203-RBI-EI-DB-DL-REC-FEE-RNI-FFC-SAR-FFROP-DAILY-1-CTRFD-MD-TR-1-MORE-PERIODIC-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
	 And I Navigate to Accounting web page
 	 And I search with transaction id & verified the accounting entries
    	|4203-RBI-EI-DB-DL-REC-FEE-RNI-FFC-SAR-FFROP-DAILY-1-CTRFD-MD-TR-1-MORE-PERIODIC-Makerepayment1.xlsx|Acc_Disbursement|Acc_Repayment|Acc_Periodic|

@4204-RBI-EI-DB-DL-REC-INT-RNI-FFC-SAR-FFROP-DAILY-1-CTRFD-MD-TR-1-MORE-PERIODIC
Scenario:4204-RBI-EI-DB-DL-REC-INT-RNI-FFC-SAR-FFROP-DAILY-1-CTRFD-MD-TR-1-MORE-PERIODIC
          Given I setup the group
	 When I entered the values into group from "Input" sheet
	  	|4204-RBI-EI-DB-DL-REC-INT-RNI-FFC-SAR-FFROP-DAILY-1-CTRFD-MD-TR-1-MORE-PERIODIC-Newcreateloan1.xlsx|		  								  				  				  			
	 Then I entered the values into client from "Input" sheet
	 	|Createclient.xlsx|	 				  								  				  				  			
	 When I set up the new create loan from "NewLoanInput" sheet
	  	|4204-RBI-EI-DB-DL-REC-INT-RNI-FFC-SAR-FFROP-DAILY-1-CTRFD-MD-TR-1-MORE-PERIODIC-Newcreateloan1.xlsx|
	 Then I navigate to scheduler job & execute "Periodic Accrual Transactions"
 	 Then I verified the following Tabs details successfully 
	    |4204-RBI-EI-DB-DL-REC-INT-RNI-FFC-SAR-FFROP-DAILY-1-CTRFD-MD-TR-1-MORE-PERIODIC-Newcreateloan1.xlsx|Summary|Repayment Schedule|Transactions|
	 Then I make repayment and verified the following tabs
    	|4204-RBI-EI-DB-DL-REC-INT-RNI-FFC-SAR-FFROP-DAILY-1-CTRFD-MD-TR-1-MORE-PERIODIC-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
	 And I Navigate to Accounting web page
 	 And I search with transaction id & verified the accounting entries
    	|4204-RBI-EI-DB-DL-REC-INT-RNI-FFC-SAR-FFROP-DAILY-1-CTRFD-MD-TR-1-MORE-PERIODIC-Makerepayment1.xlsx|Acc_Disbursement|Acc_Repayment|Acc_Periodic|

@4205-RBI-EI-DB-DL-REC-FEE+INTEREST-RNI-FFC-SAR-FFROP-DAILY-1-CTRFD-MD-TR-1-MORE-PERIODIC
Scenario:4205-RBI-EI-DB-DL-REC-FEE+INTEREST-RNI-FFC-SAR-FFROP-DAILY-1-CTRFD-MD-TR-1-MORE-PERIODIC
          Given I setup the group
	 When I entered the values into group from "Input" sheet
	  	|4205-RBI-EI-DB-DL-REC-FEE+INTEREST-RNI-FFC-SAR-FFROP-DAILY-1-CTRFD-MD-TR-1-MORE-PERIODIC-Newcreateloan1.xlsx|		  								  				  				  			
	 Then I entered the values into client from "Input" sheet
	 	|Createclient.xlsx|	 				  								  				  				  			
	 When I set up the new create loan from "NewLoanInput" sheet
	  	|4205-RBI-EI-DB-DL-REC-FEE+INTEREST-RNI-FFC-SAR-FFROP-DAILY-1-CTRFD-MD-TR-1-MORE-PERIODIC-Newcreateloan1.xlsx|
	 Then I navigate to scheduler job & execute "Periodic Accrual Transactions"
 	 Then I verified the following Tabs details successfully 
	    |4205-RBI-EI-DB-DL-REC-FEE+INTEREST-RNI-FFC-SAR-FFROP-DAILY-1-CTRFD-MD-TR-1-MORE-PERIODIC-Newcreateloan1.xlsx|Summary|Repayment Schedule|Transactions|
	 Then I make repayment and verified the following tabs
    	|4205-RBI-EI-DB-DL-REC-FEE+INTEREST-RNI-FFC-SAR-FFROP-DAILY-1-CTRFD-MD-TR-1-MORE-PERIODIC-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
	 And I Navigate to Accounting web page
 	 And I search with transaction id & verified the accounting entries
    	|4205-RBI-EI-DB-DL-REC-FEE+INTEREST-RNI-FFC-SAR-FFROP-DAILY-1-CTRFD-MD-TR-1-MORE-PERIODIC-Makerepayment1.xlsx|Acc_Disbursement|Acc_Repayment|Acc_Periodic|

@4206-RBI-EI-DB-DL-REC-FEE-RNI-FFC-SAR-FFROP-DAILY-1-CTRFD-MD-TR-1-LESS-PERIODIC
Scenario:4206-RBI-EI-DB-DL-REC-FEE-RNI-FFC-SAR-FFROP-DAILY-1-CTRFD-MD-TR-1-LESS-PERIODIC
          Given I setup the group
	 When I entered the values into group from "Input" sheet
	  	|4206-RBI-EI-DB-DL-REC-FEE-RNI-FFC-SAR-FFROP-DAILY-1-CTRFD-MD-TR-1-LESS-PERIODIC-Newcreateloan1.xlsx|		  								  				  				  			
	 Then I entered the values into client from "Input" sheet
	 	|Createclient.xlsx|	 				  								  				  				  			
	 When I set up the new create loan from "NewLoanInput" sheet
	  	|4206-RBI-EI-DB-DL-REC-FEE-RNI-FFC-SAR-FFROP-DAILY-1-CTRFD-MD-TR-1-LESS-PERIODIC-Newcreateloan1.xlsx|
	 Then I navigate to scheduler job & execute "Periodic Accrual Transactions"
 	 Then I verified the following Tabs details successfully 
	    |4206-RBI-EI-DB-DL-REC-FEE-RNI-FFC-SAR-FFROP-DAILY-1-CTRFD-MD-TR-1-LESS-PERIODIC-Newcreateloan1.xlsx|Summary|Repayment Schedule|Transactions|
	 Then I make repayment and verified the following tabs
    	|4206-RBI-EI-DB-DL-REC-FEE-RNI-FFC-SAR-FFROP-DAILY-1-CTRFD-MD-TR-1-LESS-PERIODIC-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
	 And I Navigate to Accounting web page
 	 And I search with transaction id & verified the accounting entries
    	|4206-RBI-EI-DB-DL-REC-FEE-RNI-FFC-SAR-FFROP-DAILY-1-CTRFD-MD-TR-1-LESS-PERIODIC-Makerepayment1.xlsx|Acc_Disbursement|Acc_Repayment|Acc_Periodic|

@4207-RBI-EI-DB-DL-REC-INT-RNI-FFC-SAR-FFROP-DAILY-1-CTRFD-MD-TR-1-LESS-PERIODIC
Scenario:4207-RBI-EI-DB-DL-REC-INT-RNI-FFC-SAR-FFROP-DAILY-1-CTRFD-MD-TR-1-LESS-PERIODIC
          Given I setup the group
	 When I entered the values into group from "Input" sheet
	  	|4207-RBI-EI-DB-DL-REC-INT-RNI-FFC-SAR-FFROP-DAILY-1-CTRFD-MD-TR-1-LESS-PERIODIC-Newcreateloan1.xlsx|		  								  				  				  			
	 Then I entered the values into client from "Input" sheet
	 	|Createclient.xlsx|	 				  								  				  				  			
	 When I set up the new create loan from "NewLoanInput" sheet
	  	|4207-RBI-EI-DB-DL-REC-INT-RNI-FFC-SAR-FFROP-DAILY-1-CTRFD-MD-TR-1-LESS-PERIODIC-Newcreateloan1.xlsx|
	 Then I navigate to scheduler job & execute "Periodic Accrual Transactions"
 	 Then I verified the following Tabs details successfully 
	    |4207-RBI-EI-DB-DL-REC-INT-RNI-FFC-SAR-FFROP-DAILY-1-CTRFD-MD-TR-1-LESS-PERIODIC-Newcreateloan1.xlsx|Summary|Repayment Schedule|Transactions|
	 Then I make repayment and verified the following tabs
    	|4207-RBI-EI-DB-DL-REC-INT-RNI-FFC-SAR-FFROP-DAILY-1-CTRFD-MD-TR-1-LESS-PERIODIC-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
	 And I Navigate to Accounting web page
 	 And I search with transaction id & verified the accounting entries
    	|4207-RBI-EI-DB-DL-REC-INT-RNI-FFC-SAR-FFROP-DAILY-1-CTRFD-MD-TR-1-LESS-PERIODIC-Makerepayment1.xlsx|Acc_Disbursement|Acc_Repayment|Acc_Periodic|

@4208-RBI-EI-DB-DL-REC-FEE+INTEREST-RNI-FFC-SAR-FFROP-DAILY-1-CTRFD-MD-TR-1-LESS-PERIODIC
Scenario:4208-RBI-EI-DB-DL-REC-FEE+INTEREST-RNI-FFC-SAR-FFROP-DAILY-1-CTRFD-MD-TR-1-LESS-PERIODIC
          Given I setup the group
	 When I entered the values into group from "Input" sheet
	  	|4208-RBI-EI-DB-DL-REC-FEE+INTEREST-RNI-FFC-SAR-FFROP-DAILY-1-CTRFD-MD-TR-1-LESS-PERIODIC-Newcreateloan1.xlsx|		  								  				  				  			
	 Then I entered the values into client from "Input" sheet
	 	|Createclient.xlsx|	 				  								  				  				  			
	 When I set up the new create loan from "NewLoanInput" sheet
	  	|4208-RBI-EI-DB-DL-REC-FEE+INTEREST-RNI-FFC-SAR-FFROP-DAILY-1-CTRFD-MD-TR-1-LESS-PERIODIC-Newcreateloan1.xlsx|
	 Then I navigate to scheduler job & execute "Periodic Accrual Transactions"
 	 Then I verified the following Tabs details successfully 
	    |4208-RBI-EI-DB-DL-REC-FEE+INTEREST-RNI-FFC-SAR-FFROP-DAILY-1-CTRFD-MD-TR-1-LESS-PERIODIC-Newcreateloan1.xlsx|Summary|Repayment Schedule|Transactions|
	 Then I make repayment and verified the following tabs
    	|4208-RBI-EI-DB-DL-REC-FEE+INTEREST-RNI-FFC-SAR-FFROP-DAILY-1-CTRFD-MD-TR-1-LESS-PERIODIC-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
	 And I Navigate to Accounting web page
 	 And I search with transaction id & verified the accounting entries
    	|4208-RBI-EI-DB-DL-REC-FEE+INTEREST-RNI-FFC-SAR-FFROP-DAILY-1-CTRFD-MD-TR-1-LESS-PERIODIC-Makerepayment1.xlsx|Acc_Disbursement|Acc_Repayment|Acc_Periodic|

@4209-RBI-EI-DB-DL-REC-CTRFD-RNI-FEE-FFConMONTHLYonDAY25-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-ONTIME-PERIODIC
Scenario:4209-RBI-EI-DB-DL-REC-CTRFD-RNI-FEE-FFConMONTHLYonDAY25-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-ONTIME-PERIODIC
     Given I setup the product loan "Setup"
		| Productloannavigation.xlsx |
	 Then I entered the values into product loan from "ProductLoanInput" Sheet
		|4209-RBI-EI-DB-DL-REC-RNI-FEE-FFConMONTHLYonDAY25-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-ONTIME-PER-Loanproduct.xlsx|
     Given I setup the group
	 When I entered the values into group from "Input" sheet
	  	|4209-RBI-EI-DB-DL-REC-CTRFD-RNI-FEE-FFConMONTHLYonDAY25-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-ONTIME-PERIODIC-Newcreateloan1.xlsx|		  								  				  				  			
	 Then I entered the values into client from "Input" sheet
	 	|Createclient.xlsx|	 				  								  				  				  			
	 When I set up the new create loan from "NewLoanInput" sheet
	  	|4209-RBI-EI-DB-DL-REC-CTRFD-RNI-FEE-FFConMONTHLYonDAY25-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-ONTIME-PERIODIC-Newcreateloan1.xlsx|
	 Then I navigate to scheduler job & execute "Periodic Accrual Transactions"
 	 Then I verified the following Tabs details successfully 
	    |4209-RBI-EI-DB-DL-REC-CTRFD-RNI-FEE-FFConMONTHLYonDAY25-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-ONTIME-PERIODIC-Newcreateloan1.xlsx|Summary|Repayment Schedule|Transactions|
	 Then I make repayment and verified the following tabs
    	|4209-RBI-EI-DB-DL-REC-CTRFD-RNI-FEE-FFConMONTHLYonDAY25-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-ONTIME-PERIODIC-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
	 And I Navigate to Accounting web page
 	 And I search with transaction id & verified the accounting entries
    	|4209-RBI-EI-DB-DL-REC-CTRFD-RNI-FEE-FFConMONTHLYonDAY25-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-ONTIME-PERIODIC-Makerepayment1.xlsx|Acc_Disbursement|Acc_Repayment|Acc_Periodic|

@4210-RBI-EI-DB-DL-REC-CTRFD-RNI-INT-FFConMONTHLYonDAY25-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-ONTIME-PERIODIC
Scenario:4210-RBI-EI-DB-DL-REC-CTRFD-RNI-INT-FFConMONTHLYonDAY25-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-ONTIME-PERIODIC
     
#     Given I setup the product loan "Setup"
#		| Productloannavigation.xlsx |
#	 Then I entered the values into product loan from "ProductLoanInput" Sheet
#		|4210-RBI-EI-DB-DL-REC-RNI-INT-FFConMONTHLYonDAY25-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-ONTIME-PER-Loanproduct.xlsx|
     Given I setup the group
	 When I entered the values into group from "Input" sheet
	  	|4210-RBI-EI-DB-DL-REC-CTRFD-RNI-INT-FFConMONTHLYonDAY25-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-ONTIME-PERIODIC-Newcreateloan1.xlsx|		  								  				  				  			
	 Then I entered the values into client from "Input" sheet
	 	|Createclient.xlsx|	 				  								  				  				  			
	 When I set up the new create loan from "NewLoanInput" sheet
	  	|4210-RBI-EI-DB-DL-REC-CTRFD-RNI-INT-FFConMONTHLYonDAY25-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-ONTIME-PERIODIC-Newcreateloan1.xlsx|
	 Then I navigate to scheduler job & execute "Periodic Accrual Transactions"
# 	 Then I verified the following Tabs details successfully 
#	    |4210-RBI-EI-DB-DL-REC-CTRFD-RNI-INT-FFConMONTHLYonDAY25-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-ONTIME-PERIODIC-Newcreateloan1.xlsx|Summary|Repayment Schedule|Transactions|
	 Then I make repayment and verified the following tabs
    	|4210-RBI-EI-DB-DL-REC-CTRFD-RNI-INT-FFConMONTHLYonDAY25-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-ONTIME-PERIODIC-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
	 And I Navigate to Accounting web page
 	 And I search with transaction id & verified the accounting entries
    	|4210-RBI-EI-DB-DL-REC-CTRFD-RNI-INT-FFConMONTHLYonDAY25-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-ONTIME-PERIODIC-Makerepayment1.xlsx|Acc_Disbursement|Acc_Repayment|Acc_Periodic|

@4211-RBI-EI-DB-DL-REC-CTRFD-RNI-FEE+INTEREST-FFConMONTHLYonDAY25-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-ONTIME-PERIODIC
Scenario:4211-RBI-EI-DB-DL-REC-CTRFD-RNI-FEE+INTEREST-FFConMONTHLYonDAY25-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-ONTIME-PERIODIC
     Given I setup the product loan "Setup"
		| Productloannavigation.xlsx |
	 Then I entered the values into product loan from "ProductLoanInput" Sheet
		|4211-RBI-EI-DB-DL-REC-RNI-FEE+INT-FFConMONTHLYonDAY25-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-ONTIME-PER-Loanproduct.xlsx|
     Given I setup the group
	 When I entered the values into group from "Input" sheet
	  	|4211-RBI-EI-DB-DL-REC-CTRFD-RNI-FEE+INTEREST-FFConMONTHLYonDAY25-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-ONTIME-PERIODIC-Newcreateloan1.xlsx|		  								  				  				  			
	 Then I entered the values into client from "Input" sheet
	 	|Createclient.xlsx|	 				  								  				  				  			
	 When I set up the new create loan from "NewLoanInput" sheet
	  	|4211-RBI-EI-DB-DL-REC-CTRFD-RNI-FEE+INTEREST-FFConMONTHLYonDAY25-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-ONTIME-PERIODIC-Newcreateloan1.xlsx|
	 Then I navigate to scheduler job & execute "Periodic Accrual Transactions"
 	 Then I verified the following Tabs details successfully 
	    |4211-RBI-EI-DB-DL-REC-CTRFD-RNI-FEE+INTEREST-FFConMONTHLYonDAY25-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-ONTIME-PERIODIC-Newcreateloan1.xlsx|Summary|Repayment Schedule|Transactions|
	 Then I make repayment and verified the following tabs
    	|4211-RBI-EI-DB-DL-REC-CTRFD-RNI-FEE+INTEREST-FFConMONTHLYonDAY25-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-ONTIME-PERIODIC-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
	 And I Navigate to Accounting web page
 	 And I search with transaction id & verified the accounting entries
    	|4211-RBI-EI-DB-DL-REC-CTRFD-RNI-FEE+INTEREST-FFConMONTHLYonDAY25-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-ONTIME-PERIODIC-Makerepayment1.xlsx|Acc_Disbursement|Acc_Repayment|Acc_Periodic|

@4212-RBI-EI-DB-DL-REC-CTRFD-RNI-FEE-FFConMONTHLYonDAY25-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-ONTIME-PERIODIC
Scenario:4212-RBI-EI-DB-DL-REC-CTRFD-RNI-FEE-FFConMONTHLYonDAY25-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-ONTIME-PERIODIC
     Given I setup the group
	 When I entered the values into group from "Input" sheet
	  	|4212-RBI-EI-DB-DL-REC-CTRFD-RNI-FEE-FFConMONTHLYonDAY25-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-ONTIME-PERIODIC-Newcreateloan1.xlsx|		  								  				  				  			
	 Then I entered the values into client from "Input" sheet
	 	|Createclient.xlsx|	 				  								  				  				  			
	 When I set up the new create loan from "NewLoanInput" sheet
	  	|4212-RBI-EI-DB-DL-REC-CTRFD-RNI-FEE-FFConMONTHLYonDAY25-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-ONTIME-PERIODIC-Newcreateloan1.xlsx|
	 Then I navigate to scheduler job & execute "Periodic Accrual Transactions"
 	 Then I verified the following Tabs details successfully 
	    |4212-RBI-EI-DB-DL-REC-CTRFD-RNI-FEE-FFConMONTHLYonDAY25-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-ONTIME-PERIODIC-Newcreateloan1.xlsx|Summary|Repayment Schedule|Transactions|
	 Then I make repayment and verified the following tabs
    	|4212-RBI-EI-DB-DL-REC-CTRFD-RNI-FEE-FFConMONTHLYonDAY25-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-ONTIME-PERIODIC-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
	 And I Navigate to Accounting web page
 	 And I search with transaction id & verified the accounting entries
    	|4212-RBI-EI-DB-DL-REC-CTRFD-RNI-FEE-FFConMONTHLYonDAY25-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-ONTIME-PERIODIC-Makerepayment1.xlsx|Acc_Disbursement|Acc_Repayment|Acc_Periodic|

@4213-RBI-EI-DB-DL-REC-CTRFD-RNI-INT-FFConMONTHLYonDAY25-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-ONTIME-PERIODIC
Scenario:4213-RBI-EI-DB-DL-REC-CTRFD-RNI-INT-FFConMONTHLYonDAY25-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-ONTIME-PERIODIC
          Given I setup the group
	 When I entered the values into group from "Input" sheet
	  	|4213-RBI-EI-DB-DL-REC-CTRFD-RNI-INT-FFConMONTHLYonDAY25-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-ONTIME-PERIODIC-Newcreateloan1.xlsx|		  								  				  				  			
	 Then I entered the values into client from "Input" sheet
	 	|Createclient.xlsx|	 				  								  				  				  			
	 When I set up the new create loan from "NewLoanInput" sheet
	  	|4213-RBI-EI-DB-DL-REC-CTRFD-RNI-INT-FFConMONTHLYonDAY25-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-ONTIME-PERIODIC-Newcreateloan1.xlsx|
	 Then I navigate to scheduler job & execute "Periodic Accrual Transactions"
 	 Then I verified the following Tabs details successfully 
	    |4213-RBI-EI-DB-DL-REC-CTRFD-RNI-INT-FFConMONTHLYonDAY25-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-ONTIME-PERIODIC-Newcreateloan1.xlsx|Summary|Repayment Schedule|Transactions|
	 Then I make repayment and verified the following tabs
    	|4213-RBI-EI-DB-DL-REC-CTRFD-RNI-INT-FFConMONTHLYonDAY25-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-ONTIME-PERIODIC-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
	 And I Navigate to Accounting web page
 	 And I search with transaction id & verified the accounting entries
    	|4213-RBI-EI-DB-DL-REC-CTRFD-RNI-INT-FFConMONTHLYonDAY25-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-ONTIME-PERIODIC-Makerepayment1.xlsx|Acc_Disbursement|Acc_Repayment|Acc_Periodic|

@4214-RBI-EI-DB-DL-REC-CTRFD-RNI-FEE+INTEREST-FFConMONTHLYonDAY25-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-ONTIME-PERIODIC
Scenario:4214-RBI-EI-DB-DL-REC-CTRFD-RNI-FEE+INTEREST-FFConMONTHLYonDAY25-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-ONTIME-PERIODIC
          Given I setup the group
	 When I entered the values into group from "Input" sheet
	  	|4214-RBI-EI-DB-DL-REC-CTRFD-RNI-FEE+INTEREST-FFConMONTHLYonDAY25-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-ONTIME-PERIODIC-Newcreateloan1.xlsx|		  								  				  				  			
	 Then I entered the values into client from "Input" sheet
	 	|Createclient.xlsx|	 				  								  				  				  			
	 When I set up the new create loan from "NewLoanInput" sheet
	  	|4214-RBI-EI-DB-DL-REC-CTRFD-RNI-FEE+INTEREST-FFConMONTHLYonDAY25-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-ONTIME-PERIODIC-Newcreateloan1.xlsx|
	 Then I navigate to scheduler job & execute "Periodic Accrual Transactions"
 	 Then I verified the following Tabs details successfully 
	    |4214-RBI-EI-DB-DL-REC-CTRFD-RNI-FEE+INTEREST-FFConMONTHLYonDAY25-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-ONTIME-PERIODIC-Newcreateloan1.xlsx|Summary|Repayment Schedule|Transactions|
	 Then I make repayment and verified the following tabs
    	|4214-RBI-EI-DB-DL-REC-CTRFD-RNI-FEE+INTEREST-FFConMONTHLYonDAY25-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-ONTIME-PERIODIC-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
	 And I Navigate to Accounting web page
 	 And I search with transaction id & verified the accounting entries
    	|4214-RBI-EI-DB-DL-REC-CTRFD-RNI-FEE+INTEREST-FFConMONTHLYonDAY25-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-ONTIME-PERIODIC-Makerepayment1.xlsx|Acc_Disbursement|Acc_Repayment|Acc_Periodic|

@4215-RBI-EI-DB-DL-REC-CTRFD-RNI-FEE-FFConMONTHLYonDAY25-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-ONTIME-PERIODIC
Scenario:4215-RBI-EI-DB-DL-REC-CTRFD-RNI-FEE-FFConMONTHLYonDAY25-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-ONTIME-PERIODIC
          Given I setup the group
	 When I entered the values into group from "Input" sheet
	  	|4215-RBI-EI-DB-DL-REC-CTRFD-RNI-FEE-FFConMONTHLYonDAY25-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-ONTIME-PERIODIC-Newcreateloan1.xlsx|		  								  				  				  			
	 Then I entered the values into client from "Input" sheet
	 	|Createclient.xlsx|	 				  								  				  				  			
	 When I set up the new create loan from "NewLoanInput" sheet
	  	|4215-RBI-EI-DB-DL-REC-CTRFD-RNI-FEE-FFConMONTHLYonDAY25-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-ONTIME-PERIODIC-Newcreateloan1.xlsx|
	 Then I navigate to scheduler job & execute "Periodic Accrual Transactions"
 	 Then I verified the following Tabs details successfully 
	    |4215-RBI-EI-DB-DL-REC-CTRFD-RNI-FEE-FFConMONTHLYonDAY25-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-ONTIME-PERIODIC-Newcreateloan1.xlsx|Summary|Repayment Schedule|Transactions|
	 Then I make repayment and verified the following tabs
    	|4215-RBI-EI-DB-DL-REC-CTRFD-RNI-FEE-FFConMONTHLYonDAY25-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-ONTIME-PERIODIC-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
	 And I Navigate to Accounting web page
 	 And I search with transaction id & verified the accounting entries
    	|4215-RBI-EI-DB-DL-REC-CTRFD-RNI-FEE-FFConMONTHLYonDAY25-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-ONTIME-PERIODIC-Makerepayment1.xlsx|Acc_Disbursement|Acc_Repayment|Acc_Periodic|

@4216-RBI-EI-DB-DL-REC-CTRFD-RNI-INT-FFConMONTHLYonDAY25-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-ONTIME-PERIODIC
Scenario:4216-RBI-EI-DB-DL-REC-CTRFD-RNI-INT-FFConMONTHLYonDAY25-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-ONTIME-PERIODIC
          Given I setup the group
	 When I entered the values into group from "Input" sheet
	  	|4216-RBI-EI-DB-DL-REC-CTRFD-RNI-INT-FFConMONTHLYonDAY25-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-ONTIME-PERIODIC-Newcreateloan1.xlsx|		  								  				  				  			
	 Then I entered the values into client from "Input" sheet
	 	|Createclient.xlsx|	 				  								  				  				  			
	 When I set up the new create loan from "NewLoanInput" sheet
	  	|4216-RBI-EI-DB-DL-REC-CTRFD-RNI-INT-FFConMONTHLYonDAY25-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-ONTIME-PERIODIC-Newcreateloan1.xlsx|
	 Then I navigate to scheduler job & execute "Periodic Accrual Transactions"
 	 Then I verified the following Tabs details successfully 
	    |4216-RBI-EI-DB-DL-REC-CTRFD-RNI-INT-FFConMONTHLYonDAY25-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-ONTIME-PERIODIC-Newcreateloan1.xlsx|Summary|Repayment Schedule|Transactions|
	 Then I make repayment and verified the following tabs
    	|4216-RBI-EI-DB-DL-REC-CTRFD-RNI-INT-FFConMONTHLYonDAY25-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-ONTIME-PERIODIC-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
	 And I Navigate to Accounting web page
 	 And I search with transaction id & verified the accounting entries
    	|4216-RBI-EI-DB-DL-REC-CTRFD-RNI-INT-FFConMONTHLYonDAY25-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-ONTIME-PERIODIC-Makerepayment1.xlsx|Acc_Disbursement|Acc_Repayment|Acc_Periodic|

@4217-RBI-EI-DB-DL-REC-CTRFD-RNI-FEE+INTEREST-FFConMONTHLYonDAY25-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-ONTIME-PERIODIC
Scenario:4217-RBI-EI-DB-DL-REC-CTRFD-RNI-FEE+INTEREST-FFConMONTHLYonDAY25-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-ONTIME-PERIODIC
          Given I setup the group
	 When I entered the values into group from "Input" sheet
	  	|4217-RBI-EI-DB-DL-REC-CTRFD-RNI-FEE+INTEREST-FFConMONTHLYonDAY25-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-ONTIME-PERIODIC-Newcreateloan1.xlsx|		  								  				  				  			
	 Then I entered the values into client from "Input" sheet
	 	|Createclient.xlsx|	 				  								  				  				  			
	 When I set up the new create loan from "NewLoanInput" sheet
	  	|4217-RBI-EI-DB-DL-REC-CTRFD-RNI-FEE+INTEREST-FFConMONTHLYonDAY25-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-ONTIME-PERIODIC-Newcreateloan1.xlsx|
	 Then I navigate to scheduler job & execute "Periodic Accrual Transactions"
 	 Then I verified the following Tabs details successfully 
	    |4217-RBI-EI-DB-DL-REC-CTRFD-RNI-FEE+INTEREST-FFConMONTHLYonDAY25-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-ONTIME-PERIODIC-Newcreateloan1.xlsx|Summary|Repayment Schedule|Transactions|
	 Then I make repayment and verified the following tabs
    	|4217-RBI-EI-DB-DL-REC-CTRFD-RNI-FEE+INTEREST-FFConMONTHLYonDAY25-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-ONTIME-PERIODIC-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
	 And I Navigate to Accounting web page
 	 And I search with transaction id & verified the accounting entries
    	|4217-RBI-EI-DB-DL-REC-CTRFD-RNI-FEE+INTEREST-FFConMONTHLYonDAY25-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-ONTIME-PERIODIC-Makerepayment1.xlsx|Acc_Disbursement|Acc_Repayment|Acc_Periodic|

@4218-RBI-EI-DB-DL-REC-RNI-FEE-FFConMONTHLYonLASTSUNDAY-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-ONTIME-PER
Scenario:4218-RBI-EI-DB-DL-REC-RNI-FEE-FFConMONTHLYonLASTSUNDAY-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-ONTIME-PER
     Given I setup the product loan "Setup"
		| Productloannavigation.xlsx |
	 Then I entered the values into product loan from "ProductLoanInput" Sheet
		|4218-RBI-EI-DB-DL-REC-RNI-FEE-FFConMONTHLYonLASTSUNDAY-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-ONTIME-PER-Loanproduct.xlsx|
     Given I setup the group
	 When I entered the values into group from "Input" sheet
	  	|4218-RBI-EI-DB-DL-REC-RNI-FEE-FFConMONTHLYonLASTSUNDAY-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-ONTIME-PER-Newcreateloan1.xlsx|		  								  				  				  			
	 Then I entered the values into client from "Input" sheet
	 	|Createclient.xlsx|	 				  								  				  				  			
	 When I set up the new create loan from "NewLoanInput" sheet
	  	|4218-RBI-EI-DB-DL-REC-RNI-FEE-FFConMONTHLYonLASTSUNDAY-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-ONTIME-PER-Newcreateloan1.xlsx|
	 Then I navigate to scheduler job & execute "Periodic Accrual Transactions"
 	 Then I verified the following Tabs details successfully 
	    |4218-RBI-EI-DB-DL-REC-RNI-FEE-FFConMONTHLYonLASTSUNDAY-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-ONTIME-PER-Newcreateloan1.xlsx|Summary|Repayment Schedule|Transactions|
	 Then I make repayment and verified the following tabs
    	|4218-RBI-EI-DB-DL-REC-RNI-FEE-FFConMONTHLYonLASTSUNDAY-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-ONTIME-PER-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
	 And I Navigate to Accounting web page
 	 And I search with transaction id & verified the accounting entries
    	|4218-RBI-EI-DB-DL-REC-RNI-FEE-FFConMONTHLYonLASTSUNDAY-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-ONTIME-PER-Makerepayment1.xlsx|Acc_Disbursement|Acc_Repayment|Acc_Periodic|

@4219-RBI-EI-DB-DL-REC-RNI-INT-FFConMONTHLYonLASTSUNDAY-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-ONTIME-PER
Scenario:4219-RBI-EI-DB-DL-REC-RNI-INT-FFConMONTHLYonLASTSUNDAY-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-ONTIME-PER
     Given I setup the product loan "Setup"
		| Productloannavigation.xlsx |
	 Then I entered the values into product loan from "ProductLoanInput" Sheet
		|4219-RBI-EI-DB-DL-REC-RNI-INT-FFConMONTHLYonLASTSUNDAY-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-ONTIME-PER-Loanproduct.xlsx|
     Given I setup the group
	 When I entered the values into group from "Input" sheet
	  	|4219-RBI-EI-DB-DL-REC-RNI-INT-FFConMONTHLYonLASTSUNDAY-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-ONTIME-PER-Newcreateloan1.xlsx|		  								  				  				  			
	 Then I entered the values into client from "Input" sheet
	 	|Createclient.xlsx|	 				  								  				  				  			
	 When I set up the new create loan from "NewLoanInput" sheet
	  	|4219-RBI-EI-DB-DL-REC-RNI-INT-FFConMONTHLYonLASTSUNDAY-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-ONTIME-PER-Newcreateloan1.xlsx|
	 Then I navigate to scheduler job & execute "Periodic Accrual Transactions"
 	 Then I verified the following Tabs details successfully 
	    |4219-RBI-EI-DB-DL-REC-RNI-INT-FFConMONTHLYonLASTSUNDAY-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-ONTIME-PER-Newcreateloan1.xlsx|Summary|Repayment Schedule|Transactions|
	 Then I make repayment and verified the following tabs
    	|4219-RBI-EI-DB-DL-REC-RNI-INT-FFConMONTHLYonLASTSUNDAY-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-ONTIME-PER-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
	 And I Navigate to Accounting web page
 	 And I search with transaction id & verified the accounting entries
    	|4219-RBI-EI-DB-DL-REC-RNI-INT-FFConMONTHLYonLASTSUNDAY-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-ONTIME-PER-Makerepayment1.xlsx|Acc_Disbursement|Acc_Repayment|Acc_Periodic|

@4220-RBI-EI-DB-DL-REC-RNI-FEE+INT-FFConMONTHLYonLASTSUNDAY-FIFC-1-FFROP-DLY-FIFR-1-MD-TR1-ONTIM-PER
Scenario:4220-RBI-EI-DB-DL-REC-RNI-FEE+INT-FFConMONTHLYonLASTSUNDAY-FIFC-1-FFROP-DLY-FIFR-1-MD-TR1-ONTIM-PER
     Given I setup the product loan "Setup"
		| Productloannavigation.xlsx |
	 Then I entered the values into product loan from "ProductLoanInput" Sheet
		|4220-RBI-EI-DB-DL-REC-RNI-FEE+INT-FFConMONTHLYonLASTSUNDAY-FIFC-1-FFROP-DLY-FIFR-1-MD-TR1-ONTIM-PER-Loanproduct.xlsx|
     Given I setup the group
	 When I entered the values into group from "Input" sheet
	  	|4220-RBI-EI-DB-DL-REC-RNI-FEE+INT-FFConMONTHLYonLASTSUNDAY-FIFC-1-FFROP-DLY-FIFR-1-MD-TR1-ONTIM-PER-Newcreateloan1.xlsx|		  								  				  				  			
	 Then I entered the values into client from "Input" sheet
	 	|Createclient.xlsx|	 				  								  				  				  			
	 When I set up the new create loan from "NewLoanInput" sheet
	  	|4220-RBI-EI-DB-DL-REC-RNI-FEE+INT-FFConMONTHLYonLASTSUNDAY-FIFC-1-FFROP-DLY-FIFR-1-MD-TR1-ONTIM-PER-Newcreateloan1.xlsx|
	 Then I navigate to scheduler job & execute "Periodic Accrual Transactions"
 	 Then I verified the following Tabs details successfully 
	    |4220-RBI-EI-DB-DL-REC-RNI-FEE+INT-FFConMONTHLYonLASTSUNDAY-FIFC-1-FFROP-DLY-FIFR-1-MD-TR1-ONTIM-PER-Newcreateloan1.xlsx|Summary|Repayment Schedule|Transactions|
	 Then I make repayment and verified the following tabs
    	|4220-RBI-EI-DB-DL-REC-RNI-FEE+INT-FFConMONTHLYonLASTSUNDAY-FIFC-1-FFROP-DLY-FIFR-1-MD-TR1-ONTIM-PER-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
	 And I Navigate to Accounting web page
 	 And I search with transaction id & verified the accounting entries
    	|4220-RBI-EI-DB-DL-REC-RNI-FEE+INT-FFConMONTHLYonLASTSUNDAY-FIFC-1-FFROP-DLY-FIFR-1-MD-TR1-ONTIM-PER-Makerepayment1.xlsx|Acc_Disbursement|Acc_Repayment|Acc_Periodic|

@4221-RBI-EI-DB-DL-REC-RNI-FEE-FFConMONTHLYonLASTSUNDAY-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-MORE-PER
Scenario:4221-RBI-EI-DB-DL-REC-RNI-FEE-FFConMONTHLYonLASTSUNDAY-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-MORE-PER
          Given I setup the group
	 When I entered the values into group from "Input" sheet
	  	|4221-RBI-EI-DB-DL-REC-RNI-FEE-FFConMONTHLYonLASTSUNDAY-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-MORE-PER-Newcreateloan1.xlsx|		  								  				  				  			
	 Then I entered the values into client from "Input" sheet
	 	|Createclient.xlsx|	 				  								  				  				  			
	 When I set up the new create loan from "NewLoanInput" sheet
	  	|4221-RBI-EI-DB-DL-REC-RNI-FEE-FFConMONTHLYonLASTSUNDAY-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-MORE-PER-Newcreateloan1.xlsx|
	 Then I navigate to scheduler job & execute "Periodic Accrual Transactions"
 	 Then I verified the following Tabs details successfully 
	    |4221-RBI-EI-DB-DL-REC-RNI-FEE-FFConMONTHLYonLASTSUNDAY-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-MORE-PER-Newcreateloan1.xlsx|Summary|Repayment Schedule|Transactions|
	 Then I make repayment and verified the following tabs
    	|4221-RBI-EI-DB-DL-REC-RNI-FEE-FFConMONTHLYonLASTSUNDAY-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-MORE-PER-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
	 And I Navigate to Accounting web page
 	 And I search with transaction id & verified the accounting entries
    	|4221-RBI-EI-DB-DL-REC-RNI-FEE-FFConMONTHLYonLASTSUNDAY-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-MORE-PER-Makerepayment1.xlsx|Acc_Disbursement|Acc_Repayment|Acc_Periodic|

@4222-RBI-EI-DB-DL-REC-RNI-INT-FFConMONTHLYonLASTSUNDAY-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-MORE-PER
Scenario:4222-RBI-EI-DB-DL-REC-RNI-INT-FFConMONTHLYonLASTSUNDAY-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-MORE-PER
          Given I setup the group
	 When I entered the values into group from "Input" sheet
	  	|4222-RBI-EI-DB-DL-REC-RNI-INT-FFConMONTHLYonLASTSUNDAY-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-MORE-PER-Newcreateloan1.xlsx|		  								  				  				  			
	 Then I entered the values into client from "Input" sheet
	 	|Createclient.xlsx|	 				  								  				  				  			
	 When I set up the new create loan from "NewLoanInput" sheet
	  	|4222-RBI-EI-DB-DL-REC-RNI-INT-FFConMONTHLYonLASTSUNDAY-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-MORE-PER-Newcreateloan1.xlsx|
	 Then I navigate to scheduler job & execute "Periodic Accrual Transactions"
 	 Then I verified the following Tabs details successfully 
	    |4222-RBI-EI-DB-DL-REC-RNI-INT-FFConMONTHLYonLASTSUNDAY-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-MORE-PER-Newcreateloan1.xlsx|Summary|Repayment Schedule|Transactions|
	 Then I make repayment and verified the following tabs
    	|4222-RBI-EI-DB-DL-REC-RNI-INT-FFConMONTHLYonLASTSUNDAY-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-MORE-PER-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
	 And I Navigate to Accounting web page
 	 And I search with transaction id & verified the accounting entries
    	|4222-RBI-EI-DB-DL-REC-RNI-INT-FFConMONTHLYonLASTSUNDAY-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-MORE-PER-Makerepayment1.xlsx|Acc_Disbursement|Acc_Repayment|Acc_Periodic|

@4223-RBI-EI-DB-DL-REC-RNI-FEE+INT-FFConMONTHLYonLASTSUNDAY-FIFC-1-FFROP-DLY-FIFR-1-MD-TR1-ONTIM-PER
Scenario:4223-RBI-EI-DB-DL-REC-RNI-FEE+INT-FFConMONTHLYonLASTSUNDAY-FIFC-1-FFROP-DLY-FIFR-1-MD-TR1-ONTIM-PER
          Given I setup the group
	 When I entered the values into group from "Input" sheet
	  	|4223-RBI-EI-DB-DL-REC-RNI-FEE+INT-FFConMONTHLYonLASTSUNDAY-FIFC-1-FFROP-DLY-FIFR-1-MD-TR1-ONTIM-PER-Newcreateloan1.xlsx|		  								  				  				  			
	 Then I entered the values into client from "Input" sheet
	 	|Createclient.xlsx|	 				  								  				  				  			
	 When I set up the new create loan from "NewLoanInput" sheet
	  	|4223-RBI-EI-DB-DL-REC-RNI-FEE+INT-FFConMONTHLYonLASTSUNDAY-FIFC-1-FFROP-DLY-FIFR-1-MD-TR1-ONTIM-PER-Newcreateloan1.xlsx|
	 Then I navigate to scheduler job & execute "Periodic Accrual Transactions"
 	 Then I verified the following Tabs details successfully 
	    |4223-RBI-EI-DB-DL-REC-RNI-FEE+INT-FFConMONTHLYonLASTSUNDAY-FIFC-1-FFROP-DLY-FIFR-1-MD-TR1-ONTIM-PER-Newcreateloan1.xlsx|Summary|Repayment Schedule|Transactions|
	 Then I make repayment and verified the following tabs
    	|4223-RBI-EI-DB-DL-REC-RNI-FEE+INT-FFConMONTHLYonLASTSUNDAY-FIFC-1-FFROP-DLY-FIFR-1-MD-TR1-ONTIM-PER-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
	 And I Navigate to Accounting web page
 	 And I search with transaction id & verified the accounting entries
    	|4223-RBI-EI-DB-DL-REC-RNI-FEE+INT-FFConMONTHLYonLASTSUNDAY-FIFC-1-FFROP-DLY-FIFR-1-MD-TR1-ONTIM-PER-Makerepayment1.xlsx|Acc_Disbursement|Acc_Repayment|Acc_Periodic|

@4224-RBI-EI-DB-DL-REC-RNI-FEE-FFConMONTHLYonLASTSUNDAY-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-LESS-PER
Scenario:4224-RBI-EI-DB-DL-REC-RNI-FEE-FFConMONTHLYonLASTSUNDAY-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-LESS-PER
          Given I setup the group
	 When I entered the values into group from "Input" sheet
	  	|4224-RBI-EI-DB-DL-REC-RNI-FEE-FFConMONTHLYonLASTSUNDAY-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-LESS-PER-Newcreateloan1.xlsx|		  								  				  				  			
	 Then I entered the values into client from "Input" sheet
	 	|Createclient.xlsx|	 				  								  				  				  			
	 When I set up the new create loan from "NewLoanInput" sheet
	  	|4224-RBI-EI-DB-DL-REC-RNI-FEE-FFConMONTHLYonLASTSUNDAY-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-LESS-PER-Newcreateloan1.xlsx|
	 Then I navigate to scheduler job & execute "Periodic Accrual Transactions"
 	 Then I verified the following Tabs details successfully 
	    |4224-RBI-EI-DB-DL-REC-RNI-FEE-FFConMONTHLYonLASTSUNDAY-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-LESS-PER-Newcreateloan1.xlsx|Summary|Repayment Schedule|Transactions|
	 Then I make repayment and verified the following tabs
    	|4224-RBI-EI-DB-DL-REC-RNI-FEE-FFConMONTHLYonLASTSUNDAY-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-LESS-PER-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
	 And I Navigate to Accounting web page
 	 And I search with transaction id & verified the accounting entries
    	|4224-RBI-EI-DB-DL-REC-RNI-FEE-FFConMONTHLYonLASTSUNDAY-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-LESS-PER-Makerepayment1.xlsx|Acc_Disbursement|Acc_Repayment|Acc_Periodic|

@4225-RBI-EI-DB-DL-REC-RNI-INT-FFConMONTHLYonLASTSUNDAY-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-LESS-PER
Scenario:4225-RBI-EI-DB-DL-REC-RNI-INT-FFConMONTHLYonLASTSUNDAY-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-LESS-PER
      Given I setup the group
	 When I entered the values into group from "Input" sheet
	  	|4225-RBI-EI-DB-DL-REC-RNI-INT-FFConMONTHLYonLASTSUNDAY-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-LESS-PER-Newcreateloan1.xlsx|		  								  				  				  			
	 Then I entered the values into client from "Input" sheet
	 	|Createclient.xlsx|	 				  								  				  				  			
	 When I set up the new create loan from "NewLoanInput" sheet
	  	|4225-RBI-EI-DB-DL-REC-RNI-INT-FFConMONTHLYonLASTSUNDAY-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-LESS-PER-Newcreateloan1.xlsx|
	 Then I navigate to scheduler job & execute "Periodic Accrual Transactions"
 	 Then I verified the following Tabs details successfully 
	    |4225-RBI-EI-DB-DL-REC-RNI-INT-FFConMONTHLYonLASTSUNDAY-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-LESS-PER-Newcreateloan1.xlsx|Summary|Repayment Schedule|Transactions|
	 Then I make repayment and verified the following tabs
    	|4225-RBI-EI-DB-DL-REC-RNI-INT-FFConMONTHLYonLASTSUNDAY-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-LESS-PER-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
	 And I Navigate to Accounting web page
 	 And I search with transaction id & verified the accounting entries
    	|4225-RBI-EI-DB-DL-REC-RNI-INT-FFConMONTHLYonLASTSUNDAY-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-LESS-PER-Makerepayment1.xlsx|Acc_Disbursement|Acc_Repayment|Acc_Periodic|

@4226-RBI-EI-DB-DL-REC-RNI-FEE+INT-FFConMONTHLYonLASTSUNDAY-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-LESS-PER
Scenario:4226-RBI-EI-DB-DL-REC-RNI-FEE+INT-FFConMONTHLYonLASTSUNDAY-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-LESS-PER
     Given I setup the group
	 When I entered the values into group from "Input" sheet
	  	|4226-RBI-EI-DB-DL-REC-RNI-FEE+INT-FFConMONTHLYonLASTSUNDAY-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-LESS-PER-Newcreateloan1.xlsx|		  								  				  				  			
	 Then I entered the values into client from "Input" sheet
	 	|Createclient.xlsx|	 				  								  				  				  			
	 When I set up the new create loan from "NewLoanInput" sheet
	  	|4226-RBI-EI-DB-DL-REC-RNI-FEE+INT-FFConMONTHLYonLASTSUNDAY-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-LESS-PER-Newcreateloan1.xlsx|
	 Then I navigate to scheduler job & execute "Periodic Accrual Transactions"
 	 Then I verified the following Tabs details successfully 
	    |4226-RBI-EI-DB-DL-REC-RNI-FEE+INT-FFConMONTHLYonLASTSUNDAY-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-LESS-PER-Newcreateloan1.xlsx|Summary|Repayment Schedule|Transactions|
	 Then I make repayment and verified the following tabs
    	|4226-RBI-EI-DB-DL-REC-RNI-FEE+INT-FFConMONTHLYonLASTSUNDAY-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-LESS-PER-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
	 And I Navigate to Accounting web page
 	 And I search with transaction id & verified the accounting entries
    	|4226-RBI-EI-DB-DL-REC-RNI-FEE+INT-FFConMONTHLYonLASTSUNDAY-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-LESS-PER-Makerepayment1.xlsx|Acc_Disbursement|

@4227-RBI-EI-DB-SAR-REC-CTRFD-RNI-FEE-FFC-SAR-FFROP-DAILY-FIFR-1-MD-TR-1-ONTIME-PER
Scenario:4227-RBI-EI-DB-SAR-REC-CTRFD-RNI-FEE-FFC-SAR-FFROP-DAILY-FIFR-1-MD-TR-1-ONTIME-PER
     Given I setup the product loan "Setup"
		| Productloannavigation.xlsx |
	 Then I entered the values into product loan from "ProductLoanInput" Sheet
		|4227-RBI-EI-DB-SAR-REC-CTRFD-RNI-FEE-FFC-SAR-FFROP-DAILY-FIFR-1-MD-TR-1-ONTIME-PER-Loanproduct.xlsx|
     Given I setup the group
	 When I entered the values into group from "Input" sheet
	  	|4227-RBI-EI-DB-SAR-REC-CTRFD-RNI-FEE-FFC-SAR-FFROP-DAILY-FIFR-1-MD-TR-1-ONTIME-PER-Newcreateloan1.xlsx|		  								  				  				  			
	 Then I entered the values into client from "Input" sheet
	 	|Createclient.xlsx|	 				  								  				  				  			
	 When I set up the new create loan from "NewLoanInput" sheet
	  	|4227-RBI-EI-DB-SAR-REC-CTRFD-RNI-FEE-FFC-SAR-FFROP-DAILY-FIFR-1-MD-TR-1-ONTIME-PER-Newcreateloan1.xlsx|
	 Then I navigate to scheduler job & execute "Periodic Accrual Transactions"
 	 Then I verified the following Tabs details successfully 
	    |4227-RBI-EI-DB-SAR-REC-CTRFD-RNI-FEE-FFC-SAR-FFROP-DAILY-FIFR-1-MD-TR-1-ONTIME-PER-Newcreateloan1.xlsx|Summary|Repayment Schedule|Transactions|
	 Then I make repayment and verified the following tabs
    	|4227-RBI-EI-DB-SAR-REC-CTRFD-RNI-FEE-FFC-SAR-FFROP-DAILY-FIFR-1-MD-TR-1-ONTIME-PER-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
	 And I Navigate to Accounting web page
 	 And I search with transaction id & verified the accounting entries
    	|4227-RBI-EI-DB-SAR-REC-CTRFD-RNI-FEE-FFC-SAR-FFROP-DAILY-FIFR-1-MD-TR-1-ONTIME-PER-Makerepayment1.xlsx|Acc_Disbursement|Acc_Repayment|Acc_Periodic|
	 
@4228-RBI-EI-DB-SAR-REC-CTRFD-RNI-INT-FFC-SAR-FFROP-DAILY-FIFR-1-MD-TR-1-ONTIME-PER
Scenario:4228-RBI-EI-DB-SAR-REC-CTRFD-RNI-INT-FFC-SAR-FFROP-DAILY-FIFR-1-MD-TR-1-ONTIME-PER
     Given I setup the product loan "Setup"
		| Productloannavigation.xlsx |
	 Then I entered the values into product loan from "ProductLoanInput" Sheet
		|4228-RBI-EI-DB-SAR-REC-CTRFD-RNI-INT-FFC-SAR-FFROP-DAILY-FIFR-1-MD-TR-1-ONTIME-PER-Loanproduct.xlsx|
     Given I setup the group
	 When I entered the values into group from "Input" sheet
	  	|4228-RBI-EI-DB-SAR-REC-CTRFD-RNI-INT-FFC-SAR-FFROP-DAILY-FIFR-1-MD-TR-1-ONTIME-PER-Newcreateloan1.xlsx|		  								  				  				  			
	 Then I entered the values into client from "Input" sheet
	 	|Createclient.xlsx|	 				  								  				  				  			
	 When I set up the new create loan from "NewLoanInput" sheet
	  	|4228-RBI-EI-DB-SAR-REC-CTRFD-RNI-INT-FFC-SAR-FFROP-DAILY-FIFR-1-MD-TR-1-ONTIME-PER-Newcreateloan1.xlsx|
	 Then I navigate to scheduler job & execute "Periodic Accrual Transactions"
 	 Then I verified the following Tabs details successfully 
	    |4228-RBI-EI-DB-SAR-REC-CTRFD-RNI-INT-FFC-SAR-FFROP-DAILY-FIFR-1-MD-TR-1-ONTIME-PER-Newcreateloan1.xlsx|Summary|Repayment Schedule|Transactions|
	 Then I make repayment and verified the following tabs
    	|4228-RBI-EI-DB-SAR-REC-CTRFD-RNI-INT-FFC-SAR-FFROP-DAILY-FIFR-1-MD-TR-1-ONTIME-PER-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
	 And I Navigate to Accounting web page
 	 And I search with transaction id & verified the accounting entries
    	|4228-RBI-EI-DB-SAR-REC-CTRFD-RNI-INT-FFC-SAR-FFROP-DAILY-FIFR-1-MD-TR-1-ONTIME-PER-Makerepayment1.xlsx|Acc_Disbursement|Acc_Repayment|Acc_Periodic|

@4229-RBI-EI-DB-SAR-REC-CTRFD-RNI-FEE+INTEREST-FFC-SAR-FFROP-DAILY-FIFR-1-MD-TR-1-ONTIME-PER
Scenario:4229-RBI-EI-DB-SAR-REC-CTRFD-RNI-FEE+INTEREST-FFC-SAR-FFROP-DAILY-FIFR-1-MD-TR-1-ONTIME-PER
     Given I setup the product loan "Setup"
		| Productloannavigation.xlsx |
	 Then I entered the values into product loan from "ProductLoanInput" Sheet
		|4229-RBI-EI-DB-SAR-REC-CTRFD-RNI-FEE+INTEREST-FFC-SAR-FFROP-DAILY-FIFR-1-MD-TR-1-ONTIME-PER-Loanproduct.xlsx|
     Given I setup the group
	 When I entered the values into group from "Input" sheet
	  	|4229-RBI-EI-DB-SAR-REC-CTRFD-RNI-FEE+INTEREST-FFC-SAR-FFROP-DAILY-FIFR-1-MD-TR-1-ONTIME-PER-Newcreateloan1.xlsx|		  								  				  				  			
	 Then I entered the values into client from "Input" sheet
	 	|Createclient.xlsx|	 				  								  				  				  			
	 When I set up the new create loan from "NewLoanInput" sheet
	  	|4229-RBI-EI-DB-SAR-REC-CTRFD-RNI-FEE+INTEREST-FFC-SAR-FFROP-DAILY-FIFR-1-MD-TR-1-ONTIME-PER-Newcreateloan1.xlsx|
	 Then I navigate to scheduler job & execute "Periodic Accrual Transactions"
 	 Then I verified the following Tabs details successfully 
	    |4229-RBI-EI-DB-SAR-REC-CTRFD-RNI-FEE+INTEREST-FFC-SAR-FFROP-DAILY-FIFR-1-MD-TR-1-ONTIME-PER-Newcreateloan1.xlsx|Summary|Repayment Schedule|Transactions|
	 Then I make repayment and verified the following tabs
    	|4229-RBI-EI-DB-SAR-REC-CTRFD-RNI-FEE+INTEREST-FFC-SAR-FFROP-DAILY-FIFR-1-MD-TR-1-ONTIME-PER-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
	 And I Navigate to Accounting web page
 	 And I search with transaction id & verified the accounting entries
    	|4229-RBI-EI-DB-SAR-REC-CTRFD-RNI-FEE+INTEREST-FFC-SAR-FFROP-DAILY-FIFR-1-MD-TR-1-ONTIME-PER-Makerepayment1.xlsx|Acc_Disbursement|Acc_Repayment|Acc_Periodic|

@4230-RBI-EI-DB-SAR-REC-CTRFD-RNI-FEE-FFC-SAR-FFROP-DAILY-FIFR-1-MD-TR-1-MORE-PER
Scenario:4230-RBI-EI-DB-SAR-REC-CTRFD-RNI-FEE-FFC-SAR-FFROP-DAILY-FIFR-1-MD-TR-1-MORE-PER
        Given I setup the group
	 When I entered the values into group from "Input" sheet
	  	|4230-RBI-EI-DB-SAR-REC-CTRFD-RNI-FEE-FFC-SAR-FFROP-DAILY-FIFR-1-MD-TR-1-MORE-PER-Newcreateloan1.xlsx|		  								  				  				  			
	 Then I entered the values into client from "Input" sheet
	 	|Createclient.xlsx|	 				  								  				  				  			
	 When I set up the new create loan from "NewLoanInput" sheet
	  	|4230-RBI-EI-DB-SAR-REC-CTRFD-RNI-FEE-FFC-SAR-FFROP-DAILY-FIFR-1-MD-TR-1-MORE-PER-Newcreateloan1.xlsx|
	 Then I navigate to scheduler job & execute "Periodic Accrual Transactions"
 	 Then I verified the following Tabs details successfully 
	    |4230-RBI-EI-DB-SAR-REC-CTRFD-RNI-FEE-FFC-SAR-FFROP-DAILY-FIFR-1-MD-TR-1-MORE-PER-Newcreateloan1.xlsx|Summary|Repayment Schedule|Transactions|
	 Then I make repayment and verified the following tabs
    	|4230-RBI-EI-DB-SAR-REC-CTRFD-RNI-FEE-FFC-SAR-FFROP-DAILY-FIFR-1-MD-TR-1-MORE-PER-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
	 And I Navigate to Accounting web page
 	 And I search with transaction id & verified the accounting entries
    	|4230-RBI-EI-DB-SAR-REC-CTRFD-RNI-FEE-FFC-SAR-FFROP-DAILY-FIFR-1-MD-TR-1-MORE-PER-Makerepayment1.xlsx|Acc_Disbursement|Acc_Repayment|Acc_Periodic|

@4231-RBI-EI-DB-SAR-REC-CTRFD-RNI-INT-FFC-SAR-FFROP-DAILY-FIFR-1-MD-TR-1-MORE-PER
Scenario:4231-RBI-EI-DB-SAR-REC-CTRFD-RNI-INT-FFC-SAR-FFROP-DAILY-FIFR-1-MD-TR-1-MORE-PER
     Given I setup the group
	 When I entered the values into group from "Input" sheet
	  	|4231-RBI-EI-DB-SAR-REC-CTRFD-RNI-INT-FFC-SAR-FFROP-DAILY-FIFR-1-MD-TR-1-MORE-PER-Newcreateloan1.xlsx|		  								  				  				  			
	 Then I entered the values into client from "Input" sheet
	 	|Createclient.xlsx|	 				  								  				  				  			
	 When I set up the new create loan from "NewLoanInput" sheet
	  	|4231-RBI-EI-DB-SAR-REC-CTRFD-RNI-INT-FFC-SAR-FFROP-DAILY-FIFR-1-MD-TR-1-MORE-PER-Newcreateloan1.xlsx|
	 Then I navigate to scheduler job & execute "Periodic Accrual Transactions"
 	 Then I verified the following Tabs details successfully 
	    |4231-RBI-EI-DB-SAR-REC-CTRFD-RNI-INT-FFC-SAR-FFROP-DAILY-FIFR-1-MD-TR-1-MORE-PER-Newcreateloan1.xlsx|Summary|Repayment Schedule|Transactions|
	 Then I make repayment and verified the following tabs
    	|4231-RBI-EI-DB-SAR-REC-CTRFD-RNI-INT-FFC-SAR-FFROP-DAILY-FIFR-1-MD-TR-1-MORE-PER-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
	 And I Navigate to Accounting web page
 	 And I search with transaction id & verified the accounting entries
    	|4231-RBI-EI-DB-SAR-REC-CTRFD-RNI-INT-FFC-SAR-FFROP-DAILY-FIFR-1-MD-TR-1-MORE-PER-Makerepayment1.xlsx|Acc_Disbursement|Acc_Repayment|Acc_Periodic|

@4232-RBI-EI-DB-SAR-REC-CTRFD-RNI-FEE+INTEREST-FFC-SAR-FFROP-DAILY-FIFR-1-MD-TR-1-MORE-PER
Scenario:4232-RBI-EI-DB-SAR-REC-CTRFD-RNI-FEE+INTEREST-FFC-SAR-FFROP-DAILY-FIFR-1-MD-TR-1-MORE-PER
          Given I setup the group
	 When I entered the values into group from "Input" sheet
	  	|4232-RBI-EI-DB-SAR-REC-CTRFD-RNI-FEE+INTEREST-FFC-SAR-FFROP-DAILY-FIFR-1-MD-TR-1-MORE-PER-Newcreateloan1.xlsx|		  								  				  				  			
	 Then I entered the values into client from "Input" sheet
	 	|Createclient.xlsx|	 				  								  				  				  			
	 When I set up the new create loan from "NewLoanInput" sheet
	  	|4232-RBI-EI-DB-SAR-REC-CTRFD-RNI-FEE+INTEREST-FFC-SAR-FFROP-DAILY-FIFR-1-MD-TR-1-MORE-PER-Newcreateloan1.xlsx|
	 Then I navigate to scheduler job & execute "Periodic Accrual Transactions"
 	 Then I verified the following Tabs details successfully 
	    |4232-RBI-EI-DB-SAR-REC-CTRFD-RNI-FEE+INTEREST-FFC-SAR-FFROP-DAILY-FIFR-1-MD-TR-1-MORE-PER-Newcreateloan1.xlsx|Summary|Repayment Schedule|Transactions|
	 Then I make repayment and verified the following tabs
    	|4232-RBI-EI-DB-SAR-REC-CTRFD-RNI-FEE+INTEREST-FFC-SAR-FFROP-DAILY-FIFR-1-MD-TR-1-MORE-PER-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
	 And I Navigate to Accounting web page
 	 And I search with transaction id & verified the accounting entries
    	|4232-RBI-EI-DB-SAR-REC-CTRFD-RNI-FEE+INTEREST-FFC-SAR-FFROP-DAILY-FIFR-1-MD-TR-1-MORE-PER-Makerepayment1.xlsx|Acc_Disbursement|Acc_Repayment|Acc_Periodic|

@4233-RBI-EI-DB-SAR-REC-CTRFD-RNI-FEE-FFC-SAR-FFROP-DAILY-FIFR-1-MD-TR-1-LESS-PER
Scenario:4233-RBI-EI-DB-SAR-REC-CTRFD-RNI-FEE-FFC-SAR-FFROP-DAILY-FIFR-1-MD-TR-1-LESS-PER
          Given I setup the group
	 When I entered the values into group from "Input" sheet
	  	|4233-RBI-EI-DB-SAR-REC-CTRFD-RNI-FEE-FFC-SAR-FFROP-DAILY-FIFR-1-MD-TR-1-LESS-PER-Newcreateloan1.xlsx|		  								  				  				  			
	 Then I entered the values into client from "Input" sheet
	 	|Createclient.xlsx|	 				  								  				  				  			
	 When I set up the new create loan from "NewLoanInput" sheet
	  	|4233-RBI-EI-DB-SAR-REC-CTRFD-RNI-FEE-FFC-SAR-FFROP-DAILY-FIFR-1-MD-TR-1-LESS-PER-Newcreateloan1.xlsx|
	 Then I navigate to scheduler job & execute "Periodic Accrual Transactions"
 	 Then I verified the following Tabs details successfully 
	    |4233-RBI-EI-DB-SAR-REC-CTRFD-RNI-FEE-FFC-SAR-FFROP-DAILY-FIFR-1-MD-TR-1-LESS-PER-Newcreateloan1.xlsx|Summary|Repayment Schedule|Transactions|
	 Then I make repayment and verified the following tabs
    	|4233-RBI-EI-DB-SAR-REC-CTRFD-RNI-FEE-FFC-SAR-FFROP-DAILY-FIFR-1-MD-TR-1-LESS-PER-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
	 And I Navigate to Accounting web page
 	 And I search with transaction id & verified the accounting entries
    	|4233-RBI-EI-DB-SAR-REC-CTRFD-RNI-FEE-FFC-SAR-FFROP-DAILY-FIFR-1-MD-TR-1-LESS-PER-Makerepayment1.xlsx|Acc_Disbursement|Acc_Repayment|Acc_Periodic|

@4234-RBI-EI-DB-SAR-REC-CTRFD-RNI-INT-FFC-SAR-FFROP-DAILY-FIFR-1-MD-TR-1-LESS-PER
Scenario:4234-RBI-EI-DB-SAR-REC-CTRFD-RNI-INT-FFC-SAR-FFROP-DAILY-FIFR-1-MD-TR-1-LESS-PER
          Given I setup the group
	 When I entered the values into group from "Input" sheet
	  	|4234-RBI-EI-DB-SAR-REC-CTRFD-RNI-INT-FFC-SAR-FFROP-DAILY-FIFR-1-MD-TR-1-LESS-PER-Newcreateloan1.xlsx|		  								  				  				  			
	 Then I entered the values into client from "Input" sheet
	 	|Createclient.xlsx|	 				  								  				  				  			
	 When I set up the new create loan from "NewLoanInput" sheet
	  	|4234-RBI-EI-DB-SAR-REC-CTRFD-RNI-INT-FFC-SAR-FFROP-DAILY-FIFR-1-MD-TR-1-LESS-PER-Newcreateloan1.xlsx|
	 Then I navigate to scheduler job & execute "Periodic Accrual Transactions"
 	 Then I verified the following Tabs details successfully 
	    |4234-RBI-EI-DB-SAR-REC-CTRFD-RNI-INT-FFC-SAR-FFROP-DAILY-FIFR-1-MD-TR-1-LESS-PER-Newcreateloan1.xlsx|Summary|Repayment Schedule|Transactions|
	 Then I make repayment and verified the following tabs
    	|4234-RBI-EI-DB-SAR-REC-CTRFD-RNI-INT-FFC-SAR-FFROP-DAILY-FIFR-1-MD-TR-1-LESS-PER-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
	 And I Navigate to Accounting web page
 	 And I search with transaction id & verified the accounting entries
    	|4234-RBI-EI-DB-SAR-REC-CTRFD-RNI-INT-FFC-SAR-FFROP-DAILY-FIFR-1-MD-TR-1-LESS-PER-Makerepayment1.xlsx|Acc_Disbursement|Acc_Repayment|Acc_Periodic|

@4235-RBI-EI-DB-SAR-REC-CTRFD-RNI-FEE+INTEREST-FFC-SAR-FFROP-DAILY-FIFR-1-MD-TR-1-LESS-PER
Scenario:4235-RBI-EI-DB-SAR-REC-CTRFD-RNI-FEE+INTEREST-FFC-SAR-FFROP-DAILY-FIFR-1-MD-TR-1-LESS-PER
     Given I setup the group
	 When I entered the values into group from "Input" sheet
	  	|4235-RBI-EI-DB-SAR-REC-CTRFD-RNI-FEE+INTEREST-FFC-SAR-FFROP-DAILY-FIFR-1-MD-TR-1-LESS-PER-Newcreateloan1.xlsx|		  								  				  				  			
	 Then I entered the values into client from "Input" sheet
	 	|Createclient.xlsx|	 				  								  				  				  			
	 When I set up the new create loan from "NewLoanInput" sheet
	  	|4235-RBI-EI-DB-SAR-REC-CTRFD-RNI-FEE+INTEREST-FFC-SAR-FFROP-DAILY-FIFR-1-MD-TR-1-LESS-PER-Newcreateloan1.xlsx|
	 Then I navigate to scheduler job & execute "Periodic Accrual Transactions"
 	 Then I verified the following Tabs details successfully 
	    |4235-RBI-EI-DB-SAR-REC-CTRFD-RNI-FEE+INTEREST-FFC-SAR-FFROP-DAILY-FIFR-1-MD-TR-1-LESS-PER-Newcreateloan1.xlsx|Summary|Repayment Schedule|Transactions|
	 Then I make repayment and verified the following tabs
    	|4235-RBI-EI-DB-SAR-REC-CTRFD-RNI-FEE+INTEREST-FFC-SAR-FFROP-DAILY-FIFR-1-MD-TR-1-LESS-PER-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
	 And I Navigate to Accounting web page
 	 And I search with transaction id & verified the accounting entries
    	|4235-RBI-EI-DB-SAR-REC-CTRFD-RNI-FEE+INTEREST-FFC-SAR-FFROP-DAILY-FIFR-1-MD-TR-1-LESS-PER-Makerepayment1.xlsx|Acc_Disbursement|Acc_Repayment|Acc_Periodic|

@4236-RBI-EI-DB-SAR-REC-RNI-FEE-FFConMONTHLYonDAY25-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-ONTIME-PER
Scenario:4236-RBI-EI-DB-SAR-REC-RNI-FEE-FFConMONTHLYonDAY25-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-ONTIME-PER
     Given I setup the product loan "Setup"
		| Productloannavigation.xlsx |
	 Then I entered the values into product loan from "ProductLoanInput" Sheet
		|4236-RBI-EI-DB-SAR-REC-RNI-FEE-FFConMONTHLYonDAY25-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-ONTIME-PER-Loanproduct.xlsx|
     Given I setup the group
	 When I entered the values into group from "Input" sheet
	  	|4236-RBI-EI-DB-SAR-REC-RNI-FEE-FFConMONTHLYonDAY25-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-ONTIME-PER-Newcreateloan1.xlsx|		  								  				  				  			
	 Then I entered the values into client from "Input" sheet
	 	|Createclient.xlsx|	 				  								  				  				  			
	 When I set up the new create loan from "NewLoanInput" sheet
	  	|4236-RBI-EI-DB-SAR-REC-RNI-FEE-FFConMONTHLYonDAY25-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-ONTIME-PER-Newcreateloan1.xlsx|
	 Then I navigate to scheduler job & execute "Periodic Accrual Transactions"
 	 Then I verified the following Tabs details successfully 
	    |4236-RBI-EI-DB-SAR-REC-RNI-FEE-FFConMONTHLYonDAY25-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-ONTIME-PER-Newcreateloan1.xlsx|Summary|Repayment Schedule|Transactions|
	 Then I make repayment and verified the following tabs
    	|4236-RBI-EI-DB-SAR-REC-RNI-FEE-FFConMONTHLYonDAY25-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-ONTIME-PER-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
	 And I Navigate to Accounting web page
 	 And I search with transaction id & verified the accounting entries
    	|4236-RBI-EI-DB-SAR-REC-RNI-FEE-FFConMONTHLYonDAY25-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-ONTIME-PER-Makerepayment1.xlsx|Acc_Disbursement|Acc_Repayment|Acc_Periodic|

@4237-RBI-EI-DB-SAR-REC-RNI-INT-FFConMONTHLYonDAY25-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-ONTIME-PER
Scenario:4237-RBI-EI-DB-SAR-REC-RNI-INT-FFConMONTHLYonDAY25-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-ONTIME-PER
     
     Given I setup the product loan "Setup"
		| Productloannavigation.xlsx |
	 Then I entered the values into product loan from "ProductLoanInput" Sheet
		|4237-RBI-EI-DB-SAR-REC-RNI-INT-FFConMONTHLYonDAY25-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-ONTIME-PER-Loanproduct.xlsx|
     Given I setup the group
	 When I entered the values into group from "Input" sheet
	  	|4237-RBI-EI-DB-SAR-REC-RNI-INT-FFConMONTHLYonDAY25-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-ONTIME-PER-Newcreateloan1.xlsx|		  								  				  				  			
	 Then I entered the values into client from "Input" sheet
	 	|Createclient.xlsx|	 				  								  				  				  			
	 When I set up the new create loan from "NewLoanInput" sheet
	  	|4237-RBI-EI-DB-SAR-REC-RNI-INT-FFConMONTHLYonDAY25-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-ONTIME-PER-Newcreateloan1.xlsx|
	 Then I navigate to scheduler job & execute "Periodic Accrual Transactions"
 	 Then I verified the following Tabs details successfully 
	    |4237-RBI-EI-DB-SAR-REC-RNI-INT-FFConMONTHLYonDAY25-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-ONTIME-PER-Newcreateloan1.xlsx|Summary|Repayment Schedule|Transactions|
	 Then I make repayment and verified the following tabs
    	|4237-RBI-EI-DB-SAR-REC-RNI-INT-FFConMONTHLYonDAY25-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-ONTIME-PER-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
	 And I Navigate to Accounting web page
 	 And I search with transaction id & verified the accounting entries
    	|4237-RBI-EI-DB-SAR-REC-RNI-INT-FFConMONTHLYonDAY25-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-ONTIME-PER-Makerepayment1.xlsx|Acc_Disbursement|Acc_Repayment|Acc_Periodic|

@4238-RBI-EI-DB-SAR-REC-RNI-FEE+INTEREST-FFConMONTHLYonDAY25-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-ONTIME-PER
Scenario:4238-RBI-EI-DB-SAR-REC-RNI-FEE+INTEREST-FFConMONTHLYonDAY25-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-ONTIME-PER
     Given I setup the product loan "Setup"
		| Productloannavigation.xlsx |
	 Then I entered the values into product loan from "ProductLoanInput" Sheet
		|4238-RBI-EI-DB-SAR-REC-RNI-FEE+INTEREST-FFConMONTHLYonDAY25-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-ONTIME-PER-Loanproduct.xlsx|
     Given I setup the group
	 When I entered the values into group from "Input" sheet
	  	|4238-RBI-EI-DB-SAR-REC-RNI-FEE+INTEREST-FFConMONTHLYonDAY25-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-ONTIME-PER-Newcreateloan1.xlsx|		  								  				  				  			
	 Then I entered the values into client from "Input" sheet
	 	|Createclient.xlsx|	 				  								  				  				  			
	 When I set up the new create loan from "NewLoanInput" sheet
	  	|4238-RBI-EI-DB-SAR-REC-RNI-FEE+INTEREST-FFConMONTHLYonDAY25-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-ONTIME-PER-Newcreateloan1.xlsx|
	 Then I navigate to scheduler job & execute "Periodic Accrual Transactions"
 	 Then I verified the following Tabs details successfully 
	    |4238-RBI-EI-DB-SAR-REC-RNI-FEE+INTEREST-FFConMONTHLYonDAY25-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-ONTIME-PER-Newcreateloan1.xlsx|Summary|Repayment Schedule|Transactions|
	 Then I make repayment and verified the following tabs
    	|4238-RBI-EI-DB-SAR-REC-RNI-FEE+INTEREST-FFConMONTHLYonDAY25-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-ONTIME-PER-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
	 And I Navigate to Accounting web page
 	 And I search with transaction id & verified the accounting entries
    	|4238-RBI-EI-DB-SAR-REC-RNI-FEE+INTEREST-FFConMONTHLYonDAY25-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-ONTIME-PER-Makerepayment1.xlsx|Acc_Disbursement|Acc_Repayment|Acc_Periodic|

@4239-RBI-EI-DB-SAR-REC-RNI-FEE-FFConMONTHLYonDAY25-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-MORE-PER
Scenario:4239-RBI-EI-DB-SAR-REC-RNI-FEE-FFConMONTHLYonDAY25-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-MORE-PER
     Given I setup the group
	 When I entered the values into group from "Input" sheet
	  	|4239-RBI-EI-DB-SAR-REC-RNI-FEE-FFConMONTHLYonDAY25-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-MORE-PER-Newcreateloan1.xlsx|		  								  				  				  			
	 Then I entered the values into client from "Input" sheet
	 	|Createclient.xlsx|	 				  								  				  				  			
	 When I set up the new create loan from "NewLoanInput" sheet
	  	|4239-RBI-EI-DB-SAR-REC-RNI-FEE-FFConMONTHLYonDAY25-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-MORE-PER-Newcreateloan1.xlsx|
	 Then I navigate to scheduler job & execute "Periodic Accrual Transactions"
 	 Then I verified the following Tabs details successfully 
	    |4239-RBI-EI-DB-SAR-REC-RNI-FEE-FFConMONTHLYonDAY25-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-MORE-PER-Newcreateloan1.xlsx|Summary|Repayment Schedule|Transactions|
	 Then I make repayment and verified the following tabs
    	|4239-RBI-EI-DB-SAR-REC-RNI-FEE-FFConMONTHLYonDAY25-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-MORE-PER-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
	 And I Navigate to Accounting web page
 	 And I search with transaction id & verified the accounting entries
    	|4239-RBI-EI-DB-SAR-REC-RNI-FEE-FFConMONTHLYonDAY25-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-MORE-PER-Makerepayment1.xlsx|Acc_Disbursement|Acc_Repayment|Acc_Periodic|

@4240-RBI-EI-DB-SAR-REC-RNI-INT-FFConMONTHLYonDAY25-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-MORE-PER
Scenario:4240-RBI-EI-DB-SAR-REC-RNI-INT-FFConMONTHLYonDAY25-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-MORE-PER
          Given I setup the group
	 When I entered the values into group from "Input" sheet
	  	|4240-RBI-EI-DB-SAR-REC-RNI-INT-FFConMONTHLYonDAY25-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-MORE-PER-Newcreateloan1.xlsx|		  								  				  				  			
	 Then I entered the values into client from "Input" sheet
	 	|Createclient.xlsx|	 				  								  				  				  			
	 When I set up the new create loan from "NewLoanInput" sheet
	  	|4240-RBI-EI-DB-SAR-REC-RNI-INT-FFConMONTHLYonDAY25-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-MORE-PER-Newcreateloan1.xlsx|
	 Then I navigate to scheduler job & execute "Periodic Accrual Transactions"
 	 Then I verified the following Tabs details successfully 
	    |4240-RBI-EI-DB-SAR-REC-RNI-INT-FFConMONTHLYonDAY25-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-MORE-PER-Newcreateloan1.xlsx|Summary|Repayment Schedule|Transactions|
	 Then I make repayment and verified the following tabs
    	|4240-RBI-EI-DB-SAR-REC-RNI-INT-FFConMONTHLYonDAY25-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-MORE-PER-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
	 And I Navigate to Accounting web page
 	 And I search with transaction id & verified the accounting entries
    	|4240-RBI-EI-DB-SAR-REC-RNI-INT-FFConMONTHLYonDAY25-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-MORE-PER-Makerepayment1.xlsx|Acc_Disbursement|Acc_Repayment|Acc_Periodic|

@4241-RBI-EI-DB-SAR-REC-RNI-FEE+INTEREST-FFConMONTHLYonDAY25-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-MORE-PER
Scenario:4241-RBI-EI-DB-SAR-REC-RNI-FEE+INTEREST-FFConMONTHLYonDAY25-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-MORE-PER
          Given I setup the group
	 When I entered the values into group from "Input" sheet
	  	|4241-RBI-EI-DB-SAR-REC-RNI-FEE+INTEREST-FFConMONTHLYonDAY25-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-MORE-PER-Newcreateloan1.xlsx|		  								  				  				  			
	 Then I entered the values into client from "Input" sheet
	 	|Createclient.xlsx|	 				  								  				  				  			
	 When I set up the new create loan from "NewLoanInput" sheet
	  	|4241-RBI-EI-DB-SAR-REC-RNI-FEE+INTEREST-FFConMONTHLYonDAY25-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-MORE-PER-Newcreateloan1.xlsx|
	 Then I navigate to scheduler job & execute "Periodic Accrual Transactions"
 	 Then I verified the following Tabs details successfully 
	    |4241-RBI-EI-DB-SAR-REC-RNI-FEE+INTEREST-FFConMONTHLYonDAY25-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-MORE-PER-Newcreateloan1.xlsx|Summary|Repayment Schedule|Transactions|
	 Then I make repayment and verified the following tabs
    	|4241-RBI-EI-DB-SAR-REC-RNI-FEE+INTEREST-FFConMONTHLYonDAY25-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-MORE-PER-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
	 And I Navigate to Accounting web page
 	 And I search with transaction id & verified the accounting entries
    	|4241-RBI-EI-DB-SAR-REC-RNI-FEE+INTEREST-FFConMONTHLYonDAY25-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-MORE-PER-Makerepayment1.xlsx|Acc_Disbursement|Acc_Repayment|Acc_Periodic|

@4242-RBI-EI-DB-SAR-REC-RNI-FEE-FFConMONTHLYonDAY25-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-LESS-PER
Scenario:4242-RBI-EI-DB-SAR-REC-RNI-FEE-FFConMONTHLYonDAY25-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-LESS-PER
          Given I setup the group
	 When I entered the values into group from "Input" sheet
	  	|4242-RBI-EI-DB-SAR-REC-RNI-FEE-FFConMONTHLYonDAY25-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-LESS-PER-Newcreateloan1.xlsx|		  								  				  				  			
	 Then I entered the values into client from "Input" sheet
	 	|Createclient.xlsx|	 				  								  				  				  			
	 When I set up the new create loan from "NewLoanInput" sheet
	  	|4242-RBI-EI-DB-SAR-REC-RNI-FEE-FFConMONTHLYonDAY25-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-LESS-PER-Newcreateloan1.xlsx|
	 Then I navigate to scheduler job & execute "Periodic Accrual Transactions"
 	 Then I verified the following Tabs details successfully 
	    |4242-RBI-EI-DB-SAR-REC-RNI-FEE-FFConMONTHLYonDAY25-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-LESS-PER-Newcreateloan1.xlsx|Summary|Repayment Schedule|Transactions|
	 Then I make repayment and verified the following tabs
    	|4242-RBI-EI-DB-SAR-REC-RNI-FEE-FFConMONTHLYonDAY25-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-LESS-PER-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
	 And I Navigate to Accounting web page
 	 And I search with transaction id & verified the accounting entries
    	|4242-RBI-EI-DB-SAR-REC-RNI-FEE-FFConMONTHLYonDAY25-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-LESS-PER-Makerepayment1.xlsx|Acc_Disbursement|Acc_Repayment|Acc_Periodic|

@4243-RBI-EI-DB-SAR-REC-RNI-INT-FFConMONTHLYonDAY25-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-LESS-PER
Scenario:4243-RBI-EI-DB-SAR-REC-RNI-INT-FFConMONTHLYonDAY25-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-LESS-PER
          Given I setup the group
	 When I entered the values into group from "Input" sheet
	  	|4243-RBI-EI-DB-SAR-REC-RNI-INT-FFConMONTHLYonDAY25-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-LESS-PER-Newcreateloan1.xlsx|		  								  				  				  			
	 Then I entered the values into client from "Input" sheet
	 	|Createclient.xlsx|	 				  								  				  				  			
	 When I set up the new create loan from "NewLoanInput" sheet
	  	|4243-RBI-EI-DB-SAR-REC-RNI-INT-FFConMONTHLYonDAY25-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-LESS-PER-Newcreateloan1.xlsx|
	 Then I navigate to scheduler job & execute "Periodic Accrual Transactions"
 	 Then I verified the following Tabs details successfully 
	    |4243-RBI-EI-DB-SAR-REC-RNI-INT-FFConMONTHLYonDAY25-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-LESS-PER-Newcreateloan1.xlsx|Summary|Repayment Schedule|Transactions|
	 Then I make repayment and verified the following tabs
    	|4243-RBI-EI-DB-SAR-REC-RNI-INT-FFConMONTHLYonDAY25-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-LESS-PER-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
	 And I Navigate to Accounting web page
 	 And I search with transaction id & verified the accounting entries
    	|4243-RBI-EI-DB-SAR-REC-RNI-INT-FFConMONTHLYonDAY25-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-LESS-PER-Makerepayment1.xlsx|Acc_Disbursement|Acc_Repayment|Acc_Periodic|

@4244-RBI-EI-DB-SAR-REC-RNI-FEE+INTEREST-FFConMONTHLYonDAY25-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-LESS-PER
Scenario:4244-RBI-EI-DB-SAR-REC-RNI-FEE+INTEREST-FFConMONTHLYonDAY25-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-LESS-PER
          Given I setup the group
	 When I entered the values into group from "Input" sheet
	  	|4244-RBI-EI-DB-SAR-REC-RNI-FEE+INTEREST-FFConMONTHLYonDAY25-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-LESS-PER-Newcreateloan1.xlsx|		  								  				  				  			
	 Then I entered the values into client from "Input" sheet
	 	|Createclient.xlsx|	 				  								  				  				  			
	 When I set up the new create loan from "NewLoanInput" sheet
	  	|4244-RBI-EI-DB-SAR-REC-RNI-FEE+INTEREST-FFConMONTHLYonDAY25-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-LESS-PER-Newcreateloan1.xlsx|
	 Then I navigate to scheduler job & execute "Periodic Accrual Transactions"
 	 Then I verified the following Tabs details successfully 
	    |4244-RBI-EI-DB-SAR-REC-RNI-FEE+INTEREST-FFConMONTHLYonDAY25-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-LESS-PER-Newcreateloan1.xlsx|Summary|Repayment Schedule|Transactions|
	 Then I make repayment and verified the following tabs
    	|4244-RBI-EI-DB-SAR-REC-RNI-FEE+INTEREST-FFConMONTHLYonDAY25-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-LESS-PER-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
	 And I Navigate to Accounting web page
 	 And I search with transaction id & verified the accounting entries
    	|4244-RBI-EI-DB-SAR-REC-RNI-FEE+INTEREST-FFConMONTHLYonDAY25-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-LESS-PER-Makerepayment1.xlsx|Acc_Disbursement|Acc_Repayment|Acc_Periodic|

@4245-RBI-EI-DB-SAR-REC-RNI-FEE-FFConMONTHLYonLASTSUNDAY-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-ONTIME-PER
Scenario:4245-RBI-EI-DB-SAR-REC-RNI-FEE-FFConMONTHLYonLASTSUNDAY-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-ONTIME-PER
     Given I setup the product loan "Setup"
		| Productloannavigation.xlsx |
	 Then I entered the values into product loan from "ProductLoanInput" Sheet
		|4245-RBI-EI-DB-SAR-REC-RNI-FEE-FFConMONTHLYonLASTSUNDAY-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-ONTIME-PER-Loanproduct.xlsx|
     Given I setup the group
	 When I entered the values into group from "Input" sheet
	  	|4245-RBI-EI-DB-SAR-REC-RNI-FEE-FFConMONTHLYonLASTSUNDAY-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-ONTIME-PER-Newcreateloan1.xlsx|		  								  				  				  			
	 Then I entered the values into client from "Input" sheet
	 	|Createclient.xlsx|	 				  								  				  				  			
	 When I set up the new create loan from "NewLoanInput" sheet
	  	|4245-RBI-EI-DB-SAR-REC-RNI-FEE-FFConMONTHLYonLASTSUNDAY-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-ONTIME-PER-Newcreateloan1.xlsx|
	 Then I navigate to scheduler job & execute "Periodic Accrual Transactions"
 	 Then I verified the following Tabs details successfully 
	    |4245-RBI-EI-DB-SAR-REC-RNI-FEE-FFConMONTHLYonLASTSUNDAY-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-ONTIME-PER-Newcreateloan1.xlsx|Summary|Repayment Schedule|Transactions|
	 Then I make repayment and verified the following tabs
    	|4245-RBI-EI-DB-SAR-REC-RNI-FEE-FFConMONTHLYonLASTSUNDAY-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-ONTIME-PER-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
	 And I Navigate to Accounting web page
 	 And I search with transaction id & verified the accounting entries
    	|4245-RBI-EI-DB-SAR-REC-RNI-FEE-FFConMONTHLYonLASTSUNDAY-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-ONTIME-PER-Makerepayment1.xlsx|Acc_Disbursement|Acc_Repayment|Acc_Periodic|

@4246-RBI-EI-DB-SAR-REC-RNI-INT-FFConMONTHLYonLASTSUNDAY-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-ONTIME-PER
Scenario:4246-RBI-EI-DB-SAR-REC-RNI-INT-FFConMONTHLYonLASTSUNDAY-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-ONTIME-PER
     Given I setup the product loan "Setup"
		| Productloannavigation.xlsx |
	 Then I entered the values into product loan from "ProductLoanInput" Sheet
		|4246-RBI-EI-DB-SAR-REC-RNI-INT-FFConMONTHLYonLASTSUNDAY-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-ONTIME-PER-Loanproduct.xlsx|
     Given I setup the group
	 When I entered the values into group from "Input" sheet
	  	|4246-RBI-EI-DB-SAR-REC-RNI-INT-FFConMONTHLYonLASTSUNDAY-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-ONTIME-PER-Newcreateloan1.xlsx|		  								  				  				  			
	 Then I entered the values into client from "Input" sheet
	 	|Createclient.xlsx|	 				  								  				  				  			
	 When I set up the new create loan from "NewLoanInput" sheet
	  	|4246-RBI-EI-DB-SAR-REC-RNI-INT-FFConMONTHLYonLASTSUNDAY-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-ONTIME-PER-Newcreateloan1.xlsx|
	 Then I navigate to scheduler job & execute "Periodic Accrual Transactions"
 	 Then I verified the following Tabs details successfully 
	    |4246-RBI-EI-DB-SAR-REC-RNI-INT-FFConMONTHLYonLASTSUNDAY-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-ONTIME-PER-Newcreateloan1.xlsx|Summary|Repayment Schedule|Transactions|
	 Then I make repayment and verified the following tabs
    	|4246-RBI-EI-DB-SAR-REC-RNI-INT-FFConMONTHLYonLASTSUNDAY-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-ONTIME-PER-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
	 And I Navigate to Accounting web page
 	 And I search with transaction id & verified the accounting entries
    	|4246-RBI-EI-DB-SAR-REC-RNI-INT-FFConMONTHLYonLASTSUNDAY-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-ONTIME-PER-Makerepayment1.xlsx|Acc_Disbursement|Acc_Repayment|Acc_Periodic|

@4247-RBI-EI-DB-SAR-REC-RNI-FEE+INTEREST-FFConMONTHLYonLASTSUN-FIFC-1-FFROP-DL-FIFR-1-MD-TR-1-ONT-PER
Scenario:4247-RBI-EI-DB-SAR-REC-RNI-FEE+INTEREST-FFConMONTHLYonLASTSUN-FIFC-1-FFROP-DL-FIFR-1-MD-TR-1-ONT-PER
     Given I setup the product loan "Setup"
		| Productloannavigation.xlsx |
	 Then I entered the values into product loan from "ProductLoanInput" Sheet
		|4247-RBI-EI-DB-SAR-REC-RNI-FEE+INTEREST-FFConMONTHLYonLASTSUN-FIFC-1-FFROP-DL-FIFR-1-MD-TR-1-ONT-PER-Loanproduct.xlsx|
     Given I setup the group
	 When I entered the values into group from "Input" sheet
	  	|4247-RBI-EI-DB-SAR-REC-RNI-FEE+INTEREST-FFConMONTHLYonLASTSUN-FIFC-1-FFROP-DL-FIFR-1-MD-TR-1-ONT-PER-Newcreateloan1.xlsx|		  								  				  				  			
	 Then I entered the values into client from "Input" sheet
	 	|Createclient.xlsx|	 				  								  				  				  			
	 When I set up the new create loan from "NewLoanInput" sheet
	  	|4247-RBI-EI-DB-SAR-REC-RNI-FEE+INTEREST-FFConMONTHLYonLASTSUN-FIFC-1-FFROP-DL-FIFR-1-MD-TR-1-ONT-PER-Newcreateloan1.xlsx|
	 Then I navigate to scheduler job & execute "Periodic Accrual Transactions"
 	 Then I verified the following Tabs details successfully 
	    |4247-RBI-EI-DB-SAR-REC-RNI-FEE+INTEREST-FFConMONTHLYonLASTSUN-FIFC-1-FFROP-DL-FIFR-1-MD-TR-1-ONT-PER-Newcreateloan1.xlsx|Summary|Repayment Schedule|Transactions|
	 Then I make repayment and verified the following tabs
    	|4247-RBI-EI-DB-SAR-REC-RNI-FEE+INTEREST-FFConMONTHLYonLASTSUN-FIFC-1-FFROP-DL-FIFR-1-MD-TR-1-ONT-PER-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
	 And I Navigate to Accounting web page
 	 And I search with transaction id & verified the accounting entries
    	|4247-RBI-EI-DB-SAR-REC-RNI-FEE+INTEREST-FFConMONTHLYonLASTSUN-FIFC-1-FFROP-DL-FIFR-1-MD-TR-1-ONT-PER-Makerepayment1.xlsx|Acc_Disbursement|Acc_Repayment|Acc_Periodic|

@4248-RBI-EI-DB-SAR-REC-RNI-FEE-FFConMONTHLYonLASTSUNDAY-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-MORE-PER
Scenario:4248-RBI-EI-DB-SAR-REC-RNI-FEE-FFConMONTHLYonLASTSUNDAY-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-MORE-PER
          Given I setup the group
	 When I entered the values into group from "Input" sheet
	  	|4248-RBI-EI-DB-SAR-REC-RNI-FEE-FFConMONTHLYonLASTSUNDAY-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-MORE-PER-Newcreateloan1.xlsx|		  								  				  				  			
	 Then I entered the values into client from "Input" sheet
	 	|Createclient.xlsx|	 				  								  				  				  			
	 When I set up the new create loan from "NewLoanInput" sheet
	  	|4248-RBI-EI-DB-SAR-REC-RNI-FEE-FFConMONTHLYonLASTSUNDAY-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-MORE-PER-Newcreateloan1.xlsx|
	 Then I navigate to scheduler job & execute "Periodic Accrual Transactions"
 	 Then I verified the following Tabs details successfully 
	    |4248-RBI-EI-DB-SAR-REC-RNI-FEE-FFConMONTHLYonLASTSUNDAY-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-MORE-PER-Newcreateloan1.xlsx|Summary|Repayment Schedule|Transactions|
	 Then I make repayment and verified the following tabs
    	|4248-RBI-EI-DB-SAR-REC-RNI-FEE-FFConMONTHLYonLASTSUNDAY-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-MORE-PER-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
	 And I Navigate to Accounting web page
 	 And I search with transaction id & verified the accounting entries
    	|4248-RBI-EI-DB-SAR-REC-RNI-FEE-FFConMONTHLYonLASTSUNDAY-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-MORE-PER-Makerepayment1.xlsx|Acc_Disbursement|Acc_Repayment|Acc_Periodic|

@4249-RBI-EI-DB-SAR-REC-RNI-INT-FFConMONTHLYonLASTSUNDAY-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-MORE-PER
Scenario:4249-RBI-EI-DB-SAR-REC-RNI-INT-FFConMONTHLYonLASTSUNDAY-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-MORE-PER
          Given I setup the group
	 When I entered the values into group from "Input" sheet
	  	|4249-RBI-EI-DB-SAR-REC-RNI-INT-FFConMONTHLYonLASTSUNDAY-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-MORE-PER-Newcreateloan1.xlsx|		  								  				  				  			
	 Then I entered the values into client from "Input" sheet
	 	|Createclient.xlsx|	 				  								  				  				  			
	 When I set up the new create loan from "NewLoanInput" sheet
	  	|4249-RBI-EI-DB-SAR-REC-RNI-INT-FFConMONTHLYonLASTSUNDAY-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-MORE-PER-Newcreateloan1.xlsx|
	 Then I navigate to scheduler job & execute "Periodic Accrual Transactions"
 	 Then I verified the following Tabs details successfully 
	    |4249-RBI-EI-DB-SAR-REC-RNI-INT-FFConMONTHLYonLASTSUNDAY-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-MORE-PER-Newcreateloan1.xlsx|Summary|Repayment Schedule|Transactions|
	 Then I make repayment and verified the following tabs
    	|4249-RBI-EI-DB-SAR-REC-RNI-INT-FFConMONTHLYonLASTSUNDAY-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-MORE-PER-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
	 And I Navigate to Accounting web page
 	 And I search with transaction id & verified the accounting entries
    	|4249-RBI-EI-DB-SAR-REC-RNI-INT-FFConMONTHLYonLASTSUNDAY-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-MORE-PER-Makerepayment1.xlsx|Acc_Disbursement|Acc_Repayment|Acc_Periodic|

@4250-RBI-EI-DB-SAR-REC-RNI-FEE+INTEREST-FFConMONTHLYonLASTSUN-FIFC-1-FFROP-DL-FIFR-1-MD-TR-1-ONT-PER
Scenario:4250-RBI-EI-DB-SAR-REC-RNI-FEE+INTEREST-FFConMONTHLYonLASTSUN-FIFC-1-FFROP-DL-FIFR-1-MD-TR-1-ONT-PER
          Given I setup the group
	 When I entered the values into group from "Input" sheet
	  	|4250-RBI-EI-DB-SAR-REC-RNI-FEE+INTEREST-FFConMONTHLYonLASTSUN-FIFC-1-FFROP-DL-FIFR-1-MD-TR-1-ONT-PER-Newcreateloan1.xlsx|		  								  				  				  			
	 Then I entered the values into client from "Input" sheet
	 	|Createclient.xlsx|	 				  								  				  				  			
	 When I set up the new create loan from "NewLoanInput" sheet
	  	|4250-RBI-EI-DB-SAR-REC-RNI-FEE+INTEREST-FFConMONTHLYonLASTSUN-FIFC-1-FFROP-DL-FIFR-1-MD-TR-1-ONT-PER-Newcreateloan1.xlsx|
	 Then I navigate to scheduler job & execute "Periodic Accrual Transactions"
 	 Then I verified the following Tabs details successfully 
	    |4250-RBI-EI-DB-SAR-REC-RNI-FEE+INTEREST-FFConMONTHLYonLASTSUN-FIFC-1-FFROP-DL-FIFR-1-MD-TR-1-ONT-PER-Newcreateloan1.xlsx|Summary|Repayment Schedule|Transactions|
	 Then I make repayment and verified the following tabs
    	|4250-RBI-EI-DB-SAR-REC-RNI-FEE+INTEREST-FFConMONTHLYonLASTSUN-FIFC-1-FFROP-DL-FIFR-1-MD-TR-1-ONT-PER-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
	 And I Navigate to Accounting web page
 	 And I search with transaction id & verified the accounting entries
    	|4250-RBI-EI-DB-SAR-REC-RNI-FEE+INTEREST-FFConMONTHLYonLASTSUN-FIFC-1-FFROP-DL-FIFR-1-MD-TR-1-ONT-PER-Makerepayment1.xlsx|Acc_Disbursement|Acc_Repayment|Acc_Periodic|

@4251-RBI-EI-DB-SAR-REC-RNI-FEE-FFConMONTHLYonLASTSUNDAY-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-LESS-PER
Scenario:4251-RBI-EI-DB-SAR-REC-RNI-FEE-FFConMONTHLYonLASTSUNDAY-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-LESS-PER
          Given I setup the group
	 When I entered the values into group from "Input" sheet
	  	|4251-RBI-EI-DB-SAR-REC-RNI-FEE-FFConMONTHLYonLASTSUNDAY-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-LESS-PER-Newcreateloan1.xlsx|		  								  				  				  			
	 Then I entered the values into client from "Input" sheet
	 	|Createclient.xlsx|	 				  								  				  				  			
	 When I set up the new create loan from "NewLoanInput" sheet
	  	|4251-RBI-EI-DB-SAR-REC-RNI-FEE-FFConMONTHLYonLASTSUNDAY-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-LESS-PER-Newcreateloan1.xlsx|
	 Then I navigate to scheduler job & execute "Periodic Accrual Transactions"
 	 Then I verified the following Tabs details successfully 
	    |4251-RBI-EI-DB-SAR-REC-RNI-FEE-FFConMONTHLYonLASTSUNDAY-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-LESS-PER-Newcreateloan1.xlsx|Summary|Repayment Schedule|Transactions|
	 Then I make repayment and verified the following tabs
    	|4251-RBI-EI-DB-SAR-REC-RNI-FEE-FFConMONTHLYonLASTSUNDAY-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-LESS-PER-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
	 And I Navigate to Accounting web page
 	 And I search with transaction id & verified the accounting entries
    	|4251-RBI-EI-DB-SAR-REC-RNI-FEE-FFConMONTHLYonLASTSUNDAY-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-LESS-PER-Makerepayment1.xlsx|Acc_Disbursement|Acc_Repayment|Acc_Periodic|
	
@4252-RBI-EI-DB-SAR-REC-RNI-INT-FFConMONTHLYonLASTSUNDAY-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-LESS-PER
Scenario:4252-RBI-EI-DB-SAR-REC-RNI-INT-FFConMONTHLYonLASTSUNDAY-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-LESS-PER
          Given I setup the group
	 When I entered the values into group from "Input" sheet
	  	|4252-RBI-EI-DB-SAR-REC-RNI-INT-FFConMONTHLYonLASTSUNDAY-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-LESS-PER-Newcreateloan1.xlsx|		  								  				  				  			
	 Then I entered the values into client from "Input" sheet
	 	|Createclient.xlsx|	 				  								  				  				  			
	 When I set up the new create loan from "NewLoanInput" sheet
	  	|4252-RBI-EI-DB-SAR-REC-RNI-INT-FFConMONTHLYonLASTSUNDAY-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-LESS-PER-Newcreateloan1.xlsx|
	 Then I navigate to scheduler job & execute "Periodic Accrual Transactions"
 	 Then I verified the following Tabs details successfully 
	    |4252-RBI-EI-DB-SAR-REC-RNI-INT-FFConMONTHLYonLASTSUNDAY-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-LESS-PER-Newcreateloan1.xlsx|Summary|Repayment Schedule|Transactions|
	 Then I make repayment and verified the following tabs
    	|4252-RBI-EI-DB-SAR-REC-RNI-INT-FFConMONTHLYonLASTSUNDAY-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-LESS-PER-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
	 And I Navigate to Accounting web page
 	 And I search with transaction id & verified the accounting entries
    	|4252-RBI-EI-DB-SAR-REC-RNI-INT-FFConMONTHLYonLASTSUNDAY-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-LESS-PER-Makerepayment1.xlsx|Acc_Disbursement|

@4253-RBI-EI-DB-SAR-REC-RNI-FEE+INTEREST-FFConMONTHLYonLASTSUN-FIFC-1-FFROP-DL-FIFR-1-MD-TR-1-ONT-PER
Scenario:4253-RBI-EI-DB-SAR-REC-RNI-FEE+INTEREST-FFConMONTHLYonLASTSUN-FIFC-1-FFROP-DL-FIFR-1-MD-TR-1-ONT-PER
          Given I setup the group
	 When I entered the values into group from "Input" sheet
	  	|4253-RBI-EI-DB-SAR-REC-RNI-FEE+INTEREST-FFConMONTHLYonLASTSUN-FIFC-1-FFROP-DL-FIFR-1-MD-TR-1-ONT-PER-Newcreateloan1.xlsx|		  								  				  				  			
	 Then I entered the values into client from "Input" sheet
	 	|Createclient.xlsx|	 				  								  				  				  			
	 When I set up the new create loan from "NewLoanInput" sheet
	  	|4253-RBI-EI-DB-SAR-REC-RNI-FEE+INTEREST-FFConMONTHLYonLASTSUN-FIFC-1-FFROP-DL-FIFR-1-MD-TR-1-ONT-PER-Newcreateloan1.xlsx|
	 Then I navigate to scheduler job & execute "Periodic Accrual Transactions"
 	 Then I verified the following Tabs details successfully 
	    |4253-RBI-EI-DB-SAR-REC-RNI-FEE+INTEREST-FFConMONTHLYonLASTSUN-FIFC-1-FFROP-DL-FIFR-1-MD-TR-1-ONT-PER-Newcreateloan1.xlsx|Summary|Repayment Schedule|Transactions|
	 Then I make repayment and verified the following tabs
    	|4253-RBI-EI-DB-SAR-REC-RNI-FEE+INTEREST-FFConMONTHLYonLASTSUN-FIFC-1-FFROP-DL-FIFR-1-MD-TR-1-ONT-PER-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
	 And I Navigate to Accounting web page
 	 And I search with transaction id & verified the accounting entries
    	|4253-RBI-EI-DB-SAR-REC-RNI-FEE+INTEREST-FFConMONTHLYonLASTSUN-FIFC-1-FFROP-DL-FIFR-1-MD-TR-1-ONT-PER-Makerepayment1.xlsx|Acc_Disbursement|

	  				  				  			  					 
	            
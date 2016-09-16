Feature:JLGLoan

Background:
	Given I navigate to mifos using "default6#/"
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
     
     Given I setup the product loan "Setup"
		| Productloannavigation.xlsx |
	 Then I entered the values into product loan from "ProductLoanInput" Sheet
		|4210-RBI-EI-DB-DL-REC-RNI-INT-FFConMONTHLYonDAY25-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-ONTIME-PER-Loanproduct.xlsx|
     Given I setup the group
	 When I entered the values into group from "Input" sheet
	  	|4210-RBI-EI-DB-DL-REC-CTRFD-RNI-INT-FFConMONTHLYonDAY25-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-ONTIME-PERIODIC-Newcreateloan1.xlsx|		  								  				  				  			
	 Then I entered the values into client from "Input" sheet
	 	|Createclient.xlsx|	 				  								  				  				  			
	 When I set up the new create loan from "NewLoanInput" sheet
	  	|4210-RBI-EI-DB-DL-REC-CTRFD-RNI-INT-FFConMONTHLYonDAY25-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-ONTIME-PERIODIC-Newcreateloan1.xlsx|
	 Then I navigate to scheduler job & execute "Periodic Accrual Transactions"
 	 Then I verified the following Tabs details successfully 
	    |4210-RBI-EI-DB-DL-REC-CTRFD-RNI-INT-FFConMONTHLYonDAY25-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-ONTIME-PERIODIC-Newcreateloan1.xlsx|Summary|Repayment Schedule|Transactions|
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


@4254-MS-EI-DB-DL-REC-CTRFD-RNI-FEE-FFC-SAR-FFROP-DAILY-FIFR-1-MD-TR-1-ONTIME-PER
Scenario:4254-MS-EI-DB-DL-REC-CTRFD-RNI-FEE-FFC-SAR-FFROP-DAILY-FIFR-1-MD-TR-1-ONTIME-PER
     Given I setup the product loan "Setup"
		| Productloannavigation.xlsx |
	 Then I entered the values into product loan from "ProductLoanInput" Sheet
		|4254-MS-EI-DB-DL-REC-CTRFD-RNI-FEE-FFC-SAR-FFROP-DAILY-FIFR-1-MD-TR-1-ONTIME-PER-Loanproduct.xlsx|
     Given I setup the group
	 When I entered the values into group from "Input" sheet
	  	|4254-MS-EI-DB-DL-REC-CTRFD-RNI-FEE-FFC-SAR-FFROP-DAILY-FIFR-1-MD-TR-1-ONTIME-PER-Newcreateloan1.xlsx|		  								  				  				  			
	 Then I entered the values into client from "Input" sheet
	 	|Createclient.xlsx|	 				  								  				  				  			
	 When I set up the new create loan from "NewLoanInput" sheet
	  	|4254-MS-EI-DB-DL-REC-CTRFD-RNI-FEE-FFC-SAR-FFROP-DAILY-FIFR-1-MD-TR-1-ONTIME-PER-Newcreateloan1.xlsx|
	 Then I navigate to scheduler job & execute "Periodic Accrual Transactions"
 	 Then I verified the following Tabs details successfully 
	    |4254-MS-EI-DB-DL-REC-CTRFD-RNI-FEE-FFC-SAR-FFROP-DAILY-FIFR-1-MD-TR-1-ONTIME-PER-Newcreateloan1.xlsx|Summary|Repayment Schedule|Transactions|
	 Then I make repayment and verified the following tabs
    	|4254-MS-EI-DB-DL-REC-CTRFD-RNI-FEE-FFC-SAR-FFROP-DAILY-FIFR-1-MD-TR-1-ONTIME-PER-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
	 And I Navigate to Accounting web page
 	 And I search with transaction id & verified the accounting entries
    	|4254-MS-EI-DB-DL-REC-CTRFD-RNI-FEE-FFC-SAR-FFROP-DAILY-FIFR-1-MD-TR-1-ONTIME-PER-Makerepayment1.xlsx|Acc_Disbursement|Acc_Repayment|Acc_Periodic|
	 
@4255-MS-EI-DB-DL-REC-CTRFD-RNI-INT-FFC-SAR-FFROP-DAILY-FIFR-1-MD-TR-1-ONTIME-PER
Scenario:4255-MS-EI-DB-DL-REC-CTRFD-RNI-INT-FFC-SAR-FFROP-DAILY-FIFR-1-MD-TR-1-ONTIME-PER
     Given I setup the product loan "Setup"
		| Productloannavigation.xlsx |
	 Then I entered the values into product loan from "ProductLoanInput" Sheet
		|4255-MS-EI-DB-DL-REC-CTRFD-RNI-INT-FFC-SAR-FFROP-DAILY-FIFR-1-MD-TR-1-ONTIME-PER-Loanproduct.xlsx|
     Given I setup the group
	 When I entered the values into group from "Input" sheet
	  	|4255-MS-EI-DB-DL-REC-CTRFD-RNI-INT-FFC-SAR-FFROP-DAILY-FIFR-1-MD-TR-1-ONTIME-PER-Newcreateloan1.xlsx|		  								  				  				  			
	 Then I entered the values into client from "Input" sheet
	 	|Createclient.xlsx|	 				  								  				  				  			
	 When I set up the new create loan from "NewLoanInput" sheet
	  	|4255-MS-EI-DB-DL-REC-CTRFD-RNI-INT-FFC-SAR-FFROP-DAILY-FIFR-1-MD-TR-1-ONTIME-PER-Newcreateloan1.xlsx|
	 Then I navigate to scheduler job & execute "Periodic Accrual Transactions"
 	 Then I verified the following Tabs details successfully 
	    |4255-MS-EI-DB-DL-REC-CTRFD-RNI-INT-FFC-SAR-FFROP-DAILY-FIFR-1-MD-TR-1-ONTIME-PER-Newcreateloan1.xlsx|Summary|Repayment Schedule|Transactions|
	 Then I make repayment and verified the following tabs
    	|4255-MS-EI-DB-DL-REC-CTRFD-RNI-INT-FFC-SAR-FFROP-DAILY-FIFR-1-MD-TR-1-ONTIME-PER-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
	 And I Navigate to Accounting web page
 	 And I search with transaction id & verified the accounting entries
    	|4255-MS-EI-DB-DL-REC-CTRFD-RNI-INT-FFC-SAR-FFROP-DAILY-FIFR-1-MD-TR-1-ONTIME-PER-Makerepayment1.xlsx|Acc_Disbursement|Acc_Repayment|Acc_Periodic|

@4256-MS-EI-DB-DL-REC-CTRFD-RNI-FEE+INTEREST-FFC-SAR-FFROP-DAILY-FIFR-1-MD-TR-1-ONTIME-PER
Scenario:4256-MS-EI-DB-DL-REC-CTRFD-RNI-FEE+INTEREST-FFC-SAR-FFROP-DAILY-FIFR-1-MD-TR-1-ONTIME-PER
     Given I setup the product loan "Setup"
		| Productloannavigation.xlsx |
	 Then I entered the values into product loan from "ProductLoanInput" Sheet
		|4256-MS-EI-DB-DL-REC-CTRFD-RNI-FEE+INTEREST-FFC-SAR-FFROP-DAILY-FIFR-1-MD-TR-1-ONTIME-PER-Loanproduct.xlsx|
     Given I setup the group
	 When I entered the values into group from "Input" sheet
	  	|4256-MS-EI-DB-DL-REC-CTRFD-RNI-FEE+INTEREST-FFC-SAR-FFROP-DAILY-FIFR-1-MD-TR-1-ONTIME-PER-Newcreateloan1.xlsx|		  								  				  				  			
	 Then I entered the values into client from "Input" sheet
	 	|Createclient.xlsx|	 				  								  				  				  			
	 When I set up the new create loan from "NewLoanInput" sheet
	  	|4256-MS-EI-DB-DL-REC-CTRFD-RNI-FEE+INTEREST-FFC-SAR-FFROP-DAILY-FIFR-1-MD-TR-1-ONTIME-PER-Newcreateloan1.xlsx|
	 Then I navigate to scheduler job & execute "Periodic Accrual Transactions"
 	 Then I verified the following Tabs details successfully 
	    |4256-MS-EI-DB-DL-REC-CTRFD-RNI-FEE+INTEREST-FFC-SAR-FFROP-DAILY-FIFR-1-MD-TR-1-ONTIME-PER-Newcreateloan1.xlsx|Summary|Repayment Schedule|Transactions|
	 Then I make repayment and verified the following tabs
    	|4256-MS-EI-DB-DL-REC-CTRFD-RNI-FEE+INTEREST-FFC-SAR-FFROP-DAILY-FIFR-1-MD-TR-1-ONTIME-PER-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
	 And I Navigate to Accounting web page
 	 And I search with transaction id & verified the accounting entries
    	|4256-MS-EI-DB-DL-REC-CTRFD-RNI-FEE+INTEREST-FFC-SAR-FFROP-DAILY-FIFR-1-MD-TR-1-ONTIME-PER-Makerepayment1.xlsx|Acc_Disbursement|Acc_Repayment|Acc_Periodic|

@4257-MS-EI-DB-DL-REC-CTRFD-RNI-FEE-FFC-SAR-FFROP-DAILY-FIFR-1-MD-TR-1-MORE-PER
Scenario:4257-MS-EI-DB-DL-REC-CTRFD-RNI-FEE-FFC-SAR-FFROP-DAILY-FIFR-1-MD-TR-1-MORE-PER
        Given I setup the group
	 When I entered the values into group from "Input" sheet
	  	|4257-MS-EI-DB-DL-REC-CTRFD-RNI-FEE-FFC-SAR-FFROP-DAILY-FIFR-1-MD-TR-1-MORE-PER-Newcreateloan1.xlsx|		  								  				  				  			
	 Then I entered the values into client from "Input" sheet
	 	|Createclient.xlsx|	 				  								  				  				  			
	 When I set up the new create loan from "NewLoanInput" sheet
	  	|4257-MS-EI-DB-DL-REC-CTRFD-RNI-FEE-FFC-SAR-FFROP-DAILY-FIFR-1-MD-TR-1-MORE-PER-Newcreateloan1.xlsx|
	 Then I navigate to scheduler job & execute "Periodic Accrual Transactions"
 	 Then I verified the following Tabs details successfully 
	    |4257-MS-EI-DB-DL-REC-CTRFD-RNI-FEE-FFC-SAR-FFROP-DAILY-FIFR-1-MD-TR-1-MORE-PER-Newcreateloan1.xlsx|Summary|Repayment Schedule|Transactions|
	 Then I make repayment and verified the following tabs
    	|4257-MS-EI-DB-DL-REC-CTRFD-RNI-FEE-FFC-SAR-FFROP-DAILY-FIFR-1-MD-TR-1-MORE-PER-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
	 And I Navigate to Accounting web page
 	 And I search with transaction id & verified the accounting entries
    	|4257-MS-EI-DB-DL-REC-CTRFD-RNI-FEE-FFC-SAR-FFROP-DAILY-FIFR-1-MD-TR-1-MORE-PER-Makerepayment1.xlsx|Acc_Disbursement|Acc_Repayment|Acc_Periodic|

@4258-MS-EI-DB-DL-REC-CTRFD-RNI-INT-FFC-SAR-FFROP-DAILY-FIFR-1-MD-TR-1-MORE-PER
Scenario:4258-MS-EI-DB-DL-REC-CTRFD-RNI-INT-FFC-SAR-FFROP-DAILY-FIFR-1-MD-TR-1-MORE-PER
          Given I setup the group
	 When I entered the values into group from "Input" sheet
	  	|4258-MS-EI-DB-DL-REC-CTRFD-RNI-INT-FFC-SAR-FFROP-DAILY-FIFR-1-MD-TR-1-MORE-PER-Newcreateloan1.xlsx|		  								  				  				  			
	 Then I entered the values into client from "Input" sheet
	 	|Createclient.xlsx|	 				  								  				  				  			
	 When I set up the new create loan from "NewLoanInput" sheet
	  	|4258-MS-EI-DB-DL-REC-CTRFD-RNI-INT-FFC-SAR-FFROP-DAILY-FIFR-1-MD-TR-1-MORE-PER-Newcreateloan1.xlsx|
	 Then I navigate to scheduler job & execute "Periodic Accrual Transactions"
 	 Then I verified the following Tabs details successfully 
	    |4258-MS-EI-DB-DL-REC-CTRFD-RNI-INT-FFC-SAR-FFROP-DAILY-FIFR-1-MD-TR-1-MORE-PER-Newcreateloan1.xlsx|Summary|Repayment Schedule|Transactions|
	 Then I make repayment and verified the following tabs
    	|4258-MS-EI-DB-DL-REC-CTRFD-RNI-INT-FFC-SAR-FFROP-DAILY-FIFR-1-MD-TR-1-MORE-PER-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
	 And I Navigate to Accounting web page
 	 And I search with transaction id & verified the accounting entries
    	|4258-MS-EI-DB-DL-REC-CTRFD-RNI-INT-FFC-SAR-FFROP-DAILY-FIFR-1-MD-TR-1-MORE-PER-Makerepayment1.xlsx|Acc_Disbursement|Acc_Repayment|Acc_Periodic|

@4259-MS-EI-DB-DL-REC-CTRFD-RNI-FEE+INTEREST-FFC-SAR-FFROP-DAILY-FIFR-1-MD-TR-1-MORE-PER
Scenario:4259-MS-EI-DB-DL-REC-CTRFD-RNI-FEE+INTEREST-FFC-SAR-FFROP-DAILY-FIFR-1-MD-TR-1-MORE-PER
          Given I setup the group
	 When I entered the values into group from "Input" sheet
	  	|4259-MS-EI-DB-DL-REC-CTRFD-RNI-FEE+INTEREST-FFC-SAR-FFROP-DAILY-FIFR-1-MD-TR-1-MORE-PER-Newcreateloan1.xlsx|		  								  				  				  			
	 Then I entered the values into client from "Input" sheet
	 	|Createclient.xlsx|	 				  								  				  				  			
	 When I set up the new create loan from "NewLoanInput" sheet
	  	|4259-MS-EI-DB-DL-REC-CTRFD-RNI-FEE+INTEREST-FFC-SAR-FFROP-DAILY-FIFR-1-MD-TR-1-MORE-PER-Newcreateloan1.xlsx|
	 Then I navigate to scheduler job & execute "Periodic Accrual Transactions"
 	 Then I verified the following Tabs details successfully 
	    |4259-MS-EI-DB-DL-REC-CTRFD-RNI-FEE+INTEREST-FFC-SAR-FFROP-DAILY-FIFR-1-MD-TR-1-MORE-PER-Newcreateloan1.xlsx|Summary|Repayment Schedule|Transactions|
	 Then I make repayment and verified the following tabs
    	|4259-MS-EI-DB-DL-REC-CTRFD-RNI-FEE+INTEREST-FFC-SAR-FFROP-DAILY-FIFR-1-MD-TR-1-MORE-PER-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
	 And I Navigate to Accounting web page
 	 And I search with transaction id & verified the accounting entries
    	|4259-MS-EI-DB-DL-REC-CTRFD-RNI-FEE+INTEREST-FFC-SAR-FFROP-DAILY-FIFR-1-MD-TR-1-MORE-PER-Makerepayment1.xlsx|Acc_Disbursement|Acc_Repayment|Acc_Periodic|

@4260-MS-EI-DB-DL-REC-CTRFD-RNI-FEE-FFC-SAR-FFROP-DAILY-FIFR-1-MD-TR-1-LESS-PER
Scenario:4260-MS-EI-DB-DL-REC-CTRFD-RNI-FEE-FFC-SAR-FFROP-DAILY-FIFR-1-MD-TR-1-LESS-PER
          Given I setup the group
	 When I entered the values into group from "Input" sheet
	  	|4260-MS-EI-DB-DL-REC-CTRFD-RNI-FEE-FFC-SAR-FFROP-DAILY-FIFR-1-MD-TR-1-LESS-PER-Newcreateloan1.xlsx|		  								  				  				  			
	 Then I entered the values into client from "Input" sheet
	 	|Createclient.xlsx|	 				  								  				  				  			
	 When I set up the new create loan from "NewLoanInput" sheet
	  	|4260-MS-EI-DB-DL-REC-CTRFD-RNI-FEE-FFC-SAR-FFROP-DAILY-FIFR-1-MD-TR-1-LESS-PER-Newcreateloan1.xlsx|
	 Then I navigate to scheduler job & execute "Periodic Accrual Transactions"
 	 Then I verified the following Tabs details successfully 
	    |4260-MS-EI-DB-DL-REC-CTRFD-RNI-FEE-FFC-SAR-FFROP-DAILY-FIFR-1-MD-TR-1-LESS-PER-Newcreateloan1.xlsx|Summary|Repayment Schedule|Transactions|
	 Then I make repayment and verified the following tabs
    	|4260-MS-EI-DB-DL-REC-CTRFD-RNI-FEE-FFC-SAR-FFROP-DAILY-FIFR-1-MD-TR-1-LESS-PER-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
	 And I Navigate to Accounting web page
 	 And I search with transaction id & verified the accounting entries
    	|4260-MS-EI-DB-DL-REC-CTRFD-RNI-FEE-FFC-SAR-FFROP-DAILY-FIFR-1-MD-TR-1-LESS-PER-Makerepayment1.xlsx|Acc_Disbursement|Acc_Repayment|Acc_Periodic|

@4261-MS-EI-DB-DL-REC-CTRFD-RNI-INT-FFC-SAR-FFROP-DAILY-FIFR-1-MD-TR-1-LESS-PER
Scenario:4261-MS-EI-DB-DL-REC-CTRFD-RNI-INT-FFC-SAR-FFROP-DAILY-FIFR-1-MD-TR-1-LESS-PER
          Given I setup the group
	 When I entered the values into group from "Input" sheet
	  	|4261-MS-EI-DB-DL-REC-CTRFD-RNI-INT-FFC-SAR-FFROP-DAILY-FIFR-1-MD-TR-1-LESS-PER-Newcreateloan1.xlsx|		  								  				  				  			
	 Then I entered the values into client from "Input" sheet
	 	|Createclient.xlsx|	 				  								  				  				  			
	 When I set up the new create loan from "NewLoanInput" sheet
	  	|4261-MS-EI-DB-DL-REC-CTRFD-RNI-INT-FFC-SAR-FFROP-DAILY-FIFR-1-MD-TR-1-LESS-PER-Newcreateloan1.xlsx|
	 Then I navigate to scheduler job & execute "Periodic Accrual Transactions"
 	 Then I verified the following Tabs details successfully 
	    |4261-MS-EI-DB-DL-REC-CTRFD-RNI-INT-FFC-SAR-FFROP-DAILY-FIFR-1-MD-TR-1-LESS-PER-Newcreateloan1.xlsx|Summary|Repayment Schedule|Transactions|
	 Then I make repayment and verified the following tabs
    	|4261-MS-EI-DB-DL-REC-CTRFD-RNI-INT-FFC-SAR-FFROP-DAILY-FIFR-1-MD-TR-1-LESS-PER-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
	 And I Navigate to Accounting web page
 	 And I search with transaction id & verified the accounting entries
    	|4261-MS-EI-DB-DL-REC-CTRFD-RNI-INT-FFC-SAR-FFROP-DAILY-FIFR-1-MD-TR-1-LESS-PER-Makerepayment1.xlsx|Acc_Disbursement|Acc_Repayment|Acc_Periodic|

@4262-MS-EI-DB-DL-REC-CTRFD-RNI-FEE+INTEREST-FFC-SAR-FFROP-DAILY-FIFR-1-MD-TR-1-LESS-PER
Scenario:4262-MS-EI-DB-DL-REC-CTRFD-RNI-FEE+INTEREST-FFC-SAR-FFROP-DAILY-FIFR-1-MD-TR-1-LESS-PER
          Given I setup the group
	 When I entered the values into group from "Input" sheet
	  	|4262-MS-EI-DB-DL-REC-CTRFD-RNI-FEE+INTEREST-FFC-SAR-FFROP-DAILY-FIFR-1-MD-TR-1-LESS-PER-Newcreateloan1.xlsx|		  								  				  				  			
	 Then I entered the values into client from "Input" sheet
	 	|Createclient.xlsx|	 				  								  				  				  			
	 When I set up the new create loan from "NewLoanInput" sheet
	  	|4262-MS-EI-DB-DL-REC-CTRFD-RNI-FEE+INTEREST-FFC-SAR-FFROP-DAILY-FIFR-1-MD-TR-1-LESS-PER-Newcreateloan1.xlsx|
	 Then I navigate to scheduler job & execute "Periodic Accrual Transactions"
 	 Then I verified the following Tabs details successfully 
	    |4262-MS-EI-DB-DL-REC-CTRFD-RNI-FEE+INTEREST-FFC-SAR-FFROP-DAILY-FIFR-1-MD-TR-1-LESS-PER-Newcreateloan1.xlsx|Summary|Repayment Schedule|Transactions|
	 Then I make repayment and verified the following tabs
    	|4262-MS-EI-DB-DL-REC-CTRFD-RNI-FEE+INTEREST-FFC-SAR-FFROP-DAILY-FIFR-1-MD-TR-1-LESS-PER-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
	 And I Navigate to Accounting web page
 	 And I search with transaction id & verified the accounting entries
    	|4262-MS-EI-DB-DL-REC-CTRFD-RNI-FEE+INTEREST-FFC-SAR-FFROP-DAILY-FIFR-1-MD-TR-1-LESS-PER-Makerepayment1.xlsx|Acc_Disbursement|Acc_Repayment|Acc_Periodic|

@4263-MS-EI-DB-DL-REC-RNI-FEE-FFConMONTHLYonDAY25-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-ONTIME-PER
Scenario:4263-MS-EI-DB-DL-REC-RNI-FEE-FFConMONTHLYonDAY25-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-ONTIME-PER
     Given I setup the product loan "Setup"
		| Productloannavigation.xlsx |
	 Then I entered the values into product loan from "ProductLoanInput" Sheet
		|4263-MS-EI-DB-DL-REC-RNI-FEE-FFConMONTHLYonDAY25-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-ONTIME-PER-Loanproduct.xlsx|
     Given I setup the group
	 When I entered the values into group from "Input" sheet
	  	|4263-MS-EI-DB-DL-REC-RNI-FEE-FFConMONTHLYonDAY25-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-ONTIME-PER-Newcreateloan1.xlsx|		  								  				  				  			
	 Then I entered the values into client from "Input" sheet
	 	|Createclient.xlsx|	 				  								  				  				  			
	 When I set up the new create loan from "NewLoanInput" sheet
	  	|4263-MS-EI-DB-DL-REC-RNI-FEE-FFConMONTHLYonDAY25-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-ONTIME-PER-Newcreateloan1.xlsx|
	 Then I navigate to scheduler job & execute "Periodic Accrual Transactions"
 	 Then I verified the following Tabs details successfully 
	    |4263-MS-EI-DB-DL-REC-RNI-FEE-FFConMONTHLYonDAY25-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-ONTIME-PER-Newcreateloan1.xlsx|Summary|Repayment Schedule|Transactions|
	 Then I make repayment and verified the following tabs
    	|4263-MS-EI-DB-DL-REC-RNI-FEE-FFConMONTHLYonDAY25-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-ONTIME-PER-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
	 And I Navigate to Accounting web page
 	 And I search with transaction id & verified the accounting entries
    	|4263-MS-EI-DB-DL-REC-RNI-FEE-FFConMONTHLYonDAY25-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-ONTIME-PER-Makerepayment1.xlsx|Acc_Disbursement|Acc_Repayment|Acc_Periodic|

@4264-MS-EI-DB-DL-REC-RNI-INT-FFConMONTHLYonDAY25-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-ONTIME-PER
Scenario:4264-MS-EI-DB-DL-REC-RNI-INT-FFConMONTHLYonDAY25-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-ONTIME-PER
     
     Given I setup the product loan "Setup"
		| Productloannavigation.xlsx |
	 Then I entered the values into product loan from "ProductLoanInput" Sheet
		|4264-MS-EI-DB-DL-REC-RNI-INT-FFConMONTHLYonDAY25-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-ONTIME-PER-Loanproduct.xlsx|
     Given I setup the group
	 When I entered the values into group from "Input" sheet
	  	|4264-MS-EI-DB-DL-REC-RNI-INT-FFConMONTHLYonDAY25-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-ONTIME-PER-Newcreateloan1.xlsx|		  								  				  				  			
	 Then I entered the values into client from "Input" sheet
	 	|Createclient.xlsx|	 				  								  				  				  			
	 When I set up the new create loan from "NewLoanInput" sheet
	  	|4264-MS-EI-DB-DL-REC-RNI-INT-FFConMONTHLYonDAY25-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-ONTIME-PER-Newcreateloan1.xlsx|
	 Then I navigate to scheduler job & execute "Periodic Accrual Transactions"
 	 Then I verified the following Tabs details successfully 
	    |4264-MS-EI-DB-DL-REC-RNI-INT-FFConMONTHLYonDAY25-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-ONTIME-PER-Newcreateloan1.xlsx|Summary|Repayment Schedule|Transactions|
	 Then I make repayment and verified the following tabs
    	|4264-MS-EI-DB-DL-REC-RNI-INT-FFConMONTHLYonDAY25-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-ONTIME-PER-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
	 And I Navigate to Accounting web page
 	 And I search with transaction id & verified the accounting entries
    	|4264-MS-EI-DB-DL-REC-RNI-INT-FFConMONTHLYonDAY25-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-ONTIME-PER-Makerepayment1.xlsx|Acc_Disbursement|Acc_Repayment|Acc_Periodic|

@4265-MS-EI-DB-DL-REC-RNI-FEE+INTEREST-FFConMONTHLYonDAY25-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-ONTIME-PER
Scenario:4265-MS-EI-DB-DL-REC-RNI-FEE+INTEREST-FFConMONTHLYonDAY25-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-ONTIME-PER
     Given I setup the product loan "Setup"
		| Productloannavigation.xlsx |
	 Then I entered the values into product loan from "ProductLoanInput" Sheet
		|4265-MS-EI-DB-DL-REC-RNI-FEE+INT-FFConMONTHLYonDAY25-FIFC-1-FFROP-DL-FIFR-1-MD-TR-1-ONT-PER-Loanproduct.xlsx|
     Given I setup the group
	 When I entered the values into group from "Input" sheet
	  	|4265-MS-EI-DB-DL-REC-RNI-FEE+INTEREST-FFConMONTHLYonDAY25-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-ONTIME-PER-Newcreateloan1.xlsx|		  								  				  				  			
	 Then I entered the values into client from "Input" sheet
	 	|Createclient.xlsx|	 				  								  				  				  			
	 When I set up the new create loan from "NewLoanInput" sheet
	  	|4265-MS-EI-DB-DL-REC-RNI-FEE+INTEREST-FFConMONTHLYonDAY25-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-ONTIME-PER-Newcreateloan1.xlsx|
	 Then I navigate to scheduler job & execute "Periodic Accrual Transactions"
 	 Then I verified the following Tabs details successfully 
	    |4265-MS-EI-DB-DL-REC-RNI-FEE+INTEREST-FFConMONTHLYonDAY25-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-ONTIME-PER-Newcreateloan1.xlsx|Summary|Repayment Schedule|Transactions|
	 Then I make repayment and verified the following tabs
    	|4265-MS-EI-DB-DL-REC-RNI-FEE+INTEREST-FFConMONTHLYonDAY25-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-ONTIME-PER-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
	 And I Navigate to Accounting web page
 	 And I search with transaction id & verified the accounting entries
    	|4265-MS-EI-DB-DL-REC-RNI-FEE+INTEREST-FFConMONTHLYonDAY25-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-ONTIME-PER-Makerepayment1.xlsx|Acc_Disbursement|Acc_Repayment|Acc_Periodic|

@4266-MS-EI-DB-DL-REC-RNI-FEE-FFConMONTHLYonDAY25-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-MORE-PER
Scenario:4266-MS-EI-DB-DL-REC-RNI-FEE-FFConMONTHLYonDAY25-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-MORE-PER
     Given I setup the group
	 When I entered the values into group from "Input" sheet
	  	|4266-MS-EI-DB-DL-REC-RNI-FEE-FFConMONTHLYonDAY25-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-MORE-PER-Newcreateloan1.xlsx|		  								  				  				  			
	 Then I entered the values into client from "Input" sheet
	 	|Createclient.xlsx|	 				  								  				  				  			
	 When I set up the new create loan from "NewLoanInput" sheet
	  	|4266-MS-EI-DB-DL-REC-RNI-FEE-FFConMONTHLYonDAY25-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-MORE-PER-Newcreateloan1.xlsx|
	 Then I navigate to scheduler job & execute "Periodic Accrual Transactions"
 	 Then I verified the following Tabs details successfully 
	    |4266-MS-EI-DB-DL-REC-RNI-FEE-FFConMONTHLYonDAY25-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-MORE-PER-Newcreateloan1.xlsx|Summary|Repayment Schedule|Transactions|
	 Then I make repayment and verified the following tabs
    	|4266-MS-EI-DB-DL-REC-RNI-FEE-FFConMONTHLYonDAY25-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-MORE-PER-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
	 And I Navigate to Accounting web page
 	 And I search with transaction id & verified the accounting entries
    	|4266-MS-EI-DB-DL-REC-RNI-FEE-FFConMONTHLYonDAY25-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-MORE-PER-Makerepayment1.xlsx|Acc_Disbursement|Acc_Repayment|Acc_Periodic|

@4267-MS-EI-DB-DL-REC-RNI-INT-FFConMONTHLYonDAY25-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-MORE-PER
Scenario:4267-MS-EI-DB-DL-REC-RNI-INT-FFConMONTHLYonDAY25-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-MORE-PER
          Given I setup the group
	 When I entered the values into group from "Input" sheet
	  	|4267-MS-EI-DB-DL-REC-RNI-INT-FFConMONTHLYonDAY25-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-MORE-PER-Newcreateloan1.xlsx|		  								  				  				  			
	 Then I entered the values into client from "Input" sheet
	 	|Createclient.xlsx|	 				  								  				  				  			
	 When I set up the new create loan from "NewLoanInput" sheet
	  	|4267-MS-EI-DB-DL-REC-RNI-INT-FFConMONTHLYonDAY25-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-MORE-PER-Newcreateloan1.xlsx|
	 Then I navigate to scheduler job & execute "Periodic Accrual Transactions"
 	 Then I verified the following Tabs details successfully 
	    |4267-MS-EI-DB-DL-REC-RNI-INT-FFConMONTHLYonDAY25-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-MORE-PER-Newcreateloan1.xlsx|Summary|Repayment Schedule|Transactions|
	 Then I make repayment and verified the following tabs
    	|4267-MS-EI-DB-DL-REC-RNI-INT-FFConMONTHLYonDAY25-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-MORE-PER-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
	 And I Navigate to Accounting web page
 	 And I search with transaction id & verified the accounting entries
    	|4267-MS-EI-DB-DL-REC-RNI-INT-FFConMONTHLYonDAY25-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-MORE-PER-Makerepayment1.xlsx|Acc_Disbursement|Acc_Repayment|Acc_Periodic|

@4268-MS-EI-DB-DL-REC-RNI-FEE+INTEREST-FFConMONTHLYonDAY25-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-MORE-PER
Scenario:4268-MS-EI-DB-DL-REC-RNI-FEE+INTEREST-FFConMONTHLYonDAY25-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-MORE-PER
          Given I setup the group
	 When I entered the values into group from "Input" sheet
	  	|4268-MS-EI-DB-DL-REC-RNI-FEE+INTEREST-FFConMONTHLYonDAY25-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-MORE-PER-Newcreateloan1.xlsx|		  								  				  				  			
	 Then I entered the values into client from "Input" sheet
	 	|Createclient.xlsx|	 				  								  				  				  			
	 When I set up the new create loan from "NewLoanInput" sheet
	  	|4268-MS-EI-DB-DL-REC-RNI-FEE+INTEREST-FFConMONTHLYonDAY25-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-MORE-PER-Newcreateloan1.xlsx|
	 Then I navigate to scheduler job & execute "Periodic Accrual Transactions"
 	 Then I verified the following Tabs details successfully 
	    |4268-MS-EI-DB-DL-REC-RNI-FEE+INTEREST-FFConMONTHLYonDAY25-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-MORE-PER-Newcreateloan1.xlsx|Summary|Repayment Schedule|Transactions|
	 Then I make repayment and verified the following tabs
    	|4268-MS-EI-DB-DL-REC-RNI-FEE+INTEREST-FFConMONTHLYonDAY25-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-MORE-PER-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
	 And I Navigate to Accounting web page
 	 And I search with transaction id & verified the accounting entries
    	|4268-MS-EI-DB-DL-REC-RNI-FEE+INTEREST-FFConMONTHLYonDAY25-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-MORE-PER-Makerepayment1.xlsx|Acc_Disbursement|Acc_Repayment|Acc_Periodic|

@4269-MS-EI-DB-DL-REC-RNI-FEE-FFConMONTHLYonDAY25-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-LESS-PER
Scenario:4269-MS-EI-DB-DL-REC-RNI-FEE-FFConMONTHLYonDAY25-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-LESS-PER
          Given I setup the group
	 When I entered the values into group from "Input" sheet
	  	|4269-MS-EI-DB-DL-REC-RNI-FEE-FFConMONTHLYonDAY25-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-LESS-PER-Newcreateloan1.xlsx|		  								  				  				  			
	 Then I entered the values into client from "Input" sheet
	 	|Createclient.xlsx|	 				  								  				  				  			
	 When I set up the new create loan from "NewLoanInput" sheet
	  	|4269-MS-EI-DB-DL-REC-RNI-FEE-FFConMONTHLYonDAY25-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-LESS-PER-Newcreateloan1.xlsx|
	 Then I navigate to scheduler job & execute "Periodic Accrual Transactions"
 	 Then I verified the following Tabs details successfully 
	    |4269-MS-EI-DB-DL-REC-RNI-FEE-FFConMONTHLYonDAY25-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-LESS-PER-Newcreateloan1.xlsx|Summary|Repayment Schedule|Transactions|
	 Then I make repayment and verified the following tabs
    	|4269-MS-EI-DB-DL-REC-RNI-FEE-FFConMONTHLYonDAY25-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-LESS-PER-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
	 And I Navigate to Accounting web page
 	 And I search with transaction id & verified the accounting entries
    	|4269-MS-EI-DB-DL-REC-RNI-FEE-FFConMONTHLYonDAY25-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-LESS-PER-Makerepayment1.xlsx|Acc_Disbursement|Acc_Repayment|Acc_Periodic|

@4270-MS-EI-DB-DL-REC-RNI-INT-FFConMONTHLYonDAY25-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-LESS-PER
Scenario:4270-MS-EI-DB-DL-REC-RNI-INT-FFConMONTHLYonDAY25-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-LESS-PER
          Given I setup the group
	 When I entered the values into group from "Input" sheet
	  	|4270-MS-EI-DB-DL-REC-RNI-INT-FFConMONTHLYonDAY25-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-LESS-PER-Newcreateloan1.xlsx|		  								  				  				  			
	 Then I entered the values into client from "Input" sheet
	 	|Createclient.xlsx|	 				  								  				  				  			
	 When I set up the new create loan from "NewLoanInput" sheet
	  	|4270-MS-EI-DB-DL-REC-RNI-INT-FFConMONTHLYonDAY25-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-LESS-PER-Newcreateloan1.xlsx|
	 Then I navigate to scheduler job & execute "Periodic Accrual Transactions"
 	 Then I verified the following Tabs details successfully 
	    |4270-MS-EI-DB-DL-REC-RNI-INT-FFConMONTHLYonDAY25-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-LESS-PER-Newcreateloan1.xlsx|Summary|Repayment Schedule|Transactions|
	 Then I make repayment and verified the following tabs
    	|4270-MS-EI-DB-DL-REC-RNI-INT-FFConMONTHLYonDAY25-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-LESS-PER-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
	 And I Navigate to Accounting web page
 	 And I search with transaction id & verified the accounting entries
    	|4270-MS-EI-DB-DL-REC-RNI-INT-FFConMONTHLYonDAY25-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-LESS-PER-Makerepayment1.xlsx|Acc_Disbursement|Acc_Repayment|Acc_Periodic|

@4271-MS-EI-DB-DL-REC-RNI-FEE+INTEREST-FFConMONTHLYonDAY25-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-LESS-PER
Scenario:4271-MS-EI-DB-DL-REC-RNI-FEE+INTEREST-FFConMONTHLYonDAY25-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-LESS-PER
          Given I setup the group
	 When I entered the values into group from "Input" sheet
	  	|4271-MS-EI-DB-DL-REC-RNI-FEE+INTEREST-FFConMONTHLYonDAY25-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-LESS-PER-Newcreateloan1.xlsx|		  								  				  				  			
	 Then I entered the values into client from "Input" sheet
	 	|Createclient.xlsx|	 				  								  				  				  			
	 When I set up the new create loan from "NewLoanInput" sheet
	  	|4271-MS-EI-DB-DL-REC-RNI-FEE+INTEREST-FFConMONTHLYonDAY25-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-LESS-PER-Newcreateloan1.xlsx|
	 Then I navigate to scheduler job & execute "Periodic Accrual Transactions"
 	 Then I verified the following Tabs details successfully 
	    |4271-MS-EI-DB-DL-REC-RNI-FEE+INTEREST-FFConMONTHLYonDAY25-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-LESS-PER-Newcreateloan1.xlsx|Summary|Repayment Schedule|Transactions|
	 Then I make repayment and verified the following tabs
    	|4271-MS-EI-DB-DL-REC-RNI-FEE+INTEREST-FFConMONTHLYonDAY25-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-LESS-PER-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
	 And I Navigate to Accounting web page
 	 And I search with transaction id & verified the accounting entries
    	|4271-MS-EI-DB-DL-REC-RNI-FEE+INTEREST-FFConMONTHLYonDAY25-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-LESS-PER-Makerepayment1.xlsx|Acc_Disbursement|Acc_Repayment|Acc_Periodic|

@4272-MS-EI-DB-DL-REC-RNI-FEE-FFConMONTHLYonLASTSUNDAY-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-ONTIME-PER
Scenario:4272-MS-EI-DB-DL-REC-RNI-FEE-FFConMONTHLYonLASTSUNDAY-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-ONTIME-PER
     Given I setup the product loan "Setup"
		| Productloannavigation.xlsx |
	 Then I entered the values into product loan from "ProductLoanInput" Sheet
		|4272-MS-EI-DB-DL-REC-RNI-FEE-FFConMONTHLYonLASTSUNDAY-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-ONTIME-PER-Loanproduct.xlsx|
     Given I setup the group
	 When I entered the values into group from "Input" sheet
	  	|4272-MS-EI-DB-DL-REC-RNI-FEE-FFConMONTHLYonLASTSUNDAY-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-ONTIME-PER-Newcreateloan1.xlsx|		  								  				  				  			
	 Then I entered the values into client from "Input" sheet
	 	|Createclient.xlsx|	 				  								  				  				  			
	 When I set up the new create loan from "NewLoanInput" sheet
	  	|4272-MS-EI-DB-DL-REC-RNI-FEE-FFConMONTHLYonLASTSUNDAY-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-ONTIME-PER-Newcreateloan1.xlsx|
	 Then I navigate to scheduler job & execute "Periodic Accrual Transactions"
 	 Then I verified the following Tabs details successfully 
	    |4272-MS-EI-DB-DL-REC-RNI-FEE-FFConMONTHLYonLASTSUNDAY-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-ONTIME-PER-Newcreateloan1.xlsx|Summary|Repayment Schedule|Transactions|
	 Then I make repayment and verified the following tabs
    	|4272-MS-EI-DB-DL-REC-RNI-FEE-FFConMONTHLYonLASTSUNDAY-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-ONTIME-PER-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
	 And I Navigate to Accounting web page
 	 And I search with transaction id & verified the accounting entries
    	|4272-MS-EI-DB-DL-REC-RNI-FEE-FFConMONTHLYonLASTSUNDAY-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-ONTIME-PER-Makerepayment1.xlsx|Acc_Disbursement|Acc_Repayment|Acc_Periodic|

@4273-MS-EI-DB-DL-REC-RNI-INT-FFConMONTHLYonLASTSUNDAY-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-ONTIME-PER
Scenario:4273-MS-EI-DB-DL-REC-RNI-INT-FFConMONTHLYonLASTSUNDAY-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-ONTIME-PER
     Given I setup the product loan "Setup"
		| Productloannavigation.xlsx |
	 Then I entered the values into product loan from "ProductLoanInput" Sheet
		|4273-MS-EI-DB-DL-REC-RNI-INT-FFConMONTHLYonLASTSUNDAY-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-ONTIME-PER-Loanproduct.xlsx|
     Given I setup the group
	 When I entered the values into group from "Input" sheet
	  	|4273-MS-EI-DB-DL-REC-RNI-INT-FFConMONTHLYonLASTSUNDAY-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-ONTIME-PER-Newcreateloan1.xlsx|		  								  				  				  			
	 Then I entered the values into client from "Input" sheet
	 	|Createclient.xlsx|	 				  								  				  				  			
	 When I set up the new create loan from "NewLoanInput" sheet
	  	|4273-MS-EI-DB-DL-REC-RNI-INT-FFConMONTHLYonLASTSUNDAY-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-ONTIME-PER-Newcreateloan1.xlsx|
	 Then I navigate to scheduler job & execute "Periodic Accrual Transactions"
 	 Then I verified the following Tabs details successfully 
	    |4273-MS-EI-DB-DL-REC-RNI-INT-FFConMONTHLYonLASTSUNDAY-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-ONTIME-PER-Newcreateloan1.xlsx|Summary|Repayment Schedule|Transactions|
	 Then I make repayment and verified the following tabs
    	|4273-MS-EI-DB-DL-REC-RNI-INT-FFConMONTHLYonLASTSUNDAY-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-ONTIME-PER-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
	 And I Navigate to Accounting web page
 	 And I search with transaction id & verified the accounting entries
    	|4273-MS-EI-DB-DL-REC-RNI-INT-FFConMONTHLYonLASTSUNDAY-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-ONTIME-PER-Makerepayment1.xlsx|Acc_Disbursement|Acc_Repayment|Acc_Periodic|

@4274-MS-EI-DB-DL-REC-RNI-FEE+INTEREST-FFConMONTHLYonLASTSUNDAY-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-ONTIME-PER
Scenario:4274-MS-EI-DB-DL-REC-RNI-FEE+INTEREST-FFConMONTHLYonLASTSUNDAY-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-ONTIME-PER
     Given I setup the product loan "Setup"
		| Productloannavigation.xlsx |
	 Then I entered the values into product loan from "ProductLoanInput" Sheet
		|4274-MS-EI-DB-DL-REC-RNI-FEE+INT-FFConMONTHLYonLASTSUN-FIFC-1-FFROP-DL-FIFR-1-MD-TR-1-ONTIME-PER-Loanproduct.xlsx|
     Given I setup the group
	 When I entered the values into group from "Input" sheet
	  	|4274-MS-EI-DB-DL-REC-RNI-FEE+INTEREST-FFConMONTHLYonLASTSUNDAY-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-ONTIME-PER-Newcreateloan1.xlsx|		  								  				  				  			
	 Then I entered the values into client from "Input" sheet
	 	|Createclient.xlsx|	 				  								  				  				  			
	 When I set up the new create loan from "NewLoanInput" sheet
	  	|4274-MS-EI-DB-DL-REC-RNI-FEE+INTEREST-FFConMONTHLYonLASTSUNDAY-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-ONTIME-PER-Newcreateloan1.xlsx|
	 Then I navigate to scheduler job & execute "Periodic Accrual Transactions"
 	 Then I verified the following Tabs details successfully 
	    |4274-MS-EI-DB-DL-REC-RNI-FEE+INTEREST-FFConMONTHLYonLASTSUNDAY-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-ONTIME-PER-Newcreateloan1.xlsx|Summary|Repayment Schedule|Transactions|
	 Then I make repayment and verified the following tabs
    	|4274-MS-EI-DB-DL-REC-RNI-FEE+INTEREST-FFConMONTHLYonLASTSUNDAY-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-ONTIME-PER-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
	 And I Navigate to Accounting web page
 	 And I search with transaction id & verified the accounting entries
    	|4274-MS-EI-DB-DL-REC-RNI-FEE+INTEREST-FFConMONTHLYonLASTSUNDAY-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-ONTIME-PER-Makerepayment1.xlsx|Acc_Disbursement|Acc_Repayment|Acc_Periodic|

@4275-MS-EI-DB-DL-REC-RNI-FEE-FFConMONTHLYonLASTSUNDAY-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-MORE-PER
Scenario:4275-MS-EI-DB-DL-REC-RNI-FEE-FFConMONTHLYonLASTSUNDAY-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-MORE-PER
          Given I setup the group
	 When I entered the values into group from "Input" sheet
	  	|4275-MS-EI-DB-DL-REC-RNI-FEE-FFConMONTHLYonLASTSUNDAY-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-MORE-PER-Newcreateloan1.xlsx|		  								  				  				  			
	 Then I entered the values into client from "Input" sheet
	 	|Createclient.xlsx|	 				  								  				  				  			
	 When I set up the new create loan from "NewLoanInput" sheet
	  	|4275-MS-EI-DB-DL-REC-RNI-FEE-FFConMONTHLYonLASTSUNDAY-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-MORE-PER-Newcreateloan1.xlsx|
	 Then I navigate to scheduler job & execute "Periodic Accrual Transactions"
 	 Then I verified the following Tabs details successfully 
	    |4275-MS-EI-DB-DL-REC-RNI-FEE-FFConMONTHLYonLASTSUNDAY-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-MORE-PER-Newcreateloan1.xlsx|Summary|Repayment Schedule|Transactions|
	 Then I make repayment and verified the following tabs
    	|4275-MS-EI-DB-DL-REC-RNI-FEE-FFConMONTHLYonLASTSUNDAY-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-MORE-PER-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
	 And I Navigate to Accounting web page
 	 And I search with transaction id & verified the accounting entries
    	|4275-MS-EI-DB-DL-REC-RNI-FEE-FFConMONTHLYonLASTSUNDAY-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-MORE-PER-Makerepayment1.xlsx|Acc_Disbursement|Acc_Repayment|Acc_Periodic|

@4276-MS-EI-DB-DL-REC-RNI-INT-FFConMONTHLYonLASTSUNDAY-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-MORE-PER
Scenario:4276-MS-EI-DB-DL-REC-RNI-INT-FFConMONTHLYonLASTSUNDAY-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-MORE-PER
          Given I setup the group
	 When I entered the values into group from "Input" sheet
	  	|4276-MS-EI-DB-DL-REC-RNI-INT-FFConMONTHLYonLASTSUNDAY-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-MORE-PER-Newcreateloan1.xlsx|		  								  				  				  			
	 Then I entered the values into client from "Input" sheet
	 	|Createclient.xlsx|	 				  								  				  				  			
	 When I set up the new create loan from "NewLoanInput" sheet
	  	|4276-MS-EI-DB-DL-REC-RNI-INT-FFConMONTHLYonLASTSUNDAY-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-MORE-PER-Newcreateloan1.xlsx|
	 Then I navigate to scheduler job & execute "Periodic Accrual Transactions"
 	 Then I verified the following Tabs details successfully 
	    |4276-MS-EI-DB-DL-REC-RNI-INT-FFConMONTHLYonLASTSUNDAY-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-MORE-PER-Newcreateloan1.xlsx|Summary|Repayment Schedule|Transactions|
	 Then I make repayment and verified the following tabs
    	|4276-MS-EI-DB-DL-REC-RNI-INT-FFConMONTHLYonLASTSUNDAY-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-MORE-PER-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
	 And I Navigate to Accounting web page
 	 And I search with transaction id & verified the accounting entries
    	|4276-MS-EI-DB-DL-REC-RNI-INT-FFConMONTHLYonLASTSUNDAY-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-MORE-PER-Makerepayment1.xlsx|Acc_Disbursement|Acc_Repayment|Acc_Periodic|

@4277-MS-EI-DB-DL-REC-RNI-FEE+INTEREST-FFConMONTHLYonLASTSUNDAY-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-MORE-PER
Scenario:4277-MS-EI-DB-DL-REC-RNI-FEE+INTEREST-FFConMONTHLYonLASTSUNDAY-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-MORE-PER
          Given I setup the group
	 When I entered the values into group from "Input" sheet
	  	|4277-MS-EI-DB-DL-REC-RNI-FEE+INTEREST-FFConMONTHLYonLASTSUNDAY-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-MORE-PER-Newcreateloan1.xlsx|		  								  				  				  			
	 Then I entered the values into client from "Input" sheet
	 	|Createclient.xlsx|	 				  								  				  				  			
	 When I set up the new create loan from "NewLoanInput" sheet
	  	|4277-MS-EI-DB-DL-REC-RNI-FEE+INTEREST-FFConMONTHLYonLASTSUNDAY-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-MORE-PER-Newcreateloan1.xlsx|
	 Then I navigate to scheduler job & execute "Periodic Accrual Transactions"
 	 Then I verified the following Tabs details successfully 
	    |4277-MS-EI-DB-DL-REC-RNI-FEE+INTEREST-FFConMONTHLYonLASTSUNDAY-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-MORE-PER-Newcreateloan1.xlsx|Summary|Repayment Schedule|Transactions|
	 Then I make repayment and verified the following tabs
    	|4277-MS-EI-DB-DL-REC-RNI-FEE+INTEREST-FFConMONTHLYonLASTSUNDAY-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-MORE-PER-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
	 And I Navigate to Accounting web page
 	 And I search with transaction id & verified the accounting entries
    	|4277-MS-EI-DB-DL-REC-RNI-FEE+INTEREST-FFConMONTHLYonLASTSUNDAY-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-MORE-PER-Makerepayment1.xlsx|Acc_Disbursement|Acc_Repayment|Acc_Periodic|

@4278-MS-EI-DB-DL-REC-RNI-FEE-FFConMONTHLYonLASTSUNDAY-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-LESS-PER
Scenario:4278-MS-EI-DB-DL-REC-RNI-FEE-FFConMONTHLYonLASTSUNDAY-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-LESS-PER
          Given I setup the group
	 When I entered the values into group from "Input" sheet
	  	|4278-MS-EI-DB-DL-REC-RNI-FEE-FFConMONTHLYonLASTSUNDAY-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-LESS-PER-Newcreateloan1.xlsx|		  								  				  				  			
	 Then I entered the values into client from "Input" sheet
	 	|Createclient.xlsx|	 				  								  				  				  			
	 When I set up the new create loan from "NewLoanInput" sheet
	  	|4278-MS-EI-DB-DL-REC-RNI-FEE-FFConMONTHLYonLASTSUNDAY-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-LESS-PER-Newcreateloan1.xlsx|
	 Then I navigate to scheduler job & execute "Periodic Accrual Transactions"
 	 Then I verified the following Tabs details successfully 
	    |4278-MS-EI-DB-DL-REC-RNI-FEE-FFConMONTHLYonLASTSUNDAY-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-LESS-PER-Newcreateloan1.xlsx|Summary|Repayment Schedule|Transactions|
	 Then I make repayment and verified the following tabs
    	|4278-MS-EI-DB-DL-REC-RNI-FEE-FFConMONTHLYonLASTSUNDAY-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-LESS-PER-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
	 And I Navigate to Accounting web page
 	 And I search with transaction id & verified the accounting entries
    	|4278-MS-EI-DB-DL-REC-RNI-FEE-FFConMONTHLYonLASTSUNDAY-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-LESS-PER-Makerepayment1.xlsx|Acc_Disbursement|Acc_Repayment|Acc_Periodic|

@4279-MS-EI-DB-DL-REC-RNI-INT-FFConMONTHLYonLASTSUNDAY-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-LESS-PER
Scenario:4279-MS-EI-DB-DL-REC-RNI-INT-FFConMONTHLYonLASTSUNDAY-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-LESS-PER
      Given I setup the group
	 When I entered the values into group from "Input" sheet
	  	|4279-MS-EI-DB-DL-REC-RNI-INT-FFConMONTHLYonLASTSUNDAY-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-LESS-PER-Newcreateloan1.xlsx|		  								  				  				  			
	 Then I entered the values into client from "Input" sheet
	 	|Createclient.xlsx|	 				  								  				  				  			
	 When I set up the new create loan from "NewLoanInput" sheet
	  	|4279-MS-EI-DB-DL-REC-RNI-INT-FFConMONTHLYonLASTSUNDAY-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-LESS-PER-Newcreateloan1.xlsx|
	 Then I navigate to scheduler job & execute "Periodic Accrual Transactions"
 	 Then I verified the following Tabs details successfully 
	    |4279-MS-EI-DB-DL-REC-RNI-INT-FFConMONTHLYonLASTSUNDAY-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-LESS-PER-Newcreateloan1.xlsx|Summary|Repayment Schedule|Transactions|
	 Then I make repayment and verified the following tabs
    	|4279-MS-EI-DB-DL-REC-RNI-INT-FFConMONTHLYonLASTSUNDAY-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-LESS-PER-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
	 And I Navigate to Accounting web page
 	 And I search with transaction id & verified the accounting entries
    	|4279-MS-EI-DB-DL-REC-RNI-INT-FFConMONTHLYonLASTSUNDAY-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-LESS-PER-Makerepayment1.xlsx|Acc_Disbursement|Acc_Repayment|Acc_Periodic|

@4280-MS-EI-DB-DL-REC-RNI-FEE+INTEREST-FFConMONTHLYonLASTSUNDAY-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-LESS-PER
Scenario:4280-MS-EI-DB-DL-REC-RNI-FEE+INTEREST-FFConMONTHLYonLASTSUNDAY-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-LESS-PER
     Given I setup the group
	 When I entered the values into group from "Input" sheet
	  	|4280-MS-EI-DB-DL-REC-RNI-FEE+INTEREST-FFConMONTHLYonLASTSUNDAY-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-LESS-PER-Newcreateloan1.xlsx|		  								  				  				  			
	 Then I entered the values into client from "Input" sheet
	 	|Createclient.xlsx|	 				  								  				  				  			
	 When I set up the new create loan from "NewLoanInput" sheet
	  	|4280-MS-EI-DB-DL-REC-RNI-FEE+INTEREST-FFConMONTHLYonLASTSUNDAY-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-LESS-PER-Newcreateloan1.xlsx|
	 Then I navigate to scheduler job & execute "Periodic Accrual Transactions"
 	 Then I verified the following Tabs details successfully 
	    |4280-MS-EI-DB-DL-REC-RNI-FEE+INTEREST-FFConMONTHLYonLASTSUNDAY-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-LESS-PER-Newcreateloan1.xlsx|Summary|Repayment Schedule|Transactions|
	 Then I make repayment and verified the following tabs
    	|4280-MS-EI-DB-DL-REC-RNI-FEE+INTEREST-FFConMONTHLYonLASTSUNDAY-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-LESS-PER-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
	 And I Navigate to Accounting web page
 	 And I search with transaction id & verified the accounting entries
    	|4280-MS-EI-DB-DL-REC-RNI-FEE+INTEREST-FFConMONTHLYonLASTSUNDAY-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-LESS-PER-Makerepayment1.xlsx|Acc_Disbursement|

@4281-MS-EI-DB-SAR-REC-CTRFD-RNI-FEE-FFC-SAR-FFROP-DAILY-FIFR-1-MD-TR-1-ONTIME-PER
Scenario:4281-MS-EI-DB-SAR-REC-CTRFD-RNI-FEE-FFC-SAR-FFROP-DAILY-FIFR-1-MD-TR-1-ONTIME-PER
     Given I setup the product loan "Setup"
		| Productloannavigation.xlsx |
	 Then I entered the values into product loan from "ProductLoanInput" Sheet
		|4281-MS-EI-DB-SAR-REC-CTRFD-RNI-FEE-FFC-SAR-FFROP-DAILY-FIFR-1-MD-TR-1-ONTIME-PER-Loanproduct.xlsx|
     Given I setup the group
	 When I entered the values into group from "Input" sheet
	  	|4281-MS-EI-DB-SAR-REC-CTRFD-RNI-FEE-FFC-SAR-FFROP-DAILY-FIFR-1-MD-TR-1-ONTIME-PER-Newcreateloan1.xlsx|		  								  				  				  			
	 Then I entered the values into client from "Input" sheet
	 	|Createclient.xlsx|	 				  								  				  				  			
	 When I set up the new create loan from "NewLoanInput" sheet
	  	|4281-MS-EI-DB-SAR-REC-CTRFD-RNI-FEE-FFC-SAR-FFROP-DAILY-FIFR-1-MD-TR-1-ONTIME-PER-Newcreateloan1.xlsx|
	 Then I navigate to scheduler job & execute "Periodic Accrual Transactions"
 	 Then I verified the following Tabs details successfully 
	    |4281-MS-EI-DB-SAR-REC-CTRFD-RNI-FEE-FFC-SAR-FFROP-DAILY-FIFR-1-MD-TR-1-ONTIME-PER-Newcreateloan1.xlsx|Summary|Repayment Schedule|Transactions|
	 Then I make repayment and verified the following tabs
    	|4281-MS-EI-DB-SAR-REC-CTRFD-RNI-FEE-FFC-SAR-FFROP-DAILY-FIFR-1-MD-TR-1-ONTIME-PER-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
	 And I Navigate to Accounting web page
 	 And I search with transaction id & verified the accounting entries
    	|4281-MS-EI-DB-SAR-REC-CTRFD-RNI-FEE-FFC-SAR-FFROP-DAILY-FIFR-1-MD-TR-1-ONTIME-PER-Makerepayment1.xlsx|Acc_Disbursement|Acc_Repayment|Acc_Periodic|
	 
@4282-MS-EI-DB-SAR-REC-CTRFD-RNI-INT-FFC-SAR-FFROP-DAILY-FIFR-1-MD-TR-1-ONTIME-PER
Scenario:4282-MS-EI-DB-SAR-REC-CTRFD-RNI-INT-FFC-SAR-FFROP-DAILY-FIFR-1-MD-TR-1-ONTIME-PER
     Given I setup the product loan "Setup"
		| Productloannavigation.xlsx |
	 Then I entered the values into product loan from "ProductLoanInput" Sheet
		|4282-MS-EI-DB-SAR-REC-CTRFD-RNI-INT-FFC-SAR-FFROP-DAILY-FIFR-1-MD-TR-1-ONTIME-PER-Loanproduct.xlsx|
     Given I setup the group
	 When I entered the values into group from "Input" sheet
	  	|4282-MS-EI-DB-SAR-REC-CTRFD-RNI-INT-FFC-SAR-FFROP-DAILY-FIFR-1-MD-TR-1-ONTIME-PER-Newcreateloan1.xlsx|		  								  				  				  			
	 Then I entered the values into client from "Input" sheet
	 	|Createclient.xlsx|	 				  								  				  				  			
	 When I set up the new create loan from "NewLoanInput" sheet
	  	|4282-MS-EI-DB-SAR-REC-CTRFD-RNI-INT-FFC-SAR-FFROP-DAILY-FIFR-1-MD-TR-1-ONTIME-PER-Newcreateloan1.xlsx|
	 Then I navigate to scheduler job & execute "Periodic Accrual Transactions"
 	 Then I verified the following Tabs details successfully 
	    |4282-MS-EI-DB-SAR-REC-CTRFD-RNI-INT-FFC-SAR-FFROP-DAILY-FIFR-1-MD-TR-1-ONTIME-PER-Newcreateloan1.xlsx|Summary|Repayment Schedule|Transactions|
	 Then I make repayment and verified the following tabs
    	|4282-MS-EI-DB-SAR-REC-CTRFD-RNI-INT-FFC-SAR-FFROP-DAILY-FIFR-1-MD-TR-1-ONTIME-PER-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
	 And I Navigate to Accounting web page
 	 And I search with transaction id & verified the accounting entries
    	|4282-MS-EI-DB-SAR-REC-CTRFD-RNI-INT-FFC-SAR-FFROP-DAILY-FIFR-1-MD-TR-1-ONTIME-PER-Makerepayment1.xlsx|Acc_Disbursement|Acc_Repayment|Acc_Periodic|

@4283-MS-EI-DB-SAR-REC-CTRFD-RNI-FEE+INTEREST-FFC-SAR-FFROP-DAILY-FIFR-1-MD-TR-1-ONTIME-PER
Scenario:4283-MS-EI-DB-SAR-REC-CTRFD-RNI-FEE+INTEREST-FFC-SAR-FFROP-DAILY-FIFR-1-MD-TR-1-ONTIME-PER
     Given I setup the product loan "Setup"
		| Productloannavigation.xlsx |
	 Then I entered the values into product loan from "ProductLoanInput" Sheet
		|4283-MS-EI-DB-SAR-REC-CTRFD-RNI-FEE+INTEREST-FFC-SAR-FFROP-DAILY-FIFR-1-MD-TR-1-ONTIME-PER-Loanproduct.xlsx|
     Given I setup the group
	 When I entered the values into group from "Input" sheet
	  	|4283-MS-EI-DB-SAR-REC-CTRFD-RNI-FEE+INTEREST-FFC-SAR-FFROP-DAILY-FIFR-1-MD-TR-1-ONTIME-PER-Newcreateloan1.xlsx|		  								  				  				  			
	 Then I entered the values into client from "Input" sheet
	 	|Createclient.xlsx|	 				  								  				  				  			
	 When I set up the new create loan from "NewLoanInput" sheet
	  	|4283-MS-EI-DB-SAR-REC-CTRFD-RNI-FEE+INTEREST-FFC-SAR-FFROP-DAILY-FIFR-1-MD-TR-1-ONTIME-PER-Newcreateloan1.xlsx|
	 Then I navigate to scheduler job & execute "Periodic Accrual Transactions"
 	 Then I verified the following Tabs details successfully 
	    |4283-MS-EI-DB-SAR-REC-CTRFD-RNI-FEE+INTEREST-FFC-SAR-FFROP-DAILY-FIFR-1-MD-TR-1-ONTIME-PER-Newcreateloan1.xlsx|Summary|Repayment Schedule|Transactions|
	 Then I make repayment and verified the following tabs
    	|4283-MS-EI-DB-SAR-REC-CTRFD-RNI-FEE+INTEREST-FFC-SAR-FFROP-DAILY-FIFR-1-MD-TR-1-ONTIME-PER-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
	 And I Navigate to Accounting web page
 	 And I search with transaction id & verified the accounting entries
    	|4283-MS-EI-DB-SAR-REC-CTRFD-RNI-FEE+INTEREST-FFC-SAR-FFROP-DAILY-FIFR-1-MD-TR-1-ONTIME-PER-Makerepayment1.xlsx|Acc_Disbursement|Acc_Repayment|Acc_Periodic|

@4284-MS-EI-DB-SAR-REC-CTRFD-RNI-FEE-FFC-SAR-FFROP-DAILY-FIFR-1-MD-TR-1-MORE-PER
Scenario:4284-MS-EI-DB-SAR-REC-CTRFD-RNI-FEE-FFC-SAR-FFROP-DAILY-FIFR-1-MD-TR-1-MORE-PER
        Given I setup the group
	 When I entered the values into group from "Input" sheet
	  	|4284-MS-EI-DB-SAR-REC-CTRFD-RNI-FEE-FFC-SAR-FFROP-DAILY-FIFR-1-MD-TR-1-MORE-PER-Newcreateloan1.xlsx|		  								  				  				  			
	 Then I entered the values into client from "Input" sheet
	 	|Createclient.xlsx|	 				  								  				  				  			
	 When I set up the new create loan from "NewLoanInput" sheet
	  	|4284-MS-EI-DB-SAR-REC-CTRFD-RNI-FEE-FFC-SAR-FFROP-DAILY-FIFR-1-MD-TR-1-MORE-PER-Newcreateloan1.xlsx|
	 Then I navigate to scheduler job & execute "Periodic Accrual Transactions"
 	 Then I verified the following Tabs details successfully 
	    |4284-MS-EI-DB-SAR-REC-CTRFD-RNI-FEE-FFC-SAR-FFROP-DAILY-FIFR-1-MD-TR-1-MORE-PER-Newcreateloan1.xlsx|Summary|Repayment Schedule|Transactions|
	 Then I make repayment and verified the following tabs
    	|4284-MS-EI-DB-SAR-REC-CTRFD-RNI-FEE-FFC-SAR-FFROP-DAILY-FIFR-1-MD-TR-1-MORE-PER-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
	 And I Navigate to Accounting web page
 	 And I search with transaction id & verified the accounting entries
    	|4284-MS-EI-DB-SAR-REC-CTRFD-RNI-FEE-FFC-SAR-FFROP-DAILY-FIFR-1-MD-TR-1-MORE-PER-Makerepayment1.xlsx|Acc_Disbursement|Acc_Repayment|Acc_Periodic|

@4285-MS-EI-DB-SAR-REC-CTRFD-RNI-INT-FFC-SAR-FFROP-DAILY-FIFR-1-MD-TR-1-MORE-PER
Scenario:4285-MS-EI-DB-SAR-REC-CTRFD-RNI-INT-FFC-SAR-FFROP-DAILY-FIFR-1-MD-TR-1-MORE-PER
     Given I setup the group
	 When I entered the values into group from "Input" sheet
	  	|4285-MS-EI-DB-SAR-REC-CTRFD-RNI-INT-FFC-SAR-FFROP-DAILY-FIFR-1-MD-TR-1-MORE-PER-Newcreateloan1.xlsx|		  								  				  				  			
	 Then I entered the values into client from "Input" sheet
	 	|Createclient.xlsx|	 				  								  				  				  			
	 When I set up the new create loan from "NewLoanInput" sheet
	  	|4285-MS-EI-DB-SAR-REC-CTRFD-RNI-INT-FFC-SAR-FFROP-DAILY-FIFR-1-MD-TR-1-MORE-PER-Newcreateloan1.xlsx|
	 Then I navigate to scheduler job & execute "Periodic Accrual Transactions"
 	 Then I verified the following Tabs details successfully 
	    |4285-MS-EI-DB-SAR-REC-CTRFD-RNI-INT-FFC-SAR-FFROP-DAILY-FIFR-1-MD-TR-1-MORE-PER-Newcreateloan1.xlsx|Summary|Repayment Schedule|Transactions|
	 Then I make repayment and verified the following tabs
    	|4285-MS-EI-DB-SAR-REC-CTRFD-RNI-INT-FFC-SAR-FFROP-DAILY-FIFR-1-MD-TR-1-MORE-PER-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
	 And I Navigate to Accounting web page
 	 And I search with transaction id & verified the accounting entries
    	|4285-MS-EI-DB-SAR-REC-CTRFD-RNI-INT-FFC-SAR-FFROP-DAILY-FIFR-1-MD-TR-1-MORE-PER-Makerepayment1.xlsx|Acc_Disbursement|Acc_Repayment|Acc_Periodic|

@4286-MS-EI-DB-SAR-REC-CTRFD-RNI-FEE+INTEREST-FFC-SAR-FFROP-DAILY-FIFR-1-MD-TR-1-MORE-PER
Scenario:4286-MS-EI-DB-SAR-REC-CTRFD-RNI-FEE+INTEREST-FFC-SAR-FFROP-DAILY-FIFR-1-MD-TR-1-MORE-PER
          Given I setup the group
	 When I entered the values into group from "Input" sheet
	  	|4286-MS-EI-DB-SAR-REC-CTRFD-RNI-FEE+INTEREST-FFC-SAR-FFROP-DAILY-FIFR-1-MD-TR-1-MORE-PER-Newcreateloan1.xlsx|		  								  				  				  			
	 Then I entered the values into client from "Input" sheet
	 	|Createclient.xlsx|	 				  								  				  				  			
	 When I set up the new create loan from "NewLoanInput" sheet
	  	|4286-MS-EI-DB-SAR-REC-CTRFD-RNI-FEE+INTEREST-FFC-SAR-FFROP-DAILY-FIFR-1-MD-TR-1-MORE-PER-Newcreateloan1.xlsx|
	 Then I navigate to scheduler job & execute "Periodic Accrual Transactions"
 	 Then I verified the following Tabs details successfully 
	    |4286-MS-EI-DB-SAR-REC-CTRFD-RNI-FEE+INTEREST-FFC-SAR-FFROP-DAILY-FIFR-1-MD-TR-1-MORE-PER-Newcreateloan1.xlsx|Summary|Repayment Schedule|Transactions|
	 Then I make repayment and verified the following tabs
    	|4286-MS-EI-DB-SAR-REC-CTRFD-RNI-FEE+INTEREST-FFC-SAR-FFROP-DAILY-FIFR-1-MD-TR-1-MORE-PER-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
	 And I Navigate to Accounting web page
 	 And I search with transaction id & verified the accounting entries
    	|4286-MS-EI-DB-SAR-REC-CTRFD-RNI-FEE+INTEREST-FFC-SAR-FFROP-DAILY-FIFR-1-MD-TR-1-MORE-PER-Makerepayment1.xlsx|Acc_Disbursement|Acc_Repayment|Acc_Periodic|

@4287-MS-EI-DB-SAR-REC-CTRFD-RNI-FEE-FFC-SAR-FFROP-DAILY-FIFR-1-MD-TR-1-LESS-PER
Scenario:4287-MS-EI-DB-SAR-REC-CTRFD-RNI-FEE-FFC-SAR-FFROP-DAILY-FIFR-1-MD-TR-1-LESS-PER
          Given I setup the group
	 When I entered the values into group from "Input" sheet
	  	|4287-MS-EI-DB-SAR-REC-CTRFD-RNI-FEE-FFC-SAR-FFROP-DAILY-FIFR-1-MD-TR-1-LESS-PER-Newcreateloan1.xlsx|		  								  				  				  			
	 Then I entered the values into client from "Input" sheet
	 	|Createclient.xlsx|	 				  								  				  				  			
	 When I set up the new create loan from "NewLoanInput" sheet
	  	|4287-MS-EI-DB-SAR-REC-CTRFD-RNI-FEE-FFC-SAR-FFROP-DAILY-FIFR-1-MD-TR-1-LESS-PER-Newcreateloan1.xlsx|
	 Then I navigate to scheduler job & execute "Periodic Accrual Transactions"
 	 Then I verified the following Tabs details successfully 
	    |4287-MS-EI-DB-SAR-REC-CTRFD-RNI-FEE-FFC-SAR-FFROP-DAILY-FIFR-1-MD-TR-1-LESS-PER-Newcreateloan1.xlsx|Summary|Repayment Schedule|Transactions|
	 Then I make repayment and verified the following tabs
    	|4287-MS-EI-DB-SAR-REC-CTRFD-RNI-FEE-FFC-SAR-FFROP-DAILY-FIFR-1-MD-TR-1-LESS-PER-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
	 And I Navigate to Accounting web page
 	 And I search with transaction id & verified the accounting entries
    	|4287-MS-EI-DB-SAR-REC-CTRFD-RNI-FEE-FFC-SAR-FFROP-DAILY-FIFR-1-MD-TR-1-LESS-PER-Makerepayment1.xlsx|Acc_Disbursement|Acc_Repayment|Acc_Periodic|

@4288-MS-EI-DB-SAR-REC-CTRFD-RNI-INT-FFC-SAR-FFROP-DAILY-FIFR-1-MD-TR-1-LESS-PER
Scenario:4288-MS-EI-DB-SAR-REC-CTRFD-RNI-INT-FFC-SAR-FFROP-DAILY-FIFR-1-MD-TR-1-LESS-PER
          Given I setup the group
	 When I entered the values into group from "Input" sheet
	  	|4288-MS-EI-DB-SAR-REC-CTRFD-RNI-INT-FFC-SAR-FFROP-DAILY-FIFR-1-MD-TR-1-LESS-PER-Newcreateloan1.xlsx|		  								  				  				  			
	 Then I entered the values into client from "Input" sheet
	 	|Createclient.xlsx|	 				  								  				  				  			
	 When I set up the new create loan from "NewLoanInput" sheet
	  	|4288-MS-EI-DB-SAR-REC-CTRFD-RNI-INT-FFC-SAR-FFROP-DAILY-FIFR-1-MD-TR-1-LESS-PER-Newcreateloan1.xlsx|
	 Then I navigate to scheduler job & execute "Periodic Accrual Transactions"
 	 Then I verified the following Tabs details successfully 
	    |4288-MS-EI-DB-SAR-REC-CTRFD-RNI-INT-FFC-SAR-FFROP-DAILY-FIFR-1-MD-TR-1-LESS-PER-Newcreateloan1.xlsx|Summary|Repayment Schedule|Transactions|
	 Then I make repayment and verified the following tabs
    	|4288-MS-EI-DB-SAR-REC-CTRFD-RNI-INT-FFC-SAR-FFROP-DAILY-FIFR-1-MD-TR-1-LESS-PER-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
	 And I Navigate to Accounting web page
 	 And I search with transaction id & verified the accounting entries
    	|4288-MS-EI-DB-SAR-REC-CTRFD-RNI-INT-FFC-SAR-FFROP-DAILY-FIFR-1-MD-TR-1-LESS-PER-Makerepayment1.xlsx|Acc_Disbursement|Acc_Repayment|Acc_Periodic|

@4289-MS-EI-DB-SAR-REC-CTRFD-RNI-FEE+INTEREST-FFC-SAR-FFROP-DAILY-FIFR-1-MD-TR-1-LESS-PER
Scenario:4289-MS-EI-DB-SAR-REC-CTRFD-RNI-FEE+INTEREST-FFC-SAR-FFROP-DAILY-FIFR-1-MD-TR-1-LESS-PER
     Given I setup the group
	 When I entered the values into group from "Input" sheet
	  	|4289-MS-EI-DB-SAR-REC-CTRFD-RNI-FEE+INTEREST-FFC-SAR-FFROP-DAILY-FIFR-1-MD-TR-1-LESS-PER-Newcreateloan1.xlsx|		  								  				  				  			
	 Then I entered the values into client from "Input" sheet
	 	|Createclient.xlsx|	 				  								  				  				  			
	 When I set up the new create loan from "NewLoanInput" sheet
	  	|4289-MS-EI-DB-SAR-REC-CTRFD-RNI-FEE+INTEREST-FFC-SAR-FFROP-DAILY-FIFR-1-MD-TR-1-LESS-PER-Newcreateloan1.xlsx|
	 Then I navigate to scheduler job & execute "Periodic Accrual Transactions"
 	 Then I verified the following Tabs details successfully 
	    |4289-MS-EI-DB-SAR-REC-CTRFD-RNI-FEE+INTEREST-FFC-SAR-FFROP-DAILY-FIFR-1-MD-TR-1-LESS-PER-Newcreateloan1.xlsx|Summary|Repayment Schedule|Transactions|
	 Then I make repayment and verified the following tabs
    	|4289-MS-EI-DB-SAR-REC-CTRFD-RNI-FEE+INTEREST-FFC-SAR-FFROP-DAILY-FIFR-1-MD-TR-1-LESS-PER-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
	 And I Navigate to Accounting web page
 	 And I search with transaction id & verified the accounting entries
    	|4289-MS-EI-DB-SAR-REC-CTRFD-RNI-FEE+INTEREST-FFC-SAR-FFROP-DAILY-FIFR-1-MD-TR-1-LESS-PER-Makerepayment1.xlsx|Acc_Disbursement|Acc_Repayment|Acc_Periodic|

@4290-MS-EI-DB-SAR-REC-RNI-FEE-FFConMONTHLYonDAY25-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-ONTIME-PER
Scenario:4290-MS-EI-DB-SAR-REC-RNI-FEE-FFConMONTHLYonDAY25-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-ONTIME-PER
     Given I setup the product loan "Setup"
		| Productloannavigation.xlsx |
	 Then I entered the values into product loan from "ProductLoanInput" Sheet
		|4290-MS-EI-DB-SAR-REC-RNI-FEE-FFConMONTHLYonDAY25-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-ONTIME-PER-Loanproduct.xlsx|
     Given I setup the group
	 When I entered the values into group from "Input" sheet
	  	|4290-MS-EI-DB-SAR-REC-RNI-FEE-FFConMONTHLYonDAY25-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-ONTIME-PER-Newcreateloan1.xlsx|		  								  				  				  			
	 Then I entered the values into client from "Input" sheet
	 	|Createclient.xlsx|	 				  								  				  				  			
	 When I set up the new create loan from "NewLoanInput" sheet
	  	|4290-MS-EI-DB-SAR-REC-RNI-FEE-FFConMONTHLYonDAY25-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-ONTIME-PER-Newcreateloan1.xlsx|
	 Then I navigate to scheduler job & execute "Periodic Accrual Transactions"
 	 Then I verified the following Tabs details successfully 
	    |4290-MS-EI-DB-SAR-REC-RNI-FEE-FFConMONTHLYonDAY25-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-ONTIME-PER-Newcreateloan1.xlsx|Summary|Repayment Schedule|Transactions|
	 Then I make repayment and verified the following tabs
    	|4290-MS-EI-DB-SAR-REC-RNI-FEE-FFConMONTHLYonDAY25-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-ONTIME-PER-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
	 And I Navigate to Accounting web page
 	 And I search with transaction id & verified the accounting entries
    	|4290-MS-EI-DB-SAR-REC-RNI-FEE-FFConMONTHLYonDAY25-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-ONTIME-PER-Makerepayment1.xlsx|Acc_Disbursement|Acc_Repayment|Acc_Periodic|

@4291-MS-EI-DB-SAR-REC-RNI-INT-FFConMONTHLYonDAY25-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-ONTIME-PER
Scenario:4291-MS-EI-DB-SAR-REC-RNI-INT-FFConMONTHLYonDAY25-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-ONTIME-PER
     
     Given I setup the product loan "Setup"
		| Productloannavigation.xlsx |
	 Then I entered the values into product loan from "ProductLoanInput" Sheet
		|4291-MS-EI-DB-SAR-REC-RNI-INT-FFConMONTHLYonDAY25-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-ONTIME-PER-Loanproduct.xlsx|
     Given I setup the group
	 When I entered the values into group from "Input" sheet
	  	|4291-MS-EI-DB-SAR-REC-RNI-INT-FFConMONTHLYonDAY25-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-ONTIME-PER-Newcreateloan1.xlsx|		  								  				  				  			
	 Then I entered the values into client from "Input" sheet
	 	|Createclient.xlsx|	 				  								  				  				  			
	 When I set up the new create loan from "NewLoanInput" sheet
	  	|4291-MS-EI-DB-SAR-REC-RNI-INT-FFConMONTHLYonDAY25-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-ONTIME-PER-Newcreateloan1.xlsx|
	 Then I navigate to scheduler job & execute "Periodic Accrual Transactions"
 	 Then I verified the following Tabs details successfully 
	    |4291-MS-EI-DB-SAR-REC-RNI-INT-FFConMONTHLYonDAY25-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-ONTIME-PER-Newcreateloan1.xlsx|Summary|Repayment Schedule|Transactions|
	 Then I make repayment and verified the following tabs
    	|4291-MS-EI-DB-SAR-REC-RNI-INT-FFConMONTHLYonDAY25-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-ONTIME-PER-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
	 And I Navigate to Accounting web page
 	 And I search with transaction id & verified the accounting entries
    	|4291-MS-EI-DB-SAR-REC-RNI-INT-FFConMONTHLYonDAY25-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-ONTIME-PER-Makerepayment1.xlsx|Acc_Disbursement|Acc_Repayment|Acc_Periodic|

@4292-MS-EI-DB-SAR-REC-RNI-FEE+INTEREST-FFConMONTHLYonDAY25-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-ONTIME-PER
Scenario:4292-MS-EI-DB-SAR-REC-RNI-FEE+INTEREST-FFConMONTHLYonDAY25-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-ONTIME-PER
     Given I setup the product loan "Setup"
		| Productloannavigation.xlsx |
	 Then I entered the values into product loan from "ProductLoanInput" Sheet
		|4292-MS-EI-DB-SAR-REC-RNI-FEE+INT-FFConMONTHLYonDAY25-FIFC-1-FFROP-DL-FIFR-1-MD-TR-1-ONT-PER-Loanproduct.xlsx|
     Given I setup the group
	 When I entered the values into group from "Input" sheet
	  	|4292-MS-EI-DB-SAR-REC-RNI-FEE+INTEREST-FFConMONTHLYonDAY25-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-ONTIME-PER-Newcreateloan1.xlsx|		  								  				  				  			
	 Then I entered the values into client from "Input" sheet
	 	|Createclient.xlsx|	 				  								  				  				  			
	 When I set up the new create loan from "NewLoanInput" sheet
	  	|4292-MS-EI-DB-SAR-REC-RNI-FEE+INTEREST-FFConMONTHLYonDAY25-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-ONTIME-PER-Newcreateloan1.xlsx|
	 Then I navigate to scheduler job & execute "Periodic Accrual Transactions"
 	 Then I verified the following Tabs details successfully 
	    |4292-MS-EI-DB-SAR-REC-RNI-FEE+INTEREST-FFConMONTHLYonDAY25-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-ONTIME-PER-Newcreateloan1.xlsx|Summary|Repayment Schedule|Transactions|
	 Then I make repayment and verified the following tabs
    	|4292-MS-EI-DB-SAR-REC-RNI-FEE+INTEREST-FFConMONTHLYonDAY25-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-ONTIME-PER-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
	 And I Navigate to Accounting web page
 	 And I search with transaction id & verified the accounting entries
    	|4292-MS-EI-DB-SAR-REC-RNI-FEE+INTEREST-FFConMONTHLYonDAY25-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-ONTIME-PER-Makerepayment1.xlsx|Acc_Disbursement|Acc_Repayment|Acc_Periodic|

@4293-MS-EI-DB-SAR-REC-RNI-FEE-FFConMONTHLYonDAY25-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-MORE-PER
Scenario:4293-MS-EI-DB-SAR-REC-RNI-FEE-FFConMONTHLYonDAY25-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-MORE-PER
     Given I setup the group
	 When I entered the values into group from "Input" sheet
	  	|4293-MS-EI-DB-SAR-REC-RNI-FEE-FFConMONTHLYonDAY25-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-MORE-PER-Newcreateloan1.xlsx|		  								  				  				  			
	 Then I entered the values into client from "Input" sheet
	 	|Createclient.xlsx|	 				  								  				  				  			
	 When I set up the new create loan from "NewLoanInput" sheet
	  	|4293-MS-EI-DB-SAR-REC-RNI-FEE-FFConMONTHLYonDAY25-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-MORE-PER-Newcreateloan1.xlsx|
	 Then I navigate to scheduler job & execute "Periodic Accrual Transactions"
 	 Then I verified the following Tabs details successfully 
	    |4293-MS-EI-DB-SAR-REC-RNI-FEE-FFConMONTHLYonDAY25-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-MORE-PER-Newcreateloan1.xlsx|Summary|Repayment Schedule|Transactions|
	 Then I make repayment and verified the following tabs
    	|4293-MS-EI-DB-SAR-REC-RNI-FEE-FFConMONTHLYonDAY25-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-MORE-PER-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
	 And I Navigate to Accounting web page
 	 And I search with transaction id & verified the accounting entries
    	|4293-MS-EI-DB-SAR-REC-RNI-FEE-FFConMONTHLYonDAY25-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-MORE-PER-Makerepayment1.xlsx|Acc_Disbursement|Acc_Repayment|Acc_Periodic|

@4294-MS-EI-DB-SAR-REC-RNI-INT-FFConMONTHLYonDAY25-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-MORE-PER
Scenario:4294-MS-EI-DB-SAR-REC-RNI-INT-FFConMONTHLYonDAY25-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-MORE-PER
          Given I setup the group
	 When I entered the values into group from "Input" sheet
	  	|4294-MS-EI-DB-SAR-REC-RNI-INT-FFConMONTHLYonDAY25-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-MORE-PER-Newcreateloan1.xlsx|		  								  				  				  			
	 Then I entered the values into client from "Input" sheet
	 	|Createclient.xlsx|	 				  								  				  				  			
	 When I set up the new create loan from "NewLoanInput" sheet
	  	|4294-MS-EI-DB-SAR-REC-RNI-INT-FFConMONTHLYonDAY25-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-MORE-PER-Newcreateloan1.xlsx|
	 Then I navigate to scheduler job & execute "Periodic Accrual Transactions"
 	 Then I verified the following Tabs details successfully 
	    |4294-MS-EI-DB-SAR-REC-RNI-INT-FFConMONTHLYonDAY25-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-MORE-PER-Newcreateloan1.xlsx|Summary|Repayment Schedule|Transactions|
	 Then I make repayment and verified the following tabs
    	|4294-MS-EI-DB-SAR-REC-RNI-INT-FFConMONTHLYonDAY25-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-MORE-PER-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
	 And I Navigate to Accounting web page
 	 And I search with transaction id & verified the accounting entries
    	|4294-MS-EI-DB-SAR-REC-RNI-INT-FFConMONTHLYonDAY25-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-MORE-PER-Makerepayment1.xlsx|Acc_Disbursement|Acc_Repayment|Acc_Periodic|

@4295-MS-EI-DB-SAR-REC-RNI-FEE+INTEREST-FFConMONTHLYonDAY25-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-MORE-PER
Scenario:4295-MS-EI-DB-SAR-REC-RNI-FEE+INTEREST-FFConMONTHLYonDAY25-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-MORE-PER
          Given I setup the group
	 When I entered the values into group from "Input" sheet
	  	|4295-MS-EI-DB-SAR-REC-RNI-FEE+INTEREST-FFConMONTHLYonDAY25-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-MORE-PER-Newcreateloan1.xlsx|		  								  				  				  			
	 Then I entered the values into client from "Input" sheet
	 	|Createclient.xlsx|	 				  								  				  				  			
	 When I set up the new create loan from "NewLoanInput" sheet
	  	|4295-MS-EI-DB-SAR-REC-RNI-FEE+INTEREST-FFConMONTHLYonDAY25-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-MORE-PER-Newcreateloan1.xlsx|
	 Then I navigate to scheduler job & execute "Periodic Accrual Transactions"
 	 Then I verified the following Tabs details successfully 
	    |4295-MS-EI-DB-SAR-REC-RNI-FEE+INTEREST-FFConMONTHLYonDAY25-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-MORE-PER-Newcreateloan1.xlsx|Summary|Repayment Schedule|Transactions|
	 Then I make repayment and verified the following tabs
    	|4295-MS-EI-DB-SAR-REC-RNI-FEE+INTEREST-FFConMONTHLYonDAY25-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-MORE-PER-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
	 And I Navigate to Accounting web page
 	 And I search with transaction id & verified the accounting entries
    	|4295-MS-EI-DB-SAR-REC-RNI-FEE+INTEREST-FFConMONTHLYonDAY25-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-MORE-PER-Makerepayment1.xlsx|Acc_Disbursement|Acc_Repayment|Acc_Periodic|

@4296-MS-EI-DB-SAR-REC-RNI-FEE-FFConMONTHLYonDAY25-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-LESS-PER
Scenario:4296-MS-EI-DB-SAR-REC-RNI-FEE-FFConMONTHLYonDAY25-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-LESS-PER
          Given I setup the group
	 When I entered the values into group from "Input" sheet
	  	|4296-MS-EI-DB-SAR-REC-RNI-FEE-FFConMONTHLYonDAY25-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-LESS-PER-Newcreateloan1.xlsx|		  								  				  				  			
	 Then I entered the values into client from "Input" sheet
	 	|Createclient.xlsx|	 				  								  				  				  			
	 When I set up the new create loan from "NewLoanInput" sheet
	  	|4296-MS-EI-DB-SAR-REC-RNI-FEE-FFConMONTHLYonDAY25-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-LESS-PER-Newcreateloan1.xlsx|
	 Then I navigate to scheduler job & execute "Periodic Accrual Transactions"
 	 Then I verified the following Tabs details successfully 
	    |4296-MS-EI-DB-SAR-REC-RNI-FEE-FFConMONTHLYonDAY25-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-LESS-PER-Newcreateloan1.xlsx|Summary|Repayment Schedule|Transactions|
	 Then I make repayment and verified the following tabs
    	|4296-MS-EI-DB-SAR-REC-RNI-FEE-FFConMONTHLYonDAY25-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-LESS-PER-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
	 And I Navigate to Accounting web page
 	 And I search with transaction id & verified the accounting entries
    	|4296-MS-EI-DB-SAR-REC-RNI-FEE-FFConMONTHLYonDAY25-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-LESS-PER-Makerepayment1.xlsx|Acc_Disbursement|Acc_Repayment|Acc_Periodic|

@4297-MS-EI-DB-SAR-REC-RNI-INT-FFConMONTHLYonDAY25-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-LESS-PER
Scenario:4297-MS-EI-DB-SAR-REC-RNI-INT-FFConMONTHLYonDAY25-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-LESS-PER
          Given I setup the group
	 When I entered the values into group from "Input" sheet
	  	|4297-MS-EI-DB-SAR-REC-RNI-INT-FFConMONTHLYonDAY25-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-LESS-PER-Newcreateloan1.xlsx|		  								  				  				  			
	 Then I entered the values into client from "Input" sheet
	 	|Createclient.xlsx|	 				  								  				  				  			
	 When I set up the new create loan from "NewLoanInput" sheet
	  	|4297-MS-EI-DB-SAR-REC-RNI-INT-FFConMONTHLYonDAY25-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-LESS-PER-Newcreateloan1.xlsx|
	 Then I navigate to scheduler job & execute "Periodic Accrual Transactions"
 	 Then I verified the following Tabs details successfully 
	    |4297-MS-EI-DB-SAR-REC-RNI-INT-FFConMONTHLYonDAY25-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-LESS-PER-Newcreateloan1.xlsx|Summary|Repayment Schedule|Transactions|
	 Then I make repayment and verified the following tabs
    	|4297-MS-EI-DB-SAR-REC-RNI-INT-FFConMONTHLYonDAY25-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-LESS-PER-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
	 And I Navigate to Accounting web page
 	 And I search with transaction id & verified the accounting entries
    	|4297-MS-EI-DB-SAR-REC-RNI-INT-FFConMONTHLYonDAY25-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-LESS-PER-Makerepayment1.xlsx|Acc_Disbursement|Acc_Repayment|Acc_Periodic|

@4298-MS-EI-DB-SAR-REC-RNI-FEE+INTEREST-FFConMONTHLYonDAY25-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-LESS-PER
Scenario:4298-MS-EI-DB-SAR-REC-RNI-FEE+INTEREST-FFConMONTHLYonDAY25-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-LESS-PER
          Given I setup the group
	 When I entered the values into group from "Input" sheet
	  	|4298-MS-EI-DB-SAR-REC-RNI-FEE+INTEREST-FFConMONTHLYonDAY25-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-LESS-PER-Newcreateloan1.xlsx|		  								  				  				  			
	 Then I entered the values into client from "Input" sheet
	 	|Createclient.xlsx|	 				  								  				  				  			
	 When I set up the new create loan from "NewLoanInput" sheet
	  	|4298-MS-EI-DB-SAR-REC-RNI-FEE+INTEREST-FFConMONTHLYonDAY25-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-LESS-PER-Newcreateloan1.xlsx|
	 Then I navigate to scheduler job & execute "Periodic Accrual Transactions"
 	 Then I verified the following Tabs details successfully 
	    |4298-MS-EI-DB-SAR-REC-RNI-FEE+INTEREST-FFConMONTHLYonDAY25-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-LESS-PER-Newcreateloan1.xlsx|Summary|Repayment Schedule|Transactions|
	 Then I make repayment and verified the following tabs
    	|4298-MS-EI-DB-SAR-REC-RNI-FEE+INTEREST-FFConMONTHLYonDAY25-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-LESS-PER-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
	 And I Navigate to Accounting web page
 	 And I search with transaction id & verified the accounting entries
    	|4298-MS-EI-DB-SAR-REC-RNI-FEE+INTEREST-FFConMONTHLYonDAY25-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-LESS-PER-Makerepayment1.xlsx|Acc_Disbursement|Acc_Repayment|Acc_Periodic|

@4299-MS-EI-DB-SAR-REC-RNI-FEE-FFConMONTHLYonLASTSUNDAY-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-ONTIME-PER
Scenario:4299-MS-EI-DB-SAR-REC-RNI-FEE-FFConMONTHLYonLASTSUNDAY-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-ONTIME-PER
     Given I setup the product loan "Setup"
		| Productloannavigation.xlsx |
	 Then I entered the values into product loan from "ProductLoanInput" Sheet
		|4299-MS-EI-DB-SAR-REC-RNI-FEE-FFConMONTHLYonLASTSUNDAY-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-ONTIME-PER-Loanproduct.xlsx|
     Given I setup the group
	 When I entered the values into group from "Input" sheet
	  	|4299-MS-EI-DB-SAR-REC-RNI-FEE-FFConMONTHLYonLASTSUNDAY-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-ONTIME-PER-Newcreateloan1.xlsx|		  								  				  				  			
	 Then I entered the values into client from "Input" sheet
	 	|Createclient.xlsx|	 				  								  				  				  			
	 When I set up the new create loan from "NewLoanInput" sheet
	  	|4299-MS-EI-DB-SAR-REC-RNI-FEE-FFConMONTHLYonLASTSUNDAY-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-ONTIME-PER-Newcreateloan1.xlsx|
	 Then I navigate to scheduler job & execute "Periodic Accrual Transactions"
 	 Then I verified the following Tabs details successfully 
	    |4299-MS-EI-DB-SAR-REC-RNI-FEE-FFConMONTHLYonLASTSUNDAY-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-ONTIME-PER-Newcreateloan1.xlsx|Summary|Repayment Schedule|Transactions|
	 Then I make repayment and verified the following tabs
    	|4299-MS-EI-DB-SAR-REC-RNI-FEE-FFConMONTHLYonLASTSUNDAY-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-ONTIME-PER-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
	 And I Navigate to Accounting web page
 	 And I search with transaction id & verified the accounting entries
    	|4299-MS-EI-DB-SAR-REC-RNI-FEE-FFConMONTHLYonLASTSUNDAY-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-ONTIME-PER-Makerepayment1.xlsx|Acc_Disbursement|Acc_Repayment|Acc_Periodic|

@4300-MS-EI-DB-SAR-REC-RNI-INT-FFConMONTHLYonLASTSUNDAY-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-ONTIME-PER
Scenario:4300-MS-EI-DB-SAR-REC-RNI-INT-FFConMONTHLYonLASTSUNDAY-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-ONTIME-PER
     Given I setup the product loan "Setup"
		| Productloannavigation.xlsx |
	 Then I entered the values into product loan from "ProductLoanInput" Sheet
		|4300-MS-EI-DB-SAR-REC-RNI-INT-FFConMONTHLYonLASTSUNDAY-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-ONTIME-PER-Loanproduct.xlsx|
     Given I setup the group
	 When I entered the values into group from "Input" sheet
	  	|4300-MS-EI-DB-SAR-REC-RNI-INT-FFConMONTHLYonLASTSUNDAY-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-ONTIME-PER-Newcreateloan1.xlsx|		  								  				  				  			
	 Then I entered the values into client from "Input" sheet
	 	|Createclient.xlsx|	 				  								  				  				  			
	 When I set up the new create loan from "NewLoanInput" sheet
	  	|4300-MS-EI-DB-SAR-REC-RNI-INT-FFConMONTHLYonLASTSUNDAY-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-ONTIME-PER-Newcreateloan1.xlsx|
	 Then I navigate to scheduler job & execute "Periodic Accrual Transactions"
 	 Then I verified the following Tabs details successfully 
	    |4300-MS-EI-DB-SAR-REC-RNI-INT-FFConMONTHLYonLASTSUNDAY-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-ONTIME-PER-Newcreateloan1.xlsx|Summary|Repayment Schedule|Transactions|
	 Then I make repayment and verified the following tabs
    	|4300-MS-EI-DB-SAR-REC-RNI-INT-FFConMONTHLYonLASTSUNDAY-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-ONTIME-PER-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
	 And I Navigate to Accounting web page
 	 And I search with transaction id & verified the accounting entries
    	|4300-MS-EI-DB-SAR-REC-RNI-INT-FFConMONTHLYonLASTSUNDAY-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-ONTIME-PER-Makerepayment1.xlsx|Acc_Disbursement|Acc_Repayment|Acc_Periodic|

@4301-MS-EI-DB-SAR-REC-RNI-FEE+INTEREST-FFConMONTHLYonLASTSUNDAY-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-ONTIME-PER
Scenario:4301-MS-EI-DB-SAR-REC-RNI-FEE+INTEREST-FFConMONTHLYonLASTSUNDAY-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-ONTIME-PER
     Given I setup the product loan "Setup"
		| Productloannavigation.xlsx |
	 Then I entered the values into product loan from "ProductLoanInput" Sheet
		|4301-MS-EI-DB-SAR-REC-RNI-FEE+INT-FFConMONTHLYonLASTSUNDAY-FIFC-1-FFROP-DL-FIFR-1-MD-TR-1-ONT-PER-Loanproduct.xlsx|
     Given I setup the group
	 When I entered the values into group from "Input" sheet
	  	|4301-MS-EI-DB-SAR-REC-RNI-FEE+INTEREST-FFConMONTHLYonLASTSUNDAY-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-ONTIME-PER-Newcreateloan1.xlsx|		  								  				  				  			
	 Then I entered the values into client from "Input" sheet
	 	|Createclient.xlsx|	 				  								  				  				  			
	 When I set up the new create loan from "NewLoanInput" sheet
	  	|4301-MS-EI-DB-SAR-REC-RNI-FEE+INTEREST-FFConMONTHLYonLASTSUNDAY-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-ONTIME-PER-Newcreateloan1.xlsx|
	 Then I navigate to scheduler job & execute "Periodic Accrual Transactions"
 	 Then I verified the following Tabs details successfully 
	    |4301-MS-EI-DB-SAR-REC-RNI-FEE+INTEREST-FFConMONTHLYonLASTSUNDAY-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-ONTIME-PER-Newcreateloan1.xlsx|Summary|Repayment Schedule|Transactions|
	 Then I make repayment and verified the following tabs
    	|4301-MS-EI-DB-SAR-REC-RNI-FEE+INTEREST-FFConMONTHLYonLASTSUNDAY-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-ONTIME-PER-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
	 And I Navigate to Accounting web page
 	 And I search with transaction id & verified the accounting entries
    	|4301-MS-EI-DB-SAR-REC-RNI-FEE+INTEREST-FFConMONTHLYonLASTSUNDAY-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-ONTIME-PER-Makerepayment1.xlsx|Acc_Disbursement|Acc_Repayment|Acc_Periodic|

@4302-MS-EI-DB-SAR-REC-RNI-FEE-FFConMONTHLYonLASTSUNDAY-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-MORE-PER
Scenario:4302-MS-EI-DB-SAR-REC-RNI-FEE-FFConMONTHLYonLASTSUNDAY-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-MORE-PER
          Given I setup the group
	 When I entered the values into group from "Input" sheet
	  	|4302-MS-EI-DB-SAR-REC-RNI-FEE-FFConMONTHLYonLASTSUNDAY-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-MORE-PER-Newcreateloan1.xlsx|		  								  				  				  			
	 Then I entered the values into client from "Input" sheet
	 	|Createclient.xlsx|	 				  								  				  				  			
	 When I set up the new create loan from "NewLoanInput" sheet
	  	|4302-MS-EI-DB-SAR-REC-RNI-FEE-FFConMONTHLYonLASTSUNDAY-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-MORE-PER-Newcreateloan1.xlsx|
	 Then I navigate to scheduler job & execute "Periodic Accrual Transactions"
 	 Then I verified the following Tabs details successfully 
	    |4302-MS-EI-DB-SAR-REC-RNI-FEE-FFConMONTHLYonLASTSUNDAY-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-MORE-PER-Newcreateloan1.xlsx|Summary|Repayment Schedule|Transactions|
	 Then I make repayment and verified the following tabs
    	|4302-MS-EI-DB-SAR-REC-RNI-FEE-FFConMONTHLYonLASTSUNDAY-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-MORE-PER-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
	 And I Navigate to Accounting web page
 	 And I search with transaction id & verified the accounting entries
    	|4302-MS-EI-DB-SAR-REC-RNI-FEE-FFConMONTHLYonLASTSUNDAY-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-MORE-PER-Makerepayment1.xlsx|Acc_Disbursement|Acc_Repayment|Acc_Periodic|

@4303-MS-EI-DB-SAR-REC-RNI-INT-FFConMONTHLYonLASTSUNDAY-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-MORE-PER
Scenario:4303-MS-EI-DB-SAR-REC-RNI-INT-FFConMONTHLYonLASTSUNDAY-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-MORE-PER
          Given I setup the group
	 When I entered the values into group from "Input" sheet
	  	|4303-MS-EI-DB-SAR-REC-RNI-INT-FFConMONTHLYonLASTSUNDAY-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-MORE-PER-Newcreateloan1.xlsx|		  								  				  				  			
	 Then I entered the values into client from "Input" sheet
	 	|Createclient.xlsx|	 				  								  				  				  			
	 When I set up the new create loan from "NewLoanInput" sheet
	  	|4303-MS-EI-DB-SAR-REC-RNI-INT-FFConMONTHLYonLASTSUNDAY-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-MORE-PER-Newcreateloan1.xlsx|
	 Then I navigate to scheduler job & execute "Periodic Accrual Transactions"
 	 Then I verified the following Tabs details successfully 
	    |4303-MS-EI-DB-SAR-REC-RNI-INT-FFConMONTHLYonLASTSUNDAY-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-MORE-PER-Newcreateloan1.xlsx|Summary|Repayment Schedule|Transactions|
	 Then I make repayment and verified the following tabs
    	|4303-MS-EI-DB-SAR-REC-RNI-INT-FFConMONTHLYonLASTSUNDAY-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-MORE-PER-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
	 And I Navigate to Accounting web page
 	 And I search with transaction id & verified the accounting entries
    	|4303-MS-EI-DB-SAR-REC-RNI-INT-FFConMONTHLYonLASTSUNDAY-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-MORE-PER-Makerepayment1.xlsx|Acc_Disbursement|Acc_Repayment|Acc_Periodic|

@4304-MS-EI-DB-SAR-REC-RNI-FEE+INTEREST-FFConMONTHLYonLASTSUNDAY-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-MORE-PER
Scenario:4304-MS-EI-DB-SAR-REC-RNI-FEE+INTEREST-FFConMONTHLYonLASTSUNDAY-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-MORE-PER
          Given I setup the group
	 When I entered the values into group from "Input" sheet
	  	|4304-MS-EI-DB-SAR-REC-RNI-FEE+INTEREST-FFConMONTHLYonLASTSUNDAY-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-MORE-PER-Newcreateloan1.xlsx|		  								  				  				  			
	 Then I entered the values into client from "Input" sheet
	 	|Createclient.xlsx|	 				  								  				  				  			
	 When I set up the new create loan from "NewLoanInput" sheet
	  	|4304-MS-EI-DB-SAR-REC-RNI-FEE+INTEREST-FFConMONTHLYonLASTSUNDAY-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-MORE-PER-Newcreateloan1.xlsx|
	 Then I navigate to scheduler job & execute "Periodic Accrual Transactions"
 	 Then I verified the following Tabs details successfully 
	    |4304-MS-EI-DB-SAR-REC-RNI-FEE+INTEREST-FFConMONTHLYonLASTSUNDAY-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-MORE-PER-Newcreateloan1.xlsx|Summary|Repayment Schedule|Transactions|
	 Then I make repayment and verified the following tabs
    	|4304-MS-EI-DB-SAR-REC-RNI-FEE+INTEREST-FFConMONTHLYonLASTSUNDAY-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-MORE-PER-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
	 And I Navigate to Accounting web page
 	 And I search with transaction id & verified the accounting entries
    	|4304-MS-EI-DB-SAR-REC-RNI-FEE+INTEREST-FFConMONTHLYonLASTSUNDAY-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-MORE-PER-Makerepayment1.xlsx|Acc_Disbursement|Acc_Repayment|Acc_Periodic|

@4305-MS-EI-DB-SAR-REC-RNI-FEE-FFConMONTHLYonLASTSUNDAY-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-LESS-PER
Scenario:4305-MS-EI-DB-SAR-REC-RNI-FEE-FFConMONTHLYonLASTSUNDAY-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-LESS-PER
          Given I setup the group
	 When I entered the values into group from "Input" sheet
	  	|4305-MS-EI-DB-SAR-REC-RNI-FEE-FFConMONTHLYonLASTSUNDAY-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-LESS-PER-Newcreateloan1.xlsx|		  								  				  				  			
	 Then I entered the values into client from "Input" sheet
	 	|Createclient.xlsx|	 				  								  				  				  			
	 When I set up the new create loan from "NewLoanInput" sheet
	  	|4305-MS-EI-DB-SAR-REC-RNI-FEE-FFConMONTHLYonLASTSUNDAY-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-LESS-PER-Newcreateloan1.xlsx|
	 Then I navigate to scheduler job & execute "Periodic Accrual Transactions"
 	 Then I verified the following Tabs details successfully 
	    |4305-MS-EI-DB-SAR-REC-RNI-FEE-FFConMONTHLYonLASTSUNDAY-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-LESS-PER-Newcreateloan1.xlsx|Summary|Repayment Schedule|Transactions|
	 Then I make repayment and verified the following tabs
    	|4305-MS-EI-DB-SAR-REC-RNI-FEE-FFConMONTHLYonLASTSUNDAY-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-LESS-PER-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
	 And I Navigate to Accounting web page
 	 And I search with transaction id & verified the accounting entries
    	|4305-MS-EI-DB-SAR-REC-RNI-FEE-FFConMONTHLYonLASTSUNDAY-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-LESS-PER-Makerepayment1.xlsx|Acc_Disbursement|Acc_Repayment|Acc_Periodic|
	
@4306-MS-EI-DB-SAR-REC-RNI-INT-FFConMONTHLYonLASTSUNDAY-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-LESS-PER
Scenario:4306-MS-EI-DB-SAR-REC-RNI-INT-FFConMONTHLYonLASTSUNDAY-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-LESS-PER
          Given I setup the group
	 When I entered the values into group from "Input" sheet
	  	|4306-MS-EI-DB-SAR-REC-RNI-INT-FFConMONTHLYonLASTSUNDAY-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-LESS-PER-Newcreateloan1.xlsx|		  								  				  				  			
	 Then I entered the values into client from "Input" sheet
	 	|Createclient.xlsx|	 				  								  				  				  			
	 When I set up the new create loan from "NewLoanInput" sheet
	  	|4306-MS-EI-DB-SAR-REC-RNI-INT-FFConMONTHLYonLASTSUNDAY-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-LESS-PER-Newcreateloan1.xlsx|
	 Then I navigate to scheduler job & execute "Periodic Accrual Transactions"
 	 Then I verified the following Tabs details successfully 
	    |4306-MS-EI-DB-SAR-REC-RNI-INT-FFConMONTHLYonLASTSUNDAY-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-LESS-PER-Newcreateloan1.xlsx|Summary|Repayment Schedule|Transactions|
	 Then I make repayment and verified the following tabs
    	|4306-MS-EI-DB-SAR-REC-RNI-INT-FFConMONTHLYonLASTSUNDAY-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-LESS-PER-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
	 And I Navigate to Accounting web page
 	 And I search with transaction id & verified the accounting entries
    	|4306-MS-EI-DB-SAR-REC-RNI-INT-FFConMONTHLYonLASTSUNDAY-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-LESS-PER-Makerepayment1.xlsx|Acc_Disbursement|

@4307-MS-EI-DB-SAR-REC-RNI-FEE+INTEREST-FFConMONTHLYonLASTSUNDAY-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-LESS-PER
Scenario:4307-MS-EI-DB-SAR-REC-RNI-FEE+INTEREST-FFConMONTHLYonLASTSUNDAY-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-LESS-PER
          Given I setup the group
	 When I entered the values into group from "Input" sheet
	  	|4307-MS-EI-DB-SAR-REC-RNI-FEE+INTEREST-FFConMONTHLYonLASTSUNDAY-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-LESS-PER-Newcreateloan1.xlsx|		  								  				  				  			
	 Then I entered the values into client from "Input" sheet
	 	|Createclient.xlsx|	 				  								  				  				  			
	 When I set up the new create loan from "NewLoanInput" sheet
	  	|4307-MS-EI-DB-SAR-REC-RNI-FEE+INTEREST-FFConMONTHLYonLASTSUNDAY-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-LESS-PER-Newcreateloan1.xlsx|
	 Then I navigate to scheduler job & execute "Periodic Accrual Transactions"
 	 Then I verified the following Tabs details successfully 
	    |4307-MS-EI-DB-SAR-REC-RNI-FEE+INTEREST-FFConMONTHLYonLASTSUNDAY-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-LESS-PER-Newcreateloan1.xlsx|Summary|Repayment Schedule|Transactions|
	 Then I make repayment and verified the following tabs
    	|4307-MS-EI-DB-SAR-REC-RNI-FEE+INTEREST-FFConMONTHLYonLASTSUNDAY-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-LESS-PER-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
	 And I Navigate to Accounting web page
 	 And I search with transaction id & verified the accounting entries
    	|4307-MS-EI-DB-SAR-REC-RNI-FEE+INTEREST-FFConMONTHLYonLASTSUNDAY-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-LESS-PER-Makerepayment1.xlsx|Acc_Disbursement|

@4350-ACTGRP-DISBURSE-NEWJLGLOAN-NOMEETING
Scenario:4350-ACTGRP-DISBURSE-NEWJLGLOAN-NOMEETING
     
     Given I setup the product loan "Setup"
		| Productloannavigation.xlsx |
	 Then I entered the values into product loan from "ProductLoanInput" Sheet
		|4350-Simple-Group-Loan-Product-Loanproduct.xlsx|
     Given I setup the group
	 When I entered the values into group from "Input" sheet
	  	|4350-ACTGRP-DISBURSE-NEWJLGLOAN-NOMEETING-Newcreateloan1.xlsx|		  								  				  				  			
	 Then I entered the values into client from "Input" sheet
	 	|Createclient.xlsx|	 				  								  				  				  			
	 When I set up the new create loan from "NewLoanInput" sheet
	  	|4350-ACTGRP-DISBURSE-NEWJLGLOAN-NOMEETING-Newcreateloan1.xlsx|
	 Then I verified the following Tabs details successfully 
	    |4350-ACTGRP-DISBURSE-NEWJLGLOAN-NOMEETING-Newcreateloan1.xlsx|Summary|Repayment Schedule|
	    
@4351-ACTGRP-MEETING-WEEKLYonFRI-SUBMITJLGloan-SYNK-DISP+REPAYwithMEETING
Scenario:4351-ACTGRP-MEETING-WEEKLYonFRI-SUBMITJLGloan-SYNK-DISP+REPAYwithMEETING
     
     Given I setup the group
	 When I entered the values into group from "Input" sheet
	  	|4351-ACTGRP-MEETING-WEEKLYonFRI-SUBMITJLGloan-SYNK-DISP+REPAYwithMEETING-Newcreateloan1.xlsx|		  								  				  				  			
	 Then I entered the values into client from "Input" sheet
	 	|Createclient.xlsx|	 				  								  				  				  			
	 When I set up the new create loan from "NewLoanInput" sheet
	  	|4351-ACTGRP-MEETING-WEEKLYonFRI-SUBMITJLGloan-SYNK-DISP+REPAYwithMEETING-Newcreateloan1.xlsx|
		  	
@4352-ACTGRP-MEETING-WEEKLYonFRI-SUBMITJLGloan-SYNK-DISPwithMEETING
Scenario:4352-ACTGRP-MEETING-WEEKLYonFRI-SUBMITJLGloan-SYNK-DISPwithMEETING
     
     Given I setup the group
	 When I entered the values into group from "Input" sheet
	  	|4352-ACTGRP-MEETING-WEEKLYonFRI-SUBMITJLGloan-SYNK-DISPwithMEETING-Newcreateloan1.xlsx|		  								  				  				  			
	 Then I entered the values into client from "Input" sheet
	 	|Createclient.xlsx|	 				  								  				  				  			
	 When I set up the new create loan from "NewLoanInput" sheet
	  	|4352-ACTGRP-MEETING-WEEKLYonFRI-SUBMITJLGloan-SYNK-DISPwithMEETING-Newcreateloan1.xlsx|
		  	
@4353-ACTGRP-MEETING-WEEKLYonFRI-SUBMITJLGloan-SYNK-REPAYwithMEETING
Scenario:4353-ACTGRP-MEETING-WEEKLYonFRI-SUBMITJLGloan-SYNK-REPAYwithMEETING
     
     Given I setup the group
	 When I entered the values into group from "Input" sheet
	  	|4353-ACTGRP-MEETING-WEEKLYonFRI-SUBMITJLGloan-SYNK-REPAYwithMEETING-Newcreateloan1.xlsx|		  								  				  				  			
	 Then I entered the values into client from "Input" sheet
	 	|Createclient.xlsx|	 				  								  				  				  			
	 When I set up the new create loan from "NewLoanInput" sheet
	  	|4353-ACTGRP-MEETING-WEEKLYonFRI-SUBMITJLGloan-SYNK-REPAYwithMEETING-Newcreateloan1.xlsx|

@4354-ACTGRP-MEETING-WEEKLYonFRI-SUBMITJLGloan-NOSYNK-DISP+REPAYwithMEETING
Scenario:4354-ACTGRP-MEETING-WEEKLYonFRI-SUBMITJLGloan-NOSYNK-DISP+REPAYwithMEETING
     
     Given I setup the group
	 When I entered the values into group from "Input" sheet
	  	|4354-ACTGRP-MEETING-WEEKLYonFRI-SUBMITJLGloan-NOSYNK-DISP+REPAYwithMEETING-Newcreateloan1.xlsx|		  								  				  				  			
	 Then I entered the values into client from "Input" sheet
	 	|Createclient.xlsx|	 				  								  				  				  			
	 When I set up the new create loan from "NewLoanInput" sheet
	  	|4354-ACTGRP-MEETING-WEEKLYonFRI-SUBMITJLGloan-NOSYNK-DISP+REPAYwithMEETING-Newcreateloan1.xlsx|

@4355-ACTGRP-MEETING-WEEKLYonFRI-SUBMITJLGloan-SYNK-DISP+REPAYwithMEETING-Dailyloan
Scenario:4355-ACTGRP-MEETING-WEEKLYonFRI-SUBMITJLGloan-SYNK-DISP+REPAYwithMEETING-Dailyloan
     
     Given I setup the group
	 When I entered the values into group from "Input" sheet
	  	|4355-ACTGRP-MEETING-WEEKLYonFRI-SUBMITJLGloan-SYNK-DISP+REPAYwithMEETING-Dailyloan-Newcreateloan1.xlsx|		  								  				  				  			
	 Then I entered the values into client from "Input" sheet
	 	|Createclient.xlsx|	 				  								  				  				  			
	 When I set up the new create loan from "NewLoanInput" sheet
	  	|4355-ACTGRP-MEETING-WEEKLYonFRI-SUBMITJLGloan-SYNK-DISP+REPAYwithMEETING-Dailyloan-Newcreateloan1.xlsx|

@4356-ACTGRP-MEETING-WEEKLYonFRI-SUBMITJLGloan-SYNK-DISP+REPAYwithMEETING-Dailyloanevery7day
Scenario:4356-ACTGRP-MEETING-WEEKLYonFRI-SUBMITJLGloan-SYNK-DISP+REPAYwithMEETING-Dailyloanevery7day
     
     Given I setup the group
	 When I entered the values into group from "Input" sheet
	  	|4356-ACTGRP-MEETING-WEEKLYonFRI-SUBMITJLGloan-SYNK-DISP+REPAYwithMEETING-Dailyloanevery7day-Newcreateloan1.xlsx|		  								  				  				  			
	 Then I entered the values into client from "Input" sheet
	 	|Createclient.xlsx|	 				  								  				  				  			
	 When I set up the new create loan from "NewLoanInput" sheet
	  	|4356-ACTGRP-MEETING-WEEKLYonFRI-SUBMITJLGloan-SYNK-DISP+REPAYwithMEETING-Dailyloanevery7day-Newcreateloan1.xlsx|

@4357-ACTGRP-MEETING-WEEKLYonFRI-SUBMITJLGloan-SYNK-DISP+REPAYwithMEETING-Weeklyloanevery2weeks
Scenario:4357-ACTGRP-MEETING-WEEKLYonFRI-SUBMITJLGloan-SYNK-DISP+REPAYwithMEETING-Weeklyloanevery2weeks
     
     Given I setup the group
	 When I entered the values into group from "Input" sheet
	  	|4357-ACTGRP-MEETING-WEEKLYonFRI-SUBMITJLGloan-SYNK-DISP+REPAYwithMEETING-Weeklyloanevery2weeks-Newcreateloan1.xlsx|		  								  				  				  			
	 Then I entered the values into client from "Input" sheet
	 	|Createclient.xlsx|	 				  								  				  				  			
	 When I set up the new create loan from "NewLoanInput" sheet
	  	|4357-ACTGRP-MEETING-WEEKLYonFRI-SUBMITJLGloan-SYNK-DISP+REPAYwithMEETING-Weeklyloanevery2weeks-Newcreateloan1.xlsx|
	 Then I verified the following Tabs details successfully 
	    |4357-ACTGRP-MEETING-WEEKLYonFRI-SUBMITJLGloan-SYNK-DISP+REPAYwithMEETING-Weeklyloanevery2weeks-Newcreateloan1.xlsx|Summary|Repayment Schedule|
	    
@4358-ACTGRP-MEETING-DAILY-SUBMITJLGloan-SYNK-DISP+REPAYwithMEETING-Dailyloanevery1day
Scenario:4358-ACTGRP-MEETING-DAILY-SUBMITJLGloan-SYNK-DISP+REPAYwithMEETING-Dailyloanevery1day
     
     Given I setup the group
	 When I entered the values into group from "Input" sheet
	  	|4358-ACTGRP-MEETING-DAILY-SUBMITJLGloan-SYNK-DISP+REPAYwithMEETING-Dailyloanevery1day-Newcreateloan1.xlsx|		  								  				  				  			
	 Then I entered the values into client from "Input" sheet
	 	|Createclient.xlsx|	 				  								  				  				  			
	 When I set up the new create loan from "NewLoanInput" sheet
	  	|4358-ACTGRP-MEETING-DAILY-SUBMITJLGloan-SYNK-DISP+REPAYwithMEETING-Dailyloanevery1day-Newcreateloan1.xlsx|

@4359-ACTGRP-MEETING-WEEKLYonFRI-SUBMITJLGloan-SYNK-DISP+REPAYwithMEETING-Yearlyloanevery1year
Scenario:4359-ACTGRP-MEETING-WEEKLYonFRI-SUBMITJLGloan-SYNK-DISP+REPAYwithMEETING-Yearlyloanevery1year
     
     Given I setup the group
	 When I entered the values into group from "Input" sheet
	  	|4359-ACTGRP-MEETING-WEEKLYonFRI-SUBMITJLGloan-SYNK-DISP+REPAYwithMEETING-Yearlyloanevery1year-Newcreateloan1.xlsx|		  								  				  				  			
	 Then I entered the values into client from "Input" sheet
	 	|Createclient.xlsx|	 				  								  				  				  			
	 When I set up the new create loan from "NewLoanInput" sheet
	  	|4359-ACTGRP-MEETING-WEEKLYonFRI-SUBMITJLGloan-SYNK-DISP+REPAYwithMEETING-Yearlyloanevery1year-Newcreateloan1.xlsx|
	  	
@4360-ACTGRP-MEETING-EVERY2WEEKonFRI-SUBMITJLGloan-SYNK-DISP+REPAYwithMEETING-Weeklyloanevery1week
Scenario:4360-ACTGRP-MEETING-EVERY2WEEKonFRI-SUBMITJLGloan-SYNK-DISP+REPAYwithMEETING-Weeklyloanevery1week
     
     Given I setup the group
	 When I entered the values into group from "Input" sheet
	  	|4360-ACTGRP-MEETING-EVERY2WEEKonFRI-SUBMITJLGloan-SYNK-DISP+REPAYwithMEETING-Weeklyloanevery1week-Newcreateloan1.xlsx|		  								  				  				  			
	 Then I entered the values into client from "Input" sheet
	 	|Createclient.xlsx|	 				  								  				  				  			
	 When I set up the new create loan from "NewLoanInput" sheet
	  	|4360-ACTGRP-MEETING-EVERY2WEEKonFRI-SUBMITJLGloan-SYNK-DISP+REPAYwithMEETING-Weeklyloanevery1week-Newcreateloan1.xlsx|
	  	
@4361-ACTGRP-MEETING-EVERY2WEEKonFRI-SUBMITJLGloan-SYNK-DISP+REPAYwithMEETING-Dailyloanevery14days
Scenario:4361-ACTGRP-MEETING-EVERY2WEEKonFRI-SUBMITJLGloan-SYNK-DISP+REPAYwithMEETING-Dailyloanevery14days
     
     Given I setup the group
	 When I entered the values into group from "Input" sheet
	  	|4361-ACTGRP-MEETING-EVERY2WEEKonFRI-SUBMITJLGloan-SYNK-DISP+REPAYwithMEETING-Dailyloanevery14days-Newcreateloan1.xlsx|		  								  				  				  			
	 Then I entered the values into client from "Input" sheet
	 	|Createclient.xlsx|	 				  								  				  				  			
	 When I set up the new create loan from "NewLoanInput" sheet
	  	|4361-ACTGRP-MEETING-EVERY2WEEKonFRI-SUBMITJLGloan-SYNK-DISP+REPAYwithMEETING-Dailyloanevery14days-Newcreateloan1.xlsx|
	  	
@4362-ACTGRP-MEETING-EVERY2WEEKonFRI-SUBMITJLGloan-SYNK-DISP+REPAYwithMEETING-Monthlyloanevery1month
Scenario:4362-ACTGRP-MEETING-EVERY2WEEKonFRI-SUBMITJLGloan-SYNK-DISP+REPAYwithMEETING-Monthlyloanevery1month
     
     Given I setup the group
	 When I entered the values into group from "Input" sheet
	  	|4362-ACTGRP-MEETING-EVERY2WEEKonFRI-SUBMITJLGloan-SYNK-DISP+REPAYwithMEETING-Monthlyloanevery1month-Newcreateloan1.xlsx|		  								  				  				  			
	 Then I entered the values into client from "Input" sheet
	 	|Createclient.xlsx|	 				  								  				  				  			
	 When I set up the new create loan from "NewLoanInput" sheet
	  	|4362-ACTGRP-MEETING-EVERY2WEEKonFRI-SUBMITJLGloan-SYNK-DISP+REPAYwithMEETING-Monthlyloanevery1month-Newcreateloan1.xlsx|
	  	
@4363-ACTGRP-MEETING-EVERY2WEEKonFRI-SUBMITJLGloan-SYNK-DISP+REPAYwithMEETING-Yearlyloanevery1year
Scenario:4363-ACTGRP-MEETING-EVERY2WEEKonFRI-SUBMITJLGloan-SYNK-DISP+REPAYwithMEETING-Yearlyloanevery1year
     
     Given I setup the group
	 When I entered the values into group from "Input" sheet
	  	|4363-ACTGRP-MEETING-EVERY2WEEKonFRI-SUBMITJLGloan-SYNK-DISP+REPAYwithMEETING-Yearlyloanevery1year-Newcreateloan1.xlsx|		  								  				  				  			
	 Then I entered the values into client from "Input" sheet
	 	|Createclient.xlsx|	 				  								  				  				  			
	 When I set up the new create loan from "NewLoanInput" sheet
	  	|4363-ACTGRP-MEETING-EVERY2WEEKonFRI-SUBMITJLGloan-SYNK-DISP+REPAYwithMEETING-Yearlyloanevery1year-Newcreateloan1.xlsx|
	  	
@4364-ACTGRP-MEETING-DAILY-SUBMITJLGloan-SYNK-DISP+REPAYwithMEETING-Dailyloanevery1day
Scenario:4364-ACTGRP-MEETING-DAILY-SUBMITJLGloan-SYNK-DISP+REPAYwithMEETING-Dailyloanevery1day
     
     Given I setup the group
	 When I entered the values into group from "Input" sheet
	  	|4364-ACTGRP-MEETING-DAILY-SUBMITJLGloan-SYNK-DISP+REPAYwithMEETING-Dailyloanevery1day-Newcreateloan1.xlsx|		  								  				  				  			
	 Then I entered the values into client from "Input" sheet
	 	|Createclient.xlsx|	 				  								  				  				  			
	 When I set up the new create loan from "NewLoanInput" sheet
	  	|4364-ACTGRP-MEETING-DAILY-SUBMITJLGloan-SYNK-DISP+REPAYwithMEETING-Dailyloanevery1day-Newcreateloan1.xlsx|
	 Then I verified the following Tabs details successfully 
	    |4364-ACTGRP-MEETING-DAILY-SUBMITJLGloan-SYNK-DISP+REPAYwithMEETING-Dailyloanevery1day-Newcreateloan1.xlsx|Summary|Repayment Schedule|
	 
	  	
@4365-ACTGRP-MEETING-DAILY-SUBMITJLGloan-SYNK-DISP+REPAYwithMEETING-Weeklyloanevery1week
Scenario:4365-ACTGRP-MEETING-DAILY-SUBMITJLGloan-SYNK-DISP+REPAYwithMEETING-Weeklyloanevery1week
     
     Given I setup the group
	 When I entered the values into group from "Input" sheet
	  	|4365-ACTGRP-MEETING-DAILY-SUBMITJLGloan-SYNK-DISP+REPAYwithMEETING-Weeklyloanevery1week-Newcreateloan1.xlsx|		  								  				  				  			
	 Then I entered the values into client from "Input" sheet
	 	|Createclient.xlsx|	 				  								  				  				  			
	 When I set up the new create loan from "NewLoanInput" sheet
	  	|4365-ACTGRP-MEETING-DAILY-SUBMITJLGloan-SYNK-DISP+REPAYwithMEETING-Weeklyloanevery1week-Newcreateloan1.xlsx|
	 Then I verified the following Tabs details successfully 
	    |4365-ACTGRP-MEETING-DAILY-SUBMITJLGloan-SYNK-DISP+REPAYwithMEETING-Weeklyloanevery1week-Newcreateloan1.xlsx|Summary|Repayment Schedule|
	  	
@4366-ACTGRP-MEETING-DAILY-SUBMITJLGloan-SYNK-DISP+REPAYwithMEETING-Monthlyloanevery1month
Scenario:4366-ACTGRP-MEETING-DAILY-SUBMITJLGloan-SYNK-DISP+REPAYwithMEETING-Monthlyloanevery1month
     
     Given I setup the group
	 When I entered the values into group from "Input" sheet
	  	|4366-ACTGRP-MEETING-DAILY-SUBMITJLGloan-SYNK-DISP+REPAYwithMEETING-Monthlyloanevery1month-Newcreateloan1.xlsx|		  								  				  				  			
	 Then I entered the values into client from "Input" sheet
	 	|Createclient.xlsx|	 				  								  				  				  			
	 When I set up the new create loan from "NewLoanInput" sheet
	  	|4366-ACTGRP-MEETING-DAILY-SUBMITJLGloan-SYNK-DISP+REPAYwithMEETING-Monthlyloanevery1month-Newcreateloan1.xlsx|
	 Then I verified the following Tabs details successfully 
	    |4366-ACTGRP-MEETING-DAILY-SUBMITJLGloan-SYNK-DISP+REPAYwithMEETING-Monthlyloanevery1month-Newcreateloan1.xlsx|Summary|Repayment Schedule|

@4367-ACTGRP-MEETING-DAILY-SUBMITJLGloan-SYNK-DISP+REPAYwithMEETING-Yearlyloanevery1year
Scenario:4367-ACTGRP-MEETING-DAILY-SUBMITJLGloan-SYNK-DISP+REPAYwithMEETING-Yearlyloanevery1year
     
     Given I setup the group
	 When I entered the values into group from "Input" sheet
	  	|4367-ACTGRP-MEETING-DAILY-SUBMITJLGloan-SYNK-DISP+REPAYwithMEETING-Yearlyloanevery1year-Newcreateloan1.xlsx|		  								  				  				  			
	 Then I entered the values into client from "Input" sheet
	 	|Createclient.xlsx|	 				  								  				  				  			
	 When I set up the new create loan from "NewLoanInput" sheet
	  	|4367-ACTGRP-MEETING-DAILY-SUBMITJLGloan-SYNK-DISP+REPAYwithMEETING-Yearlyloanevery1year-Newcreateloan1.xlsx|
	 Then I verified the following Tabs details successfully 
	    |4367-ACTGRP-MEETING-DAILY-SUBMITJLGloan-SYNK-DISP+REPAYwithMEETING-Yearlyloanevery1year-Newcreateloan1.xlsx|Summary|Repayment Schedule|

@4368-ACTGRP-MEETING-EVERY1MONTH-SUBMITJLGloan-SYNK-DISP+REPAYwithMEETING-Dailyloanevery1day
Scenario:4368-ACTGRP-MEETING-EVERY1MONTH-SUBMITJLGloan-SYNK-DISP+REPAYwithMEETING-Dailyloanevery1day
     
     Given I setup the group
	 When I entered the values into group from "Input" sheet
	  	|4368-ACTGRP-MEETING-EVERY1MONTH-SUBMITJLGloan-SYNK-DISP+REPAYwithMEETING-Dailyloanevery1day-Newcreateloan1.xlsx|		  								  				  				  			
	 Then I entered the values into client from "Input" sheet
	 	|Createclient.xlsx|	 				  								  				  				  			
	 When I set up the new create loan from "NewLoanInput" sheet
	  	|4368-ACTGRP-MEETING-EVERY1MONTH-SUBMITJLGloan-SYNK-DISP+REPAYwithMEETING-Dailyloanevery1day-Newcreateloan1.xlsx|

@4369-ACTGRP-MEETING-EVERY1MONTH-SUBMITJLGloan-SYNK-DISP+REPAYwithMEETING-Weeklyloanevery2weeks
Scenario:4369-ACTGRP-MEETING-EVERY1MONTH-SUBMITJLGloan-SYNK-DISP+REPAYwithMEETING-Weeklyloanevery2weeks
     
     Given I setup the group
	 When I entered the values into group from "Input" sheet
	  	|4369-ACTGRP-MEETING-EVERY1MONTH-SUBMITJLGloan-SYNK-DISP+REPAYwithMEETING-Weeklyloanevery2weeks-Newcreateloan1.xlsx|		  								  				  				  			
	 Then I entered the values into client from "Input" sheet
	 	|Createclient.xlsx|	 				  								  				  				  			
	 When I set up the new create loan from "NewLoanInput" sheet
	  	|4369-ACTGRP-MEETING-EVERY1MONTH-SUBMITJLGloan-SYNK-DISP+REPAYwithMEETING-Weeklyloanevery2weeks-Newcreateloan1.xlsx|

	@4370-ACTGRP-MEETING-EVERY1MONTH-SUBMITJLGloan-SYNK-DISP+REPAYwithMEETING-Monthlyloanevery2months
Scenario:4370-ACTGRP-MEETING-EVERY1MONTH-SUBMITJLGloan-SYNK-DISP+REPAYwithMEETING-Monthlyloanevery2months
     
     Given I setup the group
	 When I entered the values into group from "Input" sheet
	  	|4370-ACTGRP-MEETING-EVERY1MONTH-SUBMITJLGloan-SYNK-DISP+REPAYwithMEETING-Monthlyloanevery2months-Newcreateloan1.xlsx|		  								  				  				  			
	 Then I entered the values into client from "Input" sheet
	 	|Createclient.xlsx|	 				  								  				  				  			
	 When I set up the new create loan from "NewLoanInput" sheet
	  	|4370-ACTGRP-MEETING-EVERY1MONTH-SUBMITJLGloan-SYNK-DISP+REPAYwithMEETING-Monthlyloanevery2months-Newcreateloan1.xlsx|
	Then I verified the following Tabs details successfully 
	    |4370-ACTGRP-MEETING-EVERY1MONTH-SUBMITJLGloan-SYNK-DISP+REPAYwithMEETING-Monthlyloanevery2months-Newcreateloan1.xlsx|Summary|Repayment Schedule|
	
	 @4371-ACTGRP-MEETING-EVERY2MONTHS-SUBMITJLGloan-SYNK-DISP+REPAYwithMEETING-Monthlyloanevery1month
Scenario:4371-ACTGRP-MEETING-EVERY2MONTHS-SUBMITJLGloan-SYNK-DISP+REPAYwithMEETING-Monthlyloanevery1month
     
     Given I setup the group
	 When I entered the values into group from "Input" sheet
	  	|4371-ACTGRP-MEETING-EVERY2MONTHS-SUBMITJLGloan-SYNK-DISP+REPAYwithMEETING-Monthlyloanevery1month-Newcreateloan1.xlsx|		  								  				  				  			
	 Then I entered the values into client from "Input" sheet
	 	|Createclient.xlsx|	 				  								  				  				  			
	 When I set up the new create loan from "NewLoanInput" sheet
	  	|4371-ACTGRP-MEETING-EVERY2MONTHS-SUBMITJLGloan-SYNK-DISP+REPAYwithMEETING-Monthlyloanevery1month-Newcreateloan1.xlsx|

@4372-ACTGRP-MEETING-EVERY1YEAR-SUBMITJLGloan-SYNK-DISP+REPAYwithMEETING-Dailyloanevery1day
Scenario:4372-ACTGRP-MEETING-EVERY1YEAR-SUBMITJLGloan-SYNK-DISP+REPAYwithMEETING-Dailyloanevery1day
     
     Given I setup the group
	 When I entered the values into group from "Input" sheet
	  	|4372-ACTGRP-MEETING-EVERY1YEAR-SUBMITJLGloan-SYNK-DISP+REPAYwithMEETING-Dailyloanevery1day-Newcreateloan1.xlsx|		  								  				  				  			
	 Then I entered the values into client from "Input" sheet
	 	|Createclient.xlsx|	 				  								  				  				  			
	 When I set up the new create loan from "NewLoanInput" sheet
	  	|4372-ACTGRP-MEETING-EVERY1YEAR-SUBMITJLGloan-SYNK-DISP+REPAYwithMEETING-Dailyloanevery1day-Newcreateloan1.xlsx|

@4373-ACTGRP-MEETING-EVERY1YEAR-SUBMITJLGloan-SYNK-DISP+REPAYwithMEETING-Monthlyloanevery2months
Scenario:4373-ACTGRP-MEETING-EVERY1YEAR-SUBMITJLGloan-SYNK-DISP+REPAYwithMEETING-Monthlyloanevery2months
     
     Given I setup the group
	 When I entered the values into group from "Input" sheet
	  	|4373-ACTGRP-MEETING-EVERY1YEAR-SUBMITJLGloan-SYNK-DISP+REPAYwithMEETING-Monthlyloanevery2months-Newcreateloan1.xlsx|		  								  				  				  			
	 Then I entered the values into client from "Input" sheet
	 	|Createclient.xlsx|	 				  								  				  				  			
	 When I set up the new create loan from "NewLoanInput" sheet
	  	|4373-ACTGRP-MEETING-EVERY1YEAR-SUBMITJLGloan-SYNK-DISP+REPAYwithMEETING-Monthlyloanevery2months-Newcreateloan1.xlsx|
	   	
@4374-ACTGRP-MEETING-EVERY1YEARS-SUBMITJLGloan-SYNK-DISP+REPAYwithMEETING-Yearlyloanevery2years
Scenario:4374-ACTGRP-MEETING-EVERY1YEARS-SUBMITJLGloan-SYNK-DISP+REPAYwithMEETING-Yearlyloanevery2years
     
     Given I setup the group
	 When I entered the values into group from "Input" sheet
	  	|4374-ACTGRP-MEETING-EVERY1YEARS-SUBMITJLGloan-SYNK-DISP+REPAYwithMEETING-Yearlyloanevery2years-Newcreateloan1.xlsx|		  								  				  				  			
	 Then I entered the values into client from "Input" sheet
	 	|Createclient.xlsx|	 				  								  				  				  			
	 When I set up the new create loan from "NewLoanInput" sheet
	  	|4374-ACTGRP-MEETING-EVERY1YEARS-SUBMITJLGloan-SYNK-DISP+REPAYwithMEETING-Yearlyloanevery2years-Newcreateloan1.xlsx|
	Then I verified the following Tabs details successfully 
	    |4374-ACTGRP-MEETING-EVERY1YEARS-SUBMITJLGloan-SYNK-DISP+REPAYwithMEETING-Yearlyloanevery2years-Newcreateloan1.xlsx|Summary|Repayment Schedule|

@4375-ACTGRP-MEETING-EVERY2YEARS-SUBMITJLGloan-SYNK-DISP+REPAYwithMEETING-Yearlyloanevery1year
Scenario:4375-ACTGRP-MEETING-EVERY2YEARS-SUBMITJLGloan-SYNK-DISP+REPAYwithMEETING-Yearlyloanevery1year
     
     Given I setup the group
	 When I entered the values into group from "Input" sheet
	  	|4375-ACTGRP-MEETING-EVERY2YEARS-SUBMITJLGloan-SYNK-DISP+REPAYwithMEETING-Yearlyloanevery1year-Newcreateloan1.xlsx|		  								  				  				  			
	 Then I entered the values into client from "Input" sheet
	 	|Createclient.xlsx|	 				  								  				  				  			
	 When I set up the new create loan from "NewLoanInput" sheet
	  	|4375-ACTGRP-MEETING-EVERY2YEARS-SUBMITJLGloan-SYNK-DISP+REPAYwithMEETING-Yearlyloanevery1year-Newcreateloan1.xlsx|

@4376-ACTGRP-MEET-WEEKLYonFRI-SUBJLG-SYNK-DISP+REPAYwithMEET-Weeklyloanevery1weeks-Modapp-Synkrepaywithmeet-Changedisbdate
Scenario:4376-ACTGRP-MEET-WEEKLYonFRI-SUBJLG-SYNK-DISP+REPAYwithMEET-Weeklyloanevery1weeks-Modapp-Synkrepaywithmeet-Changedisbdate
     
     Given I setup the group
	 When I entered the values into group from "Input" sheet
	  	|4376-ACTGRP-MEET-WEEKLYonFRI-SUBJLG-SYNK-DISP+REPAYwithMEET-Weeklyloanevery1weeks-Modapp-Synkrepaywithmeet-Changedisbdate-Newcreateloan1.xlsx|		  								  				  				  			
	 Then I entered the values into client from "Input" sheet
	 	|Createclient.xlsx|	 				  								  				  				  			
	 When I set up the new create loan from "NewLoanInput" sheet
	  	|4376-ACTGRP-MEET-WEEKLYonFRI-SUBJLG-SYNK-DISP+REPAYwithMEET-Weeklyloanevery1weeks-Modapp-Synkrepaywithmeet-Changedisbdate-Newcreateloan1.xlsx|
	 And I modify New Loan Account from "ModifyLoan" sheet
	    |4376-ACTGRP-MEET-WEEKLYonFRI-SUBJLG-SYNK-DISP+REPAYwithMEET-Weeklyloanevery1weeks-Modapp-Synkrepaywithmeet-Changedisbdate-Newcreateloan1.xlsx|
	 Then I verified the following Tabs details successfully 
	    |4376-ACTGRP-MEET-WEEKLYonFRI-SUBJLG-SYNK-DISP+REPAYwithMEET-Weeklyloanevery1weeks-Modapp-Synkrepaywithmeet-Changedisbdate-Newcreateloan1.xlsx|Summary|Repayment Schedule|
	 
@4377-ACTGRP-MEE-WEEKLYonFRI-SUBMITJLGloan-SYNK-DISP+REPAYwithMEE-Weeklyloanevery1weeks-DuringAPP-Change-DISDATEotherthanmeetingdate
Scenario:4377-ACTGRP-MEE-WEEKLYonFRI-SUBMITJLGloan-SYNK-DISP+REPAYwithMEE-Weeklyloanevery1weeks-DuringAPP-Change-DISDATEotherthanmeetingdate
     
     Given I setup the group
	 When I entered the values into group from "Input" sheet
	  	|4377-ACTGRP-MEE-WEEKLYonFRI-SUBMITJLGloan-SYNK-DISP+REPAYwithMEE-Weeklyloanevery1weeks-DuringAPP-Change-DISDATEotherthanmeetingdate-Newcreateloan1.xlsx|		  								  				  				  			
	 Then I entered the values into client from "Input" sheet
	 	|Createclient.xlsx|	 				  								  				  				  			
	 When I set up the new create loan from "NewLoanInput" sheet
	  	|4377-ACTGRP-MEE-WEEKLYonFRI-SUBMITJLGloan-SYNK-DISP+REPAYwithMEE-Weeklyloanevery1weeks-DuringAPP-Change-DISDATEotherthanmeetingdate-Newcreateloan1.xlsx|

@4378-ACTGRP-MEET-WEEKLYonFRI-SUBMITJLG-SYNK-DISP+REPAYwithMEE-Weeklyloanevery1weeks-DuringAPP-Change-DISDATE-othermeetingdate
Scenario:4378-ACTGRP-MEET-WEEKLYonFRI-SUBMITJLG-SYNK-DISP+REPAYwithMEE-Weeklyloanevery1weeks-DuringAPP-Change-DISDATE-othermeetingdate
     
     Given I setup the group
	 When I entered the values into group from "Input" sheet
	  	|4378-ACTGRP-MEET-WEEKLYonFRI-SUBMITJLG-SYNK-DISP+REPAYwithMEE-Weeklyloanevery1weeks-DuringAPP-Change-DISDATE-othermeetingdate-Newcreateloan1.xlsx|		  								  				  				  			
	 Then I entered the values into client from "Input" sheet
	 	|Createclient.xlsx|	 				  								  				  				  			
	 When I set up the new create loan from "NewLoanInput" sheet
	  	|4378-ACTGRP-MEET-WEEKLYonFRI-SUBMITJLG-SYNK-DISP+REPAYwithMEE-Weeklyloanevery1weeks-DuringAPP-Change-DISDATE-othermeetingdate-Newcreateloan1.xlsx|
	 Then I verified the following Tabs details successfully 
	    |4378-ACTGRP-MEET-WEEKLYonFRI-SUBMITJLG-SYNK-DISP+REPAYwithMEE-Weeklyloanevery1weeks-DuringAPP-Change-DISDATE-othermeetingdate-Newcreateloan1.xlsx|Summary|Repayment Schedule|

@4379-ACTGRP-MEET-WEEKLYonFRI-SUBMITJLG-SYNK-DISP+REPAYwithMEE-Weeklyloanevery1weeks-DuringDIS-Change-EX-DISDATE-otherthanmeetingdate
Scenario:4379-ACTGRP-MEET-WEEKLYonFRI-SUBMITJLG-SYNK-DISP+REPAYwithMEE-Weeklyloanevery1weeks-DuringDIS-Change-EX-DISDATE-otherthanmeetingdate
     
     Given I setup the group
	 When I entered the values into group from "Input" sheet
	  	|4379-ACTGRP-MEET-WEEKLYonFRI-SUBMITJLG-SYNK-DISP+REPAYwithMEE-Weeklyloanevery1weeks-DuringDIS-Change-EX-DISDATE-otherthanmeetingdate-Newcreateloan1.xlsx|		  								  				  				  			
	 Then I entered the values into client from "Input" sheet
	 	|Createclient.xlsx|	 				  								  				  				  			
	 When I set up the new create loan from "NewLoanInput" sheet
	  	|4379-ACTGRP-MEET-WEEKLYonFRI-SUBMITJLG-SYNK-DISP+REPAYwithMEE-Weeklyloanevery1weeks-DuringDIS-Change-EX-DISDATE-otherthanmeetingdate-Newcreateloan1.xlsx|

@4380-ACTGRP-MEET-WEEKLYonFRI-SUBMITJLG-SYNK-DISP+REPAYwithMEE-Weeklyloanevery1weeks-DuringDIS-Change-EX-DISDATE-othermeetingdate
Scenario:4380-ACTGRP-MEET-WEEKLYonFRI-SUBMITJLG-SYNK-DISP+REPAYwithMEE-Weeklyloanevery1weeks-DuringDIS-Change-EX-DISDATE-othermeetingdate
     
     Given I setup the group
	 When I entered the values into group from "Input" sheet
	  	|4380-ACTGRP-MEET-WEEKLYonFRI-SUBMITJLG-SYNK-DISP+REPAYwithMEE-Weeklyloanevery1weeks-DuringDIS-Change-EX-DISDATE-othermeetingdate-Newcreateloan1.xlsx|		  								  				  				  			
	 Then I entered the values into client from "Input" sheet
	 	|Createclient.xlsx|	 				  								  				  				  			
	 When I set up the new create loan from "NewLoanInput" sheet
	  	|4380-ACTGRP-MEET-WEEKLYonFRI-SUBMITJLG-SYNK-DISP+REPAYwithMEE-Weeklyloanevery1weeks-DuringDIS-Change-EX-DISDATE-othermeetingdate-Newcreateloan1.xlsx|

@4381-ACTGRP-MEET-WEEKLYonFRI-SUBMITJLG-SYNK-DISP+REPAYwithMEE-Weeklyloanevery1weeks-Disburse-Modifymeeting-toWednesday
Scenario:4381-ACTGRP-MEET-WEEKLYonFRI-SUBMITJLG-SYNK-DISP+REPAYwithMEE-Weeklyloanevery1weeks-Disburse-Modifymeeting-toWednesday
     
     Given I setup the group
	 When I entered the values into group from "Input" sheet
	  	|4381-ACTGRP-MEET-WEEKLYonFRI-SUBMITJLG-SYNK-DISP+REPAYwithMEE-Weeklyloanevery1weeks-Disburse-Modifymeeting-toWednesday-Newcreateloan1.xlsx|		  								  				  				  			
	 Then I entered the values into client from "Input" sheet
	 	|Createclient.xlsx|	 				  								  				  				  			
	 When I set up the new create loan from "NewLoanInput" sheet
	  	|4381-ACTGRP-MEET-WEEKLYonFRI-SUBMITJLG-SYNK-DISP+REPAYwithMEE-Weeklyloanevery1weeks-Disburse-Modifymeeting-toWednesday-Newcreateloan1.xlsx|

@4382-ACTGRP-MEET-WEEKLYonFRI-SUBMITJLG-SYNK-DISP+REPAYwithMEE-Weeklyloanevery1weeks-Disburse-Modifyfuturemeeting-to15April2015
Scenario:4382-ACTGRP-MEET-WEEKLYonFRI-SUBMITJLG-SYNK-DISP+REPAYwithMEE-Weeklyloanevery1weeks-Disburse-Modifyfuturemeeting-to15April2015
     
     Given I setup the group
	 When I entered the values into group from "Input" sheet
	  	|4382-ACTGRP-MEET-WEEKLYonFRI-SUBMITJLG-SYNK-DISP+REPAYwithMEE-Weeklyloanevery1weeks-Disburse-Modifyfuturemeeting-to15April2015-Newcreateloan1.xlsx|		  								  				  				  			
	 Then I entered the values into client from "Input" sheet
	 	|Createclient.xlsx|	 				  								  				  				  			
	 When I set up the new create loan from "NewLoanInput" sheet
	  	|4382-ACTGRP-MEET-WEEKLYonFRI-SUBMITJLG-SYNK-DISP+REPAYwithMEE-Weeklyloanevery1weeks-Disburse-Modifyfuturemeeting-to15April2015-Newcreateloan1.xlsx|

@4383-ACTGRP-MEET-WEEKLYonFRI-SUBMITJLG-SYNK-DISP+REPAYwithMEE-Weeklyloanevery1weeks-Disburse-ModifyfuturMeet-to15April2015-Makerepayment
Scenario:4383-ACTGRP-MEET-WEEKLYonFRI-SUBMITJLG-SYNK-DISP+REPAYwithMEE-Weeklyloanevery1weeks-Disburse-ModifyfuturMeet-to15April2015-Makerepayment
     
     Given I setup the group
	 When I entered the values into group from "Input" sheet
	  	|4383-ACTGRP-MEET-WEEKLYonFRI-SUBMITJLG-SYNK-DISP+REPAYwithMEE-Weeklyloanevery1weeks-Disburse-ModifyfuturMeet-to15April2015-Makerepayment-Newcreateloan1.xlsx|		  								  				  				  			
	 Then I entered the values into client from "Input" sheet
	 	|Createclient.xlsx|	 				  								  				  				  			
	 When I set up the new create loan from "NewLoanInput" sheet
	  	|4383-ACTGRP-MEET-WEEKLYonFRI-SUBMITJLG-SYNK-DISP+REPAYwithMEE-Weeklyloanevery1weeks-Disburse-ModifyfuturMeet-to15April2015-Makerepayment-Newcreateloan1.xlsx|
	Then I verified the following Tabs details successfully 
	    |4383-ACTGRP-MEET-WEEKLYonFRI-SUBMITJLG-SYNK-DISP+REPAYwithMEE-Weeklyloanevery1weeks-Disburse-ModifyfuturMeet-to15April2015-Makerepayment-Newcreateloan1.xlsx|Summary|Repayment Schedule|
	
@4384-ACTGRP-MEET-WEEKLYonFRI-SUBMITJLG-SYNK-DISP+REPAYwithMEE-Weeklyloanevery1weeks-Disburse-ModifyfuturMeet-to15MARCH2015
Scenario:4384-ACTGRP-MEET-WEEKLYonFRI-SUBMITJLG-SYNK-DISP+REPAYwithMEE-Weeklyloanevery1weeks-Disburse-ModifyfuturMeet-to15MARCH2015
     
     Given I setup the group
	 When I entered the values into group from "Input" sheet
	  	|4384-ACTGRP-MEET-WEEKLYonFRI-SUBMITJLG-SYNK-DISP+REPAYwithMEE-Weeklyloanevery1weeks-Disburse-ModifyfuturMeet-to15MARCH2015-Newcreateloan1.xlsx|		  								  				  				  			
	 Then I entered the values into client from "Input" sheet
	 	|Createclient.xlsx|	 				  								  				  				  			
	 When I set up the new create loan from "NewLoanInput" sheet
	  	|4384-ACTGRP-MEET-WEEKLYonFRI-SUBMITJLG-SYNK-DISP+REPAYwithMEE-Weeklyloanevery1weeks-Disburse-ModifyfuturMeet-to15MARCH2015-Newcreateloan1.xlsx|
	 
@4385-ACTGRP-MEET-WEEKLYonFRI-SUBMITJLG-SYNK-DISP+REPAYwithMEE-Weeklyloanevery1weeks-Disburse-ModifyfuturMeet-From10April2015-to-11April2016
Scenario:4385-ACTGRP-MEET-WEEKLYonFRI-SUBMITJLG-SYNK-DISP+REPAYwithMEE-Weeklyloanevery1weeks-Disburse-ModifyfuturMeet-From10April2015-to-11April2016
     
     Given I setup the group
	 When I entered the values into group from "Input" sheet
	  	|4385-ACTGRP-MEET-WEEKLYonFRI-SUBMITJLG-SYNK-DISP+REPAYwithMEE-Weeklyloanevery1weeks-Disburse-ModifyfuturMeet-From10April2015-to-11April2016-Newcreateloan1.xlsx|		  								  				  				  			
	 Then I entered the values into client from "Input" sheet
	 	|Createclient.xlsx|	 				  								  				  				  			
	 When I set up the new create loan from "NewLoanInput" sheet
	  	|4385-ACTGRP-MEET-WEEKLYonFRI-SUBMITJLG-SYNK-DISP+REPAYwithMEE-Weeklyloanevery1weeks-Disburse-ModifyfuturMeet-From10April2015-to-11April2016-Newcreateloan1.xlsx|
	Then I verified the following Tabs details successfully 
	    |4385-ACTGRP-MEET-WEEKLYonFRI-SUBMITJLG-SYNK-DISP+REPAYwithMEE-Weeklyloanevery1weeks-Disburse-ModifyfuturMeet-From10April2015-to-11April2016-Newcreateloan1.xlsx|Summary|Repayment Schedule|
	
@4386-ACTGRP-MEETING-WEEKLYonFRI-SUBMITJLGloan-SYNK-DISP+REPAYwithMEETING-Weeklyloanevery1weeks-Disburse-ModifymeetingtoDaily
Scenario:4386-ACTGRP-MEETING-WEEKLYonFRI-SUBMITJLGloan-SYNK-DISP+REPAYwithMEETING-Weeklyloanevery1weeks-Disburse-ModifymeetingtoDaily
     
     Given I setup the group
	 When I entered the values into group from "Input" sheet
	  	|4386-ACTGRP-MEETING-WEEKLYonFRI-SUBMITJLGloan-SYNK-DISP+REPAYwithMEETING-Weeklyloanevery1weeks-Disburse-ModifymeetingtoDaily-Newcreateloan1.xlsx|		  								  				  				  			
	 Then I entered the values into client from "Input" sheet
	 	|Createclient.xlsx|	 				  								  				  				  			
	 When I set up the new create loan from "NewLoanInput" sheet
	  	|4386-ACTGRP-MEETING-WEEKLYonFRI-SUBMITJLGloan-SYNK-DISP+REPAYwithMEETING-Weeklyloanevery1weeks-Disburse-ModifymeetingtoDaily-Newcreateloan1.xlsx|

@4387-ACTGRP-MEETING-WEEKLYonFRI-SUBMITJLGloan-SYNK-DISP+REPAYwithMEETING-Weeklyloanevery1weeks-Disburse-ModifymeetingtoBiWeekly
Scenario:4387-ACTGRP-MEETING-WEEKLYonFRI-SUBMITJLGloan-SYNK-DISP+REPAYwithMEETING-Weeklyloanevery1weeks-Disburse-ModifymeetingtoBiWeekly
     
     Given I setup the group
	 When I entered the values into group from "Input" sheet
	  	|4387-ACTGRP-MEETING-WEEKLYonFRI-SUBMITJLGloan-SYNK-DISP+REPAYwithMEETING-Weeklyloanevery1weeks-Disburse-ModifymeetingtoBiWeekly-Newcreateloan1.xlsx|		  								  				  				  			
	 Then I entered the values into client from "Input" sheet
	 	|Createclient.xlsx|	 				  								  				  				  			
	 When I set up the new create loan from "NewLoanInput" sheet
	  	|4387-ACTGRP-MEETING-WEEKLYonFRI-SUBMITJLGloan-SYNK-DISP+REPAYwithMEETING-Weeklyloanevery1weeks-Disburse-ModifymeetingtoBiWeekly-Newcreateloan1.xlsx|

@4388-ACTGRP-MEETING-WEEKLYonFRI-SUBMITJLGloan-SYNK-DISP+REPAYwithMEETING-Weeklyloanevery1weeks-Disburse-ModifymeetingtoMonthly
Scenario:4388-ACTGRP-MEETING-WEEKLYonFRI-SUBMITJLGloan-SYNK-DISP+REPAYwithMEETING-Weeklyloanevery1weeks-Disburse-ModifymeetingtoMonthly
     
     Given I setup the group
	 When I entered the values into group from "Input" sheet
	  	|4388-ACTGRP-MEETING-WEEKLYonFRI-SUBMITJLGloan-SYNK-DISP+REPAYwithMEETING-Weeklyloanevery1weeks-Disburse-ModifymeetingtoMonthly-Newcreateloan1.xlsx|		  								  				  				  			
	 Then I entered the values into client from "Input" sheet
	 	|Createclient.xlsx|	 				  								  				  				  			
	 When I set up the new create loan from "NewLoanInput" sheet
	  	|4388-ACTGRP-MEETING-WEEKLYonFRI-SUBMITJLGloan-SYNK-DISP+REPAYwithMEETING-Weeklyloanevery1weeks-Disburse-ModifymeetingtoMonthly-Newcreateloan1.xlsx|

@4389-ACTGRP-MEETING-WEEKLYonFRI-SUBMITJLGloan-SYNK-DISP+REPAYwithMEETING-Weeklyloanevery1weeks-Disburse-ModifytoYearly
Scenario:4389-ACTGRP-MEETING-WEEKLYonFRI-SUBMITJLGloan-SYNK-DISP+REPAYwithMEETING-Weeklyloanevery1weeks-Disburse-ModifytoYearly
     
     Given I setup the group
	 When I entered the values into group from "Input" sheet
	  	|4389-ACTGRP-MEETING-WEEKLYonFRI-SUBMITJLGloan-SYNK-DISP+REPAYwithMEETING-Weeklyloanevery1weeks-Disburse-ModifytoYearly-Newcreateloan1.xlsx|		  								  				  				  			
	 Then I entered the values into client from "Input" sheet
	 	|Createclient.xlsx|	 				  								  				  				  			
	 When I set up the new create loan from "NewLoanInput" sheet
	  	|4389-ACTGRP-MEETING-WEEKLYonFRI-SUBMITJLGloan-SYNK-DISP+REPAYwithMEETING-Weeklyloanevery1weeks-Disburse-ModifytoYearly-Newcreateloan1.xlsx|

@4400-CreateCenter
Scenario:4400-CreateCenter
     Given I setup the center
	 When I entered the values into center from "Input" sheet
	 |4400-CreateCenter.xlsx|
	 Then I should see Center created successfully from "Output" sheet
	 |4400-CreateCenter.xlsx|
	 
	 @4401-CreateCenter-withattaching-existingPendingGroup
Scenario:4401-CreateCenter-withattaching-existingPendingGroup
     Given I setup the center
	 When I entered the values into center from "Input" sheet
	 |4401-CreateCenter-withattaching-existingPendingGroup.xlsx|
	 
	 @4402-CreateCenter-withattaching-existingActiveGroup
Scenario:4402-CreateCenter-withattaching-existingActiveGroup
     Given I setup the center
	 When I entered the values into center from "Input" sheet
	 |4402-CreateCenter-withattaching-existingActiveGroup.xlsx|
	 
	 @4403-CreateCenter-EnterAllRequiredFields-And-Click-OnCancelButton
Scenario:4403-CreateCenter-EnterAllRequiredFields-And-Click-OnCancelButton
     Given I setup the center
	 When I entered the values into center from "Input" sheet
	 |4403-CreateCenter-EnterAllRequiredFields-And-Click-OnCancelButton.xlsx|
	
	@4404-CreateActive-Center
Scenario:4404-CreateActive-Center
     Given I setup the center
	 When I entered the values into center from "Input" sheet
	 |4404-CreateActive-Center.xlsx|
	 
	 @4405-CreateCenter-Activate
Scenario:4405-CreateCenter-Activate
     Given I setup the center
	 When I entered the values into center from "Input" sheet
	 |4405-CreateCenter-Activate.xlsx|
	 
	@4406-CreateCenter-Activate-Cancel
Scenario:4406-CreateCenter-Activate-Cancel
     Given I setup the center
	 When I entered the values into center from "Input" sheet
	 |4406-CreateCenter-Activate-Cancel.xlsx|
	 	 
	 @4407-CreateCenter-Edit
Scenario:4407-CreateCenter-Edit
     Given I setup the center
	 When I entered the values into center from "Input" sheet
	 |4407-CreateCenter-Edit.xlsx|
	 
	 @4408-CreateActiveCenter-Edit
Scenario:4408-CreateActiveCenter-Edit
     Given I setup the center
	 When I entered the values into center from "Input" sheet
	 |4408-CreateActiveCenter-Edit.xlsx|
	 
	 @4409-CreateCenter-AddGroup
Scenario:4409-CreateCenter-AddGroup
     Given I setup the center
	 When I entered the values into center from "Input" sheet
	 |4409-CreateCenter-AddGroup.xlsx|
	 Then I Add Group for created center from "AddGroup" sheet
	 |4409-CreateCenter-AddGroup.xlsx|
	 
	  @4410-CreateCenter-AddduplicateGroup
Scenario:4410-CreateCenter-AddduplicateGroup
     Given I setup the center
	 When I entered the values into center from "Input" sheet
	 |4410-CreateCenter-AddduplicateGroup.xlsx|
	 Then I Add Group for created center from "AddGroup" sheet
	 |4410-CreateCenter-AddduplicateGroup.xlsx|
	 Then I Add Dupicate Group for created center from "AddGroup1" sheet
	 |4410-CreateCenter-AddduplicateGroup.xlsx|
	 
	 @4411-CreateCenter-AddGroupwithoutattachingclient
Scenario:4411-CreateCenter-AddGroupwithoutattachingclient
     Given I setup the center
	 When I entered the values into center from "Input" sheet
	 |4411-CreateCenter-AddGroupwithoutattachingclient.xlsx|
	 Then I Add Group for created center from "AddGroup" sheet
	 |4411-CreateCenter-AddGroupwithoutattachingclient.xlsx|
	 
	 @4412-CreateCenter-AddGroupwithattachingclient
Scenario:4412-CreateCenter-AddGroupwithattachingclient
     Given I setup the center
	 When I entered the values into center from "Input" sheet
	 |4412-CreateCenter-AddGroupwithattachingclient.xlsx|
	 Then I Add Group for created center from "AddGroup" sheet
	 |4412-CreateCenter-AddGroupwithattachingclient.xlsx|
	 
	 @4413-CreateCenter-AddNotes
Scenario:4413-CreateCenter-AddNotes
     Given I setup the center
	 When I entered the values into center from "Input" sheet
	 |4413-CreateCenter-AddNotes.xlsx|
	 Then I "addnotes" from "AddNotes" sheet
	 |4413-CreateCenter-AddNotes.xlsx|
	 Then i validate and Verify from "Output" sheet
     |4413-CreateCenter-AddNotes.xlsx|
     
     @4414-CreateActiveCenter-withattachingexistingPendingGroup
Scenario:4414-CreateActiveCenter-withattachingexistingPendingGroup
     Given I setup the center
	 When I entered the values into center from "Input" sheet
	 |4414-CreateActiveCenter-withattachingexistingPendingGroup.xlsx|
	 
	 @4415-CreateActiveCenter-withattachingexistingactiveGroup
Scenario:4415-CreateActiveCenter-withattachingexistingactiveGroup
     Given I setup the center
	 When I entered the values into center from "Input" sheet
	 |4415-CreateActiveCenter-withattachingexistingactiveGroup.xlsx|
	 
	 @4416-CreateActiveCenter-withattachingexistingactiveGroup-Clickoncancelbutton
Scenario:4416-CreateActiveCenter-withattachingexistingactiveGroup-Clickoncancelbutton
     Given I setup the center
	 When I entered the values into center from "Input" sheet
	 |4416-CreateActiveCenter-withattachingexistingactiveGroup-Clickoncancelbutton.xlsx|
	 
	 @4417-CreateActiveCenter-AddGroup
Scenario:4417-CreateActiveCenter-AddGroup
     Given I setup the center
	 When I entered the values into center from "Input" sheet
	 |4417-CreateActiveCenter-AddGroup.xlsx|
	 Then I Add Group for created center from "AddGroup" sheet
	 |4417-CreateActiveCenter-AddGroup.xlsx|
	 
	 @4418-CreateActiveCenter-AddGroupwithoutattachingclient
Scenario:4418-CreateActiveCenter-AddGroupwithoutattachingclient
     Given I setup the center
	 When I entered the values into center from "Input" sheet
	 |4418-CreateActiveCenter-AddGroupwithoutattachingclient.xlsx|
	 Then I Add Group for created center from "AddGroup" sheet
	 |4418-CreateActiveCenter-AddGroupwithoutattachingclient.xlsx|
	 
	 @4419-CreateActiveCenter-AddGroupwithattachingclient
Scenario:4419-CreateActiveCenter-AddGroupwithattachingclient
     Given I setup the center
	 When I entered the values into center from "Input" sheet
	 |4419-CreateActiveCenter-AddGroupwithattachingclient.xlsx|
	 Then I Add Group for created center from "AddGroup" sheet
	 |4419-CreateActiveCenter-AddGroupwithattachingclient.xlsx|	  
	 
	 @4420-CreateCenter-ManageGroup-AddPendingGroup
Scenario:4420-CreateCenter-ManageGroup-AddPendingGroup
	 Given I setup the group
	 When I entered the values into group from "Input" sheet
	  	|4420Create-Pending-Group.xlsx|
     Given I setup the center
	 When I entered the values into center from "Input" sheet
	 |4420-CreateCenter-ManageGroup-AddPendingGroup.xlsx|
	 
	 @4421-CreateCenter-ManageGroup-AddActiveGroup
Scenario:4421-CreateCenter-ManageGroup-AddActiveGroup
	 Given I setup the group
	 When I entered the values into group from "Input" sheet
	  	|4421Create-AddActiveGroup.xlsx|
	 Given I setup the center
	 When I entered the values into center from "Input" sheet
	 |4421-CreateCenter-ManageGroup-AddActiveGroup.xlsx|
	 
	 @4422-CreateCenter-ManageGroup-AddActiveGroupWithMeetingAttachedtotheGroup
Scenario:4422-CreateCenter-ManageGroup-AddActiveGroupWithMeetingAttachedtotheGroup
	 Given I setup the group
	 When I entered the values into group from "Input" sheet
	  	|4422Create-AddActiveGroup-MeetingAttached.xlsx|
     Given I setup the center
	 When I entered the values into center from "Input" sheet
	 |4422-CreateCenter-ManageGroup-AddActiveGroupWithMeetingAttachedtotheGroup.xlsx|
	 
	 @4423-CreateCenter-ManageGroup-AddClosedGroup
Scenario:4423-CreateCenter-ManageGroup-AddClosedGroup
	 Given I setup the group
	 When I entered the values into group from "Input" sheet
	  	|4423Create-AddClosedGroup.xlsx|
     Given I setup the center
	 When I entered the values into center from "Input" sheet
	 |4423-CreateCenter-ManageGroup-AddClosedGroup.xlsx|
	 
	 @4424-CreateCenter-Assignstaff
Scenario:4424-CreateCenter-Assignstaff
     Given I setup the center
	 When I entered the values into center from "Input" sheet
	 |4424-CreateCenter-Assignstaff.xlsx|
	 
	 @4425-CreateCenter-Assignstaff-Unassignstaff
Scenario:4425-CreateCenter-Assignstaff-Unassignstaff
     Given I setup the center
	 When I entered the values into center from "Input" sheet
	 |4425-CreateCenter-Assignstaff-Unassignstaff.xlsx|
	 
	 @4426-CreateCenter-Assignstaff-delete-Center
Scenario:4426-CreateCenter-Assignstaff-delete-Center
     Given I setup the center
	 When I entered the values into center from "Input" sheet
	 |4426-CreateCenter-Assignstaff-delete-Center.xlsx|
	 
	 @4426-CreateCenter-Assignstaff-delete-Center
Scenario:4426-CreateCenter-Assignstaff-delete-Center
     Given I setup the center
	 When I entered the values into center from "Input" sheet
	 |4426-CreateCenter-Assignstaff-delete-Center.xlsx|
	 
	 @4427-CreateCenter-Assignstaff-Close
Scenario:4427-CreateCenter-Assignstaff-Close
     Given I setup the center
	 When I entered the values into center from "Input" sheet
	 |4427-CreateCenter-Assignstaff-Close.xlsx|
	 
	 @4428-CreateCenter-Assignstaff-Unassignstaff-staffassignmenthistory
Scenario:4428-CreateCenter-Assignstaff-Unassignstaff-staffassignmenthistory
     Given I setup the center
	 When I entered the values into center from "Input" sheet
	 |4428-CreateCenter-Assignstaff-Unassignstaff-staffassignmenthistory.xlsx|
	 
	 @4429-CreateActiveCenter-ManageGroup-addActivegroup
Scenario:4429-CreateActiveCenter-ManageGroup-addActivegroup
	 Given I setup the group
	 When I entered the values into group from "Input1" sheet
	  	|4429-CreateActiveCenter-ManageGroup-addActivegroup.xlsx|
	 Given I setup the center
	 When I entered the values into center from "Input" sheet
	 |4429-CreateActiveCenter-ManageGroup-addActivegroup.xlsx|
	 
	 @4430-CreateActiveCenterwithmeetingattachedasweeklyFriday-ManageGroup-addactivegroupwithmonthlymeeting
Scenario:4430-CreateActiveCenterwithmeetingattachedasweeklyFriday-ManageGroup-addactivegroupwithmonthlymeeting
	 Given I setup the group
	 When I entered the values into group from "Input1" sheet
	  	|4430-CreateActiveCenterwithmeetingattachedasweeklyFriday-ManageGroup-addactivegroupwithmonthlymeeting.xlsx|
	 Given I setup the center
	 When I entered the values into center from "Input" sheet
	 |4430-CreateActiveCenterwithmeetingattachedasweeklyFriday-ManageGroup-addactivegroupwithmonthlymeeting.xlsx|
	 
	 @4431-CreateActiveCenterwithmeetingattachedasweeklyFriday-ManageGroup-addactivegroupwithweeklyonfridaymeeting
Scenario:4431-CreateActiveCenterwithmeetingattachedasweeklyFriday-ManageGroup-addactivegroupwithweeklyonfridaymeeting
	 Given I setup the group
	 When I entered the values into group from "Input1" sheet
	  	|4431-CreateActiveCenterwithmeetingattachedasweeklyFriday-ManageGroup-addactivegroupwithweeklyonfridaymeeting.xlsx|
	 Given I setup the center
	 When I entered the values into center from "Input" sheet
	 |4431-CreateActiveCenterwithmeetingattachedasweeklyFriday-ManageGroup-addactivegroupwithweeklyonfridaymeeting.xlsx|

	 @4432-CreateActiveCenterwithmeetingattachedasweeklyFriday-ManageGroup-addactivegroupwithweeklyonWednesdaymeeting
Scenario:4432-CreateActiveCenterwithmeetingattachedasweeklyFriday-ManageGroup-addactivegroupwithweeklyonWednesdaymeeting
	 Given I setup the group
	 When I entered the values into group from "Input1" sheet
	  	|4432-CreateActiveCenterwithmeetingattachedasweeklyFriday-ManageGroup-addactivegroupwithweeklyonWednesdaymeeting.xlsx|
	 Given I setup the center
	 When I entered the values into center from "Input" sheet
	 |4432-CreateActiveCenterwithmeetingattachedasweeklyFriday-ManageGroup-addactivegroupwithweeklyonWednesdaymeeting.xlsx|

	@4433-CreateActiveCenterwithmeetingattachedasweeklyFriday-ManageGroup-addactivegroupwithweeklyonWednesdaymeeting
Scenario:4433-CreateActiveCenterwithmeetingattachedasweeklyFriday-ManageGroup-addactivegroupwithweeklyonWednesdaymeeting
	 Given I setup the group
	 When I entered the values into group from "Input1" sheet
	  	|4433-CreateActiveCenterwithmeetingattachedasweeklyFriday-ManageGroup-addactivegroupwithweeklyonWednesdaymeeting.xlsx|
	 Given I setup the center
	 When I entered the values into center from "Input" sheet
	 |4433-CreateActiveCenterwithmeetingattachedasweeklyFriday-ManageGroup-addactivegroupwithweeklyonWednesdaymeeting.xlsx|
	 
	@4434-CreateActiveCenterwithmeetingattachedasweeklyFriday-Centersavingsapplication
Scenario:4434-CreateActiveCenterwithmeetingattachedasweeklyFriday-Centersavingsapplication
	 Given I setup the center
	 When I entered the values into center from "Input" sheet
	 |4434-CreateActiveCenterwithmeetingattachedasweeklyFriday-Centersavingsapplication.xlsx|
	 Then i validate and Verify from "Output" sheet
	 |4434-CreateActiveCenterwithmeetingattachedasweeklyFriday-Centersavingsapplication.xlsx|
	 
	 @4435-CreateActiveCenterwithmeetingattachedasweeklyFriday-AttendancePastDate
Scenario:4435-CreateActiveCenterwithmeetingattachedasweeklyFriday-AttendancePastDate
	 Given I setup the center
	 When I entered the values into center from "Input" sheet
	 |4435-CreateActiveCenterwithmeetingattachedasweeklyFriday-AttendancePastDate.xlsx|
	 
	  @4436-CreateActiveCenterwithmeetingattachedasweeklyFriday-ExactDate-Attendance
Scenario:4436-CreateActiveCenterwithmeetingattachedasweeklyFriday-ExactDate-Attendance
	 Given I setup the center
	 When I entered the values into center from "Input" sheet
	 |4436-CreateActiveCenterwithmeetingattachedasweeklyFriday-ExactDate-Attendance.xlsx|
	 
	 @4437-CreateActiveCenterwithmeetingattachedasweeklyFriday-SubmitSameAttendanceDate2Times
Scenario:4437-CreateActiveCenterwithmeetingattachedasweeklyFriday-SubmitSameAttendanceDate2Times
	 Given I setup the center
	 When I entered the values into center from "Input" sheet
	 |4437-CreateActiveCenterwithmeetingattachedasweeklyFriday-SubmitSameAttendanceDate2Times.xlsx|
	 
	 @4438-CreateActiveCenterwithmeetingattachedasweeklyFriday-Close
Scenario:4438-CreateActiveCenterwithmeetingattachedasweeklyFriday-Close
	 Given I setup the center
	 When I entered the values into center from "Input" sheet
	 |4438-CreateActiveCenterwithmeetingattachedasweeklyFriday-Close.xlsx|
	 
	 @4439-CreateActiveCenterwithmeetingattachedasweeklyFriday-Assignstaff-Unassignstaff
Scenario:4439-CreateActiveCenterwithmeetingattachedasweeklyFriday-Assignstaff-Unassignstaff
	 Given I setup the center
	 When I entered the values into center from "Input" sheet
	 |4439-CreateActiveCenterwithmeetingattachedasweeklyFriday-Assignstaff-Unassignstaff.xlsx|
	 
	 @4440-CreateActiveCenterwithmeetingattachedasweeklyFriday-Modifymeeting-Repetesonevery2weeksonWednesday
Scenario:4440-CreateActiveCenterwithmeetingattachedasweeklyFriday-Modifymeeting-Repetesonevery2weeksonWednesday
	 Given I setup the center
	 When I entered the values into center from "Input" sheet
	 |4440-CreateActiveCenterwithmeetingattachedasweeklyFriday-Modifymeeting-Repetesonevery2weeksonWednesday.xlsx|
	 Then i validate and Verify from "Output" sheet
	 |4440-CreateActiveCenterwithmeetingattachedasweeklyFriday-Modifymeeting-Repetesonevery2weeksonWednesday.xlsx|
	 	 
	 @4441-CreateActiveCenterwithmeetingattachedasweeklyFriday-Modifymeeting-Repetesonevery2weeksonWednesday-abovechangeseffectfrom-15March2015
Scenario:4441-CreateActiveCenterwithmeetingattachedasweeklyFriday-Modifymeeting-Repetesonevery2weeksonWednesday-abovechangeseffectfrom-15March2015
	 Given I setup the center
	 When I entered the values into center from "Input" sheet
	 |4441-CreateActiveCenterwithmeetingattachedasweeklyFriday-Modifymeeting-Repetesonevery2weeksonWednesday-abovechangeseffectfrom-15March2015.xlsx|
	 Then i validate and Verify from "Output" sheet
	 |4441-CreateActiveCenterwithmeetingattachedasweeklyFriday-Modifymeeting-Repetesonevery2weeksonWednesday-abovechangeseffectfrom-15March2015.xlsx|
	 
	  @4442-CreateActiveCenterwithmeetingattachedasweeklyFriday-Modifymeeting-Repetesonmonthly
Scenario:4442-CreateActiveCenterwithmeetingattachedasweeklyFriday-Modifymeeting-Repetesonmonthly
	 Given I setup the center
	 When I entered the values into center from "Input" sheet
	 |4442-CreateActiveCenterwithmeetingattachedasweeklyFriday-Modifymeeting-Repetesonmonthly.xlsx|
	 Then i validate and Verify from "Output" sheet
	 |4442-CreateActiveCenterwithmeetingattachedasweeklyFriday-Modifymeeting-Repetesonmonthly.xlsx|
	 
	 @4443-CreateActiveCenterwithmeetingattachedasweeklyFriday-Modifymeeting-CancelModifyMeeting
Scenario:4443-CreateActiveCenterwithmeetingattachedasweeklyFriday-Modifymeeting-CancelModifyMeeting
	 Given I setup the center
	 When I entered the values into center from "Input" sheet
	 |4443-CreateActiveCenterwithmeetingattachedasweeklyFriday-Modifymeeting-CancelModifyMeeting.xlsx|
	 Then i validate and Verify from "Output" sheet
	 |4443-CreateActiveCenterwithmeetingattachedasweeklyFriday-Modifymeeting-CancelModifyMeeting.xlsx|
	 
	 @4444-CreateActiveCenterwithmeetingattachedasweeklyFriday-Modifymeeting-Futuremeeting-Changemeetingdatefrom10April2015to15April2015
Scenario:4444-CreateActiveCenterwithmeetingattachedasweeklyFriday-Modifymeeting-Futuremeeting-Changemeetingdatefrom10April2015to15April2015
	 Given I setup the center
	 When I entered the values into center from "Input" sheet
	 |4444-CreateActiveCenterwithmeetingattachedasweeklyFriday-Modifymeeting-Futuremeeting-Changemeetingdatefrom10April2015to15April2015.xlsx|
	 Then i validate and Verify from "Output" sheet
	 |4444-CreateActiveCenterwithmeetingattachedasweeklyFriday-Modifymeeting-Futuremeeting-Changemeetingdatefrom10April2015to15April2015.xlsx|
	 				  				  			  					 
	            
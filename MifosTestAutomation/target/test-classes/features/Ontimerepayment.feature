Feature:Client
Background:
	Given I navigate to mifos
	And I use login folder 
	When I login into mifos site using excel sheet
			| Login.xlsx  | 
	Then I should see logged in successfully

@scenario1

Scenario Outline:  Loan-5RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-ONTIME
	
	  Given I setup the product loan 
				| Productloannavigation.xlsx |
		And I entered the values into product loan using
				| <excelsheet> |
		Then I should see product loan created successfully	
				| <excelsheet> |
 		Examples:
				| excelsheet   | 
	 		   |5RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-ONTIME-Loanproduct4.xlsx|
	 		   
Scenario:  Loan-5RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-ONTIME
		Given I setup the clients 
		| Clientnavigation.xlsx |
	When I entered the values into client form using
	    |Createclient.xlsx|
	Then I should see client created successfully
	     |Createclient.xlsx|   
     When I set up the new create loan
	     | 5RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-ONTIME-Newcreateloan.xlsx|
	 Then I verified the "Summary" details successfully	
		 | 5RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-ONTIME-Newcreateloan.xlsx|
   And I verified the "Repayment Schedule" details successfully	
	     | 5RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-ONTIME-Newcreateloan.xlsx|
	     When I make repayment and verified the following tabs
    |5RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-ONTIME-Makerepayment1.xlsx|Repayment Schedule|
    
@scenario2

Scenario Outline:  Loan-6RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-ONTIME
	
	  Given I setup the product loan 
				| Productloannavigation.xlsx |
		And I entered the values into product loan using
				| <excelsheet> |
		Then I should see product loan created successfully	
				| <excelsheet> |
 		Examples:
				| excelsheet   | 
	 		   |6RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-ONTIME-Loanproduct4.xlsx|
	 		   
Scenario: Loan-6RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-ONTIME
		Given I setup the clients 
		| Clientnavigation.xlsx |
	When I entered the values into client form using
	    |Createclient.xlsx|
	Then I should see client created successfully
	     |Createclient.xlsx|   
	     When I set up the new create loan
	     | 6RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-ONTIME-Newcreateloan.xlsx|
	Then I verified the "Summary" details successfully	
		 | 6RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-ONTIME-Newcreateloan.xlsx|
   And I verified the "Repayment Schedule" details successfully	
	     | 6RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-ONTIME-Newcreateloan.xlsx|
	     When I make repayment and verified the following tabs
     |6RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-ONTIME-Makerepayment1.xlsx|Repayment Schedule|
     
@scenario3
Scenario Outline:  Loan-7RBI-EI-DB-DL-REC-NOCOM-RNI-CTRFD-SAR-MD-TR-1-ONTIME
	
	  Given I setup the product loan 
				| Productloannavigation.xlsx |
		And I entered the values into product loan using
				| <excelsheet> |
		Then I should see product loan created successfully	
				| <excelsheet> |
 		Examples:
				| excelsheet   | 
	 		   |7RBI-EI-DB-DL-REC-NOCOM-RNI-CTRFD-SAR-MD-TR-1-ONTIME-Loanproduct4.xlsx|
Scenario: Loan7-RBI-EI-DB-DL-REC-NOCOM-RNI-CTRFD-SAR-MD-TR-1-ONTIME
		Given I setup the clients 
		| Clientnavigation.xlsx |
	When I entered the values into client form using
	    |Createclient.xlsx|
	Then I should see client created successfully
	     |Createclient.xlsx|   
	     When I set up the new create loan
	     | 7RBI-EI-DB-DL-REC-NOCOM-RNI-CTRFD-SAR-MD-TR-1-ONTIME-Newcreateloan.xlsx|
	Then I verified the "Summary" details successfully	
		 | 7RBI-EI-DB-DL-REC-NOCOM-RNI-CTRFD-SAR-MD-TR-1-ONTIME-Newcreateloan.xlsx|
   And I verified the "Repayment Schedule" details successfully	
	     | 7RBI-EI-DB-DL-REC-NOCOM-RNI-CTRFD-SAR-MD-TR-1-ONTIME-Newcreateloan.xlsx|
	     When I make repayment and verified the following tabs
     |7RBI-EI-DB-DL-REC-NOCOM-RNI-CTRFD-SAR-MD-TR-1-ONTIME-Makerepayment1.xlsx|Repayment Schedule|

@scenario4
Scenario Outline: Loan-8RBI-EI-DB-DL-REC-NOCOM-RNI-CTRFD-DL-MD-TR-1-ONTIME
	
	  Given I setup the product loan 
				| Productloannavigation.xlsx |
		And I entered the values into product loan using
				| <excelsheet> |
		Then I should see product loan created successfully	
				| <excelsheet> |
 		Examples:
				| excelsheet   | 
	 		   |8RBI-EI-DB-DL-REC-NOCOM-RNI-CTRFD-DL-MD-TR-1-ONTIME-Loanproduct4.xlsx|
Scenario: Loan-8RBI-EI-DB-DL-REC-NOCOM-RNI-CTRFD-DL-MD-TR-1-ONTIME
		Given I setup the clients 
		| Clientnavigation.xlsx |
	When I entered the values into client form using
	    |Createclient.xlsx|
	Then I should see client created successfully
	     |Createclient.xlsx|
	     When I set up the new create loan
	     | 8RBI-EI-DB-DL-REC-NOCOM-RNI-CTRFD-DL-MD-TR-1-ONTIME-Newcreateloan.xlsx|
	Then I verified the "Summary" details successfully	
		 | 8RBI-EI-DB-DL-REC-NOCOM-RNI-CTRFD-DL-MD-TR-1-ONTIME-Newcreateloan.xlsx|
   And I verified the "Repayment Schedule" details successfully	
	     | 8RBI-EI-DB-DL-REC-NOCOM-RNI-CTRFD-DL-MD-TR-1-ONTIME-Newcreateloan.xlsx|
	     When I make repayment and verified the following tabs
     |8RBI-EI-DB-DL-REC-NOCOM-RNI-CTRFD-DL-MD-TR-1-ONTIME-Makerepayment1.xlsx|Repayment Schedule|

@scenario5
Scenario Outline:   Loan-53RBI-EI-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-ONTIME
	
	  Given I setup the product loan 
				| Productloannavigation.xlsx |
		And I entered the values into product loan using
				| <excelsheet> |
		Then I should see product loan created successfully	
				| <excelsheet> |
 		Examples:
				| excelsheet   | 
	 		   |53RBI-EI-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-ONTIME-Loanproduct4.xlsx|
Scenario: Loan-53RBI-EI-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-ONTIME
		Given I setup the clients 
		| Clientnavigation.xlsx |
	When I entered the values into client form using
	    |Createclient.xlsx|
	Then I should see client created successfully
	     |Createclient.xlsx|
	     When I set up the new create loan
	     | 53RBI-EI-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-ONTIME-Newcreateloan.xlsx|
	Then I verified the "Summary" details successfully	
		 | 53RBI-EI-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-ONTIME-Newcreateloan.xlsx|
   And I verified the "Repayment Schedule" details successfully	
	     | 53RBI-EI-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-ONTIME-Newcreateloan.xlsx|
	     When I make repayment and verified the following tabs
     |53RBI-EI-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-ONTIME-Makerepayment1.xlsx|Repayment Schedule|

@scenario6
Scenario Outline: Loan-54RBI-EI-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-ONTIME
	
	  Given I setup the product loan 
				| Productloannavigation.xlsx |
		And I entered the values into product loan using
				| <excelsheet> |
		Then I should see product loan created successfully	
				| <excelsheet> |
 		Examples:
				| excelsheet   | 
	 		   |54RBI-EI-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-ONTIME-Loanproduct4.xlsx|
Scenario: Loan-54RBI-EI-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-ONTIME
		Given I setup the clients 
		| Clientnavigation.xlsx |
	When I entered the values into client form using
	    |Createclient.xlsx|
	Then I should see client created successfully
	     |Createclient.xlsx|
	     When I set up the new create loan
	     | 54RBI-EI-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-ONTIME-Newcreateloan.xlsx|
	Then I verified the "Summary" details successfully	
		 | 54RBI-EI-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-ONTIME-Newcreateloan.xlsx|
   And I verified the "Repayment Schedule" details successfully	
	     | 54RBI-EI-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-ONTIME-Newcreateloan.xlsx|
	     When I make repayment and verified the following tabs
     |54RBI-EI-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-ONTIME-Makerepayment1.xlsx|Repayment Schedule|     

@scenario7
Scenario Outline:  Loan-55RBI-EI-DB-SAR-REC-NOCOM-RNI-CTRFD-SAR-MD-TR-1-ONTIME
	
	  Given I setup the product loan 
				| Productloannavigation.xlsx |
		And I entered the values into product loan using
				| <excelsheet> |
		Then I should see product loan created successfully	
				| <excelsheet> |
 		Examples:
				| excelsheet   | 
	 		   |55RBI-EI-DB-SAR-REC-NOCOM-RNI-CTRFD-SAR-MD-TR-1-ONTIME-Loanproduct4.xlsx|
Scenario: Loan-55RBI-EI-DB-SAR-REC-NOCOM-RNI-CTRFD-SAR-MD-TR-1-ONTIME
		Given I setup the clients 
		| Clientnavigation.xlsx |
	When I entered the values into client form using
	    |Createclient.xlsx|
	Then I should see client created successfully
	     |Createclient.xlsx|
	     When I set up the new create loan
	     | 55RBI-EI-DB-SAR-REC-NOCOM-RNI-CTRFD-SAR-MD-TR-1-ONTIME-Newcreateloan.xlsx|
	Then I verified the "Summary" details successfully	
		 | 55RBI-EI-DB-SAR-REC-NOCOM-RNI-CTRFD-SAR-MD-TR-1-ONTIME-Newcreateloan.xlsx|
    And I verified the "Repayment Schedule" details successfully	
	     | 55RBI-EI-DB-SAR-REC-NOCOM-RNI-CTRFD-SAR-MD-TR-1-ONTIME-Newcreateloan.xlsx|
	     When I make repayment and verified the following tabs
     |55RBI-EI-DB-SAR-REC-NOCOM-RNI-CTRFD-SAR-MD-TR-1-ONTIME-Makerepayment1.xlsx|Repayment Schedule|
      
     
     

     
       
Feature:VariableInstallment

Background:
	Given I navigate to mifos
	And I login into mifos site using "Login" excel sheet
		| Login.xlsx  |
	Then I should see logged in successfully
	
@scenario1-2425-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-DATE-VAR-INST
	  Scenario: 2425-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-DATE-VAR-INST  
 Given I setup the product loan "Setup"
	| Productloannavigation.xlsx |
 Then I entered the values into product loan from "ProductLoanInput" Sheet
	|2425-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-DATE-VAR-INST-Loanproduct.xlsx|
 Given I setup the clients 
 Then I entered the values into client from "Input" sheet
	|Createclient.xlsx|
 Then I should see client created successfully from "Output" sheet
	|Createclient.xlsx|
 When I set up the new create loan from "NewLoanInput" sheet
	| 2425-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-DATE-VAR-INST-Newcreateloan1.xlsx|
 Then I "Edit Date " In Edit Repayment Schedule page
    |2425-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-DATE-VAR-INST-Newcreateloan1.xlsx|Edit Repayment Schedule|
 Then I verified the "Summary" details successfully 
	|2425-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-DATE-VAR-INST-Newcreateloan1.xlsx|
 And I verified the "Repayment Schedule" details successfully 
    |2425-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-DATE-VAR-INST-Newcreateloan1.xlsx| 			
 Then I make repayment and read the transaction Id
 	|2425-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-DATE-VAR-INST-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
 	
@scenario2-2426-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-AMT-VAR-INST
	  Scenario: 2426-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-AMT-VAR-INST  
 Given I setup the clients 
 Then I entered the values into client from "Input" sheet
	|Createclient.xlsx|
 Then I should see client created successfully from "Output" sheet
	|Createclient.xlsx|
 When I set up the new create loan from "NewLoanInput" sheet
	| 2426-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-AMT-VAR-INST-Newcreateloan1.xlsx|
 Then I "Edit Amount " In Edit Repayment Schedule page
    |2426-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-AMT-VAR-INST-Newcreateloan1.xlsx|Edit Repayment Schedule|
 Then I verified the "Summary" details successfully 
	|2426-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-AMT-VAR-INST-Newcreateloan1.xlsx|
 And I verified the "Repayment Schedule" details successfully 
    |2426-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-AMT-VAR-INST-Newcreateloan1.xlsx| 			
 Then I make repayment and read the transaction Id
 	|2426-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-AMT-VAR-INST-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|

@scenario3-2427-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-DELETE-VAR-INST
	  Scenario: 2427-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-DELETE-VAR-INST  
 Given I setup the clients 
 Then I entered the values into client from "Input" sheet
	|Createclient.xlsx|
 Then I should see client created successfully from "Output" sheet
	|Createclient.xlsx|
 When I set up the new create loan from "NewLoanInput" sheet
	| 2427-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-DELETE-VAR-INST-Newcreateloan1.xlsx|
 Then I "Edit Amount " In Edit Repayment Schedule page
    |2427-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-DELETE-VAR-INST-Newcreateloan1.xlsx|Edit Repayment Schedule|
 Then I verified the "Summary" details successfully 
	|2427-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-DELETE-VAR-INST-Newcreateloan1.xlsx|
 And I verified the "Repayment Schedule" details successfully 
    |2427-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-DELETE-VAR-INST-Newcreateloan1.xlsx| 			
 Then I make repayment and read the transaction Id
 	|2427-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-DELETE-VAR-INST-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|

@scenario4-2428-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-ADD-VAR-INST
	  Scenario: 2428-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-ADD-VAR-INST  
Given I setup the clients 
 Then I entered the values into client from "Input" sheet
	|Createclient.xlsx|
 Then I should see client created successfully from "Output" sheet
	|Createclient.xlsx|
 When I set up the new create loan from "NewLoanInput" sheet
	| 2428-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-ADD-VAR-INST-Newcreateloan1.xlsx|
 Then I "Edit Amount " In Edit Repayment Schedule page
    |2428-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-ADD-VAR-INST-Newcreateloan1.xlsx|Edit Repayment Schedule|
 Then I verified the "Summary" details successfully 
	|2428-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-ADD-VAR-INST-Newcreateloan1.xlsx|
 And I verified the "Repayment Schedule" details successfully 
    |2428-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-ADD-VAR-INST-Newcreateloan1.xlsx| 			
 Then I make repayment and read the transaction Id
 	|2428-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-ADD-VAR-INST-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|

@scenario5-2429-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-PATTERN-VAR-INST
	  Scenario: 2429-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-PATTERN-VAR-INST  
 Given I setup the clients 
 Then I entered the values into client from "Input" sheet
	|Createclient.xlsx|
 Then I should see client created successfully from "Output" sheet
	|Createclient.xlsx|
 When I set up the new create loan from "NewLoanInput" sheet
	| 2429-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-PATTERN-VAR-INST-Newcreateloan1.xlsx|
 Then I "Edit Amount " In Edit Repayment Schedule page
    |2429-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-PATTERN-VAR-INST-Newcreateloan1.xlsx|Edit Repayment Schedule|
 Then I verified the "Summary" details successfully 
	|2429-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-PATTERN-VAR-INST-Newcreateloan1.xlsx|
 And I verified the "Repayment Schedule" details successfully 
    |2429-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-PATTERN-VAR-INST-Newcreateloan1.xlsx| 			
 Then I make repayment and read the transaction Id
 	|2429-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-PATTERN-VAR-INST-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|

@scenario6-2430-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-DATE-VAR-INST
	  Scenario: 2430-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-DATE-VAR-INST  
 Given I setup the product loan "Setup"
	| Productloannavigation.xlsx |
 Then I entered the values into product loan from "ProductLoanInput" Sheet
	|2430-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-DATE-VAR-INST-Loanproduct.xlsx|
 Given I setup the clients 
 Then I entered the values into client from "Input" sheet
	|Createclient.xlsx|
 Then I should see client created successfully from "Output" sheet
	|Createclient.xlsx|
 When I set up the new create loan from "NewLoanInput" sheet
	| 2430-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-DATE-VAR-INST-Newcreateloan1.xlsx|
 Then I "Edit Date " In Edit Repayment Schedule page
    |2430-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-DATE-VAR-INST-Newcreateloan1.xlsx|Edit Repayment Schedule|
 Then I verified the "Summary" details successfully 
	|2430-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-DATE-VAR-INST-Newcreateloan1.xlsx|
 And I verified the "Repayment Schedule" details successfully 
    |2430-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-DATE-VAR-INST-Newcreateloan1.xlsx| 			
 Then I make repayment and read the transaction Id
 	|2430-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-DATE-VAR-INST-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
 	
@scenario7-2431-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-AMT-VAR-INST
	  Scenario: 2431-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-AMT-VAR-INST  
 Given I setup the clients 
 Then I entered the values into client from "Input" sheet
	|Createclient.xlsx|
 Then I should see client created successfully from "Output" sheet
	|Createclient.xlsx|
 When I set up the new create loan from "NewLoanInput" sheet
	| 2431-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-AMT-VAR-INST-Newcreateloan1.xlsx|
 Then I "Edit Amount " In Edit Repayment Schedule page
    |2431-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-AMT-VAR-INST-Newcreateloan1.xlsx|Edit Repayment Schedule|
 Then I verified the "Summary" details successfully 
	|2431-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-AMT-VAR-INST-Newcreateloan1.xlsx|
 And I verified the "Repayment Schedule" details successfully 
    |2431-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-AMT-VAR-INST-Newcreateloan1.xlsx| 			
 Then I make repayment and read the transaction Id
 	|2431-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-AMT-VAR-INST-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|

@scenario8-2432-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-DELETE-VAR-INST
	  Scenario: 2432-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-DELETE-VAR-INST  
 Given I setup the clients 
 Then I entered the values into client from "Input" sheet
	|Createclient.xlsx|
 Then I should see client created successfully from "Output" sheet
	|Createclient.xlsx|
 When I set up the new create loan from "NewLoanInput" sheet
	| 2432-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-DELETE-VAR-INST-Newcreateloan1.xlsx|
 Then I "Edit Amount " In Edit Repayment Schedule page
    |2432-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-DELETE-VAR-INST-Newcreateloan1.xlsx|Edit Repayment Schedule|
 Then I verified the "Summary" details successfully 
	|2432-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-DELETE-VAR-INST-Newcreateloan1.xlsx|
 And I verified the "Repayment Schedule" details successfully 
    |2432-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-DELETE-VAR-INST-Newcreateloan1.xlsx| 			
 Then I make repayment and read the transaction Id
 	|2432-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-DELETE-VAR-INST-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|

@scenario9-2433-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-ADD-VAR-INST
	  Scenario: 2433-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-ADD-VAR-INST  
Given I setup the clients 
 Then I entered the values into client from "Input" sheet
	|Createclient.xlsx|
 Then I should see client created successfully from "Output" sheet
	|Createclient.xlsx|
 When I set up the new create loan from "NewLoanInput" sheet
	| 2433-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-ADD-VAR-INST-Newcreateloan1.xlsx|
 Then I "Edit Amount " In Edit Repayment Schedule page
    |2433-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-ADD-VAR-INST-Newcreateloan1.xlsx|Edit Repayment Schedule|
 Then I verified the "Summary" details successfully 
	|2433-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-ADD-VAR-INST-Newcreateloan1.xlsx|
 And I verified the "Repayment Schedule" details successfully 
    |2433-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-ADD-VAR-INST-Newcreateloan1.xlsx| 			
 Then I make repayment and read the transaction Id
 	|2433-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-ADD-VAR-INST-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|

@scenario10-2434-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-PATTERN-VAR-INST
	  Scenario: 2434-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-PATTERN-VAR-INST  
 Given I setup the clients 
 Then I entered the values into client from "Input" sheet
	|Createclient.xlsx|
 Then I should see client created successfully from "Output" sheet
	|Createclient.xlsx|
 When I set up the new create loan from "NewLoanInput" sheet
	| 2434-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-PATTERN-VAR-INST-Newcreateloan1.xlsx|
 Then I "Edit Amount " In Edit Repayment Schedule page
    |2434-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-PATTERN-VAR-INST-Newcreateloan1.xlsx|Edit Repayment Schedule|
 Then I verified the "Summary" details successfully 
	|2434-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-PATTERN-VAR-INST-Newcreateloan1.xlsx|
 And I verified the "Repayment Schedule" details successfully 
    |2434-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-PATTERN-VAR-INST-Newcreateloan1.xlsx| 			
 Then I make repayment and read the transaction Id
 	|2434-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-PATTERN-VAR-INST-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|

@scenario11-2435-RBI-EI-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-Date-VAR-INST
	  Scenario: 2435-RBI-EI-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-Date-VAR-INST  
 Given I setup the product loan "Setup"
	| Productloannavigation.xlsx |
 Then I entered the values into product loan from "ProductLoanInput" Sheet
	|2435-RBI-EI-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-Date-VAR-INST-Loanproduct.xlsx|
 Given I setup the clients 
 Then I entered the values into client from "Input" sheet
	|Createclient.xlsx|
 Then I should see client created successfully from "Output" sheet
	|Createclient.xlsx|
 When I set up the new create loan from "NewLoanInput" sheet
	| 2435-RBI-EI-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-Date-VAR-INST-Newcreateloan1.xlsx|
 Then I "Edit Date " In Edit Repayment Schedule page
    |2435-RBI-EI-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-Date-VAR-INST-Newcreateloan1.xlsx|Edit Repayment Schedule|
 Then I verified the "Summary" details successfully 
	|2435-RBI-EI-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-Date-VAR-INST-Newcreateloan1.xlsx|
 And I verified the "Repayment Schedule" details successfully 
    |2435-RBI-EI-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-Date-VAR-INST-Newcreateloan1.xlsx| 			
 Then I make repayment and read the transaction Id
 	|2435-RBI-EI-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-Date-VAR-INST-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
 	
@scenario12-2436-RBI-EI-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-AMT-VAR-INST
	  Scenario: 2436-RBI-EI-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-AMT-VAR-INST  
 Given I setup the clients 
 Then I entered the values into client from "Input" sheet
	|Createclient.xlsx|
 Then I should see client created successfully from "Output" sheet
	|Createclient.xlsx|
 When I set up the new create loan from "NewLoanInput" sheet
	| 2436-RBI-EI-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-AMT-VAR-INST-Newcreateloan1.xlsx|
 Then I "Edit Amount " In Edit Repayment Schedule page
    |2436-RBI-EI-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-AMT-VAR-INST-Newcreateloan1.xlsx|Edit Repayment Schedule|
 Then I verified the "Summary" details successfully 
	|2436-RBI-EI-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-AMT-VAR-INST-Newcreateloan1.xlsx|
 And I verified the "Repayment Schedule" details successfully 
    |2436-RBI-EI-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-AMT-VAR-INST-Newcreateloan1.xlsx| 			
 Then I make repayment and read the transaction Id
 	|2436-RBI-EI-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-AMT-VAR-INST-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|

@scenario13-2437-RBI-EI-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-DELETE-VAR-INST
	  Scenario: 2437-RBI-EI-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-DELETE-VAR-INST  
 Given I setup the clients 
 Then I entered the values into client from "Input" sheet
	|Createclient.xlsx|
 Then I should see client created successfully from "Output" sheet
	|Createclient.xlsx|
 When I set up the new create loan from "NewLoanInput" sheet
	| 2437-RBI-EI-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-DELETE-VAR-INST-Newcreateloan1.xlsx|
 Then I "Edit Amount " In Edit Repayment Schedule page
    |2437-RBI-EI-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-DELETE-VAR-INST-Newcreateloan1.xlsx|Edit Repayment Schedule|
 Then I verified the "Summary" details successfully 
	|2437-RBI-EI-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-DELETE-VAR-INST-Newcreateloan1.xlsx|
 And I verified the "Repayment Schedule" details successfully 
    |2437-RBI-EI-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-DELETE-VAR-INST-Newcreateloan1.xlsx| 			
 Then I make repayment and read the transaction Id
 	|2437-RBI-EI-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-DELETE-VAR-INST-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|

@scenario14-2438-RBI-EI-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-ADD-VAR-INST
	  Scenario: 2438-RBI-EI-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-ADD-VAR-INST  
Given I setup the clients 
 Then I entered the values into client from "Input" sheet
	|Createclient.xlsx|
 Then I should see client created successfully from "Output" sheet
	|Createclient.xlsx|
 When I set up the new create loan from "NewLoanInput" sheet
	| 2438-RBI-EI-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-ADD-VAR-INST-Newcreateloan1.xlsx|
 Then I "Edit Amount " In Edit Repayment Schedule page
    |2438-RBI-EI-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-ADD-VAR-INST-Newcreateloan1.xlsx|Edit Repayment Schedule|
 Then I verified the "Summary" details successfully 
	|2438-RBI-EI-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-ADD-VAR-INST-Newcreateloan1.xlsx|
 And I verified the "Repayment Schedule" details successfully 
    |2438-RBI-EI-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-ADD-VAR-INST-Newcreateloan1.xlsx| 			
 Then I make repayment and read the transaction Id
 	|2438-RBI-EI-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-ADD-VAR-INST-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|

@scenario15-2439-RBI-EI-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-PATTERN-VAR-INST
	  Scenario: 2439-RBI-EI-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-PATTERN-VAR-INST  
 Given I setup the clients 
 Then I entered the values into client from "Input" sheet
	|Createclient.xlsx|
 Then I should see client created successfully from "Output" sheet
	|Createclient.xlsx|
 When I set up the new create loan from "NewLoanInput" sheet
	| 2439-RBI-EI-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-PATTERN-VAR-INST-Newcreateloan1.xlsx|
 Then I "Edit Amount " In Edit Repayment Schedule page
    |2439-RBI-EI-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-PATTERN-VAR-INST-Newcreateloan1.xlsx|Edit Repayment Schedule|
 Then I verified the "Summary" details successfully 
	|2439-RBI-EI-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-PATTERN-VAR-INST-Newcreateloan1.xlsx|
 And I verified the "Repayment Schedule" details successfully 
    |2439-RBI-EI-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-PATTERN-VAR-INST-Newcreateloan1.xlsx| 			
 Then I make repayment and read the transaction Id
 	|2439-RBI-EI-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-PATTERN-VAR-INST-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|

@scenario16-2440-RBI-EI-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-DATE-VAR-INST
	  Scenario: 2440-RBI-EI-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-DATE-VAR-INST  
 Given I setup the product loan "Setup"
	| Productloannavigation.xlsx |
 Then I entered the values into product loan from "ProductLoanInput" Sheet
	|2440-RBI-EI-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-DATE-VAR-INST-Loanproduct.xlsx|
 Given I setup the clients 
 Then I entered the values into client from "Input" sheet
	|Createclient.xlsx|
 Then I should see client created successfully from "Output" sheet
	|Createclient.xlsx|
 When I set up the new create loan from "NewLoanInput" sheet
	| 2440-RBI-EI-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-DATE-VAR-INST-Newcreateloan1.xlsx|
 Then I "Edit Date " In Edit Repayment Schedule page
    |2440-RBI-EI-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-DATE-VAR-INST-Newcreateloan1.xlsx|Edit Repayment Schedule|
 Then I verified the "Summary" details successfully 
	|2440-RBI-EI-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-DATE-VAR-INST-Newcreateloan1.xlsx|
 And I verified the "Repayment Schedule" details successfully 
    |2440-RBI-EI-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-DATE-VAR-INST-Newcreateloan1.xlsx| 			
 Then I make repayment and read the transaction Id
 	|2440-RBI-EI-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-DATE-VAR-INST-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
 	
@scenario17-2441-RBI-EI-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-AMT-VAR-INST
	  Scenario: 2441-RBI-EI-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-AMT-VAR-INST  
 Given I setup the clients 
 Then I entered the values into client from "Input" sheet
	|Createclient.xlsx|
 Then I should see client created successfully from "Output" sheet
	|Createclient.xlsx|
 When I set up the new create loan from "NewLoanInput" sheet
	| 2441-RBI-EI-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-AMT-VAR-INST-Newcreateloan1.xlsx|
 Then I "Edit Amount " In Edit Repayment Schedule page
    |2441-RBI-EI-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-AMT-VAR-INST-Newcreateloan1.xlsx|Edit Repayment Schedule|
 Then I verified the "Summary" details successfully 
	|2441-RBI-EI-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-AMT-VAR-INST-Newcreateloan1.xlsx|
 And I verified the "Repayment Schedule" details successfully 
    |2441-RBI-EI-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-AMT-VAR-INST-Newcreateloan1.xlsx| 			
 Then I make repayment and read the transaction Id
 	|2441-RBI-EI-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-AMT-VAR-INST-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|

@scenario18-2442-RBI-EI-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-DELETE-VAR-INST
	  Scenario: 2442-RBI-EI-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-DELETE-VAR-INST  
 Given I setup the clients 
 Then I entered the values into client from "Input" sheet
	|Createclient.xlsx|
 Then I should see client created successfully from "Output" sheet
	|Createclient.xlsx|
 When I set up the new create loan from "NewLoanInput" sheet
	| 2442-RBI-EI-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-DELETE-VAR-INST-Newcreateloan1.xlsx|
 Then I "Edit Amount " In Edit Repayment Schedule page
    |2442-RBI-EI-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-DELETE-VAR-INST-Newcreateloan1.xlsx|Edit Repayment Schedule|
 Then I verified the "Summary" details successfully 
	|2442-RBI-EI-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-DELETE-VAR-INST-Newcreateloan1.xlsx|
 And I verified the "Repayment Schedule" details successfully 
    |2442-RBI-EI-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-DELETE-VAR-INST-Newcreateloan1.xlsx| 			
 Then I make repayment and read the transaction Id
 	|2442-RBI-EI-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-DELETE-VAR-INST-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|

@scenario19-2443-RBI-EI-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-ADD-VAR-INST
	  Scenario: 2443-RBI-EI-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-ADD-VAR-INST  
Given I setup the clients 
 Then I entered the values into client from "Input" sheet
	|Createclient.xlsx|
 Then I should see client created successfully from "Output" sheet
	|Createclient.xlsx|
 When I set up the new create loan from "NewLoanInput" sheet
	| 2443-RBI-EI-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-ADD-VAR-INST-Newcreateloan1.xlsx|
 Then I "Edit Amount " In Edit Repayment Schedule page
    |2443-RBI-EI-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-ADD-VAR-INST-Newcreateloan1.xlsx|Edit Repayment Schedule|
 Then I verified the "Summary" details successfully 
	|2443-RBI-EI-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-ADD-VAR-INST-Newcreateloan1.xlsx|
 And I verified the "Repayment Schedule" details successfully 
    |2443-RBI-EI-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-ADD-VAR-INST-Newcreateloan1.xlsx| 			
 Then I make repayment and read the transaction Id
 	|2443-RBI-EI-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-ADD-VAR-INST-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|

@scenario20-2444-RBI-EI-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-PATTERN-VAR-INST
	  Scenario: 2444-RBI-EI-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-PATTERN-VAR-INST  
 Given I setup the clients 
 Then I entered the values into client from "Input" sheet
	|Createclient.xlsx|
 Then I should see client created successfully from "Output" sheet
	|Createclient.xlsx|
 When I set up the new create loan from "NewLoanInput" sheet
	| 2444-RBI-EI-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-PATTERN-VAR-INST-Newcreateloan1.xlsx|
 Then I "Edit Amount " In Edit Repayment Schedule page
    |2444-RBI-EI-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-PATTERN-VAR-INST-Newcreateloan1.xlsx|Edit Repayment Schedule|
 Then I verified the "Summary" details successfully 
	|2444-RBI-EI-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-PATTERN-VAR-INST-Newcreateloan1.xlsx|
 And I verified the "Repayment Schedule" details successfully 
    |2444-RBI-EI-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-PATTERN-VAR-INST-Newcreateloan1.xlsx| 			
 Then I make repayment and read the transaction Id
 	|2444-RBI-EI-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-PATTERN-VAR-INST-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|

@scenario21-2445-RBI-EPP-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-DATE-VAR-INST
	Scenario: 2445-RBI-EPP-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-DATE-VAR-INST  
 Given I setup the product loan "Setup"
	| Productloannavigation.xlsx |
 Then I entered the values into product loan from "ProductLoanInput" Sheet
	|2445-RBI-EPP-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-DATE-VAR-INST-Loanproduct.xlsx|
 Given I setup the clients 
 Then I entered the values into client from "Input" sheet
	|Createclient.xlsx|
 Then I should see client created successfully from "Output" sheet
	|Createclient.xlsx|
 When I set up the new create loan from "NewLoanInput" sheet
	| 2445-RBI-EPP-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-DATE-VAR-INST-Newcreateloan1.xlsx|
 Then I "Edit Date " In Edit Repayment Schedule page
    |2445-RBI-EPP-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-DATE-VAR-INST-Newcreateloan1.xlsx|Edit Repayment Schedule|
 Then I verified the "Summary" details successfully 
	|2445-RBI-EPP-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-DATE-VAR-INST-Newcreateloan1.xlsx|
 And I verified the "Repayment Schedule" details successfully 
    |2445-RBI-EPP-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-DATE-VAR-INST-Newcreateloan1.xlsx| 			
 Then I make repayment and read the transaction Id
 	|2445-RBI-EPP-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-DATE-VAR-INST-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
 	
@scenario22-2446-RBI-EPP-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-AMT-VAR-INST
	Scenario: 2446-RBI-EPP-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-AMT-VAR-INST  
 Given I setup the clients 
 Then I entered the values into client from "Input" sheet
	|Createclient.xlsx|
 Then I should see client created successfully from "Output" sheet
	|Createclient.xlsx|
 When I set up the new create loan from "NewLoanInput" sheet
	| 2446-RBI-EPP-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-AMT-VAR-INST-Newcreateloan1.xlsx|
 Then I "Edit Amount " In Edit Repayment Schedule page
    |2446-RBI-EPP-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-AMT-VAR-INST-Newcreateloan1.xlsx|Edit Repayment Schedule|
 Then I verified the "Summary" details successfully 
	|2446-RBI-EPP-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-AMT-VAR-INST-Newcreateloan1.xlsx|
 And I verified the "Repayment Schedule" details successfully 
    |2446-RBI-EPP-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-AMT-VAR-INST-Newcreateloan1.xlsx| 			
 Then I make repayment and read the transaction Id
 	|2446-RBI-EPP-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-AMT-VAR-INST-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
 	
@scenario23-2447-RBI-EPP-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-DELETE-VAR-INST
	Scenario: 2447-RBI-EPP-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-DELETE-VAR-INST  
 Given I setup the clients 
 Then I entered the values into client from "Input" sheet
	|Createclient.xlsx|
 Then I should see client created successfully from "Output" sheet
	|Createclient.xlsx|
 When I set up the new create loan from "NewLoanInput" sheet
	| 2447-RBI-EPP-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-DELETE-VAR-INST-Newcreateloan1.xlsx|
 Then I "Delete " In Edit Repayment Schedule page
    |2447-RBI-EPP-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-DELETE-VAR-INST-Newcreateloan1.xlsx|Edit Repayment Schedule|
 Then I verified the "Summary" details successfully 
	|2447-RBI-EPP-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-DELETE-VAR-INST-Newcreateloan1.xlsx|
 And I verified the "Repayment Schedule" details successfully 
    |2447-RBI-EPP-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-DELETE-VAR-INST-Newcreateloan1.xlsx| 			
 Then I make repayment and read the transaction Id
 	|2447-RBI-EPP-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-DELETE-VAR-INST-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|

@scenario24-2448-RBI-EPP-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-ADD-VAR-INST
	Scenario: 2448-RBI-EPP-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-ADD-VAR-INST  
 Given I setup the clients 
 Then I entered the values into client from "Input" sheet
	|Createclient.xlsx|
 Then I should see client created successfully from "Output" sheet
	|Createclient.xlsx|
 When I set up the new create loan from "NewLoanInput" sheet
	| 2448-RBI-EPP-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-ADD-VAR-INST-Newcreateloan1.xlsx|
 Then I "Add " In Edit Repayment Schedule page
    |2448-RBI-EPP-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-ADD-VAR-INST-Newcreateloan1.xlsx|Edit Repayment Schedule|
 Then I verified the "Summary" details successfully 
	|2448-RBI-EPP-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-ADD-VAR-INST-Newcreateloan1.xlsx|
 And I verified the "Repayment Schedule" details successfully 
    |2448-RBI-EPP-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-ADD-VAR-INST-Newcreateloan1.xlsx| 			
 Then I make repayment and read the transaction Id
 	|2448-RBI-EPP-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-ADD-VAR-INST-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|

@scenario25-2449-RBI-EPP-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-PATTERN-VAR-INST
	Scenario: 2449-RBI-EPP-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-PATTERN-VAR-INST  
 Given I setup the clients 
 Then I entered the values into client from "Input" sheet
	|Createclient.xlsx|
 Then I should see client created successfully from "Output" sheet
	|Createclient.xlsx|
 When I set up the new create loan from "NewLoanInput" sheet
	| 2449-RBI-EPP-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-PATTERN-VAR-INST-Newcreateloan1.xlsx|
 Then I "Edit PATTERN " In Edit Repayment Schedule page
    |2449-RBI-EPP-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-PATTERN-VAR-INST-Newcreateloan1.xlsx|Edit Repayment Schedule|
 Then I verified the "Summary" details successfully 
	|2449-RBI-EPP-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-PATTERN-VAR-INST-Newcreateloan1.xlsx|
 And I verified the "Repayment Schedule" details successfully 
    |2449-RBI-EPP-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-PATTERN-VAR-INST-Newcreateloan1.xlsx| 			
 Then I make repayment and read the transaction Id
 	|2449-RBI-EPP-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-PATTERN-VAR-INST-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|

@scenario26-2450-RBI-EPP-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-DATE-VAR-INST
	Scenario: 2450-RBI-EPP-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-DATE-VAR-INST  
 Given I setup the product loan "Setup"
	| Productloannavigation.xlsx |
 Then I entered the values into product loan from "ProductLoanInput" Sheet
	|2450-RBI-EPP-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-DATE-VAR-INST-Loanproduct.xlsx|
 Given I setup the clients 
 Then I entered the values into client from "Input" sheet
	|Createclient.xlsx|
 Then I should see client created successfully from "Output" sheet
	|Createclient.xlsx|
 When I set up the new create loan from "NewLoanInput" sheet
	| 2450-RBI-EPP-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-DATE-VAR-INST-Newcreateloan1.xlsx|
 Then I "Edit Date " In Edit Repayment Schedule page
    |2450-RBI-EPP-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-DATE-VAR-INST-Newcreateloan1.xlsx|Edit Repayment Schedule|
 Then I verified the "Summary" details successfully 
	|2450-RBI-EPP-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-DATE-VAR-INST-Newcreateloan1.xlsx|
 And I verified the "Repayment Schedule" details successfully 
    |2450-RBI-EPP-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-DATE-VAR-INST-Newcreateloan1.xlsx| 			
 Then I make repayment and read the transaction Id
 	|2450-RBI-EPP-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-DATE-VAR-INST-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|

@scenario27-2451-RBI-EPP-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-AMT-VAR-INST
	Scenario: 2451-RBI-EPP-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-AMT-VAR-INST  
 Given I setup the clients 
 Then I entered the values into client from "Input" sheet
	|Createclient.xlsx|
 Then I should see client created successfully from "Output" sheet
	|Createclient.xlsx|
 When I set up the new create loan from "NewLoanInput" sheet
	| 2451-RBI-EPP-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-AMT-VAR-INST-Newcreateloan1.xlsx|
 Then I "Edit Amount " In Edit Repayment Schedule page
    |2451-RBI-EPP-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-AMT-VAR-INST-Newcreateloan1.xlsx|Edit Repayment Schedule|
 Then I verified the "Summary" details successfully 
	|2451-RBI-EPP-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-AMT-VAR-INST-Newcreateloan1.xlsx|
 And I verified the "Repayment Schedule" details successfully 
    |2451-RBI-EPP-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-AMT-VAR-INST-Newcreateloan1.xlsx| 			
 Then I make repayment and read the transaction Id
 	|2451-RBI-EPP-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-AMT-VAR-INST-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|

@scenario28-2452-RBI-EPP-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-DELETE-VAR-INST
	Scenario: 2452-RBI-EPP-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-DELETE-VAR-INST  
 Given I setup the clients 
 Then I entered the values into client from "Input" sheet
	|Createclient.xlsx|
 Then I should see client created successfully from "Output" sheet
	|Createclient.xlsx|
 When I set up the new create loan from "NewLoanInput" sheet
	| 2452-RBI-EPP-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-DELETE-VAR-INST-Newcreateloan1.xlsx|
 Then I "Delete " In Edit Repayment Schedule page
    |2452-RBI-EPP-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-DELETE-VAR-INST-Newcreateloan1.xlsx|Edit Repayment Schedule|
 Then I verified the "Summary" details successfully 
	|2452-RBI-EPP-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-DELETE-VAR-INST-Newcreateloan1.xlsx|
 And I verified the "Repayment Schedule" details successfully 
    |2452-RBI-EPP-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-DELETE-VAR-INST-Newcreateloan1.xlsx| 			
 Then I make repayment and read the transaction Id
 	|2452-RBI-EPP-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-DELETE-VAR-INST-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|

@scenario29-2453-RBI-EPP-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-ADD-VAR-INST
	Scenario: 2453-RBI-EPP-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-ADD-VAR-INST  
 Given I setup the clients 
 Then I entered the values into client from "Input" sheet
	|Createclient.xlsx|
 Then I should see client created successfully from "Output" sheet
	|Createclient.xlsx|
 When I set up the new create loan from "NewLoanInput" sheet
	| 2453-RBI-EPP-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-ADD-VAR-INST-Newcreateloan1.xlsx|
 Then I "Add " In Edit Repayment Schedule page
    |2453-RBI-EPP-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-ADD-VAR-INST-Newcreateloan1.xlsx|Edit Repayment Schedule|
 Then I verified the "Summary" details successfully 
	|2453-RBI-EPP-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-ADD-VAR-INST-Newcreateloan1.xlsx|
 And I verified the "Repayment Schedule" details successfully 
    |2453-RBI-EPP-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-ADD-VAR-INST-Newcreateloan1.xlsx| 			
 Then I make repayment and read the transaction Id
 	|2453-RBI-EPP-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-ADD-VAR-INST-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|

@scenario30-2454-RBI-EPP-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-PATTERN-VAR-INST
	Scenario: 2454-RBI-EPP-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-PATTERN-VAR-INST  
 Given I setup the clients 
 Then I entered the values into client from "Input" sheet
	|Createclient.xlsx|
 Then I should see client created successfully from "Output" sheet
	|Createclient.xlsx|
 When I set up the new create loan from "NewLoanInput" sheet
	| 2454-RBI-EPP-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-PATTERN-VAR-INST-Newcreateloan1.xlsx|
 Then I "Edit PATTERN " In Edit Repayment Schedule page
    |2454-RBI-EPP-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-PATTERN-VAR-INST-Newcreateloan1.xlsx|Edit Repayment Schedule|
 Then I verified the "Summary" details successfully 
	|2454-RBI-EPP-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-PATTERN-VAR-INST-Newcreateloan1.xlsx|
 And I verified the "Repayment Schedule" details successfully 
    |2454-RBI-EPP-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-PATTERN-VAR-INST-Newcreateloan1.xlsx| 			
 Then I make repayment and read the transaction Id
 	|2454-RBI-EPP-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-PATTERN-VAR-INST-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|

@scenario31-2455-RBI-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-DATE-VAR-INST
	Scenario: 2455-RBI-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-DATE-VAR-INST  
 Given I setup the product loan "Setup"
	| Productloannavigation.xlsx |
 Then I entered the values into product loan from "ProductLoanInput" Sheet
	|2455-RBI-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-DATE-VAR-INST-Loanproduct.xlsx|
 Given I setup the clients 
 Then I entered the values into client from "Input" sheet
	|Createclient.xlsx|
 Then I should see client created successfully from "Output" sheet
	|Createclient.xlsx|
 When I set up the new create loan from "NewLoanInput" sheet
	| 2455-RBI-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-DATE-VAR-INST-Newcreateloan1.xlsx|
 Then I "Edit Date " In Edit Repayment Schedule page
    |2455-RBI-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-DATE-VAR-INST-Newcreateloan1.xlsx|Edit Repayment Schedule|
 Then I verified the "Summary" details successfully 
	|2455-RBI-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-DATE-VAR-INST-Newcreateloan1.xlsx|
 And I verified the "Repayment Schedule" details successfully 
    |2455-RBI-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-DATE-VAR-INST-Newcreateloan1.xlsx| 			
 Then I make repayment and read the transaction Id
 	|2455-RBI-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-DATE-VAR-INST-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|

@scenario32-2456-RBI-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-AMT-VAR-INST
	Scenario: 2456-RBI-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-AMT-VAR-INST  
 Given I setup the clients 
 Then I entered the values into client from "Input" sheet
	|Createclient.xlsx|
 Then I should see client created successfully from "Output" sheet
	|Createclient.xlsx|
 When I set up the new create loan from "NewLoanInput" sheet
	| 2456-RBI-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-AMT-VAR-INST-Newcreateloan1.xlsx|
 Then I "Edit Amount " In Edit Repayment Schedule page
    |2456-RBI-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-AMT-VAR-INST-Newcreateloan1.xlsx|Edit Repayment Schedule|
 Then I verified the "Summary" details successfully 
	|2456-RBI-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-AMT-VAR-INST-Newcreateloan1.xlsx|
 And I verified the "Repayment Schedule" details successfully 
    |2456-RBI-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-AMT-VAR-INST-Newcreateloan1.xlsx| 			
 Then I make repayment and read the transaction Id
 	|2456-RBI-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-AMT-VAR-INST-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|

@scenario33-2457-RBI-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-DELETE-VAR-INST
	Scenario: 2457-RBI-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-DELETE-VAR-INST  
 Given I setup the clients 
 Then I entered the values into client from "Input" sheet
	|Createclient.xlsx|
 Then I should see client created successfully from "Output" sheet
	|Createclient.xlsx|
 When I set up the new create loan from "NewLoanInput" sheet
	| 2457-RBI-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-DELETE-VAR-INST-Newcreateloan1.xlsx|
 Then I "Delete " In Edit Repayment Schedule page
    |2457-RBI-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-DELETE-VAR-INST-Newcreateloan1.xlsx|Edit Repayment Schedule|
 Then I verified the "Summary" details successfully 
	|2457-RBI-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-DELETE-VAR-INST-Newcreateloan1.xlsx|
 And I verified the "Repayment Schedule" details successfully 
    |2457-RBI-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-DELETE-VAR-INST-Newcreateloan1.xlsx| 			
 Then I make repayment and read the transaction Id
 	|2457-RBI-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-DELETE-VAR-INST-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|

@scenario34-2458-RBI-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-ADD-VAR-INST
	Scenario: 2458-RBI-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-ADD-VAR-INST  
 Given I setup the clients 
 Then I entered the values into client from "Input" sheet
	|Createclient.xlsx|
 Then I should see client created successfully from "Output" sheet
	|Createclient.xlsx|
 When I set up the new create loan from "NewLoanInput" sheet
	| 2458-RBI-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-ADD-VAR-INST-Newcreateloan1.xlsx|
 Then I "Add " In Edit Repayment Schedule page
    |2458-RBI-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-ADD-VAR-INST-Newcreateloan1.xlsx|Edit Repayment Schedule|
 Then I verified the "Summary" details successfully 
	|2458-RBI-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-ADD-VAR-INST-Newcreateloan1.xlsx|
 And I verified the "Repayment Schedule" details successfully 
    |2458-RBI-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-ADD-VAR-INST-Newcreateloan1.xlsx| 			
 Then I make repayment and read the transaction Id
 	|2458-RBI-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-ADD-VAR-INST-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|

@scenario35-2459-RBI-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-PATTERN-VAR-INST
	Scenario: 2459-RBI-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-PATTERN-VAR-INST  
 Given I setup the clients 
 Then I entered the values into client from "Input" sheet
	|Createclient.xlsx|
 Then I should see client created successfully from "Output" sheet
	|Createclient.xlsx|
 When I set up the new create loan from "NewLoanInput" sheet
	| 2459-RBI-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-PATTERN-VAR-INST-Newcreateloan1.xlsx|
 Then I "Edit PATTERN " In Edit Repayment Schedule page
    |2459-RBI-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-PATTERN-VAR-INST-Newcreateloan1.xlsx|Edit Repayment Schedule|
 Then I verified the "Summary" details successfully 
	|2459-RBI-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-PATTERN-VAR-INST-Newcreateloan1.xlsx|
 And I verified the "Repayment Schedule" details successfully 
    |2459-RBI-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-PATTERN-VAR-INST-Newcreateloan1.xlsx| 			
 Then I make repayment and read the transaction Id
 	|2459-RBI-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-PATTERN-VAR-INST-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|

@scenario36-2460-RBI-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-DATE-VAR-INST
	Scenario: 2460-RBI-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-DATE-VAR-INST  
 Given I setup the product loan "Setup"
	| Productloannavigation.xlsx |
 Then I entered the values into product loan from "ProductLoanInput" Sheet
	|2460-RBI-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-DATE-VAR-INST-Loanproduct.xlsx|
 Given I setup the clients 
 Then I entered the values into client from "Input" sheet
	|Createclient.xlsx|
 Then I should see client created successfully from "Output" sheet
	|Createclient.xlsx|
 When I set up the new create loan from "NewLoanInput" sheet
	| 2460-RBI-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-DATE-VAR-INST-Newcreateloan1.xlsx|
 Then I "Edit Date " In Edit Repayment Schedule page
    |2460-RBI-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-DATE-VAR-INST-Newcreateloan1.xlsx|Edit Repayment Schedule|
 Then I verified the "Summary" details successfully 
	|2460-RBI-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-DATE-VAR-INST-Newcreateloan1.xlsx|
 And I verified the "Repayment Schedule" details successfully 
    |2460-RBI-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-DATE-VAR-INST-Newcreateloan1.xlsx| 			
 Then I make repayment and read the transaction Id
 	|2460-RBI-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-DATE-VAR-INST-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|

@scenario37-2461-RBI-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-AMT-VAR-INST
	Scenario: 2461-RBI-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-AMT-VAR-INST  
 Given I setup the clients 
 Then I entered the values into client from "Input" sheet
	|Createclient.xlsx|
 Then I should see client created successfully from "Output" sheet
	|Createclient.xlsx|
 When I set up the new create loan from "NewLoanInput" sheet
	| 2461-RBI-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-AMT-VAR-INST-Newcreateloan1.xlsx|
 Then I "Edit Amount " In Edit Repayment Schedule page
    |2461-RBI-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-AMT-VAR-INST-Newcreateloan1.xlsx|Edit Repayment Schedule|
 Then I verified the "Summary" details successfully 
	|2461-RBI-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-AMT-VAR-INST-Newcreateloan1.xlsx|
 And I verified the "Repayment Schedule" details successfully 
    |2461-RBI-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-AMT-VAR-INST-Newcreateloan1.xlsx| 			
 Then I make repayment and read the transaction Id
 	|2461-RBI-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-AMT-VAR-INST-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|

@scenario38-2462-RBI-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-DELETE-VAR-INST
	Scenario: 2462-RBI-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-DELETE-VAR-INST  
 Given I setup the clients 
 Then I entered the values into client from "Input" sheet
	|Createclient.xlsx|
 Then I should see client created successfully from "Output" sheet
	|Createclient.xlsx|
 When I set up the new create loan from "NewLoanInput" sheet
	| 2462-RBI-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-DELETE-VAR-INST-Newcreateloan1.xlsx|
 Then I "Edit Delete " In Edit Repayment Schedule page
    |2462-RBI-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-DELETE-VAR-INST-Newcreateloan1.xlsx|Edit Repayment Schedule|
 Then I verified the "Summary" details successfully 
	|2462-RBI-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-DELETE-VAR-INST-Newcreateloan1.xlsx|
 And I verified the "Repayment Schedule" details successfully 
    |2462-RBI-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-DELETE-VAR-INST-Newcreateloan1.xlsx| 			
 Then I make repayment and read the transaction Id
 	|2462-RBI-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-DELETE-VAR-INST-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|

@scenario39-2463-RBI-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-ADD-VAR-INST
	Scenario: 2463-RBI-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-ADD-VAR-INST  
 Given I setup the clients 
 Then I entered the values into client from "Input" sheet
	|Createclient.xlsx|
 Then I should see client created successfully from "Output" sheet
	|Createclient.xlsx|
 When I set up the new create loan from "NewLoanInput" sheet
	| 2463-RBI-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-ADD-VAR-INST-Newcreateloan1.xlsx|
 Then I "Add " In Edit Repayment Schedule page
    |2463-RBI-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-ADD-VAR-INST-Newcreateloan1.xlsx|Edit Repayment Schedule|
 Then I verified the "Summary" details successfully 
	|2463-RBI-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-ADD-VAR-INST-Newcreateloan1.xlsx|
 And I verified the "Repayment Schedule" details successfully 
    |2463-RBI-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-ADD-VAR-INST-Newcreateloan1.xlsx| 			
 Then I make repayment and read the transaction Id
 	|2463-RBI-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-ADD-VAR-INST-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|

@scenario40-2464-RBI-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-PATTERN-VAR-INST
	Scenario: 2464-RBI-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-PATTERN-VAR-INST  
 Given I setup the clients 
 Then I entered the values into client from "Input" sheet
	|Createclient.xlsx|
 Then I should see client created successfully from "Output" sheet
	|Createclient.xlsx|
 When I set up the new create loan from "NewLoanInput" sheet
	| 2464-RBI-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-PATTERN-VAR-INST-Newcreateloan1.xlsx|
 Then I "Edit PATTERN " In Edit Repayment Schedule page
    |2464-RBI-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-PATTERN-VAR-INST-Newcreateloan1.xlsx|Edit Repayment Schedule|
 Then I verified the "Summary" details successfully 
	|2464-RBI-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-PATTERN-VAR-INST-Newcreateloan1.xlsx|
 And I verified the "Repayment Schedule" details successfully 
    |2464-RBI-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-PATTERN-VAR-INST-Newcreateloan1.xlsx| 			
 Then I make repayment and read the transaction Id
 	|2464-RBI-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-PATTERN-VAR-INST-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
 	
@scenario81-2505-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-DATE-VAR-INST
	  Scenario: 2505-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-DATE-VAR-INST  
 Given I setup the product loan "Setup"
	| Productloannavigation.xlsx |
 Then I entered the values into product loan from "ProductLoanInput" Sheet
	|2505-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-DATE-VAR-INST-Loanproduct.xlsx|
 Given I setup the clients 
 Then I entered the values into client from "Input" sheet
	|Createclient.xlsx|
 Then I should see client created successfully from "Output" sheet
	|Createclient.xlsx|
 When I set up the new create loan from "NewLoanInput" sheet
	| 2505-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-DATE-VAR-INST-Newcreateloan1.xlsx|
 Then I "Edit Date " In Edit Repayment Schedule page
    |2505-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-DATE-VAR-INST-Newcreateloan1.xlsx|Edit Repayment Schedule|
 Then I verified the "Summary" details successfully 
	|2505-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-DATE-VAR-INST-Newcreateloan1.xlsx|
 And I verified the "Repayment Schedule" details successfully 
    |2505-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-DATE-VAR-INST-Newcreateloan1.xlsx| 			
 Then I make repayment and read the transaction Id
 	|2505-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-DATE-VAR-INST-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
 	
@scenario82-2506-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-AMT-VAR-INST
	  Scenario: 2506-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-AMT-VAR-INST  
 Given I setup the clients 
 Then I entered the values into client from "Input" sheet
	|Createclient.xlsx|
 Then I should see client created successfully from "Output" sheet
	|Createclient.xlsx|
 When I set up the new create loan from "NewLoanInput" sheet
	| 2506-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-AMT-VAR-INST-Newcreateloan1.xlsx|
 Then I "Edit Amount " In Edit Repayment Schedule page
    |2506-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-AMT-VAR-INST-Newcreateloan1.xlsx|Edit Repayment Schedule|
 Then I verified the "Summary" details successfully 
	|2506-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-AMT-VAR-INST-Newcreateloan1.xlsx|
 And I verified the "Repayment Schedule" details successfully 
    |2506-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-AMT-VAR-INST-Newcreateloan1.xlsx| 			
 Then I make repayment and read the transaction Id
 	|2506-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-AMT-VAR-INST-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|

@scenario83-2507-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-DELETE-VAR-INST
	  Scenario: 2507-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-DELETE-VAR-INST  
 Given I setup the clients 
 Then I entered the values into client from "Input" sheet
	|Createclient.xlsx|
 Then I should see client created successfully from "Output" sheet
	|Createclient.xlsx|
 When I set up the new create loan from "NewLoanInput" sheet
	| 2507-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-DELETE-VAR-INST-Newcreateloan1.xlsx|
 Then I "Edit Amount " In Edit Repayment Schedule page
    |2507-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-DELETE-VAR-INST-Newcreateloan1.xlsx|Edit Repayment Schedule|
 Then I verified the "Summary" details successfully 
	|2507-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-DELETE-VAR-INST-Newcreateloan1.xlsx|
 And I verified the "Repayment Schedule" details successfully 
    |2507-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-DELETE-VAR-INST-Newcreateloan1.xlsx| 			
 Then I make repayment and read the transaction Id
 	|2507-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-DELETE-VAR-INST-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|

@scenario84-2508-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-ADD-VAR-INST
	  Scenario: 2508-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-ADD-VAR-INST  
Given I setup the clients 
 Then I entered the values into client from "Input" sheet
	|Createclient.xlsx|
 Then I should see client created successfully from "Output" sheet
	|Createclient.xlsx|
 When I set up the new create loan from "NewLoanInput" sheet
	| 2508-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-ADD-VAR-INST-Newcreateloan1.xlsx|
 Then I "Edit Amount " In Edit Repayment Schedule page
    |2508-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-ADD-VAR-INST-Newcreateloan1.xlsx|Edit Repayment Schedule|
 Then I verified the "Summary" details successfully 
	|2508-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-ADD-VAR-INST-Newcreateloan1.xlsx|
 And I verified the "Repayment Schedule" details successfully 
    |2508-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-ADD-VAR-INST-Newcreateloan1.xlsx| 			
 Then I make repayment and read the transaction Id
 	|2508-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-ADD-VAR-INST-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|

@scenario85-2509-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-PATTERN-VAR-INST
	  Scenario: 2509-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-PATTERN-VAR-INST  
 Given I setup the clients 
 Then I entered the values into client from "Input" sheet
	|Createclient.xlsx|
 Then I should see client created successfully from "Output" sheet
	|Createclient.xlsx|
 When I set up the new create loan from "NewLoanInput" sheet
	| 2509-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-PATTERN-VAR-INST-Newcreateloan1.xlsx|
 Then I "Edit Amount " In Edit Repayment Schedule page
    |2509-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-PATTERN-VAR-INST-Newcreateloan1.xlsx|Edit Repayment Schedule|
 Then I verified the "Summary" details successfully 
	|2509-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-PATTERN-VAR-INST-Newcreateloan1.xlsx|
 And I verified the "Repayment Schedule" details successfully 
    |2509-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-PATTERN-VAR-INST-Newcreateloan1.xlsx| 			
 Then I make repayment and read the transaction Id
 	|2509-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-PATTERN-VAR-INST-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|

@scenario86-2510-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-DATE-VAR-INST
	  Scenario: 2510-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-DATE-VAR-INST  
 Given I setup the product loan "Setup"
	| Productloannavigation.xlsx |
 Then I entered the values into product loan from "ProductLoanInput" Sheet
	|2510-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-DATE-VAR-INST-Loanproduct.xlsx|
 Given I setup the clients 
 Then I entered the values into client from "Input" sheet
	|Createclient.xlsx|
 Then I should see client created successfully from "Output" sheet
	|Createclient.xlsx|
 When I set up the new create loan from "NewLoanInput" sheet
	| 2510-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-DATE-VAR-INST-Newcreateloan1.xlsx|
 Then I "Edit Date " In Edit Repayment Schedule page
    |2510-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-DATE-VAR-INST-Newcreateloan1.xlsx|Edit Repayment Schedule|
 Then I verified the "Summary" details successfully 
	|2510-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-DATE-VAR-INST-Newcreateloan1.xlsx|
 And I verified the "Repayment Schedule" details successfully 
    |2510-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-DATE-VAR-INST-Newcreateloan1.xlsx| 			
 Then I make repayment and read the transaction Id
 	|2510-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-DATE-VAR-INST-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
 	
@scenario87-2511-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-AMT-VAR-INST
	  Scenario: 2511-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-AMT-VAR-INST  
 Given I setup the clients 
 Then I entered the values into client from "Input" sheet
	|Createclient.xlsx|
 Then I should see client created successfully from "Output" sheet
	|Createclient.xlsx|
 When I set up the new create loan from "NewLoanInput" sheet
	| 2511-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-AMT-VAR-INST-Newcreateloan1.xlsx|
 Then I "Edit Amount " In Edit Repayment Schedule page
    |2511-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-AMT-VAR-INST-Newcreateloan1.xlsx|Edit Repayment Schedule|
 Then I verified the "Summary" details successfully 
	|2511-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-AMT-VAR-INST-Newcreateloan1.xlsx|
 And I verified the "Repayment Schedule" details successfully 
    |2511-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-AMT-VAR-INST-Newcreateloan1.xlsx| 			
 Then I make repayment and read the transaction Id
 	|2511-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-AMT-VAR-INST-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|

@scenario88-2512-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-DELETE-VAR-INST
	  Scenario: 2512-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-DELETE-VAR-INST  
 Given I setup the clients 
 Then I entered the values into client from "Input" sheet
	|Createclient.xlsx|
 Then I should see client created successfully from "Output" sheet
	|Createclient.xlsx|
 When I set up the new create loan from "NewLoanInput" sheet
	| 2512-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-DELETE-VAR-INST-Newcreateloan1.xlsx|
 Then I "Edit Amount " In Edit Repayment Schedule page
    |2512-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-DELETE-VAR-INST-Newcreateloan1.xlsx|Edit Repayment Schedule|
 Then I verified the "Summary" details successfully 
	|2512-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-DELETE-VAR-INST-Newcreateloan1.xlsx|
 And I verified the "Repayment Schedule" details successfully 
    |2512-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-DELETE-VAR-INST-Newcreateloan1.xlsx| 			
 Then I make repayment and read the transaction Id
 	|2512-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-DELETE-VAR-INST-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|

@scenario89-2513-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-ADD-VAR-INST
	  Scenario: 2513-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-ADD-VAR-INST  
Given I setup the clients 
 Then I entered the values into client from "Input" sheet
	|Createclient.xlsx|
 Then I should see client created successfully from "Output" sheet
	|Createclient.xlsx|
 When I set up the new create loan from "NewLoanInput" sheet
	| 2513-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-ADD-VAR-INST-Newcreateloan1.xlsx|
 Then I "Edit Amount " In Edit Repayment Schedule page
    |2513-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-ADD-VAR-INST-Newcreateloan1.xlsx|Edit Repayment Schedule|
 Then I verified the "Summary" details successfully 
	|2513-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-ADD-VAR-INST-Newcreateloan1.xlsx|
 And I verified the "Repayment Schedule" details successfully 
    |2513-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-ADD-VAR-INST-Newcreateloan1.xlsx| 			
 Then I make repayment and read the transaction Id
 	|2513-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-ADD-VAR-INST-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|

@scenario90-2514-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-PATTERN-VAR-INST
	  Scenario: 2514-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-PATTERN-VAR-INST  
 Given I setup the clients 
 Then I entered the values into client from "Input" sheet
	|Createclient.xlsx|
 Then I should see client created successfully from "Output" sheet
	|Createclient.xlsx|
 When I set up the new create loan from "NewLoanInput" sheet
	| 2514-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-PATTERN-VAR-INST-Newcreateloan1.xlsx|
 Then I "Edit Amount " In Edit Repayment Schedule page
    |2514-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-PATTERN-VAR-INST-Newcreateloan1.xlsx|Edit Repayment Schedule|
 Then I verified the "Summary" details successfully 
	|2514-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-PATTERN-VAR-INST-Newcreateloan1.xlsx|
 And I verified the "Repayment Schedule" details successfully 
    |2514-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-PATTERN-VAR-INST-Newcreateloan1.xlsx| 			
 Then I make repayment and read the transaction Id
 	|2514-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-PATTERN-VAR-INST-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|

@scenario91-2515-MS-EI-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-DATE-VAR-INST
	  Scenario: 2515-MS-EI-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-DATE-VAR-INST  
 Given I setup the product loan "Setup"
	| Productloannavigation.xlsx |
 Then I entered the values into product loan from "ProductLoanInput" Sheet
	|2515-MS-EI-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-DATE-VAR-INST-Loanproduct.xlsx|
 Given I setup the clients 
 Then I entered the values into client from "Input" sheet
	|Createclient.xlsx|
 Then I should see client created successfully from "Output" sheet
	|Createclient.xlsx|
 When I set up the new create loan from "NewLoanInput" sheet
	| 2515-MS-EI-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-DATE-VAR-INST-Newcreateloan1.xlsx|
 Then I "Edit Date " In Edit Repayment Schedule page
    |2515-MS-EI-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-DATE-VAR-INST-Newcreateloan1.xlsx|Edit Repayment Schedule|
 Then I verified the "Summary" details successfully 
	|2515-MS-EI-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-DATE-VAR-INST-Newcreateloan1.xlsx|
 And I verified the "Repayment Schedule" details successfully 
    |2515-MS-EI-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-DATE-VAR-INST-Newcreateloan1.xlsx| 			
 Then I make repayment and read the transaction Id
 	|2515-MS-EI-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-DATE-VAR-INST-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
 	
@scenario92-2516-MS-EI-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-AMT-VAR-INST
	  Scenario: 2516-MS-EI-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-AMT-VAR-INST  
 Given I setup the clients 
 Then I entered the values into client from "Input" sheet
	|Createclient.xlsx|
 Then I should see client created successfully from "Output" sheet
	|Createclient.xlsx|
 When I set up the new create loan from "NewLoanInput" sheet
	| 2516-MS-EI-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-AMT-VAR-INST-Newcreateloan1.xlsx|
 Then I "Edit Amount " In Edit Repayment Schedule page
    |2516-MS-EI-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-AMT-VAR-INST-Newcreateloan1.xlsx|Edit Repayment Schedule|
 Then I verified the "Summary" details successfully 
	|2516-MS-EI-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-AMT-VAR-INST-Newcreateloan1.xlsx|
 And I verified the "Repayment Schedule" details successfully 
    |2516-MS-EI-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-AMT-VAR-INST-Newcreateloan1.xlsx| 			
 Then I make repayment and read the transaction Id
 	|2516-MS-EI-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-AMT-VAR-INST-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|

@scenario93-2517-MS-EI-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-DELETE-VAR-INST
	  Scenario: 2517-MS-EI-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-DELETE-VAR-INST  
 Given I setup the clients 
 Then I entered the values into client from "Input" sheet
	|Createclient.xlsx|
 Then I should see client created successfully from "Output" sheet
	|Createclient.xlsx|
 When I set up the new create loan from "NewLoanInput" sheet
	| 2517-MS-EI-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-DELETE-VAR-INST-Newcreateloan1.xlsx|
 Then I "Edit Amount " In Edit Repayment Schedule page
    |2517-MS-EI-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-DELETE-VAR-INST-Newcreateloan1.xlsx|Edit Repayment Schedule|
 Then I verified the "Summary" details successfully 
	|2517-MS-EI-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-DELETE-VAR-INST-Newcreateloan1.xlsx|
 And I verified the "Repayment Schedule" details successfully 
    |2517-MS-EI-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-DELETE-VAR-INST-Newcreateloan1.xlsx| 			
 Then I make repayment and read the transaction Id
 	|2517-MS-EI-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-DELETE-VAR-INST-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|

@scenario94-2518-MS-EI-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-ADD-VAR-INST
	  Scenario: 2518-MS-EI-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-ADD-VAR-INST  
Given I setup the clients 
 Then I entered the values into client from "Input" sheet
	|Createclient.xlsx|
 Then I should see client created successfully from "Output" sheet
	|Createclient.xlsx|
 When I set up the new create loan from "NewLoanInput" sheet
	| 2518-MS-EI-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-ADD-VAR-INST-Newcreateloan1.xlsx|
 Then I "Edit Amount " In Edit Repayment Schedule page
    |2518-MS-EI-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-ADD-VAR-INST-Newcreateloan1.xlsx|Edit Repayment Schedule|
 Then I verified the "Summary" details successfully 
	|2518-MS-EI-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-ADD-VAR-INST-Newcreateloan1.xlsx|
 And I verified the "Repayment Schedule" details successfully 
    |2518-MS-EI-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-ADD-VAR-INST-Newcreateloan1.xlsx| 			
 Then I make repayment and read the transaction Id
 	|2518-MS-EI-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-ADD-VAR-INST-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|

@scenario95-2519-MS-EI-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-PATTERN-VAR-INST
	  Scenario: 2519-MS-EI-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-PATTERN-VAR-INST  
 Given I setup the clients 
 Then I entered the values into client from "Input" sheet
	|Createclient.xlsx|
 Then I should see client created successfully from "Output" sheet
	|Createclient.xlsx|
 When I set up the new create loan from "NewLoanInput" sheet
	| 2519-MS-EI-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-PATTERN-VAR-INST-Newcreateloan1.xlsx|
 Then I "Edit Amount " In Edit Repayment Schedule page
    |2519-MS-EI-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-PATTERN-VAR-INST-Newcreateloan1.xlsx|Edit Repayment Schedule|
 Then I verified the "Summary" details successfully 
	|2519-MS-EI-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-PATTERN-VAR-INST-Newcreateloan1.xlsx|
 And I verified the "Repayment Schedule" details successfully 
    |2519-MS-EI-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-PATTERN-VAR-INST-Newcreateloan1.xlsx| 			
 Then I make repayment and read the transaction Id
 	|2519-MS-EI-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-PATTERN-VAR-INST-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|

@scenario96-2520-MS-EI-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-DATE-VAR-INST
	  Scenario: 2520-MS-EI-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-DATE-VAR-INST  
 Given I setup the product loan "Setup"
	| Productloannavigation.xlsx |
 Then I entered the values into product loan from "ProductLoanInput" Sheet
	|2520-MS-EI-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-DATE-VAR-INST-Loanproduct.xlsx|
 Given I setup the clients 
 Then I entered the values into client from "Input" sheet
	|Createclient.xlsx|
 Then I should see client created successfully from "Output" sheet
	|Createclient.xlsx|
 When I set up the new create loan from "NewLoanInput" sheet
	| 2520-MS-EI-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-DATE-VAR-INST-Newcreateloan1.xlsx|
 Then I "Edit Date " In Edit Repayment Schedule page
    |2520-MS-EI-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-DATE-VAR-INST-Newcreateloan1.xlsx|Edit Repayment Schedule|
 Then I verified the "Summary" details successfully 
	|2520-MS-EI-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-DATE-VAR-INST-Newcreateloan1.xlsx|
 And I verified the "Repayment Schedule" details successfully 
    |2520-MS-EI-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-DATE-VAR-INST-Newcreateloan1.xlsx| 			
 Then I make repayment and read the transaction Id
 	|2520-MS-EI-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-DATE-VAR-INST-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
 	
@scenario97-2521-MS-EI-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-AMT-VAR-INST
	  Scenario: 2521-MS-EI-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-AMT-VAR-INST  
 Given I setup the clients 
 Then I entered the values into client from "Input" sheet
	|Createclient.xlsx|
 Then I should see client created successfully from "Output" sheet
	|Createclient.xlsx|
 When I set up the new create loan from "NewLoanInput" sheet
	| 2521-MS-EI-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-AMT-VAR-INST-Newcreateloan1.xlsx|
 Then I "Edit Amount " In Edit Repayment Schedule page
    |2521-MS-EI-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-AMT-VAR-INST-Newcreateloan1.xlsx|Edit Repayment Schedule|
 Then I verified the "Summary" details successfully 
	|2521-MS-EI-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-AMT-VAR-INST-Newcreateloan1.xlsx|
 And I verified the "Repayment Schedule" details successfully 
    |2521-MS-EI-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-AMT-VAR-INST-Newcreateloan1.xlsx| 			
 Then I make repayment and read the transaction Id
 	|2521-MS-EI-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-AMT-VAR-INST-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|

@scenario98-2522-MS-EI-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-DELETE-VAR-INST
	  Scenario: 2522-MS-EI-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-DELETE-VAR-INST  
 Given I setup the clients 
 Then I entered the values into client from "Input" sheet
	|Createclient.xlsx|
 Then I should see client created successfully from "Output" sheet
	|Createclient.xlsx|
 When I set up the new create loan from "NewLoanInput" sheet
	| 2522-MS-EI-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-DELETE-VAR-INST-Newcreateloan1.xlsx|
 Then I "Edit Amount " In Edit Repayment Schedule page
    |2522-MS-EI-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-DELETE-VAR-INST-Newcreateloan1.xlsx|Edit Repayment Schedule|
 Then I verified the "Summary" details successfully 
	|2522-MS-EI-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-DELETE-VAR-INST-Newcreateloan1.xlsx|
 And I verified the "Repayment Schedule" details successfully 
    |2522-MS-EI-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-DELETE-VAR-INST-Newcreateloan1.xlsx| 			
 Then I make repayment and read the transaction Id
 	|2522-MS-EI-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-DELETE-VAR-INST-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|

@scenario99-2523-MS-EI-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-ADD-VAR-INST
	  Scenario: 2523-MS-EI-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-ADD-VAR-INST  
Given I setup the clients 
 Then I entered the values into client from "Input" sheet
	|Createclient.xlsx|
 Then I should see client created successfully from "Output" sheet
	|Createclient.xlsx|
 When I set up the new create loan from "NewLoanInput" sheet
	| 2523-MS-EI-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-ADD-VAR-INST-Newcreateloan1.xlsx|
 Then I "Edit Amount " In Edit Repayment Schedule page
    |2523-MS-EI-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-ADD-VAR-INST-Newcreateloan1.xlsx|Edit Repayment Schedule|
 Then I verified the "Summary" details successfully 
	|2523-MS-EI-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-ADD-VAR-INST-Newcreateloan1.xlsx|
 And I verified the "Repayment Schedule" details successfully 
    |2523-MS-EI-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-ADD-VAR-INST-Newcreateloan1.xlsx| 			
 Then I make repayment and read the transaction Id
 	|2523-MS-EI-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-ADD-VAR-INST-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|

@scenario100-2524-MS-EI-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-PATTERN-VAR-INST
	  Scenario: 2524-MS-EI-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-PATTERN-VAR-INST  
 Given I setup the clients 
 Then I entered the values into client from "Input" sheet
	|Createclient.xlsx|
 Then I should see client created successfully from "Output" sheet
	|Createclient.xlsx|
 When I set up the new create loan from "NewLoanInput" sheet
	| 2524-MS-EI-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-PATTERN-VAR-INST-Newcreateloan1.xlsx|
 Then I "Edit Amount " In Edit Repayment Schedule page
    |2524-MS-EI-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-PATTERN-VAR-INST-Newcreateloan1.xlsx|Edit Repayment Schedule|
 Then I verified the "Summary" details successfully 
	|2524-MS-EI-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-PATTERN-VAR-INST-Newcreateloan1.xlsx|
 And I verified the "Repayment Schedule" details successfully 
    |2524-MS-EI-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-PATTERN-VAR-INST-Newcreateloan1.xlsx| 			
 Then I make repayment and read the transaction Id
 	|2524-MS-EI-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-PATTERN-VAR-INST-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|

@scenario101-2525-MS-EPP-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-DATE-VAR-INST
	Scenario: 2525-MS-EPP-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-DATE-VAR-INST  
 Given I setup the product loan "Setup"
	| Productloannavigation.xlsx |
 Then I entered the values into product loan from "ProductLoanInput" Sheet
	|2525-MS-EPP-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-DATE-VAR-INST-Loanproduct.xlsx|
 Given I setup the clients 
 Then I entered the values into client from "Input" sheet
	|Createclient.xlsx|
 Then I should see client created successfully from "Output" sheet
	|Createclient.xlsx|
 When I set up the new create loan from "NewLoanInput" sheet
	| 2525-MS-EPP-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-DATE-VAR-INST-Newcreateloan1.xlsx|
 Then I "Edit Date " In Edit Repayment Schedule page
    |2525-MS-EPP-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-DATE-VAR-INST-Newcreateloan1.xlsx|Edit Repayment Schedule|
 Then I verified the "Summary" details successfully 
	|2525-MS-EPP-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-DATE-VAR-INST-Newcreateloan1.xlsx|
 And I verified the "Repayment Schedule" details successfully 
    |2525-MS-EPP-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-DATE-VAR-INST-Newcreateloan1.xlsx| 			
 Then I make repayment and read the transaction Id
 	|2525-MS-EPP-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-DATE-VAR-INST-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
 	
@scenario102-2526-MS-EPP-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-AMT-VAR-INST
	Scenario: 2526-MS-EPP-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-AMT-VAR-INST  
 Given I setup the clients 
 Then I entered the values into client from "Input" sheet
	|Createclient.xlsx|
 Then I should see client created successfully from "Output" sheet
	|Createclient.xlsx|
 When I set up the new create loan from "NewLoanInput" sheet
	| 2526-MS-EPP-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-AMT-VAR-INST-Newcreateloan1.xlsx|
 Then I "Edit Amount " In Edit Repayment Schedule page
    |2526-MS-EPP-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-AMT-VAR-INST-Newcreateloan1.xlsx|Edit Repayment Schedule|
 Then I verified the "Summary" details successfully 
	|2526-MS-EPP-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-AMT-VAR-INST-Newcreateloan1.xlsx|
 And I verified the "Repayment Schedule" details successfully 
    |2526-MS-EPP-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-AMT-VAR-INST-Newcreateloan1.xlsx| 			
 Then I make repayment and read the transaction Id
 	|2526-MS-EPP-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-AMT-VAR-INST-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
 	
@scenario103-2527-MS-EPP-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-DELETE-VAR-INST
	Scenario: 2527-MS-EPP-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-DELETE-VAR-INST  
 Given I setup the clients 
 Then I entered the values into client from "Input" sheet
	|Createclient.xlsx|
 Then I should see client created successfully from "Output" sheet
	|Createclient.xlsx|
 When I set up the new create loan from "NewLoanInput" sheet
	| 2527-MS-EPP-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-DELETE-VAR-INST-Newcreateloan1.xlsx|
 Then I "Delete " In Edit Repayment Schedule page
    |2527-MS-EPP-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-DELETE-VAR-INST-Newcreateloan1.xlsx|Edit Repayment Schedule|
 Then I verified the "Summary" details successfully 
	|2527-MS-EPP-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-DELETE-VAR-INST-Newcreateloan1.xlsx|
 And I verified the "Repayment Schedule" details successfully 
    |2527-MS-EPP-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-DELETE-VAR-INST-Newcreateloan1.xlsx| 			
 Then I make repayment and read the transaction Id
 	|2527-MS-EPP-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-DELETE-VAR-INST-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|

@scenario104-2528-MS-EPP-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-ADD-VAR-INST
	Scenario: 2528-MS-EPP-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-ADD-VAR-INST  
 Given I setup the clients 
 Then I entered the values into client from "Input" sheet
	|Createclient.xlsx|
 Then I should see client created successfully from "Output" sheet
	|Createclient.xlsx|
 When I set up the new create loan from "NewLoanInput" sheet
	| 2528-MS-EPP-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-ADD-VAR-INST-Newcreateloan1.xlsx|
 Then I "Add " In Edit Repayment Schedule page
    |2528-MS-EPP-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-ADD-VAR-INST-Newcreateloan1.xlsx|Edit Repayment Schedule|
 Then I verified the "Summary" details successfully 
	|2528-MS-EPP-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-ADD-VAR-INST-Newcreateloan1.xlsx|
 And I verified the "Repayment Schedule" details successfully 
    |2528-MS-EPP-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-ADD-VAR-INST-Newcreateloan1.xlsx| 			
 Then I make repayment and read the transaction Id
 	|2528-MS-EPP-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-ADD-VAR-INST-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|

@scenario105-2529-MS-EPP-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-PATTERN-VAR-INST
	Scenario: 2529-MS-EPP-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-PATTERN-VAR-INST  
 Given I setup the clients 
 Then I entered the values into client from "Input" sheet
	|Createclient.xlsx|
 Then I should see client created successfully from "Output" sheet
	|Createclient.xlsx|
 When I set up the new create loan from "NewLoanInput" sheet
	| 2529-MS-EPP-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-PATTERN-VAR-INST-Newcreateloan1.xlsx|
 Then I "Edit PATTERN " In Edit Repayment Schedule page
    |2529-MS-EPP-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-PATTERN-VAR-INST-Newcreateloan1.xlsx|Edit Repayment Schedule|
 Then I verified the "Summary" details successfully 
	|2529-MS-EPP-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-PATTERN-VAR-INST-Newcreateloan1.xlsx|
 And I verified the "Repayment Schedule" details successfully 
    |2529-MS-EPP-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-PATTERN-VAR-INST-Newcreateloan1.xlsx| 			
 Then I make repayment and read the transaction Id
 	|2529-MS-EPP-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-PATTERN-VAR-INST-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|

@scenario106-2530-MS-EPP-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-DATE-VAR-INST
	Scenario: 2530-MS-EPP-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-DATE-VAR-INST  
 Given I setup the product loan "Setup"
	| Productloannavigation.xlsx |
 Then I entered the values into product loan from "ProductLoanInput" Sheet
	|2530-MS-EPP-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-DATE-VAR-INST-Loanproduct.xlsx|
 Given I setup the clients 
 Then I entered the values into client from "Input" sheet
	|Createclient.xlsx|
 Then I should see client created successfully from "Output" sheet
	|Createclient.xlsx|
 When I set up the new create loan from "NewLoanInput" sheet
	| 2530-MS-EPP-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-DATE-VAR-INST-Newcreateloan1.xlsx|
 Then I "Edit Date " In Edit Repayment Schedule page
    |2530-MS-EPP-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-DATE-VAR-INST-Newcreateloan1.xlsx|Edit Repayment Schedule|
 Then I verified the "Summary" details successfully 
	|2530-MS-EPP-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-DATE-VAR-INST-Newcreateloan1.xlsx|
 And I verified the "Repayment Schedule" details successfully 
    |2530-MS-EPP-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-DATE-VAR-INST-Newcreateloan1.xlsx| 			
 Then I make repayment and read the transaction Id
 	|2530-MS-EPP-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-DATE-VAR-INST-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|

@scenario107-2531-MS-EPP-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-AMT-VAR-INST
	Scenario: 2531-MS-EPP-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-AMT-VAR-INST  
 Given I setup the clients 
 Then I entered the values into client from "Input" sheet
	|Createclient.xlsx|
 Then I should see client created successfully from "Output" sheet
	|Createclient.xlsx|
 When I set up the new create loan from "NewLoanInput" sheet
	| 2531-MS-EPP-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-AMT-VAR-INST-Newcreateloan1.xlsx|
 Then I "Edit Amount " In Edit Repayment Schedule page
    |2531-MS-EPP-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-AMT-VAR-INST-Newcreateloan1.xlsx|Edit Repayment Schedule|
 Then I verified the "Summary" details successfully 
	|2531-MS-EPP-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-AMT-VAR-INST-Newcreateloan1.xlsx|
 And I verified the "Repayment Schedule" details successfully 
    |2531-MS-EPP-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-AMT-VAR-INST-Newcreateloan1.xlsx| 			
 Then I make repayment and read the transaction Id
 	|2531-MS-EPP-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-AMT-VAR-INST-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|

@scenario108-2532-MS-EPP-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-DELETE-VAR-INST
	Scenario: 2532-MS-EPP-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-DELETE-VAR-INST  
 Given I setup the clients 
 Then I entered the values into client from "Input" sheet
	|Createclient.xlsx|
 Then I should see client created successfully from "Output" sheet
	|Createclient.xlsx|
 When I set up the new create loan from "NewLoanInput" sheet
	| 2532-MS-EPP-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-DELETE-VAR-INST-Newcreateloan1.xlsx|
 Then I "Delete " In Edit Repayment Schedule page
    |2532-MS-EPP-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-DELETE-VAR-INST-Newcreateloan1.xlsx|Edit Repayment Schedule|
 Then I verified the "Summary" details successfully 
	|2532-MS-EPP-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-DELETE-VAR-INST-Newcreateloan1.xlsx|
 And I verified the "Repayment Schedule" details successfully 
    |2532-MS-EPP-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-DELETE-VAR-INST-Newcreateloan1.xlsx| 			
 Then I make repayment and read the transaction Id
 	|2532-MS-EPP-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-DELETE-VAR-INST-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|

@scenario109-2533-MS-EPP-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-ADD-VAR-INST
	Scenario: 2533-MS-EPP-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-ADD-VAR-INST  
 Given I setup the clients 
 Then I entered the values into client from "Input" sheet
	|Createclient.xlsx|
 Then I should see client created successfully from "Output" sheet
	|Createclient.xlsx|
 When I set up the new create loan from "NewLoanInput" sheet
	| 2533-MS-EPP-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-ADD-VAR-INST-Newcreateloan1.xlsx|
 Then I "Add " In Edit Repayment Schedule page
    |2533-MS-EPP-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-ADD-VAR-INST-Newcreateloan1.xlsx|Edit Repayment Schedule|
 Then I verified the "Summary" details successfully 
	|2533-MS-EPP-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-ADD-VAR-INST-Newcreateloan1.xlsx|
 And I verified the "Repayment Schedule" details successfully 
    |2533-MS-EPP-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-ADD-VAR-INST-Newcreateloan1.xlsx| 			
 Then I make repayment and read the transaction Id
 	|2533-MS-EPP-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-ADD-VAR-INST-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|

@scenario110-2534-MS-EPP-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-PATTERN-VAR-INST
	Scenario: 2534-MS-EPP-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-PATTERN-VAR-INST  
 Given I setup the clients 
 Then I entered the values into client from "Input" sheet
	|Createclient.xlsx|
 Then I should see client created successfully from "Output" sheet
	|Createclient.xlsx|
 When I set up the new create loan from "NewLoanInput" sheet
	| 2534-MS-EPP-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-PATTERN-VAR-INST-Newcreateloan1.xlsx|
 Then I "Edit PATTERN " In Edit Repayment Schedule page
    |2534-MS-EPP-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-PATTERN-VAR-INST-Newcreateloan1.xlsx|Edit Repayment Schedule|
 Then I verified the "Summary" details successfully 
	|2534-MS-EPP-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-PATTERN-VAR-INST-Newcreateloan1.xlsx|
 And I verified the "Repayment Schedule" details successfully 
    |2534-MS-EPP-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-PATTERN-VAR-INST-Newcreateloan1.xlsx| 			
 Then I make repayment and read the transaction Id
 	|2534-MS-EPP-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-PATTERN-VAR-INST-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|

@scenario111-2535-MS-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-DATE-VAR-INST
	Scenario: 2535-MS-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-DATE-VAR-INST  
 Given I setup the product loan "Setup"
	| Productloannavigation.xlsx |
 Then I entered the values into product loan from "ProductLoanInput" Sheet
	|2535-MS-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-DATE-VAR-INST-Loanproduct.xlsx|
 Given I setup the clients 
 Then I entered the values into client from "Input" sheet
	|Createclient.xlsx|
 Then I should see client created successfully from "Output" sheet
	|Createclient.xlsx|
 When I set up the new create loan from "NewLoanInput" sheet
	| 2535-MS-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-DATE-VAR-INST-Newcreateloan1.xlsx|
 Then I "Edit Date " In Edit Repayment Schedule page
    |2535-MS-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-DATE-VAR-INST-Newcreateloan1.xlsx|Edit Repayment Schedule|
 Then I verified the "Summary" details successfully 
	|2535-MS-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-DATE-VAR-INST-Newcreateloan1.xlsx|
 And I verified the "Repayment Schedule" details successfully 
    |2535-MS-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-DATE-VAR-INST-Newcreateloan1.xlsx| 			
 Then I make repayment and read the transaction Id
 	|2535-MS-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-DATE-VAR-INST-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|

@scenario112-2536-MS-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-AMT-VAR-INST
	Scenario: 2536-MS-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-AMT-VAR-INST  
 Given I setup the clients 
 Then I entered the values into client from "Input" sheet
	|Createclient.xlsx|
 Then I should see client created successfully from "Output" sheet
	|Createclient.xlsx|
 When I set up the new create loan from "NewLoanInput" sheet
	| 2536-MS-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-AMT-VAR-INST-Newcreateloan1.xlsx|
 Then I "Edit Amount " In Edit Repayment Schedule page
    |2536-MS-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-AMT-VAR-INST-Newcreateloan1.xlsx|Edit Repayment Schedule|
 Then I verified the "Summary" details successfully 
	|2536-MS-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-AMT-VAR-INST-Newcreateloan1.xlsx|
 And I verified the "Repayment Schedule" details successfully 
    |2536-MS-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-AMT-VAR-INST-Newcreateloan1.xlsx| 			
 Then I make repayment and read the transaction Id
 	|2536-MS-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-AMT-VAR-INST-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|

@scenario113-2537-MS-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-DELETE-VAR-INST
	Scenario: 2537-MS-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-DELETE-VAR-INST  
 Given I setup the clients 
 Then I entered the values into client from "Input" sheet
	|Createclient.xlsx|
 Then I should see client created successfully from "Output" sheet
	|Createclient.xlsx|
 When I set up the new create loan from "NewLoanInput" sheet
	| 2537-MS-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-DELETE-VAR-INST-Newcreateloan1.xlsx|
 Then I "Delete " In Edit Repayment Schedule page
    |2537-MS-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-DELETE-VAR-INST-Newcreateloan1.xlsx|Edit Repayment Schedule|
 Then I verified the "Summary" details successfully 
	|2537-MS-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-DELETE-VAR-INST-Newcreateloan1.xlsx|
 And I verified the "Repayment Schedule" details successfully 
    |2537-MS-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-DELETE-VAR-INST-Newcreateloan1.xlsx| 			
 Then I make repayment and read the transaction Id
 	|2537-MS-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-DELETE-VAR-INST-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|

@scenario114-2538-MS-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-ADD-VAR-INST
	Scenario: 2538-MS-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-ADD-VAR-INST  
 Given I setup the clients 
 Then I entered the values into client from "Input" sheet
	|Createclient.xlsx|
 Then I should see client created successfully from "Output" sheet
	|Createclient.xlsx|
 When I set up the new create loan from "NewLoanInput" sheet
	| 2538-MS-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-ADD-VAR-INST-Newcreateloan1.xlsx|
 Then I "Add " In Edit Repayment Schedule page
    |2538-MS-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-ADD-VAR-INST-Newcreateloan1.xlsx|Edit Repayment Schedule|
 Then I verified the "Summary" details successfully 
	|2538-MS-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-ADD-VAR-INST-Newcreateloan1.xlsx|
 And I verified the "Repayment Schedule" details successfully 
    |2538-MS-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-ADD-VAR-INST-Newcreateloan1.xlsx| 			
 Then I make repayment and read the transaction Id
 	|2538-MS-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-ADD-VAR-INST-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|

@scenario115-2539-MS-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-PATTERN-VAR-INST
	Scenario: 2539-MS-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-PATTERN-VAR-INST  
 Given I setup the clients 
 Then I entered the values into client from "Input" sheet
	|Createclient.xlsx|
 Then I should see client created successfully from "Output" sheet
	|Createclient.xlsx|
 When I set up the new create loan from "NewLoanInput" sheet
	| 2539-MS-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-PATTERN-VAR-INST-Newcreateloan1.xlsx|
 Then I "Edit PATTERN " In Edit Repayment Schedule page
    |2539-MS-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-PATTERN-VAR-INST-Newcreateloan1.xlsx|Edit Repayment Schedule|
 Then I verified the "Summary" details successfully 
	|2539-MS-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-PATTERN-VAR-INST-Newcreateloan1.xlsx|
 And I verified the "Repayment Schedule" details successfully 
    |2539-MS-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-PATTERN-VAR-INST-Newcreateloan1.xlsx| 			
 Then I make repayment and read the transaction Id
 	|2539-MS-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-PATTERN-VAR-INST-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|

@scenario116-2540-MS-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-DATE-VAR-INST
	Scenario: 2540-MS-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-DATE-VAR-INST  
 Given I setup the product loan "Setup"
	| Productloannavigation.xlsx |
 Then I entered the values into product loan from "ProductLoanInput" Sheet
	|2540-MS-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-DATE-VAR-INST-Loanproduct.xlsx|
 Given I setup the clients 
 Then I entered the values into client from "Input" sheet
	|Createclient.xlsx|
 Then I should see client created successfully from "Output" sheet
	|Createclient.xlsx|
 When I set up the new create loan from "NewLoanInput" sheet
	| 2540-MS-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-DATE-VAR-INST-Newcreateloan1.xlsx|
 Then I "Edit Date " In Edit Repayment Schedule page
    |2540-MS-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-DATE-VAR-INST-Newcreateloan1.xlsx|Edit Repayment Schedule|
 Then I verified the "Summary" details successfully 
	|2540-MS-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-DATE-VAR-INST-Newcreateloan1.xlsx|
 And I verified the "Repayment Schedule" details successfully 
    |2540-MS-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-DATE-VAR-INST-Newcreateloan1.xlsx| 			
 Then I make repayment and read the transaction Id
 	|2540-MS-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-DATE-VAR-INST-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|

@scenario117-2541-MS-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-AMT-VAR-INST
	Scenario: 2541-MS-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-AMT-VAR-INST  
 Given I setup the clients 
 Then I entered the values into client from "Input" sheet
	|Createclient.xlsx|
 Then I should see client created successfully from "Output" sheet
	|Createclient.xlsx|
 When I set up the new create loan from "NewLoanInput" sheet
	| 2541-MS-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-AMT-VAR-INST-Newcreateloan1.xlsx|
 Then I "Edit Amount " In Edit Repayment Schedule page
    |2541-MS-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-AMT-VAR-INST-Newcreateloan1.xlsx|Edit Repayment Schedule|
 Then I verified the "Summary" details successfully 
	|2541-MS-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-AMT-VAR-INST-Newcreateloan1.xlsx|
 And I verified the "Repayment Schedule" details successfully 
    |2541-MS-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-AMT-VAR-INST-Newcreateloan1.xlsx| 			
 Then I make repayment and read the transaction Id
 	|2541-MS-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-AMT-VAR-INST-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|

@scenario118-2542-MS-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-DELETE-VAR-INST
	Scenario: 2542-MS-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-DELETE-VAR-INST  
 Given I setup the clients 
 Then I entered the values into client from "Input" sheet
	|Createclient.xlsx|
 Then I should see client created successfully from "Output" sheet
	|Createclient.xlsx|
 When I set up the new create loan from "NewLoanInput" sheet
	| 2542-MS-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-DELETE-VAR-INST-Newcreateloan1.xlsx|
 Then I "Edit Delete " In Edit Repayment Schedule page
    |2542-MS-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-DELETE-VAR-INST-Newcreateloan1.xlsx|Edit Repayment Schedule|
 Then I verified the "Summary" details successfully 
	|2542-MS-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-DELETE-VAR-INST-Newcreateloan1.xlsx|
 And I verified the "Repayment Schedule" details successfully 
    |2542-MS-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-DELETE-VAR-INST-Newcreateloan1.xlsx| 			
 Then I make repayment and read the transaction Id
 	|2542-MS-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-DELETE-VAR-INST-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|

@scenario119-2543-MS-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-ADD-VAR-INST
	Scenario: 2543-MS-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-ADD-VAR-INST  
 Given I setup the clients 
 Then I entered the values into client from "Input" sheet
	|Createclient.xlsx|
 Then I should see client created successfully from "Output" sheet
	|Createclient.xlsx|
 When I set up the new create loan from "NewLoanInput" sheet
	| 2543-MS-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-ADD-VAR-INST-Newcreateloan1.xlsx|
 Then I "Add " In Edit Repayment Schedule page
    |2543-MS-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-ADD-VAR-INST-Newcreateloan1.xlsx|Edit Repayment Schedule|
 Then I verified the "Summary" details successfully 
	|2543-MS-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-ADD-VAR-INST-Newcreateloan1.xlsx|
 And I verified the "Repayment Schedule" details successfully 
    |2543-MS-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-ADD-VAR-INST-Newcreateloan1.xlsx| 			
 Then I make repayment and read the transaction Id
 	|2543-MS-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-ADD-VAR-INST-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|

@scenario120-2544-MS-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-PATTERN-VAR-INST
	Scenario: 2544-MS-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-PATTERN-VAR-INST  
 Given I setup the clients 
 Then I entered the values into client from "Input" sheet
	|Createclient.xlsx|
 Then I should see client created successfully from "Output" sheet
	|Createclient.xlsx|
 When I set up the new create loan from "NewLoanInput" sheet
	| 2544-MS-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-PATTERN-VAR-INST-Newcreateloan1.xlsx|
 Then I "Edit PATTERN " In Edit Repayment Schedule page
    |2544-MS-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-PATTERN-VAR-INST-Newcreateloan1.xlsx|Edit Repayment Schedule|
 Then I verified the "Summary" details successfully 
	|2544-MS-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-PATTERN-VAR-INST-Newcreateloan1.xlsx|
 And I verified the "Repayment Schedule" details successfully 
    |2544-MS-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-PATTERN-VAR-INST-Newcreateloan1.xlsx| 			
 Then I make repayment and read the transaction Id
 	|2544-MS-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-PATTERN-VAR-INST-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
 	
 
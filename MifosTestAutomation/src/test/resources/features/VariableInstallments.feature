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
 	
 
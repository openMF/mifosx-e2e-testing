Feature:VariableInstallment

Background:
	Given I navigate to mifos using "default5#/"
	And I login into mifos site using "Login" excel sheet
		| Login.xlsx  |
	Then I should see logged in successfully
	
@RunnerClass8
	  Scenario: 2425-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-DATE-VAR-INST  
 Given I setup the product loan "Setup"
	| Productloannavigation.xlsx |
 Then I entered the values into product from "ProductLoanInput" Sheet
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
 	
@RunnerClass8
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

@RunnerClass8
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

@RunnerClass8
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

@RunnerClass8
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

@RunnerClass8
	  Scenario: 2430-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-DATE-VAR-INST  
 Given I setup the product loan "Setup"
	| Productloannavigation.xlsx |
 Then I entered the values into product from "ProductLoanInput" Sheet
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
 	
@RunnerClass8
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

@RunnerClass8
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

@RunnerClass8
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

@RunnerClass8
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

@RunnerClass8
	  Scenario: 2435-RBI-EI-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-Date-VAR-INST  
 Given I setup the product loan "Setup"
	| Productloannavigation.xlsx |
 Then I entered the values into product from "ProductLoanInput" Sheet
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
 	
@RunnerClass8
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

@RunnerClass8
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

@RunnerClass8
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

@RunnerClass8
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

@RunnerClass8
	  Scenario: 2440-RBI-EI-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-DATE-VAR-INST  
 Given I setup the product loan "Setup"
	| Productloannavigation.xlsx |
 Then I entered the values into product from "ProductLoanInput" Sheet
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
 	
@RunnerClass8
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

@RunnerClass8
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

@RunnerClass8
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

@RunnerClass8
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

@RunnerClass8
	Scenario: 2445-RBI-EPP-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-DATE-VAR-INST  
 Given I setup the product loan "Setup"
	| Productloannavigation.xlsx |
 Then I entered the values into product from "ProductLoanInput" Sheet
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
 	
@RunnerClass8
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
 	
@RunnerClass8
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

@RunnerClass8
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

@RunnerClass8
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

@RunnerClass8
	Scenario: 2450-RBI-EPP-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-DATE-VAR-INST  
 Given I setup the product loan "Setup"
	| Productloannavigation.xlsx |
 Then I entered the values into product from "ProductLoanInput" Sheet
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

@RunnerClass8
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

@RunnerClass8
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

@RunnerClass8
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

@RunnerClass8
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

@RunnerClass8
	Scenario: 2455-RBI-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-DATE-VAR-INST  
 Given I setup the product loan "Setup"
	| Productloannavigation.xlsx |
 Then I entered the values into product from "ProductLoanInput" Sheet
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

@RunnerClass8
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

@RunnerClass8
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

@RunnerClass8
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

@RunnerClass8
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

@RunnerClass8
	Scenario: 2460-RBI-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-DATE-VAR-INST  
 Given I setup the product loan "Setup"
	| Productloannavigation.xlsx |
 Then I entered the values into product from "ProductLoanInput" Sheet
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

@RunnerClass8
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

@RunnerClass8
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

@RunnerClass8
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

@RunnerClass8
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

@RunnerClass8
	Scenario: 2465-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-DATE-VAR-INST-NONE  
 Given I setup the product loan "Setup"
	| Productloannavigation.xlsx |
 Then I entered the values into product from "ProductLoanInput" Sheet
	|2465-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-DATE-VAR-INST-NONE-Loanproduct.xlsx|
 Given I setup the clients 
 Then I entered the values into client from "Input" sheet
	|Createclient.xlsx|
 Then I should see client created successfully from "Output" sheet
	|Createclient.xlsx|
 When I set up the new create loan from "NewLoanInput" sheet
	| 2465-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-DATE-VAR-INST-NONE-Newcreateloan1.xlsx|
 Then I "Edit Date " In Edit Repayment Schedule page
    |2465-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-DATE-VAR-INST-NONE-Newcreateloan1.xlsx|Edit Repayment Schedule|
 Then I verified the "Summary" details successfully 
	|2465-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-DATE-VAR-INST-NONE-Newcreateloan1.xlsx|
 And I verified the "Repayment Schedule" details successfully 
	|2465-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-DATE-VAR-INST-NONE-Newcreateloan1.xlsx|
 And I verified the "Transactions" details successfully	
    |2465-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-DATE-VAR-INST-NONE-Newcreateloan1.xlsx|
 Then I make repayment and verified the following tabs
    |2465-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-DATE-VAR-INST-NONE-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
 And I disburse loan from "NewLoanInput" sheet
    |2465-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-DATE-VAR-INST-NONE-Newcreateloan2.xlsx|
 Then I verified the "Summary" details successfully 
	|2465-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-DATE-VAR-INST-NONE-Newcreateloan2.xlsx|
 And I verified the "Repayment Schedule" details successfully 
	|2465-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-DATE-VAR-INST-NONE-Newcreateloan2.xlsx| 			
 And I verified the "Transactions" details successfully	
	|2465-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-DATE-VAR-INST-NONE-Newcreateloan2.xlsx|

@RunnerClass8
	Scenario: 2466-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-AMT-VAR-INST-NONE  
 Given I setup the clients 
 Then I entered the values into client from "Input" sheet
	|Createclient.xlsx|
 Then I should see client created successfully from "Output" sheet
	|Createclient.xlsx|
 When I set up the new create loan from "NewLoanInput" sheet
	| 2466-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-AMT-VAR-INST-NONE-Newcreateloan1.xlsx|
 Then I "Edit Date " In Edit Repayment Schedule page
    |2466-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-AMT-VAR-INST-NONE-Newcreateloan1.xlsx|Edit Repayment Schedule|
 Then I verified the "Summary" details successfully 
	|2466-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-AMT-VAR-INST-NONE-Newcreateloan1.xlsx|
 And I verified the "Repayment Schedule" details successfully 
	|2466-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-AMT-VAR-INST-NONE-Newcreateloan1.xlsx|
 And I verified the "Transactions" details successfully	
    |2466-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-AMT-VAR-INST-NONE-Newcreateloan1.xlsx|
 Then I make repayment and verified the following tabs
    |2466-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-AMT-VAR-INST-NONE-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
 And I disburse loan from "NewLoanInput" sheet
    |2466-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-AMT-VAR-INST-NONE-Newcreateloan2.xlsx|
 Then I verified the "Summary" details successfully 
	|2466-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-AMT-VAR-INST-NONE-Newcreateloan2.xlsx|
 And I verified the "Repayment Schedule" details successfully 
	|2466-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-AMT-VAR-INST-NONE-Newcreateloan2.xlsx| 			
 And I verified the "Transactions" details successfully	
	|2466-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-AMT-VAR-INST-NONE-Newcreateloan2.xlsx|
	
@RunnerClass8
	Scenario: 2467-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-DELETE-VAR-INST-NONE  
 Given I setup the clients 
 Then I entered the values into client from "Input" sheet
	|Createclient.xlsx|
 Then I should see client created successfully from "Output" sheet
	|Createclient.xlsx|
 When I set up the new create loan from "NewLoanInput" sheet
	| 2467-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-DELETE-VAR-INST-NONE-Newcreateloan1.xlsx|
 Then I "Edit Date " In Edit Repayment Schedule page
    |2467-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-DELETE-VAR-INST-NONE-Newcreateloan1.xlsx|Edit Repayment Schedule|
 Then I verified the "Summary" details successfully 
	|2467-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-DELETE-VAR-INST-NONE-Newcreateloan1.xlsx|
 And I verified the "Repayment Schedule" details successfully 
	|2467-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-DELETE-VAR-INST-NONE-Newcreateloan1.xlsx|
 And I verified the "Transactions" details successfully	
    |2467-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-DELETE-VAR-INST-NONE-Newcreateloan1.xlsx|
 Then I make repayment and verified the following tabs
    |2467-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-DELETE-VAR-INST-NONE-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
 And I disburse loan from "NewLoanInput" sheet
    |2467-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-DELETE-VAR-INST-NONE-Newcreateloan2.xlsx|
 Then I verified the "Summary" details successfully 
	|2467-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-DELETE-VAR-INST-NONE-Newcreateloan2.xlsx|
 And I verified the "Repayment Schedule" details successfully 
	|2467-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-DELETE-VAR-INST-NONE-Newcreateloan2.xlsx| 			
 And I verified the "Transactions" details successfully	
	|2467-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-DELETE-VAR-INST-NONE-Newcreateloan2.xlsx|

@RunnerClass8
	Scenario: 2468-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-ADD-VAR-INST-NONE  
 Given I setup the clients 
 Then I entered the values into client from "Input" sheet
	|Createclient.xlsx|
 Then I should see client created successfully from "Output" sheet
	|Createclient.xlsx|
 When I set up the new create loan from "NewLoanInput" sheet
	| 2468-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-ADD-VAR-INST-NONE-Newcreateloan1.xlsx|
 Then I "Edit Date " In Edit Repayment Schedule page
    |2468-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-ADD-VAR-INST-NONE-Newcreateloan1.xlsx|Edit Repayment Schedule|
 Then I verified the "Summary" details successfully 
	|2468-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-ADD-VAR-INST-NONE-Newcreateloan1.xlsx|
 And I verified the "Repayment Schedule" details successfully 
	|2468-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-ADD-VAR-INST-NONE-Newcreateloan1.xlsx|
 And I verified the "Transactions" details successfully	
    |2468-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-ADD-VAR-INST-NONE-Newcreateloan1.xlsx|
 Then I make repayment and verified the following tabs
    |2468-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-ADD-VAR-INST-NONE-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
 And I disburse loan from "NewLoanInput" sheet
    |2468-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-ADD-VAR-INST-NONE-Newcreateloan2.xlsx|
 Then I verified the "Summary" details successfully 
	|2468-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-ADD-VAR-INST-NONE-Newcreateloan2.xlsx|
 And I verified the "Repayment Schedule" details successfully 
	|2468-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-ADD-VAR-INST-NONE-Newcreateloan2.xlsx| 			
 And I verified the "Transactions" details successfully	
	|2468-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-ADD-VAR-INST-NONE-Newcreateloan2.xlsx|
	
@RunnerClass8
	Scenario: 2469-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-PATTERN-VAR-INST-NONE  
 Given I setup the clients 
 Then I entered the values into client from "Input" sheet
	|Createclient.xlsx|
 Then I should see client created successfully from "Output" sheet
	|Createclient.xlsx|
 When I set up the new create loan from "NewLoanInput" sheet
	| 2469-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-PATTERN-VAR-INST-NONE-Newcreateloan1.xlsx|
 Then I "Edit Date " In Edit Repayment Schedule page
    |2469-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-PATTERN-VAR-INST-NONE-Newcreateloan1.xlsx|Edit Repayment Schedule|
 Then I verified the "Summary" details successfully 
	|2469-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-PATTERN-VAR-INST-NONE-Newcreateloan1.xlsx|
 And I verified the "Repayment Schedule" details successfully 
	|2469-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-PATTERN-VAR-INST-NONE-Newcreateloan1.xlsx|
 And I verified the "Transactions" details successfully	
    |2469-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-PATTERN-VAR-INST-NONE-Newcreateloan1.xlsx|
 Then I make repayment and verified the following tabs
    |2469-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-PATTERN-VAR-INST-NONE-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
 And I disburse loan from "NewLoanInput" sheet
    |2469-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-PATTERN-VAR-INST-NONE-Newcreateloan2.xlsx|
 Then I verified the "Summary" details successfully 
	|2469-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-PATTERN-VAR-INST-NONE-Newcreateloan2.xlsx|
 And I verified the "Repayment Schedule" details successfully 
	|2469-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-PATTERN-VAR-INST-NONE-Newcreateloan2.xlsx| 			
 And I verified the "Transactions" details successfully	
	|2469-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-PATTERN-VAR-INST-NONE-Newcreateloan2.xlsx|

@RunnerClass8
	Scenario: 2470-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-DATE-VAR-INST-CASH  
 Given I setup the product loan "Setup"
	| Productloannavigation.xlsx |
 Then I entered the values into product from "ProductLoanInput" Sheet
	|2470-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-DATE-VAR-INST-CASH-Loanproduct.xlsx|
 Given I setup the clients 
 Then I entered the values into client from "Input" sheet
	|Createclient.xlsx|
 Then I should see client created successfully from "Output" sheet
	|Createclient.xlsx|
 When I set up the new create loan from "NewLoanInput" sheet
	| 2470-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-DATE-VAR-INST-CASH-Newcreateloan1.xlsx|
 Then I "Edit Date " In Edit Repayment Schedule page
    |2470-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-DATE-VAR-INST-CASH-Newcreateloan1.xlsx|Edit Repayment Schedule|
 Then I verified the following Tabs details successfully 
	|2470-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-DATE-VAR-INST-CASH-Newcreateloan1.xlsx|Summary|Repayment Schedule|Transactions|
 Then I make repayment and verified the following tabs
    |2470-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-DATE-VAR-INST-CASH-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
 And I disburse loan from "NewLoanInput" sheet
    |2470-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-DATE-VAR-INST-CASH-Newcreateloan2.xlsx|
 Then I verified the following Tabs details successfully 
	|2470-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-DATE-VAR-INST-CASH-Newcreateloan2.xlsx|Summary|Repayment Schedule|Transactions|
 Then I make repayment and read the transaction Id
	|2470-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-DATE-VAR-INST-CASH-Makerepayment2.xlsx|Input|Transactions|
 And I Navigate to Accounting web page
 And I search with transaction id & verified the accounting entries
	|2470-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-DATE-VAR-INST-CASH-Makerepayment2.xlsx|Acc_Disbursement|Acc_Repayment|Acc_Disbursement1|Acc_Repayment1|
 	
@RunnerClass8
	Scenario: 2471-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-AMT-VAR-INST-CASH  
 Given I setup the clients 
 Then I entered the values into client from "Input" sheet
	|Createclient.xlsx|
 Then I should see client created successfully from "Output" sheet
	|Createclient.xlsx|
 When I set up the new create loan from "NewLoanInput" sheet
	| 2471-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-AMT-VAR-INST-CASH-Newcreateloan1.xlsx|
 Then I "Edit Date " In Edit Repayment Schedule page
    |2471-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-AMT-VAR-INST-CASH-Newcreateloan1.xlsx|Edit Repayment Schedule|
 Then I verified the following Tabs details successfully 
	|2471-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-AMT-VAR-INST-CASH-Newcreateloan1.xlsx|Summary|Repayment Schedule|Transactions|
 Then I make repayment and verified the following tabs
    |2471-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-AMT-VAR-INST-CASH-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
 And I disburse loan from "NewLoanInput" sheet
    |2471-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-AMT-VAR-INST-CASH-Newcreateloan2.xlsx|
 Then I verified the following Tabs details successfully 
	|2471-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-AMT-VAR-INST-CASH-Newcreateloan2.xlsx|Summary|Repayment Schedule|Transactions|
 Then I make repayment and read the transaction Id
	|2471-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-AMT-VAR-INST-CASH-Makerepayment2.xlsx|Input|Transactions|
 And I Navigate to Accounting web page
 And I search with transaction id & verified the accounting entries
	|2471-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-AMT-VAR-INST-CASH-Makerepayment2.xlsx|Acc_Disbursement|Acc_Repayment|Acc_Disbursement1|Acc_Repayment1|

@RunnerClass8
	Scenario: 2472-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-DELETE-VAR-INST-CASH  
 Given I setup the clients 
 Then I entered the values into client from "Input" sheet
	|Createclient.xlsx|
 Then I should see client created successfully from "Output" sheet
	|Createclient.xlsx|
 When I set up the new create loan from "NewLoanInput" sheet
	| 2472-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-DELETE-VAR-INST-CASH-Newcreateloan1.xlsx|
 Then I "Edit Date " In Edit Repayment Schedule page
    |2472-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-DELETE-VAR-INST-CASH-Newcreateloan1.xlsx|Edit Repayment Schedule|
 Then I verified the following Tabs details successfully 
	|2472-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-DELETE-VAR-INST-CASH-Newcreateloan1.xlsx|Summary|Repayment Schedule|Transactions|
 Then I make repayment and verified the following tabs
    |2472-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-DELETE-VAR-INST-CASH-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
 And I disburse loan from "NewLoanInput" sheet
    |2472-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-DELETE-VAR-INST-CASH-Newcreateloan2.xlsx|
 Then I verified the following Tabs details successfully 
	|2472-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-DELETE-VAR-INST-CASH-Newcreateloan2.xlsx|Summary|Repayment Schedule|Transactions|
 Then I make repayment and read the transaction Id
	|2472-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-DELETE-VAR-INST-CASH-Makerepayment2.xlsx|Input|Transactions|
 
@RunnerClass8
	Scenario: 2473-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-ADD-VAR-INST-CASH  
 Given I setup the clients 
 Then I entered the values into client from "Input" sheet
	|Createclient.xlsx|
 Then I should see client created successfully from "Output" sheet
	|Createclient.xlsx|
 When I set up the new create loan from "NewLoanInput" sheet
	| 2473-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-ADD-VAR-INST-CASH-Newcreateloan1.xlsx|
 Then I "Edit Date " In Edit Repayment Schedule page
    |2473-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-ADD-VAR-INST-CASH-Newcreateloan1.xlsx|Edit Repayment Schedule|
 Then I verified the following Tabs details successfully 
	|2473-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-ADD-VAR-INST-CASH-Newcreateloan1.xlsx|Summary|Repayment Schedule|Transactions|
 Then I make repayment and verified the following tabs
    |2473-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-ADD-VAR-INST-CASH-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
 And I disburse loan from "NewLoanInput" sheet
    |2473-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-ADD-VAR-INST-CASH-Newcreateloan2.xlsx|
 Then I verified the following Tabs details successfully 
	|2473-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-ADD-VAR-INST-CASH-Newcreateloan2.xlsx|Summary|Repayment Schedule|Transactions|
 Then I make repayment and read the transaction Id
	|2473-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-ADD-VAR-INST-CASH-Makerepayment2.xlsx|Input|Transactions|
 And I Navigate to Accounting web page
 And I search with transaction id & verified the accounting entries
	|2473-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-ADD-VAR-INST-CASH-Makerepayment2.xlsx|Acc_Disbursement|Acc_Repayment|Acc_Disbursement1|Acc_Repayment1|
	
@RunnerClass8
	Scenario: 2474-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-PATTERN-VAR-INST-CASH
 Given I setup the clients 
 Then I entered the values into client from "Input" sheet
	|Createclient.xlsx|
 Then I should see client created successfully from "Output" sheet
	|Createclient.xlsx|
 When I set up the new create loan from "NewLoanInput" sheet
	| 2474-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-PATTERN-VAR-INST-CASH-Newcreateloan1.xlsx|
 Then I "Edit Date " In Edit Repayment Schedule page
    |2474-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-PATTERN-VAR-INST-CASH-Newcreateloan1.xlsx|Edit Repayment Schedule|
 Then I verified the following Tabs details successfully 
	|2474-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-PATTERN-VAR-INST-CASH-Newcreateloan1.xlsx|Summary|Repayment Schedule|Transactions|
 Then I make repayment and verified the following tabs
    |2474-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-PATTERN-VAR-INST-CASH-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
 And I disburse loan from "NewLoanInput" sheet
    |2474-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-PATTERN-VAR-INST-CASH-Newcreateloan2.xlsx|
 Then I verified the following Tabs details successfully 
	|2474-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-PATTERN-VAR-INST-CASH-Newcreateloan2.xlsx|Summary|Repayment Schedule|Transactions|
 Then I make repayment and read the transaction Id
	|2474-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-PATTERN-VAR-INST-CASH-Makerepayment2.xlsx|Input|Transactions|
 And I Navigate to Accounting web page
 And I search with transaction id & verified the accounting entries
	|2474-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-PATTERN-VAR-INST-CASH-Makerepayment2.xlsx|Acc_Disbursement|Acc_Repayment|Acc_Disbursement1|Acc_Repayment1|

@RunnerClass8
	Scenario: 2475-RBI-EI-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-DATE-VAR-INST-PERIODIC  
 Given I setup the product loan "Setup"
	| Productloannavigation.xlsx |
 Then I entered the values into product from "ProductLoanInput" Sheet
	|2475-RBI-EI-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-DATE-VAR-INST-PERIODIC-Loanproduct.xlsx|
 Given I setup the clients 
 Then I entered the values into client from "Input" sheet
	|Createclient.xlsx|
 Then I should see client created successfully from "Output" sheet
	|Createclient.xlsx|
 When I set up the new create loan from "NewLoanInput" sheet
	| 2475-RBI-EI-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-DATE-VAR-INST-PERIODIC-Newcreateloan1.xlsx|
 Then I "Edit Date " In Edit Repayment Schedule page
    |2475-RBI-EI-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-DATE-VAR-INST-PERIODIC-Newcreateloan1.xlsx|Edit Repayment Schedule|
 Then I verified the following Tabs details successfully 
	|2475-RBI-EI-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-DATE-VAR-INST-PERIODIC-Newcreateloan1.xlsx|Summary|Repayment Schedule|
 Then I make repayment and verified the following tabs
    |2475-RBI-EI-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-DATE-VAR-INST-PERIODIC-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
 And I disburse loan from "NewLoanInput" sheet
    |2475-RBI-EI-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-DATE-VAR-INST-PERIODIC-Newcreateloan2.xlsx|
 Then I verified the following Tabs details successfully 
	|2475-RBI-EI-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-DATE-VAR-INST-PERIODIC-Newcreateloan2.xlsx|Summary|Repayment Schedule|Transactions|
 Then I navigate to scheduler job & execute "Periodic Accrual Transactions"
 Then I make repayment and read the transaction Id
	|2475-RBI-EI-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-DATE-VAR-INST-PERIODIC-Makerepayment2.xlsx|Input|Transactions|
 And I Navigate to Accounting web page
 And I search with transaction id & verified the accounting entries
	|2475-RBI-EI-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-DATE-VAR-INST-PERIODIC-Makerepayment2.xlsx|Acc_Disbursement|Acc_Repayment|Acc_Disbursement1|Acc_Repayment1|Acc_Periodic|

@RunnerClass8
	Scenario: 2476-RBI-EI-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-AMT-VAR-INST-PERIODIC  
 Given I setup the clients 
 Then I entered the values into client from "Input" sheet
	|Createclient.xlsx|
 Then I should see client created successfully from "Output" sheet
	|Createclient.xlsx|
 When I set up the new create loan from "NewLoanInput" sheet
	| 2476-RBI-EI-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-AMT-VAR-INST-PERIODIC-Newcreateloan1.xlsx|
 Then I "Edit Date " In Edit Repayment Schedule page
    |2476-RBI-EI-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-AMT-VAR-INST-PERIODIC-Newcreateloan1.xlsx|Edit Repayment Schedule|
 Then I verified the following Tabs details successfully 
	|2476-RBI-EI-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-AMT-VAR-INST-PERIODIC-Newcreateloan1.xlsx|Summary|Repayment Schedule|
 Then I make repayment and verified the following tabs
    |2476-RBI-EI-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-AMT-VAR-INST-PERIODIC-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
 And I disburse loan from "NewLoanInput" sheet
    |2476-RBI-EI-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-AMT-VAR-INST-PERIODIC-Newcreateloan2.xlsx|
 Then I verified the following Tabs details successfully 
	|2476-RBI-EI-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-AMT-VAR-INST-PERIODIC-Newcreateloan2.xlsx|Summary|Repayment Schedule|Transactions|
 Then I navigate to scheduler job & execute "Periodic Accrual Transactions"
 Then I make repayment and read the transaction Id
	|2476-RBI-EI-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-AMT-VAR-INST-PERIODIC-Makerepayment2.xlsx|Input|Transactions|
 And I Navigate to Accounting web page
 And I search with transaction id & verified the accounting entries
	|2476-RBI-EI-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-AMT-VAR-INST-PERIODIC-Makerepayment2.xlsx|Acc_Disbursement|Acc_Repayment|Acc_Disbursement1|Acc_Repayment1|Acc_Periodic|

@RunnerClass8
	Scenario: 2477-RBI-EI-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-DELETE-VAR-INST-PERIODIC  
 Given I setup the clients 
 Then I entered the values into client from "Input" sheet
	|Createclient.xlsx|
 Then I should see client created successfully from "Output" sheet
	|Createclient.xlsx|
 When I set up the new create loan from "NewLoanInput" sheet
	| 2477-RBI-EI-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-DELETE-VAR-INST-PERIODIC-Newcreateloan1.xlsx|
 Then I "Edit Date " In Edit Repayment Schedule page
    |2477-RBI-EI-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-DELETE-VAR-INST-PERIODIC-Newcreateloan1.xlsx|Edit Repayment Schedule|
 Then I verified the following Tabs details successfully 
	|2477-RBI-EI-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-DELETE-VAR-INST-PERIODIC-Newcreateloan1.xlsx|Summary|Repayment Schedule|
 Then I make repayment and verified the following tabs
    |2477-RBI-EI-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-DELETE-VAR-INST-PERIODIC-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
 And I disburse loan from "NewLoanInput" sheet
    |2477-RBI-EI-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-DELETE-VAR-INST-PERIODIC-Newcreateloan2.xlsx|
 Then I verified the following Tabs details successfully 
	|2477-RBI-EI-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-DELETE-VAR-INST-PERIODIC-Newcreateloan2.xlsx|Summary|Repayment Schedule|Transactions|
 Then I navigate to scheduler job & execute "Periodic Accrual Transactions"
 Then I make repayment and read the transaction Id
	|2477-RBI-EI-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-DELETE-VAR-INST-PERIODIC-Makerepayment2.xlsx|Input|Transactions|
 And I Navigate to Accounting web page
 And I search with transaction id & verified the accounting entries
	|2477-RBI-EI-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-DELETE-VAR-INST-PERIODIC-Makerepayment2.xlsx|Acc_Disbursement|Acc_Repayment|Acc_Disbursement1|Acc_Repayment1|Acc_Periodic|

@RunnerClass8
	Scenario: 2478-RBI-EI-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-ADD-VAR-INST-PERIODIC  
 Given I setup the clients 
 Then I entered the values into client from "Input" sheet
	|Createclient.xlsx|
 Then I should see client created successfully from "Output" sheet
	|Createclient.xlsx|
 When I set up the new create loan from "NewLoanInput" sheet
	| 2478-RBI-EI-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-ADD-VAR-INST-PERIODIC-Newcreateloan1.xlsx|
 Then I "Edit Date " In Edit Repayment Schedule page
    |2478-RBI-EI-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-ADD-VAR-INST-PERIODIC-Newcreateloan1.xlsx|Edit Repayment Schedule|
 Then I verified the following Tabs details successfully 
	|2478-RBI-EI-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-ADD-VAR-INST-PERIODIC-Newcreateloan1.xlsx|Summary|Repayment Schedule|
 Then I make repayment and verified the following tabs
    |2478-RBI-EI-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-ADD-VAR-INST-PERIODIC-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
 And I disburse loan from "NewLoanInput" sheet
    |2478-RBI-EI-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-ADD-VAR-INST-PERIODIC-Newcreateloan2.xlsx|
 Then I verified the following Tabs details successfully 
	|2478-RBI-EI-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-ADD-VAR-INST-PERIODIC-Newcreateloan2.xlsx|Summary|Repayment Schedule|Transactions|
 Then I navigate to scheduler job & execute "Periodic Accrual Transactions"
 Then I make repayment and read the transaction Id
	|2478-RBI-EI-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-ADD-VAR-INST-PERIODIC-Makerepayment2.xlsx|Input|Transactions|
 And I Navigate to Accounting web page
 And I search with transaction id & verified the accounting entries
	|2478-RBI-EI-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-ADD-VAR-INST-PERIODIC-Makerepayment2.xlsx|Acc_Disbursement|Acc_Repayment|Acc_Disbursement1|Acc_Repayment1|Acc_Periodic|

@RunnerClass8
	Scenario: 2479-RBI-EI-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-PATTERN-VAR-INST-PERIODIC  
 Given I setup the clients 
 Then I entered the values into client from "Input" sheet
	|Createclient.xlsx|
 Then I should see client created successfully from "Output" sheet
	|Createclient.xlsx|
 When I set up the new create loan from "NewLoanInput" sheet
	| 2479-RBI-EI-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-PATTERN-VAR-INST-PERIODIC-Newcreateloan1.xlsx|
 Then I "Edit Date " In Edit Repayment Schedule page
    |2479-RBI-EI-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-PATTERN-VAR-INST-PERIODIC-Newcreateloan1.xlsx|Edit Repayment Schedule|
 Then I verified the following Tabs details successfully 
	|2479-RBI-EI-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-PATTERN-VAR-INST-PERIODIC-Newcreateloan1.xlsx|Summary|Repayment Schedule|
 Then I make repayment and verified the following tabs
    |2479-RBI-EI-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-PATTERN-VAR-INST-PERIODIC-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
 And I disburse loan from "NewLoanInput" sheet
    |2479-RBI-EI-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-PATTERN-VAR-INST-PERIODIC-Newcreateloan2.xlsx|
 Then I verified the following Tabs details successfully 
	|2479-RBI-EI-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-PATTERN-VAR-INST-PERIODIC-Newcreateloan2.xlsx|Summary|Repayment Schedule|Transactions|
 Then I navigate to scheduler job & execute "Periodic Accrual Transactions"
 Then I make repayment and read the transaction Id
	|2479-RBI-EI-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-PATTERN-VAR-INST-PERIODIC-Makerepayment2.xlsx|Input|Transactions|
 And I Navigate to Accounting web page
 And I search with transaction id & verified the accounting entries
	|2479-RBI-EI-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-PATTERN-VAR-INST-PERIODIC-Makerepayment2.xlsx|Acc_Disbursement|Acc_Repayment|Acc_Disbursement1|Acc_Repayment1|Acc_Periodic|

	
@RunnerClass8
	Scenario: 2480-RBI-EI-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-DATE-VAR-INST-UPFRONT  
 Given I setup the product loan "Setup"
	| Productloannavigation.xlsx |
 Then I entered the values into product from "ProductLoanInput" Sheet
	|2480-RBI-EI-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-DATE-VAR-INST-UPFRONT-Loanproduct.xlsx|
 Given I setup the clients 
 Then I entered the values into client from "Input" sheet
	|Createclient.xlsx|
 Then I should see client created successfully from "Output" sheet
	|Createclient.xlsx|
 When I set up the new create loan from "NewLoanInput" sheet
	| 2480-RBI-EI-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-DATE-VAR-INST-UPFRONT-Newcreateloan1.xlsx|
 Then I "Edit Date " In Edit Repayment Schedule page
    |2480-RBI-EI-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-DATE-VAR-INST-UPFRONT-Newcreateloan1.xlsx|Edit Repayment Schedule|
 Then I verified the following Tabs details successfully 
	|2480-RBI-EI-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-DATE-VAR-INST-UPFRONT-Newcreateloan1.xlsx|Summary|Repayment Schedule|
 Then I make repayment and verified the following tabs
    |2480-RBI-EI-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-DATE-VAR-INST-UPFRONT-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
 And I disburse loan from "NewLoanInput" sheet
    |2480-RBI-EI-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-DATE-VAR-INST-UPFRONT-Newcreateloan2.xlsx|
 Then I verified the following Tabs details successfully 
	|2480-RBI-EI-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-DATE-VAR-INST-UPFRONT-Newcreateloan2.xlsx|Summary|Repayment Schedule|Transactions|
 Then I navigate to scheduler job & execute "Add Upfront Accrual Transactions"
 Then I make repayment and read the transaction Id
	|2480-RBI-EI-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-DATE-VAR-INST-UPFRONT-Makerepayment2.xlsx|Input|Transactions|
 And I Navigate to Accounting web page
 And I search with transaction id & verified the accounting entries
	|2480-RBI-EI-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-DATE-VAR-INST-UPFRONT-Makerepayment2.xlsx|Acc_Disbursement|Acc_Repayment|Acc_Disbursement1|Acc_Repayment1|Acc_Upfront|
	
@RunnerClass8
	Scenario: 2481-RBI-EI-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-AMT-VAR-INST-UPFRONT  
 Given I setup the clients 
 Then I entered the values into client from "Input" sheet
	|Createclient.xlsx|
 Then I should see client created successfully from "Output" sheet
	|Createclient.xlsx|
 When I set up the new create loan from "NewLoanInput" sheet
	| 2481-RBI-EI-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-AMT-VAR-INST-UPFRONT-Newcreateloan1.xlsx|
 Then I "Edit Date " In Edit Repayment Schedule page
    |2481-RBI-EI-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-AMT-VAR-INST-UPFRONT-Newcreateloan1.xlsx|Edit Repayment Schedule|
 Then I verified the following Tabs details successfully 
	|2481-RBI-EI-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-AMT-VAR-INST-UPFRONT-Newcreateloan1.xlsx|Summary|Repayment Schedule|
 Then I make repayment and verified the following tabs
    |2481-RBI-EI-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-AMT-VAR-INST-UPFRONT-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
 And I disburse loan from "NewLoanInput" sheet
    |2481-RBI-EI-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-AMT-VAR-INST-UPFRONT-Newcreateloan2.xlsx|
 Then I verified the following Tabs details successfully 
	|2481-RBI-EI-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-AMT-VAR-INST-UPFRONT-Newcreateloan2.xlsx|Summary|Repayment Schedule|Transactions|
 Then I navigate to scheduler job & execute "Add Upfront Accrual Transactions"
 Then I make repayment and read the transaction Id
	|2481-RBI-EI-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-AMT-VAR-INST-UPFRONT-Makerepayment2.xlsx|Input|Transactions|
 And I Navigate to Accounting web page
 And I search with transaction id & verified the accounting entries
	|2481-RBI-EI-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-AMT-VAR-INST-UPFRONT-Makerepayment2.xlsx|Acc_Disbursement|Acc_Repayment|Acc_Disbursement1|Acc_Repayment1|Acc_Upfront|
	
@RunnerClass8
	Scenario: 2482-RBI-EI-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-DELETE-VAR-INST-UPFRONT  
 Given I setup the clients 
 Then I entered the values into client from "Input" sheet
	|Createclient.xlsx|
 Then I should see client created successfully from "Output" sheet
	|Createclient.xlsx|
 When I set up the new create loan from "NewLoanInput" sheet
	| 2482-RBI-EI-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-DELETE-VAR-INST-UPFRONT-Newcreateloan1.xlsx|
 Then I "Edit Date " In Edit Repayment Schedule page
    |2482-RBI-EI-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-DELETE-VAR-INST-UPFRONT-Newcreateloan1.xlsx|Edit Repayment Schedule|
 Then I verified the following Tabs details successfully 
	|2482-RBI-EI-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-DELETE-VAR-INST-UPFRONT-Newcreateloan1.xlsx|Summary|Repayment Schedule|
 Then I make repayment and verified the following tabs
    |2482-RBI-EI-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-DELETE-VAR-INST-UPFRONT-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
 And I disburse loan from "NewLoanInput" sheet
    |2482-RBI-EI-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-DELETE-VAR-INST-UPFRONT-Newcreateloan2.xlsx|
 Then I verified the following Tabs details successfully 
	|2482-RBI-EI-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-DELETE-VAR-INST-UPFRONT-Newcreateloan2.xlsx|Summary|Repayment Schedule|Transactions|
 Then I navigate to scheduler job & execute "Add Upfront Accrual Transactions"
 Then I make repayment and read the transaction Id
	|2482-RBI-EI-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-DELETE-VAR-INST-UPFRONT-Makerepayment2.xlsx|Input|Transactions|
 And I Navigate to Accounting web page
 And I search with transaction id & verified the accounting entries
	|2482-RBI-EI-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-DELETE-VAR-INST-UPFRONT-Makerepayment2.xlsx|Acc_Disbursement|Acc_Repayment|Acc_Disbursement1|Acc_Repayment1|Acc_Upfront|
	
@RunnerClass8
	Scenario: 2483-RBI-EI-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-ADD-VAR-INST-UPFRONT  
 Given I setup the clients 
 Then I entered the values into client from "Input" sheet
	|Createclient.xlsx|
 Then I should see client created successfully from "Output" sheet
	|Createclient.xlsx|
 When I set up the new create loan from "NewLoanInput" sheet
	| 2483-RBI-EI-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-ADD-VAR-INST-UPFRONT-Newcreateloan1.xlsx|
 Then I "Edit Date " In Edit Repayment Schedule page
    |2483-RBI-EI-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-ADD-VAR-INST-UPFRONT-Newcreateloan1.xlsx|Edit Repayment Schedule|
 Then I verified the following Tabs details successfully 
	|2483-RBI-EI-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-ADD-VAR-INST-UPFRONT-Newcreateloan1.xlsx|Summary|Repayment Schedule|
 Then I make repayment and verified the following tabs
    |2483-RBI-EI-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-ADD-VAR-INST-UPFRONT-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
 And I disburse loan from "NewLoanInput" sheet
    |2483-RBI-EI-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-ADD-VAR-INST-UPFRONT-Newcreateloan2.xlsx|
 Then I verified the following Tabs details successfully 
	|2483-RBI-EI-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-ADD-VAR-INST-UPFRONT-Newcreateloan2.xlsx|Summary|Repayment Schedule|Transactions|
 Then I navigate to scheduler job & execute "Add Upfront Accrual Transactions"
 Then I make repayment and read the transaction Id
	|2483-RBI-EI-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-ADD-VAR-INST-UPFRONT-Makerepayment2.xlsx|Input|Transactions|
 And I Navigate to Accounting web page
 And I search with transaction id & verified the accounting entries
	|2483-RBI-EI-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-ADD-VAR-INST-UPFRONT-Makerepayment2.xlsx|Acc_Disbursement|Acc_Repayment|Acc_Disbursement1|Acc_Repayment1|Acc_Upfront|
	
@RunnerClass8
	Scenario: 2484-RBI-EI-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-PATTERN-VAR-INST-UPFRONT  
 Given I setup the clients 
 Then I entered the values into client from "Input" sheet
	|Createclient.xlsx|
 Then I should see client created successfully from "Output" sheet
	|Createclient.xlsx|
 When I set up the new create loan from "NewLoanInput" sheet
	| 2484-RBI-EI-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-PATTERN-VAR-INST-UPFRONT-Newcreateloan1.xlsx|
 Then I "Edit Date " In Edit Repayment Schedule page
    |2484-RBI-EI-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-PATTERN-VAR-INST-UPFRONT-Newcreateloan1.xlsx|Edit Repayment Schedule|
 Then I verified the following Tabs details successfully 
	|2484-RBI-EI-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-PATTERN-VAR-INST-UPFRONT-Newcreateloan1.xlsx|Summary|Repayment Schedule|
 Then I make repayment and verified the following tabs
    |2484-RBI-EI-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-PATTERN-VAR-INST-UPFRONT-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
 And I disburse loan from "NewLoanInput" sheet
    |2484-RBI-EI-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-PATTERN-VAR-INST-UPFRONT-Newcreateloan2.xlsx|
 Then I verified the following Tabs details successfully 
	|2484-RBI-EI-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-PATTERN-VAR-INST-UPFRONT-Newcreateloan2.xlsx|Summary|Repayment Schedule|Transactions|
 Then I navigate to scheduler job & execute "Add Upfront Accrual Transactions"
 Then I make repayment and read the transaction Id
	|2484-RBI-EI-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-PATTERN-VAR-INST-UPFRONT-Makerepayment2.xlsx|Input|Transactions|
 #And I Navigate to Accounting web page
 #And I search with transaction id & verified the accounting entries
#	|2484-RBI-EI-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-PATTERN-VAR-INST-UPFRONT-Makerepayment2.xlsx|Acc_Disbursement|Acc_Repayment|Acc_Disbursement1|Acc_Repayment1|Acc_Upfront|

@RunnerClass8
	Scenario: 2485-RBI-EPP-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-DATE-VAR-INST-NONE  
 Given I setup the product loan "Setup"
	| Productloannavigation.xlsx |
 Then I entered the values into product from "ProductLoanInput" Sheet
	|2485-RBI-EPP-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-DATE-VAR-INST-NONE-Loanproduct.xlsx|
 Given I setup the clients 
 Then I entered the values into client from "Input" sheet
	|Createclient.xlsx|
 Then I should see client created successfully from "Output" sheet
	|Createclient.xlsx|
 When I set up the new create loan from "NewLoanInput" sheet
	| 2485-RBI-EPP-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-DATE-VAR-INST-NONE-Newcreateloan1.xlsx|
 Then I "Edit Date " In Edit Repayment Schedule page
    |2485-RBI-EPP-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-DATE-VAR-INST-NONE-Newcreateloan1.xlsx|Edit Repayment Schedule|
 Then I verified the "Summary" details successfully 
	|2485-RBI-EPP-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-DATE-VAR-INST-NONE-Newcreateloan1.xlsx|
 And I verified the "Repayment Schedule" details successfully 
	|2485-RBI-EPP-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-DATE-VAR-INST-NONE-Newcreateloan1.xlsx|
 And I verified the "Transactions" details successfully	
    |2485-RBI-EPP-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-DATE-VAR-INST-NONE-Newcreateloan1.xlsx|
 Then I make repayment and verified the following tabs
    |2485-RBI-EPP-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-DATE-VAR-INST-NONE-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
 And I disburse loan from "NewLoanInput" sheet
    |2485-RBI-EPP-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-DATE-VAR-INST-NONE-Newcreateloan2.xlsx|
 Then I verified the "Summary" details successfully 
	|2485-RBI-EPP-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-DATE-VAR-INST-NONE-Newcreateloan2.xlsx|
 And I verified the "Repayment Schedule" details successfully 
	|2485-RBI-EPP-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-DATE-VAR-INST-NONE-Newcreateloan2.xlsx| 			
 And I verified the "Transactions" details successfully	
	|2485-RBI-EPP-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-DATE-VAR-INST-NONE-Newcreateloan2.xlsx|

@RunnerClass8
	Scenario: 2486-RBI-EPP-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-AMT-VAR-INST-NONE  
 Given I setup the clients 
 Then I entered the values into client from "Input" sheet
	|Createclient.xlsx|
 Then I should see client created successfully from "Output" sheet
	|Createclient.xlsx|
 When I set up the new create loan from "NewLoanInput" sheet
	| 2486-RBI-EPP-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-AMT-VAR-INST-NONE-Newcreateloan1.xlsx|
 Then I "Edit Date " In Edit Repayment Schedule page
    |2486-RBI-EPP-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-AMT-VAR-INST-NONE-Newcreateloan1.xlsx|Edit Repayment Schedule|
 Then I verified the "Summary" details successfully 
	|2486-RBI-EPP-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-AMT-VAR-INST-NONE-Newcreateloan1.xlsx|
 And I verified the "Repayment Schedule" details successfully 
	|2486-RBI-EPP-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-AMT-VAR-INST-NONE-Newcreateloan1.xlsx|
 And I verified the "Transactions" details successfully	
    |2486-RBI-EPP-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-AMT-VAR-INST-NONE-Newcreateloan1.xlsx|
 Then I make repayment and verified the following tabs
    |2486-RBI-EPP-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-AMT-VAR-INST-NONE-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
 And I disburse loan from "NewLoanInput" sheet
    |2486-RBI-EPP-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-AMT-VAR-INST-NONE-Newcreateloan2.xlsx|
 Then I verified the "Summary" details successfully 
	|2486-RBI-EPP-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-AMT-VAR-INST-NONE-Newcreateloan2.xlsx|
 And I verified the "Repayment Schedule" details successfully 
	|2486-RBI-EPP-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-AMT-VAR-INST-NONE-Newcreateloan2.xlsx| 			
 And I verified the "Transactions" details successfully	
	|2486-RBI-EPP-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-AMT-VAR-INST-NONE-Newcreateloan2.xlsx|
	
@RunnerClass8
	Scenario: 2487-RBI-EPP-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-DELETE-VAR-INST-NONE  
 Given I setup the clients 
 Then I entered the values into client from "Input" sheet
	|Createclient.xlsx|
 Then I should see client created successfully from "Output" sheet
	|Createclient.xlsx|
 When I set up the new create loan from "NewLoanInput" sheet
	| 2487-RBI-EPP-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-DELETE-VAR-INST-NONE-Newcreateloan1.xlsx|
 Then I "Edit Date " In Edit Repayment Schedule page
    |2487-RBI-EPP-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-DELETE-VAR-INST-NONE-Newcreateloan1.xlsx|Edit Repayment Schedule|
 Then I verified the "Summary" details successfully 
	|2487-RBI-EPP-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-DELETE-VAR-INST-NONE-Newcreateloan1.xlsx|
 And I verified the "Repayment Schedule" details successfully 
	|2487-RBI-EPP-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-DELETE-VAR-INST-NONE-Newcreateloan1.xlsx|
 And I verified the "Transactions" details successfully	
    |2487-RBI-EPP-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-DELETE-VAR-INST-NONE-Newcreateloan1.xlsx|
 Then I make repayment and verified the following tabs
    |2487-RBI-EPP-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-DELETE-VAR-INST-NONE-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
 And I disburse loan from "NewLoanInput" sheet
    |2487-RBI-EPP-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-DELETE-VAR-INST-NONE-Newcreateloan2.xlsx|
 Then I verified the "Summary" details successfully 
	|2487-RBI-EPP-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-DELETE-VAR-INST-NONE-Newcreateloan2.xlsx|
 And I verified the "Repayment Schedule" details successfully 
	|2487-RBI-EPP-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-DELETE-VAR-INST-NONE-Newcreateloan2.xlsx| 			
 And I verified the "Transactions" details successfully	
	|2487-RBI-EPP-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-DELETE-VAR-INST-NONE-Newcreateloan2.xlsx|

@RunnerClass8
	Scenario: 2488-RBI-EPP-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-ADD-VAR-INST-NONE  
 Given I setup the clients 
 Then I entered the values into client from "Input" sheet
	|Createclient.xlsx|
 Then I should see client created successfully from "Output" sheet
	|Createclient.xlsx|
 When I set up the new create loan from "NewLoanInput" sheet
	| 2488-RBI-EPP-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-ADD-VAR-INST-NONE-Newcreateloan1.xlsx|
 Then I "Edit Date " In Edit Repayment Schedule page
    |2488-RBI-EPP-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-ADD-VAR-INST-NONE-Newcreateloan1.xlsx|Edit Repayment Schedule|
 Then I verified the "Summary" details successfully 
	|2488-RBI-EPP-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-ADD-VAR-INST-NONE-Newcreateloan1.xlsx|
 And I verified the "Repayment Schedule" details successfully 
	|2488-RBI-EPP-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-ADD-VAR-INST-NONE-Newcreateloan1.xlsx|
 And I verified the "Transactions" details successfully	
    |2488-RBI-EPP-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-ADD-VAR-INST-NONE-Newcreateloan1.xlsx|
 Then I make repayment and verified the following tabs
    |2488-RBI-EPP-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-ADD-VAR-INST-NONE-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
 And I disburse loan from "NewLoanInput" sheet
    |2488-RBI-EPP-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-ADD-VAR-INST-NONE-Newcreateloan2.xlsx|
 Then I verified the "Summary" details successfully 
	|2488-RBI-EPP-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-ADD-VAR-INST-NONE-Newcreateloan2.xlsx|
 And I verified the "Repayment Schedule" details successfully 
	|2488-RBI-EPP-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-ADD-VAR-INST-NONE-Newcreateloan2.xlsx| 			
 And I verified the "Transactions" details successfully	
	|2488-RBI-EPP-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-ADD-VAR-INST-NONE-Newcreateloan2.xlsx|
	
@RunnerClass8
	Scenario: 2489-RBI-EPP-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-PATTERN-VAR-INST-NONE  
 Given I setup the clients 
 Then I entered the values into client from "Input" sheet
	|Createclient.xlsx|
 Then I should see client created successfully from "Output" sheet
	|Createclient.xlsx|
 When I set up the new create loan from "NewLoanInput" sheet
	| 2489-RBI-EPP-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-PATTERN-VAR-INST-NONE-Newcreateloan1.xlsx|
 Then I "Edit Date " In Edit Repayment Schedule page
    |2489-RBI-EPP-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-PATTERN-VAR-INST-NONE-Newcreateloan1.xlsx|Edit Repayment Schedule|
 Then I verified the "Summary" details successfully 
	|2489-RBI-EPP-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-PATTERN-VAR-INST-NONE-Newcreateloan1.xlsx|
 And I verified the "Repayment Schedule" details successfully 
	|2489-RBI-EPP-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-PATTERN-VAR-INST-NONE-Newcreateloan1.xlsx|
 And I verified the "Transactions" details successfully	
    |2489-RBI-EPP-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-PATTERN-VAR-INST-NONE-Newcreateloan1.xlsx|
 Then I make repayment and verified the following tabs
    |2489-RBI-EPP-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-PATTERN-VAR-INST-NONE-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
 And I disburse loan from "NewLoanInput" sheet
    |2489-RBI-EPP-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-PATTERN-VAR-INST-NONE-Newcreateloan2.xlsx|
 Then I verified the "Summary" details successfully 
	|2489-RBI-EPP-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-PATTERN-VAR-INST-NONE-Newcreateloan2.xlsx|
 And I verified the "Repayment Schedule" details successfully 
	|2489-RBI-EPP-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-PATTERN-VAR-INST-NONE-Newcreateloan2.xlsx| 			
 And I verified the "Transactions" details successfully	
	|2489-RBI-EPP-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-PATTERN-VAR-INST-NONE-Newcreateloan2.xlsx|

@RunnerClass8
	Scenario: 2490-RBI-EPP-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-DATE-VAR-INST-CASH  
 Given I setup the product loan "Setup"
	| Productloannavigation.xlsx |
 Then I entered the values into product from "ProductLoanInput" Sheet
	|2490-RBI-EPP-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-DATE-VAR-INST-CASH-Loanproduct.xlsx|
 Given I setup the clients 
 Then I entered the values into client from "Input" sheet
	|Createclient.xlsx|
 Then I should see client created successfully from "Output" sheet
	|Createclient.xlsx|
 When I set up the new create loan from "NewLoanInput" sheet
	| 2490-RBI-EPP-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-DATE-VAR-INST-CASH-Newcreateloan1.xlsx|
 Then I "Edit Date " In Edit Repayment Schedule page
    |2490-RBI-EPP-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-DATE-VAR-INST-CASH-Newcreateloan1.xlsx|Edit Repayment Schedule|
 Then I verified the following Tabs details successfully 
	|2490-RBI-EPP-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-DATE-VAR-INST-CASH-Newcreateloan1.xlsx|Summary|Repayment Schedule|Transactions|
 Then I make repayment and verified the following tabs
    |2490-RBI-EPP-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-DATE-VAR-INST-CASH-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
 And I disburse loan from "NewLoanInput" sheet
    |2490-RBI-EPP-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-DATE-VAR-INST-CASH-Newcreateloan2.xlsx|
 Then I verified the following Tabs details successfully 
	|2490-RBI-EPP-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-DATE-VAR-INST-CASH-Newcreateloan2.xlsx|Summary|Repayment Schedule|Transactions|
 Then I make repayment and read the transaction Id
	|2490-RBI-EPP-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-DATE-VAR-INST-CASH-Makerepayment2.xlsx|Input|Transactions|
 And I Navigate to Accounting web page
 And I search with transaction id & verified the accounting entries
	|2490-RBI-EPP-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-DATE-VAR-INST-CASH-Makerepayment2.xlsx|Acc_Disbursement|Acc_Repayment|Acc_Disbursement1|Acc_Repayment1|
 	
@RunnerClass8
	Scenario: 2491-RBI-EPP-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-AMT-VAR-INST-CASH  
 Given I setup the clients 
 Then I entered the values into client from "Input" sheet
	|Createclient.xlsx|
 Then I should see client created successfully from "Output" sheet
	|Createclient.xlsx|
 When I set up the new create loan from "NewLoanInput" sheet
	| 2491-RBI-EPP-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-AMT-VAR-INST-CASH-Newcreateloan1.xlsx|
 Then I "Edit Date " In Edit Repayment Schedule page
    |2491-RBI-EPP-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-AMT-VAR-INST-CASH-Newcreateloan1.xlsx|Edit Repayment Schedule|
 Then I verified the following Tabs details successfully 
	|2491-RBI-EPP-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-AMT-VAR-INST-CASH-Newcreateloan1.xlsx|Summary|Repayment Schedule|Transactions|
 Then I make repayment and verified the following tabs
    |2491-RBI-EPP-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-AMT-VAR-INST-CASH-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
 And I disburse loan from "NewLoanInput" sheet
    |2491-RBI-EPP-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-AMT-VAR-INST-CASH-Newcreateloan2.xlsx|
 Then I verified the following Tabs details successfully 
	|2491-RBI-EPP-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-AMT-VAR-INST-CASH-Newcreateloan2.xlsx|Summary|Repayment Schedule|Transactions|
 Then I make repayment and read the transaction Id
	|2491-RBI-EPP-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-AMT-VAR-INST-CASH-Makerepayment2.xlsx|Input|Transactions|
 And I Navigate to Accounting web page
 And I search with transaction id & verified the accounting entries
	|2491-RBI-EPP-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-AMT-VAR-INST-CASH-Makerepayment2.xlsx|Acc_Disbursement|Acc_Repayment|Acc_Disbursement1|Acc_Repayment1|

@RunnerClass8
	Scenario: 2492-RBI-EPP-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-DELETE-VAR-INST-CASH  
 Given I setup the clients 
 Then I entered the values into client from "Input" sheet
	|Createclient.xlsx|
 Then I should see client created successfully from "Output" sheet
	|Createclient.xlsx|
 When I set up the new create loan from "NewLoanInput" sheet
	| 2492-RBI-EPP-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-DELETE-VAR-INST-CASH-Newcreateloan1.xlsx|
 Then I "Edit Date " In Edit Repayment Schedule page
    |2492-RBI-EPP-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-DELETE-VAR-INST-CASH-Newcreateloan1.xlsx|Edit Repayment Schedule|
 Then I verified the following Tabs details successfully 
	|2492-RBI-EPP-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-DELETE-VAR-INST-CASH-Newcreateloan1.xlsx|Summary|Repayment Schedule|Transactions|
 Then I make repayment and verified the following tabs
    |2492-RBI-EPP-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-DELETE-VAR-INST-CASH-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
 And I disburse loan from "NewLoanInput" sheet
    |2492-RBI-EPP-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-DELETE-VAR-INST-CASH-Newcreateloan2.xlsx|
 Then I verified the following Tabs details successfully 
	|2492-RBI-EPP-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-DELETE-VAR-INST-CASH-Newcreateloan2.xlsx|Summary|Repayment Schedule|Transactions|
 Then I make repayment and read the transaction Id
	|2492-RBI-EPP-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-DELETE-VAR-INST-CASH-Makerepayment2.xlsx|Input|Transactions|
 And I Navigate to Accounting web page
 And I search with transaction id & verified the accounting entries
	|2492-RBI-EPP-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-DELETE-VAR-INST-CASH-Makerepayment2.xlsx|Acc_Disbursement|Acc_Repayment|Acc_Disbursement1|Acc_Repayment1|

@RunnerClass8
	Scenario: 2493-RBI-EPP-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-ADD-VAR-INST-CASH  
 Given I setup the clients 
 Then I entered the values into client from "Input" sheet
	|Createclient.xlsx|
 Then I should see client created successfully from "Output" sheet
	|Createclient.xlsx|
 When I set up the new create loan from "NewLoanInput" sheet
	| 2493-RBI-EPP-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-ADD-VAR-INST-CASH-Newcreateloan1.xlsx|
 Then I "Edit Date " In Edit Repayment Schedule page
    |2493-RBI-EPP-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-ADD-VAR-INST-CASH-Newcreateloan1.xlsx|Edit Repayment Schedule|
 Then I verified the following Tabs details successfully 
	|2493-RBI-EPP-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-ADD-VAR-INST-CASH-Newcreateloan1.xlsx|Summary|Repayment Schedule|Transactions|
 Then I make repayment and verified the following tabs
    |2493-RBI-EPP-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-ADD-VAR-INST-CASH-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
 And I disburse loan from "NewLoanInput" sheet
    |2493-RBI-EPP-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-ADD-VAR-INST-CASH-Newcreateloan2.xlsx|
 Then I verified the following Tabs details successfully 
	|2493-RBI-EPP-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-ADD-VAR-INST-CASH-Newcreateloan2.xlsx|Summary|Repayment Schedule|Transactions|
 Then I make repayment and read the transaction Id
	|2493-RBI-EPP-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-ADD-VAR-INST-CASH-Makerepayment2.xlsx|Input|Transactions|
 And I Navigate to Accounting web page
 And I search with transaction id & verified the accounting entries
	|2493-RBI-EPP-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-ADD-VAR-INST-CASH-Makerepayment2.xlsx|Acc_Disbursement|Acc_Repayment|Acc_Disbursement1|Acc_Repayment1|
	
@RunnerClass8
	Scenario: 2494-RBI-EPP-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-PATTERN-VAR-INST-CASH
 Given I setup the clients 
 Then I entered the values into client from "Input" sheet
	|Createclient.xlsx|
 Then I should see client created successfully from "Output" sheet
	|Createclient.xlsx|
 When I set up the new create loan from "NewLoanInput" sheet
	| 2494-RBI-EPP-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-PATTERN-VAR-INST-CASH-Newcreateloan1.xlsx|
 Then I "Edit Date " In Edit Repayment Schedule page
    |2494-RBI-EPP-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-PATTERN-VAR-INST-CASH-Newcreateloan1.xlsx|Edit Repayment Schedule|
 Then I verified the following Tabs details successfully 
	|2494-RBI-EPP-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-PATTERN-VAR-INST-CASH-Newcreateloan1.xlsx|Summary|Repayment Schedule|Transactions|
 Then I make repayment and verified the following tabs
    |2494-RBI-EPP-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-PATTERN-VAR-INST-CASH-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
 And I disburse loan from "NewLoanInput" sheet
    |2494-RBI-EPP-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-PATTERN-VAR-INST-CASH-Newcreateloan2.xlsx|
 Then I verified the following Tabs details successfully 
	|2494-RBI-EPP-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-PATTERN-VAR-INST-CASH-Newcreateloan2.xlsx|Summary|Repayment Schedule|Transactions|
 Then I make repayment and read the transaction Id
	|2494-RBI-EPP-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-PATTERN-VAR-INST-CASH-Makerepayment2.xlsx|Input|Transactions|
 And I Navigate to Accounting web page
 And I search with transaction id & verified the accounting entries
	|2494-RBI-EPP-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-PATTERN-VAR-INST-CASH-Makerepayment2.xlsx|Acc_Disbursement|Acc_Repayment|Acc_Disbursement1|Acc_Repayment1|

@RunnerClass8
	Scenario: 2495-RBI-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-DATE-VAR-INST-PERIODIC  
 Given I setup the product loan "Setup"
	| Productloannavigation.xlsx |
 Then I entered the values into product from "ProductLoanInput" Sheet
	|2495-RBI-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-DATE-VAR-INST-PERIODIC-Loanproduct.xlsx|
 Given I setup the clients 
 Then I entered the values into client from "Input" sheet
	|Createclient.xlsx|
 Then I should see client created successfully from "Output" sheet
	|Createclient.xlsx|
 When I set up the new create loan from "NewLoanInput" sheet
	| 2495-RBI-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-DATE-VAR-INST-PERIODIC-Newcreateloan1.xlsx|
 Then I "Edit Date " In Edit Repayment Schedule page
    |2495-RBI-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-DATE-VAR-INST-PERIODIC-Newcreateloan1.xlsx|Edit Repayment Schedule|
 Then I verified the following Tabs details successfully 
	|2495-RBI-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-DATE-VAR-INST-PERIODIC-Newcreateloan1.xlsx|Summary|Repayment Schedule|
 Then I make repayment and verified the following tabs
    |2495-RBI-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-DATE-VAR-INST-PERIODIC-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
 And I disburse loan from "NewLoanInput" sheet
    |2495-RBI-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-DATE-VAR-INST-PERIODIC-Newcreateloan2.xlsx|
 Then I verified the following Tabs details successfully 
	|2495-RBI-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-DATE-VAR-INST-PERIODIC-Newcreateloan2.xlsx|Summary|Repayment Schedule|Transactions|
 Then I navigate to scheduler job & execute "Periodic Accrual Transactions"
 Then I make repayment and read the transaction Id
	|2495-RBI-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-DATE-VAR-INST-PERIODIC-Makerepayment2.xlsx|Input|Transactions|
 And I Navigate to Accounting web page
 And I search with transaction id & verified the accounting entries
	|2495-RBI-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-DATE-VAR-INST-PERIODIC-Makerepayment2.xlsx|Acc_Disbursement|Acc_Repayment|Acc_Disbursement1|Acc_Repayment1|Acc_Periodic|

@RunnerClass8
	Scenario: 2496-RBI-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-AMT-VAR-INST-PERIODIC  
 Given I setup the clients 
 Then I entered the values into client from "Input" sheet
	|Createclient.xlsx|
 Then I should see client created successfully from "Output" sheet
	|Createclient.xlsx|
 When I set up the new create loan from "NewLoanInput" sheet
	| 2496-RBI-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-AMT-VAR-INST-PERIODIC-Newcreateloan1.xlsx|
 Then I "Edit Date " In Edit Repayment Schedule page
    |2496-RBI-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-AMT-VAR-INST-PERIODIC-Newcreateloan1.xlsx|Edit Repayment Schedule|
 Then I verified the following Tabs details successfully 
	|2496-RBI-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-AMT-VAR-INST-PERIODIC-Newcreateloan1.xlsx|Summary|Repayment Schedule|
 Then I make repayment and verified the following tabs
    |2496-RBI-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-AMT-VAR-INST-PERIODIC-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
 And I disburse loan from "NewLoanInput" sheet
    |2496-RBI-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-AMT-VAR-INST-PERIODIC-Newcreateloan2.xlsx|
 Then I verified the following Tabs details successfully 
	|2496-RBI-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-AMT-VAR-INST-PERIODIC-Newcreateloan2.xlsx|Summary|Repayment Schedule|Transactions|
 Then I navigate to scheduler job & execute "Periodic Accrual Transactions"
 Then I make repayment and read the transaction Id
	|2496-RBI-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-AMT-VAR-INST-PERIODIC-Makerepayment2.xlsx|Input|Transactions|
 And I Navigate to Accounting web page
 And I search with transaction id & verified the accounting entries
	|2496-RBI-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-AMT-VAR-INST-PERIODIC-Makerepayment2.xlsx|Acc_Disbursement|Acc_Repayment|Acc_Disbursement1|Acc_Repayment1|Acc_Periodic|

@RunnerClass8
	Scenario: 2497-RBI-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-DELETE-VAR-INST-PERIODIC  
 Given I setup the clients 
 Then I entered the values into client from "Input" sheet
	|Createclient.xlsx|
 Then I should see client created successfully from "Output" sheet
	|Createclient.xlsx|
 When I set up the new create loan from "NewLoanInput" sheet
	| 2497-RBI-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-DELETE-VAR-INST-PERIODIC-Newcreateloan1.xlsx|
 Then I "Edit Date " In Edit Repayment Schedule page
    |2497-RBI-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-DELETE-VAR-INST-PERIODIC-Newcreateloan1.xlsx|Edit Repayment Schedule|
 Then I verified the following Tabs details successfully 
	|2497-RBI-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-DELETE-VAR-INST-PERIODIC-Newcreateloan1.xlsx|Summary|Repayment Schedule|
 Then I make repayment and verified the following tabs
    |2497-RBI-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-DELETE-VAR-INST-PERIODIC-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
 And I disburse loan from "NewLoanInput" sheet
    |2497-RBI-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-DELETE-VAR-INST-PERIODIC-Newcreateloan2.xlsx|
 Then I verified the following Tabs details successfully 
	|2497-RBI-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-DELETE-VAR-INST-PERIODIC-Newcreateloan2.xlsx|Summary|Repayment Schedule|Transactions|
 Then I navigate to scheduler job & execute "Periodic Accrual Transactions"
 Then I make repayment and read the transaction Id
	|2497-RBI-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-DELETE-VAR-INST-PERIODIC-Makerepayment2.xlsx|Input|Transactions|
 And I Navigate to Accounting web page
 And I search with transaction id & verified the accounting entries
	|2497-RBI-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-DELETE-VAR-INST-PERIODIC-Makerepayment2.xlsx|Acc_Disbursement|Acc_Repayment|Acc_Disbursement1|Acc_Repayment1|Acc_Periodic|

@RunnerClass8
	Scenario: 2498-RBI-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-ADD-VAR-INST-PERIODIC  
 Given I setup the clients 
 Then I entered the values into client from "Input" sheet
	|Createclient.xlsx|
 Then I should see client created successfully from "Output" sheet
	|Createclient.xlsx|
 When I set up the new create loan from "NewLoanInput" sheet
	| 2498-RBI-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-ADD-VAR-INST-PERIODIC-Newcreateloan1.xlsx|
 Then I "Edit Date " In Edit Repayment Schedule page
    |2498-RBI-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-ADD-VAR-INST-PERIODIC-Newcreateloan1.xlsx|Edit Repayment Schedule|
 Then I verified the following Tabs details successfully 
	|2498-RBI-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-ADD-VAR-INST-PERIODIC-Newcreateloan1.xlsx|Summary|Repayment Schedule|
 Then I make repayment and verified the following tabs
    |2498-RBI-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-ADD-VAR-INST-PERIODIC-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
 And I disburse loan from "NewLoanInput" sheet
    |2498-RBI-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-ADD-VAR-INST-PERIODIC-Newcreateloan2.xlsx|
 Then I verified the following Tabs details successfully 
	|2498-RBI-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-ADD-VAR-INST-PERIODIC-Newcreateloan2.xlsx|Summary|Repayment Schedule|Transactions|
 Then I navigate to scheduler job & execute "Periodic Accrual Transactions"
 Then I make repayment and read the transaction Id
	|2498-RBI-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-ADD-VAR-INST-PERIODIC-Makerepayment2.xlsx|Input|Transactions|
 And I Navigate to Accounting web page
 And I search with transaction id & verified the accounting entries
	|2498-RBI-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-ADD-VAR-INST-PERIODIC-Makerepayment2.xlsx|Acc_Disbursement|Acc_Repayment|Acc_Disbursement1|Acc_Repayment1|Acc_Periodic|

@RunnerClass8
	Scenario: 2499-RBI-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-PATTERN-VAR-INST-PERIODIC  
 Given I setup the clients 
 Then I entered the values into client from "Input" sheet
	|Createclient.xlsx|
 Then I should see client created successfully from "Output" sheet
	|Createclient.xlsx|
 When I set up the new create loan from "NewLoanInput" sheet
	| 2499-RBI-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-PATTERN-VAR-INST-PERIODIC-Newcreateloan1.xlsx|
 Then I "Edit Date " In Edit Repayment Schedule page
    |2499-RBI-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-PATTERN-VAR-INST-PERIODIC-Newcreateloan1.xlsx|Edit Repayment Schedule|
 Then I verified the following Tabs details successfully 
	|2499-RBI-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-PATTERN-VAR-INST-PERIODIC-Newcreateloan1.xlsx|Summary|Repayment Schedule|
 Then I make repayment and verified the following tabs
    |2499-RBI-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-PATTERN-VAR-INST-PERIODIC-Makerepayment1.xlsx|Input|
 And I disburse loan from "NewLoanInput" sheet
    |2499-RBI-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-PATTERN-VAR-INST-PERIODIC-Newcreateloan2.xlsx|
 Then I verified the following Tabs details successfully 
	|2499-RBI-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-PATTERN-VAR-INST-PERIODIC-Newcreateloan2.xlsx|Summary|Repayment Schedule|Transactions|
 Then I navigate to scheduler job & execute "Periodic Accrual Transactions"
 Then I make repayment and read the transaction Id
	|2499-RBI-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-PATTERN-VAR-INST-PERIODIC-Makerepayment2.xlsx|Input|Transactions|
 And I Navigate to Accounting web page
 And I search with transaction id & verified the accounting entries
	|2499-RBI-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-PATTERN-VAR-INST-PERIODIC-Makerepayment2.xlsx|Acc_Disbursement|Acc_Repayment|Acc_Disbursement1|Acc_Repayment1|Acc_Periodic|

	
@RunnerClass8
	Scenario: 2500-RBI-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-DATE-VAR-INST-UPFRONT  
 Given I setup the product loan "Setup"
	| Productloannavigation.xlsx |
 Then I entered the values into product from "ProductLoanInput" Sheet
	|2500-RBI-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-DATE-VAR-INST-UPFRONT-Loanproduct.xlsx|
 Given I setup the clients 
 Then I entered the values into client from "Input" sheet
	|Createclient.xlsx|
 Then I should see client created successfully from "Output" sheet
	|Createclient.xlsx|
 When I set up the new create loan from "NewLoanInput" sheet
	| 2500-RBI-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-DATE-VAR-INST-UPFRONT-Newcreateloan1.xlsx|
 Then I "Edit Date " In Edit Repayment Schedule page
    |2500-RBI-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-DATE-VAR-INST-UPFRONT-Newcreateloan1.xlsx|Edit Repayment Schedule|
 Then I verified the following Tabs details successfully 
	|2500-RBI-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-DATE-VAR-INST-UPFRONT-Newcreateloan1.xlsx|Summary|Repayment Schedule|
 Then I make repayment and verified the following tabs
    |2500-RBI-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-DATE-VAR-INST-UPFRONT-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
 And I disburse loan from "NewLoanInput" sheet
    |2500-RBI-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-DATE-VAR-INST-UPFRONT-Newcreateloan2.xlsx|
 Then I verified the following Tabs details successfully 
	|2500-RBI-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-DATE-VAR-INST-UPFRONT-Newcreateloan2.xlsx|Summary|Repayment Schedule|Transactions|
 Then I navigate to scheduler job & execute "Add Upfront Accrual Transactions"
 Then I make repayment and read the transaction Id
	|2500-RBI-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-DATE-VAR-INST-UPFRONT-Makerepayment2.xlsx|Input|Transactions|
 And I Navigate to Accounting web page
 And I search with transaction id & verified the accounting entries
	|2500-RBI-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-DATE-VAR-INST-UPFRONT-Makerepayment2.xlsx|Acc_Disbursement|Acc_Repayment|Acc_Disbursement1|Acc_Repayment1|Acc_Upfront|
	
@RunnerClass8
	Scenario: 2501-RBI-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-AMT-VAR-INST-UPFRONT  
 Given I setup the clients 
 Then I entered the values into client from "Input" sheet
	|Createclient.xlsx|
 Then I should see client created successfully from "Output" sheet
	|Createclient.xlsx|
 When I set up the new create loan from "NewLoanInput" sheet
	| 2501-RBI-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-AMT-VAR-INST-UPFRONT-Newcreateloan1.xlsx|
 Then I "Edit Date " In Edit Repayment Schedule page
    |2501-RBI-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-AMT-VAR-INST-UPFRONT-Newcreateloan1.xlsx|Edit Repayment Schedule|
 Then I verified the following Tabs details successfully 
	|2501-RBI-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-AMT-VAR-INST-UPFRONT-Newcreateloan1.xlsx|Summary|Repayment Schedule|
 Then I make repayment and verified the following tabs
    |2501-RBI-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-AMT-VAR-INST-UPFRONT-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
 And I disburse loan from "NewLoanInput" sheet
    |2501-RBI-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-AMT-VAR-INST-UPFRONT-Newcreateloan2.xlsx|
 Then I verified the following Tabs details successfully 
	|2501-RBI-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-AMT-VAR-INST-UPFRONT-Newcreateloan2.xlsx|Summary|Repayment Schedule|Transactions|
 Then I navigate to scheduler job & execute "Add Upfront Accrual Transactions"
 Then I make repayment and read the transaction Id
	|2501-RBI-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-AMT-VAR-INST-UPFRONT-Makerepayment2.xlsx|Input|Transactions|
 And I Navigate to Accounting web page
 And I search with transaction id & verified the accounting entries
	|2501-RBI-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-AMT-VAR-INST-UPFRONT-Makerepayment2.xlsx|Acc_Disbursement|Acc_Repayment|Acc_Disbursement1|Acc_Repayment1|Acc_Upfront|
	
@RunnerClass8
	Scenario: 2502-RBI-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-DELETE-VAR-INST-UPFRONT  
 Given I setup the clients 
 Then I entered the values into client from "Input" sheet
	|Createclient.xlsx|
 Then I should see client created successfully from "Output" sheet
	|Createclient.xlsx|
 When I set up the new create loan from "NewLoanInput" sheet
	| 2502-RBI-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-DELETE-VAR-INST-UPFRONT-Newcreateloan1.xlsx|
 Then I "Edit Date " In Edit Repayment Schedule page
    |2502-RBI-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-DELETE-VAR-INST-UPFRONT-Newcreateloan1.xlsx|Edit Repayment Schedule|
 Then I verified the following Tabs details successfully 
	|2502-RBI-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-DELETE-VAR-INST-UPFRONT-Newcreateloan1.xlsx|Summary|Repayment Schedule|
 Then I make repayment and verified the following tabs
    |2502-RBI-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-DELETE-VAR-INST-UPFRONT-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
 And I disburse loan from "NewLoanInput" sheet
    |2502-RBI-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-DELETE-VAR-INST-UPFRONT-Newcreateloan2.xlsx|
 Then I verified the following Tabs details successfully 
	|2502-RBI-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-DELETE-VAR-INST-UPFRONT-Newcreateloan2.xlsx|Summary|Repayment Schedule|Transactions|
 Then I navigate to scheduler job & execute "Add Upfront Accrual Transactions"
 Then I make repayment and read the transaction Id
	|2502-RBI-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-DELETE-VAR-INST-UPFRONT-Makerepayment2.xlsx|Input|Transactions|
 And I Navigate to Accounting web page
 And I search with transaction id & verified the accounting entries
	|2502-RBI-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-DELETE-VAR-INST-UPFRONT-Makerepayment2.xlsx|Acc_Disbursement|Acc_Repayment|Acc_Disbursement1|Acc_Repayment1|Acc_Upfront|
	
@RunnerClass8
	Scenario: 2503-RBI-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-ADD-VAR-INST-UPFRONT  
 Given I setup the clients 
 Then I entered the values into client from "Input" sheet
	|Createclient.xlsx|
 Then I should see client created successfully from "Output" sheet
	|Createclient.xlsx|
 When I set up the new create loan from "NewLoanInput" sheet
	| 2503-RBI-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-ADD-VAR-INST-UPFRONT-Newcreateloan1.xlsx|
 Then I "Edit Date " In Edit Repayment Schedule page
    |2503-RBI-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-ADD-VAR-INST-UPFRONT-Newcreateloan1.xlsx|Edit Repayment Schedule|
 Then I verified the following Tabs details successfully 
	|2503-RBI-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-ADD-VAR-INST-UPFRONT-Newcreateloan1.xlsx|Summary|Repayment Schedule|
 Then I make repayment and verified the following tabs
    |2503-RBI-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-ADD-VAR-INST-UPFRONT-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
 And I disburse loan from "NewLoanInput" sheet
    |2503-RBI-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-ADD-VAR-INST-UPFRONT-Newcreateloan2.xlsx|
 Then I verified the following Tabs details successfully 
	|2503-RBI-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-ADD-VAR-INST-UPFRONT-Newcreateloan2.xlsx|Summary|Repayment Schedule|Transactions|
 Then I navigate to scheduler job & execute "Add Upfront Accrual Transactions"
 Then I make repayment and read the transaction Id
	|2503-RBI-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-ADD-VAR-INST-UPFRONT-Makerepayment2.xlsx|Input|Transactions|
 And I Navigate to Accounting web page
 And I search with transaction id & verified the accounting entries
	|2503-RBI-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-ADD-VAR-INST-UPFRONT-Makerepayment2.xlsx|Acc_Disbursement|Acc_Repayment|Acc_Disbursement1|Acc_Repayment1|Acc_Upfront|
	
@RunnerClass8
	Scenario: 2504-RBI-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-PATTERN-VAR-INST-UPFRONT  
 Given I setup the clients 
 Then I entered the values into client from "Input" sheet
	|Createclient.xlsx|
 Then I should see client created successfully from "Output" sheet
	|Createclient.xlsx|
 When I set up the new create loan from "NewLoanInput" sheet
	| 2504-RBI-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-PATTERN-VAR-INST-UPFRONT-Newcreateloan1.xlsx|
 Then I "Edit Date " In Edit Repayment Schedule page
    |2504-RBI-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-PATTERN-VAR-INST-UPFRONT-Newcreateloan1.xlsx|Edit Repayment Schedule|
 Then I verified the following Tabs details successfully 
	|2504-RBI-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-PATTERN-VAR-INST-UPFRONT-Newcreateloan1.xlsx|Summary|Repayment Schedule|
 Then I make repayment and verified the following tabs
    |2504-RBI-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-PATTERN-VAR-INST-UPFRONT-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
 And I disburse loan from "NewLoanInput" sheet
    |2504-RBI-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-PATTERN-VAR-INST-UPFRONT-Newcreateloan2.xlsx|
 Then I verified the following Tabs details successfully 
	|2504-RBI-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-PATTERN-VAR-INST-UPFRONT-Newcreateloan2.xlsx|Summary|Repayment Schedule|Transactions|
 Then I navigate to scheduler job & execute "Add Upfront Accrual Transactions"
 Then I make repayment and read the transaction Id
	|2504-RBI-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-PATTERN-VAR-INST-UPFRONT-Makerepayment2.xlsx|Input|Transactions|
 And I Navigate to Accounting web page
 And I search with transaction id & verified the accounting entries
	|2504-RBI-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-PATTERN-VAR-INST-UPFRONT-Makerepayment2.xlsx|Acc_Disbursement|Acc_Repayment|Acc_Disbursement1|Acc_Repayment1|Acc_Upfront|
 	
@RunnerClass8
	  Scenario: 2505-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-DATE-VAR-INST  
 Given I setup the product loan "Setup"
	| Productloannavigation.xlsx |
 Then I entered the values into product from "ProductLoanInput" Sheet
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
 	
@RunnerClass8
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

@RunnerClass8
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

@RunnerClass8
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

@RunnerClass8
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

@RunnerClass8
	  Scenario: 2510-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-DATE-VAR-INST  
 Given I setup the product loan "Setup"
	| Productloannavigation.xlsx |
 Then I entered the values into product from "ProductLoanInput" Sheet
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
 	
@RunnerClass8
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

@RunnerClass8
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

@RunnerClass8
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

@RunnerClass8
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

@RunnerClass8
	  Scenario: 2515-MS-EI-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-DATE-VAR-INST  
 Given I setup the product loan "Setup"
	| Productloannavigation.xlsx |
 Then I entered the values into product from "ProductLoanInput" Sheet
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
 	
@RunnerClass8
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

@RunnerClass8
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

@RunnerClass8
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

@RunnerClass8
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

@RunnerClass8
	  Scenario: 2520-MS-EI-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-DATE-VAR-INST  
 Given I setup the product loan "Setup"
	| Productloannavigation.xlsx |
 Then I entered the values into product from "ProductLoanInput" Sheet
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
 	
@RunnerClass8
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

@RunnerClass8
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

@RunnerClass8
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

@RunnerClass8
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

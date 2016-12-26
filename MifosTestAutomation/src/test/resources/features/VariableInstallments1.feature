Feature:VariableInstallment1

Background:
	Given I navigate to mifos using "default4#/"
	And I login into mifos site using "Login" excel sheet
		| Login.xlsx  |
	Then I should see logged in successfully

@RunnerClass4
	Scenario: 2525-MS-EPP-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-DATE-VAR-INST  
 Given I setup the product loan "Setup"
	| Productloannavigation.xlsx |
 Then I entered the values into product from "ProductLoanInput" Sheet
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
 	
@RunnerClass4
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
 	
@RunnerClass4
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

@RunnerClass4
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

@RunnerClass4
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

@RunnerClass4
	Scenario: 2530-MS-EPP-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-DATE-VAR-INST  
 Given I setup the product loan "Setup"
	| Productloannavigation.xlsx |
 Then I entered the values into product from "ProductLoanInput" Sheet
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

@RunnerClass4
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

@RunnerClass4
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

@RunnerClass4
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

@RunnerClass4
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

@RunnerClass4
	Scenario: 2535-MS-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-DATE-VAR-INST  
 Given I setup the product loan "Setup"
	| Productloannavigation.xlsx |
 Then I entered the values into product from "ProductLoanInput" Sheet
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

@RunnerClass4
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

@RunnerClass4
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

@RunnerClass4
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

@RunnerClass4
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

@RunnerClass4
	Scenario: 2540-MS-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-DATE-VAR-INST  
 Given I setup the product loan "Setup"
	| Productloannavigation.xlsx |
 Then I entered the values into product from "ProductLoanInput" Sheet
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

@RunnerClass4
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

@RunnerClass4
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

@RunnerClass4
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

@RunnerClass4
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
 	
@RunnerClass4
	Scenario: 2545-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-DATE-VAR-INST-NONE  
 Given I setup the product loan "Setup"
	| Productloannavigation.xlsx |
 Then I entered the values into product from "ProductLoanInput" Sheet
	|2545-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-DATE-VAR-INST-NONE-Loanproduct.xlsx|
 Given I setup the clients 
 Then I entered the values into client from "Input" sheet
	|Createclient.xlsx|
 Then I should see client created successfully from "Output" sheet
	|Createclient.xlsx|
 When I set up the new create loan from "NewLoanInput" sheet
	| 2545-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-DATE-VAR-INST-NONE-Newcreateloan1.xlsx|
 Then I "Edit Date " In Edit Repayment Schedule page
    |2545-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-DATE-VAR-INST-NONE-Newcreateloan1.xlsx|Edit Repayment Schedule|
 Then I verified the "Summary" details successfully 
	|2545-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-DATE-VAR-INST-NONE-Newcreateloan1.xlsx|
 And I verified the "Repayment Schedule" details successfully 
	|2545-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-DATE-VAR-INST-NONE-Newcreateloan1.xlsx|
 And I verified the "Transactions" details successfully	
    |2545-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-DATE-VAR-INST-NONE-Newcreateloan1.xlsx|
 Then I make repayment and verified the following tabs
    |2545-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-DATE-VAR-INST-NONE-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
 And I disburse loan from "NewLoanInput" sheet
    |2545-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-DATE-VAR-INST-NONE-Newcreateloan2.xlsx|
 Then I verified the "Summary" details successfully 
	|2545-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-DATE-VAR-INST-NONE-Newcreateloan2.xlsx|
 And I verified the "Repayment Schedule" details successfully 
	|2545-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-DATE-VAR-INST-NONE-Newcreateloan2.xlsx| 			
 And I verified the "Transactions" details successfully	
	|2545-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-DATE-VAR-INST-NONE-Newcreateloan2.xlsx|

@RunnerClass4
	Scenario: 2546-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-AMT-VAR-INST-NONE  
 Given I setup the clients 
 Then I entered the values into client from "Input" sheet
	|Createclient.xlsx|
 Then I should see client created successfully from "Output" sheet
	|Createclient.xlsx|
 When I set up the new create loan from "NewLoanInput" sheet
	| 2546-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-AMT-VAR-INST-NONE-Newcreateloan1.xlsx|
 Then I "Edit Date " In Edit Repayment Schedule page
    |2546-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-AMT-VAR-INST-NONE-Newcreateloan1.xlsx|Edit Repayment Schedule|
 Then I verified the "Summary" details successfully 
	|2546-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-AMT-VAR-INST-NONE-Newcreateloan1.xlsx|
 And I verified the "Repayment Schedule" details successfully 
	|2546-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-AMT-VAR-INST-NONE-Newcreateloan1.xlsx|
 And I verified the "Transactions" details successfully	
    |2546-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-AMT-VAR-INST-NONE-Newcreateloan1.xlsx|
 Then I make repayment and verified the following tabs
    |2546-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-AMT-VAR-INST-NONE-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
 And I disburse loan from "NewLoanInput" sheet
    |2546-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-AMT-VAR-INST-NONE-Newcreateloan2.xlsx|
 Then I verified the "Summary" details successfully 
	|2546-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-AMT-VAR-INST-NONE-Newcreateloan2.xlsx|
 And I verified the "Repayment Schedule" details successfully 
	|2546-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-AMT-VAR-INST-NONE-Newcreateloan2.xlsx| 			
 And I verified the "Transactions" details successfully	
	|2546-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-AMT-VAR-INST-NONE-Newcreateloan2.xlsx|
	
@RunnerClass4
	Scenario: 2547-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-DELETE-VAR-INST-NONE  
 Given I setup the clients 
 Then I entered the values into client from "Input" sheet
	|Createclient.xlsx|
 Then I should see client created successfully from "Output" sheet
	|Createclient.xlsx|
 When I set up the new create loan from "NewLoanInput" sheet
	| 2547-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-DELETE-VAR-INST-NONE-Newcreateloan1.xlsx|
 Then I "Edit Date " In Edit Repayment Schedule page
    |2547-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-DELETE-VAR-INST-NONE-Newcreateloan1.xlsx|Edit Repayment Schedule|
 Then I verified the "Summary" details successfully 
	|2547-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-DELETE-VAR-INST-NONE-Newcreateloan1.xlsx|
 And I verified the "Repayment Schedule" details successfully 
	|2547-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-DELETE-VAR-INST-NONE-Newcreateloan1.xlsx|
 And I verified the "Transactions" details successfully	
    |2547-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-DELETE-VAR-INST-NONE-Newcreateloan1.xlsx|
 Then I make repayment and verified the following tabs
    |2547-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-DELETE-VAR-INST-NONE-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
 And I disburse loan from "NewLoanInput" sheet
    |2547-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-DELETE-VAR-INST-NONE-Newcreateloan2.xlsx|
 Then I verified the "Summary" details successfully 
	|2547-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-DELETE-VAR-INST-NONE-Newcreateloan2.xlsx|
 And I verified the "Repayment Schedule" details successfully 
	|2547-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-DELETE-VAR-INST-NONE-Newcreateloan2.xlsx| 			
 And I verified the "Transactions" details successfully	
	|2547-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-DELETE-VAR-INST-NONE-Newcreateloan2.xlsx|

@RunnerClass4
	Scenario: 2548-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-ADD-VAR-INST-NONE  
 Given I setup the clients 
 Then I entered the values into client from "Input" sheet
	|Createclient.xlsx|
 Then I should see client created successfully from "Output" sheet
	|Createclient.xlsx|
 When I set up the new create loan from "NewLoanInput" sheet
	| 2548-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-ADD-VAR-INST-NONE-Newcreateloan1.xlsx|
 Then I "Edit Date " In Edit Repayment Schedule page
    |2548-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-ADD-VAR-INST-NONE-Newcreateloan1.xlsx|Edit Repayment Schedule|
 Then I verified the "Summary" details successfully 
	|2548-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-ADD-VAR-INST-NONE-Newcreateloan1.xlsx|
 And I verified the "Repayment Schedule" details successfully 
	|2548-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-ADD-VAR-INST-NONE-Newcreateloan1.xlsx|
 And I verified the "Transactions" details successfully	
    |2548-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-ADD-VAR-INST-NONE-Newcreateloan1.xlsx|
 Then I make repayment and verified the following tabs
    |2548-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-ADD-VAR-INST-NONE-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
 And I disburse loan from "NewLoanInput" sheet
    |2548-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-ADD-VAR-INST-NONE-Newcreateloan2.xlsx|
 Then I verified the "Summary" details successfully 
	|2548-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-ADD-VAR-INST-NONE-Newcreateloan2.xlsx|
 And I verified the "Repayment Schedule" details successfully 
	|2548-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-ADD-VAR-INST-NONE-Newcreateloan2.xlsx| 			
 And I verified the "Transactions" details successfully	
	|2548-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-ADD-VAR-INST-NONE-Newcreateloan2.xlsx|
	
@RunnerClass4
	Scenario: 2549-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-PATTERN-VAR-INST-NONE  
 Given I setup the clients 
 Then I entered the values into client from "Input" sheet
	|Createclient.xlsx|
 Then I should see client created successfully from "Output" sheet
	|Createclient.xlsx|
 When I set up the new create loan from "NewLoanInput" sheet
	| 2549-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-PATTERN-VAR-INST-NONE-Newcreateloan1.xlsx|
 Then I "Edit Date " In Edit Repayment Schedule page
    |2549-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-PATTERN-VAR-INST-NONE-Newcreateloan1.xlsx|Edit Repayment Schedule|
 Then I verified the "Summary" details successfully 
	|2549-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-PATTERN-VAR-INST-NONE-Newcreateloan1.xlsx|
 And I verified the "Repayment Schedule" details successfully 
	|2549-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-PATTERN-VAR-INST-NONE-Newcreateloan1.xlsx|
 And I verified the "Transactions" details successfully	
    |2549-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-PATTERN-VAR-INST-NONE-Newcreateloan1.xlsx|
 Then I make repayment and verified the following tabs
    |2549-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-PATTERN-VAR-INST-NONE-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
 And I disburse loan from "NewLoanInput" sheet
    |2549-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-PATTERN-VAR-INST-NONE-Newcreateloan2.xlsx|
 Then I verified the "Summary" details successfully 
	|2549-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-PATTERN-VAR-INST-NONE-Newcreateloan2.xlsx|
 And I verified the "Repayment Schedule" details successfully 
	|2549-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-PATTERN-VAR-INST-NONE-Newcreateloan2.xlsx| 			
 And I verified the "Transactions" details successfully	
	|2549-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-PATTERN-VAR-INST-NONE-Newcreateloan2.xlsx|

@RunnerClass4
	Scenario: 2550-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-DATE-VAR-INST-CASH  
 Given I setup the product loan "Setup"
	| Productloannavigation.xlsx |
 Then I entered the values into product from "ProductLoanInput" Sheet
	|2550-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-DATE-VAR-INST-CASH-Loanproduct.xlsx|
 Given I setup the clients 
 Then I entered the values into client from "Input" sheet
	|Createclient.xlsx|
 Then I should see client created successfully from "Output" sheet
	|Createclient.xlsx|
 When I set up the new create loan from "NewLoanInput" sheet
	| 2550-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-DATE-VAR-INST-CASH-Newcreateloan1.xlsx|
 Then I "Edit Date " In Edit Repayment Schedule page
    |2550-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-DATE-VAR-INST-CASH-Newcreateloan1.xlsx|Edit Repayment Schedule|
 Then I verified the following Tabs details successfully 
	|2550-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-DATE-VAR-INST-CASH-Newcreateloan1.xlsx|Summary|Repayment Schedule|Transactions|
 Then I make repayment and verified the following tabs
    |2550-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-DATE-VAR-INST-CASH-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
 And I disburse loan from "NewLoanInput" sheet
    |2550-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-DATE-VAR-INST-CASH-Newcreateloan2.xlsx|
 Then I verified the following Tabs details successfully 
	|2550-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-DATE-VAR-INST-CASH-Newcreateloan2.xlsx|Summary|Repayment Schedule|Transactions|
 Then I make repayment and read the transaction Id
	|2550-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-DATE-VAR-INST-CASH-Makerepayment2.xlsx|Input|Transactions|
 And I Navigate to Accounting web page
 And I search with transaction id & verified the accounting entries
	|2550-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-DATE-VAR-INST-CASH-Makerepayment2.xlsx|Acc_Disbursement|Acc_Repayment|Acc_Disbursement1|Acc_Repayment1|
 	
@RunnerClass4
	Scenario: 2551-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-AMT-VAR-INST-CASH  
 Given I setup the clients 
 Then I entered the values into client from "Input" sheet
	|Createclient.xlsx|
 Then I should see client created successfully from "Output" sheet
	|Createclient.xlsx|
 When I set up the new create loan from "NewLoanInput" sheet
	| 2551-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-AMT-VAR-INST-CASH-Newcreateloan1.xlsx|
 Then I "Edit Date " In Edit Repayment Schedule page
    |2551-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-AMT-VAR-INST-CASH-Newcreateloan1.xlsx|Edit Repayment Schedule|
 Then I verified the following Tabs details successfully 
	|2551-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-AMT-VAR-INST-CASH-Newcreateloan1.xlsx|Summary|Repayment Schedule|Transactions|
 Then I make repayment and verified the following tabs
    |2551-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-AMT-VAR-INST-CASH-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
 And I disburse loan from "NewLoanInput" sheet
    |2551-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-AMT-VAR-INST-CASH-Newcreateloan2.xlsx|
 Then I verified the following Tabs details successfully 
	|2551-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-AMT-VAR-INST-CASH-Newcreateloan2.xlsx|Summary|Repayment Schedule|Transactions|
 Then I make repayment and read the transaction Id
	|2551-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-AMT-VAR-INST-CASH-Makerepayment2.xlsx|Input|Transactions|
 And I Navigate to Accounting web page
 And I search with transaction id & verified the accounting entries
	|2551-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-AMT-VAR-INST-CASH-Makerepayment2.xlsx|Acc_Disbursement|Acc_Repayment|Acc_Disbursement1|Acc_Repayment1|

@RunnerClass4
	Scenario: 2552-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-DELETE-VAR-INST-CASH  
 Given I setup the clients 
 Then I entered the values into client from "Input" sheet
	|Createclient.xlsx|
 Then I should see client created successfully from "Output" sheet
	|Createclient.xlsx|
 When I set up the new create loan from "NewLoanInput" sheet
	| 2552-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-DELETE-VAR-INST-CASH-Newcreateloan1.xlsx|
 Then I "Edit Date " In Edit Repayment Schedule page
    |2552-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-DELETE-VAR-INST-CASH-Newcreateloan1.xlsx|Edit Repayment Schedule|
 Then I verified the following Tabs details successfully 
	|2552-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-DELETE-VAR-INST-CASH-Newcreateloan1.xlsx|Summary|Repayment Schedule|Transactions|
 Then I make repayment and verified the following tabs
    |2552-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-DELETE-VAR-INST-CASH-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
 And I disburse loan from "NewLoanInput" sheet
    |2552-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-DELETE-VAR-INST-CASH-Newcreateloan2.xlsx|
 Then I verified the following Tabs details successfully 
	|2552-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-DELETE-VAR-INST-CASH-Newcreateloan2.xlsx|Summary|Repayment Schedule|Transactions|
 Then I make repayment and read the transaction Id
	|2552-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-DELETE-VAR-INST-CASH-Makerepayment2.xlsx|Input|Transactions|
 
@RunnerClass4
	Scenario: 2553-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-ADD-VAR-INST-CASH  
 Given I setup the clients 
 Then I entered the values into client from "Input" sheet
	|Createclient.xlsx|
 Then I should see client created successfully from "Output" sheet
	|Createclient.xlsx|
 When I set up the new create loan from "NewLoanInput" sheet
	| 2553-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-ADD-VAR-INST-CASH-Newcreateloan1.xlsx|
 Then I "Edit Date " In Edit Repayment Schedule page
    |2553-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-ADD-VAR-INST-CASH-Newcreateloan1.xlsx|Edit Repayment Schedule|
 Then I verified the following Tabs details successfully 
	|2553-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-ADD-VAR-INST-CASH-Newcreateloan1.xlsx|Summary|Repayment Schedule|Transactions|
 Then I make repayment and verified the following tabs
    |2553-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-ADD-VAR-INST-CASH-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
 And I disburse loan from "NewLoanInput" sheet
    |2553-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-ADD-VAR-INST-CASH-Newcreateloan2.xlsx|
 Then I verified the following Tabs details successfully 
	|2553-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-ADD-VAR-INST-CASH-Newcreateloan2.xlsx|Summary|Repayment Schedule|Transactions|
 Then I make repayment and read the transaction Id
	|2553-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-ADD-VAR-INST-CASH-Makerepayment2.xlsx|Input|Transactions|
 And I Navigate to Accounting web page
 And I search with transaction id & verified the accounting entries
	|2553-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-ADD-VAR-INST-CASH-Makerepayment2.xlsx|Acc_Disbursement|Acc_Repayment|Acc_Disbursement1|Acc_Repayment1|
	
@RunnerClass4
	Scenario: 2554-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-PATTERN-VAR-INST-CASH
 Given I setup the clients 
 Then I entered the values into client from "Input" sheet
	|Createclient.xlsx|
 Then I should see client created successfully from "Output" sheet
	|Createclient.xlsx|
 When I set up the new create loan from "NewLoanInput" sheet
	| 2554-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-PATTERN-VAR-INST-CASH-Newcreateloan1.xlsx|
 Then I "Edit Date " In Edit Repayment Schedule page
    |2554-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-PATTERN-VAR-INST-CASH-Newcreateloan1.xlsx|Edit Repayment Schedule|
 Then I verified the following Tabs details successfully 
	|2554-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-PATTERN-VAR-INST-CASH-Newcreateloan1.xlsx|Summary|Repayment Schedule|Transactions|
 Then I make repayment and verified the following tabs
    |2554-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-PATTERN-VAR-INST-CASH-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
 And I disburse loan from "NewLoanInput" sheet
    |2554-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-PATTERN-VAR-INST-CASH-Newcreateloan2.xlsx|
 Then I verified the following Tabs details successfully 
	|2554-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-PATTERN-VAR-INST-CASH-Newcreateloan2.xlsx|Summary|Repayment Schedule|Transactions|
 Then I make repayment and read the transaction Id
	|2554-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-PATTERN-VAR-INST-CASH-Makerepayment2.xlsx|Input|Transactions|
 And I Navigate to Accounting web page
 And I search with transaction id & verified the accounting entries
	|2554-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-PATTERN-VAR-INST-CASH-Makerepayment2.xlsx|Acc_Disbursement|Acc_Repayment|Acc_Disbursement1|Acc_Repayment1|

@RunnerClass4
	Scenario: 2555-MS-EI-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-DATE-VAR-INST-PERIODIC  
 Given I setup the product loan "Setup"
	| Productloannavigation.xlsx |
 Then I entered the values into product from "ProductLoanInput" Sheet
	|2555-MS-EI-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-DATE-VAR-INST-PERIODIC-Loanproduct.xlsx|
 Given I setup the clients 
 Then I entered the values into client from "Input" sheet
	|Createclient.xlsx|
 Then I should see client created successfully from "Output" sheet
	|Createclient.xlsx|
 When I set up the new create loan from "NewLoanInput" sheet
	| 2555-MS-EI-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-DATE-VAR-INST-PERIODIC-Newcreateloan1.xlsx|
 Then I "Edit Date " In Edit Repayment Schedule page
    |2555-MS-EI-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-DATE-VAR-INST-PERIODIC-Newcreateloan1.xlsx|Edit Repayment Schedule|
 Then I verified the following Tabs details successfully 
	|2555-MS-EI-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-DATE-VAR-INST-PERIODIC-Newcreateloan1.xlsx|Summary|Repayment Schedule|
 Then I make repayment and verified the following tabs
    |2555-MS-EI-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-DATE-VAR-INST-PERIODIC-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
 And I disburse loan from "NewLoanInput" sheet
    |2555-MS-EI-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-DATE-VAR-INST-PERIODIC-Newcreateloan2.xlsx|
 Then I verified the following Tabs details successfully 
	|2555-MS-EI-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-DATE-VAR-INST-PERIODIC-Newcreateloan2.xlsx|Summary|Repayment Schedule|Transactions|
 Then I navigate to scheduler job & execute "Periodic Accrual Transactions"
 Then I make repayment and read the transaction Id
	|2555-MS-EI-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-DATE-VAR-INST-PERIODIC-Makerepayment2.xlsx|Input|Transactions|

@RunnerClass4
	Scenario: 2556-MS-EI-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-AMT-VAR-INST-PERIODIC  
 Given I setup the clients 
 Then I entered the values into client from "Input" sheet
	|Createclient.xlsx|
 Then I should see client created successfully from "Output" sheet
	|Createclient.xlsx|
 When I set up the new create loan from "NewLoanInput" sheet
	| 2556-MS-EI-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-AMT-VAR-INST-PERIODIC-Newcreateloan1.xlsx|
 Then I "Edit Date " In Edit Repayment Schedule page
    |2556-MS-EI-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-AMT-VAR-INST-PERIODIC-Newcreateloan1.xlsx|Edit Repayment Schedule|
 Then I verified the following Tabs details successfully 
	|2556-MS-EI-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-AMT-VAR-INST-PERIODIC-Newcreateloan1.xlsx|Summary|Repayment Schedule|
 Then I make repayment and verified the following tabs
    |2556-MS-EI-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-AMT-VAR-INST-PERIODIC-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
 And I disburse loan from "NewLoanInput" sheet
    |2556-MS-EI-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-AMT-VAR-INST-PERIODIC-Newcreateloan2.xlsx|
 Then I verified the following Tabs details successfully 
	|2556-MS-EI-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-AMT-VAR-INST-PERIODIC-Newcreateloan2.xlsx|Summary|Repayment Schedule|Transactions|
 Then I navigate to scheduler job & execute "Periodic Accrual Transactions"
 Then I make repayment and read the transaction Id
	|2556-MS-EI-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-AMT-VAR-INST-PERIODIC-Makerepayment2.xlsx|Input|Transactions|

@RunnerClass4
	Scenario: 2557-MS-EI-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-DELETE-VAR-INST-PERIODIC  
 Given I setup the clients 
 Then I entered the values into client from "Input" sheet
	|Createclient.xlsx|
 Then I should see client created successfully from "Output" sheet
	|Createclient.xlsx|
 When I set up the new create loan from "NewLoanInput" sheet
	| 2557-MS-EI-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-DELETE-VAR-INST-PERIODIC-Newcreateloan1.xlsx|
 Then I "Edit Date " In Edit Repayment Schedule page
    |2557-MS-EI-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-DELETE-VAR-INST-PERIODIC-Newcreateloan1.xlsx|Edit Repayment Schedule|
 Then I verified the following Tabs details successfully 
	|2557-MS-EI-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-DELETE-VAR-INST-PERIODIC-Newcreateloan1.xlsx|Summary|Repayment Schedule|
 Then I make repayment and verified the following tabs
    |2557-MS-EI-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-DELETE-VAR-INST-PERIODIC-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
 And I disburse loan from "NewLoanInput" sheet
    |2557-MS-EI-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-DELETE-VAR-INST-PERIODIC-Newcreateloan2.xlsx|
 Then I verified the following Tabs details successfully 
	|2557-MS-EI-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-DELETE-VAR-INST-PERIODIC-Newcreateloan2.xlsx|Summary|Repayment Schedule|Transactions|
 Then I navigate to scheduler job & execute "Periodic Accrual Transactions"
 Then I make repayment and read the transaction Id
	|2557-MS-EI-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-DELETE-VAR-INST-PERIODIC-Makerepayment2.xlsx|Input|Transactions|
 And I Navigate to Accounting web page
 And I search with transaction id & verified the accounting entries
	|2557-MS-EI-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-DELETE-VAR-INST-PERIODIC-Makerepayment2.xlsx|Acc_Disbursement|Acc_Repayment|Acc_Disbursement1|Acc_Repayment1|Acc_Periodic|

@RunnerClass4
	Scenario: 2558-MS-EI-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-ADD-VAR-INST-PERIODIC  
 Given I setup the clients 
 Then I entered the values into client from "Input" sheet
	|Createclient.xlsx|
 Then I should see client created successfully from "Output" sheet
	|Createclient.xlsx|
 When I set up the new create loan from "NewLoanInput" sheet
	| 2558-MS-EI-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-ADD-VAR-INST-PERIODIC-Newcreateloan1.xlsx|
 Then I "Edit Date " In Edit Repayment Schedule page
    |2558-MS-EI-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-ADD-VAR-INST-PERIODIC-Newcreateloan1.xlsx|Edit Repayment Schedule|
 Then I verified the following Tabs details successfully 
	|2558-MS-EI-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-ADD-VAR-INST-PERIODIC-Newcreateloan1.xlsx|Summary|Repayment Schedule|
 Then I make repayment and verified the following tabs
    |2558-MS-EI-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-ADD-VAR-INST-PERIODIC-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
 And I disburse loan from "NewLoanInput" sheet
    |2558-MS-EI-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-ADD-VAR-INST-PERIODIC-Newcreateloan2.xlsx|
 Then I verified the following Tabs details successfully 
	|2558-MS-EI-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-ADD-VAR-INST-PERIODIC-Newcreateloan2.xlsx|Summary|Repayment Schedule|Transactions|
 Then I navigate to scheduler job & execute "Periodic Accrual Transactions"
 Then I make repayment and read the transaction Id
	|2558-MS-EI-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-ADD-VAR-INST-PERIODIC-Makerepayment2.xlsx|Input|Transactions|
 
@RunnerClass4
	Scenario: 2559-MS-EI-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-PATTERN-VAR-INST-PERIODIC  
 Given I setup the clients 
 Then I entered the values into client from "Input" sheet
	|Createclient.xlsx|
 Then I should see client created successfully from "Output" sheet
	|Createclient.xlsx|
 When I set up the new create loan from "NewLoanInput" sheet
	| 2559-MS-EI-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-PATTERN-VAR-INST-PERIODIC-Newcreateloan1.xlsx|
 Then I "Edit Date " In Edit Repayment Schedule page
    |2559-MS-EI-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-PATTERN-VAR-INST-PERIODIC-Newcreateloan1.xlsx|Edit Repayment Schedule|
 Then I verified the following Tabs details successfully 
	|2559-MS-EI-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-PATTERN-VAR-INST-PERIODIC-Newcreateloan1.xlsx|Summary|Repayment Schedule|
 Then I make repayment and verified the following tabs
    |2559-MS-EI-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-PATTERN-VAR-INST-PERIODIC-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
 And I disburse loan from "NewLoanInput" sheet
    |2559-MS-EI-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-PATTERN-VAR-INST-PERIODIC-Newcreateloan2.xlsx|
 Then I verified the following Tabs details successfully 
	|2559-MS-EI-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-PATTERN-VAR-INST-PERIODIC-Newcreateloan2.xlsx|Summary|Repayment Schedule|Transactions|
 Then I navigate to scheduler job & execute "Periodic Accrual Transactions"
 Then I make repayment and read the transaction Id
	|2559-MS-EI-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-PATTERN-VAR-INST-PERIODIC-Makerepayment2.xlsx|Input|Transactions|
 And I Navigate to Accounting web page
 And I search with transaction id & verified the accounting entries
	|2559-MS-EI-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-PATTERN-VAR-INST-PERIODIC-Makerepayment2.xlsx|Acc_Disbursement|Acc_Repayment|Acc_Disbursement1|Acc_Repayment1|Acc_Periodic|

	
@RunnerClass4
	Scenario: 2560-MS-EI-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-DATE-VAR-INST-UPFRONT  
 Given I setup the product loan "Setup"
	| Productloannavigation.xlsx |
 Then I entered the values into product from "ProductLoanInput" Sheet
	|2560-MS-EI-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-DATE-VAR-INST-UPFRONT-Loanproduct.xlsx|
 Given I setup the clients 
 Then I entered the values into client from "Input" sheet
	|Createclient.xlsx|
 Then I should see client created successfully from "Output" sheet
	|Createclient.xlsx|
 When I set up the new create loan from "NewLoanInput" sheet
	| 2560-MS-EI-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-DATE-VAR-INST-UPFRONT-Newcreateloan1.xlsx|
 Then I "Edit Date " In Edit Repayment Schedule page
    |2560-MS-EI-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-DATE-VAR-INST-UPFRONT-Newcreateloan1.xlsx|Edit Repayment Schedule|
 Then I verified the following Tabs details successfully 
	|2560-MS-EI-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-DATE-VAR-INST-UPFRONT-Newcreateloan1.xlsx|Summary|Repayment Schedule|
 Then I make repayment and verified the following tabs
    |2560-MS-EI-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-DATE-VAR-INST-UPFRONT-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
 And I disburse loan from "NewLoanInput" sheet
    |2560-MS-EI-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-DATE-VAR-INST-UPFRONT-Newcreateloan2.xlsx|
 Then I verified the following Tabs details successfully 
	|2560-MS-EI-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-DATE-VAR-INST-UPFRONT-Newcreateloan2.xlsx|Summary|Repayment Schedule|Transactions|
 Then I navigate to scheduler job & execute "Add Upfront Accrual Transactions"
 Then I make repayment and read the transaction Id
	|2560-MS-EI-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-DATE-VAR-INST-UPFRONT-Makerepayment2.xlsx|Input|Transactions|
 And I Navigate to Accounting web page
 And I search with transaction id & verified the accounting entries
	|2560-MS-EI-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-DATE-VAR-INST-UPFRONT-Makerepayment2.xlsx|Acc_Disbursement|Acc_Repayment|Acc_Disbursement1|Acc_Repayment1|Acc_Upfront|
	
@RunnerClass4
	Scenario: 2561-MS-EI-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-AMT-VAR-INST-UPFRONT  
 Given I setup the clients 
 Then I entered the values into client from "Input" sheet
	|Createclient.xlsx|
 Then I should see client created successfully from "Output" sheet
	|Createclient.xlsx|
 When I set up the new create loan from "NewLoanInput" sheet
	| 2561-MS-EI-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-AMT-VAR-INST-UPFRONT-Newcreateloan1.xlsx|
 Then I "Edit Date " In Edit Repayment Schedule page
    |2561-MS-EI-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-AMT-VAR-INST-UPFRONT-Newcreateloan1.xlsx|Edit Repayment Schedule|
 Then I verified the following Tabs details successfully 
	|2561-MS-EI-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-AMT-VAR-INST-UPFRONT-Newcreateloan1.xlsx|Summary|Repayment Schedule|
 Then I make repayment and verified the following tabs
    |2561-MS-EI-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-AMT-VAR-INST-UPFRONT-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
 And I disburse loan from "NewLoanInput" sheet
    |2561-MS-EI-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-AMT-VAR-INST-UPFRONT-Newcreateloan2.xlsx|
 Then I verified the following Tabs details successfully 
	|2561-MS-EI-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-AMT-VAR-INST-UPFRONT-Newcreateloan2.xlsx|Summary|Repayment Schedule|Transactions|
 Then I navigate to scheduler job & execute "Add Upfront Accrual Transactions"
 Then I make repayment and read the transaction Id
	|2561-MS-EI-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-AMT-VAR-INST-UPFRONT-Makerepayment2.xlsx|Input|Transactions|
 And I Navigate to Accounting web page
 And I search with transaction id & verified the accounting entries
	|2561-MS-EI-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-AMT-VAR-INST-UPFRONT-Makerepayment2.xlsx|Acc_Disbursement|Acc_Repayment|Acc_Disbursement1|Acc_Repayment1|Acc_Upfront|
	
@RunnerClass4
	Scenario: 2562-MS-EI-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-DELETE-VAR-INST-UPFRONT  
 Given I setup the clients 
 Then I entered the values into client from "Input" sheet
	|Createclient.xlsx|
 Then I should see client created successfully from "Output" sheet
	|Createclient.xlsx|
 When I set up the new create loan from "NewLoanInput" sheet
	| 2562-MS-EI-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-DELETE-VAR-INST-UPFRONT-Newcreateloan1.xlsx|
 Then I "Edit Date " In Edit Repayment Schedule page
    |2562-MS-EI-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-DELETE-VAR-INST-UPFRONT-Newcreateloan1.xlsx|Edit Repayment Schedule|
 Then I verified the following Tabs details successfully 
	|2562-MS-EI-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-DELETE-VAR-INST-UPFRONT-Newcreateloan1.xlsx|Summary|Repayment Schedule|
 Then I make repayment and verified the following tabs
    |2562-MS-EI-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-DELETE-VAR-INST-UPFRONT-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
 And I disburse loan from "NewLoanInput" sheet
    |2562-MS-EI-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-DELETE-VAR-INST-UPFRONT-Newcreateloan2.xlsx|
 Then I verified the following Tabs details successfully 
	|2562-MS-EI-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-DELETE-VAR-INST-UPFRONT-Newcreateloan2.xlsx|Summary|Repayment Schedule|Transactions|
 Then I navigate to scheduler job & execute "Add Upfront Accrual Transactions"
 Then I make repayment and read the transaction Id
	|2562-MS-EI-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-DELETE-VAR-INST-UPFRONT-Makerepayment2.xlsx|Input|Transactions|
 And I Navigate to Accounting web page
 And I search with transaction id & verified the accounting entries
	|2562-MS-EI-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-DELETE-VAR-INST-UPFRONT-Makerepayment2.xlsx|Acc_Disbursement|Acc_Repayment|Acc_Disbursement1|Acc_Repayment1|Acc_Upfront|
	
@RunnerClass4
	Scenario: 2563-MS-EI-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-ADD-VAR-INST-UPFRONT  
 Given I setup the clients 
 Then I entered the values into client from "Input" sheet
	|Createclient.xlsx|
 Then I should see client created successfully from "Output" sheet
	|Createclient.xlsx|
 When I set up the new create loan from "NewLoanInput" sheet
	| 2563-MS-EI-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-ADD-VAR-INST-UPFRONT-Newcreateloan1.xlsx|
 Then I "Edit Date " In Edit Repayment Schedule page
    |2563-MS-EI-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-ADD-VAR-INST-UPFRONT-Newcreateloan1.xlsx|Edit Repayment Schedule|
 Then I verified the following Tabs details successfully 
	|2563-MS-EI-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-ADD-VAR-INST-UPFRONT-Newcreateloan1.xlsx|Summary|Repayment Schedule|
 Then I make repayment and verified the following tabs
    |2563-MS-EI-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-ADD-VAR-INST-UPFRONT-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
 And I disburse loan from "NewLoanInput" sheet
    |2563-MS-EI-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-ADD-VAR-INST-UPFRONT-Newcreateloan2.xlsx|
 Then I verified the following Tabs details successfully 
	|2563-MS-EI-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-ADD-VAR-INST-UPFRONT-Newcreateloan2.xlsx|Summary|Repayment Schedule|Transactions|
 Then I navigate to scheduler job & execute "Add Upfront Accrual Transactions"
 Then I make repayment and read the transaction Id
	|2563-MS-EI-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-ADD-VAR-INST-UPFRONT-Makerepayment2.xlsx|Input|Transactions|
 And I Navigate to Accounting web page
 And I search with transaction id & verified the accounting entries
	|2563-MS-EI-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-ADD-VAR-INST-UPFRONT-Makerepayment2.xlsx|Acc_Disbursement|Acc_Repayment|Acc_Disbursement1|Acc_Repayment1|Acc_Upfront|
	
@RunnerClass4
	Scenario: 2564-MS-EI-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-PATTERN-VAR-INST-UPFRONT  
 Given I setup the clients 
 Then I entered the values into client from "Input" sheet
	|Createclient.xlsx|
 Then I should see client created successfully from "Output" sheet
	|Createclient.xlsx|
 When I set up the new create loan from "NewLoanInput" sheet
	| 2564-MS-EI-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-PATTERN-VAR-INST-UPFRONT-Newcreateloan1.xlsx|
 Then I "Edit Date " In Edit Repayment Schedule page
    |2564-MS-EI-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-PATTERN-VAR-INST-UPFRONT-Newcreateloan1.xlsx|Edit Repayment Schedule|
 Then I verified the following Tabs details successfully 
	|2564-MS-EI-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-PATTERN-VAR-INST-UPFRONT-Newcreateloan1.xlsx|Summary|Repayment Schedule|
 Then I make repayment and verified the following tabs
    |2564-MS-EI-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-PATTERN-VAR-INST-UPFRONT-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
 And I disburse loan from "NewLoanInput" sheet
    |2564-MS-EI-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-PATTERN-VAR-INST-UPFRONT-Newcreateloan2.xlsx|
 Then I verified the following Tabs details successfully 
	|2564-MS-EI-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-PATTERN-VAR-INST-UPFRONT-Newcreateloan2.xlsx|Summary|Repayment Schedule|Transactions|
 Then I navigate to scheduler job & execute "Add Upfront Accrual Transactions"
 Then I make repayment and read the transaction Id
	|2564-MS-EI-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-PATTERN-VAR-INST-UPFRONT-Makerepayment2.xlsx|Input|Transactions|
# And I Navigate to Accounting web page
# And I search with transaction id & verified the accounting entries
#	|2564-MS-EI-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-PATTERN-VAR-INST-UPFRONT-Makerepayment2.xlsx|Acc_Disbursement|Acc_Repayment|Acc_Disbursement1|Acc_Repayment1|Acc_Upfront|

@RunnerClass4
	Scenario: 2565-MS-EPP-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-DATE-VAR-INST-NONE  
 Given I setup the product loan "Setup"
	| Productloannavigation.xlsx |
 Then I entered the values into product from "ProductLoanInput" Sheet
	|2565-MS-EPP-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-DATE-VAR-INST-NONE-Loanproduct.xlsx|
 Given I setup the clients 
 Then I entered the values into client from "Input" sheet
	|Createclient.xlsx|
 Then I should see client created successfully from "Output" sheet
	|Createclient.xlsx|
 When I set up the new create loan from "NewLoanInput" sheet
	| 2565-MS-EPP-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-DATE-VAR-INST-NONE-Newcreateloan1.xlsx|
 Then I "Edit Date " In Edit Repayment Schedule page
    |2565-MS-EPP-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-DATE-VAR-INST-NONE-Newcreateloan1.xlsx|Edit Repayment Schedule|
 Then I verified the "Summary" details successfully 
	|2565-MS-EPP-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-DATE-VAR-INST-NONE-Newcreateloan1.xlsx|
 And I verified the "Repayment Schedule" details successfully 
	|2565-MS-EPP-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-DATE-VAR-INST-NONE-Newcreateloan1.xlsx|
 And I verified the "Transactions" details successfully	
    |2565-MS-EPP-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-DATE-VAR-INST-NONE-Newcreateloan1.xlsx|
 Then I make repayment and verified the following tabs
    |2565-MS-EPP-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-DATE-VAR-INST-NONE-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
 And I disburse loan from "NewLoanInput" sheet
    |2565-MS-EPP-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-DATE-VAR-INST-NONE-Newcreateloan2.xlsx|
 Then I verified the "Summary" details successfully 
	|2565-MS-EPP-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-DATE-VAR-INST-NONE-Newcreateloan2.xlsx|
 And I verified the "Repayment Schedule" details successfully 
	|2565-MS-EPP-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-DATE-VAR-INST-NONE-Newcreateloan2.xlsx| 			
 And I verified the "Transactions" details successfully	
	|2565-MS-EPP-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-DATE-VAR-INST-NONE-Newcreateloan2.xlsx|

@RunnerClass4
	Scenario: 2566-MS-EPP-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-AMT-VAR-INST-NONE  
 Given I setup the clients 
 Then I entered the values into client from "Input" sheet
	|Createclient.xlsx|
 Then I should see client created successfully from "Output" sheet
	|Createclient.xlsx|
 When I set up the new create loan from "NewLoanInput" sheet
	| 2566-MS-EPP-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-AMT-VAR-INST-NONE-Newcreateloan1.xlsx|
 Then I "Edit Date " In Edit Repayment Schedule page
    |2566-MS-EPP-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-AMT-VAR-INST-NONE-Newcreateloan1.xlsx|Edit Repayment Schedule|
 Then I verified the "Summary" details successfully 
	|2566-MS-EPP-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-AMT-VAR-INST-NONE-Newcreateloan1.xlsx|
 And I verified the "Repayment Schedule" details successfully 
	|2566-MS-EPP-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-AMT-VAR-INST-NONE-Newcreateloan1.xlsx|
 And I verified the "Transactions" details successfully	
    |2566-MS-EPP-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-AMT-VAR-INST-NONE-Newcreateloan1.xlsx|
 Then I make repayment and verified the following tabs
    |2566-MS-EPP-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-AMT-VAR-INST-NONE-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
 And I disburse loan from "NewLoanInput" sheet
    |2566-MS-EPP-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-AMT-VAR-INST-NONE-Newcreateloan2.xlsx|
 Then I verified the "Summary" details successfully 
	|2566-MS-EPP-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-AMT-VAR-INST-NONE-Newcreateloan2.xlsx|
 And I verified the "Repayment Schedule" details successfully 
	|2566-MS-EPP-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-AMT-VAR-INST-NONE-Newcreateloan2.xlsx| 			
 And I verified the "Transactions" details successfully	
	|2566-MS-EPP-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-AMT-VAR-INST-NONE-Newcreateloan2.xlsx|
	
@RunnerClass4
	Scenario: 2567-MS-EPP-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-DELETE-VAR-INST-NONE  
 Given I setup the clients 
 Then I entered the values into client from "Input" sheet
	|Createclient.xlsx|
 Then I should see client created successfully from "Output" sheet
	|Createclient.xlsx|
 When I set up the new create loan from "NewLoanInput" sheet
	| 2567-MS-EPP-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-DELETE-VAR-INST-NONE-Newcreateloan1.xlsx|
 Then I "Edit Date " In Edit Repayment Schedule page
    |2567-MS-EPP-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-DELETE-VAR-INST-NONE-Newcreateloan1.xlsx|Edit Repayment Schedule|
 Then I verified the "Summary" details successfully 
	|2567-MS-EPP-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-DELETE-VAR-INST-NONE-Newcreateloan1.xlsx|
 And I verified the "Repayment Schedule" details successfully 
	|2567-MS-EPP-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-DELETE-VAR-INST-NONE-Newcreateloan1.xlsx|
 And I verified the "Transactions" details successfully	
    |2567-MS-EPP-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-DELETE-VAR-INST-NONE-Newcreateloan1.xlsx|
 Then I make repayment and verified the following tabs
    |2567-MS-EPP-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-DELETE-VAR-INST-NONE-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
 And I disburse loan from "NewLoanInput" sheet
    |2567-MS-EPP-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-DELETE-VAR-INST-NONE-Newcreateloan2.xlsx|
 Then I verified the "Summary" details successfully 
	|2567-MS-EPP-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-DELETE-VAR-INST-NONE-Newcreateloan2.xlsx|
 And I verified the "Repayment Schedule" details successfully 
	|2567-MS-EPP-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-DELETE-VAR-INST-NONE-Newcreateloan2.xlsx| 			
 And I verified the "Transactions" details successfully	
	|2567-MS-EPP-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-DELETE-VAR-INST-NONE-Newcreateloan2.xlsx|

@RunnerClass4
	Scenario: 2568-MS-EPP-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-ADD-VAR-INST-NONE  
 Given I setup the clients 
 Then I entered the values into client from "Input" sheet
	|Createclient.xlsx|
 Then I should see client created successfully from "Output" sheet
	|Createclient.xlsx|
 When I set up the new create loan from "NewLoanInput" sheet
	| 2568-MS-EPP-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-ADD-VAR-INST-NONE-Newcreateloan1.xlsx|
 Then I "Edit Date " In Edit Repayment Schedule page
    |2568-MS-EPP-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-ADD-VAR-INST-NONE-Newcreateloan1.xlsx|Edit Repayment Schedule|
 Then I verified the "Summary" details successfully 
	|2568-MS-EPP-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-ADD-VAR-INST-NONE-Newcreateloan1.xlsx|
 And I verified the "Repayment Schedule" details successfully 
	|2568-MS-EPP-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-ADD-VAR-INST-NONE-Newcreateloan1.xlsx|
 And I verified the "Transactions" details successfully	
    |2568-MS-EPP-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-ADD-VAR-INST-NONE-Newcreateloan1.xlsx|
 Then I make repayment and verified the following tabs
    |2568-MS-EPP-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-ADD-VAR-INST-NONE-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
 And I disburse loan from "NewLoanInput" sheet
    |2568-MS-EPP-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-ADD-VAR-INST-NONE-Newcreateloan2.xlsx|
 Then I verified the "Summary" details successfully 
	|2568-MS-EPP-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-ADD-VAR-INST-NONE-Newcreateloan2.xlsx|
 And I verified the "Repayment Schedule" details successfully 
	|2568-MS-EPP-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-ADD-VAR-INST-NONE-Newcreateloan2.xlsx| 			
 And I verified the "Transactions" details successfully	
	|2568-MS-EPP-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-ADD-VAR-INST-NONE-Newcreateloan2.xlsx|
	
@RunnerClass4
	Scenario: 2569-MS-EPP-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-PATTERN-VAR-INST-NONE  
 Given I setup the clients 
 Then I entered the values into client from "Input" sheet
	|Createclient.xlsx|
 Then I should see client created successfully from "Output" sheet
	|Createclient.xlsx|
 When I set up the new create loan from "NewLoanInput" sheet
	| 2569-MS-EPP-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-PATTERN-VAR-INST-NONE-Newcreateloan1.xlsx|
 Then I "Edit Date " In Edit Repayment Schedule page
    |2569-MS-EPP-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-PATTERN-VAR-INST-NONE-Newcreateloan1.xlsx|Edit Repayment Schedule|
 Then I verified the "Summary" details successfully 
	|2569-MS-EPP-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-PATTERN-VAR-INST-NONE-Newcreateloan1.xlsx|
 And I verified the "Repayment Schedule" details successfully 
	|2569-MS-EPP-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-PATTERN-VAR-INST-NONE-Newcreateloan1.xlsx|
 And I verified the "Transactions" details successfully	
    |2569-MS-EPP-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-PATTERN-VAR-INST-NONE-Newcreateloan1.xlsx|
 Then I make repayment and verified the following tabs
    |2569-MS-EPP-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-PATTERN-VAR-INST-NONE-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
 And I disburse loan from "NewLoanInput" sheet
    |2569-MS-EPP-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-PATTERN-VAR-INST-NONE-Newcreateloan2.xlsx|
 Then I verified the "Summary" details successfully 
	|2569-MS-EPP-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-PATTERN-VAR-INST-NONE-Newcreateloan2.xlsx|
 And I verified the "Repayment Schedule" details successfully 
	|2569-MS-EPP-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-PATTERN-VAR-INST-NONE-Newcreateloan2.xlsx| 			
 And I verified the "Transactions" details successfully	
	|2569-MS-EPP-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-PATTERN-VAR-INST-NONE-Newcreateloan2.xlsx|

@RunnerClass4
	Scenario: 2570-MS-EPP-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-DATE-VAR-INST-CASH  
 Given I setup the product loan "Setup"
	| Productloannavigation.xlsx |
 Then I entered the values into product from "ProductLoanInput" Sheet
	|2570-MS-EPP-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-DATE-VAR-INST-CASH-Loanproduct.xlsx|
 Given I setup the clients 
 Then I entered the values into client from "Input" sheet
	|Createclient.xlsx|
 Then I should see client created successfully from "Output" sheet
	|Createclient.xlsx|
 When I set up the new create loan from "NewLoanInput" sheet
	| 2570-MS-EPP-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-DATE-VAR-INST-CASH-Newcreateloan1.xlsx|
 Then I "Edit Date " In Edit Repayment Schedule page
    |2570-MS-EPP-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-DATE-VAR-INST-CASH-Newcreateloan1.xlsx|Edit Repayment Schedule|
 Then I verified the following Tabs details successfully 
	|2570-MS-EPP-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-DATE-VAR-INST-CASH-Newcreateloan1.xlsx|Summary|Repayment Schedule|Transactions|
 Then I make repayment and verified the following tabs
    |2570-MS-EPP-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-DATE-VAR-INST-CASH-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
 And I disburse loan from "NewLoanInput" sheet
    |2570-MS-EPP-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-DATE-VAR-INST-CASH-Newcreateloan2.xlsx|
 Then I verified the following Tabs details successfully 
	|2570-MS-EPP-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-DATE-VAR-INST-CASH-Newcreateloan2.xlsx|Summary|Repayment Schedule|Transactions|
 Then I make repayment and read the transaction Id
	|2570-MS-EPP-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-DATE-VAR-INST-CASH-Makerepayment2.xlsx|Input|Transactions|
 And I Navigate to Accounting web page
 And I search with transaction id & verified the accounting entries
	|2570-MS-EPP-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-DATE-VAR-INST-CASH-Makerepayment2.xlsx|Acc_Disbursement|Acc_Repayment|Acc_Disbursement1|Acc_Repayment1|
 	
@RunnerClass4
	Scenario: 2571-MS-EPP-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-AMT-VAR-INST-CASH  
 Given I setup the clients 
 Then I entered the values into client from "Input" sheet
	|Createclient.xlsx|
 Then I should see client created successfully from "Output" sheet
	|Createclient.xlsx|
 When I set up the new create loan from "NewLoanInput" sheet
	| 2571-MS-EPP-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-AMT-VAR-INST-CASH-Newcreateloan1.xlsx|
 Then I "Edit Date " In Edit Repayment Schedule page
    |2571-MS-EPP-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-AMT-VAR-INST-CASH-Newcreateloan1.xlsx|Edit Repayment Schedule|
 Then I verified the following Tabs details successfully 
	|2571-MS-EPP-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-AMT-VAR-INST-CASH-Newcreateloan1.xlsx|Summary|Repayment Schedule|Transactions|
 Then I make repayment and verified the following tabs
    |2571-MS-EPP-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-AMT-VAR-INST-CASH-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
 And I disburse loan from "NewLoanInput" sheet
    |2571-MS-EPP-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-AMT-VAR-INST-CASH-Newcreateloan2.xlsx|
 Then I verified the following Tabs details successfully 
	|2571-MS-EPP-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-AMT-VAR-INST-CASH-Newcreateloan2.xlsx|Summary|Repayment Schedule|Transactions|
 Then I make repayment and read the transaction Id
	|2571-MS-EPP-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-AMT-VAR-INST-CASH-Makerepayment2.xlsx|Input|Transactions|
 And I Navigate to Accounting web page
 And I search with transaction id & verified the accounting entries
	|2571-MS-EPP-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-AMT-VAR-INST-CASH-Makerepayment2.xlsx|Acc_Disbursement|Acc_Repayment|Acc_Disbursement1|Acc_Repayment1|

@RunnerClass4
	Scenario: 2572-MS-EPP-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-DELETE-VAR-INST-CASH  
 Given I setup the clients 
 Then I entered the values into client from "Input" sheet
	|Createclient.xlsx|
 Then I should see client created successfully from "Output" sheet
	|Createclient.xlsx|
 When I set up the new create loan from "NewLoanInput" sheet
	| 2572-MS-EPP-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-DELETE-VAR-INST-CASH-Newcreateloan1.xlsx|
 Then I "Edit Date " In Edit Repayment Schedule page
    |2572-MS-EPP-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-DELETE-VAR-INST-CASH-Newcreateloan1.xlsx|Edit Repayment Schedule|
 Then I verified the following Tabs details successfully 
	|2572-MS-EPP-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-DELETE-VAR-INST-CASH-Newcreateloan1.xlsx|Summary|Repayment Schedule|Transactions|
 Then I make repayment and verified the following tabs
    |2572-MS-EPP-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-DELETE-VAR-INST-CASH-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
 And I disburse loan from "NewLoanInput" sheet
    |2572-MS-EPP-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-DELETE-VAR-INST-CASH-Newcreateloan2.xlsx|
 Then I verified the following Tabs details successfully 
	|2572-MS-EPP-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-DELETE-VAR-INST-CASH-Newcreateloan2.xlsx|Summary|Repayment Schedule|Transactions|
 Then I make repayment and read the transaction Id
	|2572-MS-EPP-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-DELETE-VAR-INST-CASH-Makerepayment2.xlsx|Input|Transactions|
 And I Navigate to Accounting web page
 And I search with transaction id & verified the accounting entries
	|2572-MS-EPP-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-DELETE-VAR-INST-CASH-Makerepayment2.xlsx|Acc_Disbursement|Acc_Repayment|Acc_Disbursement1|Acc_Repayment1|

@RunnerClass4
	Scenario: 2573-MS-EPP-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-ADD-VAR-INST-CASH  
 Given I setup the clients 
 Then I entered the values into client from "Input" sheet
	|Createclient.xlsx|
 Then I should see client created successfully from "Output" sheet
	|Createclient.xlsx|
 When I set up the new create loan from "NewLoanInput" sheet
	| 2573-MS-EPP-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-ADD-VAR-INST-CASH-Newcreateloan1.xlsx|
 Then I "Edit Date " In Edit Repayment Schedule page
    |2573-MS-EPP-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-ADD-VAR-INST-CASH-Newcreateloan1.xlsx|Edit Repayment Schedule|
 Then I verified the following Tabs details successfully 
	|2573-MS-EPP-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-ADD-VAR-INST-CASH-Newcreateloan1.xlsx|Summary|Repayment Schedule|Transactions|
 Then I make repayment and verified the following tabs
    |2573-MS-EPP-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-ADD-VAR-INST-CASH-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
 And I disburse loan from "NewLoanInput" sheet
    |2573-MS-EPP-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-ADD-VAR-INST-CASH-Newcreateloan2.xlsx|
 Then I verified the following Tabs details successfully 
	|2573-MS-EPP-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-ADD-VAR-INST-CASH-Newcreateloan2.xlsx|Summary|Repayment Schedule|Transactions|
 Then I make repayment and read the transaction Id
	|2573-MS-EPP-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-ADD-VAR-INST-CASH-Makerepayment2.xlsx|Input|Transactions|
 And I Navigate to Accounting web page
 And I search with transaction id & verified the accounting entries
	|2573-MS-EPP-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-ADD-VAR-INST-CASH-Makerepayment2.xlsx|Acc_Disbursement|Acc_Repayment|Acc_Disbursement1|Acc_Repayment1|
	
@RunnerClass4
	Scenario: 2574-MS-EPP-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-PATTERN-VAR-INST-CASH
 Given I setup the clients 
 Then I entered the values into client from "Input" sheet
	|Createclient.xlsx|
 Then I should see client created successfully from "Output" sheet
	|Createclient.xlsx|
 When I set up the new create loan from "NewLoanInput" sheet
	| 2574-MS-EPP-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-PATTERN-VAR-INST-CASH-Newcreateloan1.xlsx|
 Then I "Edit Date " In Edit Repayment Schedule page
    |2574-MS-EPP-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-PATTERN-VAR-INST-CASH-Newcreateloan1.xlsx|Edit Repayment Schedule|
 Then I verified the following Tabs details successfully 
	|2574-MS-EPP-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-PATTERN-VAR-INST-CASH-Newcreateloan1.xlsx|Summary|Repayment Schedule|Transactions|
 Then I make repayment and verified the following tabs
    |2574-MS-EPP-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-PATTERN-VAR-INST-CASH-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
 And I disburse loan from "NewLoanInput" sheet
    |2574-MS-EPP-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-PATTERN-VAR-INST-CASH-Newcreateloan2.xlsx|
 Then I verified the following Tabs details successfully 
	|2574-MS-EPP-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-PATTERN-VAR-INST-CASH-Newcreateloan2.xlsx|Summary|Repayment Schedule|Transactions|
 Then I make repayment and read the transaction Id
	|2574-MS-EPP-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-PATTERN-VAR-INST-CASH-Makerepayment2.xlsx|Input|Transactions|
 And I Navigate to Accounting web page
 And I search with transaction id & verified the accounting entries
	|2574-MS-EPP-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-PATTERN-VAR-INST-CASH-Makerepayment2.xlsx|Acc_Disbursement|Acc_Repayment|Acc_Disbursement1|Acc_Repayment1|
	

@RunnerClass4
	Scenario: 2575-MS-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-DATE-VAR-INST-PERIODIC  
 Given I setup the product loan "Setup"
	| Productloannavigation.xlsx |
 Then I entered the values into product from "ProductLoanInput" Sheet
	|2575-MS-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-DATE-VAR-INST-PERIODIC-Loanproduct.xlsx|
 Given I setup the clients 
 Then I entered the values into client from "Input" sheet
	|Createclient.xlsx|
 Then I should see client created successfully from "Output" sheet
	|Createclient.xlsx|
 When I set up the new create loan from "NewLoanInput" sheet
	| 2575-MS-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-DATE-VAR-INST-PERIODIC-Newcreateloan1.xlsx|
 Then I "Edit Date " In Edit Repayment Schedule page
    |2575-MS-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-DATE-VAR-INST-PERIODIC-Newcreateloan1.xlsx|Edit Repayment Schedule|
 Then I verified the following Tabs details successfully 
	|2575-MS-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-DATE-VAR-INST-PERIODIC-Newcreateloan1.xlsx|Summary|Repayment Schedule|
 Then I make repayment and verified the following tabs
    |2575-MS-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-DATE-VAR-INST-PERIODIC-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
 And I disburse loan from "NewLoanInput" sheet
    |2575-MS-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-DATE-VAR-INST-PERIODIC-Newcreateloan2.xlsx|
 Then I verified the following Tabs details successfully 
	|2575-MS-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-DATE-VAR-INST-PERIODIC-Newcreateloan2.xlsx|Summary|Repayment Schedule|Transactions|
 Then I navigate to scheduler job & execute "Periodic Accrual Transactions"
 Then I make repayment and read the transaction Id
	|2575-MS-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-DATE-VAR-INST-PERIODIC-Makerepayment2.xlsx|Input|Transactions|
 And I Navigate to Accounting web page
 And I search with transaction id & verified the accounting entries
	|2575-MS-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-DATE-VAR-INST-PERIODIC-Makerepayment2.xlsx|Acc_Disbursement|Acc_Repayment|Acc_Disbursement1|Acc_Repayment1|Acc_Periodic|

@RunnerClass4
	Scenario: 2576-MS-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-AMT-VAR-INST-PERIODIC  
 Given I setup the clients 
 Then I entered the values into client from "Input" sheet
	|Createclient.xlsx|
 Then I should see client created successfully from "Output" sheet
	|Createclient.xlsx|
 When I set up the new create loan from "NewLoanInput" sheet
	| 2576-MS-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-AMT-VAR-INST-PERIODIC-Newcreateloan1.xlsx|
 Then I "Edit Date " In Edit Repayment Schedule page
    |2576-MS-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-AMT-VAR-INST-PERIODIC-Newcreateloan1.xlsx|Edit Repayment Schedule|
 Then I verified the following Tabs details successfully 
	|2576-MS-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-AMT-VAR-INST-PERIODIC-Newcreateloan1.xlsx|Summary|Repayment Schedule|
 Then I make repayment and verified the following tabs
    |2576-MS-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-AMT-VAR-INST-PERIODIC-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
 And I disburse loan from "NewLoanInput" sheet
    |2576-MS-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-AMT-VAR-INST-PERIODIC-Newcreateloan2.xlsx|
 Then I verified the following Tabs details successfully 
	|2576-MS-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-AMT-VAR-INST-PERIODIC-Newcreateloan2.xlsx|Summary|Repayment Schedule|Transactions|
 Then I navigate to scheduler job & execute "Periodic Accrual Transactions"
 Then I make repayment and read the transaction Id
	|2576-MS-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-AMT-VAR-INST-PERIODIC-Makerepayment2.xlsx|Input|Transactions|
 And I Navigate to Accounting web page
 And I search with transaction id & verified the accounting entries
	|2576-MS-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-AMT-VAR-INST-PERIODIC-Makerepayment2.xlsx|Acc_Disbursement|Acc_Repayment|Acc_Disbursement1|Acc_Repayment1|Acc_Periodic|

@RunnerClass4
	Scenario: 2577-MS-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-DELETE-VAR-INST-PERIODIC  
 Given I setup the clients 
 Then I entered the values into client from "Input" sheet
	|Createclient.xlsx|
 Then I should see client created successfully from "Output" sheet
	|Createclient.xlsx|
 When I set up the new create loan from "NewLoanInput" sheet
	| 2577-MS-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-DELETE-VAR-INST-PERIODIC-Newcreateloan1.xlsx|
 Then I "Edit Date " In Edit Repayment Schedule page
    |2577-MS-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-DELETE-VAR-INST-PERIODIC-Newcreateloan1.xlsx|Edit Repayment Schedule|
 Then I verified the following Tabs details successfully 
	|2577-MS-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-DELETE-VAR-INST-PERIODIC-Newcreateloan1.xlsx|Summary|Repayment Schedule|
 Then I make repayment and verified the following tabs
    |2577-MS-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-DELETE-VAR-INST-PERIODIC-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
 And I disburse loan from "NewLoanInput" sheet
    |2577-MS-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-DELETE-VAR-INST-PERIODIC-Newcreateloan2.xlsx|
 Then I verified the following Tabs details successfully 
	|2577-MS-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-DELETE-VAR-INST-PERIODIC-Newcreateloan2.xlsx|Summary|Repayment Schedule|Transactions|
 Then I navigate to scheduler job & execute "Periodic Accrual Transactions"
 Then I make repayment and read the transaction Id
	|2577-MS-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-DELETE-VAR-INST-PERIODIC-Makerepayment2.xlsx|Input|Transactions|
 And I Navigate to Accounting web page
 And I search with transaction id & verified the accounting entries
	|2577-MS-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-DELETE-VAR-INST-PERIODIC-Makerepayment2.xlsx|Acc_Disbursement|Acc_Repayment|Acc_Disbursement1|Acc_Repayment1|Acc_Periodic|

@RunnerClass4
	Scenario: 2578-MS-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-ADD-VAR-INST-PERIODIC  
 Given I setup the clients 
 Then I entered the values into client from "Input" sheet
	|Createclient.xlsx|
 Then I should see client created successfully from "Output" sheet
	|Createclient.xlsx|
 When I set up the new create loan from "NewLoanInput" sheet
	| 2578-MS-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-ADD-VAR-INST-PERIODIC-Newcreateloan1.xlsx|
 Then I "Edit Date " In Edit Repayment Schedule page
    |2578-MS-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-ADD-VAR-INST-PERIODIC-Newcreateloan1.xlsx|Edit Repayment Schedule|
 Then I verified the following Tabs details successfully 
	|2578-MS-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-ADD-VAR-INST-PERIODIC-Newcreateloan1.xlsx|Summary|Repayment Schedule|
 Then I make repayment and verified the following tabs
    |2578-MS-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-ADD-VAR-INST-PERIODIC-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
 And I disburse loan from "NewLoanInput" sheet
    |2578-MS-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-ADD-VAR-INST-PERIODIC-Newcreateloan2.xlsx|
 Then I verified the following Tabs details successfully 
	|2578-MS-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-ADD-VAR-INST-PERIODIC-Newcreateloan2.xlsx|Summary|Repayment Schedule|Transactions|
 Then I navigate to scheduler job & execute "Periodic Accrual Transactions"
 Then I make repayment and read the transaction Id
	|2578-MS-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-ADD-VAR-INST-PERIODIC-Makerepayment2.xlsx|Input|Transactions|
 And I Navigate to Accounting web page
 And I search with transaction id & verified the accounting entries
	|2578-MS-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-ADD-VAR-INST-PERIODIC-Makerepayment2.xlsx|Acc_Disbursement|Acc_Repayment|Acc_Disbursement1|Acc_Repayment1|Acc_Periodic|

@RunnerClass4
	Scenario: 2579-MS-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-PATTERN-VAR-INST-PERIODIC  
 Given I setup the clients 
 Then I entered the values into client from "Input" sheet
	|Createclient.xlsx|
 Then I should see client created successfully from "Output" sheet
	|Createclient.xlsx|
 When I set up the new create loan from "NewLoanInput" sheet
	| 2579-MS-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-PATTERN-VAR-INST-PERIODIC-Newcreateloan1.xlsx|
 Then I "Edit Date " In Edit Repayment Schedule page
    |2579-MS-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-PATTERN-VAR-INST-PERIODIC-Newcreateloan1.xlsx|Edit Repayment Schedule|
 Then I verified the following Tabs details successfully 
	|2579-MS-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-PATTERN-VAR-INST-PERIODIC-Newcreateloan1.xlsx|Summary|Repayment Schedule|
 Then I make repayment and verified the following tabs
    |2579-MS-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-PATTERN-VAR-INST-PERIODIC-Makerepayment1.xlsx|Input|
 And I disburse loan from "NewLoanInput" sheet
    |2579-MS-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-PATTERN-VAR-INST-PERIODIC-Newcreateloan2.xlsx|
 Then I verified the following Tabs details successfully 
	|2579-MS-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-PATTERN-VAR-INST-PERIODIC-Newcreateloan2.xlsx|Summary|Repayment Schedule|Transactions|
 Then I navigate to scheduler job & execute "Periodic Accrual Transactions"
 Then I make repayment and read the transaction Id
	|2579-MS-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-PATTERN-VAR-INST-PERIODIC-Makerepayment2.xlsx|Input|Transactions|
 And I Navigate to Accounting web page
 And I search with transaction id & verified the accounting entries
	|2579-MS-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-PATTERN-VAR-INST-PERIODIC-Makerepayment2.xlsx|Acc_Disbursement|Acc_Repayment|Acc_Disbursement1|Acc_Repayment1|Acc_Periodic|
	
@RunnerClass4
	Scenario: 2580-MS-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-DATE-VAR-INST-UPFRONT  
 Given I setup the product loan "Setup"
	| Productloannavigation.xlsx |
 Then I entered the values into product from "ProductLoanInput" Sheet
	|2580-MS-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-DATE-VAR-INST-UPFRONT-Loanproduct.xlsx|
 Given I setup the clients 
 Then I entered the values into client from "Input" sheet
	|Createclient.xlsx|
 Then I should see client created successfully from "Output" sheet
	|Createclient.xlsx|
 When I set up the new create loan from "NewLoanInput" sheet
	| 2580-MS-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-DATE-VAR-INST-UPFRONT-Newcreateloan1.xlsx|
 Then I "Edit Date " In Edit Repayment Schedule page
    |2580-MS-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-DATE-VAR-INST-UPFRONT-Newcreateloan1.xlsx|Edit Repayment Schedule|
 Then I verified the following Tabs details successfully 
	|2580-MS-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-DATE-VAR-INST-UPFRONT-Newcreateloan1.xlsx|Summary|Repayment Schedule|
 Then I make repayment and verified the following tabs
    |2580-MS-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-DATE-VAR-INST-UPFRONT-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
 And I disburse loan from "NewLoanInput" sheet
    |2580-MS-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-DATE-VAR-INST-UPFRONT-Newcreateloan2.xlsx|
 Then I verified the following Tabs details successfully 
	|2580-MS-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-DATE-VAR-INST-UPFRONT-Newcreateloan2.xlsx|Summary|Repayment Schedule|Transactions|
 Then I navigate to scheduler job & execute "Add Upfront Accrual Transactions"
 Then I make repayment and read the transaction Id
	|2580-MS-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-DATE-VAR-INST-UPFRONT-Makerepayment2.xlsx|Input|Transactions|
 And I Navigate to Accounting web page
 And I search with transaction id & verified the accounting entries
	|2580-MS-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-DATE-VAR-INST-UPFRONT-Makerepayment2.xlsx|Acc_Disbursement|Acc_Repayment|Acc_Disbursement1|Acc_Repayment1|Acc_Upfront|
	
@RunnerClass4
	Scenario: 2581-MS-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-AMT-VAR-INST-UPFRONT  
 Given I setup the clients 
 Then I entered the values into client from "Input" sheet
	|Createclient.xlsx|
 Then I should see client created successfully from "Output" sheet
	|Createclient.xlsx|
 When I set up the new create loan from "NewLoanInput" sheet
	| 2581-MS-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-AMT-VAR-INST-UPFRONT-Newcreateloan1.xlsx|
 Then I "Edit Date " In Edit Repayment Schedule page
    |2581-MS-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-AMT-VAR-INST-UPFRONT-Newcreateloan1.xlsx|Edit Repayment Schedule|
 Then I verified the following Tabs details successfully 
	|2581-MS-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-AMT-VAR-INST-UPFRONT-Newcreateloan1.xlsx|Summary|Repayment Schedule|
 Then I make repayment and verified the following tabs
    |2581-MS-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-AMT-VAR-INST-UPFRONT-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
 And I disburse loan from "NewLoanInput" sheet
    |2581-MS-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-AMT-VAR-INST-UPFRONT-Newcreateloan2.xlsx|
 Then I verified the following Tabs details successfully 
	|2581-MS-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-AMT-VAR-INST-UPFRONT-Newcreateloan2.xlsx|Summary|Repayment Schedule|Transactions|
 Then I navigate to scheduler job & execute "Add Upfront Accrual Transactions"
 Then I make repayment and read the transaction Id
	|2581-MS-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-AMT-VAR-INST-UPFRONT-Makerepayment2.xlsx|Input|Transactions|
 And I Navigate to Accounting web page
 And I search with transaction id & verified the accounting entries
	|2581-MS-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-AMT-VAR-INST-UPFRONT-Makerepayment2.xlsx|Acc_Disbursement|Acc_Repayment|Acc_Disbursement1|Acc_Repayment1|Acc_Upfront|
	
@RunnerClass4
	Scenario: 2582-MS-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-DELETE-VAR-INST-UPFRONT  
 Given I setup the clients 
 Then I entered the values into client from "Input" sheet
	|Createclient.xlsx|
 Then I should see client created successfully from "Output" sheet
	|Createclient.xlsx|
 When I set up the new create loan from "NewLoanInput" sheet
	| 2582-MS-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-DELETE-VAR-INST-UPFRONT-Newcreateloan1.xlsx|
 Then I "Edit Date " In Edit Repayment Schedule page
    |2582-MS-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-DELETE-VAR-INST-UPFRONT-Newcreateloan1.xlsx|Edit Repayment Schedule|
 Then I verified the following Tabs details successfully 
	|2582-MS-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-DELETE-VAR-INST-UPFRONT-Newcreateloan1.xlsx|Summary|Repayment Schedule|
 Then I make repayment and verified the following tabs
    |2582-MS-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-DELETE-VAR-INST-UPFRONT-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
 And I disburse loan from "NewLoanInput" sheet
    |2582-MS-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-DELETE-VAR-INST-UPFRONT-Newcreateloan2.xlsx|
 Then I verified the following Tabs details successfully 
	|2582-MS-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-DELETE-VAR-INST-UPFRONT-Newcreateloan2.xlsx|Summary|Repayment Schedule|Transactions|
 Then I navigate to scheduler job & execute "Add Upfront Accrual Transactions"
 Then I make repayment and read the transaction Id
	|2582-MS-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-DELETE-VAR-INST-UPFRONT-Makerepayment2.xlsx|Input|Transactions|
 And I Navigate to Accounting web page
 And I search with transaction id & verified the accounting entries
	|2582-MS-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-DELETE-VAR-INST-UPFRONT-Makerepayment2.xlsx|Acc_Disbursement|Acc_Repayment|Acc_Disbursement1|Acc_Repayment1|Acc_Upfront|
	
@RunnerClass4
	Scenario: 2583-MS-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-ADD-VAR-INST-UPFRONT  
 Given I setup the clients 
 Then I entered the values into client from "Input" sheet
	|Createclient.xlsx|
 Then I should see client created successfully from "Output" sheet
	|Createclient.xlsx|
 When I set up the new create loan from "NewLoanInput" sheet
	| 2583-MS-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-ADD-VAR-INST-UPFRONT-Newcreateloan1.xlsx|
 Then I "Edit Date " In Edit Repayment Schedule page
    |2583-MS-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-ADD-VAR-INST-UPFRONT-Newcreateloan1.xlsx|Edit Repayment Schedule|
 Then I verified the following Tabs details successfully 
	|2583-MS-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-ADD-VAR-INST-UPFRONT-Newcreateloan1.xlsx|Summary|Repayment Schedule|
 Then I make repayment and verified the following tabs
    |2583-MS-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-ADD-VAR-INST-UPFRONT-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
 And I disburse loan from "NewLoanInput" sheet
    |2583-MS-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-ADD-VAR-INST-UPFRONT-Newcreateloan2.xlsx|
 Then I verified the following Tabs details successfully 
	|2583-MS-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-ADD-VAR-INST-UPFRONT-Newcreateloan2.xlsx|Summary|Repayment Schedule|Transactions|
 Then I navigate to scheduler job & execute "Add Upfront Accrual Transactions"
 Then I make repayment and read the transaction Id
	|2583-MS-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-ADD-VAR-INST-UPFRONT-Makerepayment2.xlsx|Input|Transactions|
 And I Navigate to Accounting web page
 And I search with transaction id & verified the accounting entries
	|2583-MS-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-ADD-VAR-INST-UPFRONT-Makerepayment2.xlsx|Acc_Disbursement|Acc_Repayment|Acc_Disbursement1|Acc_Repayment1|Acc_Upfront|
	
@RunnerClass4
	Scenario: 2584-MS-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-PATTERN-VAR-INST-UPFRONT  
 Given I setup the clients 
 Then I entered the values into client from "Input" sheet
	|Createclient.xlsx|
 Then I should see client created successfully from "Output" sheet
	|Createclient.xlsx|
 When I set up the new create loan from "NewLoanInput" sheet
	| 2584-MS-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-PATTERN-VAR-INST-UPFRONT-Newcreateloan1.xlsx|
 Then I "Edit Date " In Edit Repayment Schedule page
    |2584-MS-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-PATTERN-VAR-INST-UPFRONT-Newcreateloan1.xlsx|Edit Repayment Schedule|
 Then I verified the following Tabs details successfully 
	|2584-MS-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-PATTERN-VAR-INST-UPFRONT-Newcreateloan1.xlsx|Summary|Repayment Schedule|
 Then I make repayment and verified the following tabs
    |2584-MS-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-PATTERN-VAR-INST-UPFRONT-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
 And I disburse loan from "NewLoanInput" sheet
    |2584-MS-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-PATTERN-VAR-INST-UPFRONT-Newcreateloan2.xlsx|
 Then I verified the following Tabs details successfully 
	|2584-MS-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-PATTERN-VAR-INST-UPFRONT-Newcreateloan2.xlsx|Summary|Repayment Schedule|Transactions|
 Then I navigate to scheduler job & execute "Add Upfront Accrual Transactions"
 Then I make repayment and read the transaction Id
	|2584-MS-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-PATTERN-VAR-INST-UPFRONT-Makerepayment2.xlsx|Input|Transactions|
 And I Navigate to Accounting web page
 And I search with transaction id & verified the accounting entries
	|2584-MS-EPP-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-2-PATTERN-VAR-INST-UPFRONT-Makerepayment2.xlsx|Acc_Disbursement|Acc_Repayment|Acc_Disbursement1|Acc_Repayment1|Acc_Upfront|

@RunnerClass4
	Scenario: 2585-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-DATE-VAR-INST-LATE  
 Given I setup the product loan "Setup"
	| Productloannavigation.xlsx |
 Then I entered the values into product from "ProductLoanInput" Sheet
	|2585-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-DATE-VAR-INST-MIS-Loanproduct.xlsx|
 Given I setup the clients 
 Then I entered the values into client from "Input" sheet
	|Createclient.xlsx|
 Then I should see client created successfully from "Output" sheet
	|Createclient.xlsx|
 When I set up the new create loan from "NewLoanInput" sheet
	| 2585-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-DATE-VAR-INST-LATE-Newcreateloan1.xlsx|
 Then I "Edit Date " In Edit Repayment Schedule page
    |2585-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-DATE-VAR-INST-LATE-Newcreateloan1.xlsx|Edit Repayment Schedule|
 Then I verified the following Tabs details successfully 
	|2585-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-DATE-VAR-INST-LATE-Newcreateloan1.xlsx|Summary|Repayment Schedule|
 Then I make repayment and verified the following tabs
    |2585-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-DATE-VAR-INST-LATE-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
 And I disburse loan from "NewLoanInput" sheet
    |2585-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-DATE-VAR-INST-LATE-Newcreateloan2.xlsx|
 Then I navigate to scheduler job & execute "Periodic Accrual Transactions"
 Then I verified the following Tabs details successfully 
	|2585-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-DATE-VAR-INST-LATE-Newcreateloan2.xlsx|Summary|Repayment Schedule|Transactions|
 
@RunnerClass4
	Scenario: 2586-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-DATE-VAR-INST-EARLY  
 Given I setup the clients 
 Then I entered the values into client from "Input" sheet
	|Createclient.xlsx|
 Then I should see client created successfully from "Output" sheet
	|Createclient.xlsx|
 When I set up the new create loan from "NewLoanInput" sheet
	| 2586-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-DATE-VAR-INST-EARLY-Newcreateloan1.xlsx|
 Then I "Edit Date " In Edit Repayment Schedule page
    |2586-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-DATE-VAR-INST-EARLY-Newcreateloan1.xlsx|Edit Repayment Schedule|
 Then I verified the following Tabs details successfully 
	|2586-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-DATE-VAR-INST-EARLY-Newcreateloan1.xlsx|Summary|Repayment Schedule|
 Then I make repayment and verified the following tabs
    |2586-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-DATE-VAR-INST-EARLY-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
 And I disburse loan from "NewLoanInput" sheet
    |2586-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-DATE-VAR-INST-EARLY-Newcreateloan2.xlsx|
 Then I navigate to scheduler job & execute "Periodic Accrual Transactions"
 Then I verified the following Tabs details successfully 
	|2586-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-DATE-VAR-INST-EARLY-Newcreateloan2.xlsx|Summary|Repayment Schedule|Transactions|
 
@RunnerClass4
	Scenario: 2587-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-DATE-VAR-INST-DISBURSE-FEE-FLAT  
 Given I setup the product loan "Setup"
	| Productloannavigation.xlsx |
 Then I entered the values into product from "ProductLoanInput" Sheet
	|2587-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-DATE-VAR-INST-DISBURSE-FEE-FLAT-Loanproduct.xlsx|	
 Given I setup the clients 
 Then I entered the values into client from "Input" sheet
	|Createclient.xlsx|
 Then I should see client created successfully from "Output" sheet
	|Createclient.xlsx|
 When I set up the new create loan from "NewLoanInput" sheet
	| 2587-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-DATE-VAR-INST-DISBURSE-FEE-FLAT-Newcreateloan1.xlsx|
 Then I "Edit Date " In Edit Repayment Schedule page
    |2587-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-DATE-VAR-INST-DISBURSE-FEE-FLAT-Newcreateloan1.xlsx|Edit Repayment Schedule|
 Then I verified the following Tabs details successfully 
	|2587-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-DATE-VAR-INST-DISBURSE-FEE-FLAT-Newcreateloan1.xlsx|Summary|Repayment Schedule|
 And I disburse loan from "NewLoanInput" sheet
    |2587-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-DATE-VAR-INST-DISBURSE-FEE-FLAT-Newcreateloan2.xlsx|
 Then I verified the following Tabs details successfully 
	|2587-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-DATE-VAR-INST-DISBURSE-FEE-FLAT-Newcreateloan2.xlsx|Summary|Repayment Schedule|Transactions|
 	
@RunnerClass4
	Scenario: 2588-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-DATE-VAR-INST-SPEDUEDATE-FEE-%APR-AMT  
 Given I setup the clients 
 Then I entered the values into client from "Input" sheet
	|Createclient.xlsx|
 Then I should see client created successfully from "Output" sheet
	|Createclient.xlsx|
 When I set up the new create loan from "NewLoanInput" sheet
	| 2588-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-DATE-VAR-INST-SPEDUEDATE-FEE-%APR-AMT-Newcreateloan1.xlsx|
 Then I "Edit Date " In Edit Repayment Schedule page
    |2588-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-DATE-VAR-INST-SPEDUEDATE-FEE-%APR-AMT-Newcreateloan1.xlsx|Edit Repayment Schedule|
 Then I verified the following Tabs details successfully 
	|2588-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-DATE-VAR-INST-SPEDUEDATE-FEE-%APR-AMT-Newcreateloan1.xlsx|Summary|Repayment Schedule|
 Then I make repayment and verified the following tabs
    |2588-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-DATE-VAR-INST-SPEDUEDATE-FEE-%APR-AMT-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
 And I disburse loan from "NewLoanInput" sheet
    |2588-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-DATE-VAR-INST-SPEDUEDATE-FEE-%APR-AMT-Newcreateloan2.xlsx|
 Then I navigate to scheduler job & execute "Periodic Accrual Transactions"
 Then I verified the following Tabs details successfully 
	|2588-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-DATE-VAR-INST-SPEDUEDATE-FEE-%APR-AMT-Newcreateloan2.xlsx|Summary|Repayment Schedule|Transactions|

@RunnerClass4
	Scenario: 2589-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-DATE-VAR-INST-FEE-%INT-MORE-AMT  
 Given I setup the product loan "Setup"
	| Productloannavigation.xlsx |
 Then I entered the values into product from "ProductLoanInput" Sheet
	|2589-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-DATE-VAR-INST-FEE-%INT-MORE-AMT-Loanproduct.xlsx|	
 Given I setup the clients 
 Then I entered the values into client from "Input" sheet
	|Createclient.xlsx|
 Then I should see client created successfully from "Output" sheet
	|Createclient.xlsx|
 When I set up the new create loan from "NewLoanInput" sheet
	| 2589-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-DATE-VAR-INST-FEE-%INT-MORE-AMT-Newcreateloan1.xlsx|
 Then I "Edit Date " In Edit Repayment Schedule page
    |2589-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-DATE-VAR-INST-FEE-%INT-MORE-AMT-Newcreateloan1.xlsx|Edit Repayment Schedule|
 Then I verified the following Tabs details successfully 
	|2589-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-DATE-VAR-INST-FEE-%INT-MORE-AMT-Newcreateloan1.xlsx|Summary|Repayment Schedule|
 Then I make repayment and verified the following tabs
    |2589-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-DATE-VAR-INST-FEE-%INT-MORE-AMT-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
 And I disburse loan from "NewLoanInput" sheet
    |2589-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-DATE-VAR-INST-FEE-%INT-MORE-AMT-Newcreateloan2.xlsx|
 Then I navigate to scheduler job & execute "Periodic Accrual Transactions"
 Then I verified the following Tabs details successfully 
	|2589-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-DATE-VAR-INST-FEE-%INT-MORE-AMT-Newcreateloan2.xlsx|Summary|Repayment Schedule|Transactions|

@RunnerClass4
	Scenario: 2590-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-DATE-VAR-INST-OVERDUE-FEE-%INT-LESS-AMT  
 Given I setup the product loan "Setup"
	| Productloannavigation.xlsx |
 Then I entered the values into product from "ProductLoanInput" Sheet
	|2590-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-DATE-VAR-INST-OVERDUE-FEE-%INT-LESS-AMT-Loanproduct.xlsx|	
 Given I setup the clients 
 Then I entered the values into client from "Input" sheet
	|Createclient.xlsx|
 Then I should see client created successfully from "Output" sheet
	|Createclient.xlsx|
 When I set up the new create loan from "NewLoanInput" sheet
	| 2590-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-DATE-VAR-INST-OVERDUE-FEE-%INT-LESS-AMT-Newcreateloan1.xlsx|
 Then I "Edit Date " In Edit Repayment Schedule page
    |2590-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-DATE-VAR-INST-OVERDUE-FEE-%INT-LESS-AMT-Newcreateloan1.xlsx|Edit Repayment Schedule|
 Then I navigate to scheduler job & execute "Apply penalty to overdue loans"
 Then I verified the following Tabs details successfully 
	|2590-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-DATE-VAR-INST-OVERDUE-FEE-%INT-LESS-AMT-Newcreateloan1.xlsx|Summary|Repayment Schedule|
 Then I make repayment and verified the following tabs
    |2590-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-DATE-VAR-INST-OVERDUE-FEE-%INT-LESS-AMT-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
 And I disburse loan from "NewLoanInput" sheet
    |2590-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-DATE-VAR-INST-OVERDUE-FEE-%INT-LESS-AMT-Newcreateloan2.xlsx|
 Then I navigate to scheduler job & execute "Periodic Accrual Transactions"
 Then I verified the following Tabs details successfully 
	|2590-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-DATE-VAR-INST-OVERDUE-FEE-%INT-LESS-AMT-Newcreateloan2.xlsx|Summary|Repayment Schedule|Transactions|
 	
@RunnerClass4
	Scenario: 2591-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-DATE-VAR-INST-OVERDUE-FEE-%INT-LESS-AMT-LATE  
 Given I setup the clients 
 Then I entered the values into client from "Input" sheet
	|Createclient.xlsx|
 Then I should see client created successfully from "Output" sheet
	|Createclient.xlsx|
 When I set up the new create loan from "NewLoanInput" sheet
	| 2591-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-DATE-VAR-INST-OVERDUE-FEE-%INT-LESS-AMT-LATE-Newcreateloan1.xlsx|
 Then I "Edit Date " In Edit Repayment Schedule page
    |2591-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-DATE-VAR-INST-OVERDUE-FEE-%INT-LESS-AMT-LATE-Newcreateloan1.xlsx|Edit Repayment Schedule|
 Then I make repayment and verified the following tabs
    |2591-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-DATE-VAR-INST-OVERDUE-FEE-%INT-LESS-AMT-LATE-Makerepayment1.xlsx|Input|
 Then I navigate to scheduler job & execute "Apply penalty to overdue loans"
 Then I verified the following Tabs details successfully 
	|2591-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-DATE-VAR-INST-OVERDUE-FEE-%INT-LESS-AMT-LATE-Makerepayment1.xlsx|Summary|Repayment Schedule|Transactions|
 And I disburse loan from "NewLoanInput" sheet
    |2591-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-DATE-VAR-INST-OVERDUE-FEE-%INT-LESS-AMT-LATE-Newcreateloan2.xlsx|
 Then I navigate to scheduler job & execute "Periodic Accrual Transactions"
 Then I verified the following Tabs details successfully 
	|2591-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-DATE-VAR-INST-OVERDUE-FEE-%INT-LESS-AMT-LATE-Newcreateloan2.xlsx|Summary|Repayment Schedule|Transactions|

@RunnerClass4
	Scenario: 2592-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-DATE-VAR-INST-OVERDUE-FEE-%INT-MORE-AMT-LATE  
 Given I setup the clients 
 Then I entered the values into client from "Input" sheet
	|Createclient.xlsx|
 Then I should see client created successfully from "Output" sheet
	|Createclient.xlsx|
 When I set up the new create loan from "NewLoanInput" sheet
	| 2592-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-DATE-VAR-INST-OVERDUE-FEE-%INT-MORE-AMT-LATE-Newcreateloan1.xlsx|
 Then I "Edit Date " In Edit Repayment Schedule page
    |2592-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-DATE-VAR-INST-OVERDUE-FEE-%INT-MORE-AMT-LATE-Newcreateloan1.xlsx|Edit Repayment Schedule|
 Then I make repayment and verified the following tabs
    |2592-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-DATE-VAR-INST-OVERDUE-FEE-%INT-MORE-AMT-LATE-Makerepayment1.xlsx|Input|
 Then I navigate to scheduler job & execute "Apply penalty to overdue loans"
 Then I verified the following Tabs details successfully 
	|2592-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-DATE-VAR-INST-OVERDUE-FEE-%INT-MORE-AMT-LATE-Makerepayment1.xlsx|Summary|Repayment Schedule|Transactions|
 And I disburse loan from "NewLoanInput" sheet
    |2592-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-DATE-VAR-INST-OVERDUE-FEE-%INT-MORE-AMT-LATE-Newcreateloan2.xlsx|
 Then I navigate to scheduler job & execute "Periodic Accrual Transactions"
 Then I verified the following Tabs details successfully 
	|2592-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-DATE-VAR-INST-OVERDUE-FEE-%INT-MORE-AMT-LATE-Newcreateloan2.xlsx|Summary|Repayment Schedule|Transactions|

@RunnerClass4
 Scenario: 2593-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-DATE-VAR-INST-OVERDUE-FEE-%INT-LESS-AMT-EARLY  
 
 Given I setup the clients 
 Then I entered the values into client from "Input" sheet
	|Createclient.xlsx|
 Then I should see client created successfully from "Output" sheet
	|Createclient.xlsx|
 When I set up the new create loan from "NewLoanInput" sheet
	| 2593-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-DATE-VAR-INST-OVERDUE-FEE-%INT-LESS-AMT-EARLY-Newcreateloan1.xlsx|
 Then I "Edit Date " In Edit Repayment Schedule page
    |2593-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-DATE-VAR-INST-OVERDUE-FEE-%INT-LESS-AMT-EARLY-Newcreateloan1.xlsx|Edit Repayment Schedule|
 Then I make repayment and verified the following tabs
    |2593-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-DATE-VAR-INST-OVERDUE-FEE-%INT-LESS-AMT-EARLY-Makerepayment1.xlsx|Input|
 Then I navigate to scheduler job & execute "Apply penalty to overdue loans"
 Then I verified the following Tabs details successfully 
	|2593-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-DATE-VAR-INST-OVERDUE-FEE-%INT-LESS-AMT-EARLY-Makerepayment1.xlsx|Summary|Repayment Schedule|Transactions|
 And I disburse loan from "NewLoanInput" sheet
    |2593-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-DATE-VAR-INST-OVERDUE-FEE-%INT-LESS-AMT-EARLY-Newcreateloan2.xlsx|
 Then I navigate to scheduler job & execute "Periodic Accrual Transactions"
 Then I verified the following Tabs details successfully 
	|2593-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-DATE-VAR-INST-OVERDUE-FEE-%INT-LESS-AMT-EARLY-Newcreateloan2.xlsx|Summary|Repayment Schedule|Transactions|
	
@RunnerClass4
 Scenario: 2594-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-DATE-VAR-INST-OVERDUE-FEE-%INT-MORE-AMT-EARLY  
 
 Given I setup the clients 
 Then I entered the values into client from "Input" sheet
	|Createclient.xlsx|
 Then I should see client created successfully from "Output" sheet
	|Createclient.xlsx|
 When I set up the new create loan from "NewLoanInput" sheet
	| 2594-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-DATE-VAR-INST-OVERDUE-FEE-%INT-MORE-AMT-EARLY-Newcreateloan1.xlsx|
 Then I "Edit Date " In Edit Repayment Schedule page
    |2594-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-DATE-VAR-INST-OVERDUE-FEE-%INT-MORE-AMT-EARLY-Newcreateloan1.xlsx|Edit Repayment Schedule|
 Then I make repayment and verified the following tabs
    |2594-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-DATE-VAR-INST-OVERDUE-FEE-%INT-MORE-AMT-EARLY-Makerepayment1.xlsx|Input|
 Then I navigate to scheduler job & execute "Apply penalty to overdue loans"
 Then I verified the following Tabs details successfully 
	|2594-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-DATE-VAR-INST-OVERDUE-FEE-%INT-MORE-AMT-EARLY-Makerepayment1.xlsx|Summary|Repayment Schedule|Transactions|
 And I disburse loan from "NewLoanInput" sheet
    |2594-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-DATE-VAR-INST-OVERDUE-FEE-%INT-MORE-AMT-EARLY-Newcreateloan2.xlsx|
 Then I navigate to scheduler job & execute "Periodic Accrual Transactions"
 Then I verified the following Tabs details successfully 
	|2594-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-DATE-VAR-INST-OVERDUE-FEE-%INT-MORE-AMT-EARLY-Newcreateloan2.xlsx|Summary|Repayment Schedule|Transactions|

@RunnerClass4
	Scenario: 2595-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-DATE-VAR-INST-DISBURSE-FEE-%INT  
 Given I setup the product loan "Setup"
	| Productloannavigation.xlsx |
 Then I entered the values into product from "ProductLoanInput" Sheet
	|2595-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-DATE-VAR-INST-DISBURSE-FEE-%INT-Loanproduct.xlsx|	
 Given I setup the clients 
 Then I entered the values into client from "Input" sheet
	|Createclient.xlsx|
 Then I should see client created successfully from "Output" sheet
	|Createclient.xlsx|
 When I set up the new create loan from "NewLoanInput" sheet
	| 2595-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-DATE-VAR-INST-DISBURSE-FEE-%INT-Newcreateloan1.xlsx|
 Then I "Edit Date " In Edit Repayment Schedule page
    |2595-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-DATE-VAR-INST-DISBURSE-FEE-%INT-Newcreateloan1.xlsx|Edit Repayment Schedule|
 Then I verified the following Tabs details successfully 
	|2595-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-DATE-VAR-INST-DISBURSE-FEE-%INT-Newcreateloan1.xlsx|Summary|Repayment Schedule|
 And I disburse loan from "NewLoanInput" sheet
    |2595-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-DATE-VAR-INST-DISBURSE-FEE-%INT-Newcreateloan2.xlsx|
 Then I navigate to scheduler job & execute "Periodic Accrual Transactions"
 Then I verified the following Tabs details successfully 
	|2595-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-DATE-VAR-INST-DISBURSE-FEE-%INT-Newcreateloan2.xlsx|Summary|Repayment Schedule|Transactions|
	
@RunnerClass4
 Scenario: 2596-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-DATE-VAR-INST-OVERDUE-FEE-%LOANAMT+INT-MORE-AMT  
 
  Given I setup the product loan "Setup"
	| Productloannavigation.xlsx |
 Then I entered the values into product from "ProductLoanInput" Sheet
	|2596-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-DATE-VAR-INST-OVERDUE-FEE-%LOANAMT+INT-MORE-AMT-Loanproduct.xlsx|	
 Given I setup the clients 
 Then I entered the values into client from "Input" sheet
	|Createclient.xlsx|
 Then I should see client created successfully from "Output" sheet
	|Createclient.xlsx|
 When I set up the new create loan from "NewLoanInput" sheet
	| 2596-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-DATE-VAR-INST-OVERDUE-FEE-%LOANAMT+INT-MORE-AMT-Newcreateloan1.xlsx|
 Then I "Edit Date " In Edit Repayment Schedule page
    |2596-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-DATE-VAR-INST-OVERDUE-FEE-%LOANAMT+INT-MORE-AMT-Newcreateloan1.xlsx|Edit Repayment Schedule|
 Then I make repayment and verified the following tabs
    |2596-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-DATE-VAR-INST-OVERDUE-FEE-%LOANAMT+INT-MORE-AMT-Makerepayment1.xlsx|Input|
 Then I navigate to scheduler job & execute "Apply penalty to overdue loans"
 Then I verified the following Tabs details successfully 
	|2596-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-DATE-VAR-INST-OVERDUE-FEE-%LOANAMT+INT-MORE-AMT-Makerepayment1.xlsx|Summary|Repayment Schedule|Transactions|
 And I disburse loan from "NewLoanInput" sheet
    |2596-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-DATE-VAR-INST-OVERDUE-FEE-%LOANAMT+INT-MORE-AMT-Newcreateloan2.xlsx|
 Then I navigate to scheduler job & execute "Periodic Accrual Transactions"
 Then I verified the following Tabs details successfully 
	|2596-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-DATE-VAR-INST-OVERDUE-FEE-%LOANAMT+INT-MORE-AMT-Newcreateloan2.xlsx|Summary|Repayment Schedule|Transactions|

@RunnerClass4
 Scenario: 2597-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-AMT-VAR-INST-FIX-INST-AMT-MORE  
 
  Given I setup the product loan "Setup"
	| Productloannavigation.xlsx |
 Then I entered the values into product from "ProductLoanInput" Sheet
	|2597-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-AMT-VAR-INST-FIX-INST-AMT-MORE-Loanproduct.xlsx|	
 Given I setup the clients 
 Then I entered the values into client from "Input" sheet
	|Createclient.xlsx|
 Then I should see client created successfully from "Output" sheet
	|Createclient.xlsx|
 When I set up the new create loan from "NewLoanInput" sheet
	| 2597-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-AMT-VAR-INST-FIX-INST-AMT-MORE-Newcreateloan1.xlsx|
 Then I "Edit Date " In Edit Repayment Schedule page
    |2597-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-AMT-VAR-INST-FIX-INST-AMT-MORE-Newcreateloan1.xlsx|Edit Repayment Schedule|
 Then I make repayment and verified the following tabs
    |2597-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-AMT-VAR-INST-FIX-INST-AMT-MORE-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
 And I disburse loan from "NewLoanInput" sheet
    |2597-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-AMT-VAR-INST-FIX-INST-AMT-MORE-Newcreateloan2.xlsx|
 Then I navigate to scheduler job & execute "Periodic Accrual Transactions"
 Then I verified the following Tabs details successfully 
	|2597-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-AMT-VAR-INST-FIX-INST-AMT-MORE-Newcreateloan2.xlsx|Summary|Repayment Schedule|Transactions|

@RunnerClass4
 Scenario: 2598-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-AMT-VAR-INST-FIX-INST-AMT-LESS  
 
 Given I setup the clients 
 Then I entered the values into client from "Input" sheet
	|Createclient.xlsx|
 Then I should see client created successfully from "Output" sheet
	|Createclient.xlsx|
 When I set up the new create loan from "NewLoanInput" sheet
	| 2598-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-AMT-VAR-INST-FIX-INST-AMT-LESS-Newcreateloan1.xlsx|
 Then I "Edit Date " In Edit Repayment Schedule page
    |2598-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-AMT-VAR-INST-FIX-INST-AMT-LESS-Newcreateloan1.xlsx|Edit Repayment Schedule|
 Then I make repayment and verified the following tabs
    |2598-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-AMT-VAR-INST-FIX-INST-AMT-LESS-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
 And I disburse loan from "NewLoanInput" sheet
    |2598-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-AMT-VAR-INST-FIX-INST-AMT-LESS-Newcreateloan2.xlsx|
 Then I navigate to scheduler job & execute "Periodic Accrual Transactions"
 Then I verified the following Tabs details successfully 
	|2598-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-AMT-VAR-INST-FIX-INST-AMT-LESS-Newcreateloan2.xlsx|Summary|Repayment Schedule|Transactions|
	
@RunnerClass4
	Scenario: 2599-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-DATE-VAR-INST-SPEDUEDATE-FEE-FLAT  
 Given I setup the clients 
 Then I entered the values into client from "Input" sheet
	|Createclient.xlsx|
 Then I should see client created successfully from "Output" sheet
	|Createclient.xlsx|
 When I set up the new create loan from "NewLoanInput" sheet
	| 2599-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-DATE-VAR-INST-SPEDUEDATE-FEE-FLAT-Newcreateloan1.xlsx|
 Then I "Edit Date " In Edit Repayment Schedule page
    |2599-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-DATE-VAR-INST-SPEDUEDATE-FEE-FLAT-Newcreateloan1.xlsx|Edit Repayment Schedule|
 Then I verified the following Tabs details successfully 
	|2599-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-DATE-VAR-INST-SPEDUEDATE-FEE-FLAT-Newcreateloan1.xlsx|Summary|Repayment Schedule|
 Then I make repayment and verified the following tabs
    |2599-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-DATE-VAR-INST-SPEDUEDATE-FEE-FLAT-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|

@RunnerClass4
	Scenario: 2600-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-DELETE-VAR-INST-SPEDUEDATE-FEE-FLAT  
 Given I setup the clients 
 Then I entered the values into client from "Input" sheet
	|Createclient.xlsx|
 Then I should see client created successfully from "Output" sheet
	|Createclient.xlsx|
 When I set up the new create loan from "NewLoanInput" sheet
	| 2600-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-DELETE-VAR-INST-SPEDUEDATE-FEE-FLAT-Newcreateloan1.xlsx|
 Then I "Edit Date " In Edit Repayment Schedule page
    |2600-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-DELETE-VAR-INST-SPEDUEDATE-FEE-FLAT-Newcreateloan1.xlsx|Edit Repayment Schedule|
 Then I verified the following Tabs details successfully 
	|2600-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-DELETE-VAR-INST-SPEDUEDATE-FEE-FLAT-Newcreateloan1.xlsx|Summary|Repayment Schedule|
 Then I make repayment and verified the following tabs
    |2600-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-DELETE-VAR-INST-SPEDUEDATE-FEE-FLAT-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|

@RunnerClass4
	Scenario: 2601-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-DATE-VAR-INST-VALIDATE-RANGE  
 Given I setup the product loan "Setup"
	| Productloannavigation.xlsx |
 Then I entered the values into product from "ProductLoanInput" Sheet
	|2601-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-DATE-VAR-INST-VALIDATE-RANGE-Loanproduct.xlsx|	
 Given I setup the clients 
 Then I entered the values into client from "Input" sheet
	|Createclient.xlsx|
 Then I should see client created successfully from "Output" sheet
	|Createclient.xlsx|
 When I set up the new create loan from "NewLoanInput" sheet
	| 2601-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-DATE-VAR-INST-VALIDATE-RANGE-Newcreateloan1.xlsx|
 Then I "Edit Date " In Edit Repayment Schedule page
    |2601-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-DATE-VAR-INST-VALIDATE-RANGE-Newcreateloan1.xlsx|Edit Repayment Schedule|
 Then i validate and Verify from "Output" sheet
	|2601-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-DATE-VAR-INST-VALIDATE-RANGE-Newcreateloan1.xlsx|
 
@RunnerClass4
 Scenario: 2602-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-DELETE-3-REPAY-VAR-INST  
 
 Given I setup the clients 
 Then I entered the values into client from "Input" sheet
	|Createclient.xlsx|
 Then I should see client created successfully from "Output" sheet
	|Createclient.xlsx|
 When I set up the new create loan from "NewLoanInput" sheet
	| 2602-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-DELETE-3-REPAY-VAR-INST-Newcreateloan1.xlsx|
 Then I "Edit Date " In Edit Repayment Schedule page
    |2602-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-DELETE-3-REPAY-VAR-INST-Newcreateloan1.xlsx|Edit Repayment Schedule|
  Then I verified the following Tabs details successfully 
	|2602-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-DELETE-3-REPAY-VAR-INST-Newcreateloan1.xlsx|Summary|Repayment Schedule|Transactions|

@RunnerClass4
 Scenario: 2603-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-ADD-3-REPAY-VAR-INST  
 
 Given I setup the clients 
 Then I entered the values into client from "Input" sheet
	|Createclient.xlsx|
 Then I should see client created successfully from "Output" sheet
	|Createclient.xlsx|
 When I set up the new create loan from "NewLoanInput" sheet
	| 2603-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-ADD-3-REPAY-VAR-INST-Newcreateloan1.xlsx|
 Then I "Edit Date " In Edit Repayment Schedule page
    |2603-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-ADD-3-REPAY-VAR-INST-Newcreateloan1.xlsx|Edit Repayment Schedule|
 Then I verified the following Tabs details successfully
	|2603-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-ADD-3-REPAY-VAR-INST-Newcreateloan1.xlsx|Summary|Repayment Schedule|Transactions|

@RunnerClass4
 Scenario: 2604-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-SHORT-PATTERN-INCREASE-MONTHBY-2-VAR-INST  
 
 Given I setup the clients 
 Then I entered the values into client from "Input" sheet
	|Createclient.xlsx|
 Then I should see client created successfully from "Output" sheet
	|Createclient.xlsx|
 When I set up the new create loan from "NewLoanInput" sheet
	| 2604-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-SHORT-PATTERN-INCREASE-MONTHBY-2-VAR-INST-Newcreateloan1.xlsx|
 Then I "Edit Date " In Edit Repayment Schedule page
    |2604-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-SHORT-PATTERN-INCREASE-MONTHBY-2-VAR-INST-Newcreateloan1.xlsx|Edit Repayment Schedule|
# Then I verified the following Tabs details successfully
#	|2604-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-SHORT-PATTERN-INCREASE-MONTHBY-2-VAR-INST-Newcreateloan1.xlsx|Summary|Repayment Schedule|Transactions|

@RunnerClass4
 Scenario: 2605-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-ADD-VAR-INST-PREPAY-15JAN  
 
 Given I setup the clients 
 Then I entered the values into client from "Input" sheet
	|Createclient.xlsx|
 Then I should see client created successfully from "Output" sheet
	|Createclient.xlsx|
 When I set up the new create loan from "NewLoanInput" sheet
	|2605-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-ADD-VAR-INST-PREPAY-15JAN-Newcreateloan1.xlsx|
 Then I "Edit Date " In Edit Repayment Schedule page
    |2605-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-ADD-VAR-INST-PREPAY-15JAN-Newcreateloan1.xlsx|Edit Repayment Schedule|
 Then I "Make Pre Payment" and verified the following tabs
	|2605-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-ADD-VAR-INST-PREPAY-15JAN-Newcreateloan1.xlsx|Prepay Loan|Summary|Repayment Schedule|Transactions|

@RunnerClass4
 Scenario: 2606-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-ADD-VAR-INST-WAIVEINTEREST  
 
 Given I setup the clients 
 Then I entered the values into client from "Input" sheet
	|Createclient.xlsx|
 Then I should see client created successfully from "Output" sheet
	|Createclient.xlsx|
 When I set up the new create loan from "NewLoanInput" sheet
	| 2606-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-ADD-VAR-INST-WAIVEINTEREST-Newcreateloan1.xlsx|
 Then I " Add " In Edit Repayment Schedule page
    |2606-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-ADD-VAR-INST-WAIVEINTEREST-Newcreateloan1.xlsx|Edit Repayment Schedule|
 Then I "WaiveInterest" and verified the following tabs
	|2606-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-ADD-VAR-INST-WAIVEINTEREST-Newcreateloan1.xlsx|Modify Transaction|Summary|Repayment Schedule|Transactions|

@RunnerClass4
 Scenario: 2607-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-ADD-VAR-INST-WRITEOFF  
 
 Given I setup the clients 
 Then I entered the values into client from "Input" sheet
	|Createclient.xlsx|
 Then I should see client created successfully from "Output" sheet
	|Createclient.xlsx|
 When I set up the new create loan from "NewLoanInput" sheet
	| 2607-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-ADD-VAR-INST-WRITEOFF-Newcreateloan1.xlsx|
 Then I " Add " In Edit Repayment Schedule page
    |2607-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-ADD-VAR-INST-WRITEOFF-Newcreateloan1.xlsx|Edit Repayment Schedule|
 Then I "WaiveInterest" and verified the following tabs
	|2607-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-ADD-VAR-INST-WRITEOFF-Newcreateloan1.xlsx|Modify Transaction|Summary|Repayment Schedule|Transactions|

@RunnerClass4
 Scenario: 2608-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-ADD-VAR-INST-MOROTORIUM-PRIN+INT-2  
 
 Given I setup the clients 
 Then I entered the values into client from "Input" sheet
	|Createclient.xlsx|
 Then I should see client created successfully from "Output" sheet
	|Createclient.xlsx|
 When I set up the new create loan from "NewLoanInput" sheet
	|2608-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-ADD-VAR-INST-MOROTORIUM-PRIN+INT-2-Newcreateloan1.xlsx|
 Then I " Add " In Edit Repayment Schedule page
    |2608-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-ADD-VAR-INST-MOROTORIUM-PRIN+INT-2-Newcreateloan1.xlsx|Edit Repayment Schedule|
# Then I "WaiveInterest" and verified the following tabs
#	|2608-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-ADD-VAR-INST-MOROTORIUM-PRIN+INT-2-Newcreateloan1.xlsx|Modify Transaction|Summary|Repayment Schedule|Transactions|

@RunnerClass4
	Scenario: 2609-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-ADD-VAR-INST-OVERDUE-FEE-FLAT  
 Given I setup the product loan "Setup"
	| Productloannavigation.xlsx |
 Then I entered the values into product from "ProductLoanInput" Sheet
	|2609-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-ADD-VAR-INST-OVERDUE-FEE-FLAT-Loanproduct.xlsx|	
 Given I setup the clients 
 Then I entered the values into client from "Input" sheet
	|Createclient.xlsx|
 Then I should see client created successfully from "Output" sheet
	|Createclient.xlsx|
 When I set up the new create loan from "NewLoanInput" sheet
	| 2609-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-ADD-VAR-INST-OVERDUE-FEE-FLAT-Newcreateloan1.xlsx|
 Then I "Edit Date " In Edit Repayment Schedule page
    |2609-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-ADD-VAR-INST-OVERDUE-FEE-FLAT-Newcreateloan1.xlsx|Edit Repayment Schedule|
 Then I navigate to scheduler job & execute "Apply penalty to overdue loans"
 Then I verified the following Tabs details successfully 
	|2609-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-ADD-VAR-INST-OVERDUE-FEE-FLAT-Newcreateloan1.xlsx|Summary|Repayment Schedule|

@RunnerClass4
 Scenario: 2610-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-DATE-VAR-INST-SPEDUEDATE-FEE-%APRAMT-WAIVECHARGE  
 
 Given I setup the clients 
 Then I entered the values into client from "Input" sheet
	|Createclient.xlsx|
 Then I should see client created successfully from "Output" sheet
	|Createclient.xlsx|
 When I set up the new create loan from "NewLoanInput" sheet
	|2610-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-DATE-VAR-INST-SPEDUEDATE-FEE-%APRAMT-WAIVECHARGE-Newcreateloan1.xlsx|
 Then I " Add " In Edit Repayment Schedule page
    |2610-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-DATE-VAR-INST-SPEDUEDATE-FEE-%APRAMT-WAIVECHARGE-Newcreateloan1.xlsx|Edit Repayment Schedule|
 Then I "Wave Charge from Charges tab" and verified the following tabs
	|2610-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-DATE-VAR-INST-SPEDUEDATE-FEE-%APRAMT-WAIVECHARGE-Newcreateloan1.xlsx|Charges|Summary|Repayment Schedule|Transactions|

@RunnerClass4
 Scenario: 2611-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-DATE-VAR-INST-AddTranche
 		   
 Given I setup the clients 
 Then I entered the values into client from "Input" sheet
	|Createclient.xlsx|
 Then I should see client created successfully from "Output" sheet
	|Createclient.xlsx|
 When I set up the new create loan from "NewLoanInput" sheet
	|2611-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-DATE-VAR-INST-AddTranche-Newcreateloan1.xlsx|
 Then I " Add " In Edit Repayment Schedule page
    |2611-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-DATE-VAR-INST-AddTranche-Newcreateloan1.xlsx|Edit Repayment Schedule|
 Then I "Add trance from trache tab" and verified the following tabs
	|2611-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-DATE-VAR-INST-AddTranche-Newcreateloan1.xlsx|Loan Tranche Details|Summary|Repayment Schedule|Transactions|
	
@RunnerClass4
 Scenario: 2612-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-DATE-VAR-INST-DeleteTraanche  
 
 Given I setup the clients 
 Then I entered the values into client from "Input" sheet
	|Createclient.xlsx|
 Then I should see client created successfully from "Output" sheet
	|Createclient.xlsx|
 When I set up the new create loan from "NewLoanInput" sheet
	|2612-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-DATE-VAR-INST-DeleteTraanche-Newcreateloan1.xlsx|
 Then I " Add " In Edit Repayment Schedule page
    |2612-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-DATE-VAR-INST-DeleteTraanche-Newcreateloan1.xlsx|Edit Repayment Schedule|
  Then I "Delete trance from trache tab" and verified the following tabs
	|2612-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-DATE-VAR-INST-DeleteTraanche-Newcreateloan1.xlsx|Loan Tranche Details|Summary|Repayment Schedule|Transactions|
	
@RunnerClass4
	Scenario: 2615-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-DATE-VAR-INST-LATE  
 Given I setup the product loan "Setup"
	| Productloannavigation.xlsx |
 Then I entered the values into product from "ProductLoanInput" Sheet
	|2615-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-DATE-VAR-INST-MIS-Loanproduct.xlsx|
 Given I setup the clients 
 Then I entered the values into client from "Input" sheet
	|Createclient.xlsx|
 Then I should see client created successfully from "Output" sheet
	|Createclient.xlsx|
 When I set up the new create loan from "NewLoanInput" sheet
	| 2615-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-DATE-VAR-INST-LATE-Newcreateloan1.xlsx|
 Then I "Edit Date " In Edit Repayment Schedule page
    |2615-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-DATE-VAR-INST-LATE-Newcreateloan1.xlsx|Edit Repayment Schedule|
 Then I verified the following Tabs details successfully 
	|2615-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-DATE-VAR-INST-LATE-Newcreateloan1.xlsx|Summary|Repayment Schedule|
 Then I make repayment and verified the following tabs
    |2615-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-DATE-VAR-INST-LATE-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
 And I disburse loan from "NewLoanInput" sheet
    |2615-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-DATE-VAR-INST-LATE-Newcreateloan2.xlsx|
 Then I navigate to scheduler job & execute "Periodic Accrual Transactions"
 Then I verified the following Tabs details successfully 
	|2615-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-DATE-VAR-INST-LATE-Newcreateloan2.xlsx|Summary|Repayment Schedule|Transactions|
 
@RunnerClass4
	Scenario: 2616-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-DATE-VAR-INST-EARLY  
 Given I setup the clients 
 Then I entered the values into client from "Input" sheet
	|Createclient.xlsx|
 Then I should see client created successfully from "Output" sheet
	|Createclient.xlsx|
 When I set up the new create loan from "NewLoanInput" sheet
	| 2616-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-DATE-VAR-INST-EARLY-Newcreateloan1.xlsx|
 Then I "Edit Date " In Edit Repayment Schedule page
    |2616-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-DATE-VAR-INST-EARLY-Newcreateloan1.xlsx|Edit Repayment Schedule|
 Then I verified the following Tabs details successfully 
	|2616-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-DATE-VAR-INST-EARLY-Newcreateloan1.xlsx|Summary|Repayment Schedule|
 Then I make repayment and verified the following tabs
    |2616-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-DATE-VAR-INST-EARLY-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
 And I disburse loan from "NewLoanInput" sheet
    |2616-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-DATE-VAR-INST-EARLY-Newcreateloan2.xlsx|
 Then I navigate to scheduler job & execute "Periodic Accrual Transactions"
 Then I verified the following Tabs details successfully 
	|2616-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-DATE-VAR-INST-EARLY-Newcreateloan2.xlsx|Summary|Repayment Schedule|Transactions|
 
@RunnerClass4
	Scenario: 2617-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-DATE-VAR-INST-DISBURSE-FEE-FLAT  
 Given I setup the product loan "Setup"
	| Productloannavigation.xlsx |
 Then I entered the values into product from "ProductLoanInput" Sheet
	|2617-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-DATE-VAR-INST-DISBURSE-FEE-FLAT-Loanproduct.xlsx|	
 Given I setup the clients 
 Then I entered the values into client from "Input" sheet
	|Createclient.xlsx|
 Then I should see client created successfully from "Output" sheet
	|Createclient.xlsx|
 When I set up the new create loan from "NewLoanInput" sheet
	| 2617-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-DATE-VAR-INST-DISBURSE-FEE-FLAT-Newcreateloan1.xlsx|
 Then I "Edit Date " In Edit Repayment Schedule page
    |2617-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-DATE-VAR-INST-DISBURSE-FEE-FLAT-Newcreateloan1.xlsx|Edit Repayment Schedule|
 Then I verified the following Tabs details successfully 
	|2617-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-DATE-VAR-INST-DISBURSE-FEE-FLAT-Newcreateloan1.xlsx|Summary|Repayment Schedule|
 And I disburse loan from "NewLoanInput" sheet
    |2617-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-DATE-VAR-INST-DISBURSE-FEE-FLAT-Newcreateloan2.xlsx|
 Then I verified the following Tabs details successfully 
	|2617-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-DATE-VAR-INST-DISBURSE-FEE-FLAT-Newcreateloan2.xlsx|Summary|Repayment Schedule|Transactions|
 	
@RunnerClass4
	Scenario: 2618-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-DATE-VAR-INST-SPEDUEDATE-FEE-%APR-AMT  
 Given I setup the clients 
 Then I entered the values into client from "Input" sheet
	|Createclient.xlsx|
 Then I should see client created successfully from "Output" sheet
	|Createclient.xlsx|
 When I set up the new create loan from "NewLoanInput" sheet
	| 2618-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-DATE-VAR-INST-SPEDUEDATE-FEE-%APR-AMT-Newcreateloan1.xlsx|
 Then I "Edit Date " In Edit Repayment Schedule page
    |2618-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-DATE-VAR-INST-SPEDUEDATE-FEE-%APR-AMT-Newcreateloan1.xlsx|Edit Repayment Schedule|
 Then I verified the following Tabs details successfully 
	|2618-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-DATE-VAR-INST-SPEDUEDATE-FEE-%APR-AMT-Newcreateloan1.xlsx|Summary|Repayment Schedule|
 Then I make repayment and verified the following tabs
    |2618-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-DATE-VAR-INST-SPEDUEDATE-FEE-%APR-AMT-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
 And I disburse loan from "NewLoanInput" sheet
    |2618-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-DATE-VAR-INST-SPEDUEDATE-FEE-%APR-AMT-Newcreateloan2.xlsx|
 Then I navigate to scheduler job & execute "Periodic Accrual Transactions"
 Then I verified the following Tabs details successfully 
	|2618-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-DATE-VAR-INST-SPEDUEDATE-FEE-%APR-AMT-Newcreateloan2.xlsx|Summary|Repayment Schedule|Transactions|

@RunnerClass4
	Scenario: 2619-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-DATE-VAR-INST-FEE-%INT-MORE-AMT  
 Given I setup the product loan "Setup"
	| Productloannavigation.xlsx |
 Then I entered the values into product from "ProductLoanInput" Sheet
	|2619-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-DATE-VAR-INST-FEE-%INT-MORE-AMT-Loanproduct.xlsx|	
 Given I setup the clients 
 Then I entered the values into client from "Input" sheet
	|Createclient.xlsx|
 Then I should see client created successfully from "Output" sheet
	|Createclient.xlsx|
 When I set up the new create loan from "NewLoanInput" sheet
	| 2619-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-DATE-VAR-INST-FEE-%INT-MORE-AMT-Newcreateloan1.xlsx|
 Then I "Edit Date " In Edit Repayment Schedule page
    |2619-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-DATE-VAR-INST-FEE-%INT-MORE-AMT-Newcreateloan1.xlsx|Edit Repayment Schedule|
 Then I verified the following Tabs details successfully 
	|2619-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-DATE-VAR-INST-FEE-%INT-MORE-AMT-Newcreateloan1.xlsx|Summary|Repayment Schedule|
 Then I make repayment and verified the following tabs
    |2619-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-DATE-VAR-INST-FEE-%INT-MORE-AMT-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
 And I disburse loan from "NewLoanInput" sheet
    |2619-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-DATE-VAR-INST-FEE-%INT-MORE-AMT-Newcreateloan2.xlsx|
 Then I navigate to scheduler job & execute "Periodic Accrual Transactions"
 Then I verified the following Tabs details successfully 
	|2619-MS-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-DATE-VAR-INST-FEE-%INT-MORE-AMT-Newcreateloan2.xlsx|Summary|Repayment Schedule|Transactions|

@RunnerClass4
	Scenario: 2620-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-DATE-VAR-INST-OVERDUE-FEE-%INT-LESS-AMT  
 Given I setup the product loan "Setup"
	| Productloannavigation.xlsx |
 Then I entered the values into product from "ProductLoanInput" Sheet
	|2620-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-DATE-VAR-INST-OVERDUE-FEE-%INT-LESS-AMT-Loanproduct.xlsx|	
 Given I setup the clients 
 Then I entered the values into client from "Input" sheet
	|Createclient.xlsx|
 Then I should see client created successfully from "Output" sheet
	|Createclient.xlsx|
 When I set up the new create loan from "NewLoanInput" sheet
	| 2620-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-DATE-VAR-INST-OVERDUE-FEE-%INT-LESS-AMT-Newcreateloan1.xlsx|
 Then I "Edit Date " In Edit Repayment Schedule page
    |2620-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-DATE-VAR-INST-OVERDUE-FEE-%INT-LESS-AMT-Newcreateloan1.xlsx|Edit Repayment Schedule|
 Then I navigate to scheduler job & execute "Apply penalty to overdue loans"
 Then I verified the following Tabs details successfully 
	|2620-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-DATE-VAR-INST-OVERDUE-FEE-%INT-LESS-AMT-Newcreateloan1.xlsx|Summary|Repayment Schedule|
 Then I make repayment and verified the following tabs
    |2620-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-DATE-VAR-INST-OVERDUE-FEE-%INT-LESS-AMT-Makerepayment1.xlsx|Input|
 And I disburse loan from "NewLoanInput" sheet
    |2620-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-DATE-VAR-INST-OVERDUE-FEE-%INT-LESS-AMT-Newcreateloan2.xlsx|
 Then I navigate to scheduler job & execute "Periodic Accrual Transactions"
 Then I verified the following Tabs details successfully 
	|2620-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-DATE-VAR-INST-OVERDUE-FEE-%INT-LESS-AMT-Newcreateloan2.xlsx|Summary|Repayment Schedule|Transactions|
 	
@RunnerClass4
	Scenario: 2621-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-DATE-VAR-INST-OVERDUE-FEE-%INT-LESS-AMT-LATE  
 Given I setup the clients 
 Then I entered the values into client from "Input" sheet
	|Createclient.xlsx|
 Then I should see client created successfully from "Output" sheet
	|Createclient.xlsx|
 When I set up the new create loan from "NewLoanInput" sheet
	| 2621-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-DATE-VAR-INST-OVERDUE-FEE-%INT-LESS-AMT-LATE-Newcreateloan1.xlsx|
 Then I "Edit Date " In Edit Repayment Schedule page
    |2621-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-DATE-VAR-INST-OVERDUE-FEE-%INT-LESS-AMT-LATE-Newcreateloan1.xlsx|Edit Repayment Schedule|
 Then I make repayment and verified the following tabs
    |2621-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-DATE-VAR-INST-OVERDUE-FEE-%INT-LESS-AMT-LATE-Makerepayment1.xlsx|Input|
 Then I navigate to scheduler job & execute "Apply penalty to overdue loans"
 Then I verified the following Tabs details successfully 
	|2621-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-DATE-VAR-INST-OVERDUE-FEE-%INT-LESS-AMT-LATE-Makerepayment1.xlsx|Summary|Repayment Schedule|Transactions|
 And I disburse loan from "NewLoanInput" sheet
    |2621-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-DATE-VAR-INST-OVERDUE-FEE-%INT-LESS-AMT-LATE-Newcreateloan2.xlsx|
 Then I navigate to scheduler job & execute "Periodic Accrual Transactions"
 Then I verified the following Tabs details successfully 
	|2621-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-DATE-VAR-INST-OVERDUE-FEE-%INT-LESS-AMT-LATE-Newcreateloan2.xlsx|Summary|Repayment Schedule|Transactions|

@RunnerClass4
	Scenario: 2622-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-DATE-VAR-INST-OVERDUE-FEE-%INT-MORE-AMT-LATE  
 Given I setup the clients 
 Then I entered the values into client from "Input" sheet
	|Createclient.xlsx|
 Then I should see client created successfully from "Output" sheet
	|Createclient.xlsx|
 When I set up the new create loan from "NewLoanInput" sheet
	| 2622-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-DATE-VAR-INST-OVERDUE-FEE-%INT-MORE-AMT-LATE-Newcreateloan1.xlsx|
 Then I "Edit Date " In Edit Repayment Schedule page
    |2622-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-DATE-VAR-INST-OVERDUE-FEE-%INT-MORE-AMT-LATE-Newcreateloan1.xlsx|Edit Repayment Schedule|
 Then I make repayment and verified the following tabs
    |2622-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-DATE-VAR-INST-OVERDUE-FEE-%INT-MORE-AMT-LATE-Makerepayment1.xlsx|Input|
 Then I navigate to scheduler job & execute "Apply penalty to overdue loans"
 Then I verified the following Tabs details successfully 
	|2622-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-DATE-VAR-INST-OVERDUE-FEE-%INT-MORE-AMT-LATE-Makerepayment1.xlsx|Summary|Repayment Schedule|Transactions|
 And I disburse loan from "NewLoanInput" sheet
    |2622-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-DATE-VAR-INST-OVERDUE-FEE-%INT-MORE-AMT-LATE-Newcreateloan2.xlsx|
 Then I navigate to scheduler job & execute "Periodic Accrual Transactions"
 Then I verified the following Tabs details successfully 
	|2622-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-DATE-VAR-INST-OVERDUE-FEE-%INT-MORE-AMT-LATE-Newcreateloan2.xlsx|Summary|Repayment Schedule|Transactions|

@RunnerClass4
 Scenario: 2623-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-DATE-VAR-INST-OVERDUE-FEE-%INT-LESS-AMT-EARLY  

 Given I setup the clients 
 Then I entered the values into client from "Input" sheet
	|Createclient.xlsx|
 Then I should see client created successfully from "Output" sheet
	|Createclient.xlsx|
 When I set up the new create loan from "NewLoanInput" sheet
	| 2623-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-DATE-VAR-INST-OVERDUE-FEE-%INT-LESS-AMT-EARLY-Newcreateloan1.xlsx|
 Then I "Edit Date " In Edit Repayment Schedule page
    |2623-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-DATE-VAR-INST-OVERDUE-FEE-%INT-LESS-AMT-EARLY-Newcreateloan1.xlsx|Edit Repayment Schedule|
 Then I make repayment and verified the following tabs
    |2623-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-DATE-VAR-INST-OVERDUE-FEE-%INT-LESS-AMT-EARLY-Makerepayment1.xlsx|Input|
 Then I navigate to scheduler job & execute "Apply penalty to overdue loans"
 Then I verified the following Tabs details successfully 
	|2623-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-DATE-VAR-INST-OVERDUE-FEE-%INT-LESS-AMT-EARLY-Makerepayment1.xlsx|Summary|Repayment Schedule|Transactions|
 And I disburse loan from "NewLoanInput" sheet
    |2623-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-DATE-VAR-INST-OVERDUE-FEE-%INT-LESS-AMT-EARLY-Newcreateloan2.xlsx|
 Then I navigate to scheduler job & execute "Periodic Accrual Transactions"
 Then I verified the following Tabs details successfully 
	|2623-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-DATE-VAR-INST-OVERDUE-FEE-%INT-LESS-AMT-EARLY-Newcreateloan2.xlsx|Summary|Repayment Schedule|Transactions|
	
@RunnerClass4
 Scenario: 2624-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-DATE-VAR-INST-OVERDUE-FEE-%INT-MORE-AMT-EARLY  
 
 Given I setup the clients 
 Then I entered the values into client from "Input" sheet
	|Createclient.xlsx|
 Then I should see client created successfully from "Output" sheet
	|Createclient.xlsx|
 When I set up the new create loan from "NewLoanInput" sheet
	| 2624-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-DATE-VAR-INST-OVERDUE-FEE-%INT-MORE-AMT-EARLY-Newcreateloan1.xlsx|
 Then I "Edit Date " In Edit Repayment Schedule page
    |2624-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-DATE-VAR-INST-OVERDUE-FEE-%INT-MORE-AMT-EARLY-Newcreateloan1.xlsx|Edit Repayment Schedule|
 Then I make repayment and verified the following tabs
    |2624-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-DATE-VAR-INST-OVERDUE-FEE-%INT-MORE-AMT-EARLY-Makerepayment1.xlsx|Input|
 Then I navigate to scheduler job & execute "Apply penalty to overdue loans"
 Then I verified the following Tabs details successfully 
	|2624-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-DATE-VAR-INST-OVERDUE-FEE-%INT-MORE-AMT-EARLY-Makerepayment1.xlsx|Summary|Repayment Schedule|Transactions|
 And I disburse loan from "NewLoanInput" sheet
    |2624-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-DATE-VAR-INST-OVERDUE-FEE-%INT-MORE-AMT-EARLY-Newcreateloan2.xlsx|
 Then I navigate to scheduler job & execute "Periodic Accrual Transactions"
 Then I verified the following Tabs details successfully 
	|2624-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-DATE-VAR-INST-OVERDUE-FEE-%INT-MORE-AMT-EARLY-Newcreateloan2.xlsx|Summary|Repayment Schedule|Transactions|

@RunnerClass4
	Scenario: 2625-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-DATE-VAR-INST-DISBURSE-FEE-%INT  
 Given I setup the product loan "Setup"
	| Productloannavigation.xlsx |
 Then I entered the values into product from "ProductLoanInput" Sheet
	|2625-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-DATE-VAR-INST-DISBURSE-FEE-%INT-Loanproduct.xlsx|	
 Given I setup the clients 
 Then I entered the values into client from "Input" sheet
	|Createclient.xlsx|
 Then I should see client created successfully from "Output" sheet
	|Createclient.xlsx|
 When I set up the new create loan from "NewLoanInput" sheet
	| 2625-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-DATE-VAR-INST-DISBURSE-FEE-%INT-Newcreateloan1.xlsx|
 Then I "Edit Date " In Edit Repayment Schedule page
    |2625-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-DATE-VAR-INST-DISBURSE-FEE-%INT-Newcreateloan1.xlsx|Edit Repayment Schedule|
 Then I verified the following Tabs details successfully 
	|2625-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-DATE-VAR-INST-DISBURSE-FEE-%INT-Newcreateloan1.xlsx|Summary|Repayment Schedule|
 And I disburse loan from "NewLoanInput" sheet
    |2625-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-DATE-VAR-INST-DISBURSE-FEE-%INT-Newcreateloan2.xlsx|
 Then I navigate to scheduler job & execute "Periodic Accrual Transactions"
 Then I verified the following Tabs details successfully 
	|2625-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-DATE-VAR-INST-DISBURSE-FEE-%INT-Newcreateloan2.xlsx|Summary|Repayment Schedule|Transactions|
	
@RunnerClass4
 Scenario: 2626-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-DATE-VAR-INST-OVERDUE-FEE-%LOANAMT+INT-MORE-AMT  
 
  Given I setup the product loan "Setup"
	| Productloannavigation.xlsx |
 Then I entered the values into product from "ProductLoanInput" Sheet
	|2626-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-DATE-VAR-INST-OVERDUE-FEE-%LOANAMT+INT-MORE-AMT-Loanproduct.xlsx|	
 Given I setup the clients 
 Then I entered the values into client from "Input" sheet
	|Createclient.xlsx|
 Then I should see client created successfully from "Output" sheet
	|Createclient.xlsx|
 When I set up the new create loan from "NewLoanInput" sheet
	| 2626-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-DATE-VAR-INST-OVERDUE-FEE-%LOANAMT+INT-MORE-AMT-Newcreateloan1.xlsx|
 Then I "Edit Date " In Edit Repayment Schedule page
    |2626-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-DATE-VAR-INST-OVERDUE-FEE-%LOANAMT+INT-MORE-AMT-Newcreateloan1.xlsx|Edit Repayment Schedule|
 Then I make repayment and verified the following tabs
    |2626-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-DATE-VAR-INST-OVERDUE-FEE-%LOANAMT+INT-MORE-AMT-Makerepayment1.xlsx|Input|
 Then I navigate to scheduler job & execute "Apply penalty to overdue loans"
 Then I verified the following Tabs details successfully 
	|2626-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-DATE-VAR-INST-OVERDUE-FEE-%LOANAMT+INT-MORE-AMT-Makerepayment1.xlsx|Summary|Repayment Schedule|Transactions|
 And I disburse loan from "NewLoanInput" sheet
    |2626-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-DATE-VAR-INST-OVERDUE-FEE-%LOANAMT+INT-MORE-AMT-Newcreateloan2.xlsx|
 Then I navigate to scheduler job & execute "Periodic Accrual Transactions"
 Then I verified the following Tabs details successfully 
	|2626-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-DATE-VAR-INST-OVERDUE-FEE-%LOANAMT+INT-MORE-AMT-Newcreateloan2.xlsx|Summary|Repayment Schedule|Transactions|

@RunnerClass4
 Scenario: 2627-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-AMT-VAR-INST-FIX-INST-AMT-MORE  
 
  Given I setup the product loan "Setup"
	| Productloannavigation.xlsx |
 Then I entered the values into product from "ProductLoanInput" Sheet
	|2627-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-AMT-VAR-INST-FIX-INST-AMT-MORE-Loanproduct.xlsx|	
 Given I setup the clients 
 Then I entered the values into client from "Input" sheet
	|Createclient.xlsx|
 Then I should see client created successfully from "Output" sheet
	|Createclient.xlsx|
 When I set up the new create loan from "NewLoanInput" sheet
	| 2627-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-AMT-VAR-INST-FIX-INST-AMT-MORE-Newcreateloan1.xlsx|
 Then I "Edit Date " In Edit Repayment Schedule page
    |2627-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-AMT-VAR-INST-FIX-INST-AMT-MORE-Newcreateloan1.xlsx|Edit Repayment Schedule|
 Then I make repayment and verified the following tabs
    |2627-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-AMT-VAR-INST-FIX-INST-AMT-MORE-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
 And I disburse loan from "NewLoanInput" sheet
    |2627-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-AMT-VAR-INST-FIX-INST-AMT-MORE-Newcreateloan2.xlsx|
 Then I navigate to scheduler job & execute "Periodic Accrual Transactions"
 Then I verified the following Tabs details successfully 
	|2627-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-AMT-VAR-INST-FIX-INST-AMT-MORE-Newcreateloan2.xlsx|Summary|Repayment Schedule|Transactions|

@RunnerClass4
 Scenario: 2628-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-AMT-VAR-INST-FIX-INST-AMT-LESS  
 
 Given I setup the clients 
 Then I entered the values into client from "Input" sheet
	|Createclient.xlsx|
 Then I should see client created successfully from "Output" sheet
	|Createclient.xlsx|
 When I set up the new create loan from "NewLoanInput" sheet
	| 2628-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-AMT-VAR-INST-FIX-INST-AMT-LESS-Newcreateloan1.xlsx|
 Then I "Edit Date " In Edit Repayment Schedule page
    |2628-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-AMT-VAR-INST-FIX-INST-AMT-LESS-Newcreateloan1.xlsx|Edit Repayment Schedule|
 Then I make repayment and verified the following tabs
    |2628-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-AMT-VAR-INST-FIX-INST-AMT-LESS-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
 And I disburse loan from "NewLoanInput" sheet
    |2628-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-AMT-VAR-INST-FIX-INST-AMT-LESS-Newcreateloan2.xlsx|
 Then I navigate to scheduler job & execute "Periodic Accrual Transactions"
 Then I verified the following Tabs details successfully 
	|2628-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-AMT-VAR-INST-FIX-INST-AMT-LESS-Newcreateloan2.xlsx|Summary|Repayment Schedule|Transactions|
	
@RunnerClass4
	Scenario: 2629-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-DATE-VAR-INST-SPEDUEDATE-FEE-FLAT  
  	
 Given I setup the clients 
 Then I entered the values into client from "Input" sheet
	|Createclient.xlsx|
 Then I should see client created successfully from "Output" sheet
	|Createclient.xlsx|
 When I set up the new create loan from "NewLoanInput" sheet
	| 2629-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-DATE-VAR-INST-SPEDUEDATE-FEE-FLAT-Newcreateloan1.xlsx|
 Then I "Edit Date " In Edit Repayment Schedule page
    |2629-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-DATE-VAR-INST-SPEDUEDATE-FEE-FLAT-Newcreateloan1.xlsx|Edit Repayment Schedule|
 Then I verified the following Tabs details successfully 
	|2629-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-DATE-VAR-INST-SPEDUEDATE-FEE-FLAT-Newcreateloan1.xlsx|Summary|Repayment Schedule|
 Then I make repayment and verified the following tabs
    |2629-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-DATE-VAR-INST-SPEDUEDATE-FEE-FLAT-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|

@RunnerClass4
	Scenario: 2630-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-DELETE-VAR-INST-SPEDUEDATE-FEE-FLAT  
 Given I setup the clients 
 Then I entered the values into client from "Input" sheet
	|Createclient.xlsx|
 Then I should see client created successfully from "Output" sheet
	|Createclient.xlsx|
 When I set up the new create loan from "NewLoanInput" sheet
	| 2630-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-DELETE-VAR-INST-SPEDUEDATE-FEE-FLAT-Newcreateloan1.xlsx|
 Then I "Edit Date " In Edit Repayment Schedule page
    |2630-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-DELETE-VAR-INST-SPEDUEDATE-FEE-FLAT-Newcreateloan1.xlsx|Edit Repayment Schedule|
 Then I verified the following Tabs details successfully 
	|2630-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-DELETE-VAR-INST-SPEDUEDATE-FEE-FLAT-Newcreateloan1.xlsx|Summary|Repayment Schedule|
 Then I make repayment and verified the following tabs
    |2630-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-DELETE-VAR-INST-SPEDUEDATE-FEE-FLAT-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
 	
@RunnerClass4
	Scenario: 2631-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-DATE-VAR-INST-VALIDATE-RANGE  
 Given I setup the product loan "Setup"
	| Productloannavigation.xlsx |
 Then I entered the values into product from "ProductLoanInput" Sheet
	|2631-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-DATE-VAR-INST-VALIDATE-RANGE-Loanproduct.xlsx|	
 Given I setup the clients 
 Then I entered the values into client from "Input" sheet
	|Createclient.xlsx|
 Then I should see client created successfully from "Output" sheet
	|Createclient.xlsx|
 When I set up the new create loan from "NewLoanInput" sheet
	| 2631-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-DATE-VAR-INST-VALIDATE-RANGE-Newcreateloan1.xlsx|
 Then I "Edit Date " In Edit Repayment Schedule page
    |2631-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-DATE-VAR-INST-VALIDATE-RANGE-Newcreateloan1.xlsx|Edit Repayment Schedule|
 Then i validate and Verify from "Output" sheet
	|2631-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-DATE-VAR-INST-VALIDATE-RANGE-Newcreateloan1.xlsx|
 
@RunnerClass4
 Scenario: 2632-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-DELETE-3-REPAY-VAR-INST  
 
 Given I setup the clients 
 Then I entered the values into client from "Input" sheet
	|Createclient.xlsx|
 Then I should see client created successfully from "Output" sheet
	|Createclient.xlsx|
 When I set up the new create loan from "NewLoanInput" sheet
	| 2632-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-DELETE-3-REPAY-VAR-INST-Newcreateloan1.xlsx|
 Then I "Edit Date " In Edit Repayment Schedule page
    |2632-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-DELETE-3-REPAY-VAR-INST-Newcreateloan1.xlsx|Edit Repayment Schedule|
  Then I verified the following Tabs details successfully 
	|2632-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-DELETE-3-REPAY-VAR-INST-Newcreateloan1.xlsx|Summary|Repayment Schedule|Transactions|

@RunnerClass4
 Scenario: 2633-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-ADD-3-REPAY-VAR-INST  
 
 Given I setup the clients 
 Then I entered the values into client from "Input" sheet
	|Createclient.xlsx|
 Then I should see client created successfully from "Output" sheet
	|Createclient.xlsx|
 When I set up the new create loan from "NewLoanInput" sheet
	| 2633-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-ADD-3-REPAY-VAR-INST-Newcreateloan1.xlsx|
 Then I "Edit Date " In Edit Repayment Schedule page
    |2633-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-ADD-3-REPAY-VAR-INST-Newcreateloan1.xlsx|Edit Repayment Schedule|
 Then I verified the following Tabs details successfully
	|2633-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-ADD-3-REPAY-VAR-INST-Newcreateloan1.xlsx|Summary|Repayment Schedule|Transactions|

@RunnerClass4
 Scenario: 2634-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-SHORT-PATTERN-INCREASE-MONTHBY-2-VAR-INST  
 
 Given I setup the clients 
 Then I entered the values into client from "Input" sheet
	|Createclient.xlsx|
 Then I should see client created successfully from "Output" sheet
	|Createclient.xlsx|
 When I set up the new create loan from "NewLoanInput" sheet
	| 2634-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-SHORT-PATTERN-INCREASE-MONTHBY-2-VAR-INST-Newcreateloan1.xlsx|
 Then I "Edit Date " In Edit Repayment Schedule page
    |2634-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-SHORT-PATTERN-INCREASE-MONTHBY-2-VAR-INST-Newcreateloan1.xlsx|Edit Repayment Schedule|
# Then I verified the following Tabs details successfully
#	|2634-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-SHORT-PATTERN-INCREASE-MONTHBY-2-VAR-INST-Newcreateloan1.xlsx|Summary|Repayment Schedule|Transactions|

@RunnerClass4
 Scenario: 2635-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-DATE-VAR-INST-PREPAY-15JAN  
 
 Given I setup the clients 
 Then I entered the values into client from "Input" sheet
	|Createclient.xlsx|
 Then I should see client created successfully from "Output" sheet
	|Createclient.xlsx|
 When I set up the new create loan from "NewLoanInput" sheet
	| 2635-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-DATE-VAR-INST-PREPAY-15JAN-Newcreateloan1.xlsx|
 Then I "Edit Date " In Edit Repayment Schedule page
    |2635-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-DATE-VAR-INST-PREPAY-15JAN-Newcreateloan1.xlsx|Edit Repayment Schedule|
 Then I "Make Pre Payment" and verified the following tabs
	|2635-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-DATE-VAR-INST-PREPAY-15JAN-Newcreateloan1.xlsx|Prepay Loan|Summary|Repayment Schedule|Transactions|

@RunnerClass4
 Scenario: 2636-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-ADD-VAR-INST-WAIVEINTEREST  
 
 Given I setup the clients 
 Then I entered the values into client from "Input" sheet
	|Createclient.xlsx|
 Then I should see client created successfully from "Output" sheet
	|Createclient.xlsx|
 When I set up the new create loan from "NewLoanInput" sheet
	| 2636-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-ADD-VAR-INST-WAIVEINTEREST-Newcreateloan1.xlsx|
 Then I " Add " In Edit Repayment Schedule page
    |2636-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-ADD-VAR-INST-WAIVEINTEREST-Newcreateloan1.xlsx|Edit Repayment Schedule|
 Then I "WaiveInterest" and verified the following tabs
	|2636-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-ADD-VAR-INST-WAIVEINTEREST-Newcreateloan1.xlsx|Modify Transaction|Summary|Repayment Schedule|Transactions|

@RunnerClass4
 Scenario: 2637-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-ADD-VAR-INST-WRITEOFF  
 
 Given I setup the clients 
 Then I entered the values into client from "Input" sheet
	|Createclient.xlsx|
 Then I should see client created successfully from "Output" sheet
	|Createclient.xlsx|
 When I set up the new create loan from "NewLoanInput" sheet
	| 2637-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-ADD-VAR-INST-WRITEOFF-Newcreateloan1.xlsx|
 Then I " Add " In Edit Repayment Schedule page
    |2637-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-ADD-VAR-INST-WRITEOFF-Newcreateloan1.xlsx|Edit Repayment Schedule|
 Then I "WRITEOFF" and verified the following tabs
	|2637-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-ADD-VAR-INST-WRITEOFF-Newcreateloan1.xlsx|Modify Transaction|Summary|Repayment Schedule|Transactions|

@RunnerClass4
 Scenario: 2638-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-ADD-VAR-INST-MOROTORIUM-PRIN+INT-2  
 
 Given I setup the clients 
 Then I entered the values into client from "Input" sheet
	|Createclient.xlsx|
 Then I should see client created successfully from "Output" sheet
	|Createclient.xlsx|
 When I set up the new create loan from "NewLoanInput" sheet
	|2638-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-ADD-VAR-INST-MOROTORIUM-PRIN+INT-2-Newcreateloan1.xlsx|
 Then I " Add " In Edit Repayment Schedule page
    |2638-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-ADD-VAR-INST-MOROTORIUM-PRIN+INT-2-Newcreateloan1.xlsx|Edit Repayment Schedule|
# Then I "WaiveInterest" and verified the following tabs
#	|2638-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-ADD-VAR-INST-MOROTORIUM-PRIN+INT-2-Newcreateloan1.xlsx|Modify Transaction|Summary|Repayment Schedule|Transactions|

@RunnerClass4
	Scenario: 2639-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-ADD-VAR-INST-OVERDUE-FEE-FLAT  
 Given I setup the product loan "Setup"
	| Productloannavigation.xlsx |
 Then I entered the values into product from "ProductLoanInput" Sheet
	|2639-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-ADD-VAR-INST-OVERDUE-FEE-FLAT-Loanproduct.xlsx|	
 Given I setup the clients 
 Then I entered the values into client from "Input" sheet
	|Createclient.xlsx|
 Then I should see client created successfully from "Output" sheet
	|Createclient.xlsx|
 When I set up the new create loan from "NewLoanInput" sheet
	| 2639-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-ADD-VAR-INST-OVERDUE-FEE-FLAT-Newcreateloan1.xlsx|
 Then I "Edit Date " In Edit Repayment Schedule page
    |2639-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-ADD-VAR-INST-OVERDUE-FEE-FLAT-Newcreateloan1.xlsx|Edit Repayment Schedule|
 Then I navigate to scheduler job & execute "Apply penalty to overdue loans"
 Then I verified the following Tabs details successfully 
	|2639-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-ADD-VAR-INST-OVERDUE-FEE-FLAT-Newcreateloan1.xlsx|Summary|Repayment Schedule|

@RunnerClass4
 Scenario: 2640-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-DATE-VAR-INST-SPEDUEDATE-FEE-%APRAMT-WAIVECHARGE  
 
 Given I setup the clients 
 Then I entered the values into client from "Input" sheet
	|Createclient.xlsx|
 Then I should see client created successfully from "Output" sheet
	|Createclient.xlsx|
 When I set up the new create loan from "NewLoanInput" sheet
	|2640-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-DATE-VAR-INST-SPEDUEDATE-FEE-%APRAMT-WAIVECHARGE-Newcreateloan1.xlsx|
 Then I " Add " In Edit Repayment Schedule page
    |2640-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-DATE-VAR-INST-SPEDUEDATE-FEE-%APRAMT-WAIVECHARGE-Newcreateloan1.xlsx|Edit Repayment Schedule|
 Then I "Wave Charge from Charges tab" and verified the following tabs
	|2640-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-DATE-VAR-INST-SPEDUEDATE-FEE-%APRAMT-WAIVECHARGE-Newcreateloan1.xlsx|Charges|Summary|Repayment Schedule|Transactions|

@RunnerClass4
 Scenario: 2641-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-DATE-VAR-INST-AddTranche  
 
 Given I setup the clients 
 Then I entered the values into client from "Input" sheet
	|Createclient.xlsx|
 Then I should see client created successfully from "Output" sheet
	|Createclient.xlsx|
 When I set up the new create loan from "NewLoanInput" sheet
	|2641-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-DATE-VAR-INST-AddTranche-Newcreateloan1.xlsx|
 Then I " Add " In Edit Repayment Schedule page
    |2641-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-DATE-VAR-INST-AddTranche-Newcreateloan1.xlsx|Edit Repayment Schedule|
 Then I "Add trance from trache tab" and verified the following tabs
	|2641-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-DATE-VAR-INST-AddTranche-Newcreateloan1.xlsx|Loan Tranche Details|Summary|Repayment Schedule|Transactions|
	
@RunnerClass4
 Scenario: 2642-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-DATE-VAR-INST-DeleteTraanche  
 
 Given I setup the clients 
 Then I entered the values into client from "Input" sheet
	|Createclient.xlsx|
 Then I should see client created successfully from "Output" sheet
	|Createclient.xlsx|
 When I set up the new create loan from "NewLoanInput" sheet
	|2642-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-DATE-VAR-INST-DeleteTraanche-Newcreateloan1.xlsx|
 Then I " Add " In Edit Repayment Schedule page
    |2642-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-DATE-VAR-INST-DeleteTraanche-Newcreateloan1.xlsx|Edit Repayment Schedule|
  Then I "Delete trance from trache tab" and verified the following tabs
	|2642-MS-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-DATE-VAR-INST-DeleteTraanche-Newcreateloan1.xlsx|Loan Tranche Details|Summary|Repayment Schedule|Transactions|
	
 

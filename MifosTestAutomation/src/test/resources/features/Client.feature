Feature:Client
Background:
	Given I navigate to mifos
	And I use login folder 
	When I login into mifos site using excel sheet
			| Login.xlsx  | 
	Then I should see logged in successfully

@clientcreationg		
Scenario Outline: As User creates the clients using excelsheet
	
	Given I setup the clients 
		| Clientnavigation.xlsx |
	When I entered the values into client form using
		 |<Createclient>|
	Then I should see client created successfully
	     |<Createclient>|
	When I set up the new create loan
	     |<Newcreateloan>|
	Then I verified the "Summary" details successfully	
		|<Newcreateloan>|
	And I verified the "Repayment Schedule" details successfully	
		|<Newcreateloan>|

Examples:
 #| Createclient       | Newcreateloan       |
 | Createclient.xlsx  | 6Newcreateloan.xlsx  |
#| Createclient1.xlsx | Newcreateloan1.xlsx |
 #| Createclient2.xlsx | Newcreateloan2.xlsx |



@clientcreation		
Scenario: As Admin search the customer and creates the new loan
 
  	when I search with "salma" on mifos
 	And I set up the new create loan
    	 | Newcreateloan.xlsx |
	And I disburse the new created loan
		 | Disburse.xlsx  |
    Then I verified the "Summary" details successfully	
		|Newcreateloan.xlsx|

@clientcreations		
Scenario: As User creates the loan, disburse and verifies the tabs and again undo disburse 

    Given I setup the clients 
		| Clientnavigation.xlsx |
	When I entered the values into client form using
		 |Createclient.xlsx|
	Then I should see client created successfully
	     |Createclient.xlsx|
	     
	When I set up the new create loan
       | Newcreateloan.xlsx |
	And I disburse the new created loan
		 | Disburse.xlsx  |
    Then I verified the "Summary" details successfully	
		| Newcreateloan.xlsx |
    And I verified the "Repayment Schedule" details successfully	
		| Newcreateloan.xlsx |
    
    Then I undo the disburse successfully
  
@clientcreations	
Scenario: As User creates the loans,multiple disburse and verifies the tabs 

    Given I setup the clients 
		| Clientnavigation.xlsx |
	When I entered the values into client form using
		 |Createclient.xlsx|
	Then I should see client created successfully
	     |Createclient.xlsx|
	     
	When I set up the new create loan
	     |2Newcreateloan.xlsx|
	And I disburse the new created loan
		 | 2Disburse.xlsx  |
    Then I verified the "Summary" details successfully	
		#|Newcreateloan.xlsx|
    #And I verified the "Repayment Schedule" details successfully	
		#|Newcreateloan.xlsx|
    
    #And I disburse the new created loan
		 #| Disburse1.xlsx  |
    #Then I verified the "Summary" details successfully	
		#|Newcreateloan.xlsx|
    #And I verified the "Repayment Schedule" details successfully	
		#|Newcreateloan.xlsx|
	
	#And I disburse the new created loan
		 #| Disburse.xlsx  |
    #Then I verified the "Summary" details successfully	
		#|Newcreateloan.xlsx|
    #And I verified the "Repayment Schedule" details successfully	
		#|Newcreateloan.xlsx|
      
 
@clientcreations		
Scenario: As User creates the loans,make repayment and verifies the tabs 

    Given I setup the clients 
		| Clientnavigation.xlsx |
	When I entered the values into client form using
	 	|Createclient.xlsx|
	Then I should see client created successfully
	     |Createclient.xlsx|
	     
	When I set up the new create loan
     |Newcreateloan.xlsx|
	And I disburse the new created loan
		 | Disburse.xlsx  |
    Then I verified the "Summary" details successfully	
		|Newcreateloan.xlsx|
    And I verified the "Repayment Schedule" details successfully	
		|Newcreateloan.xlsx|
    
    When I make repayment and verified the following tabs
       |Makerepayment1.xlsx|Repayment Schedule|Transactions|
       |Makerepayment2.xlsx|Summary|Repayment Schedule|Transactions|

@clientcreations		
Scenario: As User creates the loans,make multiple repayment and verifies the tabs 

    Given I setup the clients 
		| Clientnavigation.xlsx |
	When I entered the values into client form using
	 	|Createclient.xlsx|
	Then I should see client created successfully
	     |Createclient.xlsx|
	     
	When I set up the new create loan
     |Newcreateloan.xlsx|
	And I disburse the new created loan
		 | Disburse.xlsx  |
    Then I verified the "Summary" details successfully	
		|Newcreateloan.xlsx|
    And I verified the "Repayment Schedule" details successfully	
		|Newcreateloan.xlsx|
    
    When I make repayment and verified the following tabs
       |Makerepayment1.xlsx|Summary|Repayment Schedule|Transactions|
       |Makerepayment2.xlsx|Summary|Repayment Schedule|Transactions|  
       
    When I make repayment and verified the following tabs
       |Makerepayment1.xlsx|Repayment Schedule|Transactions|
       |Makerepayment2.xlsx|Summary|Repayment Schedule|Transactions|   
       |Makerepayment3.xlsx|Summary|Repayment Schedule|Transactions|
       
    When I make repayment and verified the following tabs
       |Makerepayment1.xlsx|Repayment Schedule|Transactions|
       |Makerepayment2.xlsx|Summary|Repayment Schedule|Transactions|   
       |Makerepayment3.xlsx|Summary|Repayment Schedule|Transactions| 
         
@clientcreations		
Scenario: As User creates the loans,make repayment,verifies the tabs and make reverse of transcation

    Given I setup the clients 
		| Clientnavigation.xlsx |
	When I entered the values into client form using
	    |Createclient.xlsx|
	Then I should see client created successfully
	     |Createclient.xlsx|
	     
	When I set up the new create loan
	     |Newcreateloan.xlsx|
	And I disburse the new created loan
		 | Disburse.xlsx  |
    Then I verified the "Summary" details successfully	
		|Newcreateloan.xlsx|
    And I verified the "Repayment Schedule" details successfully	
		|Newcreateloan.xlsx|
    
    When I make repayment and verified the following tabs
       |Makerepayment3.xlsx|Repayment Schedule|
       |Makerepayment2.xlsx|Summary|Repayment Schedule|Transactions| 
  
    And I make reverse of transaction   

@clientcreations		
Scenario: As User creates and make savings

    Given I setup the clients 
		| Clientnavigation.xlsx |
	When I entered the values into client form using
	    |Createclient.xlsx|
	Then I should see client created successfully
	     |Createclient.xlsx|
	     
	When I set up the new savings
	     |Newsavings.xlsx|

	     
	     
@clientcreations	
Scenario: As User creates the different loans to single user
	
	Given I setup the clients 
		| Clientnavigation.xlsx |
	When I entered the values into client form using
	    |Createclient.xlsx|
	Then I should see client created successfully
	     |Createclient.xlsx|
	     
	When I set up the new create loan
	     |Newcreateloan.xlsx|
	And I disburse the new created loan
		 | Disburse.xlsx  |
    Then I verified the "Summary" details successfully	
		|Newcreateloan.xlsx|
    And I verified the "Repayment Schedule" details successfully	
		|Newcreateloan.xlsx|
	When I make repayment and verified the following tabs
       |Makerepayment1.xlsx|Summary|Repayment Schedule|Transactions| 
       |Makerepayment2.xlsx|Summary|Repayment Schedule|Transactions| 
    
    When I went back to the client
    And I set up the new create loan
	    |2Newcreateloan.xlsx|
	And I disburse the new created loan
		 | 2Disburse.xlsx  |
    Then I verified the "Summary" details successfully	
		|2Newcreateloan.xlsx|
    And I verified the "Repayment Schedule" details successfully	
		|2Newcreateloan.xlsx|
		
@prepayloan 
Scenario: As User creates and make prepay loan

    Given I setup the clients 
  | Clientnavigation.xlsx |
 When I entered the values into client form using
     |Createclient.xlsx|
 Then I should see client created successfully
      |Createclient.xlsx|
   
 When I set up the new create loan
      |Newcreateloan.xlsx|
 And I disburse the new created loan
   | Disburse.xlsx  |
  When I make prepayloan and verified the following tabs
       |Prepayloan1.xlsx|Summary|Repayment Schedule|Transaction|		
		
       
    
		
		     
@scenario1
Scenario: As User creates the different loans to single user
	Given I setup the clients 
		| Clientnavigation.xlsx |
	When I entered the values into client form using
		 |Createclient.xlsx|
	Then I should see client created successfully
	     |Createclient.xlsx|
	When I set up the new create loan
	     |Newcreateloan.xlsx|
	And I disburse the new created loan
		 | Disburse.xlsx  |   
	Then I verified the "Summary" details successfully	
		|Newcreateloan.xlsx|
	Then I verified the "Repayment Schedule" details successfully	
		|Newcreateloan.xlsx|
   
    When I make repayment and verified the following tabs
       |Makerepayment1.xlsx|Summary|Repayment Schedule|Transactions| 
       |Makerepayment2.xlsx|Summary|Repayment Schedule|Transactions| 
       
  
@scenario2
Scenario: As User creates the different loans to single user
	Given I setup the clients 
		| Clientnavigation.xlsx |
	When I entered the values into client form using
		 |Createclient.xlsx|
	Then I should see client created successfully
	     |Createclient.xlsx|
	When I set up the new create loan
	     |Newcreateloan.xlsx|
	And I disburse the new created loan
		 | Disburse.xlsx  |   
	Then I verified the "Summary" details successfully	
		|Newcreateloan.xlsx|
	Then I verified the "Repayment Schedule" details successfully	
		|Newcreateloan.xlsx|
   
    When I make repayment and verified the following tabs
       |Makerepayment1.xlsx|Summary|Repayment Schedule|Transactions| 
       |Makerepayment2.xlsx|Summary|Repayment Schedule|Transactions| 
       
   And I disburse the new created loan
		 | Disburse1.xlsx  |   
	Then I verified the "Summary" details successfully	
		|Newcreateloan.xlsx|
	Then I verified the "Repayment Schedule" details successfully	
		|Newcreateloan.xlsx|
   
    When I make repayment and verified the following tabs
       |Makerepayment3.xlsx|Summary|Repayment Schedule|Transactions| 
       |Makerepayment2.xlsx|Summary|Repayment Schedule|Transactions| 
   
   
   ##eresh     
       @Advancerepayment		
	
	Scenario: As User creates the loans,make repayment and verifies the tabs 
	
    Given I setup the clients 
		| Clientnavigation.xlsx |
	When I entered the values into client form using
	 	|Createclient.xlsx|
	Then I should see client created successfully
	     |Createclient.xlsx|
	     
	When I set up the new create loan
     |389-RBI-EI-DB-DL-REC-NON-RNI-CTPD-SAR-MD-TR-1-EarlyRePayment-Newcreateloan.xlsx|

    Then I verified the "Summary" details successfully	
		|389-RBI-EI-DB-DL-REC-NON-RNI-CTPD-SAR-MD-TR-1-EarlyRePayment-Newcreateloan.xlsx|
    And I verified the "Repayment Schedule" details successfully	
		|389-RBI-EI-DB-DL-REC-NON-RNI-CTPD-SAR-MD-TR-1-EarlyRePayment-Newcreateloan.xlsx|
    
    When I make repayment and verified the following tabs
       |389-RBI-EI-DB-DL-REC-NON-RNI-CTPD-SAR-MD-TR-1-EarlyRePayment-Makerepayment1.xlsx|Repayment Schedule|

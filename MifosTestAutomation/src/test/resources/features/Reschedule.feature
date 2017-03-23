Feature:Reschedule/LoanProvisioning
Background:
	Given I navigate to mifos using "default#/"
	And I login into mifos site using "Login" excel sheet
		| Login.xlsx  |
	Then I should see logged in successfully



#################################################  LOAN PROVISIONG  ###################################################################



@RunnerClass3
	  Scenario:4669-DISBURSELOANon01JAN2015-RUNSCHEDULERJOB-VIEWJOURNALENTRIES-ON-01MAR2015
      
      Given I Navigate and create Loan Provisioning "Criteria" from "Loan Provisioning Criteria" Sheet
                |4669-DISBURSELOANon01JAN2015-RUNSCHEDULERJOB-VIEWJOURNALENTRIES-ON-01MAR2015.xlsx|
      Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			|4669-DISBURSELOANon01JAN2015-RUNSCHEDULERJOB-VIEWJOURNALENTRIES-ON-01MAR2015.xlsx|
	  Given I Navigate and create Loan Provisioning "Entries" from "Create Provisioning Entry" Sheet
	            |4669-DISBURSELOANon01JAN2015-RUNSCHEDULERJOB-VIEWJOURNALENTRIES-ON-01MAR2015.xlsx|
      And I verified the "Loan Provisioning Journals" details successfully 
	  			|4669-DISBURSELOANon01JAN2015-RUNSCHEDULERJOB-VIEWJOURNALENTRIES-ON-01MAR2015.xlsx|


@RunnerClass3
	  Scenario:4670-DISBURSELOANon01JAN2015-REPAY0N01FEB2015-RUNSCHEDULERJOB-VIEWJOURNALENTRIES-ON-02MAR2015
      
      
      Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			|4670-DISBURSELOANon01JAN2015-REPAY0N01FEB2015-RUNSCHEDULERJOB-VIEWJOURNALENTRIES-ON-02MAR2015.xlsx|
	  Then I make repayment and verified the following tabs
       			|4670-DISBURSELOANon01JAN2015-REPAY0N01FEB2015-RUNSCHEDULERJOB-VIEWJOURNALENTRIES-ON-02MAR2015.xlsx|Repay1|
	  Given I Navigate and create Loan Provisioning "Entries" from "Create Provisioning Entry" Sheet
	            |4670-DISBURSELOANon01JAN2015-REPAY0N01FEB2015-RUNSCHEDULERJOB-VIEWJOURNALENTRIES-ON-02MAR2015.xlsx|
      And I verified the "Loan Provisioning Journals" details successfully 
	  			|4670-DISBURSELOANon01JAN2015-REPAY0N01FEB2015-RUNSCHEDULERJOB-VIEWJOURNALENTRIES-ON-02MAR2015.xlsx|
	

	
@RunnerClass3
	  Scenario:4671-DISBLOAN01JAN2015-REPAY01FEB2015-RUNSCHEDJOB-VIEWJOURNALENT-03MAR2015-UNDOLASTTRANSACTION-RUNSCHEDJOB-VIEWJOURNALENTRIES-04MAR2015
      
      
      Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			|4671-DISBLOAN01JAN2015-REPAY01FEB2015-RUNSCHEDJOB-VIEWJOURNALENT-03MAR2015-UNDOLASTTRANSACTION-RUNSCHEDJOB-VIEWJOURNALENTRIES-04MAR2015.xlsx|
	  Then I make repayment and verified the following tabs
       			|4671-DISBLOAN01JAN2015-REPAY01FEB2015-RUNSCHEDJOB-VIEWJOURNALENT-03MAR2015-UNDOLASTTRANSACTION-RUNSCHEDJOB-VIEWJOURNALENTRIES-04MAR2015.xlsx|Repay1|
	  Given I Navigate and create Loan Provisioning "Entries" from "Create Provisioning Entry" Sheet
	            |4671-DISBLOAN01JAN2015-REPAY01FEB2015-RUNSCHEDJOB-VIEWJOURNALENT-03MAR2015-UNDOLASTTRANSACTION-RUNSCHEDJOB-VIEWJOURNALENTRIES-04MAR2015.xlsx|
      And I verified the "Loan Provisioning Journals" details successfully 
	  			|4671-DISBLOAN01JAN2015-REPAY01FEB2015-RUNSCHEDJOB-VIEWJOURNALENT-03MAR2015-UNDOLASTTRANSACTION-RUNSCHEDJOB-VIEWJOURNALENTRIES-04MAR2015.xlsx|
	  Then I "undo transaction from transaction tab" and verified the following tabs
	  			|4671-DISBLOAN01JAN2015-REPAY01FEB2015-RUNSCHEDJOB-VIEWJOURNALENT-03MAR2015-UNDOLASTTRANSACTION-RUNSCHEDJOB-VIEWJOURNALENTRIES-04MAR2015.xlsx|Modify Transaction|
	  Given I Navigate and create Loan Provisioning "Entries" from "Create Provisioning Entry1" Sheet
	            |4671-DISBLOAN01JAN2015-REPAY01FEB2015-RUNSCHEDJOB-VIEWJOURNALENT-03MAR2015-UNDOLASTTRANSACTION-RUNSCHEDJOB-VIEWJOURNALENTRIES-04MAR2015.xlsx|
      And I verified the "Loan Provisioning Journals1" details successfully 
	  			|4671-DISBLOAN01JAN2015-REPAY01FEB2015-RUNSCHEDJOB-VIEWJOURNALENT-03MAR2015-UNDOLASTTRANSACTION-RUNSCHEDJOB-VIEWJOURNALENTRIES-04MAR2015.xlsx|
				
@RunnerClass3 
	  Scenario:4672-DISB01JAN2015-SCHEDJOB-VIEWJOURENT05MAR2015-RESCHD-LOAN-GRACEON-PRI-INT-3-RUNSCHEDJOB-VIEWJOURENT-06MAR2015 
      
      
      Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			|4672-DISB01JAN2015-SCHEDJOB-VIEWJOURENT05MAR2015-RESCHD-LOAN-GRACEON-PRI-INT-3-RUNSCHEDJOB-VIEWJOURENT-06MAR2015.xlsx|
	  Given I Navigate and create Loan Provisioning "Entries" from "Create Provisioning Entry" Sheet
	            |4672-DISB01JAN2015-SCHEDJOB-VIEWJOURENT05MAR2015-RESCHD-LOAN-GRACEON-PRI-INT-3-RUNSCHEDJOB-VIEWJOURENT-06MAR2015.xlsx|
      And I verified the "Loan Provisioning Journals" details successfully 
	  			|4672-DISB01JAN2015-SCHEDJOB-VIEWJOURENT05MAR2015-RESCHD-LOAN-GRACEON-PRI-INT-3-RUNSCHEDJOB-VIEWJOURENT-06MAR2015.xlsx|
	  Then I "Edit Date " In Edit Repayment Schedule page
                |4672-DISB01JAN2015-SCHEDJOB-VIEWJOURENT05MAR2015-RESCHD-LOAN-GRACEON-PRI-INT-3-RUNSCHEDJOB-VIEWJOURENT-06MAR2015.xlsx|Edit Repayment Schedule|
	  Given I Navigate and create Loan Provisioning "Entries" from "Create Provisioning Entry1" Sheet
	            |4672-DISB01JAN2015-SCHEDJOB-VIEWJOURENT05MAR2015-RESCHD-LOAN-GRACEON-PRI-INT-3-RUNSCHEDJOB-VIEWJOURENT-06MAR2015.xlsx|
      And I verified the "Loan Provisioning Journals1" details successfully 
	  			|4672-DISB01JAN2015-SCHEDJOB-VIEWJOURENT05MAR2015-RESCHD-LOAN-GRACEON-PRI-INT-3-RUNSCHEDJOB-VIEWJOURENT-06MAR2015.xlsx|

@RunnerClass3 
	  Scenario:4673-DISB01JAN2015-REPAY-LESS-ON-01FEB2015-RUNSCHEDJOB-VIEWJOURENT-ON-07MAR2015 
      
      
      Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			|4673-DISB01JAN2015-REPAY-LESS-ON-01FEB2015-RUNSCHEDJOB-VIEWJOURENT-ON-07MAR2015.xlsx|
	  Then I make repayment and verified the following tabs
       			|4673-DISB01JAN2015-REPAY-LESS-ON-01FEB2015-RUNSCHEDJOB-VIEWJOURENT-ON-07MAR2015.xlsx|Repay1|
      Given I Navigate and create Loan Provisioning "Entries" from "Create Provisioning Entry" Sheet
	            |4673-DISB01JAN2015-REPAY-LESS-ON-01FEB2015-RUNSCHEDJOB-VIEWJOURENT-ON-07MAR2015.xlsx|
      And I verified the "Loan Provisioning Journals" details successfully 
	  			|4673-DISB01JAN2015-REPAY-LESS-ON-01FEB2015-RUNSCHEDJOB-VIEWJOURENT-ON-07MAR2015.xlsx|
	 				
				
@RunnerClass3 
	  Scenario:4674-DISB01JAN2015-EARLYREPAY-ON-15JAN2015-RUNSCHEDJOB-VIEWJOURENT-ON-08MAR2015 
      
      
      Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			|4674-DISB01JAN2015-EARLYREPAY-ON-15JAN2015-RUNSCHEDJOB-VIEWJOURENT-ON-08MAR2015.xlsx|
	  Then I make repayment and verified the following tabs
       			|4674-DISB01JAN2015-EARLYREPAY-ON-15JAN2015-RUNSCHEDJOB-VIEWJOURENT-ON-08MAR2015.xlsx|Repay1|
      Given I Navigate and create Loan Provisioning "Entries" from "Create Provisioning Entry" Sheet
	            |4674-DISB01JAN2015-EARLYREPAY-ON-15JAN2015-RUNSCHEDJOB-VIEWJOURENT-ON-08MAR2015.xlsx|
      And I verified the "Loan Provisioning Journals" details successfully 
	  			|4674-DISB01JAN2015-EARLYREPAY-ON-15JAN2015-RUNSCHEDJOB-VIEWJOURENT-ON-08MAR2015.xlsx|

@RunnerClass3  
	  Scenario:4675-DISB01JAN2015-REPAY01FEB2015-RUNSCHEDJOB-VIEWJOURENT09MAR2015-WRITEOFFLOAN-RUNSCHEDJOB-VIEWJOURENT10MAR2015 
      
      
      Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			|4675-DISB01JAN2015-REPAY01FEB2015-RUNSCHEDJOB-VIEWJOURENT09MAR2015-WRITEOFFLOAN-RUNSCHEDJOB-VIEWJOURENT10MAR2015.xlsx|
	  Then I make repayment and verified the following tabs
       			|4675-DISB01JAN2015-REPAY01FEB2015-RUNSCHEDJOB-VIEWJOURENT09MAR2015-WRITEOFFLOAN-RUNSCHEDJOB-VIEWJOURENT10MAR2015.xlsx|Repay1|
      Given I Navigate and create Loan Provisioning "Entries" from "Create Provisioning Entry" Sheet
	            |4675-DISB01JAN2015-REPAY01FEB2015-RUNSCHEDJOB-VIEWJOURENT09MAR2015-WRITEOFFLOAN-RUNSCHEDJOB-VIEWJOURENT10MAR2015.xlsx|
      And I verified the "Loan Provisioning Journals" details successfully 
	  			|4675-DISB01JAN2015-REPAY01FEB2015-RUNSCHEDJOB-VIEWJOURENT09MAR2015-WRITEOFFLOAN-RUNSCHEDJOB-VIEWJOURENT10MAR2015.xlsx|
	  Then I "WaiveInterest" and verified the following tabs
	  			|4675-DISB01JAN2015-REPAY01FEB2015-RUNSCHEDJOB-VIEWJOURENT09MAR2015-WRITEOFFLOAN-RUNSCHEDJOB-VIEWJOURENT10MAR2015.xlsx|Modify Transaction|
	  Given I Navigate and create Loan Provisioning "Entries" from "Create Provisioning Entry1" Sheet
	            |4675-DISB01JAN2015-REPAY01FEB2015-RUNSCHEDJOB-VIEWJOURENT09MAR2015-WRITEOFFLOAN-RUNSCHEDJOB-VIEWJOURENT10MAR2015.xlsx|
      And I Verify "element" not visible
	            |ProvisionEntries| 			
				
				
@RunnerClass3   
	  Scenario:4676-DISB01JAN2015-REPAY01FEB2015-RUNSCHEDJOB-VIEWJOURENT11MAR2015-FORECLOSELOAN15FEB2015-RUNSCHEDJOB-VIEWJOURENT12MAR2015 
      
      
      Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			|4676-DISB01JAN2015-REPAY01FEB2015-RUNSCHEDJOB-VIEWJOURENT11MAR2015-FORECLOSELOAN15FEB2015-RUNSCHEDJOB-VIEWJOURENT12MAR2015.xlsx|
	  Then I make repayment and verified the following tabs
       			|4676-DISB01JAN2015-REPAY01FEB2015-RUNSCHEDJOB-VIEWJOURENT11MAR2015-FORECLOSELOAN15FEB2015-RUNSCHEDJOB-VIEWJOURENT12MAR2015.xlsx|Repay1|
      Given I Navigate and create Loan Provisioning "Entries" from "Create Provisioning Entry" Sheet
	            |4676-DISB01JAN2015-REPAY01FEB2015-RUNSCHEDJOB-VIEWJOURENT11MAR2015-FORECLOSELOAN15FEB2015-RUNSCHEDJOB-VIEWJOURENT12MAR2015.xlsx|
      And I verified the "Loan Provisioning Journals" details successfully 
	  			|4676-DISB01JAN2015-REPAY01FEB2015-RUNSCHEDJOB-VIEWJOURENT11MAR2015-FORECLOSELOAN15FEB2015-RUNSCHEDJOB-VIEWJOURENT12MAR2015.xlsx|
	  Then I "Foreclosure" and verified the following tabs
	  			|4676-DISB01JAN2015-REPAY01FEB2015-RUNSCHEDJOB-VIEWJOURENT11MAR2015-FORECLOSELOAN15FEB2015-RUNSCHEDJOB-VIEWJOURENT12MAR2015.xlsx| Foreclosure |
	  Given I Navigate and create Loan Provisioning "Entries" from "Create Provisioning Entry1" Sheet
	            |4676-DISB01JAN2015-REPAY01FEB2015-RUNSCHEDJOB-VIEWJOURENT11MAR2015-FORECLOSELOAN15FEB2015-RUNSCHEDJOB-VIEWJOURENT12MAR2015.xlsx|
      And I Verify "element" not visible
	            |ProvisionEntries| 	

@RunnerClass3   
	  Scenario:4677-DISB01JAN2015-RUNSCHEDJOB-VIEWJOURENT13MAR2015-UNDODISBRSE-RUNSCHEDJOB-VIEWJOURENT14MAR2015
      
      
      Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			|4677-DISB01JAN2015-RUNSCHEDJOB-VIEWJOURENT13MAR2015-UNDODISBRSE-RUNSCHEDJOB-VIEWJOURENT14MAR2015.xlsx|
      Given I Navigate and create Loan Provisioning "Entries" from "Create Provisioning Entry" Sheet
	            |4677-DISB01JAN2015-RUNSCHEDJOB-VIEWJOURENT13MAR2015-UNDODISBRSE-RUNSCHEDJOB-VIEWJOURENT14MAR2015.xlsx|
      And I verified the "Loan Provisioning Journals" details successfully 
	  			|4677-DISB01JAN2015-RUNSCHEDJOB-VIEWJOURENT13MAR2015-UNDODISBRSE-RUNSCHEDJOB-VIEWJOURENT14MAR2015.xlsx|
	  Then I "Do Undo Disbursal" and verified the following tabs
	            |4677-DISB01JAN2015-RUNSCHEDJOB-VIEWJOURENT13MAR2015-UNDODISBRSE-RUNSCHEDJOB-VIEWJOURENT14MAR2015.xlsx|Undo Disbursal|
	  Given I Navigate and create Loan Provisioning "Entries" from "Create Provisioning Entry1" Sheet
	            |4677-DISB01JAN2015-RUNSCHEDJOB-VIEWJOURENT13MAR2015-UNDODISBRSE-RUNSCHEDJOB-VIEWJOURENT14MAR2015.xlsx|
      And I Verify "element" not visible
	            |ProvisionEntries| 						
	            
	            	
@RunnerClass3    
	  Scenario:4678-DISB01JAN2015-REPAY01FEB2015-RUNSCHEDJOB-VIEWJOURENT15MAR2015-PREPAY15FEB2015-RUNSCHEDJOB-VIEWJOURENT01APR2015
    
      Given I setup the product loan "Setup"
				| Productloannavigation.xlsx |
 	  Then I entered the values into product from "ProductLoanInput" Sheet
				|4678-DISB01JAN2015-REPAY01FEB2015-RUNSCHEDJOB-VIEWJOURENT15MAR2015-PREPAY15FEB2015-RUNSCHEDJOB-VIEWJOURENT01APR2015.xlsx|   
      Given I Navigate and create Loan Provisioning "Criteria" from "Loan Provisioning Criteria" Sheet
                |4678-DISB01JAN2015-REPAY01FEB2015-RUNSCHEDJOB-VIEWJOURENT15MAR2015-PREPAY15FEB2015-RUNSCHEDJOB-VIEWJOURENT01APR2015.xlsx|
      Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			|4678-DISB01JAN2015-REPAY01FEB2015-RUNSCHEDJOB-VIEWJOURENT15MAR2015-PREPAY15FEB2015-RUNSCHEDJOB-VIEWJOURENT01APR2015.xlsx|
      Then I make repayment and verified the following tabs
       			|4678-DISB01JAN2015-REPAY01FEB2015-RUNSCHEDJOB-VIEWJOURENT15MAR2015-PREPAY15FEB2015-RUNSCHEDJOB-VIEWJOURENT01APR2015.xlsx|Repay1|
      Given I Navigate and create Loan Provisioning "Entries" from "Create Provisioning Entry" Sheet
	            |4678-DISB01JAN2015-REPAY01FEB2015-RUNSCHEDJOB-VIEWJOURENT15MAR2015-PREPAY15FEB2015-RUNSCHEDJOB-VIEWJOURENT01APR2015.xlsx|
      And I verified the "Loan Provisioning Journals" details successfully 
	  			|4678-DISB01JAN2015-REPAY01FEB2015-RUNSCHEDJOB-VIEWJOURENT15MAR2015-PREPAY15FEB2015-RUNSCHEDJOB-VIEWJOURENT01APR2015.xlsx|
	  Then I "Make Pre Payment" and verified the following tabs
	  			|4678-DISB01JAN2015-REPAY01FEB2015-RUNSCHEDJOB-VIEWJOURENT15MAR2015-PREPAY15FEB2015-RUNSCHEDJOB-VIEWJOURENT01APR2015.xlsx|Prepay Loan|
	  Then I navigate to scheduler job & execute "Generate Loan Loss Provisioning"
	  Given I Navigate and create Loan Provisioning "Entries" from "Create Provisioning Entry1" Sheet
	            |4678-DISB01JAN2015-REPAY01FEB2015-RUNSCHEDJOB-VIEWJOURENT15MAR2015-PREPAY15FEB2015-RUNSCHEDJOB-VIEWJOURENT01APR2015.xlsx|
      And I Verify "element" not visible
	            |ProvisionEntries| 		
	



###################################################  RESCHEDULE  ################################################################



@RunnerClass3
	  Scenario: 4650-DISB01JAN2015-RESCHDULE01FEB2015-INSTRESCHDULE15FEB2015
      Given I setup the product loan "Setup"
				| Productloannavigation.xlsx |
	  Then I entered the values into product from "ProductLoanInput" Sheet
				|4650-DISB01JAN2015-RESCHDULE01FEB2015-INSTRESCHDULE15FEB2015.xlsx|
      Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			|4650-DISB01JAN2015-RESCHDULE01FEB2015-INSTRESCHDULE15FEB2015.xlsx|
	  Then I "Edit Date " In Edit Repayment Schedule page
                |4650-DISB01JAN2015-RESCHDULE01FEB2015-INSTRESCHDULE15FEB2015.xlsx|Edit Repayment Schedule|
      And I verified the "Repayment Schedule" details successfully 
	  			|4650-DISB01JAN2015-RESCHDULE01FEB2015-INSTRESCHDULE15FEB2015.xlsx|
				
@RunnerClass3
	  Scenario: 4651-DISB01JAN2015-RESCHDULE01FEB2015-Mid-GracePeriods-principal-3and-interest-3
      
      Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			|4651-DISB01JAN2015-RESCHDULE01FEB2015-Mid-GracePeriods-principal-3and-interest-3.xlsx|
	  Then I "Edit Date " In Edit Repayment Schedule page
                |4651-DISB01JAN2015-RESCHDULE01FEB2015-Mid-GracePeriods-principal-3and-interest-3.xlsx|Edit Repayment Schedule|
      And I verified the "Repayment Schedule" details successfully 
	  			|4651-DISB01JAN2015-RESCHDULE01FEB2015-Mid-GracePeriods-principal-3and-interest-3.xlsx|
				
@RunnerClass3
	  Scenario: 4652-DISB01JAN2015-RESCHDULE01FEB2015-EXTN-REPAYMENTPRD-NUMBER-OF-REPAYMENT-3
      
      Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			|4652-DISB01JAN2015-RESCHDULE01FEB2015-EXTN-REPAYMENTPRD-NUMBER-OF-REPAYMENT-3.xlsx|
	  Then I "Edit Date " In Edit Repayment Schedule page
                |4652-DISB01JAN2015-RESCHDULE01FEB2015-EXTN-REPAYMENTPRD-NUMBER-OF-REPAYMENT-3.xlsx|Edit Repayment Schedule|
      And I verified the "Repayment Schedule" details successfully 
	  			|4652-DISB01JAN2015-RESCHDULE01FEB2015-EXTN-REPAYMENTPRD-NUMBER-OF-REPAYMENT-3.xlsx|
				
@RunnerClass3
	  Scenario: 4653-DISB01JAN2015-REPAYMENTON-1FEB2015AND1MAR2015-RESCHDULE01APR2015-INTEREST-ON-REMAINDERLOAN-24
      
      Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			|4653-DISB01JAN2015-REPAYMENTON-1FEB2015AND1MAR2015-RESCHDULE01APR2015-INTEREST-ON-REMAINDERLOAN-24.xlsx|
	  Then I make repayment and verified the following tabs
     			|4653-DISB01JAN2015-REPAYMENTON-1FEB2015AND1MAR2015-RESCHDULE01APR2015-INTEREST-ON-REMAINDERLOAN-24.xlsx|Repay1|Repay2|
	  Then I "Edit Date " In Edit Repayment Schedule page
                |4653-DISB01JAN2015-REPAYMENTON-1FEB2015AND1MAR2015-RESCHDULE01APR2015-INTEREST-ON-REMAINDERLOAN-24.xlsx|Edit Repayment Schedule|
      And I verified the "Repayment Schedule" details successfully 
	  			|4653-DISB01JAN2015-REPAYMENTON-1FEB2015AND1MAR2015-RESCHDULE01APR2015-INTEREST-ON-REMAINDERLOAN-24.xlsx|
				
@RunnerClass3
	  Scenario: 4654-DISB01JAN2015-EARLYREPAYMENTON-15JAN2015-RESCHDULE01MAR2015-INTEREST-ON-REMAINDERLOAN-24
      
      Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			|4654-DISB01JAN2015-EARLYREPAYMENTON-15JAN2015-RESCHDULE01MAR2015-INTEREST-ON-REMAINDERLOAN-24.xlsx|
	  Then I make repayment and verified the following tabs
     			|4654-DISB01JAN2015-EARLYREPAYMENTON-15JAN2015-RESCHDULE01MAR2015-INTEREST-ON-REMAINDERLOAN-24.xlsx|Repay1|
	  Then I "Edit Date " In Edit Repayment Schedule page
                |4654-DISB01JAN2015-EARLYREPAYMENTON-15JAN2015-RESCHDULE01MAR2015-INTEREST-ON-REMAINDERLOAN-24.xlsx|Edit Repayment Schedule|
      And I verified the "Repayment Schedule" details successfully 
	  			|4654-DISB01JAN2015-EARLYREPAYMENTON-15JAN2015-RESCHDULE01MAR2015-INTEREST-ON-REMAINDERLOAN-24.xlsx|
				
@RunnerClass3
	  Scenario: 4655-DISB01JAN2015-LESSREPAYMENTON-01FEB2015-RESCHDULE01MAR2015-INTEREST-ON-REMAINDERLOAN-2
      
      Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			|4655-DISB01JAN2015-LESSREPAYMENTON-01FEB2015-RESCHDULE01MAR2015-INTEREST-ON-REMAINDERLOAN-2.xlsx|
	  Then I make repayment and verified the following tabs
     			|4655-DISB01JAN2015-LESSREPAYMENTON-01FEB2015-RESCHDULE01MAR2015-INTEREST-ON-REMAINDERLOAN-2.xlsx|Repay1|
	  Then I "Edit Date " In Edit Repayment Schedule page
                |4655-DISB01JAN2015-LESSREPAYMENTON-01FEB2015-RESCHDULE01MAR2015-INTEREST-ON-REMAINDERLOAN-2.xlsx|Edit Repayment Schedule|
      And I verified the "Repayment Schedule" details successfully 
	  			|4655-DISB01JAN2015-LESSREPAYMENTON-01FEB2015-RESCHDULE01MAR2015-INTEREST-ON-REMAINDERLOAN-2.xlsx|
				
@RunnerClass3
	  Scenario: 4656-DISB01JAN2015-MOREREPAYMENTON-01FEB2015-RESCHDULEFROM01MAR2015-INSTRESCHDULETO15MAR2015INTEREST-ON-REMAINDERLOAN-24

      
      Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			|4656-DISB01JAN2015-MOREREPAYMENTON-01FEB2015-RESCHDULEFROM01MAR2015-INSTRESCHDULETO15MAR2015INTEREST-ON-REMAINDERLOAN-24.xlsx|
	  Then I make repayment and verified the following tabs
     			|4656-DISB01JAN2015-MOREREPAYMENTON-01FEB2015-RESCHDULEFROM01MAR2015-INSTRESCHDULETO15MAR2015INTEREST-ON-REMAINDERLOAN-24.xlsx|Repay1|
	  Then I "Edit Date " In Edit Repayment Schedule page
                |4656-DISB01JAN2015-MOREREPAYMENTON-01FEB2015-RESCHDULEFROM01MAR2015-INSTRESCHDULETO15MAR2015INTEREST-ON-REMAINDERLOAN-24.xlsx|Edit Repayment Schedule|
      And I verified the "Repayment Schedule" details successfully 
	  			|4656-DISB01JAN2015-MOREREPAYMENTON-01FEB2015-RESCHDULEFROM01MAR2015-INSTRESCHDULETO15MAR2015INTEREST-ON-REMAINDERLOAN-24.xlsx|
				
@RunnerClass3
	  Scenario: 4657-DISB01JAN2015-REPAYMENTON-01FEB2015-RESCHDULEFROM01FEB2015-INSTRESCHDULETO15FEB2015

      
      Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			|4657-DISB01JAN2015-REPAYMENTON-01FEB2015-RESCHDULEFROM01FEB2015-INSTRESCHDULETO15FEB2015.xlsx|
	  Then I make repayment and verified the following tabs
     			|4657-DISB01JAN2015-REPAYMENTON-01FEB2015-RESCHDULEFROM01FEB2015-INSTRESCHDULETO15FEB2015.xlsx|Repay1|
	  Then I "Edit Date " In Edit Repayment Schedule page
                |4657-DISB01JAN2015-REPAYMENTON-01FEB2015-RESCHDULEFROM01FEB2015-INSTRESCHDULETO15FEB2015.xlsx|Edit Repayment Schedule|
   	  Then i validate and Verify from "error" sheet
	 			|4657-DISB01JAN2015-REPAYMENTON-01FEB2015-RESCHDULEFROM01FEB2015-INSTRESCHDULETO15FEB2015.xlsx|										

@RunnerClass3
	  Scenario: 4658-DISB01JAN2015-WAIVEINT-RESCHEDULE-INTEREST-ON-REMAINDERLOAN-24
      
      Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			|4658-DISB01JAN2015-WAIVEINT-RESCHEDULE-INTEREST-ON-REMAINDERLOAN-24.xlsx|
	   Then I "WaiveInterest" and verified the following tabs
	            |4658-DISB01JAN2015-WAIVEINT-RESCHEDULE-INTEREST-ON-REMAINDERLOAN-24.xlsx|Modify Transaction|
	  Then I "Edit Date " In Edit Repayment Schedule page
                |4658-DISB01JAN2015-WAIVEINT-RESCHEDULE-INTEREST-ON-REMAINDERLOAN-24.xlsx|Edit Repayment Schedule|
      And I verified the "Repayment Schedule" details successfully 
	  			|4658-DISB01JAN2015-WAIVEINT-RESCHEDULE-INTEREST-ON-REMAINDERLOAN-24.xlsx|
				
	
@RunnerClass3
	  Scenario: 4659-DISB01JAN2015-RESCHEDULE-INTEREST-ON-REMAINDERLOAN-24-FORECLOSE
      
      Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			|4659-DISB01JAN2015-RESCHEDULE-INTEREST-ON-REMAINDERLOAN-24-FORECLOSE.xlsx|
	  Then I "Edit Date " In Edit Repayment Schedule page
                |4659-DISB01JAN2015-RESCHEDULE-INTEREST-ON-REMAINDERLOAN-24-FORECLOSE.xlsx|Edit Repayment Schedule|
      And I verified the "Repayment Schedule" details successfully 
	  			|4659-DISB01JAN2015-RESCHEDULE-INTEREST-ON-REMAINDERLOAN-24-FORECLOSE.xlsx|
	  Then I "Foreclosure" and verified the following tabs
	  			|4659-DISB01JAN2015-RESCHEDULE-INTEREST-ON-REMAINDERLOAN-24-FORECLOSE.xlsx| Foreclosure | Transactions |
				
@RunnerClass3
	  Scenario: 4660-DISB01JAN2015-RESCHDULE01FEB2015-INSTRESCHDULE15FEB2015-AGAINRESCHDULE15FEB2015-INSTRESCHDULE25FEB2015
      
      Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			|4660-DISB01JAN2015-RESCHDULE01FEB2015-INSTRESCHDULE15FEB2015-AGAINRESCHDULE15FEB2015-INSTRESCHDULE25FEB2015.xlsx|
	  Then I "Edit Date " In Edit Repayment Schedule page
                |4660-DISB01JAN2015-RESCHDULE01FEB2015-INSTRESCHDULE15FEB2015-AGAINRESCHDULE15FEB2015-INSTRESCHDULE25FEB2015.xlsx|Edit Repayment Schedule|
   	  Then I "Edit Date1 " In Edit Repayment Schedule page
                |4660-DISB01JAN2015-RESCHDULE01FEB2015-INSTRESCHDULE15FEB2015-AGAINRESCHDULE15FEB2015-INSTRESCHDULE25FEB2015.xlsx|Edit Repayment Schedule1|
      And I verified the "Repayment Schedule" details successfully 
	  			|4660-DISB01JAN2015-RESCHDULE01FEB2015-INSTRESCHDULE15FEB2015-AGAINRESCHDULE15FEB2015-INSTRESCHDULE25FEB2015.xlsx|
	
@RunnerClass3
	  Scenario: 4661-DISB01JAN2015-SPECIFIEDDUEDATEFEE-1%INTON15FEB2015-RESCHDULE01FEB2015-INTEREST-ON-REMAINDERLOAN-24
      
      Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			|4661-DISB01JAN2015-SPECIFIEDDUEDATEFEE-1%INTON15FEB2015-RESCHDULE01FEB2015-INTEREST-ON-REMAINDERLOAN-24.xlsx|
	  Then I "Edit Date " In Edit Repayment Schedule page
                |4661-DISB01JAN2015-SPECIFIEDDUEDATEFEE-1%INTON15FEB2015-RESCHDULE01FEB2015-INTEREST-ON-REMAINDERLOAN-24.xlsx|Edit Repayment Schedule|
      And I verified the "Repayment Schedule" details successfully 
	  			|4661-DISB01JAN2015-SPECIFIEDDUEDATEFEE-1%INTON15FEB2015-RESCHDULE01FEB2015-INTEREST-ON-REMAINDERLOAN-24.xlsx|
	
@RunnerClass3
	  Scenario: 4662-DISB01JAN2015-RESCHDULE01FEB2015-Mid-GracePeriods-principal-3and-interest-3-RESCHDULE01MAY2015-INTEREST-ON-REMAINDERLOAN-24
      
           Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			|4662-DISB01JAN2015-RESCHDULE01FEB2015-Mid-GracePeriods-principal-3and-interest-3-RESCHDULE01MAY2015-INTEREST-ON-REMAINDERLOAN-24.xlsx|
	  Then I "Edit Date " In Edit Repayment Schedule page
                |4662-DISB01JAN2015-RESCHDULE01FEB2015-Mid-GracePeriods-principal-3and-interest-3-RESCHDULE01MAY2015-INTEREST-ON-REMAINDERLOAN-24.xlsx|Edit Repayment Schedule|
   	  Then I "Edit Date1 " In Edit Repayment Schedule page
                |4662-DISB01JAN2015-RESCHDULE01FEB2015-Mid-GracePeriods-principal-3and-interest-3-RESCHDULE01MAY2015-INTEREST-ON-REMAINDERLOAN-24.xlsx|Edit Repayment Schedule1|
      And I verified the "Repayment Schedule" details successfully 
	  			|4662-DISB01JAN2015-RESCHDULE01FEB2015-Mid-GracePeriods-principal-3and-interest-3-RESCHDULE01MAY2015-INTEREST-ON-REMAINDERLOAN-24.xlsx|
	
@RunnerClass3
	  Scenario: 4663-DISB01JAN2015-RESCHDULE01FEB2015-INSTRESCHDULE15FEB2015-AGAINRESCHDULE-EXTN-REPAYMENTPRD-NUMBER-OF-REPAYMENTS-3
      
      Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			|4663-DISB01JAN2015-RESCHDULE01FEB2015-INSTRESCHDULE15FEB2015-AGAINRESCHDULE-EXTN-REPAYMENTPRD-NUMBER-OF-REPAYMENTS-3.xlsx|
	  Then I "Edit Date " In Edit Repayment Schedule page
                |4663-DISB01JAN2015-RESCHDULE01FEB2015-INSTRESCHDULE15FEB2015-AGAINRESCHDULE-EXTN-REPAYMENTPRD-NUMBER-OF-REPAYMENTS-3.xlsx|Edit Repayment Schedule|
   	  Then I "Edit Date1 " In Edit Repayment Schedule page
                |4663-DISB01JAN2015-RESCHDULE01FEB2015-INSTRESCHDULE15FEB2015-AGAINRESCHDULE-EXTN-REPAYMENTPRD-NUMBER-OF-REPAYMENTS-3.xlsx|Edit Repayment Schedule1|
      And I verified the "Repayment Schedule" details successfully 
	  			|4663-DISB01JAN2015-RESCHDULE01FEB2015-INSTRESCHDULE15FEB2015-AGAINRESCHDULE-EXTN-REPAYMENTPRD-NUMBER-OF-REPAYMENTS-3.xlsx|
	
@RunnerClass3
	  Scenario:4664-DISB01JAN2015-RESCHDULE01FEB2015-EXTN-REPAYMENTPRD-NUMBER-OF-REPAYMENT-3-AGAINRESCHDULE-INTEREST-ON-REMAINDERLOAN-24
      
      Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			|4664-DISB01JAN2015-RESCHDULE01FEB2015-EXTN-REPAYMENTPRD-NUMBER-OF-REPAYMENT-3-AGAINRESCHDULE-INTEREST-ON-REMAINDERLOAN-24.xlsx|
	  Then I "Edit Date " In Edit Repayment Schedule page
                |4664-DISB01JAN2015-RESCHDULE01FEB2015-EXTN-REPAYMENTPRD-NUMBER-OF-REPAYMENT-3-AGAINRESCHDULE-INTEREST-ON-REMAINDERLOAN-24.xlsx|Edit Repayment Schedule|
   	  Then I "Edit Date1 " In Edit Repayment Schedule page
                |4664-DISB01JAN2015-RESCHDULE01FEB2015-EXTN-REPAYMENTPRD-NUMBER-OF-REPAYMENT-3-AGAINRESCHDULE-INTEREST-ON-REMAINDERLOAN-24.xlsx|Edit Repayment Schedule1|
      And I verified the "Repayment Schedule" details successfully 
	  			|4664-DISB01JAN2015-RESCHDULE01FEB2015-EXTN-REPAYMENTPRD-NUMBER-OF-REPAYMENT-3-AGAINRESCHDULE-INTEREST-ON-REMAINDERLOAN-24.xlsx|
	
@RunnerClass3
	  Scenario:4665-DISB01JAN2015-RESCHDULE01FEB2015-EXTN-REPAYMENTPRD-NUMBER-OF-REPAYMENT-3-Repayon01FFEB2015-AGAINRESCHDULE-NUMBER-OF-REPAYMENT-3
      
      Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			|4665-DISB01JAN2015-RESCHDULE01FEB2015-EXTN-REPAYMENTPRD-NUMBER-OF-REPAYMENT-3-Repayon01FFEB2015-AGAINRESCHDULE-NUMBER-OF-REPAYMENT-3.xlsx|
	  Then I "Edit Date " In Edit Repayment Schedule page
                |4665-DISB01JAN2015-RESCHDULE01FEB2015-EXTN-REPAYMENTPRD-NUMBER-OF-REPAYMENT-3-Repayon01FFEB2015-AGAINRESCHDULE-NUMBER-OF-REPAYMENT-3.xlsx|Edit Repayment Schedule|
      Then I make repayment and verified the following tabs
     			|4665-DISB01JAN2015-RESCHDULE01FEB2015-EXTN-REPAYMENTPRD-NUMBER-OF-REPAYMENT-3-Repayon01FFEB2015-AGAINRESCHDULE-NUMBER-OF-REPAYMENT-3.xlsx|Repay1|          
   	  Then I "Edit Date1 " In Edit Repayment Schedule page
                |4665-DISB01JAN2015-RESCHDULE01FEB2015-EXTN-REPAYMENTPRD-NUMBER-OF-REPAYMENT-3-Repayon01FFEB2015-AGAINRESCHDULE-NUMBER-OF-REPAYMENT-3.xlsx|Edit Repayment Schedule1|
      And I verified the "Repayment Schedule" details successfully 
	  			|4665-DISB01JAN2015-RESCHDULE01FEB2015-EXTN-REPAYMENTPRD-NUMBER-OF-REPAYMENT-3-Repayon01FFEB2015-AGAINRESCHDULE-NUMBER-OF-REPAYMENT-3.xlsx|
	
@RunnerClass3
	  Scenario:4666-DISB01JAN2015-RESCHEDULE-INSTRESCHDULE15FEB2015-Midterm-GRACEPRD-2-EXTNREAYMENTPRD-3-INT-ON-RMNDLOAN-24-AGAINRESCHEDULE15MAR2015-INSTRESCHDULETO25APR2015
      
      Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			|4666-DISB01JAN2015-RESCHEDULE-INSTRESCHDULE15FEB2015-Midterm-GRACEPRD-2-EXTNREAYMENTPRD-3-INT-ON-RMNDLOAN-24-AGAINRESCHEDULE15MAR2015-INSTRESCHDULETO25APR2015.xlsx|
	  Then I "Edit Date " In Edit Repayment Schedule page
                |4666-DISB01JAN2015-RESCHEDULE-INSTRESCHDULE15FEB2015-Midterm-GRACEPRD-2-EXTNREAYMENTPRD-3-INT-ON-RMNDLOAN-24-AGAINRESCHEDULE15MAR2015-INSTRESCHDULETO25APR2015.xlsx|Edit Repayment Schedule|      
   	  Then I "Edit Date1 " In Edit Repayment Schedule page
                |4666-DISB01JAN2015-RESCHEDULE-INSTRESCHDULE15FEB2015-Midterm-GRACEPRD-2-EXTNREAYMENTPRD-3-INT-ON-RMNDLOAN-24-AGAINRESCHEDULE15MAR2015-INSTRESCHDULETO25APR2015.xlsx|Edit Repayment Schedule1|
      And I verified the "Repayment Schedule" details successfully 
	  			|4666-DISB01JAN2015-RESCHEDULE-INSTRESCHDULE15FEB2015-Midterm-GRACEPRD-2-EXTNREAYMENTPRD-3-INT-ON-RMNDLOAN-24-AGAINRESCHEDULE15MAR2015-INSTRESCHDULETO25APR2015.xlsx|

@RunnerClass3
	  Scenario:4667-DISB01JAN2015-MORATORIUMONPRINCIPAL+INT-3-RESCHEDULE-Mid-GracePeriods-3-AGAINRESCHEDULE-INST-ON-remainder-loan-24
      
      Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			|4667-DISB01JAN2015-MORATORIUMONPRINCIPAL+INT-3-RESCHEDULE-Mid-GracePeriods-3-AGAINRESCHEDULE-INST-ON-remainder-loan-24.xlsx|
	  Then I "Edit Date " In Edit Repayment Schedule page
                |4667-DISB01JAN2015-MORATORIUMONPRINCIPAL+INT-3-RESCHEDULE-Mid-GracePeriods-3-AGAINRESCHEDULE-INST-ON-remainder-loan-24.xlsx|Edit Repayment Schedule|      
   	  Then I "Edit Date1 " In Edit Repayment Schedule page
                |4667-DISB01JAN2015-MORATORIUMONPRINCIPAL+INT-3-RESCHEDULE-Mid-GracePeriods-3-AGAINRESCHEDULE-INST-ON-remainder-loan-24.xlsx|Edit Repayment Schedule1|
      And I verified the "Repayment Schedule" details successfully 
	  			|4667-DISB01JAN2015-MORATORIUMONPRINCIPAL+INT-3-RESCHEDULE-Mid-GracePeriods-3-AGAINRESCHEDULE-INST-ON-remainder-loan-24.xlsx|
	
				
@RunnerClass3
	  Scenario:4668-SUBMITLOAN01JAN2015-DATE-VAR-INST-15FEB2015-DISBURSE01JAN2015-RESCHEDULE-15FEB2015to25FEB2015
      
      Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			|4668-SUBMITLOAN01JAN2015-DATE-VAR-INST-15FEB2015-DISBURSE01JAN2015-RESCHEDULE-15FEB2015to25FEB2015.xlsx|
	  Then I "Edit Date " In Edit Repayment Schedule page
                |4668-SUBMITLOAN01JAN2015-DATE-VAR-INST-15FEB2015-DISBURSE01JAN2015-RESCHEDULE-15FEB2015to25FEB2015.xlsx|Edit Repayment Schedule|      
   	  Then I "Edit Date1 " In Edit Repayment Schedule page
                |4668-SUBMITLOAN01JAN2015-DATE-VAR-INST-15FEB2015-DISBURSE01JAN2015-RESCHEDULE-15FEB2015to25FEB2015.xlsx|Edit Repayment Schedule1|
      And I verified the "Repayment Schedule" details successfully 
	  			|4668-SUBMITLOAN01JAN2015-DATE-VAR-INST-15FEB2015-DISBURSE01JAN2015-RESCHEDULE-15FEB2015to25FEB2015.xlsx|
	
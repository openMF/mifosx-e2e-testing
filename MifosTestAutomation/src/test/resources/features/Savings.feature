Feature:Savings/FixedDeposit/RecurringDeposit/Share

Background:
	Given I navigate to mifos using "default8#/"
	And I login into mifos site using "Login" excel sheet
		|Login.xlsx|
	Then I should see logged in successfully
	

@RunnerClass8
	  Scenario: 4707-SUBMITSAVINGS01JAN2015-APPROVEON01JAN2015-ACTIVATEON01JAN2015
      Given I setup the "Saving" product
				| Productloannavigation.xlsx |
	  Then I entered the values into product from "ProductSavingInput" Sheet
				|4707-SUBMITSAVINGS01JAN2015-APPROVEON01JAN2015-ACTIVATEON01JAN2015.xlsx|
	  Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  When I set up the new create saving account from "NewSavingInput" sheet
	  			|4707-SUBMITSAVINGS01JAN2015-APPROVEON01JAN2015-ACTIVATEON01JAN2015.xlsx|
	  And I verified the "Saving Transaction" details successfully 
	  			|4707-SUBMITSAVINGS01JAN2015-APPROVEON01JAN2015-ACTIVATEON01JAN2015.xlsx|
	  Then i validate and Verify from "Validate" sheet
	 			|4707-SUBMITSAVINGS01JAN2015-APPROVEON01JAN2015-ACTIVATEON01JAN2015.xlsx|
				
@RunnerClass8
	  Scenario: 4708-SUBMITSAVINGS01JAN2015-MODIFYAPP-MINIMUMOPENBAL300&INTPOSTPRD-Quarterly-APPROVEON01JAN2015-ACTIVATEON01JAN2015
      
	  Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  When I set up the new create saving account from "NewSavingInput" sheet
	  			|4708-SUBMITSAVINGS01JAN2015-MODIFYAPP-MINIMUMOPENBAL300&INTPOSTPRD-Quarterly-APPROVEON01JAN2015-ACTIVATEON01JAN2015.xlsx|
	  And I modify New Account from "ModifyApplication" sheet
	            |4708-SUBMITSAVINGS01JAN2015-MODIFYAPP-MINIMUMOPENBAL300&INTPOSTPRD-Quarterly-APPROVEON01JAN2015-ACTIVATEON01JAN2015.xlsx|
	  And I verified the "Saving Transaction" details successfully 
	  			|4708-SUBMITSAVINGS01JAN2015-MODIFYAPP-MINIMUMOPENBAL300&INTPOSTPRD-Quarterly-APPROVEON01JAN2015-ACTIVATEON01JAN2015.xlsx|
	  Then i validate and Verify from "Validate" sheet
	 			|4708-SUBMITSAVINGS01JAN2015-MODIFYAPP-MINIMUMOPENBAL300&INTPOSTPRD-Quarterly-APPROVEON01JAN2015-ACTIVATEON01JAN2015.xlsx|
				
@RunnerClass8
	  Scenario: 4709-SUBMITSAVINGS01JAN2015-APPROVEON15JAN2015-UNDOAPPROVE-APPROVEON01JAN2015-ADDCHARGE-ACTIVATEON01JAN2015
      
	  Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  When I set up the new create saving account from "NewSavingInput" sheet
	  			|4709-SUBMITSAVINGS01JAN2015-APPROVEON15JAN2015-UNDOAPPROVE-APPROVEON01JAN2015-ADDCHARGE-ACTIVATEON01JAN2015.xlsx|
	  And I modify New Account from "ModifyApplication" sheet
	            |4709-SUBMITSAVINGS01JAN2015-APPROVEON15JAN2015-UNDOAPPROVE-APPROVEON01JAN2015-ADDCHARGE-ACTIVATEON01JAN2015.xlsx|
	  And I verified the "Saving Transaction" details successfully 
	  			|4709-SUBMITSAVINGS01JAN2015-APPROVEON15JAN2015-UNDOAPPROVE-APPROVEON01JAN2015-ADDCHARGE-ACTIVATEON01JAN2015.xlsx|
	  And I verified the "Saving Charges" details successfully 
	  			|4709-SUBMITSAVINGS01JAN2015-APPROVEON15JAN2015-UNDOAPPROVE-APPROVEON01JAN2015-ADDCHARGE-ACTIVATEON01JAN2015.xlsx|
	
@RunnerClass8
	  Scenario: 4710-SUBMITWITH(DUEDATE-15JAN2015)01JAN2015-DEP200-15JAN2015-WDRAW100-01FEB2015-POSTINTEREST01APR2015
      
	  Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  When I set up the new create saving account from "NewSavingInput" sheet
	  			|4710-SUBMITWITH(DUEDATE-15JAN2015)01JAN2015-DEP200-15JAN2015-WDRAW100-01FEB2015-POSTINTEREST01APR2015.xlsx|
	  Then I "Do Transaction" and verified the following tabs
	  			|4710-SUBMITWITH(DUEDATE-15JAN2015)01JAN2015-DEP200-15JAN2015-WDRAW100-01FEB2015-POSTINTEREST01APR2015.xlsx| SavingsDeposit | SavingsWdraw |
	  Then I navigate to scheduler job & execute "Pay Due Savings Charges"
	  Then I navigate To Saving Account Page
	  Then I "Do Post Interest" and verified the following tabs
	  			|4710-SUBMITWITH(DUEDATE-15JAN2015)01JAN2015-DEP200-15JAN2015-WDRAW100-01FEB2015-POSTINTEREST01APR2015.xlsx|Modify Transaction|
	  And I verified the "Saving Transaction" details successfully 
	  			|4710-SUBMITWITH(DUEDATE-15JAN2015)01JAN2015-DEP200-15JAN2015-WDRAW100-01FEB2015-POSTINTEREST01APR2015.xlsx|
	  And I verified the "Saving Charges" details successfully 
	  			|4710-SUBMITWITH(DUEDATE-15JAN2015)01JAN2015-DEP200-15JAN2015-WDRAW100-01FEB2015-POSTINTEREST01APR2015.xlsx|
				
				
@RunnerClass8
	  Scenario: 4711-SUBMITSAVINGS(WITHENFORCEMINBAL)ON01JAN2015-APPROVEON01JAN2015-ACTIVATEON01JAN2015-WITHDRAW50on01FEB2015
      
	  Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  When I set up the new create saving account from "NewSavingInput" sheet
	  			|4711-SUBMITSAVINGS(WITHENFORCEMINBAL)ON01JAN2015-APPROVEON01JAN2015-ACTIVATEON01JAN2015-WITHDRAW50on01FEB2015.xlsx|
	  Then I "Do Transaction" and verified the following tabs
	  			|4711-SUBMITSAVINGS(WITHENFORCEMINBAL)ON01JAN2015-APPROVEON01JAN2015-ACTIVATEON01JAN2015-WITHDRAW50on01FEB2015.xlsx| SavingsWdraw |
	  Then i validate and Verify from "error2" sheet
	 			|4711-SUBMITSAVINGS(WITHENFORCEMINBAL)ON01JAN2015-APPROVEON01JAN2015-ACTIVATEON01JAN2015-WITHDRAW50on01FEB2015.xlsx|
	
@RunnerClass8
	  Scenario: 4712-SUBMITSAVINGS(WITHLOCKPRD2MONTHS)ON01JAN2015-DEPOSIT500on15JAN2015-WITHDRAW50on01FEB2015
      
	  Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  When I set up the new create saving account from "NewSavingInput" sheet
	  			|4712-SUBMITSAVINGS(WITHLOCKPRD2MONTHS)ON01JAN2015-DEPOSIT500on15JAN2015-WITHDRAW50on01FEB2015.xlsx|
	  Then I "Do Transaction" and verified the following tabs
	  			|4712-SUBMITSAVINGS(WITHLOCKPRD2MONTHS)ON01JAN2015-DEPOSIT500on15JAN2015-WITHDRAW50on01FEB2015.xlsx| SavingsDeposit | SavingsWdraw |
	  Then i validate and Verify from "error" sheet
	 			|4712-SUBMITSAVINGS(WITHLOCKPRD2MONTHS)ON01JAN2015-DEPOSIT500on15JAN2015-WITHDRAW50on01FEB2015.xlsx|	
	  
@RunnerClass8
	  Scenario: 4713-SUBMITSAVINGSON01JAN2015-APPROVEON01JAN2015-ACTIVATEON01JAN2015-CLOSEON01MARCH2015
      
	  Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  When I set up the new create saving account from "NewSavingInput" sheet
	  			|4713-SUBMITSAVINGSON01JAN2015-APPROVEON01JAN2015-ACTIVATEON01JAN2015-CLOSEON01MARCH2015.xlsx|
	  Then I "Close account" and verified the following tabs
	  			|4713-SUBMITSAVINGSON01JAN2015-APPROVEON01JAN2015-ACTIVATEON01JAN2015-CLOSEON01MARCH2015.xlsx| Modify Transaction|
	  Then i validate and Verify from "error" sheet
	 			|4713-SUBMITSAVINGSON01JAN2015-APPROVEON01JAN2015-ACTIVATEON01JAN2015-CLOSEON01MARCH2015.xlsx|	  


@RunnerClass8
	  Scenario: 4714-SUBMITSAVINGSON01JAN2015-APPROVEON01JAN2015-ACTIVATEON01JAN2015-POSTINTERESTAsOn15FEB2015
      
	  Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  When I set up the new create saving account from "NewSavingInput" sheet
	  			|4714-SUBMITSAVINGSON01JAN2015-APPROVEON01JAN2015-ACTIVATEON01JAN2015-POSTINTERESTAsOn15FEB2015.xlsx|
	  Then I "Post Interest" and verified the following tabs
	  			|4714-SUBMITSAVINGSON01JAN2015-APPROVEON01JAN2015-ACTIVATEON01JAN2015-POSTINTERESTAsOn15FEB2015.xlsx| Modify Transaction|
	  And I verified the "Saving Transaction" details successfully 
	  			|4714-SUBMITSAVINGSON01JAN2015-APPROVEON01JAN2015-ACTIVATEON01JAN2015-POSTINTERESTAsOn15FEB2015.xlsx|

@RunnerClass8
	  Scenario: 4715-SUBMITSAVINGSON01JAN2015-DEPOSIT500on01FEB2015-WITHDRAW100on01FEB2015-UNDOBOTHTRANSACTIONS
      
	  Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  When I set up the new create saving account from "NewSavingInput" sheet
	  			|4715-SUBMITSAVINGSON01JAN2015-DEPOSIT500on01FEB2015-WITHDRAW100on01FEB2015-UNDOBOTHTRANSACTIONS.xlsx|
	  Then I "Do Transaction" and verified the following tabs
	  			|4715-SUBMITSAVINGSON01JAN2015-DEPOSIT500on01FEB2015-WITHDRAW100on01FEB2015-UNDOBOTHTRANSACTIONS.xlsx| SavingsDeposit | SavingsWdraw |
	  And I verified the "Saving Transaction" details successfully 
	  			|4715-SUBMITSAVINGSON01JAN2015-DEPOSIT500on01FEB2015-WITHDRAW100on01FEB2015-UNDOBOTHTRANSACTIONS.xlsx|
	  Then I "Undo Transaction" and verified the following tabs
	  			|4715-SUBMITSAVINGSON01JAN2015-DEPOSIT500on01FEB2015-WITHDRAW100on01FEB2015-UNDOBOTHTRANSACTIONS.xlsx| Modify Transaction|Modify Transaction1|
	  And I verified the "Saving Transaction 1" details successfully 
	  			|4715-SUBMITSAVINGSON01JAN2015-DEPOSIT500on01FEB2015-WITHDRAW100on01FEB2015-UNDOBOTHTRANSACTIONS.xlsx|
	  				
				
@RunnerClass8
	  Scenario: 4716-SUBMITSAVINGSON01JAN2015WITHCHARGEMONTHLYFEE-ACTIVATEON01JAN2015-PAYCHARGE01FEB2015
      
	  Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  When I set up the new create saving account from "NewSavingInput" sheet
	  			|4716-SUBMITSAVINGSON01JAN2015WITHCHARGEMONTHLYFEE-ACTIVATEON01JAN2015-PAYCHARGE01FEB2015.xlsx|
	  Then I "Pay charge" and verified the following tabs
	  			|4716-SUBMITSAVINGSON01JAN2015WITHCHARGEMONTHLYFEE-ACTIVATEON01JAN2015-PAYCHARGE01FEB2015.xlsx| Modify Transaction|
	  And I verified the "Saving Transaction" details successfully 
	  			|4716-SUBMITSAVINGSON01JAN2015WITHCHARGEMONTHLYFEE-ACTIVATEON01JAN2015-PAYCHARGE01FEB2015.xlsx|
	  And I verified the "Saving Charges" details successfully 
	  			|4716-SUBMITSAVINGSON01JAN2015WITHCHARGEMONTHLYFEE-ACTIVATEON01JAN2015-PAYCHARGE01FEB2015.xlsx|
				
				
@RunnerClass8
	  Scenario: 4717-SUBMITSAVINGSON01JAN2015-MONTHLYFEE-ACTIVATEON01JAN2015-WAIVECHARGE01FEB2015-PAYCHARGE01FEB2015
      
	  Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  When I set up the new create saving account from "NewSavingInput" sheet
	  			|4717-SUBMITSAVINGSON01JAN2015-MONTHLYFEE-ACTIVATEON01JAN2015-WAIVECHARGE01FEB2015-PAYCHARGE01FEB2015.xlsx|
	  Then I "Waive charge" and verified the following tabs
	  			|4717-SUBMITSAVINGSON01JAN2015-MONTHLYFEE-ACTIVATEON01JAN2015-WAIVECHARGE01FEB2015-PAYCHARGE01FEB2015.xlsx| Modify Transaction|
	  Then I "Pay charge" and verified the following tabs
	  			|4717-SUBMITSAVINGSON01JAN2015-MONTHLYFEE-ACTIVATEON01JAN2015-WAIVECHARGE01FEB2015-PAYCHARGE01FEB2015.xlsx| Modify Transaction1|
	  And I verified the "Saving Transaction" details successfully 
	  			|4717-SUBMITSAVINGSON01JAN2015-MONTHLYFEE-ACTIVATEON01JAN2015-WAIVECHARGE01FEB2015-PAYCHARGE01FEB2015.xlsx|
	  And I verified the "Saving Charges" details successfully 
	  			|4717-SUBMITSAVINGSON01JAN2015-MONTHLYFEE-ACTIVATEON01JAN2015-WAIVECHARGE01FEB2015-PAYCHARGE01FEB2015.xlsx|
				
@RunnerClass8
	  Scenario: 4718-SUBMITSAVINGSON01JAN2015-APPROVEON01JAN2015-ACTIVATEON01JAN2015-WITHDRAW500on01FEB2015
      Given I setup the "Saving" product
				| Productloannavigation.xlsx |
	  Then I entered the values into product from "ProductSavingInput" Sheet
				|4718-SUBMITSAVINGSON01JAN2015-APPROVEON01JAN2015-ACTIVATEON01JAN2015-WITHDRAW500on01FEB2015.xlsx|
	  Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  When I set up the new create saving account from "NewSavingInput" sheet
	  			|4718-SUBMITSAVINGSON01JAN2015-APPROVEON01JAN2015-ACTIVATEON01JAN2015-WITHDRAW500on01FEB2015.xlsx|
	  Then I "Do Transaction" and verified the following tabs
	  			|4718-SUBMITSAVINGSON01JAN2015-APPROVEON01JAN2015-ACTIVATEON01JAN2015-WITHDRAW500on01FEB2015.xlsx| SavingsWdraw |
	  Then i validate and Verify from "error2" sheet
	 			|4718-SUBMITSAVINGSON01JAN2015-APPROVEON01JAN2015-ACTIVATEON01JAN2015-WITHDRAW500on01FEB2015.xlsx|
				
@RunnerClass8
	  Scenario: 4719-ACTIVATEON01JAN2015-WITHDRAW100on01JAN2015-CLICKONPOSTINTEREST
      
	  Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  When I set up the new create saving account from "NewSavingInput" sheet
	  			|4719-ACTIVATEON01JAN2015-WITHDRAW100on01JAN2015-CLICKONPOSTINTEREST.xlsx|
	  Then I "Do Post Interest" and verified the following tabs
	  			|4719-ACTIVATEON01JAN2015-WITHDRAW100on01JAN2015-CLICKONPOSTINTEREST.xlsx| Modify Transaction|
	  And I verified the "Saving Transaction" details successfully 
	  			|4719-ACTIVATEON01JAN2015-WITHDRAW100on01JAN2015-CLICKONPOSTINTEREST.xlsx|
				
@RunnerClass8
	  Scenario: 4720-SUBMIT01JAN2015-APPROVE01JAN2015-ACTIVATE01JAN2015-WITHDRAW200on01JAN2015-CLICKONPOSTINTEREST
      
	  Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  When I set up the new create saving account from "NewSavingInput" sheet
	  			|4720-SUBMIT01JAN2015-APPROVE01JAN2015-ACTIVATE01JAN2015-WITHDRAW200on01JAN2015-CLICKONPOSTINTEREST.xlsx|
	  Then I "Do Transaction" and verified the following tabs
	  			|4720-SUBMIT01JAN2015-APPROVE01JAN2015-ACTIVATE01JAN2015-WITHDRAW200on01JAN2015-CLICKONPOSTINTEREST.xlsx| SavingsWdraw |
	  And I verified the "Saving Transaction" details successfully 
	  			|4720-SUBMIT01JAN2015-APPROVE01JAN2015-ACTIVATE01JAN2015-WITHDRAW200on01JAN2015-CLICKONPOSTINTEREST.xlsx|
	  Then I "Do Post Interest" and verified the following tabs
	  			|4720-SUBMIT01JAN2015-APPROVE01JAN2015-ACTIVATE01JAN2015-WITHDRAW200on01JAN2015-CLICKONPOSTINTEREST.xlsx| Modify Transaction|
	  And I verified the "Saving Transaction 1" details successfully 
	  			|4720-SUBMIT01JAN2015-APPROVE01JAN2015-ACTIVATE01JAN2015-WITHDRAW200on01JAN2015-CLICKONPOSTINTEREST.xlsx|
				
				
@RunnerClass8
	  Scenario: 4721-CREATEGRPWITH3CLIENTS-SUBMITSAVINGS01JAN2015-MODIFYAPP-ADDCHARGE-APPROVEON01JAN2015-ACTIVATEON01JAN2015
      
      Given I setup the group
	  Then I entered the values into group from "Group" sheet
                |4721-CREATEGRPWITH3CLIENTS-SUBMITSAVINGS01JAN2015-MODIFYAPP-ADDCHARGE-APPROVEON01JAN2015-ACTIVATEON01JAN2015.xlsx|		  								  				  				  			
	  Then I entered the values into client from "Input1" sheet
	 	        |4721-CREATEGRPWITH3CLIENTS-SUBMITSAVINGS01JAN2015-MODIFYAPP-ADDCHARGE-APPROVEON01JAN2015-ACTIVATEON01JAN2015.xlsx|
	  Then I entered the values into client from "Input2" sheet
	 	        |4721-CREATEGRPWITH3CLIENTS-SUBMITSAVINGS01JAN2015-MODIFYAPP-ADDCHARGE-APPROVEON01JAN2015-ACTIVATEON01JAN2015.xlsx|
	  Then I entered the values into client from "Input3" sheet
	 	        |4721-CREATEGRPWITH3CLIENTS-SUBMITSAVINGS01JAN2015-MODIFYAPP-ADDCHARGE-APPROVEON01JAN2015-ACTIVATEON01JAN2015.xlsx|	
	  When I set up the new create saving account from "NewSavingInput" sheet
	  			|4721-CREATEGRPWITH3CLIENTS-SUBMITSAVINGS01JAN2015-MODIFYAPP-ADDCHARGE-APPROVEON01JAN2015-ACTIVATEON01JAN2015.xlsx|
	  And I modify New Account from "ModifyApplication" sheet
	            |4721-CREATEGRPWITH3CLIENTS-SUBMITSAVINGS01JAN2015-MODIFYAPP-ADDCHARGE-APPROVEON01JAN2015-ACTIVATEON01JAN2015.xlsx|
	  And I verified the "Saving Transaction" details successfully 
	  			|4721-CREATEGRPWITH3CLIENTS-SUBMITSAVINGS01JAN2015-MODIFYAPP-ADDCHARGE-APPROVEON01JAN2015-ACTIVATEON01JAN2015.xlsx|
	   And I verified the "Saving Charges" details successfully 
	  			|4721-CREATEGRPWITH3CLIENTS-SUBMITSAVINGS01JAN2015-MODIFYAPP-ADDCHARGE-APPROVEON01JAN2015-ACTIVATEON01JAN2015.xlsx|
	  
@RunnerClass8
	  Scenario: 4722-CREATEGRPWITH3CLIENTS-SUBMITSAVINGSWITHCHARGE(DUEDATE-15JAN2015)01JAN2015-ACTIVATEON01JAN2015-PAYCHARGEon01FEB2015
      
      Given I setup the group
	  Then I entered the values into group from "Group" sheet
                |4722-CREATEGRPWITH3CLIENTS-SUBMITSAVINGSWITHCHARGE(DUEDATE-15JAN2015)01JAN2015-ACTIVATEON01JAN2015-PAYCHARGEon01FEB2015.xlsx|		  								  				  				  			
	  Then I entered the values into client from "Input1" sheet
	 	        |4722-CREATEGRPWITH3CLIENTS-SUBMITSAVINGSWITHCHARGE(DUEDATE-15JAN2015)01JAN2015-ACTIVATEON01JAN2015-PAYCHARGEon01FEB2015.xlsx|
	  Then I entered the values into client from "Input2" sheet
	 	        |4722-CREATEGRPWITH3CLIENTS-SUBMITSAVINGSWITHCHARGE(DUEDATE-15JAN2015)01JAN2015-ACTIVATEON01JAN2015-PAYCHARGEon01FEB2015.xlsx|
	  Then I entered the values into client from "Input3" sheet
	 	        |4722-CREATEGRPWITH3CLIENTS-SUBMITSAVINGSWITHCHARGE(DUEDATE-15JAN2015)01JAN2015-ACTIVATEON01JAN2015-PAYCHARGEon01FEB2015.xlsx|	
	  When I set up the new create saving account from "NewSavingInput" sheet
	  			|4722-CREATEGRPWITH3CLIENTS-SUBMITSAVINGSWITHCHARGE(DUEDATE-15JAN2015)01JAN2015-ACTIVATEON01JAN2015-PAYCHARGEon01FEB2015.xlsx|
	  Then I "Pay charge" and verified the following tabs
	  			|4722-CREATEGRPWITH3CLIENTS-SUBMITSAVINGSWITHCHARGE(DUEDATE-15JAN2015)01JAN2015-ACTIVATEON01JAN2015-PAYCHARGEon01FEB2015.xlsx| Modify Transaction|
	  And I verified the "Saving Transaction" details successfully 
	  			|4722-CREATEGRPWITH3CLIENTS-SUBMITSAVINGSWITHCHARGE(DUEDATE-15JAN2015)01JAN2015-ACTIVATEON01JAN2015-PAYCHARGEon01FEB2015.xlsx|
	   And I verified the "Saving Charges" details successfully 
	  			|4722-CREATEGRPWITH3CLIENTS-SUBMITSAVINGSWITHCHARGE(DUEDATE-15JAN2015)01JAN2015-ACTIVATEON01JAN2015-PAYCHARGEon01FEB2015.xlsx|
	  	
		
@RunnerClass8
	  Scenario: 4723-CREATEGROUPW2CLIENTS-SUBMIT(WITHLOCKPRD2MONTHS)01JAN2015-ACTIVATE01JAN2015-DEPOSIT500on15JAN2015-WITHDRAW50on01FEB2015
      
      Given I setup the group
	  Then I entered the values into group from "Group" sheet
                |4723-CREATEGROUPW2CLIENTS-SUBMIT(WITHLOCKPRD2MONTHS)01JAN2015-ACTIVATE01JAN2015-DEPOSIT500on15JAN2015-WITHDRAW50on01FEB2015.xlsx|		  								  				  				  			
	  Then I entered the values into client from "Input1" sheet
	 	        |4723-CREATEGROUPW2CLIENTS-SUBMIT(WITHLOCKPRD2MONTHS)01JAN2015-ACTIVATE01JAN2015-DEPOSIT500on15JAN2015-WITHDRAW50on01FEB2015.xlsx|
	  Then I entered the values into client from "Input2" sheet
	 	        |4723-CREATEGROUPW2CLIENTS-SUBMIT(WITHLOCKPRD2MONTHS)01JAN2015-ACTIVATE01JAN2015-DEPOSIT500on15JAN2015-WITHDRAW50on01FEB2015.xlsx|
	  When I set up the new create saving account from "NewSavingInput" sheet
	  			|4723-CREATEGROUPW2CLIENTS-SUBMIT(WITHLOCKPRD2MONTHS)01JAN2015-ACTIVATE01JAN2015-DEPOSIT500on15JAN2015-WITHDRAW50on01FEB2015.xlsx|
	  Then I "Do Transaction" and verified the following tabs
	  			|4723-CREATEGROUPW2CLIENTS-SUBMIT(WITHLOCKPRD2MONTHS)01JAN2015-ACTIVATE01JAN2015-DEPOSIT500on15JAN2015-WITHDRAW50on01FEB2015.xlsx|  SavingsDeposit | SavingsWdraw |
	    Then i validate and Verify from "error" sheet
	 			|4723-CREATEGROUPW2CLIENTS-SUBMIT(WITHLOCKPRD2MONTHS)01JAN2015-ACTIVATE01JAN2015-DEPOSIT500on15JAN2015-WITHDRAW50on01FEB2015.xlsx|

@RunnerClass8
	  Scenario: 4724-CREATEGROUP2CLIENTS-SUBMITSAVINGS(WITHMONTHLYCHARGE)01JAN2015-APPROVE01JAN2015-ACTIVATE01JAN2015-CLICKonINACTIVECHARGE
      
      Given I setup the group
	  Then I entered the values into group from "Group" sheet
                |4724-CREATEGROUP2CLIENTS-SUBMITSAVINGS(WITHMONTHLYCHARGE)01JAN2015-APPROVE01JAN2015-ACTIVATE01JAN2015-CLICKonINACTIVECHARGE.xlsx|		  								  				  				  			
	  Then I entered the values into client from "Input1" sheet
	 	        |4724-CREATEGROUP2CLIENTS-SUBMITSAVINGS(WITHMONTHLYCHARGE)01JAN2015-APPROVE01JAN2015-ACTIVATE01JAN2015-CLICKonINACTIVECHARGE.xlsx|
	  Then I entered the values into client from "Input2" sheet
	 	        |4724-CREATEGROUP2CLIENTS-SUBMITSAVINGS(WITHMONTHLYCHARGE)01JAN2015-APPROVE01JAN2015-ACTIVATE01JAN2015-CLICKonINACTIVECHARGE.xlsx|
	  When I set up the new create saving account from "NewSavingInput" sheet
	  			|4724-CREATEGROUP2CLIENTS-SUBMITSAVINGS(WITHMONTHLYCHARGE)01JAN2015-APPROVE01JAN2015-ACTIVATE01JAN2015-CLICKonINACTIVECHARGE.xlsx|
	  Then I "Inactive Charge" and verified the following tabs
	  			|4724-CREATEGROUP2CLIENTS-SUBMITSAVINGS(WITHMONTHLYCHARGE)01JAN2015-APPROVE01JAN2015-ACTIVATE01JAN2015-CLICKonINACTIVECHARGE.xlsx|  Modify Transaction|
	    Then i validate and Verify from "error" sheet
	 			|4724-CREATEGROUP2CLIENTS-SUBMITSAVINGS(WITHMONTHLYCHARGE)01JAN2015-APPROVE01JAN2015-ACTIVATE01JAN2015-CLICKonINACTIVECHARGE.xlsx|
	 	
				
@RunnerClass8
	  Scenario: 4725-CREATEGROUP2CLIENTS-SUBMIT01JAN2015(CHARGEMONTHLYFEE)-APPROVE01JAN2015-ACTIVATE01JAN2015-PAYCHARGE01FEB2015
      
      Given I setup the group
	  Then I entered the values into group from "Group" sheet
                |4725-CREATEGROUP2CLIENTS-SUBMIT01JAN2015(CHARGEMONTHLYFEE)-APPROVE01JAN2015-ACTIVATE01JAN2015-PAYCHARGE01FEB2015.xlsx|		  								  				  				  			
	  Then I entered the values into client from "Input1" sheet
	 	        |4725-CREATEGROUP2CLIENTS-SUBMIT01JAN2015(CHARGEMONTHLYFEE)-APPROVE01JAN2015-ACTIVATE01JAN2015-PAYCHARGE01FEB2015.xlsx|
	  Then I entered the values into client from "Input2" sheet
	 	        |4725-CREATEGROUP2CLIENTS-SUBMIT01JAN2015(CHARGEMONTHLYFEE)-APPROVE01JAN2015-ACTIVATE01JAN2015-PAYCHARGE01FEB2015.xlsx|
	  When I set up the new create saving account from "NewSavingInput" sheet
	  			|4725-CREATEGROUP2CLIENTS-SUBMIT01JAN2015(CHARGEMONTHLYFEE)-APPROVE01JAN2015-ACTIVATE01JAN2015-PAYCHARGE01FEB2015.xlsx|
	  Then I "Pay charge" and verified the following tabs
	  			|4725-CREATEGROUP2CLIENTS-SUBMIT01JAN2015(CHARGEMONTHLYFEE)-APPROVE01JAN2015-ACTIVATE01JAN2015-PAYCHARGE01FEB2015.xlsx|  Modify Transaction|
	    And I verified the "Saving Transaction" details successfully
	 			|4725-CREATEGROUP2CLIENTS-SUBMIT01JAN2015(CHARGEMONTHLYFEE)-APPROVE01JAN2015-ACTIVATE01JAN2015-PAYCHARGE01FEB2015.xlsx|
	 	#And I verified the "Saving Charges" details successfully 
	 	#		|4725-CREATEGROUP2CLIENTS-SUBMIT01JAN2015(CHARGEMONTHLYFEE)-APPROVE01JAN2015-ACTIVATE01JAN2015-PAYCHARGE01FEB2015.xlsx|
				
@RunnerClass8
	  Scenario: 4726-SUBMITSAVINGS01JAN2015-ASSIGNSTAFFON01JAN2015-ADDCHARGE-APPROVEON01JAN2015-ACTIVATEON01JAN2015
      
      Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  When I set up the new create saving account from "NewSavingInput" sheet
	  			|4726-SUBMITSAVINGS01JAN2015-ASSIGNSTAFFON01JAN2015-ADDCHARGE-APPROVEON01JAN2015-ACTIVATEON01JAN2015.xlsx|
	  When I set up the new create saving account from "AssignStaff" sheet
	  			|4726-SUBMITSAVINGS01JAN2015-ASSIGNSTAFFON01JAN2015-ADDCHARGE-APPROVEON01JAN2015-ACTIVATEON01JAN2015.xlsx|
	  Then i validate and Verify from "Validate" sheet
	 			|4726-SUBMITSAVINGS01JAN2015-ASSIGNSTAFFON01JAN2015-ADDCHARGE-APPROVEON01JAN2015-ACTIVATEON01JAN2015.xlsx|	 			

@RunnerClass8
	  Scenario: 4727-ACTIVATEON01JAN2015-DEPOSIT200on15JAN2015-WITHDRAW100on01FEB2015-POSTINTEREST-VIEWJRNALENTRY
      
	  Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  When I set up the new create saving account from "NewSavingInput" sheet
	  			|4727-ACTIVATEON01JAN2015-DEPOSIT200on15JAN2015-WITHDRAW100on01FEB2015-POSTINTEREST-VIEWJRNALENTRY.xlsx|
	  Then I "Do Transaction" and verified the following tabs
	  			|4727-ACTIVATEON01JAN2015-DEPOSIT200on15JAN2015-WITHDRAW100on01FEB2015-POSTINTEREST-VIEWJRNALENTRY.xlsx| SavingsDeposit | SavingsWdraw |
	  Then I "Post Interest" and verified the following tabs
	  			|4727-ACTIVATEON01JAN2015-DEPOSIT200on15JAN2015-WITHDRAW100on01FEB2015-POSTINTEREST-VIEWJRNALENTRY.xlsx| Modify Transaction|
	  And I verified the "Saving Transaction & TransID" details successfully 
	  			|4727-ACTIVATEON01JAN2015-DEPOSIT200on15JAN2015-WITHDRAW100on01FEB2015-POSTINTEREST-VIEWJRNALENTRY.xlsx|
	  And I Navigate to Accounting web page
	  Then I search with transaction id & verified the accounting entries
	   			|4727-ACTIVATEON01JAN2015-DEPOSIT200on15JAN2015-WITHDRAW100on01FEB2015-POSTINTEREST-VIEWJRNALENTRY.xlsx| Deposit1 | Deposit2 | Withdrawal1 | Interst_Posting1 |  Interst_Posting2 | Interst_Posting3 |
			
@RunnerClass8
	  Scenario: 4728-SUBMIT(DUEDATE-15JAN2015)01JAN2015-PAYCHARGE15JAN2015-DEPOSIT500on01FEB2015-VIEWJRNALENTRY
      
	  Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  When I set up the new create saving account from "NewSavingInput" sheet
	  			|4728-SUBMIT(DUEDATE-15JAN2015)01JAN2015-PAYCHARGE15JAN2015-DEPOSIT500on01FEB2015-VIEWJRNALENTRY.xlsx|
	  Then I "Do Transaction" and verified the following tabs
	  			|4728-SUBMIT(DUEDATE-15JAN2015)01JAN2015-PAYCHARGE15JAN2015-DEPOSIT500on01FEB2015-VIEWJRNALENTRY.xlsx|SavingsDeposit |
	  And I verified the "Saving Transaction & TransID" details successfully 
	  			|4728-SUBMIT(DUEDATE-15JAN2015)01JAN2015-PAYCHARGE15JAN2015-DEPOSIT500on01FEB2015-VIEWJRNALENTRY.xlsx|
	  And I Navigate to Accounting web page
	  Then I search with transaction id & verified the accounting entries
	   			|4728-SUBMIT(DUEDATE-15JAN2015)01JAN2015-PAYCHARGE15JAN2015-DEPOSIT500on01FEB2015-VIEWJRNALENTRY.xlsx| Deposit1 | Pay_charge  | Deposit2 |
	
@RunnerClass8
	  Scenario: 4729-ACTIVATEON01JAN2015-WITHDRAW100on01JAN2015-CLICKONPOSTINTEREST-VIEWJRNALENTRY
      
	  Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  When I set up the new create saving account from "NewSavingInput" sheet
	  			|4729-ACTIVATEON01JAN2015-WITHDRAW100on01JAN2015-CLICKONPOSTINTEREST-VIEWJRNALENTRY.xlsx|
	  Then I "Do Transaction" and verified the following tabs
	  			|4729-ACTIVATEON01JAN2015-WITHDRAW100on01JAN2015-CLICKONPOSTINTEREST-VIEWJRNALENTRY.xlsx|SavingsWdraw |
	  Then I "Post Interest" and verified the following tabs
	  			|4729-ACTIVATEON01JAN2015-WITHDRAW100on01JAN2015-CLICKONPOSTINTEREST-VIEWJRNALENTRY.xlsx| Modify Transaction|
	  And I verified the "Saving Transaction & TransID" details successfully 
	  			|4729-ACTIVATEON01JAN2015-WITHDRAW100on01JAN2015-CLICKONPOSTINTEREST-VIEWJRNALENTRY.xlsx|
	  And I Navigate to Accounting web page
	  Then I search with transaction id & verified the accounting entries
	   			|4729-ACTIVATEON01JAN2015-WITHDRAW100on01JAN2015-CLICKONPOSTINTEREST-VIEWJRNALENTRY.xlsx| Deposit |Withdrawal |
				
@RunnerClass8
	  Scenario: 4730-CREATEGROUPWITH2CLIENTS-SUBMITSAVINGS01JAN2015-DEPOSIT500on15JAN2015-WITHDRAW50on01FEB2015-VIEWJRNLENTRY
      
	  Given I setup the group
	  Then I entered the values into group from "Group" sheet
                |4730-CREATEGROUPWITH2CLIENTS-SUBMITSAVINGS01JAN2015-DEPOSIT500on15JAN2015-WITHDRAW50on01FEB2015-VIEWJRNLENTRY.xlsx|		  								  				  				  			
	  Then I entered the values into client from "Input1" sheet
	 	        |4730-CREATEGROUPWITH2CLIENTS-SUBMITSAVINGS01JAN2015-DEPOSIT500on15JAN2015-WITHDRAW50on01FEB2015-VIEWJRNLENTRY.xlsx|
	  Then I entered the values into client from "Input2" sheet
	 	        |4730-CREATEGROUPWITH2CLIENTS-SUBMITSAVINGS01JAN2015-DEPOSIT500on15JAN2015-WITHDRAW50on01FEB2015-VIEWJRNLENTRY.xlsx|
	  When I set up the new create saving account from "NewSavingInput" sheet
	  			|4730-CREATEGROUPWITH2CLIENTS-SUBMITSAVINGS01JAN2015-DEPOSIT500on15JAN2015-WITHDRAW50on01FEB2015-VIEWJRNLENTRY.xlsx|
	  Then I "Do Transaction" and verified the following tabs
	  			|4730-CREATEGROUPWITH2CLIENTS-SUBMITSAVINGS01JAN2015-DEPOSIT500on15JAN2015-WITHDRAW50on01FEB2015-VIEWJRNLENTRY.xlsx| SavingsDeposit | SavingsWdraw |
	  And I verified the "Saving Transaction & TransID" details successfully 
	  			|4730-CREATEGROUPWITH2CLIENTS-SUBMITSAVINGS01JAN2015-DEPOSIT500on15JAN2015-WITHDRAW50on01FEB2015-VIEWJRNLENTRY.xlsx|
	  And I Navigate to Accounting web page
	  Then I search with transaction id & verified the accounting entries
	   			|4730-CREATEGROUPWITH2CLIENTS-SUBMITSAVINGS01JAN2015-DEPOSIT500on15JAN2015-WITHDRAW50on01FEB2015-VIEWJRNLENTRY.xlsx| Deposit1 | Deposit2 | Withdrawal |
	
@RunnerClass8
	  Scenario: 4731-CREATEGROUPWITH2CLIENTS-SUBMITSAVINGSON01JAN2015-POSTINTRST01APRIL2015-CLOSE01APRIL2015-VIEWJRNLENTRY
      
	  Given I setup the group
	  Then I entered the values into group from "Group" sheet
                |4731-CREATEGROUPWITH2CLIENTS-SUBMITSAVINGSON01JAN2015-POSTINTRST01APRIL2015-CLOSE01APRIL2015-VIEWJRNLENTRY.xlsx|		  								  				  				  			
	  Then I entered the values into client from "Input1" sheet
	 	        |4731-CREATEGROUPWITH2CLIENTS-SUBMITSAVINGSON01JAN2015-POSTINTRST01APRIL2015-CLOSE01APRIL2015-VIEWJRNLENTRY.xlsx|
	  Then I entered the values into client from "Input2" sheet
	 	        |4731-CREATEGROUPWITH2CLIENTS-SUBMITSAVINGSON01JAN2015-POSTINTRST01APRIL2015-CLOSE01APRIL2015-VIEWJRNLENTRY.xlsx|
	  When I set up the new create saving account from "NewSavingInput" sheet
	  			|4731-CREATEGROUPWITH2CLIENTS-SUBMITSAVINGSON01JAN2015-POSTINTRST01APRIL2015-CLOSE01APRIL2015-VIEWJRNLENTRY.xlsx|
	  Then I "Post Interest" and verified the following tabs
	  			|4731-CREATEGROUPWITH2CLIENTS-SUBMITSAVINGSON01JAN2015-POSTINTRST01APRIL2015-CLOSE01APRIL2015-VIEWJRNLENTRY.xlsx| Modify Transaction |
	  Then I "Close Account" and verified the following tabs
	  			|4731-CREATEGROUPWITH2CLIENTS-SUBMITSAVINGSON01JAN2015-POSTINTRST01APRIL2015-CLOSE01APRIL2015-VIEWJRNLENTRY.xlsx| Modify Transaction1 |
	  And I verified the "Saving Transaction & TransID" details successfully 
	  			|4731-CREATEGROUPWITH2CLIENTS-SUBMITSAVINGSON01JAN2015-POSTINTRST01APRIL2015-CLOSE01APRIL2015-VIEWJRNLENTRY.xlsx|
	  And I Navigate to Accounting web page
	  Then I search with transaction id & verified the accounting entries
	   			|4731-CREATEGROUPWITH2CLIENTS-SUBMITSAVINGSON01JAN2015-POSTINTRST01APRIL2015-CLOSE01APRIL2015-VIEWJRNLENTRY.xlsx| Deposit1 | Interst_Posting1 | Interst_Posting2 | Interst_Posting3 | Withdrawal |
	
	
@RunnerClass8
	  Scenario: 4732-CREATE2CLIENTSWITHSAVINGSACCOUNTSon01JAN2013--DEPOSIT500onEachAccount-TRANSFER300fromONEClient2OTHER
      
	  Given I setup the clients
	  Then I entered the values into client from "Create Client1" sheet
	 	        |4732-CREATE2CLIENTSWITHSAVINGSACCOUNTSon01JAN2013--DEPOSIT500onEachAccount-TRANSFER300fromONEClient2OTHER-1stClient.xlsx|
	  When I set up the new create saving account from "NewSavingInput1" sheet
	  			|4732-CREATE2CLIENTSWITHSAVINGSACCOUNTSon01JAN2013--DEPOSIT500onEachAccount-TRANSFER300fromONEClient2OTHER-1stClient.xlsx|
	  Given I setup the clients
	  Then I entered the values into client from "Create Client2" sheet
	 	        |4732-CREATE2CLIENTSWITHSAVINGSACCOUNTSon01JAN2013--DEPOSIT500onEachAccount-TRANSFER300fromONEClient2OTHER-2ndClient.xlsx|
	  When I set up the new create saving account from "NewSavingInput2" sheet
	  			|4732-CREATE2CLIENTSWITHSAVINGSACCOUNTSon01JAN2013--DEPOSIT500onEachAccount-TRANSFER300fromONEClient2OTHER-2ndClient.xlsx|
	  Then I "Do Transaction" and verified the following tabs
	  			|4732-CREATE2CLIENTSWITHSAVINGSACCOUNTSon01JAN2013--DEPOSIT500onEachAccount-TRANSFER300fromONEClient2OTHER-2ndClient.xlsx| SavingsDeposit |
	  Then I "Transfer Fund to another account" and verified the following tabs
	  			|4732-CREATE2CLIENTSWITHSAVINGSACCOUNTSon01JAN2013--DEPOSIT500onEachAccount-TRANSFER300fromONEClient2OTHER-2ndClient.xlsx| Modify Transaction |
	   And I verified the "Saving Transaction & TransID" details successfully 
	  			|4732-CREATE2CLIENTSWITHSAVINGSACCOUNTSon01JAN2013--DEPOSIT500onEachAccount-TRANSFER300fromONEClient2OTHER-2ndClient.xlsx|
	   And I Navigate to Accounting web page
	   Then I search with transaction id & verified the accounting entries
	   			|4732-CREATE2CLIENTSWITHSAVINGSACCOUNTSon01JAN2013--DEPOSIT500onEachAccount-TRANSFER300fromONEClient2OTHER-2ndClient.xlsx| Deposit1 | Deposit2 | Withdrawal |
	   Then I navigate To Saving Account Page
	   And I verified the "Saving Transaction & TransID" details successfully 
	  			|4732-CREATE2CLIENTSWITHSAVINGSACCOUNTSon01JAN2013--DEPOSIT500onEachAccount-TRANSFER300fromONEClient2OTHER-1stClient.xlsx|
	   And I Navigate to Accounting web page
	   Then I search with transaction id & verified the accounting entries
	   			|4732-CREATE2CLIENTSWITHSAVINGSACCOUNTSon01JAN2013--DEPOSIT500onEachAccount-TRANSFER300fromONEClient2OTHER-1stClient.xlsx| Deposit1 | Deposit2 |
	   	
@RunnerClass8
	  Scenario: 4733-SUBMITSAVINGS01JAN2015-DEPOSIT3000on01JAN2015-TRANSFER900on01FEB2015toLOANACCOUNTofOTHERCLIENT
      
	  Given I setup the clients
	  Then I entered the values into client from "Create Client1" sheet
	 	        |4733-SUBMITSAVINGS01JAN2015-DEPOSIT3000on01JAN2015-TRANSFER846on08JAN2015toLOANACCOUNTofOTHERCLIENT-1stClient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			|4733-SUBMITSAVINGS01JAN2015-DEPOSIT3000on01JAN2015-TRANSFER846on08JAN2015toLOANACCOUNTofOTHERCLIENT-1stClient.xlsx|
	  Given I setup the clients
	  Then I entered the values into client from "Create Client2" sheet
	 	        |4733-SUBMITSAVINGS01JAN2015-DEPOSIT3000on01JAN2015-TRANSFER846on08JAN2015toLOANACCOUNTofOTHERCLIENT-2ndClient.xlsx|
	  When I set up the new create saving account from "NewSavingInput" sheet
	  			|4733-SUBMITSAVINGS01JAN2015-DEPOSIT3000on01JAN2015-TRANSFER846on08JAN2015toLOANACCOUNTofOTHERCLIENT-2ndClient.xlsx|
	  Then I "Do Transaction" and verified the following tabs
	  			|4733-SUBMITSAVINGS01JAN2015-DEPOSIT3000on01JAN2015-TRANSFER846on08JAN2015toLOANACCOUNTofOTHERCLIENT-2ndClient.xlsx| SavingsDeposit |
	  Then I "Transfer Fund to another account" and verified the following tabs
	  			|4733-SUBMITSAVINGS01JAN2015-DEPOSIT3000on01JAN2015-TRANSFER846on08JAN2015toLOANACCOUNTofOTHERCLIENT-2ndClient.xlsx| Modify Transaction |
	   And I verified the "Saving Transaction & TransID" details successfully 
	  			|4733-SUBMITSAVINGS01JAN2015-DEPOSIT3000on01JAN2015-TRANSFER846on08JAN2015toLOANACCOUNTofOTHERCLIENT-2ndClient.xlsx|
	   And I Navigate to Accounting web page
	   Then I search with transaction id & verified the accounting entries
	   			|4733-SUBMITSAVINGS01JAN2015-DEPOSIT3000on01JAN2015-TRANSFER846on08JAN2015toLOANACCOUNTofOTHERCLIENT-2ndClient.xlsx| Deposit2 | Deposit1 |  Withdrawal |
	   Then I navigate To Loan Account Page
	   Then I verified the "Summary" details successfully 
	  			|4733-SUBMITSAVINGS01JAN2015-DEPOSIT3000on01JAN2015-TRANSFER846on08JAN2015toLOANACCOUNTofOTHERCLIENT-1stClient.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
	  			|4733-SUBMITSAVINGS01JAN2015-DEPOSIT3000on01JAN2015-TRANSFER846on08JAN2015toLOANACCOUNTofOTHERCLIENT-1stClient.xlsx|
	  And I verified the "Transactions" details successfully
	  			|4733-SUBMITSAVINGS01JAN2015-DEPOSIT3000on01JAN2015-TRANSFER846on08JAN2015toLOANACCOUNTofOTHERCLIENT-1stClient.xlsx|			
	  
@RunnerClass8
	  Scenario: 4734-SUBMITSAVINGS01JAN2015-DEPOSIT3000on01JAN2015-TRANSFER900on01FEB2015toLOANACCOUNTofSAMECLIENT
      
	  Given I setup the clients
	  Then I entered the values into client from "Create Client1" sheet
	 	        |4734-SUBMITSAVINGS01JAN2015-DEPOSIT3000on01JAN2015-TRANSFER900on01FEB2015toLOANACCOUNTofSAMECLIENT-1stClient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			|4734-SUBMITSAVINGS01JAN2015-DEPOSIT3000on01JAN2015-TRANSFER900on01FEB2015toLOANACCOUNTofSAMECLIENT-1stClient.xlsx|
	  When I set up the new create saving account from "NewSavingInput" sheet
	  			|4734-SUBMITSAVINGS01JAN2015-DEPOSIT3000on01JAN2015-TRANSFER900on01FEB2015toLOANACCOUNTofSAMECLIENT-2ndClient.xlsx|
	  Then I "Do Transaction" and verified the following tabs
	  			|4734-SUBMITSAVINGS01JAN2015-DEPOSIT3000on01JAN2015-TRANSFER900on01FEB2015toLOANACCOUNTofSAMECLIENT-2ndClient.xlsx| SavingsDeposit |
	  Then I "Transfer Fund to another account" and verified the following tabs
	  			|4734-SUBMITSAVINGS01JAN2015-DEPOSIT3000on01JAN2015-TRANSFER900on01FEB2015toLOANACCOUNTofSAMECLIENT-2ndClient.xlsx| Modify Transaction |
	   And I verified the "Saving Transaction & TransID" details successfully 
	  			|4734-SUBMITSAVINGS01JAN2015-DEPOSIT3000on01JAN2015-TRANSFER900on01FEB2015toLOANACCOUNTofSAMECLIENT-2ndClient.xlsx|
	   And I Navigate to Accounting web page
	   Then I search with transaction id & verified the accounting entries
	   			|4734-SUBMITSAVINGS01JAN2015-DEPOSIT3000on01JAN2015-TRANSFER900on01FEB2015toLOANACCOUNTofSAMECLIENT-2ndClient.xlsx|  Deposit2 | Deposit1 |Withdrawal |
	   Then I navigate To Loan Account Page
	   Then I verified the "Summary" details successfully 
	  			|4734-SUBMITSAVINGS01JAN2015-DEPOSIT3000on01JAN2015-TRANSFER900on01FEB2015toLOANACCOUNTofSAMECLIENT-1stClient.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
	  			|4734-SUBMITSAVINGS01JAN2015-DEPOSIT3000on01JAN2015-TRANSFER900on01FEB2015toLOANACCOUNTofSAMECLIENT-1stClient.xlsx|
	  And I verified the "Transactions" details successfully
	  			|4734-SUBMITSAVINGS01JAN2015-DEPOSIT3000on01JAN2015-TRANSFER900on01FEB2015toLOANACCOUNTofSAMECLIENT-1stClient.xlsx|			
	  
@RunnerClass8
	  Scenario: 4735-SUBMIT01JAN2015-DEPOSIT3000on01JAN2015-TRANSFER900on01FEB2015toLOANACCOUNTOTHERCLIENT-undoTransactionINLOANACCOUNT
      
	  Given I setup the clients
	  Then I entered the values into client from "Create Client1" sheet
	 	        |4735-SUBMIT01JAN2015-DEPOSIT3000on01JAN2015-TRANSFER900on01FEB2015toLOANACCOUNTOTHERCLIENT-undoTransactionINLOANACCOUNT-1stClient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			|4735-SUBMIT01JAN2015-DEPOSIT3000on01JAN2015-TRANSFER900on01FEB2015toLOANACCOUNTOTHERCLIENT-undoTransactionINLOANACCOUNT-1stClient.xlsx|
	  Given I setup the clients
	  Then I entered the values into client from "Create Client2" sheet
	 	        |4735-SUBMIT01JAN2015-DEPOSIT3000on01JAN2015-TRANSFER900on01FEB2015toLOANACCOUNTOTHERCLIENT-undoTransactionINLOANACCOUNT-2ndClient.xlsx|
	  When I set up the new create saving account from "NewSavingInput" sheet
	  			|4735-SUBMIT01JAN2015-DEPOSIT3000on01JAN2015-TRANSFER900on01FEB2015toLOANACCOUNTOTHERCLIENT-undoTransactionINLOANACCOUNT-2ndClient.xlsx|
	  Then I "Do Transaction" and verified the following tabs
	  			|4735-SUBMIT01JAN2015-DEPOSIT3000on01JAN2015-TRANSFER900on01FEB2015toLOANACCOUNTOTHERCLIENT-undoTransactionINLOANACCOUNT-2ndClient.xlsx| SavingsDeposit |
	  Then I "Transfer Fund to another account" and verified the following tabs
	  			|4735-SUBMIT01JAN2015-DEPOSIT3000on01JAN2015-TRANSFER900on01FEB2015toLOANACCOUNTOTHERCLIENT-undoTransactionINLOANACCOUNT-2ndClient.xlsx| Modify Transaction |
	   And I verified the "Saving Transaction & TransID" details successfully 
	  			|4735-SUBMIT01JAN2015-DEPOSIT3000on01JAN2015-TRANSFER900on01FEB2015toLOANACCOUNTOTHERCLIENT-undoTransactionINLOANACCOUNT-2ndClient.xlsx|
	   And I Navigate to Accounting web page
	   Then I search with transaction id & verified the accounting entries
	   			|4735-SUBMIT01JAN2015-DEPOSIT3000on01JAN2015-TRANSFER900on01FEB2015toLOANACCOUNTOTHERCLIENT-undoTransactionINLOANACCOUNT-2ndClient.xlsx|  Deposit2 | Deposit1 |Withdrawal |
	   Then I navigate To Loan Account Page
	   And I verified the "Transactions" details successfully
	  			|4735-SUBMIT01JAN2015-DEPOSIT3000on01JAN2015-TRANSFER900on01FEB2015toLOANACCOUNTOTHERCLIENT-undoTransactionINLOANACCOUNT-1stClient.xlsx|		  
        Then I "undo transaction from transaction tab" and verified the following tabs
                |4735-SUBMIT01JAN2015-DEPOSIT3000on01JAN2015-TRANSFER900on01FEB2015toLOANACCOUNTOTHERCLIENT-undoTransactionINLOANACCOUNT-1stClient.xlsx|Modify Transaction|
	  Then I navigate To Saving Account Page
	 	And I verified the "Saving Transaction" details successfully 
	  			|4735-SUBMIT01JAN2015-DEPOSIT3000on01JAN2015-TRANSFER900on01FEB2015toLOANACCOUNTOTHERCLIENT-undoTransactionINLOANACCOUNT-1stClient.xlsx|

@RunnerClass8
	  Scenario: 4736-SUBMITSAVINGS01JAN2015-APRACT01JAN2015-TRANSFER2000on08JAN2015toLOANACCOUNTofSAMECLIENT
      
	  Given I setup the clients
	  Then I entered the values into client from "Create Client1" sheet
	 	        |4736-SUBMITSAVINGS01JAN2015-APRACT01JAN2015-TRANSFER2000on08JAN2015toLOANACCOUNTofSAMECLIENT.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			|4736-SUBMITSAVINGS01JAN2015-APRACT01JAN2015-TRANSFER2000on08JAN2015toLOANACCOUNTofSAMECLIENT.xlsx|
	  When I set up the new create saving account from "NewSavingInput" sheet
	  			|4736-SUBMITSAVINGS01JAN2015-APRACT01JAN2015-TRANSFER2000on08JAN2015toLOANACCOUNTofSAMECLIENT.xlsx|
	  Then I "Transfer Fund to another account" and verified the following tabs
	  			|4736-SUBMITSAVINGS01JAN2015-APRACT01JAN2015-TRANSFER2000on08JAN2015toLOANACCOUNTofSAMECLIENT.xlsx| Modify Transaction |
	   Then i validate and Verify from "error" sheet
	  			|4736-SUBMITSAVINGS01JAN2015-APRACT01JAN2015-TRANSFER2000on08JAN2015toLOANACCOUNTofSAMECLIENT.xlsx|

@RunnerClass8
	  Scenario: 4737-SUBMITFD01JAN2015(AMT5000-PERIOD12MNTH)-APRACT05JAN2015
      
      Given I setup the "FixedDeposit" product
				| Productloannavigation.xlsx |
	  Then I entered the values into product from "ProductFDInput" Sheet
				|4737-SUBMITFD01JAN2015(AMT5000-PERIOD12MNTH)-APRACT05JAN2015.xlsx|
	  Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  When I set up the new create FD account from "NewFDInput" sheet
	  			|4737-SUBMITFD01JAN2015(AMT5000-PERIOD12MNTH)-APRACT05JAN2015.xlsx|		
	  And I verified the "FixedDeposit Summary" details successfully 
	  			|4737-SUBMITFD01JAN2015(AMT5000-PERIOD12MNTH)-APRACT05JAN2015.xlsx|
	  And I verified the "FixedDeposit Transaction" details successfully 
	  			|4737-SUBMITFD01JAN2015(AMT5000-PERIOD12MNTH)-APRACT05JAN2015.xlsx|

@RunnerClass8
	  Scenario: 4738-SUBMITFD01JAN2015(AMT5000-DEPOPRD12MNTH)-MODIFYAPP-LOCKPRD6MNTH-DEPOPRD6MNTH-ACT01JAN2015
      
	  Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  When I set up the new create FD account from "NewFDInput" sheet
	  			|4738-SUBMITFD01JAN2015(AMT5000-DEPOPRD12MNTH)-MODIFYAPP-LOCKPRD6MNTH-DEPOPRD6MNTH-ACT01JAN2015.xlsx|
	  And I modify New Account from "ModifyApplication" sheet
	            |4738-SUBMITFD01JAN2015(AMT5000-DEPOPRD12MNTH)-MODIFYAPP-LOCKPRD6MNTH-DEPOPRD6MNTH-ACT01JAN2015.xlsx|		
	  And I verified the "FixedDeposit Summary" details successfully 
	  			|4738-SUBMITFD01JAN2015(AMT5000-DEPOPRD12MNTH)-MODIFYAPP-LOCKPRD6MNTH-DEPOPRD6MNTH-ACT01JAN2015.xlsx|
	  And I verified the "FixedDeposit Transaction" details successfully 
	  			|4738-SUBMITFD01JAN2015(AMT5000-DEPOPRD12MNTH)-MODIFYAPP-LOCKPRD6MNTH-DEPOPRD6MNTH-ACT01JAN2015.xlsx|
	   
@RunnerClass8
	  Scenario: 4739-SUBMITFD01JAN2015(AMT5000-LCKPRD12MNTH-DEPOPRD6MNTH)-ACT01JAN2015-PREMATURECLOSE02JULY2015
      
	  Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  When I set up the new create FD account from "NewFDInput" sheet
	  			|4739-SUBMITFD01JAN2015(AMT5000-LCKPRD12MNTH-DEPOPRD6MNTH)-ACT01JAN2015-PREMATURECLOSE02JULY2015.xlsx|		
	 Then I "PreMature Close" and verified the following tabs
	  			|4739-SUBMITFD01JAN2015(AMT5000-LCKPRD12MNTH-DEPOPRD6MNTH)-ACT01JAN2015-PREMATURECLOSE02JULY2015.xlsx| Modify Transaction |
	  Then i validate and Verify from "error" sheet 
	  			|4739-SUBMITFD01JAN2015(AMT5000-LCKPRD12MNTH-DEPOPRD6MNTH)-ACT01JAN2015-PREMATURECLOSE02JULY2015.xlsx|
				
@RunnerClass8
	  Scenario: 4740-SUBMITFDS01JAN2015(AMT5000-LCKPRD6MNTH-DEPOPRD6MNTH)-APRACT01JAN2015-POSTINTon01APR2015
      
	  Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  When I set up the new create FD account from "NewFDInput" sheet
	  			|4740-SUBMITFDS01JAN2015(AMT5000-LCKPRD6MNTH-DEPOPRD6MNTH)-APRACT01JAN2015-POSTINTon01APR2015.xlsx|		
	 Then I "Post Interest" and verified the following tabs
	  			|4740-SUBMITFDS01JAN2015(AMT5000-LCKPRD6MNTH-DEPOPRD6MNTH)-APRACT01JAN2015-POSTINTon01APR2015.xlsx| Modify Transaction |
	  And I verified the "FixedDeposit Summary" details successfully 
	  			|4740-SUBMITFDS01JAN2015(AMT5000-LCKPRD6MNTH-DEPOPRD6MNTH)-APRACT01JAN2015-POSTINTon01APR2015.xlsx|
	  And I verified the "FixedDeposit Transaction" details successfully 
	  			|4740-SUBMITFDS01JAN2015(AMT5000-LCKPRD6MNTH-DEPOPRD6MNTH)-APRACT01JAN2015-POSTINTon01APR2015.xlsx|
	   
@RunnerClass8
	  Scenario: 4741-SUBMITFDS01JAN2015(AMT5000-LCKPRD6MNTH-DEPOPRD6MNTH)-APR01JAN2015-REJECT05JAN2015
      
	  Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  When I set up the new create FD account from "NewFDInput" sheet
	  			|4741-SUBMITFDS01JAN2015(AMT5000-LCKPRD6MNTH-DEPOPRD6MNTH)-APR01JAN2015-REJECT05JAN2015.xlsx|		
	 Then I "UndoApprove and Reject Application" and verified the following tabs
	  			|4741-SUBMITFDS01JAN2015(AMT5000-LCKPRD6MNTH-DEPOPRD6MNTH)-APR01JAN2015-REJECT05JAN2015.xlsx| Modify Transaction |
	  And I verified the "FixedDeposit Summary" details successfully 
	  			|4741-SUBMITFDS01JAN2015(AMT5000-LCKPRD6MNTH-DEPOPRD6MNTH)-APR01JAN2015-REJECT05JAN2015.xlsx|

@RunnerClass8
	  Scenario: 4742-SUBMITFDS01JAN2015(DEPOPRD12MNTH)-ADDCHRGE-APRACT01FEB2015
      
	  Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  When I set up the new create FD account from "NewFDInput" sheet
	  			|4742-SUBMITFDS01JAN2015(DEPOPRD12MNTH)-ADDCHRGE-APRACT01FEB2015.xlsx|
	  Then I "Pay charge" and verified the following tabs 
	  			|4742-SUBMITFDS01JAN2015(DEPOPRD12MNTH)-ADDCHRGE-APRACT01FEB2015.xlsx| Modify Transaction |
	  And I verified the "FixedDeposit Transaction" details successfully 
	  			|4742-SUBMITFDS01JAN2015(DEPOPRD12MNTH)-ADDCHRGE-APRACT01FEB2015.xlsx|
	  And I verified the "FixedDeposit Summary" details successfully 
	  			|4742-SUBMITFDS01JAN2015(DEPOPRD12MNTH)-ADDCHRGE-APRACT01FEB2015.xlsx|
	  And I verified the "FixedDeposit Charges" details successfully 
	  			|4742-SUBMITFDS01JAN2015(DEPOPRD12MNTH)-ADDCHRGE-APRACT01FEB2015.xlsx|
	
@RunnerClass8
	  Scenario: 4743-SUBMITFDS01JAN2015(AMT5000-DEPOPRD12MNTH-ActivationCharge-Flat)-ACT01JAN2015
      
	  Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  When I set up the new create FD account from "NewFDInput" sheet
	  			|4743-SUBMITFDS01JAN2015(AMT5000-DEPOPRD12MNTH-ActivationCharge-Flat)-ACT01JAN2015.xlsx|
	  And I verified the "FixedDeposit Transaction" details successfully 
	  			|4743-SUBMITFDS01JAN2015(AMT5000-DEPOPRD12MNTH-ActivationCharge-Flat)-ACT01JAN2015.xlsx|
	  And I verified the "FixedDeposit Summary" details successfully 
	  			|4743-SUBMITFDS01JAN2015(AMT5000-DEPOPRD12MNTH-ActivationCharge-Flat)-ACT01JAN2015.xlsx|	
	  And I verified the "FixedDeposit Charges" details successfully 
	  			|4743-SUBMITFDS01JAN2015(AMT5000-DEPOPRD12MNTH-ActivationCharge-Flat)-ACT01JAN2015.xlsx|	
				
@RunnerClass8
	  Scenario: 4744-SUBMITFDS01JAN2015(AMT5000-DEPOPRD12MNTH)-ACT01JAN2015-ADDCHARGE(FD-SpecifiedDueDate-Flat)
      
	  Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  When I set up the new create FD account from "NewFDInput" sheet
	  			|4744-SUBMITFDS01JAN2015(AMT5000-DEPOPRD12MNTH)-ACT01JAN2015-ADDCHARGE(FD-SpecifiedDueDate-Flat).xlsx|
	  Then I "Pay charge" and verified the following tabs 
	  			|4744-SUBMITFDS01JAN2015(AMT5000-DEPOPRD12MNTH)-ACT01JAN2015-ADDCHARGE(FD-SpecifiedDueDate-Flat).xlsx| Modify Transaction |
	  And I verified the "FixedDeposit Transaction" details successfully 
	  			|4744-SUBMITFDS01JAN2015(AMT5000-DEPOPRD12MNTH)-ACT01JAN2015-ADDCHARGE(FD-SpecifiedDueDate-Flat).xlsx|
	  And I verified the "FixedDeposit Summary" details successfully 
	  			|4744-SUBMITFDS01JAN2015(AMT5000-DEPOPRD12MNTH)-ACT01JAN2015-ADDCHARGE(FD-SpecifiedDueDate-Flat).xlsx|	
	  And I verified the "FixedDeposit Charges" details successfully 
	  			|4744-SUBMITFDS01JAN2015(AMT5000-DEPOPRD12MNTH)-ACT01JAN2015-ADDCHARGE(FD-SpecifiedDueDate-Flat).xlsx|
				
@RunnerClass8
	  Scenario: 4745-SUBMITFDS01JAN2015(AMT5000-DEPOPRD12MNTH-SavingsActivation-Flat)-ACT01JAN2015-WaiveCharge
      
	  Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  When I set up the new create FD account from "NewFDInput" sheet
	  			|4745-SUBMITFDS01JAN2015(AMT5000-DEPOPRD12MNTH-SavingsActivation-Flat)-ACT01JAN2015-WaiveCharge.xlsx|
	  Then I "Waive charge" and verified the following tabs 
	  			|4745-SUBMITFDS01JAN2015(AMT5000-DEPOPRD12MNTH-SavingsActivation-Flat)-ACT01JAN2015-WaiveCharge.xlsx| Modify Transaction |
	  And I verified the "FixedDeposit Transaction" details successfully 
	  			|4745-SUBMITFDS01JAN2015(AMT5000-DEPOPRD12MNTH-SavingsActivation-Flat)-ACT01JAN2015-WaiveCharge.xlsx|
	  And I verified the "FixedDeposit Summary" details successfully 
	  			|4745-SUBMITFDS01JAN2015(AMT5000-DEPOPRD12MNTH-SavingsActivation-Flat)-ACT01JAN2015-WaiveCharge.xlsx|	
	  And I verified the "FixedDeposit Charges" details successfully 
	  			|4745-SUBMITFDS01JAN2015(AMT5000-DEPOPRD12MNTH-SavingsActivation-Flat)-ACT01JAN2015-WaiveCharge.xlsx|	
				
				
@RunnerClass8
	  Scenario: 4746-SUBMITFDS01JAN2015(AMT5000-DEPOPRD12MNTH)-ACT01JAN2015-POSTINTEREST
      
	  Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  When I set up the new create FD account from "NewFDInput" sheet
	  			|4746-SUBMITFDS01JAN2015(AMT5000-DEPOPRD12MNTH)-ACT01JAN2015-POSTINTEREST.xlsx|
	  Then I "Post Interest" and verified the following tabs 
	  			|4746-SUBMITFDS01JAN2015(AMT5000-DEPOPRD12MNTH)-ACT01JAN2015-POSTINTEREST.xlsx| Modify Transaction |
	  And I verified the "FixedDeposit Transaction" details successfully 
	  			|4746-SUBMITFDS01JAN2015(AMT5000-DEPOPRD12MNTH)-ACT01JAN2015-POSTINTEREST.xlsx|
	  And I verified the "FixedDeposit Summary" details successfully 
	  			|4746-SUBMITFDS01JAN2015(AMT5000-DEPOPRD12MNTH)-ACT01JAN2015-POSTINTEREST.xlsx|	
				
@RunnerClass8
	  Scenario: 4747-SUBMITFD01JAN2015(AMT5000-PRD06MNTHwithINCT-1)-APRACT01JAN2015
 
	  Given I setup the "FixedDeposit" product
				| Productloannavigation.xlsx |
	  Then I entered the values into product from "ProductFDInput" Sheet
				|4747-SUBMITFD01JAN2015(AMT5000-PRD06MNTHwithINCT-1)-APRACT01JAN2015.xlsx|
	  Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|4747-SUBMITFD01JAN2015(AMT5000-PRD06MNTHwithINCT-1)-APRACT01JAN2015.xlsx|
	  When I set up the new create FD account from "NewFDInput" sheet
	  			|4747-SUBMITFD01JAN2015(AMT5000-PRD06MNTHwithINCT-1)-APRACT01JAN2015.xlsx|
	  And I verified the "FixedDeposit Transaction" details successfully 
	  			|4747-SUBMITFD01JAN2015(AMT5000-PRD06MNTHwithINCT-1)-APRACT01JAN2015.xlsx|
	  And I verified the "FixedDeposit Summary" details successfully 
	  			|4747-SUBMITFD01JAN2015(AMT5000-PRD06MNTHwithINCT-1)-APRACT01JAN2015.xlsx|	
				
@RunnerClass8
	  Scenario: 4748-SUBMITFD01JAN2015(AMT5000-PRD06MNTHwithINCT-2)-APRACT01JAN2015
      
      Given I setup the "FixedDeposit" product
				| Productloannavigation.xlsx |
	  Then I entered the values into product from "ProductFDInput" Sheet
				|4748-SUBMITFD01JAN2015(AMT5000-PRD06MNTHwithINCT-2)-APRACT01JAN2015.xlsx|
	  Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|4748-SUBMITFD01JAN2015(AMT5000-PRD06MNTHwithINCT-2)-APRACT01JAN2015.xlsx|
	  When I set up the new create FD account from "NewFDInput" sheet
	  			|4748-SUBMITFD01JAN2015(AMT5000-PRD06MNTHwithINCT-2)-APRACT01JAN2015.xlsx|
	  And I verified the "FixedDeposit Transaction" details successfully 
	  			|4748-SUBMITFD01JAN2015(AMT5000-PRD06MNTHwithINCT-2)-APRACT01JAN2015.xlsx|
	  And I verified the "FixedDeposit Summary" details successfully 
	  			|4748-SUBMITFD01JAN2015(AMT5000-PRD06MNTHwithINCT-2)-APRACT01JAN2015.xlsx|
				
@RunnerClass8
	  Scenario: 4749-SUBMITFD01JAN2015(AMT5000-PRD12MNTHwithINCT-3)-APRACT01JAN2015
      
      Given I setup the "FixedDeposit" product
				| Productloannavigation.xlsx |
	  Then I entered the values into product from "ProductFDInput" Sheet
				|4749-SUBMITFD01JAN2015(AMT5000-PRD12MNTHwithINCT-3)-APRACT01JAN2015.xlsx|
	  Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|4749-SUBMITFD01JAN2015(AMT5000-PRD12MNTHwithINCT-3)-APRACT01JAN2015.xlsx|
	  When I set up the new create FD account from "NewFDInput" sheet
	  			|4749-SUBMITFD01JAN2015(AMT5000-PRD12MNTHwithINCT-3)-APRACT01JAN2015.xlsx|
	  And I verified the "FixedDeposit Transaction" details successfully 
	  			|4749-SUBMITFD01JAN2015(AMT5000-PRD12MNTHwithINCT-3)-APRACT01JAN2015.xlsx|
	  And I verified the "FixedDeposit Summary" details successfully 
	  			|4749-SUBMITFD01JAN2015(AMT5000-PRD12MNTHwithINCT-3)-APRACT01JAN2015.xlsx|
				
@RunnerClass8
	  Scenario: 4750-SUBMITFD01JAN2015(AMT5000-PRD12MNTHwithINCT-4)-APRACT01JAN2015
      
      Given I setup the "FixedDeposit" product
				| Productloannavigation.xlsx |
	  Then I entered the values into product from "ProductFDInput" Sheet
				|4750-SUBMITFD01JAN2015(AMT5000-PRD12MNTHwithINCT-4)-APRACT01JAN2015.xlsx|
	  Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|4750-SUBMITFD01JAN2015(AMT5000-PRD12MNTHwithINCT-4)-APRACT01JAN2015.xlsx|
	  When I set up the new create FD account from "NewFDInput" sheet
	  			|4750-SUBMITFD01JAN2015(AMT5000-PRD12MNTHwithINCT-4)-APRACT01JAN2015.xlsx|
	  And I verified the "FixedDeposit Transaction" details successfully 
	  			|4750-SUBMITFD01JAN2015(AMT5000-PRD12MNTHwithINCT-4)-APRACT01JAN2015.xlsx|
	  And I verified the "FixedDeposit Summary" details successfully 
	  			|4750-SUBMITFD01JAN2015(AMT5000-PRD12MNTHwithINCT-4)-APRACT01JAN2015.xlsx|
				
@RunnerClass8
	  Scenario: 4751-SUBMITFD01JAN2015(AMT5000-PRD06MNTHwithINCT-5)-APRACT01JAN2015
      
      Given I setup the "FixedDeposit" product
				| Productloannavigation.xlsx |
	  Then I entered the values into product from "ProductFDInput" Sheet
				|4751-SUBMITFD01JAN2015(AMT5000-PRD06MNTHwithINCT-5)-APRACT01JAN2015.xlsx|
	  Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|4751-SUBMITFD01JAN2015(AMT5000-PRD06MNTHwithINCT-5)-APRACT01JAN2015.xlsx|
	  When I set up the new create FD account from "NewFDInput" sheet
	  			|4751-SUBMITFD01JAN2015(AMT5000-PRD06MNTHwithINCT-5)-APRACT01JAN2015.xlsx|
	  And I verified the "FixedDeposit Transaction" details successfully 
	  			|4751-SUBMITFD01JAN2015(AMT5000-PRD06MNTHwithINCT-5)-APRACT01JAN2015.xlsx|
	  And I verified the "FixedDeposit Summary" details successfully 
	  			|4751-SUBMITFD01JAN2015(AMT5000-PRD06MNTHwithINCT-5)-APRACT01JAN2015.xlsx|
	  	
@RunnerClass8
	  Scenario: 4752-SUBMITFD01JAN2015(AMT5000-PRD12MNTHwithINCT-6)-APRACT01JAN2015
      
      Given I setup the "FixedDeposit" product
				| Productloannavigation.xlsx |
	  Then I entered the values into product from "ProductFDInput" Sheet
				|4752-SUBMITFD01JAN2015(AMT5000-PRD12MNTHwithINCT-6)-APRACT01JAN2015.xlsx|
	  Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|4752-SUBMITFD01JAN2015(AMT5000-PRD12MNTHwithINCT-6)-APRACT01JAN2015.xlsx|
	  When I set up the new create FD account from "NewFDInput" sheet
	  			|4752-SUBMITFD01JAN2015(AMT5000-PRD12MNTHwithINCT-6)-APRACT01JAN2015.xlsx|
	  And I verified the "FixedDeposit Transaction" details successfully 
	  			|4752-SUBMITFD01JAN2015(AMT5000-PRD12MNTHwithINCT-6)-APRACT01JAN2015.xlsx|
	  And I verified the "FixedDeposit Summary" details successfully 
	  			|4752-SUBMITFD01JAN2015(AMT5000-PRD12MNTHwithINCT-6)-APRACT01JAN2015.xlsx|	

@RunnerClass8
	  Scenario: 4753-SUBMITFD01JAN2015(AMT5000-PRD12MNTHwithLINKSAVINGS)-APRACT01JAN2015
      
      
	  Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	   When I set up the new create saving account from "NewSavingInput" sheet
	  			|4753-SUBMITFD01JAN2015(AMT5000-PRD12MNTHwithLINKSAVINGS)-APRACT01JAN2015.xlsx|
	  When I set up the new create FD account from "NewFDInput" sheet
	  			|4753-SUBMITFD01JAN2015(AMT5000-PRD12MNTHwithLINKSAVINGS)-APRACT01JAN2015.xlsx|
	  Then i validate and Verify from "error2" sheet 
	  			|4753-SUBMITFD01JAN2015(AMT5000-PRD12MNTHwithLINKSAVINGS)-APRACT01JAN2015.xlsx|	

@RunnerClass8
	  Scenario: 4754-SUBMITFD01JAN2015(AMT5000-PRD12MNTHwithLINKSAVINGS)-APRACT01JAN2015
      
      
	  Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	   When I set up the new create saving account from "NewSavingInput" sheet
	  			|4754-SUBMITFD01JAN2015(AMT5000-PRD12MNTHwithLINKSAVINGS)-APRACT01JAN2015.xlsx|
	  When I set up the new create FD account from "NewFDInput" sheet
	  			|4754-SUBMITFD01JAN2015(AMT5000-PRD12MNTHwithLINKSAVINGS)-APRACT01JAN2015.xlsx|
	   And I verified the "FixedDeposit Transaction" details successfully 
	  			|4754-SUBMITFD01JAN2015(AMT5000-PRD12MNTHwithLINKSAVINGS)-APRACT01JAN2015.xlsx|
	  And I verified the "FixedDeposit Summary" details successfully 
	  			|4754-SUBMITFD01JAN2015(AMT5000-PRD12MNTHwithLINKSAVINGS)-APRACT01JAN2015.xlsx|
	  Then I navigate To Saving Account Page
	  And I verified the "Saving Transaction" details successfully 
	  			|4754-SUBMITFD01JAN2015(AMT5000-PRD12MNTHwithLINKSAVINGS)-APRACT01JAN2015.xlsx|

@RunnerClass8
	  Scenario: 4755-SUBMITFD01SEPT2014(AMT5000-PRD06MNTH)-ACT01SEPT2014-POSTINTEREST-CLOSEon01APR2015-ACTNwithdrawdeposit
      
      
	  Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  When I set up the new create FD account from "NewFDInput" sheet
	  			|4755-SUBMITFD01SEPT2014(AMT5000-PRD06MNTH)-ACT01SEPT2014-POSTINTEREST-CLOSEon01APR2015-ACTNwithdrawdeposit.xlsx|
	  Then I "Do PrematueClose" and verified the following tabs
	  			|4755-SUBMITFD01SEPT2014(AMT5000-PRD06MNTH)-ACT01SEPT2014-POSTINTEREST-CLOSEon01APR2015-ACTNwithdrawdeposit.xlsx| Modify Transaction |
	  And I verified the "FixedDeposit Transaction" details successfully 
	  			|4755-SUBMITFD01SEPT2014(AMT5000-PRD06MNTH)-ACT01SEPT2014-POSTINTEREST-CLOSEon01APR2015-ACTNwithdrawdeposit.xlsx|
	  And I verified the "FixedDeposit Summary" details successfully 
	  			|4755-SUBMITFD01SEPT2014(AMT5000-PRD06MNTH)-ACT01SEPT2014-POSTINTEREST-CLOSEon01APR2015-ACTNwithdrawdeposit.xlsx|

@RunnerClass8
	  Scenario: 4756-SUBMITFD01SEPT2014(AMT5000-PRD06MNTH)-ACT01SEPT2014-POSTINTEREST-CLOSEon01APR2015-ACTIONTransfersavings
      
      
	  Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  When I set up the new create saving account from "NewSavingInput" sheet
	  			|4756-SUBMITFD01SEPT2014(AMT5000-PRD06MNTH)-ACT01SEPT2014-POSTINTEREST-CLOSEon01APR2015-ACTIONTransfersavings.xlsx|
	  When I set up the new create FD account from "NewFDInput" sheet
	  			|4756-SUBMITFD01SEPT2014(AMT5000-PRD06MNTH)-ACT01SEPT2014-POSTINTEREST-CLOSEon01APR2015-ACTIONTransfersavings.xlsx|
	  Then I "UndoApprove and Reject Application" and verified the following tabs
	  			|4756-SUBMITFD01SEPT2014(AMT5000-PRD06MNTH)-ACT01SEPT2014-POSTINTEREST-CLOSEon01APR2015-ACTIONTransfersavings.xlsx| Modify Transaction |
	  And I verified the "FixedDeposit Transaction" details successfully 
	  			|4756-SUBMITFD01SEPT2014(AMT5000-PRD06MNTH)-ACT01SEPT2014-POSTINTEREST-CLOSEon01APR2015-ACTIONTransfersavings.xlsx|
	  And I verified the "FixedDeposit Summary" details successfully 
	  			|4756-SUBMITFD01SEPT2014(AMT5000-PRD06MNTH)-ACT01SEPT2014-POSTINTEREST-CLOSEon01APR2015-ACTIONTransfersavings.xlsx|
	  Then I navigate To Saving Account Page
	  And I verified the "Saving Transaction" details successfully 
	  			|4756-SUBMITFD01SEPT2014(AMT5000-PRD06MNTH)-ACT01SEPT2014-POSTINTEREST-CLOSEon01APR2015-ACTIONTransfersavings.xlsx|
		
@RunnerClass8
	  Scenario: 4757-SUBMITRD01JAN2015(AMT5000-PRD06MNTH)-APRACT01FEB2015
      
      Given I setup the "RecurringDeposit" product
				| Productloannavigation.xlsx |
	  Then I entered the values into product from "ProductRDInput" Sheet
				|4757-SUBMITRD01JAN2015(AMT5000-PRD06MNTH)-APRACT01FEB2015.xlsx|
	  Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  When I set up the new create RD account from "NewRDInput" sheet
	  			|4757-SUBMITRD01JAN2015(AMT5000-PRD06MNTH)-APRACT01FEB2015.xlsx|
	  And I verified the "RecurringDeposit Summary" details successfully 
	  			|4757-SUBMITRD01JAN2015(AMT5000-PRD06MNTH)-APRACT01FEB2015.xlsx|
	 
@RunnerClass8
	  Scenario: 4758-SUBMITRDS01JAN2015(AMT5000-DEPOPRD06MNTH)-MODIFYAPP-LOCKPRD&DEPOPRD3MNTH-ACT01JAN2015
      
      
	  Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  When I set up the new create RD account from "NewRDInput" sheet
	  			|4758-SUBMITRDS01JAN2015(AMT5000-DEPOPRD06MNTH)-MODIFYAPP-LOCKPRD&DEPOPRD3MNTH-ACT01JAN2015.xlsx|
	  And I modify New Account from "ModifyApplication" sheet 
	  			|4758-SUBMITRDS01JAN2015(AMT5000-DEPOPRD06MNTH)-MODIFYAPP-LOCKPRD&DEPOPRD3MNTH-ACT01JAN2015.xlsx|
	  Then i validate and Verify from "error" sheet
	  			|4758-SUBMITRDS01JAN2015(AMT5000-DEPOPRD06MNTH)-MODIFYAPP-LOCKPRD&DEPOPRD3MNTH-ACT01JAN2015.xlsx|
				
@RunnerClass8
	  Scenario: 4759-SUBMIT01SEP2014(AMT5000-LCKIN12MNT-DEPPRD6MNT)-ACT01SEP2014-MKEPAYMENT01FEB2015-PREMATURECLOSE2MAR2015
      
      
	  Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  When I set up the new create RD account from "NewRDInput" sheet
	  			|4759-SUBMIT01SEP2014(AMT5000-LCKIN12MNT-DEPPRD6MNT)-ACT01SEP2014-MKEPAYMENT02FEB2015-PREMATURECLOSE2MAR2015.xlsx|
	  Then I "Do Transaction" and verified the following tabs 
	  			|4759-SUBMIT01SEP2014(AMT5000-LCKIN12MNT-DEPPRD6MNT)-ACT01SEP2014-MKEPAYMENT02FEB2015-PREMATURECLOSE2MAR2015.xlsx| RecurringDeposit |
	  And I verified the "RecurringDeposit Summary" details successfully 
	  			|4759-SUBMIT01SEP2014(AMT5000-LCKIN12MNT-DEPPRD6MNT)-ACT01SEP2014-MKEPAYMENT02FEB2015-PREMATURECLOSE2MAR2015.xlsx|
	  And I verified the "RecurringDeposit Transaction" details successfully 
	  			|4759-SUBMIT01SEP2014(AMT5000-LCKIN12MNT-DEPPRD6MNT)-ACT01SEP2014-MKEPAYMENT02FEB2015-PREMATURECLOSE2MAR2015.xlsx|
	  Then I "Do PreMature Close" and verified the following tabs 
	  			|4759-SUBMIT01SEP2014(AMT5000-LCKIN12MNT-DEPPRD6MNT)-ACT01SEP2014-MKEPAYMENT02FEB2015-PREMATURECLOSE2MAR2015.xlsx| Modify Transaction |
	  Then i validate and Verify from "error" sheet
	  			|4759-SUBMIT01SEP2014(AMT5000-LCKIN12MNT-DEPPRD6MNT)-ACT01SEP2014-MKEPAYMENT02FEB2015-PREMATURECLOSE2MAR2015.xlsx|
	 
@RunnerClass8
	  Scenario: 4760-SUBMITRD01JAN2015(AMT5000-LCKIN6MNT-DEPOPRD6MNTH)-ACT01JAN2015-MakePayment01FEB2015-POSTINT01APR2015
      
      
	  Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  When I set up the new create RD account from "NewRDInput" sheet
	  			|4760-SUBMITRD01JAN2015(AMT5000-LCKIN6MNT-DEPOPRD6MNTH)-ACT01JAN2015-MakePayment01FEB2015-POSTINT01APR2015.xlsx|
	  Then I "Do Transaction" and verified the following tabs 
	  			|4760-SUBMITRD01JAN2015(AMT5000-LCKIN6MNT-DEPOPRD6MNTH)-ACT01JAN2015-MakePayment01FEB2015-POSTINT01APR2015.xlsx| RecurringDeposit |
	  Then I "Do Post Interest" and verified the following tabs 
	  			|4760-SUBMITRD01JAN2015(AMT5000-LCKIN6MNT-DEPOPRD6MNTH)-ACT01JAN2015-MakePayment01FEB2015-POSTINT01APR2015.xlsx| Modify Transaction |
	  And I verified the "RecurringDeposit Summary" details successfully 
	  			|4760-SUBMITRD01JAN2015(AMT5000-LCKIN6MNT-DEPOPRD6MNTH)-ACT01JAN2015-MakePayment01FEB2015-POSTINT01APR2015.xlsx|
	  And I verified the "RecurringDeposit Transaction" details successfully 
	  			|4760-SUBMITRD01JAN2015(AMT5000-LCKIN6MNT-DEPOPRD6MNTH)-ACT01JAN2015-MakePayment01FEB2015-POSTINT01APR2015.xlsx|
				
@RunnerClass8
	  Scenario: 4761-SUBMITRD01JAN2015(AMT5000-LCKPRD6MNTH-DEPOPRD6MNTH)-APR01JAN2015-REJECT05JAN2015
      
      
	  Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  When I set up the new create RD account from "NewRDInput" sheet
	  			|4761-SUBMITRD01JAN2015(AMT5000-LCKPRD6MNTH-DEPOPRD6MNTH)-APR01JAN2015-REJECT05JAN2015.xlsx|
	  Then I "Undo Approve and Reject Application" and verified the following tabs 
	  			|4761-SUBMITRD01JAN2015(AMT5000-LCKPRD6MNTH-DEPOPRD6MNTH)-APR01JAN2015-REJECT05JAN2015.xlsx| Modify Transaction |
	  And I verified the "RecurringDeposit Summary" details successfully 
	  			|4761-SUBMITRD01JAN2015(AMT5000-LCKPRD6MNTH-DEPOPRD6MNTH)-APR01JAN2015-REJECT05JAN2015.xlsx|

@RunnerClass8
	  Scenario: 4762-SUBMITRD01JAN2015(DEPOPRD06MNTH)-ADDCHRGE(savings-activation)-APRACT01FEB2015
      
      
	  Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  When I set up the new create RD account from "NewRDInput" sheet
	  			|4762-SUBMITRD01JAN2015(DEPOPRD06MNTH)-ADDCHRGE(savings-activation)-APRACT01FEB2015.xlsx|
	  And I verified the "RecurringDeposit Summary" details successfully 
	  			|4762-SUBMITRD01JAN2015(DEPOPRD06MNTH)-ADDCHRGE(savings-activation)-APRACT01FEB2015.xlsx|
	  And I verified the "RecurringDeposit Transaction" details successfully 
	  			|4762-SUBMITRD01JAN2015(DEPOPRD06MNTH)-ADDCHRGE(savings-activation)-APRACT01FEB2015.xlsx|
	  And I verified the "RecurringDeposit Charges" details successfully 
	  			|4762-SUBMITRD01JAN2015(DEPOPRD06MNTH)-ADDCHRGE(savings-activation)-APRACT01FEB2015.xlsx|

				
@RunnerClass8
	  Scenario: 4763-SUBMITRD01JAN2015(AMT5000-DEPOPRD06MNTH-duedate-flat)-ACT01JAN2015
      
      
	  Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  When I set up the new create RD account from "NewRDInput" sheet
	  			|4763-SUBMITRD01JAN2015(AMT5000-DEPOPRD06MNTH-duedate-flat)-ACT01JAN2015.xlsx|
	  Then I "Pay Charge" and verified the following tabs	
	  			|4763-SUBMITRD01JAN2015(AMT5000-DEPOPRD06MNTH-duedate-flat)-ACT01JAN2015.xlsx| Modify Transaction |
	  And I verified the "RecurringDeposit Summary" details successfully 
	  			|4763-SUBMITRD01JAN2015(AMT5000-DEPOPRD06MNTH-duedate-flat)-ACT01JAN2015.xlsx|
	  And I verified the "RecurringDeposit Transaction" details successfully 
	  			|4763-SUBMITRD01JAN2015(AMT5000-DEPOPRD06MNTH-duedate-flat)-ACT01JAN2015.xlsx|
	  And I verified the "RecurringDeposit Charges" details successfully 
	  			|4763-SUBMITRD01JAN2015(AMT5000-DEPOPRD06MNTH-duedate-flat)-ACT01JAN2015.xlsx|

				
@RunnerClass8
	  Scenario: 4764-SUBMITRD01JAN2015(AMT5000-DEPOPRD06MNTH)-APRACT01JAN2015-ADDCHARGE(RD-SpecifiedDueDate-Flat)
      
      
	  Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  When I set up the new create RD account from "NewRDInput" sheet
	  			|4764-SUBMITRD01JAN2015(AMT5000-DEPOPRD06MNTH)-APRACT01JAN2015-ADDCHARGE(RD-SpecifiedDueDate-Flat).xlsx|
	  Then I "Add SpecifiedDueDate Charge" and verified the following tabs	
	  			|4764-SUBMITRD01JAN2015(AMT5000-DEPOPRD06MNTH)-APRACT01JAN2015-ADDCHARGE(RD-SpecifiedDueDate-Flat).xlsx| Modify Transaction |
	  Then I "Pay Charge" and verified the following tabs	
	  			|4764-SUBMITRD01JAN2015(AMT5000-DEPOPRD06MNTH)-APRACT01JAN2015-ADDCHARGE(RD-SpecifiedDueDate-Flat).xlsx| Modify Transaction1 |
	  And I verified the "RecurringDeposit Summary" details successfully 
	  			|4764-SUBMITRD01JAN2015(AMT5000-DEPOPRD06MNTH)-APRACT01JAN2015-ADDCHARGE(RD-SpecifiedDueDate-Flat).xlsx|
	  And I verified the "RecurringDeposit Transaction" details successfully 
	  			|4764-SUBMITRD01JAN2015(AMT5000-DEPOPRD06MNTH)-APRACT01JAN2015-ADDCHARGE(RD-SpecifiedDueDate-Flat).xlsx|
	  And I verified the "RecurringDeposit Charges" details successfully 
	  			|4764-SUBMITRD01JAN2015(AMT5000-DEPOPRD06MNTH)-APRACT01JAN2015-ADDCHARGE(RD-SpecifiedDueDate-Flat).xlsx|

@RunnerClass8
	  Scenario: 4765-SUBMITRD01JAN2015(AMT5000-DEPOPRD06MNTH-SavingsActivation-Flat)-ACT01JAN2015-WaiveCharge
      
      
	  Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  When I set up the new create RD account from "NewRDInput" sheet
	  			|4765-SUBMITRD01JAN2015(AMT5000-DEPOPRD06MNTH-SavingsActivation-Flat)-ACT01JAN2015-WaiveCharge.xlsx|
	  Then I "Waive Charge" and verified the following tabs	
	  			|4765-SUBMITRD01JAN2015(AMT5000-DEPOPRD06MNTH-SavingsActivation-Flat)-ACT01JAN2015-WaiveCharge.xlsx| Modify Transaction |
	  And I verified the "RecurringDeposit Summary" details successfully 
	  			|4765-SUBMITRD01JAN2015(AMT5000-DEPOPRD06MNTH-SavingsActivation-Flat)-ACT01JAN2015-WaiveCharge.xlsx|
	  And I verified the "RecurringDeposit Transaction" details successfully 
	  			|4765-SUBMITRD01JAN2015(AMT5000-DEPOPRD06MNTH-SavingsActivation-Flat)-ACT01JAN2015-WaiveCharge.xlsx|
	  And I verified the "RecurringDeposit Charges" details successfully 
	  			|4765-SUBMITRD01JAN2015(AMT5000-DEPOPRD06MNTH-SavingsActivation-Flat)-ACT01JAN2015-WaiveCharge.xlsx|

@RunnerClass8
	  Scenario: 4766-SUBMIT01JAN2015(AMT5000-DEPOPRD06MNTH)-ACT01JAN2015-makepay01FEB2015-POSTINTEREST01APR2015
      
      
	  Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  When I set up the new create RD account from "NewRDInput" sheet
	  			|4766-SUBMIT01JAN2015(AMT5000-DEPOPRD06MNTH)-ACT01JAN2015-makepay01FEB2015-POSTINTEREST01APR2015.xlsx|
	  Then I "Do Transaction" and verified the following tabs 
	  			|4766-SUBMIT01JAN2015(AMT5000-DEPOPRD06MNTH)-ACT01JAN2015-makepay01FEB2015-POSTINTEREST01APR2015.xlsx| RecurringDeposit |
	  Then I "Do Post Interest" and verified the following tabs 
	  			|4766-SUBMIT01JAN2015(AMT5000-DEPOPRD06MNTH)-ACT01JAN2015-makepay01FEB2015-POSTINTEREST01APR2015.xlsx| Modify Transaction |
	  And I verified the "RecurringDeposit Summary" details successfully 
	  			|4766-SUBMIT01JAN2015(AMT5000-DEPOPRD06MNTH)-ACT01JAN2015-makepay01FEB2015-POSTINTEREST01APR2015.xlsx|
	  And I verified the "RecurringDeposit Transaction" details successfully 
	  			|4766-SUBMIT01JAN2015(AMT5000-DEPOPRD06MNTH)-ACT01JAN2015-makepay01FEB2015-POSTINTEREST01APR2015.xlsx|
	
@RunnerClass8
	  Scenario: 4767-SUBMITRD01JAN2015(AMT5000-PRD06MNTHwithINCT-1)-APRACT01JAN2015
     
	  Given I setup the "RecurringDeposit" product
				| Productloannavigation.xlsx |
	  Then I entered the values into product from "ProductRDInput" Sheet
				|4767-SUBMITRD01JAN2015(AMT5000-PRD06MNTHwithINCT-1)-APRACT01JAN2015.xlsx|
        Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|4767-SUBMITRD01JAN2015(AMT5000-PRD06MNTHwithINCT-1)-APRACT01JAN2015.xlsx|
	  When I set up the new create RD account from "NewRDInput" sheet
	  			|4767-SUBMITRD01JAN2015(AMT5000-PRD06MNTHwithINCT-1)-APRACT01JAN2015.xlsx|
	  And I verified the "RecurringDeposit Summary" details successfully
	  			|4767-SUBMITRD01JAN2015(AMT5000-PRD06MNTHwithINCT-1)-APRACT01JAN2015.xlsx|				
	  
@RunnerClass8
	  Scenario: 4768-SUBMITRD01JAN2015(AMT5000-PRD06MNTHwithINCT-2)-APRACT01JAN2015
     
	  Given I setup the "RecurringDeposit" product
				| Productloannavigation.xlsx |
	  Then I entered the values into product from "ProductRDInput" Sheet
				|4768-SUBMITRD01JAN2015(AMT5000-PRD06MNTHwithINCT-2)-APRACT01JAN2015.xlsx|
        Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|4768-SUBMITRD01JAN2015(AMT5000-PRD06MNTHwithINCT-2)-APRACT01JAN2015.xlsx|
	  When I set up the new create RD account from "NewRDInput" sheet
	  			|4768-SUBMITRD01JAN2015(AMT5000-PRD06MNTHwithINCT-2)-APRACT01JAN2015.xlsx|
	  And I verified the "RecurringDeposit Summary" details successfully
	  			|4768-SUBMITRD01JAN2015(AMT5000-PRD06MNTHwithINCT-2)-APRACT01JAN2015.xlsx|	
				
@RunnerClass8
	  Scenario: 4769-SUBMITRD01JAN2015(AMT5000-PRD06MNTHwithINCT-3)-APRACT01JAN2015
     
	  Given I setup the "RecurringDeposit" product
				| Productloannavigation.xlsx |
	  Then I entered the values into product from "ProductRDInput" Sheet
				|4769-SUBMITRD01JAN2015(AMT5000-PRD06MNTHwithINCT-3)-APRACT01JAN2015.xlsx|
	   Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|4769-SUBMITRD01JAN2015(AMT5000-PRD06MNTHwithINCT-3)-APRACT01JAN2015.xlsx|
	  When I set up the new create RD account from "NewRDInput" sheet
	  			|4769-SUBMITRD01JAN2015(AMT5000-PRD06MNTHwithINCT-3)-APRACT01JAN2015.xlsx|
	  And I verified the "RecurringDeposit Summary" details successfully
	  			|4769-SUBMITRD01JAN2015(AMT5000-PRD06MNTHwithINCT-3)-APRACT01JAN2015.xlsx|	
	  
@RunnerClass8
	  Scenario: 4770-SUBMITRD01JAN2015(AMT5000-PRD06MNTHwithINCT-4)-APRACT01JAN2015
     
	  Given I setup the "RecurringDeposit" product
				| Productloannavigation.xlsx |
	  Then I entered the values into product from "ProductRDInput" Sheet
				|4770-SUBMITRD01JAN2015(AMT5000-PRD06MNTHwithINCT-4)-APRACT01JAN2015.xlsx|
	  Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|4770-SUBMITRD01JAN2015(AMT5000-PRD06MNTHwithINCT-4)-APRACT01JAN2015.xlsx|
	  When I set up the new create RD account from "NewRDInput" sheet
	  			|4770-SUBMITRD01JAN2015(AMT5000-PRD06MNTHwithINCT-4)-APRACT01JAN2015.xlsx|
	  And I verified the "RecurringDeposit Summary" details successfully
	  			|4770-SUBMITRD01JAN2015(AMT5000-PRD06MNTHwithINCT-4)-APRACT01JAN2015.xlsx|
				
@RunnerClass8
	  Scenario: 4771-SUBMITRD01JAN2015(AMT5000-PRD06MNTHwithINCT-5)-APRACT01JAN2015
     
	  Given I setup the "RecurringDeposit" product
				| Productloannavigation.xlsx |
	  Then I entered the values into product from "ProductRDInput" Sheet
				|4771-SUBMITRD01JAN2015(AMT5000-PRD06MNTHwithINCT-5)-APRACT01JAN2015.xlsx|
	  Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|4771-SUBMITRD01JAN2015(AMT5000-PRD06MNTHwithINCT-5)-APRACT01JAN2015.xlsx|
	  When I set up the new create RD account from "NewRDInput" sheet
	  			|4771-SUBMITRD01JAN2015(AMT5000-PRD06MNTHwithINCT-5)-APRACT01JAN2015.xlsx|
	  And I verified the "RecurringDeposit Summary" details successfully
	  			|4771-SUBMITRD01JAN2015(AMT5000-PRD06MNTHwithINCT-5)-APRACT01JAN2015.xlsx|	
				
@RunnerClass8
	  Scenario: 4772-SUBMITRD01JAN2015(AMT5000-PRD06MNTHwithINCT-6)-APRACT01JAN2015
     
	  Given I setup the "RecurringDeposit" product
				| Productloannavigation.xlsx |
	  Then I entered the values into product from "ProductRDInput" Sheet
				|4772-SUBMITRD01JAN2015(AMT5000-PRD06MNTHwithINCT-6)-APRACT01JAN2015.xlsx|
	  Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|4772-SUBMITRD01JAN2015(AMT5000-PRD06MNTHwithINCT-6)-APRACT01JAN2015.xlsx|
	  When I set up the new create RD account from "NewRDInput" sheet
	  			|4772-SUBMITRD01JAN2015(AMT5000-PRD06MNTHwithINCT-6)-APRACT01JAN2015.xlsx|
	  And I verified the "RecurringDeposit Summary" details successfully
	  			|4772-SUBMITRD01JAN2015(AMT5000-PRD06MNTHwithINCT-6)-APRACT01JAN2015.xlsx|		
	  			
@RunnerClass8
	  Scenario: 4773-SUBMITRD01JAN2015(AMT5000-PRD02MNTH)-APRACT01JAN2015-DPT01JAN01FEB&01MAR2015
     
	  Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  When I set up the new create RD account from "NewRDInput" sheet
	  			|4773-SUBMITRD01JAN2015(AMT5000-PRD02MNTH)-APRACT01JAN2015-DPT01JAN01FEB&01MAR2015.xlsx|
	  Then I "Do Jan Deposit Transaction" and verified the following tabs 
	            |4773-SUBMITRD01JAN2015(AMT5000-PRD02MNTH)-APRACT01JAN2015-DPT01JAN01FEB&01MAR2015.xlsx| RecurringDeposit |
	  Then I "Do Feb Deposit Transaction" and verified the following tabs 
	            |4773-SUBMITRD01JAN2015(AMT5000-PRD02MNTH)-APRACT01JAN2015-DPT01JAN01FEB&01MAR2015.xlsx| RecurringDeposit1 |
	  And I verified the "RecurringDeposit Summary" details successfully
	  			|4773-SUBMITRD01JAN2015(AMT5000-PRD02MNTH)-APRACT01JAN2015-DPT01JAN01FEB&01MAR2015.xlsx|	
	  And I verified the "RecurringDeposit Transaction" details successfully 
	  			|4773-SUBMITRD01JAN2015(AMT5000-PRD02MNTH)-APRACT01JAN2015-DPT01JAN01FEB&01MAR2015.xlsx|
	  Then I "Do March Deposit Transaction" and verified the following tabs 
	            |4773-SUBMITRD01JAN2015(AMT5000-PRD02MNTH)-APRACT01JAN2015-DPT01JAN01FEB&01MAR2015.xlsx| RecurringDeposit2 | 
	  Then i validate and Verify from "error" sheet
	  			|4773-SUBMITRD01JAN2015(AMT5000-PRD02MNTH)-APRACT01JAN2015-DPT01JAN01FEB&01MAR2015.xlsx|	
				
@RunnerClass8
	  Scenario: 4774-SUBMITRD01JAN2015(5000-PRD02MNT)-ACT01JAN2015-DPT01JAN01FEB2015-SCHEDjOB-CLOSEACCOUNT
     
	  Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  When I set up the new create RD account from "NewRDInput" sheet
	  			|4774-SUBMITRD01JAN2015(5000-PRD02MNT)-ACT01JAN2015-DPT01JAN01FEB2015-SCHEDjOB-CLOSEACCOUNT.xlsx|
	  Then I "Do Jan Deposit Transaction" and verified the following tabs 
	            |4774-SUBMITRD01JAN2015(5000-PRD02MNT)-ACT01JAN2015-DPT01JAN01FEB2015-SCHEDjOB-CLOSEACCOUNT.xlsx| RecurringDeposit |
	  Then I "Do Feb Deposit Transaction" and verified the following tabs 
	            |4774-SUBMITRD01JAN2015(5000-PRD02MNT)-ACT01JAN2015-DPT01JAN01FEB2015-SCHEDjOB-CLOSEACCOUNT.xlsx| RecurringDeposit1 |
	  Then I navigate to scheduler job & execute "Update Deposit Accounts Maturity details"
	  Then I navigate To Saving Account Page
	  Then I "Close Recurring Deposit Account" and verified the following tabs
	  			|4774-SUBMITRD01JAN2015(5000-PRD02MNT)-ACT01JAN2015-DPT01JAN01FEB2015-SCHEDjOB-CLOSEACCOUNT.xlsx|Modify Transaction|
	  And I verified the "RecurringDeposit Summary" details successfully
	  			|4774-SUBMITRD01JAN2015(5000-PRD02MNT)-ACT01JAN2015-DPT01JAN01FEB2015-SCHEDjOB-CLOSEACCOUNT.xlsx|	
	  And I verified the "RecurringDeposit Transaction" details successfully 
	  			|4774-SUBMITRD01JAN2015(5000-PRD02MNT)-ACT01JAN2015-DPT01JAN01FEB2015-SCHEDjOB-CLOSEACCOUNT.xlsx|
				
				
@RunnerClass8
	  Scenario: 4775-SUBMITRD01JAN2015(AMT5000-PRD02MNTH)-APRACT01JAN2015-DPT01JAN01FEB2015-RUNSCHEDULERjOB-CLOSEACCOUNT(TrasferToSavings)
     
	  Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  When I set up the new create saving account from "NewSavingInput" sheet
	  			|4775-SUBMITRD01JAN2015(AMT5000-PRD02MNTH)-APRACT01JAN2015-DPT01JAN01FEB2015-RUNSCHEDULERjOB-CLOSEACCOUNT(TrasferToSavings).xlsx|
	  When I set up the new create RD account from "NewRDInput" sheet
	  			|4775-SUBMITRD01JAN2015(AMT5000-PRD02MNTH)-APRACT01JAN2015-DPT01JAN01FEB2015-RUNSCHEDULERjOB-CLOSEACCOUNT(TrasferToSavings).xlsx|
	  Then I "Do Jan Deposit Transaction" and verified the following tabs 
	            |4775-SUBMITRD01JAN2015(AMT5000-PRD02MNTH)-APRACT01JAN2015-DPT01JAN01FEB2015-RUNSCHEDULERjOB-CLOSEACCOUNT(TrasferToSavings).xlsx| RecurringDeposit |
	  Then I "Do Feb Deposit Transaction" and verified the following tabs 
	            |4775-SUBMITRD01JAN2015(AMT5000-PRD02MNTH)-APRACT01JAN2015-DPT01JAN01FEB2015-RUNSCHEDULERjOB-CLOSEACCOUNT(TrasferToSavings).xlsx| RecurringDeposit1 |
	  Then I navigate to scheduler job & execute "Update Deposit Accounts Maturity details"
	  Then I "Navigate to RD account" and verified the following tabs 
	            |4775-SUBMITRD01JAN2015(AMT5000-PRD02MNTH)-APRACT01JAN2015-DPT01JAN01FEB2015-RUNSCHEDULERjOB-CLOSEACCOUNT(TrasferToSavings).xlsx| Recurring Navigate |
	  Then I "Close Recurring Deposit Account" and verified the following tabs
	  			|4775-SUBMITRD01JAN2015(AMT5000-PRD02MNTH)-APRACT01JAN2015-DPT01JAN01FEB2015-RUNSCHEDULERjOB-CLOSEACCOUNT(TrasferToSavings).xlsx|Modify Transaction|
	  And I verified the "RecurringDeposit Summary" details successfully
	  			|4775-SUBMITRD01JAN2015(AMT5000-PRD02MNTH)-APRACT01JAN2015-DPT01JAN01FEB2015-RUNSCHEDULERjOB-CLOSEACCOUNT(TrasferToSavings).xlsx|
	  And I verified the "RecurringDeposit Transaction" details successfully 
	  			|4775-SUBMITRD01JAN2015(AMT5000-PRD02MNTH)-APRACT01JAN2015-DPT01JAN01FEB2015-RUNSCHEDULERjOB-CLOSEACCOUNT(TrasferToSavings).xlsx|
	  Then I navigate To Saving Account Page
	  And I verified the "Saving Transaction" details successfully 
	  			|4775-SUBMITRD01JAN2015(AMT5000-PRD02MNTH)-APRACT01JAN2015-DPT01JAN01FEB2015-RUNSCHEDULERjOB-CLOSEACCOUNT(TrasferToSavings).xlsx|
				
				
@RunnerClass8
	  Scenario: 4776-SUBMITRD01JAN2015(AMT5000-PRD02MNT)-ACT01JAN2015-DPT01JAN01FEB2015-RUNSCHEDULERjOB-CLOSEACCOUNT(Reinvest)
     
	  Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	   When I set up the new create RD account from "NewRDInput" sheet
	  			|4776-SUBMITRD01JAN2015(AMT5000-PRD02MNT)-ACT01JAN2015-DPT01JAN01FEB2015-RUNSCHEDULERjOB-CLOSEACCOUNT(Reinvest).xlsx|
	  Then I "Do Jan Deposit Transaction" and verified the following tabs 
	            |4776-SUBMITRD01JAN2015(AMT5000-PRD02MNT)-ACT01JAN2015-DPT01JAN01FEB2015-RUNSCHEDULERjOB-CLOSEACCOUNT(Reinvest).xlsx| RecurringDeposit |
	  Then I "Do Feb Deposit Transaction" and verified the following tabs 
	            |4776-SUBMITRD01JAN2015(AMT5000-PRD02MNT)-ACT01JAN2015-DPT01JAN01FEB2015-RUNSCHEDULERjOB-CLOSEACCOUNT(Reinvest).xlsx| RecurringDeposit1 |
	  Then I navigate to scheduler job & execute "Update Deposit Accounts Maturity details"
	  Then I navigate To Saving Account Page
	  Then I "Close Recurring Deposit Account" and verified the following tabs
	  			|4776-SUBMITRD01JAN2015(AMT5000-PRD02MNT)-ACT01JAN2015-DPT01JAN01FEB2015-RUNSCHEDULERjOB-CLOSEACCOUNT(Reinvest).xlsx|Modify Transaction|
	  And I verified the "RecurringDeposit Summary" details successfully
	  			|4776-SUBMITRD01JAN2015(AMT5000-PRD02MNT)-ACT01JAN2015-DPT01JAN01FEB2015-RUNSCHEDULERjOB-CLOSEACCOUNT(Reinvest).xlsx|
	  And I verified the "RecurringDeposit Transaction" details successfully 
	  			|4776-SUBMITRD01JAN2015(AMT5000-PRD02MNT)-ACT01JAN2015-DPT01JAN01FEB2015-RUNSCHEDULERjOB-CLOSEACCOUNT(Reinvest).xlsx|
	  Then I "Navigate to newly Created RD account" and verified the following tabs 
	            |4776-SUBMITRD01JAN2015(AMT5000-PRD02MNT)-ACT01JAN2015-DPT01JAN01FEB2015-RUNSCHEDULERjOB-CLOSEACCOUNT(Reinvest).xlsx| Recurring Navigate |
	#  And I verified the "RecurringDeposit Transaction 1" details successfully 
	#  			|4776-SUBMITRD01JAN2015(AMT5000-PRD02MNT)-ACT01JAN2015-DPT01JAN01FEB2015-RUNSCHEDULERjOB-CLOSEACCOUNT(Reinvest).xlsx|
	#  And I verified the "RecurringDeposit Summary 1" details successfully
	#  			|4776-SUBMITRD01JAN2015(AMT5000-PRD02MNT)-ACT01JAN2015-DPT01JAN01FEB2015-RUNSCHEDULERjOB-CLOSEACCOUNT(Reinvest).xlsx|
				
				
@RunnerClass8
	  Scenario: 4777-SUBMITRD01JAN2015(AMT5000-PRD02MNTH-ALLOWwithdraw)-APRACT01JAN2015-DPT01JAN01FEB2015-ClickWithdraw
     
	  Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	   When I set up the new create RD account from "NewRDInput" sheet
	  			|4777-SUBMITRD01JAN2015(AMT5000-PRD02MNTH-ALLOWwithdraw)-APRACT01JAN2015-DPT01JAN01FEB2015-ClickWithdraw.xlsx|
	  Then I "Do Jan Deposit Transaction" and verified the following tabs 
	            |4777-SUBMITRD01JAN2015(AMT5000-PRD02MNTH-ALLOWwithdraw)-APRACT01JAN2015-DPT01JAN01FEB2015-ClickWithdraw.xlsx| RecurringDeposit |
	  Then I "Do Feb Deposit Transaction" and verified the following tabs 
	            |4777-SUBMITRD01JAN2015(AMT5000-PRD02MNTH-ALLOWwithdraw)-APRACT01JAN2015-DPT01JAN01FEB2015-ClickWithdraw.xlsx| RecurringDeposit1 |
      Then I "Withdraw" and verified the following tabs
	  			|4777-SUBMITRD01JAN2015(AMT5000-PRD02MNTH-ALLOWwithdraw)-APRACT01JAN2015-DPT01JAN01FEB2015-ClickWithdraw.xlsx|Modify Transaction|
				
@RunnerClass8
	  Scenario: 4778-SUBMITRD01JAN2015(AMT5000-PRD02MNTH)-APRACT01JAN2015-DPT01JAN01FEB2015-RUNSCHEDULERjOB-ClickTransferFunds
     
	  
	  Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	   When I set up the new create RD account from "NewRDInput" sheet
	  			|4778-SUBMITRD01JAN2015(AMT5000-PRD02MNTH)-APRACT01JAN2015-DPT01JAN01FEB2015-RUNSCHEDULERjOB-ClickTransferFunds.xlsx|
	  Then I "Do Jan Deposit Transaction" and verified the following tabs 
	            |4778-SUBMITRD01JAN2015(AMT5000-PRD02MNTH)-APRACT01JAN2015-DPT01JAN01FEB2015-RUNSCHEDULERjOB-ClickTransferFunds.xlsx| RecurringDeposit |
	  Then I "Do Feb Deposit Transaction" and verified the following tabs 
	            |4778-SUBMITRD01JAN2015(AMT5000-PRD02MNTH)-APRACT01JAN2015-DPT01JAN01FEB2015-RUNSCHEDULERjOB-ClickTransferFunds.xlsx| RecurringDeposit1 |
	  Then I navigate to scheduler job & execute "Update Deposit Accounts Maturity details"
	  Then I navigate To Saving Account Page
	  Then I "Transfer Funds" and verified the following tabs
	  			|4778-SUBMITRD01JAN2015(AMT5000-PRD02MNTH)-APRACT01JAN2015-DPT01JAN01FEB2015-RUNSCHEDULERjOB-ClickTransferFunds.xlsx| Modify Transaction |
				
@RunnerClass8
	  Scenario: 4779-SUBMITRD01JAN2015(AMT5000-PRD02MNTH)-APRACT01JAN2015-DPT01JAN2015(AMOUNT7000)-ClickOnDepositAgain
     
	  
	  Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	   When I set up the new create RD account from "NewRDInput" sheet
	  			|4779-SUBMITRD01JAN2015(AMT5000-PRD02MNTH)-APRACT01JAN2015-DPT01JAN2015(AMOUNT7000)-ClickOnDepositAgain.xlsx|
	  Then I "Do Jan Deposit Transaction" and verified the following tabs 
	            |4779-SUBMITRD01JAN2015(AMT5000-PRD02MNTH)-APRACT01JAN2015-DPT01JAN2015(AMOUNT7000)-ClickOnDepositAgain.xlsx| RecurringDeposit |
	  Then I "check and Do Feb Transaction" and verified the following tabs 
	            |4779-SUBMITRD01JAN2015(AMT5000-PRD02MNTH)-APRACT01JAN2015-DPT01JAN2015(AMOUNT7000)-ClickOnDepositAgain.xlsx| RecurringDeposit1 |
	   And I verified the "RecurringDeposit Summary" details successfully
	  			|4779-SUBMITRD01JAN2015(AMT5000-PRD02MNTH)-APRACT01JAN2015-DPT01JAN2015(AMOUNT7000)-ClickOnDepositAgain.xlsx|
	  And I verified the "RecurringDeposit Transaction" details successfully 
	  			|4779-SUBMITRD01JAN2015(AMT5000-PRD02MNTH)-APRACT01JAN2015-DPT01JAN2015(AMOUNT7000)-ClickOnDepositAgain.xlsx|
	  
@RunnerClass8
	  Scenario: 4780-SUBMITRD01JAN2015(AMT5000-PRD02MNTH)-APRACT01JAN2015-DPT01JAN2015-PrematureCloseOn01FEB2015
     
	  
	  Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	   When I set up the new create RD account from "NewRDInput" sheet
	  			|4780-SUBMITRD01JAN2015(AMT5000-PRD02MNTH)-APRACT01JAN2015-DPT01JAN2015-PrematureCloseOn01FEB2015.xlsx|
	  Then I "Do Jan Deposit Transaction" and verified the following tabs 
	            |4780-SUBMITRD01JAN2015(AMT5000-PRD02MNTH)-APRACT01JAN2015-DPT01JAN2015-PrematureCloseOn01FEB2015.xlsx| RecurringDeposit |
	  Then I "Do Premature Close" and verified the following tabs 
	            |4780-SUBMITRD01JAN2015(AMT5000-PRD02MNTH)-APRACT01JAN2015-DPT01JAN2015-PrematureCloseOn01FEB2015.xlsx| Modify Transaction |
	   And I verified the "RecurringDeposit Summary" details successfully
	  			|4780-SUBMITRD01JAN2015(AMT5000-PRD02MNTH)-APRACT01JAN2015-DPT01JAN2015-PrematureCloseOn01FEB2015.xlsx|
	  And I verified the "RecurringDeposit Transaction" details successfully 
	  			|4780-SUBMITRD01JAN2015(AMT5000-PRD02MNTH)-APRACT01JAN2015-DPT01JAN2015-PrematureCloseOn01FEB2015.xlsx|
				
@RunnerClass8
	  Scenario: 4781-SUBMITRD01JAN2015(AMT5000-PRD02MNTH)-APRACT01JAN2015-DPT01JAN01FEB2015-UNDOTransactions
     
	  
	  Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	   When I set up the new create RD account from "NewRDInput" sheet
	  			|4781-SUBMITRD01JAN2015(AMT5000-PRD02MNTH)-APRACT01JAN2015-DPT01JAN01FEB2015-UNDOTransactions.xlsx|
	  Then I "Do Jan Deposit Transaction" and verified the following tabs 
	            |4781-SUBMITRD01JAN2015(AMT5000-PRD02MNTH)-APRACT01JAN2015-DPT01JAN01FEB2015-UNDOTransactions.xlsx| RecurringDeposit |
	  Then I "Undo Transaction" and verified the following tabs 
	            |4781-SUBMITRD01JAN2015(AMT5000-PRD02MNTH)-APRACT01JAN2015-DPT01JAN01FEB2015-UNDOTransactions.xlsx| Modify Transaction |
	   And I verified the "RecurringDeposit Summary" details successfully
	  			|4781-SUBMITRD01JAN2015(AMT5000-PRD02MNTH)-APRACT01JAN2015-DPT01JAN01FEB2015-UNDOTransactions.xlsx|
	  		
@RunnerClass8
	  Scenario: 4782-SUBMITRD01JAN2015(AMT5000-PRD06MNTH)-APRACT01JAN2015-DPT01APR2015
     
	  
	  Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	   When I set up the new create RD account from "NewRDInput" sheet
	  			|4782-SUBMITRD01JAN2015(AMT5000-PRD06MNTH)-APRACT01JAN2015-DPT01APR2015.xlsx|
	  Then I "Do Apr Deposit Transaction" and verified the following tabs 
	            |4782-SUBMITRD01JAN2015(AMT5000-PRD06MNTH)-APRACT01JAN2015-DPT01APR2015.xlsx| RecurringDeposit |
	  And I verified the "RecurringDeposit Summary" details successfully
	  			|4782-SUBMITRD01JAN2015(AMT5000-PRD06MNTH)-APRACT01JAN2015-DPT01APR2015.xlsx|
	  And I verified the "RecurringDeposit Transaction" details successfully 
	  			|4782-SUBMITRD01JAN2015(AMT5000-PRD06MNTH)-APRACT01JAN2015-DPT01APR2015.xlsx|
				
				
@RunnerClass8
	  Scenario: 4783-SUBMITRD01JAN2015(AMT5000-PRD03MNT)-ACT01JAN2015-DPT01JAN2015-RUNSCHEDjOB-CloseRDAcc01April2015
     
	  
	  Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  When I set up the new create RD account from "NewRDInput" sheet
	  			|4783-SUBMITRD01JAN2015(AMT5000-PRD03MNT)-ACT01JAN2015-DPT01JAN2015-RUNSCHEDjOB-CloseRDAcc01April2015.xlsx|
	  Then I "Do Jan Deposit Transaction" and verified the following tabs 
	            |4783-SUBMITRD01JAN2015(AMT5000-PRD03MNT)-ACT01JAN2015-DPT01JAN2015-RUNSCHEDjOB-CloseRDAcc01April2015.xlsx| RecurringDeposit |
	  Then I navigate to scheduler job & execute "Update Deposit Accounts Maturity details"
	  Then I navigate To Saving Account Page
	  Then I "Close Recurring Deposit Account" and verified the following tabs
	  			|4783-SUBMITRD01JAN2015(AMT5000-PRD03MNT)-ACT01JAN2015-DPT01JAN2015-RUNSCHEDjOB-CloseRDAcc01April2015.xlsx|Modify Transaction|
	  And I verified the "RecurringDeposit Summary" details successfully
	  			|4783-SUBMITRD01JAN2015(AMT5000-PRD03MNT)-ACT01JAN2015-DPT01JAN2015-RUNSCHEDjOB-CloseRDAcc01April2015.xlsx|
	  And I verified the "RecurringDeposit Transaction" details successfully 
	  			|4783-SUBMITRD01JAN2015(AMT5000-PRD03MNT)-ACT01JAN2015-DPT01JAN2015-RUNSCHEDjOB-CloseRDAcc01April2015.xlsx|
	 
@RunnerClass8
	  Scenario: 4784-SUBMITFD01JAN2015(AMT5000-PRD06MNTH)-ACT01JAN2015-RUNSCHEDjOB-CloseFD01August2015(Trans2SavingsAcc)-JourENT
     
	  Given I setup the "FixedDeposit" product
				| Productloannavigation.xlsx |
	  Then I entered the values into product from "ProductFDInput" Sheet
				|4784-SUBMITFD01JAN2015(AMT5000-PRD06MNTH)-ACT01JAN2015-RUNSCHEDjOB-CloseFD01August2015(Trans2SavingsAcc)-JourENT.xlsx|
      Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  When I set up the new create saving account from "NewSavingInput" sheet
	  			|4784-SUBMITFD01JAN2015(AMT5000-PRD06MNTH)-ACT01JAN2015-RUNSCHEDjOB-CloseFD01August2015(Trans2SavingsAcc)-JourENT.xlsx|
	  When I set up the new create FD account from "NewFDInput" sheet
	  			|4784-SUBMITFD01JAN2015(AMT5000-PRD06MNTH)-ACT01JAN2015-RUNSCHEDjOB-CloseFD01August2015(Trans2SavingsAcc)-JourENT.xlsx|
	  Then I navigate to scheduler job & execute "Update Deposit Accounts Maturity details"
	  Then I "Navigate to FD account" and verified the following tabs 
	            |4784-SUBMITFD01JAN2015(AMT5000-PRD06MNTH)-ACT01JAN2015-RUNSCHEDjOB-CloseFD01August2015(Trans2SavingsAcc)-JourENT.xlsx| Recurring Navigate |
	  Then I "Close Fixed Deposit Account" and verified the following tabs
	  			|4784-SUBMITFD01JAN2015(AMT5000-PRD06MNTH)-ACT01JAN2015-RUNSCHEDjOB-CloseFD01August2015(Trans2SavingsAcc)-JourENT.xlsx|Modify Transaction|
	  And I verified the "FixedDeposit Summary" details successfully
	  			|4784-SUBMITFD01JAN2015(AMT5000-PRD06MNTH)-ACT01JAN2015-RUNSCHEDjOB-CloseFD01August2015(Trans2SavingsAcc)-JourENT.xlsx|
	  And I verified the "FD Transaction & TransID" details successfully 
	  			|4784-SUBMITFD01JAN2015(AMT5000-PRD06MNTH)-ACT01JAN2015-RUNSCHEDjOB-CloseFD01August2015(Trans2SavingsAcc)-JourENT.xlsx|
	   And I Navigate to Accounting web page
	   Then I search with transaction id & verified the accounting entries
	   			|4784-SUBMITFD01JAN2015(AMT5000-PRD06MNTH)-ACT01JAN2015-RUNSCHEDjOB-CloseFD01August2015(Trans2SavingsAcc)-JourENT.xlsx| Deposit1 | Interst_Posting1 | Interst_Posting2 |Withdrawal |
	 				

@RunnerClass8
	  Scenario: 4785-SUBMITRD01JAN2015(AMT5000-PRD02MNT)-ACT01JAN2015-DPT2MNT-RUNSCHEDjOB-Close01APR2015(Trans2SavingsAcc)-JourENT
     
	  
	  Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  When I set up the new create saving account from "NewSavingInput" sheet
	  			|4785-SUBMITRD01JAN2015(AMT5000-PRD02MNT)-ACT01JAN2015-DPT2MNT-RUNSCHEDjOB-Close01APR2015(Trans2SavingsAcc)-JourENT.xlsx|
	  When I set up the new create RD account from "NewRDInput" sheet
	  			|4785-SUBMITRD01JAN2015(AMT5000-PRD02MNT)-ACT01JAN2015-DPT2MNT-RUNSCHEDjOB-Close01APR2015(Trans2SavingsAcc)-JourENT.xlsx|
	  Then I "Do Jan Deposit Transaction" and verified the following tabs 
	            |4785-SUBMITRD01JAN2015(AMT5000-PRD02MNT)-ACT01JAN2015-DPT2MNT-RUNSCHEDjOB-Close01APR2015(Trans2SavingsAcc)-JourENT.xlsx| RecurringDeposit |
	  Then I "Do Feb Deposit Transaction" and verified the following tabs 
	            |4785-SUBMITRD01JAN2015(AMT5000-PRD02MNT)-ACT01JAN2015-DPT2MNT-RUNSCHEDjOB-Close01APR2015(Trans2SavingsAcc)-JourENT.xlsx| RecurringDeposit2 |
	  Then I navigate to scheduler job & execute "Update Deposit Accounts Maturity details"
	  Then I "Navigate to RD account" and verified the following tabs 
	            |4785-SUBMITRD01JAN2015(AMT5000-PRD02MNT)-ACT01JAN2015-DPT2MNT-RUNSCHEDjOB-Close01APR2015(Trans2SavingsAcc)-JourENT.xlsx| Recurring Navigate |
	  Then I "Close Recurring Deposit Account" and verified the following tabs
	  			|4785-SUBMITRD01JAN2015(AMT5000-PRD02MNT)-ACT01JAN2015-DPT2MNT-RUNSCHEDjOB-Close01APR2015(Trans2SavingsAcc)-JourENT.xlsx|Modify Transaction|
	  And I verified the "RecurringDeposit Summary" details successfully
	  			|4785-SUBMITRD01JAN2015(AMT5000-PRD02MNT)-ACT01JAN2015-DPT2MNT-RUNSCHEDjOB-Close01APR2015(Trans2SavingsAcc)-JourENT.xlsx|
	  And I verified the "RD Transaction & TransID" details successfully 
	  			|4785-SUBMITRD01JAN2015(AMT5000-PRD02MNT)-ACT01JAN2015-DPT2MNT-RUNSCHEDjOB-Close01APR2015(Trans2SavingsAcc)-JourENT.xlsx|
	   And I Navigate to Accounting web page
	   Then I search with transaction id & verified the accounting entries
	   			|4785-SUBMITRD01JAN2015(AMT5000-PRD02MNT)-ACT01JAN2015-DPT2MNT-RUNSCHEDjOB-Close01APR2015(Trans2SavingsAcc)-JourENT.xlsx| Deposit1 | Deposit2 | Interst_Posting1 | Interst_Posting2 |Withdrawal |
	
	@RunnerClass8
	  Scenario: 4786-SUBMITRD01JAN2015(AMT5000-PRD02MNT)-ACT01FEB2015-DPT2MNT-RUNSCHEDjOB-Close01APR2015(Trans2SavingsAcc)-JourENT
       
	  Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  When I set up the new create saving account from "NewSavingInput" sheet
	  			|4786-SUBMITRD01JAN2015(AMT5000-PRD02MNT)-ACT01FEB2015-DPT2MNT-RUNSCHEDjOB-Close01APR2015(Trans2SavingsAcc)-JourENT.xlsx|
	  When I set up the new create RD account from "NewRDInput" sheet
	  			|4786-SUBMITRD01JAN2015(AMT5000-PRD02MNT)-ACT01FEB2015-DPT2MNT-RUNSCHEDjOB-Close01APR2015(Trans2SavingsAcc)-JourENT.xlsx|
	  Then I "Do Jan Deposit Transaction" and verified the following tabs 
	            |4786-SUBMITRD01JAN2015(AMT5000-PRD02MNT)-ACT01FEB2015-DPT2MNT-RUNSCHEDjOB-Close01APR2015(Trans2SavingsAcc)-JourENT.xlsx| RecurringDeposit |
	  Then I "Do Feb Deposit Transaction" and verified the following tabs 
	            |4786-SUBMITRD01JAN2015(AMT5000-PRD02MNT)-ACT01FEB2015-DPT2MNT-RUNSCHEDjOB-Close01APR2015(Trans2SavingsAcc)-JourENT.xlsx| RecurringDeposit2 |
	  Then I navigate to scheduler job & execute "Update Deposit Accounts Maturity details"
	  Then I "Navigate to RD account" and verified the following tabs 
	            |4786-SUBMITRD01JAN2015(AMT5000-PRD02MNT)-ACT01FEB2015-DPT2MNT-RUNSCHEDjOB-Close01APR2015(Trans2SavingsAcc)-JourENT.xlsx| Recurring Navigate |
	  Then I "Close Recurring Deposit Account" and verified the following tabs
	  			|4786-SUBMITRD01JAN2015(AMT5000-PRD02MNT)-ACT01FEB2015-DPT2MNT-RUNSCHEDjOB-Close01APR2015(Trans2SavingsAcc)-JourENT.xlsx|Modify Transaction|
	  And I verified the "RecurringDeposit Summary" details successfully
	  			|4786-SUBMITRD01JAN2015(AMT5000-PRD02MNT)-ACT01FEB2015-DPT2MNT-RUNSCHEDjOB-Close01APR2015(Trans2SavingsAcc)-JourENT.xlsx|
	  And I verified the "RD Transaction & TransID" details successfully 
	  			|4786-SUBMITRD01JAN2015(AMT5000-PRD02MNT)-ACT01FEB2015-DPT2MNT-RUNSCHEDjOB-Close01APR2015(Trans2SavingsAcc)-JourENT.xlsx|
	  
	  
@RunnerClass8
Scenario:4787-SUBMITSA01JAN2015(MINACTPRD-30DAYS&LCKINPRD-15DAYS)-APRACT01JAN2015
  
  Given I setup the "Share" product
		        | Productloannavigation.xlsx |
  Then I entered the values into product from "ProductShareInput" Sheet
		        |4787-SUBMITSA01JAN2015(MINACTPRD-30DAYS&LCKINPRD-15DAYS)-APRACT01JAN2015.xlsx|
   Given I setup the clients 
  Then I entered the values into client from "Input" sheet
	            |Createclient.xlsx|
  When I set up the new create saving account from "NewSavingInput" sheet
	  			|4787-SUBMITSA01JAN2015(MINACTPRD-30DAYS&LCKINPRD-15DAYS)-APRACT01JAN2015.xlsx|
  When I set up the new create share account from "NewShareInput" sheet
	  			|4787-SUBMITSA01JAN2015(MINACTPRD-30DAYS&LCKINPRD-15DAYS)-APRACT01JAN2015.xlsx|
  And I verified the "Share Other Details1" details successfully 
	  			|4787-SUBMITSA01JAN2015(MINACTPRD-30DAYS&LCKINPRD-15DAYS)-APRACT01JAN2015.xlsx|
  And I verified the "Share Other Details2" details successfully 
	  			|4787-SUBMITSA01JAN2015(MINACTPRD-30DAYS&LCKINPRD-15DAYS)-APRACT01JAN2015.xlsx|
  And I verified the "Share Transaction" details successfully 
	  			|4787-SUBMITSA01JAN2015(MINACTPRD-30DAYS&LCKINPRD-15DAYS)-APRACT01JAN2015.xlsx|
				
@RunnerClass8
Scenario: 4788-SUBMITSA(ACTPRD-30DAYS&LKINPRD-15DAYS)-Modify(ACTPRD-15DAYS&LCKINPRD-3ODAYS)-ACT01JAN2015
  
  Given I setup the clients 
  Then I entered the values into client from "Input" sheet
	            |Createclient.xlsx|
  When I set up the new create saving account from "NewSavingInput" sheet
	  			|4788-SUBMITSA01JAN2015(MINACTPRD-30DAYS&LCKINPRD-15DAYS)-ModifyApp(MINACTPRD-15DAYS&LCKINPRD-3ODAYS)-APRACT01JAN2015.xlsx|
  When I set up the new create share account from "NewShareInput" sheet
	  			|4788-SUBMITSA01JAN2015(MINACTPRD-30DAYS&LCKINPRD-15DAYS)-ModifyApp(MINACTPRD-15DAYS&LCKINPRD-3ODAYS)-APRACT01JAN2015.xlsx|
  Then I "Modify Share Account Application" and verified the following tabs
	  			|4788-SUBMITSA01JAN2015(MINACTPRD-30DAYS&LCKINPRD-15DAYS)-ModifyApp(MINACTPRD-15DAYS&LCKINPRD-3ODAYS)-APRACT01JAN2015.xlsx|Modify Transaction|
  And I verified the "Share Other Details1" details successfully 
	  			|4788-SUBMITSA01JAN2015(MINACTPRD-30DAYS&LCKINPRD-15DAYS)-ModifyApp(MINACTPRD-15DAYS&LCKINPRD-3ODAYS)-APRACT01JAN2015.xlsx|
 And I verified the "Share Other Details2" details successfully 
	  			|4788-SUBMITSA01JAN2015(MINACTPRD-30DAYS&LCKINPRD-15DAYS)-ModifyApp(MINACTPRD-15DAYS&LCKINPRD-3ODAYS)-APRACT01JAN2015.xlsx|
  And I verified the "Share Transaction" details successfully 
	  			|4788-SUBMITSA01JAN2015(MINACTPRD-30DAYS&LCKINPRD-15DAYS)-ModifyApp(MINACTPRD-15DAYS&LCKINPRD-3ODAYS)-APRACT01JAN2015.xlsx|
				
				
@RunnerClass8
Scenario: 4789-SUBMITSA(ACTPRD-30DAY&LCKINPRD-15DAY)-APR01JAN2015-UNDOAPR-APR04JAN2015-ACT05JAN2015
  
  Given I setup the clients 
  Then I entered the values into client from "Input" sheet
	            |Createclient.xlsx|
  When I set up the new create saving account from "NewSavingInput" sheet
	  			|4789-SUBMITSA(ACTPRD-30DAY&LCKINPRD-15DAY)-APR01JAN2015-UNDOAPR-APR04JAN2015-ACT05JAN2015.xlsx|
  When I set up the new create share account from "NewShareInput" sheet
	  			|4789-SUBMITSA(ACTPRD-30DAY&LCKINPRD-15DAY)-APR01JAN2015-UNDOAPR-APR04JAN2015-ACT05JAN2015.xlsx|
  Then I "UndoApprove and Activate" and verified the following tabs
	  			|4789-SUBMITSA(ACTPRD-30DAY&LCKINPRD-15DAY)-APR01JAN2015-UNDOAPR-APR04JAN2015-ACT05JAN2015.xlsx|Modify Transaction|
  And I verified the "Share Other Details1" details successfully 
	  			|4789-SUBMITSA(ACTPRD-30DAY&LCKINPRD-15DAY)-APR01JAN2015-UNDOAPR-APR04JAN2015-ACT05JAN2015.xlsx|
 And I verified the "Share Other Details2" details successfully 
	  			|4789-SUBMITSA(ACTPRD-30DAY&LCKINPRD-15DAY)-APR01JAN2015-UNDOAPR-APR04JAN2015-ACT05JAN2015.xlsx|
  And I verified the "Share Transaction" details successfully 
	  			|4789-SUBMITSA(ACTPRD-30DAY&LCKINPRD-15DAY)-APR01JAN2015-UNDOAPR-APR04JAN2015-ACT05JAN2015.xlsx|
  

@RunnerClass8
Scenario: 4790-SUBMITSA01JAN2015(MINACTPRD-30DAYS&LCKINPRD-15DAYS&ADDCHG'share-activation-flat')-ACT01JAN2015
  
   
  Given I setup the clients 
  Then I entered the values into client from "Input" sheet
	            |Createclient.xlsx|
  When I set up the new create saving account from "NewSavingInput" sheet
	  			|4790-SUBMITSA01JAN2015(MINACTPRD-30DAYS&LCKINPRD-15DAYS&ADDCHG'share-activation-flat')-ACT01JAN2015.xlsx|
  When I set up the new create share account from "NewShareInput" sheet
	  			|4790-SUBMITSA01JAN2015(MINACTPRD-30DAYS&LCKINPRD-15DAYS&ADDCHG'share-activation-flat')-ACT01JAN2015.xlsx|
  And I verified the "Share Other Details1" details successfully 
	  			|4790-SUBMITSA01JAN2015(MINACTPRD-30DAYS&LCKINPRD-15DAYS&ADDCHG'share-activation-flat')-ACT01JAN2015.xlsx|
 And I verified the "Share Other Details2" details successfully 
	  			|4790-SUBMITSA01JAN2015(MINACTPRD-30DAYS&LCKINPRD-15DAYS&ADDCHG'share-activation-flat')-ACT01JAN2015.xlsx|
  #And I verified the "Share Transaction" details successfully 
#	  			|4790-SUBMITSA01JAN2015(MINACTPRD-30DAYS&LCKINPRD-15DAYS&ADDCHG'share-activation-flat')-ACT01JAN2015.xlsx|
  And I verified the "Share Charge" details successfully 
	  			|4790-SUBMITSA01JAN2015(MINACTPRD-30DAYS&LCKINPRD-15DAYS&ADDCHG'share-activation-flat')-ACT01JAN2015.xlsx|
  
  
@RunnerClass8
Scenario: 4791-SUBMITSA01JAN2015(MINACTPRD-30DAYS&LCKINPRD-15DAYS)-RJCTon01JAN2015
  
   
  Given I setup the clients 
  Then I entered the values into client from "Input" sheet
	            |Createclient.xlsx|
  When I set up the new create saving account from "NewSavingInput" sheet
	  			|4791-SUBMITSA01JAN2015(MINACTPRD-30DAYS&LCKINPRD-15DAYS)-RJCTon01JAN2015.xlsx|
  When I set up the new create share account from "NewShareInput" sheet
	  			|4791-SUBMITSA01JAN2015(MINACTPRD-30DAYS&LCKINPRD-15DAYS)-RJCTon01JAN2015.xlsx|
  Then I "Reject Application" and verified the following tabs
	  			|4791-SUBMITSA01JAN2015(MINACTPRD-30DAYS&LCKINPRD-15DAYS)-RJCTon01JAN2015.xlsx|Modify Transaction|	  				  			
  And I verified the "Share Other Details1" details successfully 
	  			|4791-SUBMITSA01JAN2015(MINACTPRD-30DAYS&LCKINPRD-15DAYS)-RJCTon01JAN2015.xlsx|
 And I verified the "Share Other Details2" details successfully 
	  			|4791-SUBMITSA01JAN2015(MINACTPRD-30DAYS&LCKINPRD-15DAYS)-RJCTon01JAN2015.xlsx|
				
				
@RunnerClass8
Scenario: 4792-SUBMITSA01JAN2015(MINACTPRD-30DAYS&LCKINPRD-15DAYS)-DELETEIT
  
   
  Given I setup the clients 
  Then I entered the values into client from "Input" sheet
	            |Createclient.xlsx|
  When I set up the new create saving account from "NewSavingInput" sheet
	  			|4792-SUBMITSA01JAN2015(MINACTPRD-30DAYS&LCKINPRD-15DAYS)-DELETEIT.xlsx|
  When I set up the new create share account from "NewShareInput" sheet
	  			|4792-SUBMITSA01JAN2015(MINACTPRD-30DAYS&LCKINPRD-15DAYS)-DELETEIT.xlsx|
  Then I "Reject Application" and verified the following tabs
	  			|4792-SUBMITSA01JAN2015(MINACTPRD-30DAYS&LCKINPRD-15DAYS)-DELETEIT.xlsx|Modify Transaction|	  				  			
 
  
@RunnerClass8
Scenario: 4793-SUBMITSA01JAN2015(ACTPRD-30&LCKINPRD-15)-ACT01JAN2015-Addshares15on01FEB2015(checkPending)
  
   
  Given I setup the clients 
  Then I entered the values into client from "Input" sheet
	            |Createclient.xlsx|
  When I set up the new create saving account from "NewSavingInput" sheet
	  			|4793-SUBMITSA01JAN2015(ACTPRD-30&LCKINPRD-15)-ACT01JAN2015-Addshares15on01FEB2015(checkPending).xlsx|
  When I set up the new create share account from "NewShareInput" sheet
	  			|4793-SUBMITSA01JAN2015(ACTPRD-30&LCKINPRD-15)-ACT01JAN2015-Addshares15on01FEB2015(checkPending).xlsx|
  Then I "Apply Additional Share" and verified the following tabs
	  			|4793-SUBMITSA01JAN2015(ACTPRD-30&LCKINPRD-15)-ACT01JAN2015-Addshares15on01FEB2015(checkPending).xlsx|Modify Transaction|
  And I verified the "Share Other Details1" details successfully 
	  			|4793-SUBMITSA01JAN2015(ACTPRD-30&LCKINPRD-15)-ACT01JAN2015-Addshares15on01FEB2015(checkPending).xlsx|
  And I verified the "Share Other Details2" details successfully 
	  			|4793-SUBMITSA01JAN2015(ACTPRD-30&LCKINPRD-15)-ACT01JAN2015-Addshares15on01FEB2015(checkPending).xlsx|
  And I verified the "Share Transaction" details successfully 
	  			|4793-SUBMITSA01JAN2015(ACTPRD-30&LCKINPRD-15)-ACT01JAN2015-Addshares15on01FEB2015(checkPending).xlsx|	 


@RunnerClass8
Scenario: 4794-SUBMITSA01JAN2015(ACTPRD-30D&LCKINPRD-15)-ACT01JAN2015-Addshares15on01FEB2015-APPROVEADDSHARES
  
   
  Given I setup the clients 
  Then I entered the values into client from "Input" sheet
	            |Createclient.xlsx|
  When I set up the new create saving account from "NewSavingInput" sheet
	  			|4794-SUBMITSA01JAN2015(ACTPRD-30D&LCKINPRD-15)-ACT01JAN2015-Addshares15on01FEB2015-APPROVEADDSHARES.xlsx|
  When I set up the new create share account from "NewShareInput" sheet
	  			|4794-SUBMITSA01JAN2015(ACTPRD-30D&LCKINPRD-15)-ACT01JAN2015-Addshares15on01FEB2015-APPROVEADDSHARES.xlsx|
  Then I "Apply Additional Share" and verified the following tabs
	  			|4794-SUBMITSA01JAN2015(ACTPRD-30D&LCKINPRD-15)-ACT01JAN2015-Addshares15on01FEB2015-APPROVEADDSHARES.xlsx|Modify Transaction|
  Then I "Approve Additional Share" and verified the following tabs
	  			|4794-SUBMITSA01JAN2015(ACTPRD-30D&LCKINPRD-15)-ACT01JAN2015-Addshares15on01FEB2015-APPROVEADDSHARES.xlsx|Modify Transaction1|
  And I verified the "Share Other Details1" details successfully 
	  			|4794-SUBMITSA01JAN2015(ACTPRD-30D&LCKINPRD-15)-ACT01JAN2015-Addshares15on01FEB2015-APPROVEADDSHARES.xlsx|
  And I verified the "Share Other Details2" details successfully 
	  			|4794-SUBMITSA01JAN2015(ACTPRD-30D&LCKINPRD-15)-ACT01JAN2015-Addshares15on01FEB2015-APPROVEADDSHARES.xlsx|
  And I verified the "Share Transaction" details successfully 
	  			|4794-SUBMITSA01JAN2015(ACTPRD-30D&LCKINPRD-15)-ACT01JAN2015-Addshares15on01FEB2015-APPROVEADDSHARES.xlsx|	  				  			
 

@RunnerClass8
Scenario: 4795-SUBMITSA01JAN2015(ACTPRD-30&LCKINPRD-15)-ACT01JAN2015-Addshares15on01FEB2015-ADDSHARES5on02FEB2015-APPROVE
  
   
  Given I setup the clients 
  Then I entered the values into client from "Input" sheet
	            |Createclient.xlsx|
  When I set up the new create saving account from "NewSavingInput" sheet
	  			|4795-SUBMITSA01JAN2015(ACTPRD-30&LCKINPRD-15)-ACT01JAN2015-Addshares15on01FEB2015-ADDSHARES5on02FEB2015-APPROVE.xlsx|
  When I set up the new create share account from "NewShareInput" sheet
	  			|4795-SUBMITSA01JAN2015(ACTPRD-30&LCKINPRD-15)-ACT01JAN2015-Addshares15on01FEB2015-ADDSHARES5on02FEB2015-APPROVE.xlsx|
  Then I "Apply Additional Share" and verified the following tabs
	  			|4795-SUBMITSA01JAN2015(ACTPRD-30&LCKINPRD-15)-ACT01JAN2015-Addshares15on01FEB2015-ADDSHARES5on02FEB2015-APPROVE.xlsx|Modify Transaction|
  Then I "Apply Additional Share" and verified the following tabs
	  			|4795-SUBMITSA01JAN2015(ACTPRD-30&LCKINPRD-15)-ACT01JAN2015-Addshares15on01FEB2015-ADDSHARES5on02FEB2015-APPROVE.xlsx|Modify Transaction1|
  Then I "Approve Additional Share" and verified the following tabs
	  			|4795-SUBMITSA01JAN2015(ACTPRD-30&LCKINPRD-15)-ACT01JAN2015-Addshares15on01FEB2015-ADDSHARES5on02FEB2015-APPROVE.xlsx|Modify Transaction2|
  And I verified the "Share Other Details1" details successfully 
	  			|4795-SUBMITSA01JAN2015(ACTPRD-30&LCKINPRD-15)-ACT01JAN2015-Addshares15on01FEB2015-ADDSHARES5on02FEB2015-APPROVE.xlsx|
  And I verified the "Share Other Details2" details successfully 
	  			|4795-SUBMITSA01JAN2015(ACTPRD-30&LCKINPRD-15)-ACT01JAN2015-Addshares15on01FEB2015-ADDSHARES5on02FEB2015-APPROVE.xlsx|
  And I verified the "Share Transaction" details successfully 
	  			|4795-SUBMITSA01JAN2015(ACTPRD-30&LCKINPRD-15)-ACT01JAN2015-Addshares15on01FEB2015-ADDSHARES5on02FEB2015-APPROVE.xlsx|	  				  			
 
@RunnerClass8
Scenario: 4796-SUBMITSA01JAN2015(ACTPRD-30&LCKINPRD-15)-ACT01JAN2015-Addshares15on01FEB2015-APPROVESHARES-APPLYADDSHARES30JAN2015
  
   
  Given I setup the clients 
  Then I entered the values into client from "Input" sheet
	            |Createclient.xlsx|
  When I set up the new create saving account from "NewSavingInput" sheet
	  			|4796-SUBMITSA01JAN2015(ACTPRD-30&LCKINPRD-15)-ACT01JAN2015-Addshares15on01FEB2015-APPROVESHARES-APPLYADDSHARES30JAN2015.xlsx|
  When I set up the new create share account from "NewShareInput" sheet
	  			|4796-SUBMITSA01JAN2015(ACTPRD-30&LCKINPRD-15)-ACT01JAN2015-Addshares15on01FEB2015-APPROVESHARES-APPLYADDSHARES30JAN2015.xlsx|
  Then I "Apply Additional Share" and verified the following tabs
	  			|4796-SUBMITSA01JAN2015(ACTPRD-30&LCKINPRD-15)-ACT01JAN2015-Addshares15on01FEB2015-APPROVESHARES-APPLYADDSHARES30JAN2015.xlsx|Modify Transaction|
  Then I "Approve Additional Share" and verified the following tabs
	  			|4796-SUBMITSA01JAN2015(ACTPRD-30&LCKINPRD-15)-ACT01JAN2015-Addshares15on01FEB2015-APPROVESHARES-APPLYADDSHARES30JAN2015.xlsx|Modify Transaction2|
 Then I "Apply Additional Share" and verified the following tabs
	  			|4796-SUBMITSA01JAN2015(ACTPRD-30&LCKINPRD-15)-ACT01JAN2015-Addshares15on01FEB2015-APPROVESHARES-APPLYADDSHARES30JAN2015.xlsx|Modify Transaction1|
  Then i validate and Verify from "error" sheet
	 			|4796-SUBMITSA01JAN2015(ACTPRD-30&LCKINPRD-15)-ACT01JAN2015-Addshares15on01FEB2015-APPROVESHARES-APPLYADDSHARES30JAN2015.xlsx|
  
 
@RunnerClass8
Scenario: 4797-SUBMITSA01JAN2015(ACTPRD-30DAYS&LCKINPRD-15DAYS)-ACT01JAN2015-REDEEMSHARES5on01MARCH2015
  
   
   Given I setup the clients 
  Then I entered the values into client from "Input" sheet
	            |Createclient.xlsx|
  When I set up the new create saving account from "NewSavingInput" sheet
	  			|4797-SUBMITSA01JAN2015(ACTPRD-30DAYS&LCKINPRD-15DAYS)-ACT01JAN2015-REDEEMSHARES5on01MARCH2015.xlsx|
  When I set up the new create share account from "NewShareInput" sheet
	  			|4797-SUBMITSA01JAN2015(ACTPRD-30DAYS&LCKINPRD-15DAYS)-ACT01JAN2015-REDEEMSHARES5on01MARCH2015.xlsx|
  Then I "REDEEM Share" and verified the following tabs
	  			|4797-SUBMITSA01JAN2015(ACTPRD-30DAYS&LCKINPRD-15DAYS)-ACT01JAN2015-REDEEMSHARES5on01MARCH2015.xlsx|Modify Transaction|
  And I verified the "Share Other Details1" details successfully 
	  			|4797-SUBMITSA01JAN2015(ACTPRD-30DAYS&LCKINPRD-15DAYS)-ACT01JAN2015-REDEEMSHARES5on01MARCH2015.xlsx|
  And I verified the "Share Other Details2" details successfully 
	  			|4797-SUBMITSA01JAN2015(ACTPRD-30DAYS&LCKINPRD-15DAYS)-ACT01JAN2015-REDEEMSHARES5on01MARCH2015.xlsx|
  And I verified the "Share Transaction" details successfully 
	  			|4797-SUBMITSA01JAN2015(ACTPRD-30DAYS&LCKINPRD-15DAYS)-ACT01JAN2015-REDEEMSHARES5on01MARCH2015.xlsx|	
				
@RunnerClass8
Scenario: 4798-SUBMITSA01JAN2015(ACTPRD-30&LCKINPRD-15)-ACT01JAN2015-REDEEMSHARES15on01APR2015
  
   
   Given I setup the clients 
  Then I entered the values into client from "Input" sheet
	            |Createclient.xlsx|
  When I set up the new create saving account from "NewSavingInput" sheet
	  			|4798-SUBMITSA01JAN2015(ACTPRD-30&LCKINPRD-15)-ACT01JAN2015-REDEEMSHARES15on01APR2015.xlsx|
  When I set up the new create share account from "NewShareInput" sheet
	  			|4798-SUBMITSA01JAN2015(ACTPRD-30&LCKINPRD-15)-ACT01JAN2015-REDEEMSHARES15on01APR2015.xlsx|
  Then I "REDEEM Share" and verified the following tabs
	  			|4798-SUBMITSA01JAN2015(ACTPRD-30&LCKINPRD-15)-ACT01JAN2015-REDEEMSHARES15on01APR2015.xlsx|Modify Transaction|
  Then i validate and Verify from "error" sheet 
	  			|4798-SUBMITSA01JAN2015(ACTPRD-30&LCKINPRD-15)-ACT01JAN2015-REDEEMSHARES15on01APR2015.xlsx|
  
  
@RunnerClass8
Scenario: 4799-SUBMITSA01JAN2015(ACTPRD-30&LCKINPRD-15)-ACT01JAN2015-ADDSHARES5on01FEB2015-REDEEMSHARES15on30JAN2015
  
   
   Given I setup the clients 
  Then I entered the values into client from "Input" sheet
	            |Createclient.xlsx|
  When I set up the new create saving account from "NewSavingInput" sheet
	  			|4799-SUBMITSA01JAN2015(ACTPRD-30&LCKINPRD-15)-ACT01JAN2015-ADDSHARES5on01FEB2015-REDEEMSHARES15on30JAN2015.xlsx|
  When I set up the new create share account from "NewShareInput" sheet
	  			|4799-SUBMITSA01JAN2015(ACTPRD-30&LCKINPRD-15)-ACT01JAN2015-ADDSHARES5on01FEB2015-REDEEMSHARES15on30JAN2015.xlsx|
  Then I "Apply Additional Share" and verified the following tabs
	  			|4799-SUBMITSA01JAN2015(ACTPRD-30&LCKINPRD-15)-ACT01JAN2015-ADDSHARES5on01FEB2015-REDEEMSHARES15on30JAN2015.xlsx|Modify Transaction|
  Then I "REDEEM Share" and verified the following tabs
	  			|4799-SUBMITSA01JAN2015(ACTPRD-30&LCKINPRD-15)-ACT01JAN2015-ADDSHARES5on01FEB2015-REDEEMSHARES15on30JAN2015.xlsx|Modify Transaction1|
  Then i validate and Verify from "error" sheet 
	  			|4799-SUBMITSA01JAN2015(ACTPRD-30&LCKINPRD-15)-ACT01JAN2015-ADDSHARES5on01FEB2015-REDEEMSHARES15on30JAN2015.xlsx|

@RunnerClass8
Scenario: 4800-SUBMITSA01JAN2015(MINACTPRD-30DAYS&LCKINPRD-15DAYS&CHG'share-purchase-flat')-ACT01JAN2015
  
   
   Given I setup the clients 
  Then I entered the values into client from "Input" sheet
	            |Createclient.xlsx|
  When I set up the new create saving account from "NewSavingInput" sheet
	  			|4800-SUBMITSA01JAN2015(MINACTPRD-30DAYS&LCKINPRD-15DAYS&CHG'share-purchase-flat')-ACT01JAN2015.xlsx|
  When I set up the new create share account from "NewShareInput" sheet
	  			|4800-SUBMITSA01JAN2015(MINACTPRD-30DAYS&LCKINPRD-15DAYS&CHG'share-purchase-flat')-ACT01JAN2015.xlsx|
  And I verified the "Share Other Details1" details successfully 
	  			|4800-SUBMITSA01JAN2015(MINACTPRD-30DAYS&LCKINPRD-15DAYS&CHG'share-purchase-flat')-ACT01JAN2015.xlsx|
  And I verified the "Share Other Details2" details successfully 
	  			|4800-SUBMITSA01JAN2015(MINACTPRD-30DAYS&LCKINPRD-15DAYS&CHG'share-purchase-flat')-ACT01JAN2015.xlsx|
  And I verified the "Share Transaction" details successfully 
	  			|4800-SUBMITSA01JAN2015(MINACTPRD-30DAYS&LCKINPRD-15DAYS&CHG'share-purchase-flat')-ACT01JAN2015.xlsx|
  And I verified the "Share Charge" details successfully 
	  			|4800-SUBMITSA01JAN2015(MINACTPRD-30DAYS&LCKINPRD-15DAYS&CHG'share-purchase-flat')-ACT01JAN2015.xlsx|
  
  
@RunnerClass8
Scenario: 4801-SUBMITSA01JAN2015(ACTPRD-30&LCKINPRD-15&CHG'share-redeem-flat')-APRACT01JAN2015-REDEEMShare01MAR2015
  
   
   Given I setup the clients 
  Then I entered the values into client from "Input" sheet
	            |Createclient.xlsx|
  When I set up the new create saving account from "NewSavingInput" sheet
	  			|4801-SUBMITSA01JAN2015(ACTPRD-30&LCKINPRD-15&CHG'share-redeem-flat')-APRACT01JAN2015-REDEEMShare01MAR2015.xlsx|
  When I set up the new create share account from "NewShareInput" sheet
	  			|4801-SUBMITSA01JAN2015(ACTPRD-30&LCKINPRD-15&CHG'share-redeem-flat')-APRACT01JAN2015-REDEEMShare01MAR2015.xlsx|
  Then I "REDEEM Share" and verified the following tabs
	  			|4801-SUBMITSA01JAN2015(ACTPRD-30&LCKINPRD-15&CHG'share-redeem-flat')-APRACT01JAN2015-REDEEMShare01MAR2015.xlsx|Modify Transaction|
  And I verified the "Share Other Details1" details successfully 
	  			|4801-SUBMITSA01JAN2015(ACTPRD-30&LCKINPRD-15&CHG'share-redeem-flat')-APRACT01JAN2015-REDEEMShare01MAR2015.xlsx|
  And I verified the "Share Other Details2" details successfully 
	  			|4801-SUBMITSA01JAN2015(ACTPRD-30&LCKINPRD-15&CHG'share-redeem-flat')-APRACT01JAN2015-REDEEMShare01MAR2015.xlsx|
  And I verified the "Share Transaction" details successfully 
	  			|4801-SUBMITSA01JAN2015(ACTPRD-30&LCKINPRD-15&CHG'share-redeem-flat')-APRACT01JAN2015-REDEEMShare01MAR2015.xlsx|
  And I verified the "Share Charge" details successfully 
	  			|4801-SUBMITSA01JAN2015(ACTPRD-30&LCKINPRD-15&CHG'share-redeem-flat')-APRACT01JAN2015-REDEEMShare01MAR2015.xlsx|
	  			
@RunnerClass8
Scenario: 4802-SUBMITSA01JAN2015(ACTPRD-30&LCKINPRD-15)-ACT01JAN2015-Addshares15on01FEB2015-RJCTADDSHARES
  
   
  Given I setup the clients 
  Then I entered the values into client from "Input" sheet
	            |Createclient.xlsx|
  When I set up the new create saving account from "NewSavingInput" sheet
	  			|4802-SUBMITSA01JAN2015(ACTPRD-30&LCKINPRD-15)-ACT01JAN2015-Addshares15on01FEB2015-RJCTADDSHARES.xlsx|
  When I set up the new create share account from "NewShareInput" sheet
	  			|4802-SUBMITSA01JAN2015(ACTPRD-30&LCKINPRD-15)-ACT01JAN2015-Addshares15on01FEB2015-RJCTADDSHARES.xlsx|
  Then I "Apply Additional Share" and verified the following tabs
	  			|4802-SUBMITSA01JAN2015(ACTPRD-30&LCKINPRD-15)-ACT01JAN2015-Addshares15on01FEB2015-RJCTADDSHARES.xlsx|Modify Transaction|
  Then I "Reject Additional Share" and verified the following tabs
	  			|4802-SUBMITSA01JAN2015(ACTPRD-30&LCKINPRD-15)-ACT01JAN2015-Addshares15on01FEB2015-RJCTADDSHARES.xlsx|Modify Transaction1|
  And I verified the "Share Other Details1" details successfully 
	  			|4802-SUBMITSA01JAN2015(ACTPRD-30&LCKINPRD-15)-ACT01JAN2015-Addshares15on01FEB2015-RJCTADDSHARES.xlsx|
  And I verified the "Share Other Details2" details successfully 
	  			|4802-SUBMITSA01JAN2015(ACTPRD-30&LCKINPRD-15)-ACT01JAN2015-Addshares15on01FEB2015-RJCTADDSHARES.xlsx|
  And I verified the "Share Transaction" details successfully 
	  			|4802-SUBMITSA01JAN2015(ACTPRD-30&LCKINPRD-15)-ACT01JAN2015-Addshares15on01FEB2015-RJCTADDSHARES.xlsx|
 
@RunnerClass8
Scenario: 4803-SUBMITSA01JAN2015(MINACTPRD-30DAYS&LCKINPRD-30DAYS)-APRACT01JAN2015-CloseSAon15January2015
  
   
   Given I setup the clients 
  Then I entered the values into client from "Input" sheet
	            |Createclient.xlsx|
  When I set up the new create saving account from "NewSavingInput" sheet
	  			|4803-SUBMITSA01JAN2015(MINACTPRD-30DAYS&LCKINPRD-30DAYS)-APRACT01JAN2015-CloseSAon15January2015.xlsx|
  When I set up the new create share account from "NewShareInput" sheet
	  			|4803-SUBMITSA01JAN2015(MINACTPRD-30DAYS&LCKINPRD-30DAYS)-APRACT01JAN2015-CloseSAon15January2015.xlsx|
  Then I "Close Share Account" and verified the following tabs
	  			|4803-SUBMITSA01JAN2015(MINACTPRD-30DAYS&LCKINPRD-30DAYS)-APRACT01JAN2015-CloseSAon15January2015.xlsx|Modify Transaction|
  Then i validate and Verify from "error" sheet 
	  			|4803-SUBMITSA01JAN2015(MINACTPRD-30DAYS&LCKINPRD-30DAYS)-APRACT01JAN2015-CloseSAon15January2015.xlsx|
  
 
@RunnerClass8
Scenario: 4804-SUBMITSA01JAN2015(MINACTPRD-30DAYS&LCKINPRD-30DAYS)-APRACT01JAN2015
  
   
   Given I setup the clients 
  Then I entered the values into client from "Input" sheet
	            |Createclient.xlsx|
  When I set up the new create saving account from "NewSavingInput" sheet
	  			|4804-SUBMITSA01JAN2015(MINACTPRD-30DAYS&LCKINPRD-30DAYS)-APRACT01JAN2015.xlsx|
  When I set up the new create share account from "NewShareInput" sheet
	  			|4804-SUBMITSA01JAN2015(MINACTPRD-30DAYS&LCKINPRD-30DAYS)-APRACT01JAN2015.xlsx|
  Then i validate and Verify from "error" sheet 
	  			|4804-SUBMITSA01JAN2015(MINACTPRD-30DAYS&LCKINPRD-30DAYS)-APRACT01JAN2015.xlsx|
  
@RunnerClass8
Scenario: 4805-SUBMITSA01JAN2015(MINACTPRD-30DAYS)-APRACT01JAN2015-INIT&PSTDVD
  
  Given I setup the "Share" product
		        | Productloannavigation.xlsx |
  Then I entered the values into product from "ProductShareInput" Sheet
		        |4805-SUBMITSA01JAN2015(MINACTPRD-30DAYS)-APRACT01JAN2015-INIT&PSTDVD.xlsx|
  Given I setup the clients 
  Then I entered the values into client from "Input" sheet
	            |Createclient.xlsx|
  When I set up the new create saving account from "NewSavingInput" sheet
	  			|4805-SUBMITSA01JAN2015(MINACTPRD-30DAYS)-APRACT01JAN2015-INIT&PSTDVD.xlsx|
  When I set up the new create share account from "NewShareInput" sheet
	  			|4805-SUBMITSA01JAN2015(MINACTPRD-30DAYS)-APRACT01JAN2015-INIT&PSTDVD.xlsx|
  Then I "Apply Dividend to Product" and verified the following tabs
	  			|4805-SUBMITSA01JAN2015(MINACTPRD-30DAYS)-APRACT01JAN2015-INIT&PSTDVD.xlsx|Modify Transaction|
  Then I navigate to scheduler job & execute "Post Dividends For Shares"
  Then I "Navigate to Share account" and verified the following tabs 
	            |4805-SUBMITSA01JAN2015(MINACTPRD-30DAYS)-APRACT01JAN2015-INIT&PSTDVD.xlsx| Modify Transaction1 |
  And I verified the "Share dividend" details successfully 
	  			|4805-SUBMITSA01JAN2015(MINACTPRD-30DAYS)-APRACT01JAN2015-INIT&PSTDVD.xlsx|
  Then I "Navigate to Saving account" and verified the following tabs
                |4805-SUBMITSA01JAN2015(MINACTPRD-30DAYS)-APRACT01JAN2015-INIT&PSTDVD.xlsx| Modify Transaction2 |
  And I verified the "Saving Transaction" details successfully
	 			|4805-SUBMITSA01JAN2015(MINACTPRD-30DAYS)-APRACT01JAN2015-INIT&PSTDVD.xlsx|

				
@RunnerClass8
Scenario: 4806-SUBMITSA01JAN2015(MINACTPRD-30DAYS)-APRACT01JAN2015-INITDVD-closeSA
  
  Given I setup the "Share" product
		        | Productloannavigation.xlsx |
  Then I entered the values into product from "ProductShareInput" Sheet
		        |4806-SUBMITSA01JAN2015(MINACTPRD-30DAYS)-APRACT01JAN2015-INITDVD-closeSA.xlsx|
  Given I setup the clients 
  Then I entered the values into client from "Input" sheet
	            |Createclient.xlsx|
  When I set up the new create saving account from "NewSavingInput" sheet
	  			|4806-SUBMITSA01JAN2015(MINACTPRD-30DAYS)-APRACT01JAN2015-INITDVD-closeSA.xlsx|
  When I set up the new create share account from "NewShareInput" sheet
	  			|4806-SUBMITSA01JAN2015(MINACTPRD-30DAYS)-APRACT01JAN2015-INITDVD-closeSA.xlsx|
  Then I "Apply Dividend to Product" and verified the following tabs
	  			|4806-SUBMITSA01JAN2015(MINACTPRD-30DAYS)-APRACT01JAN2015-INITDVD-closeSA.xlsx|Modify Transaction|
 
  Then I "Navigate to Share account" and verified the following tabs 
	            |4806-SUBMITSA01JAN2015(MINACTPRD-30DAYS)-APRACT01JAN2015-INITDVD-closeSA.xlsx| Modify Transaction1 |
  
  Then I "Close Share account" and verified the following tabs
                |4806-SUBMITSA01JAN2015(MINACTPRD-30DAYS)-APRACT01JAN2015-INITDVD-closeSA.xlsx| Modify Transaction2 |
  And I verified the "Share Transaction" details successfully 
	  			|4806-SUBMITSA01JAN2015(MINACTPRD-30DAYS)-APRACT01JAN2015-INITDVD-closeSA.xlsx|
   


Feature:Savings

Background:
	Given I navigate to mifos using "default9#/"
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
	  Then i validate and Verify from "error" sheet
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
	  Then i validate and Verify from "error" sheet
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
	 	And I verified the "Saving Charges" details successfully 
	 			|4725-CREATEGROUP2CLIENTS-SUBMIT01JAN2015(CHARGEMONTHLYFEE)-APPROVE01JAN2015-ACTIVATE01JAN2015-PAYCHARGE01FEB2015.xlsx|
				
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
	   			|4727-ACTIVATEON01JAN2015-DEPOSIT200on15JAN2015-WITHDRAW100on01FEB2015-POSTINTEREST-VIEWJRNALENTRY.xlsx| Deposit1 | Deposit2 | Interst_Posting1 | Withdrawal1 | Interst_Posting2 | Interst_Posting3 |
			
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
	   			|4728-SUBMIT(DUEDATE-15JAN2015)01JAN2015-PAYCHARGE15JAN2015-DEPOSIT500on01FEB2015-VIEWJRNALENTRY.xlsx| Pay_charge | Deposit1 | Deposit2 |
	
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
	   			|4729-ACTIVATEON01JAN2015-WITHDRAW100on01JAN2015-CLICKONPOSTINTEREST-VIEWJRNALENTRY.xlsx| Withdrawal | Deposit |
				
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
	   			|4731-CREATEGROUPWITH2CLIENTS-SUBMITSAVINGSON01JAN2015-POSTINTRST01APRIL2015-CLOSE01APRIL2015-VIEWJRNLENTRY.xlsx| Deposit1 | Interst_Posting1 | Interst_Posting2 | Withdrawal | Interst_Posting3 |
	
	
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
	   			|4733-SUBMITSAVINGS01JAN2015-DEPOSIT3000on01JAN2015-TRANSFER846on08JAN2015toLOANACCOUNTofOTHERCLIENT-2ndClient.xlsx| Deposit1 | Deposit2 | Withdrawal |
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
	   			|4734-SUBMITSAVINGS01JAN2015-DEPOSIT3000on01JAN2015-TRANSFER900on01FEB2015toLOANACCOUNTofSAMECLIENT-2ndClient.xlsx| Deposit1 | Deposit2 | Withdrawal |
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
	   			|4735-SUBMIT01JAN2015-DEPOSIT3000on01JAN2015-TRANSFER900on01FEB2015toLOANACCOUNTOTHERCLIENT-undoTransactionINLOANACCOUNT-2ndClient.xlsx| Deposit1 | Deposit2 | Withdrawal |
	   Then I navigate To Loan Account Page
	   And I verified the "Transactions" details successfully
	  			|4735-SUBMIT01JAN2015-DEPOSIT3000on01JAN2015-TRANSFER900on01FEB2015toLOANACCOUNTOTHERCLIENT-undoTransactionINLOANACCOUNT-1stClient.xlsx|		  
        Then I "undo transaction from transaction tab" and verified the following tabs
                |4735-SUBMIT01JAN2015-DEPOSIT3000on01JAN2015-TRANSFER900on01FEB2015toLOANACCOUNTOTHERCLIENT-undoTransactionINLOANACCOUNT-1stClient.xlsx|Modify Transaction|
	  Then i validate and Verify from "error" sheet
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
	  Then i validate and Verify from "error" sheet 
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
					
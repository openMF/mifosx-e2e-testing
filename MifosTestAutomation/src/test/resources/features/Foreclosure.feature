Feature:Foreclosure
Background:
	Given I navigate to mifos using "default#/"
	And I login into mifos site using "Login" excel sheet
		| Login.xlsx  |
	Then I should see logged in successfully



####################################################  FORECLOSURE  #############################################################  

	
	@RunnerClass1
Scenario:4625-EI-DB-SAR-CIFEDIPP-CHECKED-DISB-01JAN2015-FC-15JAN2015
      Given I setup the product loan "Setup"
		        | Productloannavigation.xlsx |
	  Then I entered the values into product from "ProductLoanInput" Sheet
		        |4625-EI-DB-SAR-CIFEDIPP-CHECKED-DISB-01JAN2015-FC-15JAN2015.xlsx|
	  Given I setup the clients
	  When I entered the values into client from "Input" sheet
	 			|Createclient.xlsx|
	  Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			|4625-EI-DB-SAR-CIFEDIPP-CHECKED-DISB-01JAN2015-FC-15JAN2015.xlsx|
	  Then I "Foreclosure" and verified the following tabs
	  			|4625-EI-DB-SAR-CIFEDIPP-CHECKED-DISB-01JAN2015-FC-15JAN2015.xlsx| Foreclosure | Transactions |
				
				
@RunnerClass1
Scenario:4626-EI-DB-SAR-CIFEDIPP-UNCHECKED-DISB-01JAN2015-FC-15JAN2015
      Given I setup the product loan "Setup"
		        | Productloannavigation.xlsx |
	  Then I entered the values into product from "ProductLoanInput" Sheet
		        |4626-EI-DB-SAR-CIFEDIPP-UNCHECKED-DISB-01JAN2015-FC-15JAN2015.xlsx|
	  Given I setup the clients
	  When I entered the values into client from "Input" sheet
	 			|Createclient.xlsx|
	  Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			|4626-EI-DB-SAR-CIFEDIPP-UNCHECKED-DISB-01JAN2015-FC-15JAN2015.xlsx|
	  Then I "Foreclosure" and verified the following tabs
	  			|4626-EI-DB-SAR-CIFEDIPP-UNCHECKED-DISB-01JAN2015-FC-15JAN2015.xlsx| Foreclosure | Transactions |
				
				
@RunnerClass1
Scenario:4627-EPP-DB-SAR-CIFEDIPP-CHECKED-DISB-01JAN2015-FC-15JAN2015
      Given I setup the product loan "Setup"
		        | Productloannavigation.xlsx |
	  Then I entered the values into product from "ProductLoanInput" Sheet
		        |4627-EPP-DB-SAR-CIFEDIPP-CHECKED-DISB-01JAN2015-FC-15JAN2015.xlsx|
	  Given I setup the clients
	  When I entered the values into client from "Input" sheet
	 			|Createclient.xlsx|
	  Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			|4627-EPP-DB-SAR-CIFEDIPP-CHECKED-DISB-01JAN2015-FC-15JAN2015.xlsx|
	  Then I "Foreclosure" and verified the following tabs
	  			|4627-EPP-DB-SAR-CIFEDIPP-CHECKED-DISB-01JAN2015-FC-15JAN2015.xlsx| Foreclosure | Transactions |
	  			
@RunnerClass1
Scenario:4628-EPP-DB-SAR-CIFEDIPP-UNCHECKED-DISB-01JAN2015-FC-15JAN2015
      Given I setup the product loan "Setup"
		        | Productloannavigation.xlsx |
	  Then I entered the values into product from "ProductLoanInput" Sheet
		        |4628-EPP-DB-SAR-CIFEDIPP-UNCHECKED-DISB-01JAN2015-FC-15JAN2015.xlsx|
	  Given I setup the clients
	  When I entered the values into client from "Input" sheet
	 			|Createclient.xlsx|
	  Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			|4628-EPP-DB-SAR-CIFEDIPP-UNCHECKED-DISB-01JAN2015-FC-15JAN2015.xlsx|
	  Then I "Foreclosure" and verified the following tabs
	  			|4628-EPP-DB-SAR-CIFEDIPP-UNCHECKED-DISB-01JAN2015-FC-15JAN2015.xlsx| Foreclosure | Transactions |
				
				
@RunnerClass1
Scenario:4629-EI-DB-DL-DISB-01JAN2015-FC-15JAN2015
      Given I setup the product loan "Setup"
		        | Productloannavigation.xlsx |
	  Then I entered the values into product from "ProductLoanInput" Sheet
		        |4629-EI-DB-DL-DISB-01JAN2015-FC-15JAN2015.xlsx|
	  Given I setup the clients
	  When I entered the values into client from "Input" sheet
	 			|Createclient.xlsx|
	  Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			|4629-EI-DB-DL-DISB-01JAN2015-FC-15JAN2015.xlsx|
	  Then I "Foreclosure" and verified the following tabs
	  			|4629-EI-DB-DL-DISB-01JAN2015-FC-15JAN2015.xlsx| Foreclosure | Transactions |
				
@RunnerClass1
Scenario:4630-EPP-DB-DL-DISB-01JAN2015-FC-15JAN2015
      Given I setup the product loan "Setup"
		        | Productloannavigation.xlsx |
	  Then I entered the values into product from "ProductLoanInput" Sheet
		        |4630-EPP-DB-DL-DISB-01JAN2015-FC-15JAN2015.xlsx|
	  Given I setup the clients
	  When I entered the values into client from "Input" sheet
	 			|Createclient.xlsx|
	  Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			|4630-EPP-DB-DL-DISB-01JAN2015-FC-15JAN2015.xlsx|
	  Then I "Foreclosure" and verified the following tabs
	  			|4630-EPP-DB-DL-DISB-01JAN2015-FC-15JAN2015.xlsx| Foreclosure | Transactions |
				
				
@RunnerClass1
Scenario:4631-EI-FL-SAR-CIFEDIPP-CHECKED-DISB-01JAN2015-FC-15JAN2015
      Given I setup the product loan "Setup"
		        | Productloannavigation.xlsx |
	  Then I entered the values into product from "ProductLoanInput" Sheet
		        |4631-EI-FL-SAR-CIFEDIPP-CHECKED-DISB-01JAN2015-FC-15JAN2015.xlsx|
	  Given I setup the clients
	  When I entered the values into client from "Input" sheet
	 			|Createclient.xlsx|
	  Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			|4631-EI-FL-SAR-CIFEDIPP-CHECKED-DISB-01JAN2015-FC-15JAN2015.xlsx|
	  Then I "Foreclosure" and verified the following tabs
	  			|4631-EI-FL-SAR-CIFEDIPP-CHECKED-DISB-01JAN2015-FC-15JAN2015.xlsx| Foreclosure | Transactions |
	  			

@RunnerClass1
Scenario:4632-EI-FL-SAR-CIFEDIPP-UNCHECKED-DISB-01JAN2015-FC-15JAN2015
      Given I setup the product loan "Setup"
		        | Productloannavigation.xlsx |
	  Then I entered the values into product from "ProductLoanInput" Sheet
		        |4632-EI-FL-SAR-CIFEDIPP-UNCHECKED-DISB-01JAN2015-FC-15JAN2015.xlsx|
	  Given I setup the clients
	  When I entered the values into client from "Input" sheet
	 			|Createclient.xlsx|
	  Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			|4632-EI-FL-SAR-CIFEDIPP-UNCHECKED-DISB-01JAN2015-FC-15JAN2015.xlsx|
	  Then I "Foreclosure" and verified the following tabs
	  			|4632-EI-FL-SAR-CIFEDIPP-UNCHECKED-DISB-01JAN2015-FC-15JAN2015.xlsx| Foreclosure | Transactions |
	  			
@RunnerClass1
Scenario:4633-EI-FL-DL-DISB-01JAN2015-FC-15JAN2015
      Given I setup the product loan "Setup"
		        | Productloannavigation.xlsx |
	  Then I entered the values into product from "ProductLoanInput" Sheet
		        |4633-EI-FL-DL-DISB-01JAN2015-FC-15JAN2015.xlsx|
	  Given I setup the clients
	  When I entered the values into client from "Input" sheet
	 			|Createclient.xlsx|
	  Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			|4633-EI-FL-DL-DISB-01JAN2015-FC-15JAN2015.xlsx|
	  Then I "Foreclosure" and verified the following tabs
	  			|4633-EI-FL-DL-DISB-01JAN2015-FC-15JAN2015.xlsx| Foreclosure | Transactions |
				
				
@RunnerClass1
Scenario:4634-EI-DB-DL-MORATORIUMonINT-1-DISB-01JAN2015-FC-15JAN2015
      Given I setup the product loan "Setup"
		        | Productloannavigation.xlsx |
	  Then I entered the values into product from "ProductLoanInput" Sheet
		        |4634-EI-DB-DL-MORATORIUMonINT-1-DISB-01JAN2015-FC-15JAN2015.xlsx|
	  Given I setup the clients
	  When I entered the values into client from "Input" sheet
	 			|Createclient.xlsx|
	  Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			|4634-EI-DB-DL-MORATORIUMonINT-1-DISB-01JAN2015-FC-15JAN2015.xlsx|
	  Then I "Foreclosure" and verified the following tabs
	  			|4634-EI-DB-DL-MORATORIUMonINT-1-DISB-01JAN2015-FC-15JAN2015.xlsx| Foreclosure | Transactions |
	  			
	  			
@RunnerClass1
Scenario:4635-EI-DB-DL-MORATORIUMonPRINCIPAL+INT-1-DISB-01JAN2015-FC-15JAN2015
      Given I setup the product loan "Setup"
		        | Productloannavigation.xlsx |
	  Then I entered the values into product from "ProductLoanInput" Sheet
		        |4635-EI-DB-DL-MORATORIUMonPRINCIPAL+INT-1-DISB-01JAN2015-FC-15JAN2015.xlsx|
	  Given I setup the clients
	  When I entered the values into client from "Input" sheet
	 			|Createclient.xlsx|
	  Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			|4635-EI-DB-DL-MORATORIUMonPRINCIPAL+INT-1-DISB-01JAN2015-FC-15JAN2015.xlsx|
	  Then I "Foreclosure" and verified the following tabs
	  			|4635-EI-DB-DL-MORATORIUMonPRINCIPAL+INT-1-DISB-01JAN2015-FC-15JAN2015.xlsx| Foreclosure | Transactions |
				
@RunnerClass1
Scenario:4636-EI-DB-DL-INTCHARGEDFROM-015FEB2015-DISB-01JAN2015-FC-15JAN2015
   	  Given I setup the clients
	  When I entered the values into client from "Input" sheet
	 			|Createclient.xlsx|
	  Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			|4636-EI-DB-DL-INTCHARGEDFROM-015FEB2015-DISB-01JAN2015-FC-15JAN2015.xlsx|
	  Then I "Foreclosure" and verified the following tabs
	  			|4636-EI-DB-DL-INTCHARGEDFROM-015FEB2015-DISB-01JAN2015-FC-15JAN2015.xlsx| Foreclosure | Transactions |
				
@RunnerClass1
Scenario:4637-EI-DB-DL-OVERDUEFEEflat100-DISB-01JAN2015-FC-15JAN2015
      Given I setup the product loan "Setup"
		        | Productloannavigation.xlsx |
	  Then I entered the values into product from "ProductLoanInput" Sheet
		        |4637-EI-DB-DL-OVERDUEFEEflat100-DISB-01JAN2015-FC-15JAN2015.xlsx|       
	  Given I setup the clients
	  When I entered the values into client from "Input" sheet
	 			|Createclient.xlsx|
	  Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			|4637-EI-DB-DL-OVERDUEFEEflat100-DISB-01JAN2015-FC-15JAN2015.xlsx|
	  Then I navigate to scheduler job & execute "Apply penalty to overdue loans"
	  Then I "Foreclosure" and verified the following tabs
	  			|4637-EI-DB-DL-OVERDUEFEEflat100-DISB-01JAN2015-FC-15JAN2015.xlsx| Foreclosure | Transactions |
	  			
	  							
@RunnerClass1
Scenario:4638-EI-DB-DL-SPDUEDATEFEEon10JAN2015-DISB-01JAN2015-FC-15JAN2015 
	  Given I setup the clients
	  When I entered the values into client from "Input" sheet
	 			|Createclient.xlsx|
	  Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			|4638-EI-DB-DL-SPDUEDATEFEEon10JAN2015-DISB-01JAN2015-FC-15JAN2015.xlsx|
	  Then I "Foreclosure" and verified the following tabs
	  			|4638-EI-DB-DL-SPDUEDATEFEEon10JAN2015-DISB-01JAN2015-FC-15JAN2015.xlsx| Foreclosure | Transactions |
	  			
@RunnerClass1
Scenario:4639-EI-DB-DL-SPDUEDATEFEEon20JAN2015-DISB-01JAN2015-FC-15JAN2015      
	  Given I setup the clients
	  When I entered the values into client from "Input" sheet
	 			|Createclient.xlsx|
	  Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			|4639-EI-DB-DL-SPDUEDATEFEEon20JAN2015-DISB-01JAN2015-FC-15JAN2015.xlsx|
	  Then I "Foreclosure" and verified the following tabs
	  			|4639-EI-DB-DL-SPDUEDATEFEEon20JAN2015-DISB-01JAN2015-FC-15JAN2015.xlsx| Foreclosure | Transactions |	
	  			
@RunnerClass1
Scenario:4640-EI-FL-DL-VARINST-DATE-15JAN2015-DISB-FC-25JAN2015 
      Given I setup the product loan "Setup"
		        | Productloannavigation.xlsx |
	  Then I entered the values into product from "ProductLoanInput" Sheet
		        |4640-EI-FL-DL-VARINST-DATE-15JAN2015-DISB-FC-25JAN2015.xlsx|  
	  Given I setup the clients
	  When I entered the values into client from "Input" sheet
	 			|Createclient.xlsx|
	  Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			|4640-EI-FL-DL-VARINST-DATE-15JAN2015-DISB-FC-25JAN2015.xlsx|
	  Then I "Edit Date " In Edit Repayment Schedule page
                |4640-EI-FL-DL-VARINST-DATE-15JAN2015-DISB-FC-25JAN2015.xlsx|Edit Repayment Schedule|
	  Then I "Foreclosure" and verified the following tabs
	  			|4640-EI-FL-DL-VARINST-DATE-15JAN2015-DISB-FC-25JAN2015.xlsx| Foreclosure | Transactions |	
	
@RunnerClass1
Scenario:4641-EI-FL-DL-DISB-01JAN2015-REPAYon15JAN2016-FC-15JAN2015      
	  Given I setup the clients
	  When I entered the values into client from "Input" sheet
	 			|Createclient.xlsx|
	  Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			|4641-EI-FL-DL-DISB-01JAN2015-REPAYon15JAN2016-FC-15JAN2015.xlsx|
	  Then I make repayment and verified the following tabs
     			|4641-EI-FL-DL-DISB-01JAN2015-REPAYon15JAN2016-FC-15JAN2015.xlsx|Repay1|
	  Then I "Foreclosure" and verified the following tabs
	  			|4641-EI-FL-DL-DISB-01JAN2015-REPAYon15JAN2016-FC-15JAN2015.xlsx| Foreclosure | Transactions |
				
				
@RunnerClass1
Scenario:4642-EI-FL-DL-DISB-01JAN2015-WAIVEINT-FC-15JAN2015      
	  Given I setup the clients
	  When I entered the values into client from "Input" sheet
	 			|Createclient.xlsx|
	  Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			|4642-EI-FL-DL-DISB-01JAN2015-WAIVEINT-FC-15JAN2015.xlsx|
	  Then I "WaiveInterest" and verified the following tabs
	            |4642-EI-FL-DL-DISB-01JAN2015-WAIVEINT-FC-15JAN2015.xlsx|Modify Transaction|
	  Then I "Foreclosure" and verified the following tabs
	  			|4642-EI-FL-DL-DISB-01JAN2015-WAIVEINT-FC-15JAN2015.xlsx| Foreclosure | Transactions |
				
				
@RunnerClass1
Scenario:4643-EI-DB-DL-SPDUEDATEFEEon10JAN2015-DISB-01JAN2015-WAIVECHARGE-FC-15JAN2015     
	  Given I setup the clients
	  When I entered the values into client from "Input" sheet
	 			|Createclient.xlsx|
	  Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			|4643-EI-DB-DL-SPDUEDATEFEEon10JAN2015-DISB-01JAN2015-WAIVECHARGE-FC-15JAN2015.xlsx|
	  Then I "WAIVEPENALTY" and verified the following tabs
	            |4643-EI-DB-DL-SPDUEDATEFEEon10JAN2015-DISB-01JAN2015-WAIVECHARGE-FC-15JAN2015.xlsx|Charges|
	  Then I "Foreclosure" and verified the following tabs
	  			|4643-EI-DB-DL-SPDUEDATEFEEon10JAN2015-DISB-01JAN2015-WAIVECHARGE-FC-15JAN2015.xlsx| Foreclosure | Transactions |
				
@RunnerClass1
Scenario:4644-EI-FL-DL-DISB-01JAN2015-FC-15JAN2015-UNDOTRANSACTIONS     
	  Given I setup the clients
	  When I entered the values into client from "Input" sheet
	 			|Createclient.xlsx|
	  Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			|4644-EI-FL-DL-DISB-01JAN2015-FC-15JAN2015-UNDOTRANSACTIONS.xlsx|
	  Then I "Foreclosure" and verified the following tabs
	  			|4644-EI-FL-DL-DISB-01JAN2015-FC-15JAN2015-UNDOTRANSACTIONS.xlsx| Foreclosure | Transactions |
	  Then I "undo transaction from transaction tab" and verified the following tabs
	  			|4644-EI-FL-DL-DISB-01JAN2015-FC-15JAN2015-UNDOTRANSACTIONS.xlsx|Modify Transaction|
	  Then i validate and Verify from "error" sheet
	 			|4644-EI-FL-DL-DISB-01JAN2015-FC-15JAN2015-UNDOTRANSACTIONS.xlsx|
				
@RunnerClass1
Scenario:4645-EI-FL-DL-DISB-15JAN2015-FC-01JAN2015     
	  Given I setup the clients
	  When I entered the values into client from "Input" sheet
	 			|Createclient.xlsx|
	  Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			|4645-EI-FL-DL-DISB-15JAN2015-FC-01JAN2015.xlsx|
	  Then I "Foreclosure" and verified the following tabs
	  			|4645-EI-FL-DL-DISB-15JAN2015-FC-01JAN2015.xlsx| Foreclosure |
	  Then i validate and Verify from "error" sheet
	 			|4645-EI-FL-DL-DISB-15JAN2015-FC-01JAN2015.xlsx|
				
@RunnerClass1
Scenario:4646-EI-DB-DL-TR2-DISB1stTR-01JAN2015-FC-15JAN2015    
      Given I setup the product loan "Setup"
		        | Productloannavigation.xlsx |
	  Then I entered the values into product from "ProductLoanInput" Sheet
		        |4646-EI-DB-DL-TR2-DISB1stTR-01JAN2015-FC-15JAN2015.xlsx| 
	  Given I setup the clients
	  When I entered the values into client from "Input" sheet
	 			|Createclient.xlsx|
	  Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			|4646-EI-DB-DL-TR2-DISB1stTR-01JAN2015-FC-15JAN2015.xlsx|
	  Then I "Foreclosure" and verified the following tabs
	  			|4646-EI-DB-DL-TR2-DISB1stTR-01JAN2015-FC-15JAN2015.xlsx| Foreclosure | Transactions |
				
				
@RunnerClass1
Scenario:4647-EI-DB-DL-TR2-DISB1stTR-01JAN2015-DISB2NDTR-01MAR2015-FC-15JAN2015    
	  Given I setup the clients
	  When I entered the values into client from "Input" sheet
	 			|Createclient.xlsx|
	  Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			|4647-EI-DB-DL-TR2-DISB1stTR-01JAN2015-DISB2NDTR-01MAR2015-FC-15JAN2015.xlsx|
	  Then I "Foreclosure" and verified the following tabs
	  			|4647-EI-DB-DL-TR2-DISB1stTR-01JAN2015-DISB2NDTR-01MAR2015-FC-15JAN2015.xlsx| Foreclosure |
	  Then i validate and Verify from "error" sheet
	 			|4647-EI-DB-DL-TR2-DISB1stTR-01JAN2015-DISB2NDTR-01MAR2015-FC-15JAN2015.xlsx|
				
@RunnerClass1
Scenario:4648-EI-DB-DL-TR2-DISB1stTR-01JAN2015-DISB2NDTR-01MAR2015-FC-15MAR2015    
	  Given I setup the clients
	  When I entered the values into client from "Input" sheet
	 			|Createclient.xlsx|
	  Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			|4648-EI-DB-DL-TR2-DISB1stTR-01JAN2015-DISB2NDTR-01MAR2015-FC-15MAR2015.xlsx|
	  Then I "Foreclosure" and verified the following tabs
	  			|4648-EI-DB-DL-TR2-DISB1stTR-01JAN2015-DISB2NDTR-01MAR2015-FC-15MAR2015.xlsx| Foreclosure | Transactions |
	  			
	  			
@RunnerClass1
Scenario:4649-EI-FL-DL-VARINST-DATE-15JAN2015-DISB-FC-25JAN2015   
	  Given I setup the clients
	  When I entered the values into client from "Input" sheet
	 			|Createclient.xlsx|
	  Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			|4649-EI-FL-DL-VARINST-DATE-15JAN2015-DISB-FC-25JAN2015.xlsx|
	  Then I "Edit Date " In Edit Repayment Schedule page
                |4649-EI-FL-DL-VARINST-DATE-15JAN2015-DISB-FC-25JAN2015.xlsx|Edit Repayment Schedule|
	  Then I "Foreclosure" and verified the following tabs
	  			|4649-EI-FL-DL-VARINST-DATE-15JAN2015-DISB-FC-25JAN2015.xlsx| Foreclosure | Transactions |			
				

				
				
				
				
				
				
				
@RunnerClass1
	  Scenario: 4887-CreateGroupLoan-Submit-ModifyApplication-Submit
      Given I setup the group
	  Then I entered the values into group from "Group" sheet
                |4887-CreateGroupLoan-Submit-ModifyApplication-Submit.xlsx|		  								  				  				  			
	  Then I entered the values into client from "Input1" sheet
	 	        |4887-CreateGroupLoan-Submit-ModifyApplication-Submit.xlsx|
	  Then I entered the values into client from "Input2" sheet
	 	        |4887-CreateGroupLoan-Submit-ModifyApplication-Submit.xlsx|
	  When I set up the new create loan from "NewGroupLoanInput" sheet
	  			|4887-CreateGroupLoan-Submit-ModifyApplication-Submit.xlsx|
	  When I modify New Loan Account from "Modify Application" sheet
	            |4887-CreateGroupLoan-Submit-ModifyApplication-Submit.xlsx|
	  Then i validate and Verify from "Validate" sheet
	 			|4887-CreateGroupLoan-Submit-ModifyApplication-Submit.xlsx|	
				
@RunnerClass1
	  Scenario: 4888-CreateGroupLoan-SyncExpectedDisburse-05JAN2015-Submit
      Given I setup the group
	  Then I entered the values into group from "Group" sheet
                |4888-CreateGroupLoan-SyncExpectedDisburse-05JAN2015-Submit.xlsx|		  								  				  				  			
	  Then I entered the values into client from "Input1" sheet
	 	        |4888-CreateGroupLoan-SyncExpectedDisburse-05JAN2015-Submit.xlsx|
	  Then I entered the values into client from "Input2" sheet
	 	        |4888-CreateGroupLoan-SyncExpectedDisburse-05JAN2015-Submit.xlsx|
	  When I set up the new create loan from "NewGroupLoanInput" sheet
	  			|4888-CreateGroupLoan-SyncExpectedDisburse-05JAN2015-Submit.xlsx|
	  Then i validate and Verify from "error" sheet
	 			|4888-CreateGroupLoan-SyncExpectedDisburse-05JAN2015-Submit.xlsx|	
				
@RunnerClass1
	  Scenario: 4889-CreateGroupLoan-DISB01JAN2015-Submit-ModifyApplication-Submit
      Given I setup the group
	  Then I entered the values into group from "Group" sheet
                |4889-CreateGroupLoan-DISB01JAN2015-Submit-ModifyApplication-Submit.xlsx|		  								  				  				  			
	  Then I entered the values into client from "Input1" sheet
	 	        |4889-CreateGroupLoan-DISB01JAN2015-Submit-ModifyApplication-Submit.xlsx|
	  Then I entered the values into client from "Input2" sheet
	 	        |4889-CreateGroupLoan-DISB01JAN2015-Submit-ModifyApplication-Submit.xlsx|
	  When I set up the new create loan from "NewGroupLoanInput" sheet
	  			|4889-CreateGroupLoan-DISB01JAN2015-Submit-ModifyApplication-Submit.xlsx|
	  When I modify New Loan Account from "Modify Application" sheet
	            |4889-CreateGroupLoan-DISB01JAN2015-Submit-ModifyApplication-Submit.xlsx|
	  Then i validate and Verify from "Validate" sheet
	 			|4889-CreateGroupLoan-DISB01JAN2015-Submit-ModifyApplication-Submit.xlsx|	
				
@RunnerClass1
	  Scenario: 4890-CreateGroupLoan-Weeklypayment-SyncMeetingDate-DISB01JAN2015-Submit
      Given I setup the group
	  Then I entered the values into group from "Group" sheet
                |4890-CreateGroupLoan-Weeklypayment-SyncMeetingDate-DISB01JAN2015-Submit.xlsx|		  								  				  				  			
	  Then I entered the values into client from "Input1" sheet
	 	        |4890-CreateGroupLoan-Weeklypayment-SyncMeetingDate-DISB01JAN2015-Submit.xlsx|
	  Then I entered the values into client from "Input2" sheet
	 	        |4890-CreateGroupLoan-Weeklypayment-SyncMeetingDate-DISB01JAN2015-Submit.xlsx|
	  When I set up the new create loan from "NewGroupLoanInput" sheet
	  			|4890-CreateGroupLoan-Weeklypayment-SyncMeetingDate-DISB01JAN2015-Submit.xlsx|
	  Then i validate and Verify from "error" sheet
	 			|4890-CreateGroupLoan-Weeklypayment-SyncMeetingDate-DISB01JAN2015-Submit.xlsx|	
				
@RunnerClass1
	  Scenario: 4891-CreateGroupLoan-Weeklypayment-NOSyncMeetingDate-DISB01JAN2015-Submit
      Given I setup the group
	  Then I entered the values into group from "Group" sheet
                |4891-CreateGroupLoan-Weeklypayment-NOSyncMeetingDate-DISB01JAN2015-Submit.xlsx|		  								  				  				  			
	  Then I entered the values into client from "Input1" sheet
	 	        |4891-CreateGroupLoan-Weeklypayment-NOSyncMeetingDate-DISB01JAN2015-Submit.xlsx|
	  Then I entered the values into client from "Input2" sheet
	 	        |4891-CreateGroupLoan-Weeklypayment-NOSyncMeetingDate-DISB01JAN2015-Submit.xlsx|
	  When I set up the new create loan from "NewGroupLoanInput" sheet
	  			|4891-CreateGroupLoan-Weeklypayment-NOSyncMeetingDate-DISB01JAN2015-Submit.xlsx|
	  Then i validate and Verify from "Validate" sheet
	 			|4891-CreateGroupLoan-Weeklypayment-NOSyncMeetingDate-DISB01JAN2015-Submit.xlsx|	
				
@RunnerClass1
	  Scenario: 4892-CreateGroupLoan-Weeklypayment-SyncRepaymentDate-DISB01JAN2015-Submit
      Given I setup the group
	  Then I entered the values into group from "Group" sheet
                |4892-CreateGroupLoan-Weeklypayment-SyncRepaymentDate-DISB01JAN2015-Submit.xlsx|		  								  				  				  			
	  Then I entered the values into client from "Input1" sheet
	 	        |4892-CreateGroupLoan-Weeklypayment-SyncRepaymentDate-DISB01JAN2015-Submit.xlsx|
	  Then I entered the values into client from "Input2" sheet
	 	        |4892-CreateGroupLoan-Weeklypayment-SyncRepaymentDate-DISB01JAN2015-Submit.xlsx|
	  When I set up the new create loan from "NewGroupLoanInput" sheet
	  			|4892-CreateGroupLoan-Weeklypayment-SyncRepaymentDate-DISB01JAN2015-Submit.xlsx|
	  Then i validate and Verify from "Validate" sheet
	 			|4892-CreateGroupLoan-Weeklypayment-SyncRepaymentDate-DISB01JAN2015-Submit.xlsx|
		
@RunnerClass1
	  Scenario: 4893-SUBGRPLOANon01JAN2015(Both sync)-LINKSAVINGS-SUBMIT
      Given I setup the group
	  Then I entered the values into group from "Group" sheet
                |4893-SUBGRPLOANon01JAN2015(Both sync)-LINKSAVINGS-SUBMIT.xlsx|		  								  				  				  			
	  Then I entered the values into client from "Input1" sheet
	 	        |4893-SUBGRPLOANon01JAN2015(Both sync)-LINKSAVINGS-SUBMIT.xlsx|
	  Then I entered the values into client from "Input2" sheet
	 	        |4893-SUBGRPLOANon01JAN2015(Both sync)-LINKSAVINGS-SUBMIT.xlsx|
	  When I set up the new create saving account from "NewGroupSavingInput" sheet
	            |4893-SUBGRPLOANon01JAN2015(Both sync)-LINKSAVINGS-SUBMIT.xlsx|
	  When I set up the new create loan from "NewGroupLoanInput" sheet
	  			|4893-SUBGRPLOANon01JAN2015(Both sync)-LINKSAVINGS-SUBMIT.xlsx|
	  Then i validate and Verify from "Validate" sheet
	 			|4893-SUBGRPLOANon01JAN2015(Both sync)-LINKSAVINGS-SUBMIT.xlsx|	
				
@RunnerClass1
	  Scenario: 4894-SUBGRPLOANon01JAN2015(Both sync)-REMOVEoverdue(penalty)charge
      Given I setup the group
	  Then I entered the values into group from "Group" sheet
                |4894-SUBGRPLOANon01JAN2015(Both sync)-REMOVEoverdue(penalty)charge.xlsx|		  								  				  				  			
	  Then I entered the values into client from "Input1" sheet
	 	        |4894-SUBGRPLOANon01JAN2015(Both sync)-REMOVEoverdue(penalty)charge.xlsx|
	  Then I entered the values into client from "Input2" sheet
	 	        |4894-SUBGRPLOANon01JAN2015(Both sync)-REMOVEoverdue(penalty)charge.xlsx|
	  When I set up the new create saving account from "NewGroupSavingInput" sheet
	            |4894-SUBGRPLOANon01JAN2015(Both sync)-REMOVEoverdue(penalty)charge.xlsx|
	  When I set up the new create loan from "NewGroupLoanInput" sheet
	  			|4894-SUBGRPLOANon01JAN2015(Both sync)-REMOVEoverdue(penalty)charge.xlsx|
	  Then i validate and Verify from "Validate" sheet
	 			|4894-SUBGRPLOANon01JAN2015(Both sync)-REMOVEoverdue(penalty)charge.xlsx|
				
@RunnerClass1
	  Scenario: 4895-SUBGRPLOANon01JAN2015(attachCharge-disbursementFee)-APR&DISBon01JAN2015
      Given I setup the group
	  Then I entered the values into group from "Group" sheet
                |4895-SUBGRPLOANon01JAN2015(attachCharge-disbursementFee)-APR&DISBon01JAN2015.xlsx|		  								  				  				  			
	  Then I entered the values into client from "Input1" sheet
	 	        |4895-SUBGRPLOANon01JAN2015(attachCharge-disbursementFee)-APR&DISBon01JAN2015.xlsx|
	  Then I entered the values into client from "Input2" sheet
	 	        |4895-SUBGRPLOANon01JAN2015(attachCharge-disbursementFee)-APR&DISBon01JAN2015.xlsx|
	  When I set up the new create loan from "NewGroupLoanInput" sheet
	  			|4895-SUBGRPLOANon01JAN2015(attachCharge-disbursementFee)-APR&DISBon01JAN2015.xlsx|
	  Then I verified the following Tabs details successfully
	 			|4895-SUBGRPLOANon01JAN2015(attachCharge-disbursementFee)-APR&DISBon01JAN2015.xlsx|Summary|	Repayment Schedule|Transactions|
				
@RunnerClass1
	  Scenario: 4896-SUBGRPLOANon01JAN2015(attachCharge-InstallmentFee)-APR&DISBon01JAN2015
      Given I setup the group
	  Then I entered the values into group from "Group" sheet
                |4896-SUBGRPLOANon01JAN2015(attachCharge-InstallmentFee)-APR&DISBon01JAN2015.xlsx|		  								  				  				  			
	  Then I entered the values into client from "Input1" sheet
	 	        |4896-SUBGRPLOANon01JAN2015(attachCharge-InstallmentFee)-APR&DISBon01JAN2015.xlsx|
	  Then I entered the values into client from "Input2" sheet
	 	        |4896-SUBGRPLOANon01JAN2015(attachCharge-InstallmentFee)-APR&DISBon01JAN2015.xlsx|
	  When I set up the new create loan from "NewGroupLoanInput" sheet
	  			|4896-SUBGRPLOANon01JAN2015(attachCharge-InstallmentFee)-APR&DISBon01JAN2015.xlsx|
	  Then I verified the following Tabs details successfully
	 			|4896-SUBGRPLOANon01JAN2015(attachCharge-InstallmentFee)-APR&DISBon01JAN2015.xlsx|Summary|	Repayment Schedule|Transactions|
				
@RunnerClass1
	  Scenario: 4897-SUBGRPLOANon01JAN2015-ADDCHARGE(DisburseFee)changeAmountSubmit-APR&DISBon01JAN2015
      Given I setup the group
	  Then I entered the values into group from "Group" sheet
                |4897-SUBGRPLOANon01JAN2015-ADDCHARGE(DisburseFee)changeAmountSubmit-APR&DISBon01JAN2015.xlsx|		  								  				  				  			
	  Then I entered the values into client from "Input1" sheet
	 	        |4897-SUBGRPLOANon01JAN2015-ADDCHARGE(DisburseFee)changeAmountSubmit-APR&DISBon01JAN2015.xlsx|
	  Then I entered the values into client from "Input2" sheet
	 	        |4897-SUBGRPLOANon01JAN2015-ADDCHARGE(DisburseFee)changeAmountSubmit-APR&DISBon01JAN2015.xlsx|
	  When I set up the new create loan from "NewGroupLoanInput" sheet
	  			|4897-SUBGRPLOANon01JAN2015-ADDCHARGE(DisburseFee)changeAmountSubmit-APR&DISBon01JAN2015.xlsx|
	  Then I verified the following Tabs details successfully
	 			|4897-SUBGRPLOANon01JAN2015-ADDCHARGE(DisburseFee)changeAmountSubmit-APR&DISBon01JAN2015.xlsx|Summary|	Repayment Schedule|Transactions|
				
@RunnerClass1
	  Scenario: 4898-SUBGRPLOANon01JAN2015-APRon01JAN2015-ADDCHARGE(InstalmentFee)changeAmountSubmit-DISBon01JAN2015
      Given I setup the group
	  Then I entered the values into group from "Group" sheet
                |4898-SUBGRPLOANon01JAN2015-APRon01JAN2015-ADDCHARGE(InstalmentFee)changeAmountSubmit-DISBon01JAN2015.xlsx|		  								  				  				  			
	  Then I entered the values into client from "Input1" sheet
	 	        |4898-SUBGRPLOANon01JAN2015-APRon01JAN2015-ADDCHARGE(InstalmentFee)changeAmountSubmit-DISBon01JAN2015.xlsx|
	  Then I entered the values into client from "Input2" sheet
	 	        |4898-SUBGRPLOANon01JAN2015-APRon01JAN2015-ADDCHARGE(InstalmentFee)changeAmountSubmit-DISBon01JAN2015.xlsx|
	  When I set up the new create loan from "NewGroupLoanInput" sheet
	  			|4898-SUBGRPLOANon01JAN2015-APRon01JAN2015-ADDCHARGE(InstalmentFee)changeAmountSubmit-DISBon01JAN2015.xlsx|
	  Then I verified the following Tabs details successfully
	 			|4898-SUBGRPLOANon01JAN2015-APRon01JAN2015-ADDCHARGE(InstalmentFee)changeAmountSubmit-DISBon01JAN2015.xlsx|Summary|	Repayment Schedule|Transactions|
				
@RunnerClass1
	  Scenario: 4899-SUBGRPLOANon01JAN2015-APRDISBon01JAN2015-ADDCHARGE(DisbursementFee)changeAmountSubmit
      Given I setup the group
	  Then I entered the values into group from "Group" sheet
                |4899-SUBGRPLOANon01JAN2015-APRDISBon01JAN2015-ADDCHARGE(DisbursementFee)changeAmountSubmit.xlsx|		  								  				  				  			
	  Then I entered the values into client from "Input1" sheet
	 	        |4899-SUBGRPLOANon01JAN2015-APRDISBon01JAN2015-ADDCHARGE(DisbursementFee)changeAmountSubmit.xlsx|
	  Then I entered the values into client from "Input2" sheet
	 	        |4899-SUBGRPLOANon01JAN2015-APRDISBon01JAN2015-ADDCHARGE(DisbursementFee)changeAmountSubmit.xlsx|
	  When I set up the new create loan from "NewGroupLoanInput" sheet
	  			|4899-SUBGRPLOANon01JAN2015-APRDISBon01JAN2015-ADDCHARGE(DisbursementFee)changeAmountSubmit.xlsx|
	  Then i validate and Verify from "error" sheet
	 			|4899-SUBGRPLOANon01JAN2015-APRDISBon01JAN2015-ADDCHARGE(DisbursementFee)changeAmountSubmit.xlsx|
				
@RunnerClass1
	  Scenario: 4900-SUBGRPLOANon01JAN2015-APRon01JAN2015-UndoApproval-APRon01FEB2015-DISBon01FEB2015
      Given I setup the group
	  Then I entered the values into group from "Group" sheet
                |4900-SUBGRPLOANon01JAN2015-APRon01JAN2015-UndoApproval-APRon01FEB2015-DISBon01FEB2015.xlsx|		  								  				  				  			
	  Then I entered the values into client from "Input1" sheet
	 	        |4900-SUBGRPLOANon01JAN2015-APRon01JAN2015-UndoApproval-APRon01FEB2015-DISBon01FEB2015.xlsx|
	  Then I entered the values into client from "Input2" sheet
	 	        |4900-SUBGRPLOANon01JAN2015-APRon01JAN2015-UndoApproval-APRon01FEB2015-DISBon01FEB2015.xlsx|
	  When I set up the new create loan from "NewGroupLoanInput" sheet
	  			|4900-SUBGRPLOANon01JAN2015-APRon01JAN2015-UndoApproval-APRon01FEB2015-DISBon01FEB2015.xlsx|
	  Then I "UndoAprove And Disburse" and verified the following tabs
	  			|4900-SUBGRPLOANon01JAN2015-APRon01JAN2015-UndoApproval-APRon01FEB2015-DISBon01FEB2015.xlsx|Modify Transaction|
	  Then I verified the following Tabs details successfully
	 			|4900-SUBGRPLOANon01JAN2015-APRon01JAN2015-UndoApproval-APRon01FEB2015-DISBon01FEB2015.xlsx|Summary|Repayment Schedule|Transactions|
				
@RunnerClass1
	  Scenario: 4901-SUBGRPLOANon01JAN2015-APRDISBon01JAN2015-undoDisbursal-DISBon01FEB2015
      Given I setup the group
	  Then I entered the values into group from "Group" sheet
                |4901-SUBGRPLOANon01JAN2015-APRDISBon01JAN2015-undoDisbursal-DISBon01FEB2015.xlsx|		  								  				  				  			
	  Then I entered the values into client from "Input1" sheet
	 	        |4901-SUBGRPLOANon01JAN2015-APRDISBon01JAN2015-undoDisbursal-DISBon01FEB2015.xlsx|
	  Then I entered the values into client from "Input2" sheet
	 	        |4901-SUBGRPLOANon01JAN2015-APRDISBon01JAN2015-undoDisbursal-DISBon01FEB2015.xlsx|
	  When I set up the new create loan from "NewGroupLoanInput" sheet
	  			|4901-SUBGRPLOANon01JAN2015-APRDISBon01JAN2015-undoDisbursal-DISBon01FEB2015.xlsx|
	  Then I "UndoDisburse And Disburse Again" and verified the following tabs
	  			|4901-SUBGRPLOANon01JAN2015-APRDISBon01JAN2015-undoDisbursal-DISBon01FEB2015.xlsx|Modify Transaction|
	  Then I verified the following Tabs details successfully
	 			|4901-SUBGRPLOANon01JAN2015-APRDISBon01JAN2015-undoDisbursal-DISBon01FEB2015.xlsx|Summary|Repayment Schedule|Transactions|
				
@RunnerClass1
	  Scenario: 4902-SUBGRPLOANon01JAN2015-APRDISBon01JAN2015-AssignOfficerOn01JAN2015
      Given I setup the group
	  Then I entered the values into group from "Group" sheet
                |4902-SUBGRPLOANon01JAN2015-APRDISBon01JAN2015-AssignOfficerOn01JAN2015.xlsx|		  								  				  				  			
	  Then I entered the values into client from "Input1" sheet
	 	        |4902-SUBGRPLOANon01JAN2015-APRDISBon01JAN2015-AssignOfficerOn01JAN2015.xlsx|
	  Then I entered the values into client from "Input2" sheet
	 	        |4902-SUBGRPLOANon01JAN2015-APRDISBon01JAN2015-AssignOfficerOn01JAN2015.xlsx|
	  When I set up the new create loan from "NewGroupLoanInput" sheet
	  			|4902-SUBGRPLOANon01JAN2015-APRDISBon01JAN2015-AssignOfficerOn01JAN2015.xlsx|
	  Then I "Assign Loan Officer" and verified the following tabs
	  			|4902-SUBGRPLOANon01JAN2015-APRDISBon01JAN2015-AssignOfficerOn01JAN2015.xlsx|Modify Transaction|
	  Then i validate and Verify from "Validate" sheet
	 			|4902-SUBGRPLOANon01JAN2015-APRDISBon01JAN2015-AssignOfficerOn01JAN2015.xlsx|
				
@RunnerClass1
	  Scenario: 4903-SUBGRPLOANon01JAN2015-APRon01JAN2015-DISBtoSavingsOn01JAN2015
      Given I setup the group
	  Then I entered the values into group from "Group" sheet
                |4903-SUBGRPLOANon01JAN2015-APRon01JAN2015-DISBtoSavingsOn01JAN2015.xlsx|		  								  				  				  			
	  Then I entered the values into client from "Input1" sheet
	 	        |4903-SUBGRPLOANon01JAN2015-APRon01JAN2015-DISBtoSavingsOn01JAN2015.xlsx|
	  Then I entered the values into client from "Input2" sheet
	 	        |4903-SUBGRPLOANon01JAN2015-APRon01JAN2015-DISBtoSavingsOn01JAN2015.xlsx|
	  When I set up the new create saving account from "NewGroupSavingInput" sheet
	            |4903-SUBGRPLOANon01JAN2015-APRon01JAN2015-DISBtoSavingsOn01JAN2015.xlsx|
	  When I set up the new create loan from "NewGroupLoanInput" sheet
	  			|4903-SUBGRPLOANon01JAN2015-APRon01JAN2015-DISBtoSavingsOn01JAN2015.xlsx|
				
@RunnerClass1
	  Scenario: 4904-SUBGRPLOANon01JAN2015(Bothsync)-APRDISBon01JAN2015(with5000)
      Given I setup the group
	  Then I entered the values into group from "Group" sheet
                |4904-SUBGRPLOANon01JAN2015(Both sync)-APRDISBon01JAN2015(with5000).xlsx|		  								  				  				  			
	  Then I entered the values into client from "Input1" sheet
	 	        |4904-SUBGRPLOANon01JAN2015(Both sync)-APRDISBon01JAN2015(with5000).xlsx|
	  Then I entered the values into client from "Input2" sheet
	 	        |4904-SUBGRPLOANon01JAN2015(Both sync)-APRDISBon01JAN2015(with5000).xlsx|
	  When I set up the new create loan from "NewGroupLoanInput" sheet
	  			|4904-SUBGRPLOANon01JAN2015(Both sync)-APRDISBon01JAN2015(with5000).xlsx|
	  Then I verified the following Tabs details successfully
	 			|4904-SUBGRPLOANon01JAN2015(Both sync)-APRDISBon01JAN2015(with5000).xlsx|Summary|Repayment Schedule|Transactions|
Feature:Foreclosure
Background:
	Given I navigate to mifos using "default#/"
	And I login into mifos site using "Login" excel sheet
		| Login.xlsx  |
	Then I should see logged in successfully
	
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
				

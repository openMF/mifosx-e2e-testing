Feature:ProductMix/TellerCash/Datatable

Background:
	Given I navigate to mifos using "default9#/"
	And I login into mifos site using "Login" excel sheet
		|Login.xlsx|
	Then I should see logged in successfully
	
	
@RunnerClass8
Scenario: 4807-CREATTLR TELLER-A(headOffice-01MAR2015-ACTIVE)
  
  Given I navigate to Teller/Cashier Management Sheet
  Then I "Create New Teller" and verified the following tabs
	  			|4807-CREATTLR TELLER-A(headOffice-01MAR2015-ACTIVE).xlsx|Modify Transaction|
  Then i validate and Verify from "Validate" sheet
	  			|4807-CREATTLR TELLER-A(headOffice-01MAR2015-ACTIVE).xlsx|
   
 @RunnerClass8
Scenario: 4808-CREATETLR(branchoffice-01JAN2015-Active)-EDITTLR(CHANGEtoTELLER-B,01APR2015)
  
  Given I navigate to Teller/Cashier Management Sheet
  Then I "Create New Teller" and verified the following tabs
	  			|4808-CREATETLR(branchoffice-01JAN2015-Active)-EDITTLR(CHANGEtoTELLER-B,01APR2015).xlsx|Modify Transaction|
  Then I "Edit Created Teller" and verified the following tabs
	  			|4808-CREATETLR(branchoffice-01JAN2015-Active)-EDITTLR(CHANGEtoTELLER-B,01APR2015).xlsx|Modify Transaction1|
  Then i validate and Verify from "Validate" sheet
	  			|4808-CREATETLR(branchoffice-01JAN2015-Active)-EDITTLR(CHANGEtoTELLER-B,01APR2015).xlsx|
 
@RunnerClass8
Scenario: 4809-CREATTLR TELLER-A(headOffice-01APR2015-ACTIVE)-DELETE
  
  Given I navigate to Teller/Cashier Management Sheet
  Then I "Create New Teller" and verified the following tabs
	  			|4809-CREATTLR TELLER-A(headOffice-01APR2015-ACTIVE)-DELETE.xlsx|Modify Transaction|
  Then I "Create Cashier For Teller" and verified the following tabs
	  			|4809-CREATTLR TELLER-A(headOffice-01APR2015-ACTIVE)-DELETE.xlsx|Modify Transaction1|
  Then I "Delete Teller" and verified the following tabs
	  			|4809-CREATTLR TELLER-A(headOffice-01APR2015-ACTIVE)-DELETE.xlsx|Modify Transaction2|
  Then i validate and Verify from "error" sheet
	  			|4809-CREATTLR TELLER-A(headOffice-01APR2015-ACTIVE)-DELETE.xlsx|
 
@RunnerClass8
Scenario: 4810-CREATTLR(headOffice-01MAR2015-ACTIVE)-CREATECSHR(01MAR2015-01JUNE2015,FULLDAY)
  
  Given I navigate to Teller/Cashier Management Sheet
  Then I "Create New Teller" and verified the following tabs
	  			|4810-CREATTLR(headOffice-01MAR2015-ACTIVE)-CREATECSHR(01MAR2015-01JUNE2015,FULLDAY).xlsx|Modify Transaction|
  Then I "Create Cashier For Teller" and verified the following tabs
	  			|4810-CREATTLR(headOffice-01MAR2015-ACTIVE)-CREATECSHR(01MAR2015-01JUNE2015,FULLDAY).xlsx|Modify Transaction1|
  And I verified the "Teller-Cashier-Details" details successfully 
	  			|4810-CREATTLR(headOffice-01MAR2015-ACTIVE)-CREATECSHR(01MAR2015-01JUNE2015,FULLDAY).xlsx|

				
@RunnerClass8
Scenario: 4811-CREATTLR-01MAR2015-CREATECSHR01MAR2015-01JUNE2015-ALCTCASH(50,000-01APR2015)
  
  Given I navigate to Teller/Cashier Management Sheet
  Then I "Create New Teller" and verified the following tabs
	  			|4811-CREATTLR-01MAR2015-CREATECSHR01MAR2015-01JUNE2015-ALCTCASH(50,000-01APR2015).xlsx|Modify Transaction|
  Then I "Create Cashier For Teller" and verified the following tabs
	  			|4811-CREATTLR-01MAR2015-CREATECSHR01MAR2015-01JUNE2015-ALCTCASH(50,000-01APR2015).xlsx|Modify Transaction1|
  Then I "Allocate Cash For Cashier" and verified the following tabs
	  			|4811-CREATTLR-01MAR2015-CREATECSHR01MAR2015-01JUNE2015-ALCTCASH(50,000-01APR2015).xlsx|Modify Transaction2|
  And I verified the "Teller-Cashier-Transaction" details successfully 
	  			|4811-CREATTLR-01MAR2015-CREATECSHR01MAR2015-01JUNE2015-ALCTCASH(50,000-01APR2015).xlsx|
  Then i validate and Verify from "Validate" sheet
	  			|4811-CREATTLR-01MAR2015-CREATECSHR01MAR2015-01JUNE2015-ALCTCASH(50,000-01APR2015).xlsx|
 
 
@RunnerClass8
Scenario: 4812-CREATTLR-01JAN2015-CREATECSHR(01JANC2015-01FEB2015)-ALCTCASH(50,000-01APR2015)
  
  Given I navigate to Teller/Cashier Management Sheet
  Then I "Create New Teller" and verified the following tabs
	  			|4812-CREATTLR-01JAN2015-CREATECSHR(01JANC2015-01FEB2015)-ALCTCASH(50,000-01APR2015).xlsx|Modify Transaction|
  Then I "Create Cashier For Teller" and verified the following tabs
	  			|4812-CREATTLR-01JAN2015-CREATECSHR(01JANC2015-01FEB2015)-ALCTCASH(50,000-01APR2015).xlsx|Modify Transaction1|
  Then I "Allocate Cash For Cashier" and verified the following tabs
	  			|4812-CREATTLR-01JAN2015-CREATECSHR(01JANC2015-01FEB2015)-ALCTCASH(50,000-01APR2015).xlsx|Modify Transaction2|
  Then i validate and Verify from "error" sheet
	  			|4812-CREATTLR-01JAN2015-CREATECSHR(01JANC2015-01FEB2015)-ALCTCASH(50,000-01APR2015).xlsx|

				
@RunnerClass8
Scenario: 4813-CREATTLR-01MAR2015-CREATECSHR(01MAR2015to01JUNE2015)-EDITcashier(01APRto01JUN2015,time9to1)
  
  Given I navigate to Teller/Cashier Management Sheet
  Then I "Create New Teller" and verified the following tabs
	  			|4813-CREATTLR-01MAR2015-CREATECSHR(01MAR2015to01JUNE2015)-EDITcashier(01APRto01JUN2015,time9to1).xlsx|Modify Transaction|
  Then I "Create Cashier For Teller" and verified the following tabs
	  			|4813-CREATTLR-01MAR2015-CREATECSHR(01MAR2015to01JUNE2015)-EDITcashier(01APRto01JUN2015,time9to1).xlsx|Modify Transaction1|
  Then I "Edit Created Cashier" and verified the following tabs
	  			|4813-CREATTLR-01MAR2015-CREATECSHR(01MAR2015to01JUNE2015)-EDITcashier(01APRto01JUN2015,time9to1).xlsx|Modify Transaction2|
  And I verified the "Teller-Cashier-Details" details successfully
	  			|4813-CREATTLR-01MAR2015-CREATECSHR(01MAR2015to01JUNE2015)-EDITcashier(01APRto01JUN2015,time9to1).xlsx|

				
@RunnerClass8
Scenario: 4814-CREATTLR-01MAR2015-CREATECSHR1(01APR2015-01JUNE2015,9to1)-CREATECSHR2(01APR2015-01JUNE2015,1-4)
  
  Given I navigate to Teller/Cashier Management Sheet
  Then I "Create New Teller" and verified the following tabs
	  			|4814-CREATTLR-01MAR2015-CREATECSHR1(01APR2015-01JUNE2015,9to1)-CREATECSHR2(01APR2015-01JUNE2015,1-4).xlsx|Modify Transaction|
  Then I "Create Cashier For Teller" and verified the following tabs
	  			|4814-CREATTLR-01MAR2015-CREATECSHR1(01APR2015-01JUNE2015,9to1)-CREATECSHR2(01APR2015-01JUNE2015,1-4).xlsx|Modify Transaction1|
  Then I "Create Another Cashier For Teller" and verified the following tabs
	  			|4814-CREATTLR-01MAR2015-CREATECSHR1(01APR2015-01JUNE2015,9to1)-CREATECSHR2(01APR2015-01JUNE2015,1-4).xlsx|Modify Transaction2|
  And I verified the "Teller-Cashier-Details" details successfully
	  			|4814-CREATTLR-01MAR2015-CREATECSHR1(01APR2015-01JUNE2015,9to1)-CREATECSHR2(01APR2015-01JUNE2015,1-4).xlsx|

@RunnerClass8
Scenario: 4815-CREATTLR-01MAR2015-CREATECSHR(01MARC2015-01JUNE2015,FULLDAY)-ALLOCATECASH(50,000-01APR2015)-SETTLECASH(25,000-01APR2015)
  
  Given I navigate to Teller/Cashier Management Sheet
  Then I "Create New Teller" and verified the following tabs
	  			|4815-CREATTLR-01MAR2015-CREATECSHR(01MARC2015-01JUNE2015,FULLDAY)-ALLOCATECASH(50,000-01APR2015)-SETTLECASH(25,000-01APR2015).xlsx|Modify Transaction|
  Then I "Create Cashier For Teller" and verified the following tabs
	  			|4815-CREATTLR-01MAR2015-CREATECSHR(01MARC2015-01JUNE2015,FULLDAY)-ALLOCATECASH(50,000-01APR2015)-SETTLECASH(25,000-01APR2015).xlsx|Modify Transaction1|
  Then I "Allocate Cash For Cashier" and verified the following tabs
	  			|4815-CREATTLR-01MAR2015-CREATECSHR(01MARC2015-01JUNE2015,FULLDAY)-ALLOCATECASH(50,000-01APR2015)-SETTLECASH(25,000-01APR2015).xlsx|Modify Transaction2|
  Then I "Settle Cash of Cashier" and verified the following tabs
	  			|4815-CREATTLR-01MAR2015-CREATECSHR(01MARC2015-01JUNE2015,FULLDAY)-ALLOCATECASH(50,000-01APR2015)-SETTLECASH(25,000-01APR2015).xlsx|Modify Transaction3|
  And I verified the "Teller-Cashier-Transaction" details successfully
	  			|4815-CREATTLR-01MAR2015-CREATECSHR(01MARC2015-01JUNE2015,FULLDAY)-ALLOCATECASH(50,000-01APR2015)-SETTLECASH(25,000-01APR2015).xlsx|
  Then i validate and Verify from "Validate" sheet
	  			|4815-CREATTLR-01MAR2015-CREATECSHR(01MARC2015-01JUNE2015,FULLDAY)-ALLOCATECASH(50,000-01APR2015)-SETTLECASH(25,000-01APR2015).xlsx|

				
@RunnerClass8
Scenario: 4816-CREATTLR-01MAR2015-CREATECSHR(01MARC2015-01JUNE2015,FULLDAY)-SETTLECASH(25,000-01APR2015)
  
  Given I navigate to Teller/Cashier Management Sheet
  Then I "Create New Teller" and verified the following tabs
	  			|4816-CREATTLR-01MAR2015-CREATECSHR(01MARC2015-01JUNE2015,FULLDAY)-SETTLECASH(25,000-01APR2015).xlsx|Modify Transaction|
  Then I "Create Cashier For Teller" and verified the following tabs
	  			|4816-CREATTLR-01MAR2015-CREATECSHR(01MARC2015-01JUNE2015,FULLDAY)-SETTLECASH(25,000-01APR2015).xlsx|Modify Transaction1|
  Then I "Settle Cash of Cashier" and verified the following tabs
	  			|4816-CREATTLR-01MAR2015-CREATECSHR(01MARC2015-01JUNE2015,FULLDAY)-SETTLECASH(25,000-01APR2015).xlsx|Modify Transaction2|
  And I verified the "Teller-Cashier-Transaction" details successfully
	  			|4816-CREATTLR-01MAR2015-CREATECSHR(01MARC2015-01JUNE2015,FULLDAY)-SETTLECASH(25,000-01APR2015).xlsx|
  Then i validate and Verify from "Validate" sheet
	  			|4816-CREATTLR-01MAR2015-CREATECSHR(01MARC2015-01JUNE2015,FULLDAY)-SETTLECASH(25,000-01APR2015).xlsx|	
	  			

@RunnerClass8
Scenario:4817-DFNPMLP1(COND-2)-EDITPRODUCTMIX(ALLOWEDLP2&LP3&LP4-RESTRICTED-LP1)
  
  Given I setup the "Product Mix" product
		        | Productloannavigation.xlsx |
  Then I entered the values into product from "ProductMixInput" Sheet
		        |4817-DFNPMLP1(COND-2)-EDITPRODUCTMIX(ALLOWEDLP2&LP3&LP4-RESTRICTED-LP1).xlsx|
  Then I "Edit Product Mix Product" and verified the following tabs 
	            |4817-DFNPMLP1(COND-2)-EDITPRODUCTMIX(ALLOWEDLP2&LP3&LP4-RESTRICTED-LP1).xlsx| Modify Transaction |
  And I verified the "Allowed Product" details successfully 
	  			|4817-DFNPMLP1(COND-2)-EDITPRODUCTMIX(ALLOWEDLP2&LP3&LP4-RESTRICTED-LP1).xlsx|
  And I verified the "Restricted Product" details successfully 
	  			|4817-DFNPMLP1(COND-2)-EDITPRODUCTMIX(ALLOWEDLP2&LP3&LP4-RESTRICTED-LP1).xlsx|

				
@RunnerClass8
Scenario: 4818-DFNPMLP2(COND-3)-DELETE
  
  Given I setup the "Product Mix" product
		        | Productloannavigation.xlsx |
  Then I entered the values into product from "ProductMixInput" Sheet
		        |4818-DFNPMLP2(COND-3)-DELETE.xlsx|
  Then I "Delete Product Mix" and verified the following tabs 
	            |4818-DFNPMLP2(COND-3)-DELETE.xlsx| Modify Transaction |
  Then i validate and Verify from "Validate" sheet
	  			|4818-DFNPMLP2(COND-3)-DELETE.xlsx|

@RunnerClass8
Scenario: 4819-DFNPMLP3(COND-4)-CREATELAforClientWITHLP3-CREATEanotherLA-LP1
  
  Given I setup the "Product Mix" product
		        | Productloannavigation.xlsx |
  Then I entered the values into product from "ProductMixInput" Sheet
		        |4819-DFNPMLP3(COND-4)-CREATELAforClientWITHLP3-CREATEanotherLA-LP1.xlsx|
  Given I setup the clients
  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
  When I set up the new create loan from "NewLoanInput" sheet
	  			|4819-DFNPMLP3(COND-4)-CREATELAforClientWITHLP3-CREATEanotherLA-LP1.xlsx|
  When I set up the new create loan from "NewLoanInput1" sheet
	  			|4819-DFNPMLP3(COND-4)-CREATELAforClientWITHLP3-CREATEanotherLA-LP1.xlsx|
  Then i validate and Verify from "Validate" sheet
	  			|4819-DFNPMLP3(COND-4)-CREATELAforClientWITHLP3-CREATEanotherLA-LP1.xlsx|
				
@RunnerClass8
Scenario: 4820-DFNPMLP2(COND-3)-CREATEGRPLAwithLP2-CREATEanotherGRPLAwithLP2
  
  Given I setup the "Product Mix" product
		        | Productloannavigation.xlsx |
  Then I entered the values into product from "ProductMixInput" Sheet
		        |4818-DFNPMLP2(COND-3)-DELETE.xlsx|
  Given I setup the group
  Then I entered the values into group from "Group" sheet
                |4820-DFNPMLP2(COND-3)-CREATEGRPLAwithLP2-CREATEanotherGRPLAwithLP2.xlsx|	 				  								  				  				  			
  When I set up the new create loan from "NewLoanInput" sheet
	            |4820-DFNPMLP2(COND-3)-CREATEGRPLAwithLP2-CREATEanotherGRPLAwithLP2.xlsx|
  When I set up the new create loan from "NewLoanInput1" sheet
	  			|4820-DFNPMLP2(COND-3)-CREATEGRPLAwithLP2-CREATEanotherGRPLAwithLP2.xlsx|
  Then i validate and Verify from "Validate" sheet
	  			|4820-DFNPMLP2(COND-3)-CREATEGRPLAwithLP2-CREATEanotherGRPLAwithLP2.xlsx|
				
@RunnerClass8
Scenario: 4821-DFNPMLP1(COND-2)-CREATEJLGLAwithLP1-CREATEanotherJLGLAwithLP1
  
 
  Given I setup the group
  Then I entered the values into group from "Group" sheet
                |4821-DFNPMLP1(COND-2)-CREATEJLGLAwithLP1-CREATEanotherJLGLAwithLP1.xlsx|	 				  								  				  				  			
  Then I entered the values into client from "Input" sheet
	 	        |Createclient.xlsx|
  When I set up the new create loan from "NewLoanInput" sheet
	            |4821-DFNPMLP1(COND-2)-CREATEJLGLAwithLP1-CREATEanotherJLGLAwithLP1.xlsx|
  When I set up the new create loan from "NewLoanInput1" sheet
	  			|4821-DFNPMLP1(COND-2)-CREATEJLGLAwithLP1-CREATEanotherJLGLAwithLP1.xlsx|
  Then i validate and Verify from "Validate" sheet
	  			|4821-DFNPMLP1(COND-2)-CREATEJLGLAwithLP1-CREATEanotherJLGLAwithLP1.xlsx|
				
@RunnerClass8
Scenario: 4822-CRTDTforCLIENT(2-columns:string,number-CHECKmandatory)-EnterValuesDT-Submit
  
 
   Given I setup the "Data Table" product
				| Productloannavigation.xlsx |
   Then I entered the values into product from "DataTable Input" Sheet
				|4822-CRTDTforCLIENT(2-columnsstring-number-CHECKmandatory)-EnterValuesDT-Submit.xlsx|
   Given I setup the clients
   When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
   Then I "Entry Value Into Newly Created Datatable" and verified the following tabs
                |4822-CRTDTforCLIENT(2-columnsstring-number-CHECKmandatory)-EnterValuesDT-Submit.xlsx| Modify Transaction |
   Then i validate and Verify from "Validate" sheet
	 			|4822-CRTDTforCLIENT(2-columnsstring-number-CHECKmandatory)-EnterValuesDT-Submit.xlsx|
				
@RunnerClass8
Scenario: 4823-CRTDTforCLIENT(2-columns-Decimal&Date-CHECKmandatory)-EnterValuesDT-Submit
  
 
   Given I setup the "Data Table" product
				| Productloannavigation.xlsx |
   Then I entered the values into product from "DataTable Input" Sheet
				|4823-CRTDTforCLIENT(2-columns-Decimal&Date-CHECKmandatory)-EnterValuesDT-Submit.xlsx|
   Given I setup the clients
   When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
   Then I "Entry Value Into Newly Created Datatable" and verified the following tabs
                |4823-CRTDTforCLIENT(2-columns-Decimal&Date-CHECKmandatory)-EnterValuesDT-Submit.xlsx| Modify Transaction |
   Then i validate and Verify from "Validate" sheet 
	  			|4823-CRTDTforCLIENT(2-columns-Decimal&Date-CHECKmandatory)-EnterValuesDT-Submit.xlsx|
				
@RunnerClass8
Scenario: 4824-CRTDTforGroup(1-columns-Date&Time)-EnterValuesDT-Submit
  
 
   Given I setup the "Data Table" product
				| Productloannavigation.xlsx |
   Then I entered the values into product from "DataTable Input" Sheet
				|4824-CRTDTforGroup(1-columns-Date&Time)-EnterValuesDT-Submit.xlsx|
   Given I setup the group
   Then I entered the values into group from "Group" sheet
                |4824-CRTDTforGroup(1-columns-Date&Time)-EnterValuesDT-Submit.xlsx|
   Then I "Entry Value Into Newly Created Datatable" and verified the following tabs
                |4824-CRTDTforGroup(1-columns-Date&Time)-EnterValuesDT-Submit.xlsx| Modify Transaction |
   Then i validate and Verify from "Validate" sheet 
	  			|4824-CRTDTforGroup(1-columns-Date&Time)-EnterValuesDT-Submit.xlsx|

@RunnerClass8
Scenario: 4825-CRTDTforGroup(2-columns-Text&DropDown-State)-EnterValuesDT-Submit
  
 
   Given I setup the "Data Table" product
				| Productloannavigation.xlsx |
   Then I entered the values into product from "DataTable Input" Sheet
				|4825-CRTDTforGroup(2-columns-Text&DropDown-State)-EnterValuesDT-Submit.xlsx|
   Given I setup the group
   Then I entered the values into group from "Group" sheet
                |4825-CRTDTforGroup(2-columns-Text&DropDown-State)-EnterValuesDT-Submit.xlsx|
   Then I "Entry Value Into Newly Created Datatable" and verified the following tabs
                |4825-CRTDTforGroup(2-columns-Text&DropDown-State)-EnterValuesDT-Submit.xlsx| Modify Transaction |
   Then i validate and Verify from "Validate" sheet 
	  			|4825-CRTDTforGroup(2-columns-Text&DropDown-State)-EnterValuesDT-Submit.xlsx|

@RunnerClass8
Scenario: 4826-CRTDTforCenter(3-columns-String,Number, Boolian)-EntervaluesDT-Submit
  
 
   Given I setup the "Data Table" product
				| Productloannavigation.xlsx |
   Then I entered the values into product from "DataTable Input" Sheet
				|4826-CRTDTforCenter(3-columns-String,Number, Boolian)-EntervaluesDT-Submit.xlsx|
   Given I setup the center
   When I entered the values into center from "Input" sheet
                |4826-CRTDTforCenter(3-columns-String,Number, Boolian)-EntervaluesDT-Submit.xlsx|
   Then I "Entry Value Into Newly Created Datatable" and verified the following tabs
                |4826-CRTDTforCenter(3-columns-String,Number, Boolian)-EntervaluesDT-Submit.xlsx| Modify Transaction |
   Then i validate and Verify from "Validate" sheet 
	  			|4826-CRTDTforCenter(3-columns-String,Number, Boolian)-EntervaluesDT-Submit.xlsx|


@RunnerClass8
Scenario: 4827-CRTDTforLoan(2-columns-Boolian&String)-EntervaluesDT-Submit
  
 
   Given I setup the "Data Table" product
				| Productloannavigation.xlsx |
   Then I entered the values into product from "DataTable Input" Sheet
				|4827-CRTDTforLoan(2-columns-Boolian&String)-EntervaluesDT-Submit.xlsx|
   Given I setup the clients
   When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
   When I set up the new create loan from "NewLoanInput" sheet
	  			|4827-CRTDTforLoan(2-columns-Boolian&String)-EntervaluesDT-Submit.xlsx|
   Then I "Entry Value Into Newly Created Datatable" and verified the following tabs
                |4827-CRTDTforLoan(2-columns-Boolian&String)-EntervaluesDT-Submit.xlsx| Modify Transaction |
   Then i validate and Verify from "Validate" sheet 
	  			|4827-CRTDTforLoan(2-columns-Boolian&String)-EntervaluesDT-Submit.xlsx|

				
@RunnerClass8
Scenario: 4828-CRTDTforLoan(2-columns-Boolian&String)-EntervaluesDT-Submit


@RunnerClass8
Scenario: 4829-CRTDTforSA(3-columns-Number&Decimal&Dropdown-State)EntervaluesDT-Submit

   Given I setup the "Data Table" product
				| Productloannavigation.xlsx |
   Then I entered the values into product from "DataTable Input" Sheet
				|4829-CRTDTforSA(3-columns-Number&Decimal&Dropdown-State)EntervaluesDT-Submit.xlsx|
   Given I setup the clients
   When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
   When I set up the new create saving account from "NewSavingInput" sheet
	  			|4829-CRTDTforSA(3-columns-Number&Decimal&Dropdown-State)EntervaluesDT-Submit.xlsx|
   Then I "Entry Value Into Newly Created Datatable" and verified the following tabs
                |4829-CRTDTforSA(3-columns-Number&Decimal&Dropdown-State)EntervaluesDT-Submit.xlsx| Modify Transaction |
   Then i validate and Verify from "Validate" sheet 
	  			|4829-CRTDTforSA(3-columns-Number&Decimal&Dropdown-State)EntervaluesDT-Submit.xlsx|

				
@RunnerClass8
Scenario: 4830-CRTDTforLoan(2-columns-Number&String)-EnterValuesDT-submit-EditDT-changeColumns

   Given I setup the "Data Table" product
				| Productloannavigation.xlsx |
   Then I entered the values into product from "DataTable Input" Sheet
				|4830-CRTDTforLoan(2-columns-Number&String)-EnterValuesDT-submit-EditDT-changeColumns.xlsx|
   Given I setup the clients
   When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
   When I set up the new create loan from "NewLoanInput" sheet
	  			|4830-CRTDTforLoan(2-columns-Number&String)-EnterValuesDT-submit-EditDT-changeColumns.xlsx|
   Then I "Entry Value Into Newly Created Datatable" and verified the following tabs
                |4830-CRTDTforLoan(2-columns-Number&String)-EnterValuesDT-submit-EditDT-changeColumns.xlsx| Modify Transaction |
   Then i validate and Verify from "Validate" sheet 
	  			|4830-CRTDTforLoan(2-columns-Number&String)-EnterValuesDT-submit-EditDT-changeColumns.xlsx|
   Then I "Navigate to DataTable and Edit Created Datatable" and verified the following tabs
                |4830-CRTDTforLoan(2-columns-Number&String)-EnterValuesDT-submit-EditDT-changeColumns.xlsx| Modify Transaction1 |
   Then i validate and Verify from "error" sheet 
	  			|4830-CRTDTforLoan(2-columns-Number&String)-EnterValuesDT-submit-EditDT-changeColumns.xlsx|


@RunnerClass8
Scenario: 4831-CRTDTforLoan(2-columns-Date&Date-Time)-EnterValuesDT-submit-DeleteDT

   Given I setup the "Data Table" product
				| Productloannavigation.xlsx |
   Then I entered the values into product from "DataTable Input" Sheet
				|4831-CRTDTforLoan(2-columns-Date&Date-Time)-EnterValuesDT-submit-DeleteDT.xlsx|
   Given I setup the clients
   When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
   When I set up the new create loan from "NewLoanInput" sheet
	  			|4831-CRTDTforLoan(2-columns-Date&Date-Time)-EnterValuesDT-submit-DeleteDT.xlsx|
   Then I "Entry Value Into Newly Created Datatable" and verified the following tabs
                |4831-CRTDTforLoan(2-columns-Date&Date-Time)-EnterValuesDT-submit-DeleteDT.xlsx| Modify Transaction |
   Then i validate and Verify from "Validate" sheet 
	  			|4831-CRTDTforLoan(2-columns-Date&Date-Time)-EnterValuesDT-submit-DeleteDT.xlsx|
   Then I "Navigate to DataTable and Edit Created Datatable" and verified the following tabs
                |4831-CRTDTforLoan(2-columns-Date&Date-Time)-EnterValuesDT-submit-DeleteDT.xlsx| Modify Transaction1 |
   Then i validate and Verify from "error" sheet 
	  			|4831-CRTDTforLoan(2-columns-Date&Date-Time)-EnterValuesDT-submit-DeleteDT.xlsx|

@RunnerClass8
Scenario: 4832-CRTDTforCLIENT(2-columns-string-number-CHECKmandatory)-CRTCLT-don'tact-EnterDT-Submit-DLTCLT

   Given I setup the "Data Table" product
				| Productloannavigation.xlsx |
   Then I entered the values into product from "DataTable Input" Sheet
				|4832-CRTDTforCLIENT(2-columns-string-number-CHECKmandatory)-CRTCLT-don'tact-EnterDT-Submit-DLTCLT.xlsx|
   Given I setup the clients
   When I entered the values into client from "Input" sheet
	  			|4832-CRTDTforCLIENT(2-columns-string-number-CHECKmandatory)-CRTCLT-don'tact-EnterDT-Submit-DLTCLT.xlsx|
   Then I "Entry Value Into Newly Created Datatable" and verified the following tabs
                |4832-CRTDTforCLIENT(2-columns-string-number-CHECKmandatory)-CRTCLT-don'tact-EnterDT-Submit-DLTCLT.xlsx| Modify Transaction |
   Then i validate and Verify from "Validate" sheet 
	  			|4832-CRTDTforCLIENT(2-columns-string-number-CHECKmandatory)-CRTCLT-don'tact-EnterDT-Submit-DLTCLT.xlsx|
   Then I "Delete Client" and verified the following tabs
                |4832-CRTDTforCLIENT(2-columns-string-number-CHECKmandatory)-CRTCLT-don'tact-EnterDT-Submit-DLTCLT.xlsx| Modify Transaction1 |
   Then i validate and Verify from "error" sheet 
	  			|4832-CRTDTforCLIENT(2-columns-string-number-CHECKmandatory)-CRTCLT-don'tact-EnterDT-Submit-DLTCLT.xlsx|

@RunnerClass8
Scenario: 4833-CRTDTforGroup-2-columns-Date-DropDown-Country-CRTEGRP(don'tACT)-EnterValuesDT-Submit-CloseGRP

   Given I setup the "Data Table" product
				| Productloannavigation.xlsx |
   Then I entered the values into product from "DataTable Input" Sheet
				|4833-CRTDTforGroup-2-columns-Date-DropDown-Country-CRTEGRP(don'tACT)-EnterValuesDT-Submit-CloseGRP.xlsx|
   Given I setup the group
   Then I entered the values into group from "Group" sheet
	  			|4833-CRTDTforGroup-2-columns-Date-DropDown-Country-CRTEGRP(don'tACT)-EnterValuesDT-Submit-CloseGRP.xlsx|
   Then I "Entry Value Into Newly Created Datatable" and verified the following tabs
                |4833-CRTDTforGroup-2-columns-Date-DropDown-Country-CRTEGRP(don'tACT)-EnterValuesDT-Submit-CloseGRP.xlsx| Modify Transaction |
   Then i validate and Verify from "Validate" sheet 
	  			|4833-CRTDTforGroup-2-columns-Date-DropDown-Country-CRTEGRP(don'tACT)-EnterValuesDT-Submit-CloseGRP.xlsx|
   Then I "Delete Group" and verified the following tabs
                |4833-CRTDTforGroup-2-columns-Date-DropDown-Country-CRTEGRP(don'tACT)-EnterValuesDT-Submit-CloseGRP.xlsx| Modify Transaction1 |
   Then i validate and Verify from "error" sheet 
	  			|4833-CRTDTforGroup-2-columns-Date-DropDown-Country-CRTEGRP(don'tACT)-EnterValuesDT-Submit-CloseGRP.xlsx|

  
@RunnerClass8
Scenario: 4834-CRTDTforGroup-2-columns-Date-DropDown-Country-CRTEGRP(don'tACT)-EnterValuesDT-Submit-DLTGRP

   Given I setup the "Data Table" product
				| Productloannavigation.xlsx |
   Then I entered the values into product from "DataTable Input" Sheet
				|4834-CRTDTforGroup-2-columns-Date-DropDown-Country-CRTEGRP(don'tACT)-EnterValuesDT-Submit-DLTGRP.xlsx|
   Given I setup the group
   Then I entered the values into group from "Group" sheet
	  			|4834-CRTDTforGroup-2-columns-Date-DropDown-Country-CRTEGRP(don'tACT)-EnterValuesDT-Submit-DLTGRP.xlsx|
   Then I "Entry Value Into Newly Created Datatable" and verified the following tabs
                |4834-CRTDTforGroup-2-columns-Date-DropDown-Country-CRTEGRP(don'tACT)-EnterValuesDT-Submit-DLTGRP.xlsx| Modify Transaction |
   Then i validate and Verify from "Validate" sheet 
	  			|4834-CRTDTforGroup-2-columns-Date-DropDown-Country-CRTEGRP(don'tACT)-EnterValuesDT-Submit-DLTGRP.xlsx|
   Then I "Close Group" and verified the following tabs
                |4834-CRTDTforGroup-2-columns-Date-DropDown-Country-CRTEGRP(don'tACT)-EnterValuesDT-Submit-DLTGRP.xlsx| Modify Transaction1 |
   

@RunnerClass8
Scenario: 4835-CRTDTforCenter(2-columns-Number&String)-CREATECenter(don'tAct)-EnterValuesDT-Submit-CloseCenter

   Given I setup the "Data Table" product
				| Productloannavigation.xlsx |
   Then I entered the values into product from "DataTable Input" Sheet
				|4835-CRTDTforCenter(2-columns-Number&String)-CREATECenter(don'tAct)-EnterValuesDT-Submit-CloseCenter.xlsx|
   Given I setup the center
   When I entered the values into center from "Input" sheet
	  			|4835-CRTDTforCenter(2-columns-Number&String)-CREATECenter(don'tAct)-EnterValuesDT-Submit-CloseCenter.xlsx|
   Then I "Entry Value Into Newly Created Datatable" and verified the following tabs
                |4835-CRTDTforCenter(2-columns-Number&String)-CREATECenter(don'tAct)-EnterValuesDT-Submit-CloseCenter.xlsx| Modify Transaction |
   Then i validate and Verify from "Validate" sheet 
	  			|4835-CRTDTforCenter(2-columns-Number&String)-CREATECenter(don'tAct)-EnterValuesDT-Submit-CloseCenter.xlsx|
   Then I "Close Center" and verified the following tabs
                |4835-CRTDTforCenter(2-columns-Number&String)-CREATECenter(don'tAct)-EnterValuesDT-Submit-CloseCenter.xlsx| Modify Transaction1 |
   

@RunnerClass8
Scenario: 4836-CRTDTforCenter(2-columns-Number&String)-CREATECenter(don'tAct)-EnterValuesDT-Submit-DeleteCenter

   Given I setup the "Data Table" product
				| Productloannavigation.xlsx |
   Then I entered the values into product from "DataTable Input" Sheet
				|4836-CRTDTforCenter(2-columns-Number&String)-CREATECenter(don'tAct)-EnterValuesDT-Submit-DeleteCenter.xlsx|
   Given I setup the center
   When I entered the values into center from "Input" sheet
	  			|4836-CRTDTforCenter(2-columns-Number&String)-CREATECenter(don'tAct)-EnterValuesDT-Submit-DeleteCenter.xlsx|
   Then I "Entry Value Into Newly Created Datatable" and verified the following tabs
                |4836-CRTDTforCenter(2-columns-Number&String)-CREATECenter(don'tAct)-EnterValuesDT-Submit-DeleteCenter.xlsx| Modify Transaction |
   Then i validate and Verify from "Validate" sheet 
	  			|4836-CRTDTforCenter(2-columns-Number&String)-CREATECenter(don'tAct)-EnterValuesDT-Submit-DeleteCenter.xlsx|
   Then I "Delete Center" and verified the following tabs
                |4836-CRTDTforCenter(2-columns-Number&String)-CREATECenter(don'tAct)-EnterValuesDT-Submit-DeleteCenter.xlsx| Modify Transaction1 |
   Then i validate and Verify from "error" sheet 
	  			|4836-CRTDTforCenter(2-columns-Number&String)-CREATECenter(don'tAct)-EnterValuesDT-Submit-DeleteCenter.xlsx|

	
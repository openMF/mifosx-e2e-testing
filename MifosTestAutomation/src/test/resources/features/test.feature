Feature:RBI

Background:
	Given I navigate to mifos using "default7#/"
	And I login into mifos site using "Login" excel sheet
		|Login.xlsx|
	Then I should see logged in successfully
	
@4495-MS-ACTCTR-NOMEET-ACTGRP-ACTCLIENT-DISJLG02JAN-COLLSHEETON09JAN
Scenario:4495-MS-ACTCTR-NOMEET-ACTGRP-ACTCLIENT-DISJLG02JAN-COLLSHEETON09JAN
	  Given I setup the product loan "Setup"
		| Productloannavigation.xlsx |
	 Then I entered the values into product loan from "ProductLoanInput" Sheet
		|4352-MS-Simple-Group-Loan-Product-Loanproduct.xlsx|
	 Given I setup the center
	 When I entered the values into center from "Input" sheet
	 |4495-MS-ACTCTR-NOMEET-ACTGRP-ACTCLIENT-DISJLG02JAN-COLLSHEETON09JAN.xlsx|
	 Then I entered the values into group from "Group" sheet
     |4495-MS-ACTCTR-NOMEET-ACTGRP-ACTCLIENT-DISJLG02JAN-COLLSHEETON09JAN.xlsx|		  								  				  				  			
	 Then I entered the values into client from "Input" sheet
	 	|Createclient.xlsx|	 				  								  				  				  			
	 When I set up the new create loan from "NewLoanInput" sheet
	 |4495-MS-ACTCTR-NOMEET-ACTGRP-ACTCLIENT-DISJLG02JAN-COLLSHEETON09JAN.xlsx|
	 Then I navigate to collection Sheet
	 Then I Make Repayment Through "Collection" sheet
	 |4495-MS-ACTCTR-NOMEET-ACTGRP-ACTCLIENT-DISJLG02JAN-COLLSHEETON09JAN.xlsx|
	 
@4496-MS-ACTCTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JANWITHOUTSTAFF-COLLSHEETON09JAN
Scenario:4496-MS-ACTCTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JANWITHOUTSTAFF-COLLSHEETON09JAN
	 Given I setup the center
	 When I entered the values into center from "Input" sheet
	 |4496-MS-ACTCTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JANWITHOUTSTAFF-COLLSHEETON09JAN.xlsx|
	 Then I entered the values into group from "Group" sheet
     |4496-MS-ACTCTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JANWITHOUTSTAFF-COLLSHEETON09JAN.xlsx|		  								  				  				  			
	 Then I entered the values into client from "Input" sheet
	 	|Createclient.xlsx|	 				  								  				  				  			
	 When I set up the new create loan from "NewLoanInput" sheet
	 |4496-MS-ACTCTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JANWITHOUTSTAFF-COLLSHEETON09JAN.xlsx|
	 Then I navigate to collection Sheet
	 Then I Make Repayment Through "Collection" sheet
	 |4496-MS-ACTCTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JANWITHOUTSTAFF-COLLSHEETON09JAN.xlsx|

@4497-MS-ACTCTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JANWITHSTAFF-COLLSHEETON09JAN-WITHOTHERSTAFF
Scenario:4497-MS-ACTCTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JANWITHSTAFF-COLLSHEETON09JAN-WITHOTHERSTAFF
	 Given I setup the center
	 When I entered the values into center from "Input" sheet
	 |4497-MS-ACTCTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JANWITHSTAFF-COLLSHEETON09JAN-WITHOTHERSTAFF.xlsx|
	 Then I entered the values into group from "Group" sheet
     |4497-MS-ACTCTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JANWITHSTAFF-COLLSHEETON09JAN-WITHOTHERSTAFF.xlsx|		  								  				  				  			
	 Then I entered the values into client from "Input" sheet
	 	|Createclient.xlsx|	 				  								  				  				  			
	 When I set up the new create loan from "NewLoanInput" sheet
	 |4497-MS-ACTCTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JANWITHSTAFF-COLLSHEETON09JAN-WITHOTHERSTAFF.xlsx|
	 Then I navigate to collection Sheet
	 Then I Make Repayment Through "Collection" sheet
	 |4497-MS-ACTCTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JANWITHSTAFF-COLLSHEETON09JAN-WITHOTHERSTAFF.xlsx|

@4498-MS-ACTCTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JANWITHSTAFF-COLLSHEETON09JAN-WITHOTHERGRP
Scenario:4498-MS-ACTCTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JANWITHSTAFF-COLLSHEETON09JAN-WITHOTHERGRP
	 Given I setup the center
	 When I entered the values into center from "Input" sheet
	 |4498-MS-ACTCTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JANWITHSTAFF-COLLSHEETON09JAN-WITHOTHERGRP.xlsx|
	 Then I entered the values into group from "Group" sheet
     |4498-MS-ACTCTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JANWITHSTAFF-COLLSHEETON09JAN-WITHOTHERGRP.xlsx|		  								  				  				  			
	 Then I entered the values into client from "Input" sheet
	 	|Createclient.xlsx|	 				  								  				  				  			
	 When I set up the new create loan from "NewLoanInput" sheet
	 |4498-MS-ACTCTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JANWITHSTAFF-COLLSHEETON09JAN-WITHOTHERGRP.xlsx|
	 Then I navigate to collection Sheet
	 Then I Make Repayment Through "Collection" sheet
	 |4498-MS-ACTCTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JANWITHSTAFF-COLLSHEETON09JAN-WITHOTHERGRP.xlsx|

@4499-MS-ACTCTR-NO-MEET-ACTGRP-ACTCLIENT-DISJLG02JAN-COLLSHEETON09JAN2015
Scenario:4499-MS-ACTCTR-NO-MEET-ACTGRP-ACTCLIENT-DISJLG02JAN-COLLSHEETON09JAN2015
	 Given I setup the center
	 When I entered the values into center from "Input" sheet
	 |4499-MS-ACTCTR-NO-MEET-ACTGRP-ACTCLIENT-DISJLG02JAN-COLLSHEETON09JAN2015.xlsx|
	 Then I entered the values into group from "Group" sheet
     |4499-MS-ACTCTR-NO-MEET-ACTGRP-ACTCLIENT-DISJLG02JAN-COLLSHEETON09JAN2015.xlsx|		  								  				  				  			
	 Then I entered the values into client from "Input" sheet
	 	|Createclient.xlsx|	 				  								  				  				  			
	 When I set up the new create loan from "NewLoanInput" sheet
	 |4499-MS-ACTCTR-NO-MEET-ACTGRP-ACTCLIENT-DISJLG02JAN-COLLSHEETON09JAN2015.xlsx|
	 Then I navigate to collection Sheet
	 Then I Make Repayment Through "Collection" sheet
	 |4499-MS-ACTCTR-NO-MEET-ACTGRP-ACTCLIENT-DISJLG02JAN-COLLSHEETON09JAN2015.xlsx|

@4500-MS-ACTCTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JAN-COLLSHEETON25DEC2014
Scenario:4500-MS-ACTCTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JAN-COLLSHEETON25DEC2014
	 Given I setup the center
	 When I entered the values into center from "Input" sheet
	 |4500-MS-ACTCTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JAN-COLLSHEETON25DEC2014.xlsx|
	 Then I entered the values into group from "Group" sheet
     |4500-MS-ACTCTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JAN-COLLSHEETON25DEC2014.xlsx|		  								  				  				  			
	 Then I entered the values into client from "Input" sheet
	 	|Createclient.xlsx|	 				  								  				  				  			
	 When I set up the new create loan from "NewLoanInput" sheet
	 |4500-MS-ACTCTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JAN-COLLSHEETON25DEC2014.xlsx|
	 Then I navigate to collection Sheet
	 Then I Make Repayment Through "Collection" sheet
	 |4500-MS-ACTCTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JAN-COLLSHEETON25DEC2014.xlsx|

@4501-MS-ACTCTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JAN-COLLSHEETON02JAN
Scenario:4501-MS-ACTCTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JAN-COLLSHEETON02JAN
	 Given I setup the center
	 When I entered the values into center from "Input" sheet
	 |4501-MS-ACTCTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JAN-COLLSHEETON02JAN.xlsx|
	 Then I entered the values into group from "Group" sheet
     |4501-MS-ACTCTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JAN-COLLSHEETON02JAN.xlsx|		  								  				  				  			
	 Then I entered the values into client from "Input" sheet
	 	|Createclient.xlsx|	 				  								  				  				  			
	 When I set up the new create loan from "NewLoanInput" sheet
	 |4501-MS-ACTCTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JAN-COLLSHEETON02JAN.xlsx|
	 Then I navigate to collection Sheet
	 Then I Make Repayment Through "Collection" sheet
	 |4501-MS-ACTCTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JAN-COLLSHEETON02JAN.xlsx|
	 Then i validate and Verify from "Output" sheet
	 |4501-MS-ACTCTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JAN-COLLSHEETON02JAN.xlsx|
	 
@4502-MS-ACTCTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JAN-COLLSHEETON16JAN
Scenario:4502-MS-ACTCTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JAN-COLLSHEETON16JAN
	 Given I setup the center
	 When I entered the values into center from "Input" sheet
	 |4502-MS-ACTCTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JAN-COLLSHEETON16JAN.xlsx|
	 Then I entered the values into group from "Group" sheet
     |4502-MS-ACTCTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JAN-COLLSHEETON16JAN.xlsx|		  								  				  				  			
	 Then I entered the values into client from "Input" sheet
	 	|Createclient.xlsx|	 				  								  				  				  			
	 When I set up the new create loan from "NewLoanInput" sheet
	 |4502-MS-ACTCTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JAN-COLLSHEETON16JAN.xlsx|
	 Then I navigate to collection Sheet
	 Then I Make Repayment Through "Collection" sheet
	 |4502-MS-ACTCTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JAN-COLLSHEETON16JAN.xlsx|
	 And I navigate To Loan Account Page
	 Then I verified the following Tabs details successfully 
	 |4502-MS-ACTCTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JAN-COLLSHEETON16JAN.xlsx|Summary|Repayment Schedule|
	 
@4503-MS-ACTCTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JAN-COLLSHEETON09JAN-SAVEON03JAN
Scenario:4503-MS-ACTCTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JAN-COLLSHEETON09JAN-SAVEON03JAN
	 Given I setup the center
	 When I entered the values into center from "Input" sheet
	 |4503-MS-ACTCTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JAN-COLLSHEETON09JAN-SAVEON03JAN.xlsx|
	 Then I entered the values into group from "Group" sheet
     |4503-MS-ACTCTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JAN-COLLSHEETON09JAN-SAVEON03JAN.xlsx|		  								  				  				  			
	 Then I entered the values into client from "Input" sheet
	 	|Createclient.xlsx|	 				  								  				  				  			
	 When I set up the new create loan from "NewLoanInput" sheet
	 |4503-MS-ACTCTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JAN-COLLSHEETON09JAN-SAVEON03JAN.xlsx|
	 Then I navigate to collection Sheet
	 Then I Make Repayment Through "Collection" sheet
	 |4503-MS-ACTCTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JAN-COLLSHEETON09JAN-SAVEON03JAN.xlsx|

@4503-MS-ACTCTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JAN-REPAYONTIME-COLLSHEETON09JAN
Scenario:4503-MS-ACTCTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JAN-REPAYONTIME-COLLSHEETON09JAN
	 Given I setup the center
	 When I entered the values into center from "Input" sheet
	 |4503-MS-ACTCTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JAN-REPAYONTIME-COLLSHEETON09JAN.xlsx|
	 Then I entered the values into group from "Group" sheet
     |4503-MS-ACTCTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JAN-REPAYONTIME-COLLSHEETON09JAN.xlsx|		  								  				  				  			
	 Then I entered the values into client from "Input" sheet
	 	|Createclient.xlsx|	 				  								  				  				  			
	 When I set up the new create loan from "NewLoanInput" sheet
	 |4503-MS-ACTCTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JAN-REPAYONTIME-COLLSHEETON09JAN.xlsx|
	 Then I navigate to collection Sheet
	 Then I Make Repayment Through "Collection" sheet
	 |4503-MS-ACTCTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JAN-REPAYONTIME-COLLSHEETON09JAN.xlsx|
	 And I navigate To Loan Account Page
	 Then I verified the following Tabs details successfully 
	 |4503-MS-ACTCTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JAN-REPAYONTIME-COLLSHEETON09JAN.xlsx|Summary|Repayment Schedule|
		 
@4504-MS-ACTCTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JAN-REPAYLESS-COLLSHEETON09JAN
Scenario:4504-MS-ACTCTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JAN-REPAYLESS-COLLSHEETON09JAN
	 Given I setup the center
	 When I entered the values into center from "Input" sheet
	 |4504-MS-ACTCTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JAN-REPAYLESS-COLLSHEETON09JAN.xlsx|
	 Then I entered the values into group from "Group" sheet
     |4504-MS-ACTCTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JAN-REPAYLESS-COLLSHEETON09JAN.xlsx|		  								  				  				  			
	 Then I entered the values into client from "Input" sheet
	 	|Createclient.xlsx|	 				  								  				  				  			
	 When I set up the new create loan from "NewLoanInput" sheet
	 |4504-MS-ACTCTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JAN-REPAYLESS-COLLSHEETON09JAN.xlsx|
	 Then I navigate to collection Sheet
	 Then I Make Repayment Through "Collection" sheet
	 |4504-MS-ACTCTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JAN-REPAYLESS-COLLSHEETON09JAN.xlsx|
	 And I navigate To Loan Account Page
	 Then I verified the following Tabs details successfully 
	 |4504-MS-ACTCTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JAN-REPAYLESS-COLLSHEETON09JAN.xlsx|Summary|Repayment Schedule|
		 
@4505-MS-ACTCTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JAN-REPAYMORE-COLLSHEETON09JAN
Scenario:4505-MS-ACTCTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JAN-REPAYMORE-COLLSHEETON09JAN
	 Given I setup the center
	 When I entered the values into center from "Input" sheet
	 |4505-MS-ACTCTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JAN-REPAYMORE-COLLSHEETON09JAN.xlsx|
	 Then I entered the values into group from "Group" sheet
     |4505-MS-ACTCTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JAN-REPAYMORE-COLLSHEETON09JAN.xlsx|		  								  				  				  			
	 Then I entered the values into client from "Input" sheet
	 	|Createclient.xlsx|	 				  								  				  				  			
	 When I set up the new create loan from "NewLoanInput" sheet
	 |4505-MS-ACTCTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JAN-REPAYMORE-COLLSHEETON09JAN.xlsx|
	 Then I navigate to collection Sheet
	 Then I Make Repayment Through "Collection" sheet
	 |4505-MS-ACTCTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JAN-REPAYMORE-COLLSHEETON09JAN.xlsx|
	 And I navigate To Loan Account Page
	 Then I verified the following Tabs details successfully 
	 |4505-MS-ACTCTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JAN-REPAYMORE-COLLSHEETON09JAN.xlsx|Summary|Repayment Schedule|
	 
@4482-RBI-ACTCTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JAN-REPAYandCLOSELOAN-COLLSHEETON09JAN
Scenario:4482-RBI-ACTCTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JAN-REPAYandCLOSELOAN-COLLSHEETON09JAN
	 Given I setup the center
	 When I entered the values into center from "Input" sheet
	 |4482-RBI-ACTCTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JAN-REPAYandCLOSELOAN-COLLSHEETON09JAN.xlsx|
	 Then I entered the values into group from "Group" sheet
     |4482-RBI-ACTCTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JAN-REPAYandCLOSELOAN-COLLSHEETON09JAN.xlsx|		  								  				  				  			
	 Then I entered the values into client from "Input" sheet
	 	|Createclient.xlsx|	 				  								  				  				  			
	 When I set up the new create loan from "NewLoanInput" sheet
	 |4482-RBI-ACTCTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JAN-REPAYandCLOSELOAN-COLLSHEETON09JAN.xlsx|
	 Then I make repayment and verified the following tabs
     |4482-RBI-ACTCTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JAN-REPAYandCLOSELOAN-COLLSHEETON09JAN.xlsx|Repay1|
	 Then I navigate to collection Sheet
	 Then I Make Repayment Through "Collection" sheet
	 |4482-RBI-ACTCTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JAN-REPAYandCLOSELOAN-COLLSHEETON09JAN.xlsx|
	 And I navigate To Loan Account Page
	 Then I verified the following Tabs details successfully 
	 |4482-RBI-ACTCTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JAN-REPAYandCLOSELOAN-COLLSHEETON09JAN.xlsx|Summary|	 	 

@4483-RBI-ACTCTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JAN-WRITEOFFLOAN-COLLSHEETON09JAN
Scenario:4483-RBI-ACTCTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JAN-WRITEOFFLOAN-COLLSHEETON09JAN
	 Given I setup the center
	 When I entered the values into center from "Input" sheet
	 |4483-RBI-ACTCTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JAN-WRITEOFFLOAN-COLLSHEETON09JAN.xlsx|
	 Then I entered the values into group from "Group" sheet
     |4483-RBI-ACTCTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JAN-WRITEOFFLOAN-COLLSHEETON09JAN.xlsx|		  								  				  				  			
	 Then I entered the values into client from "Input" sheet
	 	|Createclient.xlsx|	 				  								  				  				  			
	 When I set up the new create loan from "NewLoanInput" sheet
	 |4483-RBI-ACTCTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JAN-WRITEOFFLOAN-COLLSHEETON09JAN.xlsx|
	 Then I "WRITEOFF" and verified the following tabs
	 |4483-RBI-ACTCTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JAN-WRITEOFFLOAN-COLLSHEETON09JAN.xlsx|Modify Transaction|
	 Then I navigate to collection Sheet
	 Then I Make Repayment Through "Collection" sheet
	 |4483-RBI-ACTCTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JAN-WRITEOFFLOAN-COLLSHEETON09JAN.xlsx|
	 And I navigate To Loan Account Page
	 Then I verified the following Tabs details successfully 
	 |4483-RBI-ACTCTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JAN-WRITEOFFLOAN-COLLSHEETON09JAN.xlsx|Summary|	 	 
	 	 
@4484-RBI-ACTCTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JAN-WAIVEINT-COLLSHEETON09JAN
Scenario:4484-RBI-ACTCTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JAN-WAIVEINT-COLLSHEETON09JAN
	 Given I setup the center
	 When I entered the values into center from "Input" sheet
	 |4484-RBI-ACTCTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JAN-WAIVEINT-COLLSHEETON09JAN.xlsx|
	 Then I entered the values into group from "Group" sheet
     |4484-RBI-ACTCTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JAN-WAIVEINT-COLLSHEETON09JAN.xlsx|		  								  				  				  			
	 Then I entered the values into client from "Input" sheet
	 	|Createclient.xlsx|	 				  								  				  				  			
	 When I set up the new create loan from "NewLoanInput" sheet
	 |4484-RBI-ACTCTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JAN-WAIVEINT-COLLSHEETON09JAN.xlsx|
	 Then I "WaiveInterest" and verified the following tabs
	 |4484-RBI-ACTCTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JAN-WAIVEINT-COLLSHEETON09JAN.xlsx|Modify Transaction|
	 Then I navigate to collection Sheet
	 Then I Make Repayment Through "Collection" sheet
	 |4484-RBI-ACTCTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JAN-WAIVEINT-COLLSHEETON09JAN.xlsx|
	 And I navigate To Loan Account Page
	 Then I verified the following Tabs details successfully 
	 |4484-RBI-ACTCTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JAN-WAIVEINT-COLLSHEETON09JAN.xlsx|Summary|Repayment Schedule|
	 
@4485-RBI-ACTCTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JAN-WAIVEFEE-COLLSHEETON09JAN
Scenario:4485-RBI-ACTCTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JAN-WAIVEFEE-COLLSHEETON09JAN
	 Given I setup the center
	 When I entered the values into center from "Input" sheet
	 |4485-RBI-ACTCTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JAN-WAIVEFEE-COLLSHEETON09JAN.xlsx|
	 Then I entered the values into group from "Group" sheet
     |4485-RBI-ACTCTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JAN-WAIVEFEE-COLLSHEETON09JAN.xlsx|		  								  				  				  			
	 Then I entered the values into client from "Input" sheet
	 	|Createclient.xlsx|	 				  								  				  				  			
	 When I set up the new create loan from "NewLoanInput" sheet
	 |4485-RBI-ACTCTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JAN-WAIVEFEE-COLLSHEETON09JAN.xlsx|
	 Then I "Wave Charge from Charges tab" and verified the following tabs
	 |4485-RBI-ACTCTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JAN-WAIVEFEE-COLLSHEETON09JAN.xlsx|Charges|
	 Then I navigate to collection Sheet
	 Then I Make Repayment Through "Collection" sheet
	 |4485-RBI-ACTCTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JAN-WAIVEFEE-COLLSHEETON09JAN.xlsx|
	 And I navigate To Loan Account Page
	 Then I verified the following Tabs details successfully 
	 |4485-RBI-ACTCTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JAN-WAIVEFEE-COLLSHEETON09JAN.xlsx|Summary|Repayment Schedule|
	 
@4486-RBI-ACTCTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JAN-WAIVEPENALTY-COLLSHEETON09JAN
Scenario:4486-RBI-ACTCTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JAN-WAIVEPENALTY-COLLSHEETON09JAN
	 Given I setup the center
	 When I entered the values into center from "Input" sheet
	 |4486-RBI-ACTCTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JAN-WAIVEPENALTY-COLLSHEETON09JAN.xlsx|
	 Then I entered the values into group from "Group" sheet
     |4486-RBI-ACTCTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JAN-WAIVEPENALTY-COLLSHEETON09JAN.xlsx|		  								  				  				  			
	 Then I entered the values into client from "Input" sheet
	 	|Createclient.xlsx|	 				  								  				  				  			
	 When I set up the new create loan from "NewLoanInput" sheet
	 |4486-RBI-ACTCTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JAN-WAIVEPENALTY-COLLSHEETON09JAN.xlsx|
	 Then I "WAIVEPENALTY" and verified the following tabs
	 |4486-RBI-ACTCTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JAN-WAIVEPENALTY-COLLSHEETON09JAN.xlsx|Charges|
	 Then I navigate to collection Sheet
	 Then I Make Repayment Through "Collection" sheet
	 |4486-RBI-ACTCTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JAN-WAIVEPENALTY-COLLSHEETON09JAN.xlsx|
	 And I navigate To Loan Account Page
	 Then I verified the following Tabs details successfully 
	 |4486-RBI-ACTCTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JAN-WAIVEPENALTY-COLLSHEETON09JAN.xlsx|Summary|Repayment Schedule|
	 
@4487-RBI-ACTCTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JAN-UNDODISB-COLLSHEETON09JAN
Scenario:4487-RBI-ACTCTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JAN-UNDODISB-COLLSHEETON09JAN
	 Given I setup the center
	 When I entered the values into center from "Input" sheet
	 |4487-RBI-ACTCTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JAN-UNDODISB-COLLSHEETON09JAN.xlsx|
	 Then I entered the values into group from "Group" sheet
     |4487-RBI-ACTCTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JAN-UNDODISB-COLLSHEETON09JAN.xlsx|		  								  				  				  			
	 Then I entered the values into client from "Input" sheet
	 	|Createclient.xlsx|	 				  								  				  				  			
	 When I set up the new create loan from "NewLoanInput" sheet
	 |4487-RBI-ACTCTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JAN-UNDODISB-COLLSHEETON09JAN.xlsx|
	 Then I "Do Undo Disbursal" and verified the following tabs
	 |4487-RBI-ACTCTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JAN-UNDODISB-COLLSHEETON09JAN.xlsx|Undo Disbursal|
	 Then I navigate to collection Sheet
	 Then I Make Repayment Through "Collection" sheet
	 |4487-RBI-ACTCTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JAN-UNDODISB-COLLSHEETON09JAN.xlsx|

@4488-RBI-ACTCTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JAN-SPDUEDATE02JAN-COLLSHEETON09JAN
Scenario:4488-RBI-ACTCTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JAN-SPDUEDATE02JAN-COLLSHEETON09JAN
	 Given I setup the center
	 When I entered the values into center from "Input" sheet
	 |4488-RBI-ACTCTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JAN-SPDUEDATE02JAN-COLLSHEETON09JAN.xlsx|
	 Then I entered the values into group from "Group" sheet
     |4488-RBI-ACTCTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JAN-SPDUEDATE02JAN-COLLSHEETON09JAN.xlsx|		  								  				  				  			
	 Then I entered the values into client from "Input" sheet
	 	|Createclient.xlsx|	 				  								  				  				  			
	 When I set up the new create loan from "NewLoanInput" sheet
	 |4488-RBI-ACTCTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JAN-SPDUEDATE02JAN-COLLSHEETON09JAN.xlsx|
	 	 	 	 	 
@4489-RBI-ACTCTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JAN-SPDUEDATE05JAN-COLLSHEETON16JAN
Scenario:4489-RBI-ACTCTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JAN-SPDUEDATE05JAN-COLLSHEETON16JAN
	 Given I setup the center
	 When I entered the values into center from "Input" sheet
	 |4489-RBI-ACTCTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JAN-SPDUEDATE05JAN-COLLSHEETON16JAN.xlsx|
	 Then I entered the values into group from "Group" sheet
     |4489-RBI-ACTCTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JAN-SPDUEDATE05JAN-COLLSHEETON16JAN.xlsx|		  								  				  				  			
	 Then I entered the values into client from "Input" sheet
	 	|Createclient.xlsx|	 				  								  				  				  			
	 When I set up the new create loan from "NewLoanInput" sheet
	 |4489-RBI-ACTCTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JAN-SPDUEDATE05JAN-COLLSHEETON16JAN.xlsx|
	 Then I navigate to collection Sheet
	 Then I Make Repayment Through "Collection" sheet
	 |4489-RBI-ACTCTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JAN-SPDUEDATE05JAN-COLLSHEETON16JAN.xlsx|
	 And I navigate To Loan Account Page
	 Then I verified the following Tabs details successfully 
	 |4489-RBI-ACTCTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JAN-SPDUEDATE05JAN-COLLSHEETON16JAN.xlsx|Summary|Repayment Schedule|
	 	 	 	 
@4490-RBI-ACTCTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JAN-INSTFEE-COLLSHEETON09JAN
Scenario:4490-RBI-ACTCTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JAN-INSTFEE-COLLSHEETON09JAN
	 Given I setup the center
	 When I entered the values into center from "Input" sheet
	 |4490-RBI-ACTCTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JAN-INSTFEE-COLLSHEETON09JAN.xlsx|
	 Then I entered the values into group from "Group" sheet
     |4490-RBI-ACTCTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JAN-INSTFEE-COLLSHEETON09JAN.xlsx|		  								  				  				  			
	 Then I entered the values into client from "Input" sheet
	 	|Createclient.xlsx|	 				  								  				  				  			
	 When I set up the new create loan from "NewLoanInput" sheet
	 |4490-RBI-ACTCTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JAN-INSTFEE-COLLSHEETON09JAN.xlsx|
	 Then I navigate to collection Sheet
	 Then I Make Repayment Through "Collection" sheet
	 |4490-RBI-ACTCTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JAN-INSTFEE-COLLSHEETON09JAN.xlsx|
	 And I navigate To Loan Account Page
	 Then I verified the following Tabs details successfully 
	 |4490-RBI-ACTCTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JAN-INSTFEE-COLLSHEETON09JAN.xlsx|Summary|Repayment Schedule|
	 	 	 	 
@4491-RBI-ACTCTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JAN-OVERDUEFEEFLAT-COLLSHEETON09JAN
Scenario:4491-RBI-ACTCTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JAN-OVERDUEFEEFLAT-COLLSHEETON09JAN
	 Given I setup the product loan "Setup"
		| Productloannavigation.xlsx |
	 Then I entered the values into product loan from "ProductLoanInput" Sheet
		|4353-MS-Simple-Group-Loan-Product-Loanproduct-OVERDUEFEEFLAT.xlsx|
	 Given I setup the center
	 When I entered the values into center from "Input" sheet
	 |4491-RBI-ACTCTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JAN-OVERDUEFEEFLAT-COLLSHEETON09JAN.xlsx|
	 Then I entered the values into group from "Group" sheet
     |4491-RBI-ACTCTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JAN-OVERDUEFEEFLAT-COLLSHEETON09JAN.xlsx|		  								  				  				  			
	 Then I entered the values into client from "Input" sheet
	 	|Createclient.xlsx|	 				  								  				  				  			
	 When I set up the new create loan from "NewLoanInput" sheet
	 |4491-RBI-ACTCTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JAN-OVERDUEFEEFLAT-COLLSHEETON09JAN.xlsx|
	 Then I navigate to scheduler job & execute "Periodic & penalty to overdue loans"
	 Then I navigate to collection Sheet
	 Then I Make Repayment Through "Collection" sheet
	 |4491-RBI-ACTCTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JAN-OVERDUEFEEFLAT-COLLSHEETON09JAN.xlsx|
	 And I navigate To Loan Account Page
	 Then I verified the following Tabs details successfully 
	 |4491-RBI-ACTCTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JAN-OVERDUEFEEFLAT-COLLSHEETON09JAN.xlsx|Summary|Repayment Schedule|

@4492-RBI-ACTCTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JAN-REPAYONTIME-OVERDUE-FLAT-COLLSHEETON09JAN
Scenario:4492-RBI-ACTCTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JAN-REPAYONTIME-OVERDUE-FLAT-COLLSHEETON09JAN
	 Given I setup the center
	 When I entered the values into center from "Input" sheet
	 |4492-RBI-ACTCTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JAN-REPAYONTIME-OVERDUE-FLAT-COLLSHEETON09JAN.xlsx|
	 Then I entered the values into group from "Group" sheet
     |4492-RBI-ACTCTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JAN-REPAYONTIME-OVERDUE-FLAT-COLLSHEETON09JAN.xlsx|		  								  				  				  			
	 Then I entered the values into client from "Input" sheet
	 	|Createclient.xlsx|	 				  								  				  				  			
	 When I set up the new create loan from "NewLoanInput" sheet
	 |4492-RBI-ACTCTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JAN-REPAYONTIME-OVERDUE-FLAT-COLLSHEETON09JAN.xlsx|
	 Then I navigate to scheduler job & execute "Periodic & penalty to overdue loans"
	 Then I make repayment and verified the following tabs
     |4492-RBI-ACTCTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JAN-REPAYONTIME-OVERDUE-FLAT-COLLSHEETON09JAN.xlsx|Repay1|
	 Then I navigate to collection Sheet
	 Then I Make Repayment Through "Collection" sheet
	 |4492-RBI-ACTCTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JAN-REPAYONTIME-OVERDUE-FLAT-COLLSHEETON09JAN.xlsx|
	 Then i validate and Verify from "Output" sheet
	 |4492-RBI-ACTCTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JAN-REPAYONTIME-OVERDUE-FLAT-COLLSHEETON09JAN.xlsx|
	 
@4493-RBI-ACTCTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JAN-REPAYONTIMELESS-OVERDUE-FLAT-COLLSHEETON09JAN
Scenario:4493-RBI-ACTCTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JAN-REPAYONTIMELESS-OVERDUE-FLAT-COLLSHEETON09JAN
	 Given I setup the center
	 When I entered the values into center from "Input" sheet
	 |4493-RBI-ACTCTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JAN-REPAYONTIMELESS-OVERDUE-FLAT-COLLSHEETON09JAN.xlsx|
	 Then I entered the values into group from "Group" sheet
     |4493-RBI-ACTCTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JAN-REPAYONTIMELESS-OVERDUE-FLAT-COLLSHEETON09JAN.xlsx|		  								  				  				  			
	 Then I entered the values into client from "Input" sheet
	 	|Createclient.xlsx|	 				  								  				  				  			
	 When I set up the new create loan from "NewLoanInput" sheet
	 |4493-RBI-ACTCTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JAN-REPAYONTIMELESS-OVERDUE-FLAT-COLLSHEETON09JAN.xlsx|
	 Then I navigate to scheduler job & execute "Periodic & penalty to overdue loans"
	 Then I make repayment and verified the following tabs
     |4493-RBI-ACTCTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JAN-REPAYONTIMELESS-OVERDUE-FLAT-COLLSHEETON09JAN.xlsx|Repay1|
	 Then I navigate to collection Sheet
	 Then I Make Repayment Through "Collection" sheet
	 |4493-RBI-ACTCTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JAN-REPAYONTIMELESS-OVERDUE-FLAT-COLLSHEETON09JAN.xlsx|
	 Then i validate and Verify from "Output" sheet
	 |4493-RBI-ACTCTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JAN-REPAYONTIMELESS-OVERDUE-FLAT-COLLSHEETON09JAN.xlsx|
	
@4494-RBI-ACTCTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JAN-REPAYONTIMEMORE-OVERDUE-FLAT-COLLSHEETON09JAN
Scenario:4494-RBI-ACTCTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JAN-REPAYONTIMEMORE-OVERDUE-FLAT-COLLSHEETON09JAN
	 Given I setup the center
	 When I entered the values into center from "Input" sheet
	 |4494-RBI-ACTCTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JAN-REPAYONTIMEMORE-OVERDUE-FLAT-COLLSHEETON09JAN.xlsx|
	 Then I entered the values into group from "Group" sheet
     |4494-RBI-ACTCTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JAN-REPAYONTIMEMORE-OVERDUE-FLAT-COLLSHEETON09JAN.xlsx|		  								  				  				  			
	 Then I entered the values into client from "Input" sheet
	 	|Createclient.xlsx|	 				  								  				  				  			
	 When I set up the new create loan from "NewLoanInput" sheet
	 |4494-RBI-ACTCTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JAN-REPAYONTIMEMORE-OVERDUE-FLAT-COLLSHEETON09JAN.xlsx|
	 Then I navigate to scheduler job & execute "Periodic & penalty to overdue loans"
	 Then I make repayment and verified the following tabs
     |4494-RBI-ACTCTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JAN-REPAYONTIMEMORE-OVERDUE-FLAT-COLLSHEETON09JAN.xlsx|Repay1|
	 Then I navigate to collection Sheet
	 Then I Make Repayment Through "Collection" sheet
	 |4494-RBI-ACTCTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JAN-REPAYONTIMEMORE-OVERDUE-FLAT-COLLSHEETON09JAN.xlsx|
	 Then i validate and Verify from "Output" sheet
	 |4494-RBI-ACTCTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JAN-REPAYONTIMEMORE-OVERDUE-FLAT-COLLSHEETON09JAN.xlsx|
	 	 	
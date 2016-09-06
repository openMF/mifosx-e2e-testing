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

@4504-MS-ACTCTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JAN-REPAYONTIME-COLLSHEETON09JAN
Scenario:4504-MS-ACTCTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JAN-REPAYONTIME-COLLSHEETON09JAN
	 Given I setup the center
	 When I entered the values into center from "Input" sheet
	 |4504-MS-ACTCTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JAN-REPAYONTIME-COLLSHEETON09JAN.xlsx|
	 Then I entered the values into group from "Group" sheet
     |4504-MS-ACTCTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JAN-REPAYONTIME-COLLSHEETON09JAN.xlsx|		  								  				  				  			
	 Then I entered the values into client from "Input" sheet
	 	|Createclient.xlsx|	 				  								  				  				  			
	 When I set up the new create loan from "NewLoanInput" sheet
	 |4504-MS-ACTCTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JAN-REPAYONTIME-COLLSHEETON09JAN.xlsx|
	 Then I navigate to collection Sheet
	 Then I Make Repayment Through "Collection" sheet
	 |4504-MS-ACTCTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JAN-REPAYONTIME-COLLSHEETON09JAN.xlsx|
	 And I navigate To Loan Account Page
	 Then I verified the following Tabs details successfully 
	 |4504-MS-ACTCTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JAN-REPAYONTIME-COLLSHEETON09JAN.xlsx|Summary|Repayment Schedule|
		 
@4505-MS-ACTCTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JAN-REPAYLESS-COLLSHEETON09JAN
Scenario:4505-MS-ACTCTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JAN-REPAYLESS-COLLSHEETON09JAN
	 Given I setup the center
	 When I entered the values into center from "Input" sheet
	 |4505-MS-ACTCTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JAN-REPAYLESS-COLLSHEETON09JAN.xlsx|
	 Then I entered the values into group from "Group" sheet
     |4505-MS-ACTCTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JAN-REPAYLESS-COLLSHEETON09JAN.xlsx|		  								  				  				  			
	 Then I entered the values into client from "Input" sheet
	 	|Createclient.xlsx|	 				  								  				  				  			
	 When I set up the new create loan from "NewLoanInput" sheet
	 |4505-MS-ACTCTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JAN-REPAYLESS-COLLSHEETON09JAN.xlsx|
	 Then I navigate to collection Sheet
	 Then I Make Repayment Through "Collection" sheet
	 |4505-MS-ACTCTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JAN-REPAYLESS-COLLSHEETON09JAN.xlsx|
	 And I navigate To Loan Account Page
	 Then I verified the following Tabs details successfully 
	 |4505-MS-ACTCTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JAN-REPAYLESS-COLLSHEETON09JAN.xlsx|Summary|Repayment Schedule|
		 
@4506-MS-ACTCTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JAN-REPAYMORE-COLLSHEETON09JAN
Scenario:4506-MS-ACTCTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JAN-REPAYMORE-COLLSHEETON09JAN
	 Given I setup the center
	 When I entered the values into center from "Input" sheet
	 |4506-MS-ACTCTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JAN-REPAYMORE-COLLSHEETON09JAN.xlsx|
	 Then I entered the values into group from "Group" sheet
     |4506-MS-ACTCTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JAN-REPAYMORE-COLLSHEETON09JAN.xlsx|		  								  				  				  			
	 Then I entered the values into client from "Input" sheet
	 	|Createclient.xlsx|	 				  								  				  				  			
	 When I set up the new create loan from "NewLoanInput" sheet
	 |4506-MS-ACTCTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JAN-REPAYMORE-COLLSHEETON09JAN.xlsx|
	 Then I navigate to collection Sheet
	 Then I Make Repayment Through "Collection" sheet
	 |4506-MS-ACTCTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JAN-REPAYMORE-COLLSHEETON09JAN.xlsx|
	 And I navigate To Loan Account Page
	 Then I verified the following Tabs details successfully 
	 |4506-MS-ACTCTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JAN-REPAYMORE-COLLSHEETON09JAN.xlsx|Summary|Repayment Schedule|
	 
@4507-MS-ACTCTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JAN-REPAYandCLOSELOAN-COLLSHEETON09JAN
Scenario:4507-MS-ACTCTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JAN-REPAYandCLOSELOAN-COLLSHEETON09JAN
	 Given I setup the center
	 When I entered the values into center from "Input" sheet
	 |4507-MS-ACTCTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JAN-REPAYandCLOSELOAN-COLLSHEETON09JAN.xlsx|
	 Then I entered the values into group from "Group" sheet
     |4507-MS-ACTCTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JAN-REPAYandCLOSELOAN-COLLSHEETON09JAN.xlsx|		  								  				  				  			
	 Then I entered the values into client from "Input" sheet
	 	|Createclient.xlsx|	 				  								  				  				  			
	 When I set up the new create loan from "NewLoanInput" sheet
	 |4507-MS-ACTCTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JAN-REPAYandCLOSELOAN-COLLSHEETON09JAN.xlsx|
	 Then I make repayment and verified the following tabs
     |4507-MS-ACTCTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JAN-REPAYandCLOSELOAN-COLLSHEETON09JAN.xlsx|Repay1|
	 Then I navigate to collection Sheet
	 Then I Make Repayment Through "Collection" sheet
	 |4507-MS-ACTCTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JAN-REPAYandCLOSELOAN-COLLSHEETON09JAN.xlsx|
	 And I navigate To Loan Account Page
	 Then I verified the following Tabs details successfully 
	 |4507-MS-ACTCTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JAN-REPAYandCLOSELOAN-COLLSHEETON09JAN.xlsx|Summary|	 	 

@4508-MS-ACTCTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JAN-WRITEOFFLOAN-COLLSHEETON09JAN
Scenario:4508-MS-ACTCTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JAN-WRITEOFFLOAN-COLLSHEETON09JAN
	 Given I setup the center
	 When I entered the values into center from "Input" sheet
	 |4508-MS-ACTCTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JAN-WRITEOFFLOAN-COLLSHEETON09JAN.xlsx|
	 Then I entered the values into group from "Group" sheet
     |4508-MS-ACTCTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JAN-WRITEOFFLOAN-COLLSHEETON09JAN.xlsx|		  								  				  				  			
	 Then I entered the values into client from "Input" sheet
	 	|Createclient.xlsx|	 				  								  				  				  			
	 When I set up the new create loan from "NewLoanInput" sheet
	 |4508-MS-ACTCTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JAN-WRITEOFFLOAN-COLLSHEETON09JAN.xlsx|
	 Then I "WRITEOFF" and verified the following tabs
	 |4508-MS-ACTCTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JAN-WRITEOFFLOAN-COLLSHEETON09JAN.xlsx|Modify Transaction|
	 Then I navigate to collection Sheet
	 Then I Make Repayment Through "Collection" sheet
	 |4508-MS-ACTCTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JAN-WRITEOFFLOAN-COLLSHEETON09JAN.xlsx|
	 And I navigate To Loan Account Page
	 Then I verified the following Tabs details successfully 
	 |4508-MS-ACTCTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JAN-WRITEOFFLOAN-COLLSHEETON09JAN.xlsx|Summary|	 	 
	 	 
@4509-MS-ACTCTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JAN-WAIVEINT-COLLSHEETON09JAN
Scenario:4509-MS-ACTCTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JAN-WAIVEINT-COLLSHEETON09JAN
	 Given I setup the center
	 When I entered the values into center from "Input" sheet
	 |4509-MS-ACTCTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JAN-WAIVEINT-COLLSHEETON09JAN.xlsx|
	 Then I entered the values into group from "Group" sheet
     |4509-MS-ACTCTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JAN-WAIVEINT-COLLSHEETON09JAN.xlsx|		  								  				  				  			
	 Then I entered the values into client from "Input" sheet
	 	|Createclient.xlsx|	 				  								  				  				  			
	 When I set up the new create loan from "NewLoanInput" sheet
	 |4509-MS-ACTCTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JAN-WAIVEINT-COLLSHEETON09JAN.xlsx|
	 Then I "WaiveInterest" and verified the following tabs
	 |4509-MS-ACTCTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JAN-WAIVEINT-COLLSHEETON09JAN.xlsx|Modify Transaction|
	 Then I navigate to collection Sheet
	 Then I Make Repayment Through "Collection" sheet
	 |4509-MS-ACTCTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JAN-WAIVEINT-COLLSHEETON09JAN.xlsx|
	 And I navigate To Loan Account Page
	 Then I verified the following Tabs details successfully 
	 |4509-MS-ACTCTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JAN-WAIVEINT-COLLSHEETON09JAN.xlsx|Summary|Repayment Schedule|
	 
@4510-MS-ACTCTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JAN-WAIVEFEE-COLLSHEETON09JAN
Scenario:4510-MS-ACTCTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JAN-WAIVEFEE-COLLSHEETON09JAN
	 Given I setup the center
	 When I entered the values into center from "Input" sheet
	 |4510-MS-ACTCTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JAN-WAIVEFEE-COLLSHEETON09JAN.xlsx|
	 Then I entered the values into group from "Group" sheet
     |4510-MS-ACTCTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JAN-WAIVEFEE-COLLSHEETON09JAN.xlsx|		  								  				  				  			
	 Then I entered the values into client from "Input" sheet
	 	|Createclient.xlsx|	 				  								  				  				  			
	 When I set up the new create loan from "NewLoanInput" sheet
	 |4510-MS-ACTCTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JAN-WAIVEFEE-COLLSHEETON09JAN.xlsx|
	 Then I "Wave Charge from Charges tab" and verified the following tabs
	 |4510-MS-ACTCTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JAN-WAIVEFEE-COLLSHEETON09JAN.xlsx|Charges|
	 Then I navigate to collection Sheet
	 Then I Make Repayment Through "Collection" sheet
	 |4510-MS-ACTCTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JAN-WAIVEFEE-COLLSHEETON09JAN.xlsx|
	 And I navigate To Loan Account Page
	 Then I verified the following Tabs details successfully 
	 |4510-MS-ACTCTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JAN-WAIVEFEE-COLLSHEETON09JAN.xlsx|Summary|Repayment Schedule|
	 
@4511-MS-ACTCTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JAN-WAIVEPENALTY-COLLSHEETON09JAN
Scenario:4511-MS-ACTCTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JAN-WAIVEPENALTY-COLLSHEETON09JAN
	 Given I setup the center
	 When I entered the values into center from "Input" sheet
	 |4511-MS-ACTCTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JAN-WAIVEPENALTY-COLLSHEETON09JAN.xlsx|
	 Then I entered the values into group from "Group" sheet
     |4511-MS-ACTCTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JAN-WAIVEPENALTY-COLLSHEETON09JAN.xlsx|		  								  				  				  			
	 Then I entered the values into client from "Input" sheet
	 	|Createclient.xlsx|	 				  								  				  				  			
	 When I set up the new create loan from "NewLoanInput" sheet
	 |4511-MS-ACTCTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JAN-WAIVEPENALTY-COLLSHEETON09JAN.xlsx|
	 Then I "WAIVEPENALTY" and verified the following tabs
	 |4511-MS-ACTCTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JAN-WAIVEPENALTY-COLLSHEETON09JAN.xlsx|Charges|
	 Then I navigate to collection Sheet
	 Then I Make Repayment Through "Collection" sheet
	 |4511-MS-ACTCTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JAN-WAIVEPENALTY-COLLSHEETON09JAN.xlsx|
	 And I navigate To Loan Account Page
	 Then I verified the following Tabs details successfully 
	 |4511-MS-ACTCTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JAN-WAIVEPENALTY-COLLSHEETON09JAN.xlsx|Summary|Repayment Schedule|
	 
@4512-MS-ACTCTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JAN-UNDODISB-COLLSHEETON09JAN
Scenario:4512-MS-ACTCTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JAN-UNDODISB-COLLSHEETON09JAN
	 Given I setup the center
	 When I entered the values into center from "Input" sheet
	 |4512-MS-ACTCTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JAN-UNDODISB-COLLSHEETON09JAN.xlsx|
	 Then I entered the values into group from "Group" sheet
     |4512-MS-ACTCTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JAN-UNDODISB-COLLSHEETON09JAN.xlsx|		  								  				  				  			
	 Then I entered the values into client from "Input" sheet
	 	|Createclient.xlsx|	 				  								  				  				  			
	 When I set up the new create loan from "NewLoanInput" sheet
	 |4512-MS-ACTCTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JAN-UNDODISB-COLLSHEETON09JAN.xlsx|
	 Then I "Do Undo Disbursal" and verified the following tabs
	 |4512-MS-ACTCTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JAN-UNDODISB-COLLSHEETON09JAN.xlsx|Undo Disbursal|
	 Then I navigate to collection Sheet
	 Then I Make Repayment Through "Collection" sheet
	 |4512-MS-ACTCTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JAN-UNDODISB-COLLSHEETON09JAN.xlsx|

@4513-MS-ACTCTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JAN-SPDUEDATE02JAN-COLLSHEETON09JAN
Scenario:4513-MS-ACTCTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JAN-SPDUEDATE02JAN-COLLSHEETON09JAN
	 Given I setup the center
	 When I entered the values into center from "Input" sheet
	 |4513-MS-ACTCTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JAN-SPDUEDATE02JAN-COLLSHEETON09JAN.xlsx|
	 Then I entered the values into group from "Group" sheet
     |4513-MS-ACTCTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JAN-SPDUEDATE02JAN-COLLSHEETON09JAN.xlsx|		  								  				  				  			
	 Then I entered the values into client from "Input" sheet
	 	|Createclient.xlsx|	 				  								  				  				  			
	 When I set up the new create loan from "NewLoanInput" sheet
	 |4513-MS-ACTCTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JAN-SPDUEDATE02JAN-COLLSHEETON09JAN.xlsx|
	 	 	 	 	 
@4514-MS-ACTCTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JAN-SPDUEDATE05JAN-COLLSHEETON16JAN
Scenario:4514-MS-ACTCTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JAN-SPDUEDATE05JAN-COLLSHEETON16JAN
	 Given I setup the center
	 When I entered the values into center from "Input" sheet
	 |4514-MS-ACTCTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JAN-SPDUEDATE05JAN-COLLSHEETON16JAN.xlsx|
	 Then I entered the values into group from "Group" sheet
     |4514-MS-ACTCTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JAN-SPDUEDATE05JAN-COLLSHEETON16JAN.xlsx|		  								  				  				  			
	 Then I entered the values into client from "Input" sheet
	 	|Createclient.xlsx|	 				  								  				  				  			
	 When I set up the new create loan from "NewLoanInput" sheet
	 |4514-MS-ACTCTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JAN-SPDUEDATE05JAN-COLLSHEETON16JAN.xlsx|
	 Then I navigate to collection Sheet
	 Then I Make Repayment Through "Collection" sheet
	 |4514-MS-ACTCTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JAN-SPDUEDATE05JAN-COLLSHEETON16JAN.xlsx|
	 And I navigate To Loan Account Page
	 Then I verified the following Tabs details successfully 
	 |4514-MS-ACTCTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JAN-SPDUEDATE05JAN-COLLSHEETON16JAN.xlsx|Summary|Repayment Schedule|
	 	 	 	 
@4515-MS-ACTCTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JAN-INSTFEE-COLLSHEETON09JAN
Scenario:4515-MS-ACTCTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JAN-INSTFEE-COLLSHEETON09JAN
	 Given I setup the center
	 When I entered the values into center from "Input" sheet
	 |4515-MS-ACTCTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JAN-INSTFEE-COLLSHEETON09JAN.xlsx|
	 Then I entered the values into group from "Group" sheet
     |4515-MS-ACTCTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JAN-INSTFEE-COLLSHEETON09JAN.xlsx|		  								  				  				  			
	 Then I entered the values into client from "Input" sheet
	 	|Createclient.xlsx|	 				  								  				  				  			
	 When I set up the new create loan from "NewLoanInput" sheet
	 |4515-MS-ACTCTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JAN-INSTFEE-COLLSHEETON09JAN.xlsx|
	 Then I navigate to collection Sheet
	 Then I Make Repayment Through "Collection" sheet
	 |4515-MS-ACTCTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JAN-INSTFEE-COLLSHEETON09JAN.xlsx|
	 And I navigate To Loan Account Page
	 Then I verified the following Tabs details successfully 
	 |4515-MS-ACTCTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JAN-INSTFEE-COLLSHEETON09JAN.xlsx|Summary|Repayment Schedule|
	 	 	 	 
@4516-MS-ACTCTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JAN-OVERDUEFEEFLAT-COLLSHEETON09JAN
Scenario:4516-MS-ACTCTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JAN-OVERDUEFEEFLAT-COLLSHEETON09JAN
	 Given I setup the product loan "Setup"
		| Productloannavigation.xlsx |
	 Then I entered the values into product loan from "ProductLoanInput" Sheet
		|4353-MS-Simple-Group-Loan-Product-Loanproduct-OVERDUEFEEFLAT.xlsx|
	 Given I setup the center
	 When I entered the values into center from "Input" sheet
	 |4516-MS-ACTCTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JAN-OVERDUEFEEFLAT-COLLSHEETON09JAN.xlsx|
	 Then I entered the values into group from "Group" sheet
     |4516-MS-ACTCTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JAN-OVERDUEFEEFLAT-COLLSHEETON09JAN.xlsx|		  								  				  				  			
	 Then I entered the values into client from "Input" sheet
	 	|Createclient.xlsx|	 				  								  				  				  			
	 When I set up the new create loan from "NewLoanInput" sheet
	 |4516-MS-ACTCTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JAN-OVERDUEFEEFLAT-COLLSHEETON09JAN.xlsx|
	 Then I navigate to scheduler job & execute "Periodic & penalty to overdue loans"
	 Then I navigate to collection Sheet
	 Then I Make Repayment Through "Collection" sheet
	 |4516-MS-ACTCTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JAN-OVERDUEFEEFLAT-COLLSHEETON09JAN.xlsx|
	 And I navigate To Loan Account Page
	 Then I verified the following Tabs details successfully 
	 |4516-MS-ACTCTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JAN-OVERDUEFEEFLAT-COLLSHEETON09JAN.xlsx|Summary|Repayment Schedule|

@4517-MS-ACTCTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JAN-REPAYONTIME-OVERDUE-FLAT-COLLSHEETON09JAN
Scenario:4517-MS-ACTCTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JAN-REPAYONTIME-OVERDUE-FLAT-COLLSHEETON09JAN
	 Given I setup the center
	 When I entered the values into center from "Input" sheet
	 |4517-MS-ACTCTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JAN-REPAYONTIME-OVERDUE-FLAT-COLLSHEETON09JAN.xlsx|
	 Then I entered the values into group from "Group" sheet
     |4517-MS-ACTCTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JAN-REPAYONTIME-OVERDUE-FLAT-COLLSHEETON09JAN.xlsx|		  								  				  				  			
	 Then I entered the values into client from "Input" sheet
	 	|Createclient.xlsx|	 				  								  				  				  			
	 When I set up the new create loan from "NewLoanInput" sheet
	 |4517-MS-ACTCTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JAN-REPAYONTIME-OVERDUE-FLAT-COLLSHEETON09JAN.xlsx|
	 Then I navigate to scheduler job & execute "Periodic & penalty to overdue loans"
	 Then I make repayment and verified the following tabs
     |4517-MS-ACTCTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JAN-REPAYONTIME-OVERDUE-FLAT-COLLSHEETON09JAN.xlsx|Repay1|
	 Then I navigate to collection Sheet
	 Then I Make Repayment Through "Collection" sheet
	 |4517-MS-ACTCTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JAN-REPAYONTIME-OVERDUE-FLAT-COLLSHEETON09JAN.xlsx|
	 Then i validate and Verify from "Output" sheet
	 |4517-MS-ACTCTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JAN-REPAYONTIME-OVERDUE-FLAT-COLLSHEETON09JAN.xlsx|
	 
@4518-MS-ACTCTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JAN-REPAYONTIMELESS-OVERDUE-FLAT-COLLSHEETON09JAN
Scenario:4518-MS-ACTCTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JAN-REPAYONTIMELESS-OVERDUE-FLAT-COLLSHEETON09JAN
	 Given I setup the center
	 When I entered the values into center from "Input" sheet
	 |4518-MS-ACTCTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JAN-REPAYONTIMELESS-OVERDUE-FLAT-COLLSHEETON09JAN.xlsx|
	 Then I entered the values into group from "Group" sheet
     |4518-MS-ACTCTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JAN-REPAYONTIMELESS-OVERDUE-FLAT-COLLSHEETON09JAN.xlsx|		  								  				  				  			
	 Then I entered the values into client from "Input" sheet
	 	|Createclient.xlsx|	 				  								  				  				  			
	 When I set up the new create loan from "NewLoanInput" sheet
	 |4518-MS-ACTCTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JAN-REPAYONTIMELESS-OVERDUE-FLAT-COLLSHEETON09JAN.xlsx|
	 Then I navigate to scheduler job & execute "Periodic & penalty to overdue loans"
	 Then I make repayment and verified the following tabs
     |4518-MS-ACTCTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JAN-REPAYONTIMELESS-OVERDUE-FLAT-COLLSHEETON09JAN.xlsx|Repay1|
	 Then I navigate to collection Sheet
	 Then I Make Repayment Through "Collection" sheet
	 |4518-MS-ACTCTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JAN-REPAYONTIMELESS-OVERDUE-FLAT-COLLSHEETON09JAN.xlsx|
	 Then i validate and Verify from "Output" sheet
	 |4518-MS-ACTCTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JAN-REPAYONTIMELESS-OVERDUE-FLAT-COLLSHEETON09JAN.xlsx|
	
@4519-MS-ACTCTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JAN-REPAYONTIMEMORE-OVERDUE-FLAT-COLLSHEETON09JAN
Scenario:4519-MS-ACTCTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JAN-REPAYONTIMEMORE-OVERDUE-FLAT-COLLSHEETON09JAN
	 Given I setup the center
	 When I entered the values into center from "Input" sheet
	 |4519-MS-ACTCTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JAN-REPAYONTIMEMORE-OVERDUE-FLAT-COLLSHEETON09JAN.xlsx|
	 Then I entered the values into group from "Group" sheet
     |4519-MS-ACTCTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JAN-REPAYONTIMEMORE-OVERDUE-FLAT-COLLSHEETON09JAN.xlsx|		  								  				  				  			
	 Then I entered the values into client from "Input" sheet
	 	|Createclient.xlsx|	 				  								  				  				  			
	 When I set up the new create loan from "NewLoanInput" sheet
	 |4519-MS-ACTCTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JAN-REPAYONTIMEMORE-OVERDUE-FLAT-COLLSHEETON09JAN.xlsx|
	 Then I navigate to scheduler job & execute "Periodic & penalty to overdue loans"
	 Then I make repayment and verified the following tabs
     |4519-MS-ACTCTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JAN-REPAYONTIMEMORE-OVERDUE-FLAT-COLLSHEETON09JAN.xlsx|Repay1|
	 Then I navigate to collection Sheet
	 Then I Make Repayment Through "Collection" sheet
	 |4519-MS-ACTCTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JAN-REPAYONTIMEMORE-OVERDUE-FLAT-COLLSHEETON09JAN.xlsx|
	 Then i validate and Verify from "Output" sheet
	 |4519-MS-ACTCTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JAN-REPAYONTIMEMORE-OVERDUE-FLAT-COLLSHEETON09JAN.xlsx|
	 	 	
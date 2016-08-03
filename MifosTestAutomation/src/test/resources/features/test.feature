Feature:RBI

Background:
	Given I navigate to mifos using "default#/"
	And I login into mifos site using "Login" excel sheet
		|Login.xlsx|
	Then I should see logged in successfully
	
	@4383-ACTGRP-MEET-WEEKLYonFRI-SUBMITJLG-SYNK-DISP+REPAYwithMEE-Weeklyloanevery1weeks-Disburse-ModifyfuturMeet-to15April2015-Makerepayment
Scenario:4383-ACTGRP-MEET-WEEKLYonFRI-SUBMITJLG-SYNK-DISP+REPAYwithMEE-Weeklyloanevery1weeks-Disburse-ModifyfuturMeet-to15April2015-Makerepayment
     
      Given I setup the product loan "Setup"
		| Productloannavigation.xlsx |
	 Then I entered the values into product loan from "ProductLoanInput" Sheet
		|4350-Simple-Group-Loan-Product-Loanproduct.xlsx|
     Given I setup the group
	 When I entered the values into group from "Input" sheet
	  	|4383-ACTGRP-MEET-WEEKLYonFRI-SUBMITJLG-SYNK-DISP+REPAYwithMEE-Weeklyloanevery1weeks-Disburse-ModifyfuturMeet-to15April2015-Makerepayment-Newcreateloan1.xlsx|		  								  				  				  			
	 Then I entered the values into client from "Input" sheet
	 	|Createclient.xlsx|	 				  								  				  				  			
	 When I set up the new create loan from "NewLoanInput" sheet
	  	|4383-ACTGRP-MEET-WEEKLYonFRI-SUBMITJLG-SYNK-DISP+REPAYwithMEE-Weeklyloanevery1weeks-Disburse-ModifyfuturMeet-to15April2015-Makerepayment-Newcreateloan1.xlsx|
	Then I verified the following Tabs details successfully 
	    |4383-ACTGRP-MEET-WEEKLYonFRI-SUBMITJLG-SYNK-DISP+REPAYwithMEE-Weeklyloanevery1weeks-Disburse-ModifyfuturMeet-to15April2015-Makerepayment-Newcreateloan1.xlsx|Summary|Repayment Schedule|
	
@4384-ACTGRP-MEET-WEEKLYonFRI-SUBMITJLG-SYNK-DISP+REPAYwithMEE-Weeklyloanevery1weeks-Disburse-ModifyfuturMeet-to15MARCH2015
Scenario:4384-ACTGRP-MEET-WEEKLYonFRI-SUBMITJLG-SYNK-DISP+REPAYwithMEE-Weeklyloanevery1weeks-Disburse-ModifyfuturMeet-to15MARCH2015
     
     Given I setup the group
	 When I entered the values into group from "Input" sheet
	  	|4384-ACTGRP-MEET-WEEKLYonFRI-SUBMITJLG-SYNK-DISP+REPAYwithMEE-Weeklyloanevery1weeks-Disburse-ModifyfuturMeet-to15MARCH2015-Newcreateloan1.xlsx|		  								  				  				  			
	 Then I entered the values into client from "Input" sheet
	 	|Createclient.xlsx|	 				  								  				  				  			
	 When I set up the new create loan from "NewLoanInput" sheet
	  	|4384-ACTGRP-MEET-WEEKLYonFRI-SUBMITJLG-SYNK-DISP+REPAYwithMEE-Weeklyloanevery1weeks-Disburse-ModifyfuturMeet-to15MARCH2015-Newcreateloan1.xlsx|
	 Then I verified the following Tabs details successfully 
	    |4384-ACTGRP-MEET-WEEKLYonFRI-SUBMITJLG-SYNK-DISP+REPAYwithMEE-Weeklyloanevery1weeks-Disburse-ModifyfuturMeet-to15MARCH2015-Newcreateloan1.xlsx|Summary|Repayment Schedule|
	 
@4385-ACTGRP-MEET-WEEKLYonFRI-SUBMITJLG-SYNK-DISP+REPAYwithMEE-Weeklyloanevery1weeks-Disburse-ModifyfuturMeet-From10April2015-to-11April2016
Scenario:4385-ACTGRP-MEET-WEEKLYonFRI-SUBMITJLG-SYNK-DISP+REPAYwithMEE-Weeklyloanevery1weeks-Disburse-ModifyfuturMeet-From10April2015-to-11April2016
     
     Given I setup the group
	 When I entered the values into group from "Input" sheet
	  	|4385-ACTGRP-MEET-WEEKLYonFRI-SUBMITJLG-SYNK-DISP+REPAYwithMEE-Weeklyloanevery1weeks-Disburse-ModifyfuturMeet-From10April2015-to-11April2016-Newcreateloan1.xlsx|		  								  				  				  			
	 Then I entered the values into client from "Input" sheet
	 	|Createclient.xlsx|	 				  								  				  				  			
	 When I set up the new create loan from "NewLoanInput" sheet
	  	|4385-ACTGRP-MEET-WEEKLYonFRI-SUBMITJLG-SYNK-DISP+REPAYwithMEE-Weeklyloanevery1weeks-Disburse-ModifyfuturMeet-From10April2015-to-11April2016-Newcreateloan1.xlsx|
	Then I verified the following Tabs details successfully 
	    |4385-ACTGRP-MEET-WEEKLYonFRI-SUBMITJLG-SYNK-DISP+REPAYwithMEE-Weeklyloanevery1weeks-Disburse-ModifyfuturMeet-From10April2015-to-11April2016-Newcreateloan1.xlsx|Summary|Repayment Schedule|
	
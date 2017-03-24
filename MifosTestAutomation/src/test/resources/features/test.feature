Feature:RBI

Background:
	Given I navigate to mifos using "default#/"
	And I login into mifos site using "Login" excel sheet
		|Login.xlsx|
	Then I should see logged in successfully


@RunnerClass1
Scenario:4376-ACTGRP-MEET-WEEKLYonFRI-SUBJLG-SYNK-DISP+REPAYwithMEET-Weeklyloanevery1weeks-Modapp-Synkrepaywithmeet-Changedisbdate
     
     Given I setup the group
	 When I entered the values into group from "Input" sheet
	  	|4376-ACTGRP-MEET-WEEKLYonFRI-SUBJLG-SYNK-DISP+REPAYwithMEET-Weeklyloanevery1weeks-Modapp-Synkrepaywithmeet-Changedisbdate-Newcreateloan1.xlsx|		  								  				  				  			
	 Then I entered the values into client from "Input" sheet
	 	|Createclient.xlsx|	 				  								  				  				  			
	 When I set up the new create loan from "NewLoanInput" sheet
	  	|4376-ACTGRP-MEET-WEEKLYonFRI-SUBJLG-SYNK-DISP+REPAYwithMEET-Weeklyloanevery1weeks-Modapp-Synkrepaywithmeet-Changedisbdate-Newcreateloan1.xlsx|
	 And I modify New Account from "ModifyLoan" sheet
	    |4376-ACTGRP-MEET-WEEKLYonFRI-SUBJLG-SYNK-DISP+REPAYwithMEET-Weeklyloanevery1weeks-Modapp-Synkrepaywithmeet-Changedisbdate-Newcreateloan1.xlsx|
	 Then I verified the following Tabs details successfully 
	    |4376-ACTGRP-MEET-WEEKLYonFRI-SUBJLG-SYNK-DISP+REPAYwithMEET-Weeklyloanevery1weeks-Modapp-Synkrepaywithmeet-Changedisbdate-Newcreateloan1.xlsx|Summary|Repayment Schedule|
	
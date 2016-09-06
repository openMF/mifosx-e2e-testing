Feature:Centers

Background:
	Given I navigate to mifos using "default7#/"
	And I login into mifos site using "Login" excel sheet
		|Login.xlsx|
	Then I should see logged in successfully
	
@4445-ACTCTR-MEETING-WEEKLYonFRI-SUBMITJLGloan-SYNK-DISP+REPAYwithMEETING-Weeklyloanevery1weeks-Modapp-Synkrepaywithmeeting-Changedisbdate
Scenario:4445-ACTCTR-MEETING-WEEKLYonFRI-SUBMITJLGloan-SYNK-DISP+REPAYwithMEETING-Weeklyloanevery1weeks-Modapp-Synkrepaywithmeeting-Changedisbdate
	 Given I setup the product loan "Setup"
		| Productloannavigation.xlsx |
	 Then I entered the values into product loan from "ProductLoanInput" Sheet
		|4350-Simple-Group-Loan-Product-Loanproduct.xlsx|
	 Given I setup the center
	 When I entered the values into center from "Input" sheet
	 |4445-ACTCTR-MEETING-WEEKLYonFRI-SUBMITJLGloan-SYNK-DISP+REPAYwithMEETING-Weeklyloanevery1weeks-Modapp-Synkrepaywithmeeting-Changedisbdate.xlsx|

	 Then I entered the values into group from "Group" sheet
     |4445-ACTCTR-MEETING-WEEKLYonFRI-SUBMITJLGloan-SYNK-DISP+REPAYwithMEETING-Weeklyloanevery1weeks-Modapp-Synkrepaywithmeeting-Changedisbdate.xlsx|		  								  				  				  			
	 Then I entered the values into client from "Input" sheet
	 	|Createclient.xlsx|	 				  								  				  				  			
	 When I set up the new create loan from "NewLoanInput" sheet
	 |4445-ACTCTR-MEETING-WEEKLYonFRI-SUBMITJLGloan-SYNK-DISP+REPAYwithMEETING-Weeklyloanevery1weeks-Modapp-Synkrepaywithmeeting-Changedisbdate.xlsx|
	 And I modify New Loan Account from "ModifyLoan" sheet
	    |4445-ACTCTR-MEETING-WEEKLYonFRI-SUBMITJLGloan-SYNK-DISP+REPAYwithMEETING-Weeklyloanevery1weeks-Modapp-Synkrepaywithmeeting-Changedisbdate.xlsx|
	 Then I verified the following Tabs details successfully 
	    |4445-ACTCTR-MEETING-WEEKLYonFRI-SUBMITJLGloan-SYNK-DISP+REPAYwithMEETING-Weeklyloanevery1weeks-Modapp-Synkrepaywithmeeting-Changedisbdate.xlsx|Summary|Repayment Schedule|

	@4446-ACTCTR-MEET-WEEKLYonFRI-SUBMITJLGloan-SYNK-DISP+REPAYwithMEE-Weeklyloanevery1weeks-DuringAPP-Change-DISDATEotherthanmeetingdate
Scenario:4446-ACTCTR-MEET-WEEKLYonFRI-SUBMITJLGloan-SYNK-DISP+REPAYwithMEE-Weeklyloanevery1weeks-DuringAPP-Change-DISDATEotherthanmeetingdate
	 Given I setup the center
	 When I entered the values into center from "Input" sheet
	 |4446-ACTCTR-MEET-WEEKLYonFRI-SUBMITJLGloan-SYNK-DISP+REPAYwithMEE-Weeklyloanevery1weeks-DuringAPP-Change-DISDATEotherthanmeetingdate.xlsx|

	 Then I entered the values into group from "Group" sheet
     |4446-ACTCTR-MEET-WEEKLYonFRI-SUBMITJLGloan-SYNK-DISP+REPAYwithMEE-Weeklyloanevery1weeks-DuringAPP-Change-DISDATEotherthanmeetingdate.xlsx|		  								  				  				  			
	 Then I entered the values into client from "Input" sheet
	 	|Createclient.xlsx|		 				  								  				  				  			
	 When I set up the new create loan from "NewLoanInput" sheet
	 |4446-ACTCTR-MEET-WEEKLYonFRI-SUBMITJLGloan-SYNK-DISP+REPAYwithMEE-Weeklyloanevery1weeks-DuringAPP-Change-DISDATEotherthanmeetingdate.xlsx|

@4447-ACTCTR-MEET-WEEKLYonFRI-SUBMITJLG-SYNK-DISP+REPAYwithMEE-Weeklyloanevery1weeks-DuringAPP-Change-DISDATE-othermeetingdate
Scenario:4447-ACTCTR-MEET-WEEKLYonFRI-SUBMITJLG-SYNK-DISP+REPAYwithMEE-Weeklyloanevery1weeks-DuringAPP-Change-DISDATE-othermeetingdate
	 Given I setup the center
	 When I entered the values into center from "Input" sheet
	 |4447-ACTCTR-MEET-WEEKLYonFRI-SUBMITJLG-SYNK-DISP+REPAYwithMEE-Weeklyloanevery1weeks-DuringAPP-Change-DISDATE-othermeetingdate.xlsx|
	 Then I entered the values into group from "Group" sheet
     |4447-ACTCTR-MEET-WEEKLYonFRI-SUBMITJLG-SYNK-DISP+REPAYwithMEE-Weeklyloanevery1weeks-DuringAPP-Change-DISDATE-othermeetingdate.xlsx|		  								  				  				  			
	 Then I entered the values into client from "Input" sheet
	 	|Createclient.xlsx|		 				  								  				  				  			
	 When I set up the new create loan from "NewLoanInput" sheet
	 |4447-ACTCTR-MEET-WEEKLYonFRI-SUBMITJLG-SYNK-DISP+REPAYwithMEE-Weeklyloanevery1weeks-DuringAPP-Change-DISDATE-othermeetingdate.xlsx|
	 Then I verified the following Tabs details successfully 
	 |4447-ACTCTR-MEET-WEEKLYonFRI-SUBMITJLG-SYNK-DISP+REPAYwithMEE-Weeklyloanevery1weeks-DuringAPP-Change-DISDATE-othermeetingdate.xlsx|Summary|Repayment Schedule|

@4448-ACTCTR-MEET-WEEKLYonFRI-SUBMITJLG-SYNK-DISP+REPAYwithMEE-Weeklyloanevery1weeks-DuringDIS-Change-EX-DISDATE-otherthanmeetingdate
Scenario:4448-ACTCTR-MEET-WEEKLYonFRI-SUBMITJLG-SYNK-DISP+REPAYwithMEE-Weeklyloanevery1weeks-DuringDIS-Change-EX-DISDATE-otherthanmeetingdate
	 Given I setup the center
	 When I entered the values into center from "Input" sheet
	 |4448-ACTCTR-MEET-WEEKLYonFRI-SUBMITJLG-SYNK-DISP+REPAYwithMEE-Weeklyloanevery1weeks-DuringDIS-Change-EX-DISDATE-otherthanmeetingdate.xlsx|
	 Then I entered the values into group from "Group" sheet
     |4448-ACTCTR-MEET-WEEKLYonFRI-SUBMITJLG-SYNK-DISP+REPAYwithMEE-Weeklyloanevery1weeks-DuringDIS-Change-EX-DISDATE-otherthanmeetingdate.xlsx|		  								  				  				  			
	 Then I entered the values into client from "Input" sheet
	 	|Createclient.xlsx|		 				  								  				  				  			
	 When I set up the new create loan from "NewLoanInput" sheet
	 |4448-ACTCTR-MEET-WEEKLYonFRI-SUBMITJLG-SYNK-DISP+REPAYwithMEE-Weeklyloanevery1weeks-DuringDIS-Change-EX-DISDATE-otherthanmeetingdate.xlsx|

@4449-MEET-WEEKLYonFRI-SUBMITJLG-SYNK-DISP+REPAYwithMEE-Weeklyloanevery1weeks-DuringDIS-Change-EX-DISDATE-othermeetingdate
Scenario:4449-MEET-WEEKLYonFRI-SUBMITJLG-SYNK-DISP+REPAYwithMEE-Weeklyloanevery1weeks-DuringDIS-Change-EX-DISDATE-othermeetingdate
	 Given I setup the center
	 When I entered the values into center from "Input" sheet
	 |4449-MEET-WEEKLYonFRI-SUBMITJLG-SYNK-DISP+REPAYwithMEE-Weeklyloanevery1weeks-DuringDIS-Change-EX-DISDATE-othermeetingdate.xlsx|
	 Then I entered the values into group from "Group" sheet
     |4449-MEET-WEEKLYonFRI-SUBMITJLG-SYNK-DISP+REPAYwithMEE-Weeklyloanevery1weeks-DuringDIS-Change-EX-DISDATE-othermeetingdate.xlsx|		  								  				  				  			
	 Then I entered the values into client from "Input" sheet
	 	|Createclient.xlsx|		 				  								  				  				  			
	 When I set up the new create loan from "NewLoanInput" sheet
	 |4449-MEET-WEEKLYonFRI-SUBMITJLG-SYNK-DISP+REPAYwithMEE-Weeklyloanevery1weeks-DuringDIS-Change-EX-DISDATE-othermeetingdate.xlsx|
	 Then I verified the following Tabs details successfully 
	 |4449-MEET-WEEKLYonFRI-SUBMITJLG-SYNK-DISP+REPAYwithMEE-Weeklyloanevery1weeks-DuringDIS-Change-EX-DISDATE-othermeetingdate.xlsx|Summary|Repayment Schedule|
	 
@4450-ACTCTR-MEET-WEEKLYonFRI-SUBMITJLG-SYNK-DISP+REPAYwithMEE-Weeklyloanevery1weeks-Disburse-Modifymeeting-toWednesday
Scenario:4450-ACTCTR-MEET-WEEKLYonFRI-SUBMITJLG-SYNK-DISP+REPAYwithMEE-Weeklyloanevery1weeks-Disburse-Modifymeeting-toWednesday
	 Given I setup the center
	 When I entered the values into center from "Input" sheet
	 |4450-ACTCTR-MEET-WEEKLYonFRI-SUBMITJLG-SYNK-DISP+REPAYwithMEE-Weeklyloanevery1weeks-Disburse-Modifymeeting-toWednesday.xlsx|
	 Then I entered the values into group from "Group" sheet
     |4450-ACTCTR-MEET-WEEKLYonFRI-SUBMITJLG-SYNK-DISP+REPAYwithMEE-Weeklyloanevery1weeks-Disburse-Modifymeeting-toWednesday.xlsx|		  								  				  				  			
	 Then I entered the values into client from "Input" sheet
	 	|Createclient.xlsx|		 				  								  				  				  			
	 When I set up the new create loan from "NewLoanInput" sheet
	 |4450-ACTCTR-MEET-WEEKLYonFRI-SUBMITJLG-SYNK-DISP+REPAYwithMEE-Weeklyloanevery1weeks-Disburse-Modifymeeting-toWednesday.xlsx|
	 Then I Navigate Back to Current Center Page from "Center Page" sheet
	 |4450-ACTCTR-MEET-WEEKLYonFRI-SUBMITJLG-SYNK-DISP+REPAYwithMEE-Weeklyloanevery1weeks-Disburse-Modifymeeting-toWednesday.xlsx|
	 And I navigate To Loan Account Page
	 Then I verified the following Tabs details successfully 
	 |4450-ACTCTR-MEET-WEEKLYonFRI-SUBMITJLG-SYNK-DISP+REPAYwithMEE-Weeklyloanevery1weeks-Disburse-Modifymeeting-toWednesday.xlsx|Summary|Repayment Schedule|
	 
@4451-ACTCTR-MEET-WEEKLYonFRI-SUBMITJLG-SYNK-DISP+REPAYwithMEE-Weeklyloanevery1weeks-Disburse-Modifyfuturemeeting-to15April2015
Scenario:4451-ACTCTR-MEET-WEEKLYonFRI-SUBMITJLG-SYNK-DISP+REPAYwithMEE-Weeklyloanevery1weeks-Disburse-Modifyfuturemeeting-to15April2015
	 Given I setup the center
	 When I entered the values into center from "Input" sheet
	 |4451-ACTCTR-MEET-WEEKLYonFRI-SUBMITJLG-SYNK-DISP+REPAYwithMEE-Weeklyloanevery1weeks-Disburse-Modifyfuturemeeting-to15April2015.xlsx|
	 Then I entered the values into group from "Group" sheet
     |4451-ACTCTR-MEET-WEEKLYonFRI-SUBMITJLG-SYNK-DISP+REPAYwithMEE-Weeklyloanevery1weeks-Disburse-Modifyfuturemeeting-to15April2015.xlsx|		  								  				  				  			
	 Then I entered the values into client from "Input" sheet
	 	|Createclient.xlsx|		 				  								  				  				  			
	 When I set up the new create loan from "NewLoanInput" sheet
	 |4451-ACTCTR-MEET-WEEKLYonFRI-SUBMITJLG-SYNK-DISP+REPAYwithMEE-Weeklyloanevery1weeks-Disburse-Modifyfuturemeeting-to15April2015.xlsx|
	 Then I Navigate Back to Current Center Page from "Center Page" sheet
	 |4451-ACTCTR-MEET-WEEKLYonFRI-SUBMITJLG-SYNK-DISP+REPAYwithMEE-Weeklyloanevery1weeks-Disburse-Modifyfuturemeeting-to15April2015.xlsx|
	 Then i validate and Verify from "Output" sheet
	 |4451-ACTCTR-MEET-WEEKLYonFRI-SUBMITJLG-SYNK-DISP+REPAYwithMEE-Weeklyloanevery1weeks-Disburse-Modifyfuturemeeting-to15April2015.xlsx|
	  
@4452-ACTCTR-MEET-WEEKLYonFRI-SUBMITJLG-SYNK-DISP+REPAYwithMEE-Weeklyloanevery1weeks-Disburse-Modifyfuturemeeting-to15April2015-Makerepayment
Scenario:4452-ACTCTR-MEET-WEEKLYonFRI-SUBMITJLG-SYNK-DISP+REPAYwithMEE-Weeklyloanevery1weeks-Disburse-Modifyfuturemeeting-to15April2015-Makerepayment
	 Given I setup the center
	 When I entered the values into center from "Input" sheet
	 |4452-ACTCTR-MEET-WEEKLYonFRI-SUBMITJLG-SYNK-DISP+REPAYwithMEE-Weeklyloanevery1weeks-Disburse-Modifyfuturemeeting-to15April2015-Makerepayment.xlsx|
	 Then I entered the values into group from "Group" sheet
     |4452-ACTCTR-MEET-WEEKLYonFRI-SUBMITJLG-SYNK-DISP+REPAYwithMEE-Weeklyloanevery1weeks-Disburse-Modifyfuturemeeting-to15April2015-Makerepayment.xlsx|		  								  				  				  			
	 Then I entered the values into client from "Input" sheet
	 	|Createclient.xlsx|		 				  								  				  				  			
	 When I set up the new create loan from "NewLoanInput" sheet
	 |4452-ACTCTR-MEET-WEEKLYonFRI-SUBMITJLG-SYNK-DISP+REPAYwithMEE-Weeklyloanevery1weeks-Disburse-Modifyfuturemeeting-to15April2015-Makerepayment.xlsx|
	 Then I Navigate Back to Current Center Page from "Center Page" sheet
	 |4452-ACTCTR-MEET-WEEKLYonFRI-SUBMITJLG-SYNK-DISP+REPAYwithMEE-Weeklyloanevery1weeks-Disburse-Modifyfuturemeeting-to15April2015-Makerepayment.xlsx|
	 And I navigate To Loan Account Page
	 Then I make repayment and verified the following tabs
     |4452-ACTCTR-MEET-WEEKLYonFRI-SUBMITJLG-SYNK-DISP+REPAYwithMEE-Weeklyloanevery1weeks-Disburse-Modifyfuturemeeting-to15April2015-Makerepayment.xlsx|Repay1|Summary|Repayment Schedule|
	 
@4453-ACTCTR-MEET-WEEKLYonFRI-SUBMITJLG-SYNK-DISP+REPAYwithMEE-Weeklyloanevery1weeks-Disburse-ModiFurMeet-to15April2015-MakeRepay-ModiFurMeetto20April2015.
Scenario:4453-ACTCTR-MEET-WEEKLYonFRI-SUBMITJLG-SYNK-DISP+REPAYwithMEE-Weeklyloanevery1weeks-Disburse-ModiFurMeet-to15April2015-MakeRepay-ModiFurMeetto20April2015.
	 Given I setup the center
	 When I entered the values into center from "Input" sheet
	 |4453-ACTCTR-MEET-WEEKLYonFRI-SUBMITJLG-SYNK-DISP+REPAYwithMEE-Weeklyloanevery1weeks-Disburse-ModiFurMeet-to15April2015-MakeRepay-ModiFurMeetto20April2015..xlsx|
	 Then I entered the values into group from "Group" sheet
     |4453-ACTCTR-MEET-WEEKLYonFRI-SUBMITJLG-SYNK-DISP+REPAYwithMEE-Weeklyloanevery1weeks-Disburse-ModiFurMeet-to15April2015-MakeRepay-ModiFurMeetto20April2015..xlsx|		  								  				  				  			
	 Then I entered the values into client from "Input" sheet
	 	|Createclient.xlsx|		 				  								  				  				  			
	 When I set up the new create loan from "NewLoanInput" sheet
	 |4453-ACTCTR-MEET-WEEKLYonFRI-SUBMITJLG-SYNK-DISP+REPAYwithMEE-Weeklyloanevery1weeks-Disburse-ModiFurMeet-to15April2015-MakeRepay-ModiFurMeetto20April2015..xlsx|
	 Then I Navigate Back to Current Center Page from "Center Page" sheet
	 |4453-ACTCTR-MEET-WEEKLYonFRI-SUBMITJLG-SYNK-DISP+REPAYwithMEE-Weeklyloanevery1weeks-Disburse-ModiFurMeet-to15April2015-MakeRepay-ModiFurMeetto20April2015..xlsx|
	 And I navigate To Loan Account Page
	 Then I make repayment and verified the following tabs
     |4453-ACTCTR-MEET-WEEKLYonFRI-SUBMITJLG-SYNK-DISP+REPAYwithMEE-Weeklyloanevery1weeks-Disburse-ModiFurMeet-to15April2015-MakeRepay-ModiFurMeetto20April2015..xlsx|Repay1|
	 Then I Navigate Back to Current Center Page from "Center Page1" sheet
	 |4453-ACTCTR-MEET-WEEKLYonFRI-SUBMITJLG-SYNK-DISP+REPAYwithMEE-Weeklyloanevery1weeks-Disburse-ModiFurMeet-to15April2015-MakeRepay-ModiFurMeetto20April2015..xlsx|
	 And I navigate To Loan Account Page
	 Then I verified the following Tabs details successfully 
	 |4453-ACTCTR-MEET-WEEKLYonFRI-SUBMITJLG-SYNK-DISP+REPAYwithMEE-Weeklyloanevery1weeks-Disburse-ModiFurMeet-to15April2015-MakeRepay-ModiFurMeetto20April2015..xlsx|Summary|Repayment Schedule|
	 
@4454-ACTCTR-MEET-WEEKLYonFRI-SUBMITJLG-SYNK-DISP+REPAYwithMEE-Weeklyloanevery1weeks-Disburse-ModiFurMeet-to15April2015-MakeRepay-ModiFurMeetto20April2015-ModiMeettoWed
Scenario:4454-ACTCTR-MEET-WEEKLYonFRI-SUBMITJLG-SYNK-DISP+REPAYwithMEE-Weeklyloanevery1weeks-Disburse-ModiFurMeet-to15April2015-MakeRepay-ModiFurMeetto20April2015-ModiMeettoWed
	 Given I setup the center
	 When I entered the values into center from "Input" sheet
	 |4454-ACTCTR-MEET-WEEKLYonFRI-SUBMITJLG-SYNK-DISP+REPAYwithMEE-Weeklyloanevery1weeks-Disburse-ModiFurMeet-to15April2015-MakeRepay-ModiFurMeetto20April2015-ModiMeettoWed.xlsx|
	 Then I entered the values into group from "Group" sheet
     |4454-ACTCTR-MEET-WEEKLYonFRI-SUBMITJLG-SYNK-DISP+REPAYwithMEE-Weeklyloanevery1weeks-Disburse-ModiFurMeet-to15April2015-MakeRepay-ModiFurMeetto20April2015-ModiMeettoWed.xlsx|		  								  				  				  			
	 Then I entered the values into client from "Input" sheet
	 	|Createclient.xlsx|		 				  								  				  				  			
	 When I set up the new create loan from "NewLoanInput" sheet
	 |4454-ACTCTR-MEET-WEEKLYonFRI-SUBMITJLG-SYNK-DISP+REPAYwithMEE-Weeklyloanevery1weeks-Disburse-ModiFurMeet-to15April2015-MakeRepay-ModiFurMeetto20April2015-ModiMeettoWed.xlsx|
	 Then I Navigate Back to Current Center Page from "Center Page" sheet
	 |4454-ACTCTR-MEET-WEEKLYonFRI-SUBMITJLG-SYNK-DISP+REPAYwithMEE-Weeklyloanevery1weeks-Disburse-ModiFurMeet-to15April2015-MakeRepay-ModiFurMeetto20April2015-ModiMeettoWed.xlsx|
	 And I navigate To Loan Account Page
	 Then I make repayment and verified the following tabs
     |4454-ACTCTR-MEET-WEEKLYonFRI-SUBMITJLG-SYNK-DISP+REPAYwithMEE-Weeklyloanevery1weeks-Disburse-ModiFurMeet-to15April2015-MakeRepay-ModiFurMeetto20April2015-ModiMeettoWed.xlsx|Repay1|
	 Then I Navigate Back to Current Center Page from "Center Page1" sheet
	 |4454-ACTCTR-MEET-WEEKLYonFRI-SUBMITJLG-SYNK-DISP+REPAYwithMEE-Weeklyloanevery1weeks-Disburse-ModiFurMeet-to15April2015-MakeRepay-ModiFurMeetto20April2015-ModiMeettoWed.xlsx|
	 And I navigate To Loan Account Page
	 Then I verified the following Tabs details successfully 
	 |4454-ACTCTR-MEET-WEEKLYonFRI-SUBMITJLG-SYNK-DISP+REPAYwithMEE-Weeklyloanevery1weeks-Disburse-ModiFurMeet-to15April2015-MakeRepay-ModiFurMeetto20April2015-ModiMeettoWed.xlsx|Summary|Repayment Schedule|

@4455-ACTCTR-MEET-WEEKLYonFRI-SUBMITJLG-SYNK-DISP+REPAYwithMEE-Weeklyloanevery1weeks-Disburse-ModifymeetingtoDaily
Scenario:4455-ACTCTR-MEET-WEEKLYonFRI-SUBMITJLG-SYNK-DISP+REPAYwithMEE-Weeklyloanevery1weeks-Disburse-ModifymeetingtoDaily
	 Given I setup the center
	 When I entered the values into center from "Input" sheet
	 |4455-ACTCTR-MEET-WEEKLYonFRI-SUBMITJLG-SYNK-DISP+REPAYwithMEE-Weeklyloanevery1weeks-Disburse-ModifymeetingtoDaily.xlsx|
	 Then I entered the values into group from "Group" sheet
     |4455-ACTCTR-MEET-WEEKLYonFRI-SUBMITJLG-SYNK-DISP+REPAYwithMEE-Weeklyloanevery1weeks-Disburse-ModifymeetingtoDaily.xlsx|		  								  				  				  			
	 Then I entered the values into client from "Input" sheet
	 	|Createclient.xlsx|		 				  								  				  				  			
	 When I set up the new create loan from "NewLoanInput" sheet
	 |4455-ACTCTR-MEET-WEEKLYonFRI-SUBMITJLG-SYNK-DISP+REPAYwithMEE-Weeklyloanevery1weeks-Disburse-ModifymeetingtoDaily.xlsx|
	 Then I Navigate Back to Current Center Page from "Center Page" sheet
	 |4455-ACTCTR-MEET-WEEKLYonFRI-SUBMITJLG-SYNK-DISP+REPAYwithMEE-Weeklyloanevery1weeks-Disburse-ModifymeetingtoDaily.xlsx|

@4456-ACTCTR-MEET-WEEKLYonFRI-SUBMITJLG-SYNK-DISP+REPAYwithMEE-Weeklyloanevery1weeks-Disburse-ModifymeetingtoBiWeekly
Scenario:4456-ACTCTR-MEET-WEEKLYonFRI-SUBMITJLG-SYNK-DISP+REPAYwithMEE-Weeklyloanevery1weeks-Disburse-ModifymeetingtoBiWeekly
	 Given I setup the center
	 When I entered the values into center from "Input" sheet
	 |4456-ACTCTR-MEET-WEEKLYonFRI-SUBMITJLG-SYNK-DISP+REPAYwithMEE-Weeklyloanevery1weeks-Disburse-ModifymeetingtoBiWeekly.xlsx|
	 Then I entered the values into group from "Group" sheet
     |4456-ACTCTR-MEET-WEEKLYonFRI-SUBMITJLG-SYNK-DISP+REPAYwithMEE-Weeklyloanevery1weeks-Disburse-ModifymeetingtoBiWeekly.xlsx|		  								  				  				  			
	 Then I entered the values into client from "Input" sheet
	 	|Createclient.xlsx|		 				  								  				  				  			
	 When I set up the new create loan from "NewLoanInput" sheet
	 |4456-ACTCTR-MEET-WEEKLYonFRI-SUBMITJLG-SYNK-DISP+REPAYwithMEE-Weeklyloanevery1weeks-Disburse-ModifymeetingtoBiWeekly.xlsx|
	 Then I Navigate Back to Current Center Page from "Center Page" sheet
	 |4456-ACTCTR-MEET-WEEKLYonFRI-SUBMITJLG-SYNK-DISP+REPAYwithMEE-Weeklyloanevery1weeks-Disburse-ModifymeetingtoBiWeekly.xlsx|

@4457-ACTCTR-MEET-WEEKLYonFRI-SUBMITJLG-SYNK-DISP+REPAYwithMEE-Weeklyloanevery1weeks-Disburse-ModifymeetingtoMonthly
Scenario:4457-ACTCTR-MEET-WEEKLYonFRI-SUBMITJLG-SYNK-DISP+REPAYwithMEE-Weeklyloanevery1weeks-Disburse-ModifymeetingtoMonthly
	 Given I setup the center
	 When I entered the values into center from "Input" sheet
	 |4457-ACTCTR-MEET-WEEKLYonFRI-SUBMITJLG-SYNK-DISP+REPAYwithMEE-Weeklyloanevery1weeks-Disburse-ModifymeetingtoMonthly.xlsx|
	 Then I entered the values into group from "Group" sheet
     |4457-ACTCTR-MEET-WEEKLYonFRI-SUBMITJLG-SYNK-DISP+REPAYwithMEE-Weeklyloanevery1weeks-Disburse-ModifymeetingtoMonthly.xlsx|		  								  				  				  			
	 Then I entered the values into client from "Input" sheet
	 	|Createclient.xlsx|		 				  								  				  				  			
	 When I set up the new create loan from "NewLoanInput" sheet
	 |4457-ACTCTR-MEET-WEEKLYonFRI-SUBMITJLG-SYNK-DISP+REPAYwithMEE-Weeklyloanevery1weeks-Disburse-ModifymeetingtoMonthly.xlsx|
	 Then I Navigate Back to Current Center Page from "Center Page" sheet
	 |4457-ACTCTR-MEET-WEEKLYonFRI-SUBMITJLG-SYNK-DISP+REPAYwithMEE-Weeklyloanevery1weeks-Disburse-ModifymeetingtoMonthly.xlsx|

@4458-ACTCTR-MEET-WEEKLYonFRI-SUBMITJLG-SYNK-DISP+REPAYwithMEE-Weeklyloanevery1weeks-Disburse-ModifymeetingtoYearly
Scenario:4458-ACTCTR-MEET-WEEKLYonFRI-SUBMITJLG-SYNK-DISP+REPAYwithMEE-Weeklyloanevery1weeks-Disburse-ModifymeetingtoYearly
	 Given I setup the center
	 When I entered the values into center from "Input" sheet
	 |4458-ACTCTR-MEET-WEEKLYonFRI-SUBMITJLG-SYNK-DISP+REPAYwithMEE-Weeklyloanevery1weeks-Disburse-ModifymeetingtoYearly.xlsx|
	 Then I entered the values into group from "Group" sheet
     |4458-ACTCTR-MEET-WEEKLYonFRI-SUBMITJLG-SYNK-DISP+REPAYwithMEE-Weeklyloanevery1weeks-Disburse-ModifymeetingtoYearly.xlsx|		  								  				  				  			
	 Then I entered the values into client from "Input" sheet
	 	|Createclient.xlsx|		 				  								  				  				  			
	 When I set up the new create loan from "NewLoanInput" sheet
	 |4458-ACTCTR-MEET-WEEKLYonFRI-SUBMITJLG-SYNK-DISP+REPAYwithMEE-Weeklyloanevery1weeks-Disburse-ModifymeetingtoYearly.xlsx|
	 Then I Navigate Back to Current Center Page from "Center Page" sheet
	 |4458-ACTCTR-MEET-WEEKLYonFRI-SUBMITJLG-SYNK-DISP+REPAYwithMEE-Weeklyloanevery1weeks-Disburse-ModifymeetingtoYearly.xlsx|

@4459-ACTCTR-MEET-WEEKLYonFRI-DisburseJLGloanonmeetingdatewithevery2weeksrepayment
Scenario:4459-ACTCTR-MEET-WEEKLYonFRI-DisburseJLGloanonmeetingdatewithevery2weeksrepayment
	 Given I setup the center
	 When I entered the values into center from "Input" sheet
	 |4459-ACTCTR-MEET-WEEKLYonFRI-DisburseJLGloanonmeetingdatewithevery2weeksrepayment.xlsx|
	 Then I entered the values into group from "Group" sheet
     |4459-ACTCTR-MEET-WEEKLYonFRI-DisburseJLGloanonmeetingdatewithevery2weeksrepayment.xlsx|		  								  				  				  			
	 Then I entered the values into client from "Input" sheet
	 	|Createclient.xlsx|		 				  								  				  				  			
	 When I set up the new create loan from "NewLoanInput" sheet
	 |4459-ACTCTR-MEET-WEEKLYonFRI-DisburseJLGloanonmeetingdatewithevery2weeksrepayment.xlsx|
	 Then I verified the following Tabs details successfully 
	 |4459-ACTCTR-MEET-WEEKLYonFRI-DisburseJLGloanonmeetingdatewithevery2weeksrepayment|Summary|Repayment Schedule|
	 	 
@4460-ACTCTR-MEET-WEEKLYonFRI-Modifymeeting-Repetesonevery2weeksonWednesday-DisburseJLGloanonmeetingdatewithevery2weeksrepayment
Scenario:4460-ACTCTR-MEET-WEEKLYonFRI-Modifymeeting-Repetesonevery2weeksonWednesday-DisburseJLGloanonmeetingdatewithevery2weeksrepayment
	 Given I setup the center
	 When I entered the values into center from "Input" sheet
	 |4460-ACTCTR-MEET-WEEKLYonFRI-Modifymeeting-Repetesonevery2weeksonWednesday-DisburseJLGloanonmeetingdatewithevery2weeksrepayment.xlsx|
	 Then I entered the values into group from "Group" sheet
     |4460-ACTCTR-MEET-WEEKLYonFRI-Modifymeeting-Repetesonevery2weeksonWednesday-DisburseJLGloanonmeetingdatewithevery2weeksrepayment.xlsx|		  								  				  				  			
	 Then I entered the values into client from "Input" sheet
	 	|Createclient.xlsx|		 				  								  				  				  			
	 When I set up the new create loan from "NewLoanInput" sheet
	 |4460-ACTCTR-MEET-WEEKLYonFRI-Modifymeeting-Repetesonevery2weeksonWednesday-DisburseJLGloanonmeetingdatewithevery2weeksrepayment.xlsx|
	 Then I verified the following Tabs details successfully 
	 |4460-ACTCTR-MEET-WEEKLYonFRI-Modifymeeting-Repetesonevery2weeksonWednesday-DisburseJLGloanonmeetingdatewithevery2weeksrepayment.xlsx|Summary|Repayment Schedule|

@4461-ACTCTR-MEET-WEEKLYonFRI-Modifymeeting-Repetesonevery2weeksonWednesday-DisburseJLGloanonmeetingdatewithevery1weeksrepayment
Scenario:4461-ACTCTR-MEET-WEEKLYonFRI-Modifymeeting-Repetesonevery2weeksonWednesday-DisburseJLGloanonmeetingdatewithevery1weeksrepayment
	 Given I setup the center
	 When I entered the values into center from "Input" sheet
	 |4461-ACTCTR-MEET-WEEKLYonFRI-Modifymeeting-Repetesonevery2weeksonWednesday-DisburseJLGloanonmeetingdatewithevery1weeksrepayment.xlsx|
	 Then I entered the values into group from "Group" sheet
     |4461-ACTCTR-MEET-WEEKLYonFRI-Modifymeeting-Repetesonevery2weeksonWednesday-DisburseJLGloanonmeetingdatewithevery1weeksrepayment.xlsx|		  								  				  				  			
	 Then I entered the values into client from "Input" sheet
	 	|Createclient.xlsx|		 				  								  				  				  			
	 When I set up the new create loan from "NewLoanInput" sheet
	 |4461-ACTCTR-MEET-WEEKLYonFRI-Modifymeeting-Repetesonevery2weeksonWednesday-DisburseJLGloanonmeetingdatewithevery1weeksrepayment.xlsx|

@4462-ACTCTR-MEET-WEEKLYonFRI-Modifymeeting-Repetesonevery1weeksonWednesday-DisburseJLGloanonmeetingdatewithevery1weeksrepayment
Scenario:4462-ACTCTR-MEET-WEEKLYonFRI-Modifymeeting-Repetesonevery1weeksonWednesday-DisburseJLGloanonmeetingdatewithevery1weeksrepayment
	 Given I setup the center
	 When I entered the values into center from "Input" sheet
	 |4462-ACTCTR-MEET-WEEKLYonFRI-Modifymeeting-Repetesonevery1weeksonWednesday-DisburseJLGloanonmeetingdatewithevery1weeksrepayment.xlsx|
	 Then I entered the values into group from "Group" sheet
     |4462-ACTCTR-MEET-WEEKLYonFRI-Modifymeeting-Repetesonevery1weeksonWednesday-DisburseJLGloanonmeetingdatewithevery1weeksrepayment.xlsx|		  								  				  				  			
	 Then I entered the values into client from "Input" sheet
	 	|Createclient.xlsx|		 				  								  				  				  			
	 When I set up the new create loan from "NewLoanInput" sheet
	 |4462-ACTCTR-MEET-WEEKLYonFRI-Modifymeeting-Repetesonevery1weeksonWednesday-DisburseJLGloanonmeetingdatewithevery1weeksrepayment.xlsx|
	 Then I verified the following Tabs details successfully 
	 |4462-ACTCTR-MEET-WEEKLYonFRI-Modifymeeting-Repetesonevery1weeksonWednesday-DisburseJLGloanonmeetingdatewithevery1weeksrepayment.xlsx|Summary|Repayment Schedule|

@4463-ACTCTR-MEET-WEEKLYonFRI-Modifymeeting-Repetesonevery2weeksonWednesday-submitJLGloanOnFutureMEETDate-DisburseOn8-App-2015
Scenario:4463-ACTCTR-MEET-WEEKLYonFRI-Modifymeeting-Repetesonevery2weeksonWednesday-submitJLGloanOnFutureMEETDate-DisburseOn8-App-2015
	 Given I setup the center
	 When I entered the values into center from "Input" sheet
	 |4463-ACTCTR-MEET-WEEKLYonFRI-Modifymeeting-Repetesonevery2weeksonWednesday-submitJLGloanOnFutureMEETDate-DisburseOn8-App-2015.xlsx|
	 Then I entered the values into group from "Group" sheet
     |4463-ACTCTR-MEET-WEEKLYonFRI-Modifymeeting-Repetesonevery2weeksonWednesday-submitJLGloanOnFutureMEETDate-DisburseOn8-App-2015.xlsx|		  								  				  				  			
	 Then I entered the values into client from "Input" sheet
	 	|Createclient.xlsx|		 				  								  				  				  			
	 When I set up the new create loan from "NewLoanInput" sheet
	 |4463-ACTCTR-MEET-WEEKLYonFRI-Modifymeeting-Repetesonevery2weeksonWednesday-submitJLGloanOnFutureMEETDate-DisburseOn8-App-2015.xlsx|

@4464-ACTCTR-MEETING-EVERY1MONTH-SUBMITJLGloan-SYNK-DISP+REPAYwithMEETING-Monthlyloanevery2months
Scenario:4464-ACTCTR-MEETING-EVERY1MONTH-SUBMITJLGloan-SYNK-DISP+REPAYwithMEETING-Monthlyloanevery2months
	 Given I setup the center
	 When I entered the values into center from "Input" sheet
	 |4464-ACTCTR-MEETING-EVERY1MONTH-SUBMITJLGloan-SYNK-DISP+REPAYwithMEETING-Monthlyloanevery2months.xlsx|
	 Then I entered the values into group from "Group" sheet
     |4464-ACTCTR-MEETING-EVERY1MONTH-SUBMITJLGloan-SYNK-DISP+REPAYwithMEETING-Monthlyloanevery2months.xlsx|		  								  				  				  			
	 Then I entered the values into client from "Input" sheet
	 	|Createclient.xlsx|		 				  								  				  				  			
	 When I set up the new create loan from "NewLoanInput" sheet
	 |4464-ACTCTR-MEETING-EVERY1MONTH-SUBMITJLGloan-SYNK-DISP+REPAYwithMEETING-Monthlyloanevery2months.xlsx|
	 Then I verified the following Tabs details successfully 
	 |4464-ACTCTR-MEETING-EVERY1MONTH-SUBMITJLGloan-SYNK-DISP+REPAYwithMEETING-Monthlyloanevery2months.xlsx|Summary|Repayment Schedule|

@4465-ACTCTR-MEETING-EVERY2MONTH-SUBMITJLGloan-SYNK-DISP+REPAYwithMEETING-Monthlyloanevery1months
Scenario:4465-ACTCTR-MEETING-EVERY2MONTH-SUBMITJLGloan-SYNK-DISP+REPAYwithMEETING-Monthlyloanevery1months
	 Given I setup the center
	 When I entered the values into center from "Input" sheet
	 |4465-ACTCTR-MEETING-EVERY2MONTH-SUBMITJLGloan-SYNK-DISP+REPAYwithMEETING-Monthlyloanevery1months.xlsx|
	 Then I entered the values into group from "Group" sheet
     |4465-ACTCTR-MEETING-EVERY2MONTH-SUBMITJLGloan-SYNK-DISP+REPAYwithMEETING-Monthlyloanevery1months.xlsx|		  								  				  				  			
	 Then I entered the values into client from "Input" sheet
	 	|Createclient.xlsx|		 				  								  				  				  			
	 When I set up the new create loan from "NewLoanInput" sheet
	 |4465-ACTCTR-MEETING-EVERY2MONTH-SUBMITJLGloan-SYNK-DISP+REPAYwithMEETING-Monthlyloanevery1months.xlsx|

@4466-ACTCTR-MEETING-EVERY1YEAR-SUBMITJLGloan-SYNK-DISP+REPAYwithMEETING-Dailyloanevery1day
Scenario:4466-ACTCTR-MEETING-EVERY1YEAR-SUBMITJLGloan-SYNK-DISP+REPAYwithMEETING-Dailyloanevery1day
	 Given I setup the center
	 When I entered the values into center from "Input" sheet
	 |4466-ACTCTR-MEETING-EVERY1YEAR-SUBMITJLGloan-SYNK-DISP+REPAYwithMEETING-Dailyloanevery1day.xlsx|
	 Then I entered the values into group from "Group" sheet
     |4466-ACTCTR-MEETING-EVERY1YEAR-SUBMITJLGloan-SYNK-DISP+REPAYwithMEETING-Dailyloanevery1day.xlsx|		  								  				  				  			
	 Then I entered the values into client from "Input" sheet
	 	|Createclient.xlsx|		 				  								  				  				  			
	 When I set up the new create loan from "NewLoanInput" sheet
	 |4466-ACTCTR-MEETING-EVERY1YEAR-SUBMITJLGloan-SYNK-DISP+REPAYwithMEETING-Dailyloanevery1day.xlsx|
	 
@4467-ACTCTR-MEETING-EVERY1YEAR-SUBMITJLGloan-SYNK-DISP+REPAYwithMEETING-Monthlyloanevery2months
Scenario:4467-ACTCTR-MEETING-EVERY1YEAR-SUBMITJLGloan-SYNK-DISP+REPAYwithMEETING-Monthlyloanevery2months
	 Given I setup the center
	 When I entered the values into center from "Input" sheet
	 |4467-ACTCTR-MEETING-EVERY1YEAR-SUBMITJLGloan-SYNK-DISP+REPAYwithMEETING-Monthlyloanevery2months.xlsx|
	 Then I entered the values into group from "Group" sheet
     |4467-ACTCTR-MEETING-EVERY1YEAR-SUBMITJLGloan-SYNK-DISP+REPAYwithMEETING-Monthlyloanevery2months.xlsx|		  								  				  				  			
	 Then I entered the values into client from "Input" sheet
	 	|Createclient.xlsx|		 				  								  				  				  			
	 When I set up the new create loan from "NewLoanInput" sheet
	 |4467-ACTCTR-MEETING-EVERY1YEAR-SUBMITJLGloan-SYNK-DISP+REPAYwithMEETING-Monthlyloanevery2months.xlsx|
	 
@4468-ACTCTR-MEETING-EVERY1YEAR-SUBMITJLGloan-SYNK-DISP+REPAYwithMEETING-Yearlyloanevery2years
Scenario:4468-ACTCTR-MEETING-EVERY1YEAR-SUBMITJLGloan-SYNK-DISP+REPAYwithMEETING-Yearlyloanevery2years
	 Given I setup the center
	 When I entered the values into center from "Input" sheet
	 |4468-ACTCTR-MEETING-EVERY1YEAR-SUBMITJLGloan-SYNK-DISP+REPAYwithMEETING-Yearlyloanevery2years.xlsx|
	 Then I entered the values into group from "Group" sheet
     |4468-ACTCTR-MEETING-EVERY1YEAR-SUBMITJLGloan-SYNK-DISP+REPAYwithMEETING-Yearlyloanevery2years.xlsx|		  								  				  				  			
	 Then I entered the values into client from "Input" sheet
	 	|Createclient.xlsx|		 				  								  				  				  			
	 When I set up the new create loan from "NewLoanInput" sheet
	 |4468-ACTCTR-MEETING-EVERY1YEAR-SUBMITJLGloan-SYNK-DISP+REPAYwithMEETING-Yearlyloanevery2years.xlsx|
	 Then I verified the following Tabs details successfully 
	 |4468-ACTCTR-MEETING-EVERY1YEAR-SUBMITJLGloan-SYNK-DISP+REPAYwithMEETING-Yearlyloanevery2years.xlsx|Summary|Repayment Schedule|
	 
@4469-ACTCTR-MEETING-EVERY2YEAR-SUBMITJLGloan-SYNK-DISP+REPAYwithMEETING-Yearlyloanevery1years
Scenario:4469-ACTCTR-MEETING-EVERY2YEAR-SUBMITJLGloan-SYNK-DISP+REPAYwithMEETING-Yearlyloanevery1years
	 Given I setup the center
	 When I entered the values into center from "Input" sheet
	 |4469-ACTCTR-MEETING-EVERY2YEAR-SUBMITJLGloan-SYNK-DISP+REPAYwithMEETING-Yearlyloanevery1years.xlsx|
	 Then I entered the values into group from "Group" sheet
     |4469-ACTCTR-MEETING-EVERY2YEAR-SUBMITJLGloan-SYNK-DISP+REPAYwithMEETING-Yearlyloanevery1years.xlsx|		  								  				  				  			
	 Then I entered the values into client from "Input" sheet
	 	|Createclient.xlsx|		 				  								  				  				  			
	 When I set up the new create loan from "NewLoanInput" sheet
	 |4469-ACTCTR-MEETING-EVERY2YEAR-SUBMITJLGloan-SYNK-DISP+REPAYwithMEETING-Yearlyloanevery1years.xlsx|
	 
@4470-RBI-ACTCTR-NOMEET-ACTGRP-ACTCLIENT-DISJLG02JAN-COLLSHEETON09JAN
Scenario:4470-RBI-ACTCTR-NOMEET-ACTGRP-ACTCLIENT-DISJLG02JAN-COLLSHEETON09JAN
	 Given I setup the center
	 When I entered the values into center from "Input" sheet
	 |4470-RBI-ACTCTR-NOMEET-ACTGRP-ACTCLIENT-DISJLG02JAN-COLLSHEETON09JAN.xlsx|
	 Then I entered the values into group from "Group" sheet
     |4470-RBI-ACTCTR-NOMEET-ACTGRP-ACTCLIENT-DISJLG02JAN-COLLSHEETON09JAN.xlsx|		  								  				  				  			
	 Then I entered the values into client from "Input" sheet
	 	|Createclient.xlsx|	 				  								  				  				  			
	 When I set up the new create loan from "NewLoanInput" sheet
	 |4470-RBI-ACTCTR-NOMEET-ACTGRP-ACTCLIENT-DISJLG02JAN-COLLSHEETON09JAN.xlsx|
	 Then I navigate to collection Sheet
	 Then I Make Repayment Through "Collection" sheet
	 |4470-RBI-ACTCTR-NOMEET-ACTGRP-ACTCLIENT-DISJLG02JAN-COLLSHEETON09JAN.xlsx|
	 
@4471-RBI-ACTCTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JANWITHOUTSTAFF-COLLSHEETON09JAN
Scenario:4471-RBI-ACTCTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JANWITHOUTSTAFF-COLLSHEETON09JAN
	 Given I setup the center
	 When I entered the values into center from "Input" sheet
	 |4471-RBI-ACTCTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JANWITHOUTSTAFF-COLLSHEETON09JAN.xlsx|
	 Then I entered the values into group from "Group" sheet
     |4471-RBI-ACTCTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JANWITHOUTSTAFF-COLLSHEETON09JAN.xlsx|		  								  				  				  			
	 Then I entered the values into client from "Input" sheet
	 	|Createclient.xlsx|	 				  								  				  				  			
	 When I set up the new create loan from "NewLoanInput" sheet
	 |4471-RBI-ACTCTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JANWITHOUTSTAFF-COLLSHEETON09JAN.xlsx|
	 Then I navigate to collection Sheet
	 Then I Make Repayment Through "Collection" sheet
	 |4471-RBI-ACTCTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JANWITHOUTSTAFF-COLLSHEETON09JAN.xlsx|

@4472-RBI-ACTCTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JANWITHSTAFF-COLLSHEETON09JAN-WITHOTHERSTAFF
Scenario:4472-RBI-ACTCTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JANWITHSTAFF-COLLSHEETON09JAN-WITHOTHERSTAFF
	 Given I setup the center
	 When I entered the values into center from "Input" sheet
	 |4472-RBI-ACTCTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JANWITHSTAFF-COLLSHEETON09JAN-WITHOTHERSTAFF.xlsx|
	 Then I entered the values into group from "Group" sheet
     |4472-RBI-ACTCTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JANWITHSTAFF-COLLSHEETON09JAN-WITHOTHERSTAFF.xlsx|		  								  				  				  			
	 Then I entered the values into client from "Input" sheet
	 	|Createclient.xlsx|	 				  								  				  				  			
	 When I set up the new create loan from "NewLoanInput" sheet
	 |4472-RBI-ACTCTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JANWITHSTAFF-COLLSHEETON09JAN-WITHOTHERSTAFF.xlsx|
	 Then I navigate to collection Sheet
	 Then I Make Repayment Through "Collection" sheet
	 |4472-RBI-ACTCTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JANWITHSTAFF-COLLSHEETON09JAN-WITHOTHERSTAFF.xlsx|

@4473-RBI-ACTCTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JANWITHSTAFF-COLLSHEETON09JAN-WITHOTHERGRP
Scenario:4473-RBI-ACTCTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JANWITHSTAFF-COLLSHEETON09JAN-WITHOTHERGRP
	 Given I setup the center
	 When I entered the values into center from "Input" sheet
	 |4473-RBI-ACTCTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JANWITHSTAFF-COLLSHEETON09JAN-WITHOTHERGRP.xlsx|
	 Then I entered the values into group from "Group" sheet
     |4473-RBI-ACTCTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JANWITHSTAFF-COLLSHEETON09JAN-WITHOTHERGRP.xlsx|		  								  				  				  			
	 Then I entered the values into client from "Input" sheet
	 	|Createclient.xlsx|	 				  								  				  				  			
	 When I set up the new create loan from "NewLoanInput" sheet
	 |4473-RBI-ACTCTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JANWITHSTAFF-COLLSHEETON09JAN-WITHOTHERGRP.xlsx|
	 Then I navigate to collection Sheet
	 Then I Make Repayment Through "Collection" sheet
	 |4473-RBI-ACTCTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JANWITHSTAFF-COLLSHEETON09JAN-WITHOTHERGRP.xlsx|

@4474-RBI-ACTCTR-NO-MEET-ACTGRP-ACTCLIENT-DISJLG02JAN-COLLSHEETON09JAN2015
Scenario:4474-RBI-ACTCTR-NO-MEET-ACTGRP-ACTCLIENT-DISJLG02JAN-COLLSHEETON09JAN2015
	 Given I setup the center
	 When I entered the values into center from "Input" sheet
	 |4474-RBI-ACTCTR-NO-MEET-ACTGRP-ACTCLIENT-DISJLG02JAN-COLLSHEETON09JAN2015.xlsx|
	 Then I entered the values into group from "Group" sheet
     |4474-RBI-ACTCTR-NO-MEET-ACTGRP-ACTCLIENT-DISJLG02JAN-COLLSHEETON09JAN2015.xlsx|		  								  				  				  			
	 Then I entered the values into client from "Input" sheet
	 	|Createclient.xlsx|	 				  								  				  				  			
	 When I set up the new create loan from "NewLoanInput" sheet
	 |4474-RBI-ACTCTR-NO-MEET-ACTGRP-ACTCLIENT-DISJLG02JAN-COLLSHEETON09JAN2015.xlsx|
	 Then I navigate to collection Sheet
	 Then I Make Repayment Through "Collection" sheet
	 |4474-RBI-ACTCTR-NO-MEET-ACTGRP-ACTCLIENT-DISJLG02JAN-COLLSHEETON09JAN2015.xlsx|

@4475-RBI-ACTCTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JAN-COLLSHEETON25DEC2014
Scenario:4475-RBI-ACTCTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JAN-COLLSHEETON25DEC2014
	 Given I setup the center
	 When I entered the values into center from "Input" sheet
	 |4475-RBI-ACTCTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JAN-COLLSHEETON25DEC2014.xlsx|
	 Then I entered the values into group from "Group" sheet
     |4475-RBI-ACTCTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JAN-COLLSHEETON25DEC2014.xlsx|		  								  				  				  			
	 Then I entered the values into client from "Input" sheet
	 	|Createclient.xlsx|	 				  								  				  				  			
	 When I set up the new create loan from "NewLoanInput" sheet
	 |4475-RBI-ACTCTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JAN-COLLSHEETON25DEC2014.xlsx|
	 Then I navigate to collection Sheet
	 Then I Make Repayment Through "Collection" sheet
	 |4475-RBI-ACTCTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JAN-COLLSHEETON25DEC2014.xlsx|

@4476-RBI-ACTCTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JAN-COLLSHEETON02JAN
Scenario:4476-RBI-ACTCTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JAN-COLLSHEETON02JAN
	 Given I setup the center
	 When I entered the values into center from "Input" sheet
	 |4476-RBI-ACTCTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JAN-COLLSHEETON02JAN.xlsx|
	 Then I entered the values into group from "Group" sheet
     |4476-RBI-ACTCTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JAN-COLLSHEETON02JAN.xlsx|		  								  				  				  			
	 Then I entered the values into client from "Input" sheet
	 	|Createclient.xlsx|	 				  								  				  				  			
	 When I set up the new create loan from "NewLoanInput" sheet
	 |4476-RBI-ACTCTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JAN-COLLSHEETON02JAN.xlsx|
	 Then I navigate to collection Sheet
	 Then I Make Repayment Through "Collection" sheet
	 |4476-RBI-ACTCTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JAN-COLLSHEETON02JAN.xlsx|
	 Then i validate and Verify from "Output" sheet
	 |4476-RBI-ACTCTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JAN-COLLSHEETON02JAN.xlsx|
	 
@4477-RBI-ACTCTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JAN-COLLSHEETON16JAN
Scenario:4477-RBI-ACTCTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JAN-COLLSHEETON16JAN
	 Given I setup the center
	 When I entered the values into center from "Input" sheet
	 |4477-RBI-ACTCTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JAN-COLLSHEETON16JAN.xlsx|
	 Then I entered the values into group from "Group" sheet
     |4477-RBI-ACTCTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JAN-COLLSHEETON16JAN.xlsx|		  								  				  				  			
	 Then I entered the values into client from "Input" sheet
	 	|Createclient.xlsx|	 				  								  				  				  			
	 When I set up the new create loan from "NewLoanInput" sheet
	 |4477-RBI-ACTCTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JAN-COLLSHEETON16JAN.xlsx|
	 Then I navigate to collection Sheet
	 Then I Make Repayment Through "Collection" sheet
	 |4477-RBI-ACTCTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JAN-COLLSHEETON16JAN.xlsx|
	 And I navigate To Loan Account Page
	 Then I verified the following Tabs details successfully 
	 |4477-RBI-ACTCTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JAN-COLLSHEETON16JAN.xlsx|Summary|Repayment Schedule|
	 
@4478-RBI-ACTCTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JAN-COLLSHEETON09JAN-SAVEON03JAN
Scenario:4478-RBI-ACTCTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JAN-COLLSHEETON09JAN-SAVEON03JAN
	 Given I setup the center
	 When I entered the values into center from "Input" sheet
	 |4478-RBI-ACTCTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JAN-COLLSHEETON09JAN-SAVEON03JAN.xlsx|
	 Then I entered the values into group from "Group" sheet
     |4478-RBI-ACTCTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JAN-COLLSHEETON09JAN-SAVEON03JAN.xlsx|		  								  				  				  			
	 Then I entered the values into client from "Input" sheet
	 	|Createclient.xlsx|	 				  								  				  				  			
	 When I set up the new create loan from "NewLoanInput" sheet
	 |4478-RBI-ACTCTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JAN-COLLSHEETON09JAN-SAVEON03JAN.xlsx|
	 Then I navigate to collection Sheet
	 Then I Make Repayment Through "Collection" sheet
	 |4478-RBI-ACTCTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JAN-COLLSHEETON09JAN-SAVEON03JAN.xlsx|

@4479-RBI-ACTCTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JAN-REPAYONTIME-COLLSHEETON09JAN
Scenario:4479-RBI-ACTCTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JAN-REPAYONTIME-COLLSHEETON09JAN
	 Given I setup the center
	 When I entered the values into center from "Input" sheet
	 |4479-RBI-ACTCTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JAN-REPAYONTIME-COLLSHEETON09JAN.xlsx|
	 Then I entered the values into group from "Group" sheet
     |4479-RBI-ACTCTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JAN-REPAYONTIME-COLLSHEETON09JAN.xlsx|		  								  				  				  			
	 Then I entered the values into client from "Input" sheet
	 	|Createclient.xlsx|	 				  								  				  				  			
	 When I set up the new create loan from "NewLoanInput" sheet
	 |4479-RBI-ACTCTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JAN-REPAYONTIME-COLLSHEETON09JAN.xlsx|
	 Then I navigate to collection Sheet
	 Then I Make Repayment Through "Collection" sheet
	 |4479-RBI-ACTCTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JAN-REPAYONTIME-COLLSHEETON09JAN.xlsx|
	 And I navigate To Loan Account Page
	 Then I verified the following Tabs details successfully 
	 |4479-RBI-ACTCTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JAN-REPAYONTIME-COLLSHEETON09JAN.xlsx|Summary|Repayment Schedule|
		 
@4480-RBI-ACTCTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JAN-REPAYLESS-COLLSHEETON09JAN
Scenario:4480-RBI-ACTCTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JAN-REPAYLESS-COLLSHEETON09JAN
	 Given I setup the center
	 When I entered the values into center from "Input" sheet
	 |4480-RBI-ACTCTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JAN-REPAYLESS-COLLSHEETON09JAN.xlsx|
	 Then I entered the values into group from "Group" sheet
     |4480-RBI-ACTCTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JAN-REPAYLESS-COLLSHEETON09JAN.xlsx|		  								  				  				  			
	 Then I entered the values into client from "Input" sheet
	 	|Createclient.xlsx|	 				  								  				  				  			
	 When I set up the new create loan from "NewLoanInput" sheet
	 |4480-RBI-ACTCTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JAN-REPAYLESS-COLLSHEETON09JAN.xlsx|
	 Then I navigate to collection Sheet
	 Then I Make Repayment Through "Collection" sheet
	 |4480-RBI-ACTCTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JAN-REPAYLESS-COLLSHEETON09JAN.xlsx|
	 And I navigate To Loan Account Page
	 Then I verified the following Tabs details successfully 
	 |4480-RBI-ACTCTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JAN-REPAYLESS-COLLSHEETON09JAN.xlsx|Summary|Repayment Schedule|
		 
@4481-RBI-ACTCTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JAN-REPAYMORE-COLLSHEETON09JAN
Scenario:4481-RBI-ACTCTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JAN-REPAYMORE-COLLSHEETON09JAN
	 Given I setup the center
	 When I entered the values into center from "Input" sheet
	 |4481-RBI-ACTCTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JAN-REPAYMORE-COLLSHEETON09JAN.xlsx|
	 Then I entered the values into group from "Group" sheet
     |4481-RBI-ACTCTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JAN-REPAYMORE-COLLSHEETON09JAN.xlsx|		  								  				  				  			
	 Then I entered the values into client from "Input" sheet
	 	|Createclient.xlsx|	 				  								  				  				  			
	 When I set up the new create loan from "NewLoanInput" sheet
	 |4481-RBI-ACTCTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JAN-REPAYMORE-COLLSHEETON09JAN.xlsx|
	 Then I navigate to collection Sheet
	 Then I Make Repayment Through "Collection" sheet
	 |4481-RBI-ACTCTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JAN-REPAYMORE-COLLSHEETON09JAN.xlsx|
	 And I navigate To Loan Account Page
	 Then I verified the following Tabs details successfully 
	 |4481-RBI-ACTCTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JAN-REPAYMORE-COLLSHEETON09JAN.xlsx|Summary|Repayment Schedule|
	 
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
		|4351-Simple-Group-Loan-Product-Loanproduct-OVERDUEFEEFLAT.xlsx|
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

		            
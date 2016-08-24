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
	
		            
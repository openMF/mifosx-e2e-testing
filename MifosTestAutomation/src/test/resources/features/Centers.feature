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
	 Then I entered the values into product from "ProductLoanInput" Sheet
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
	 And I modify New Account from "ModifyLoan" sheet
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
	 Then I entered the values into product from "ProductLoanInput" Sheet
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
	 Then I entered the values into product from "ProductLoanInput" Sheet
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
	 Then I entered the values into product from "ProductLoanInput" Sheet
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

@4520-RBI-ACT2CTR-NOMEET-ACTGRP-ACTCLIENT-DISJLG02JAN-PRODUCTIVE_COLLSHEETON09JAN
Scenario:4520-RBI-ACT2CTR-NOMEET-ACTGRP-ACTCLIENT-DISJLG02JAN-PRODUCTIVE_COLLSHEETON09JAN
	 Given I setup the center
	 When I entered the values into center from "Input" sheet
	 |4520-RBI-ACT2CTR-NOMEET-ACTGRP-ACTCLIENT-DISJLG02JAN-PRODUCTIVE_COLLSHEETON09JAN.xlsx|
	 Then I entered the values into group from "Group" sheet
     |4520-RBI-ACT2CTR-NOMEET-ACTGRP-ACTCLIENT-DISJLG02JAN-PRODUCTIVE_COLLSHEETON09JAN.xlsx|		  								  				  				  			
	 Then I entered the values into client from "Input" sheet
	 	|Createclient.xlsx|	 				  								  				  				  			
	 When I set up the new create loan from "NewLoanInput" sheet
	 |4520-RBI-ACT2CTR-NOMEET-ACTGRP-ACTCLIENT-DISJLG02JAN-PRODUCTIVE_COLLSHEETON09JAN.xlsx|
     Then I navigate to collection Sheet
     Then I Make Repayment Through "Productive Collection" sheet
	 |4520-RBI-ACT2CTR-NOMEET-ACTGRP-ACTCLIENT-DISJLG02JAN-PRODUCTIVE_COLLSHEETON09JAN.xlsx|

@4521-RBI-ACT2CTR-MEET-WEEKLYonFRI-NOSTAFF-ACTGRP-ACTCLIENT-DISJLG02JAN-PRODUCTIVE_COLLSHEETON09JAN
Scenario:4521-RBI-ACT2CTR-MEET-WEEKLYonFRI-NOSTAFF-ACTGRP-ACTCLIENT-DISJLG02JAN-PRODUCTIVE_COLLSHEETON09JAN
	 Given I navigate to collection Sheet
	 Then I Make Repayment Through "Productive Collection" sheet
	 |4521-RBI-ACT2CTR-MEET-WEEKLYonFRI-NOSTAFF-ACTGRP-ACTCLIENT-DISJLG02JAN-PRODUCTIVE_COLLSHEETON09JAN.xlsx|

@4522-RBI-ACT2CTR-MEET-WEEKLYonFRI-ASSIGNSTAFF-ACTGRP-ACTCLIENT-DISJLG02JAN-PRODUCTIVE_COLLSHEETON09JAN-ON-10JAN2015
Scenario:4522-RBI-ACT2CTR-MEET-WEEKLYonFRI-ASSIGNSTAFF-ACTGRP-ACTCLIENT-DISJLG02JAN-PRODUCTIVE_COLLSHEETON09JAN-ON-10JAN2015
	 Given I navigate to collection Sheet
	 Then I Make Repayment Through "Productive Collection" sheet
	 |4522-RBI-ACT2CTR-MEET-WEEKLYonFRI-ASSIGNSTAFF-ACTGRP-ACTCLIENT-DISJLG02JAN-PRODUCTIVE_COLLSHEETON09JAN-ON-10JAN2015.xlsx|

@4523-RBI-ACT2CTR-MEET-WEEKLYonFRI-ASSIGNSTAFF-ACTGRP-ACTCLIENT-DISJLG02JAN-PRODUCTIVE_COLLSHEETON09JAN-FOR-DIF-Branch-OFFICE 
Scenario:4523-RBI-ACT2CTR-MEET-WEEKLYonFRI-ASSIGNSTAFF-ACTGRP-ACTCLIENT-DISJLG02JAN-PRODUCTIVE_COLLSHEETON09JAN-FOR-DIF-Branch-OFFICE 
	 Given I navigate to collection Sheet
	 Then I Make Repayment Through "Productive Collection" sheet
	 |4523-RBI-ACT2CTR-MEET-WEEKLYonFRI-ASSIGNSTAFF-ACTGRP-ACTCLIENT-DISJLG02JAN-PRODUCTIVE_COLLSHEETON09JAN-FOR-DIF-Branch-OFFICE .xlsx|

@4524-RBI-ACT2CTR-MEET-WEEKLYonFRI-ASSIGNSTAFF-ACTGRP-ACTCLIENT-DISJLG02JAN-PRODUCTIVE_COLLSHEETON09JAN
Scenario:4524-RBI-ACT2CTR-MEET-WEEKLYonFRI-ASSIGNSTAFF-ACTGRP-ACTCLIENT-DISJLG02JAN-PRODUCTIVE_COLLSHEETON09JAN
	 Given I setup the center
	 When I entered the values into center from "Input" sheet
	 |4524-RBI-ACT2CTR-MEET-WEEKLYonFRI-ASSIGNSTAFF-ACTGRP-ACTCLIENT-DISJLG02JAN-PRODUCTIVE_COLLSHEETON09JAN-C1.xlsx|
	 Then I entered the values into group from "Group" sheet
     |4524-RBI-ACT2CTR-MEET-WEEKLYonFRI-ASSIGNSTAFF-ACTGRP-ACTCLIENT-DISJLG02JAN-PRODUCTIVE_COLLSHEETON09JAN-C1.xlsx|		  								  				  				  			
	 Then I entered the values into client from "Input" sheet
	 	|Createclient.xlsx|	 				  								  				  				  			
	 When I set up the new create loan from "NewLoanInput" sheet
	 |4524-RBI-ACT2CTR-MEET-WEEKLYonFRI-ASSIGNSTAFF-ACTGRP-ACTCLIENT-DISJLG02JAN-PRODUCTIVE_COLLSHEETON09JAN-C1.xlsx|
	 Given I setup the center
	 When I entered the values into center from "Input" sheet
	 |4524-RBI-ACT2CTR-MEET-WEEKLYonFRI-ASSIGNSTAFF-ACTGRP-ACTCLIENT-DISJLG02JAN-PRODUCTIVE_COLLSHEETON09JAN-C2.xlsx|
	 Then I entered the values into group from "Group" sheet
     |4524-RBI-ACT2CTR-MEET-WEEKLYonFRI-ASSIGNSTAFF-ACTGRP-ACTCLIENT-DISJLG02JAN-PRODUCTIVE_COLLSHEETON09JAN-C2.xlsx|		  								  				  				  			
	 Then I entered the values into client from "Input" sheet
	 	|Createclient.xlsx|	 				  								  				  				  			
	 When I set up the new create loan from "NewLoanInput" sheet
	 |4524-RBI-ACT2CTR-MEET-WEEKLYonFRI-ASSIGNSTAFF-ACTGRP-ACTCLIENT-DISJLG02JAN-PRODUCTIVE_COLLSHEETON09JAN-C2.xlsx|
	 Then I navigate to collection Sheet
     Then I Make Repayment Through "Productive Collection" sheet
	 |4524-RBI-ACT2CTR-MEET-WEEKLYonFRI-ASSIGNSTAFF-ACTGRP-ACTCLIENT-DISJLG02JAN-PRODUCTIVE_COLLSHEETON09JAN-C2.xlsx|
	 And I navigate To Loan Account Page
	 Then I verified the following Tabs details successfully 
	 |4524-RBI-ACT2CTR-MEET-WEEKLYonFRI-ASSIGNSTAFF-ACTGRP-ACTCLIENT-DISJLG02JAN-PRODUCTIVE_COLLSHEETON09JAN-C2.xlsx|Summary|Repayment Schedule|
	 	 	
@4525-RBI-ACT2CTR-MEET-WEEKLYonFRI-ASSIGNSTAFF-ACTGRP-ACTCLIENT-DISJLG02JAN-PRODUCTIVE_COLLSHEETON09JAN-FOR-DIF-STAFF1 
Scenario:4525-RBI-ACT2CTR-MEET-WEEKLYonFRI-ASSIGNSTAFF-ACTGRP-ACTCLIENT-DISJLG02JAN-PRODUCTIVE_COLLSHEETON09JAN-FOR-DIF-STAFF1 
	 Given I navigate to collection Sheet
	 Then I Make Repayment Through "Productive Collection" sheet
	 |4525-RBI-ACT2CTR-MEET-WEEKLYonFRI-ASSIGNSTAFF-ACTGRP-ACTCLIENT-DISJLG02JAN-PRODUCTIVE_COLLSHEETON09JAN-FOR-DIF-STAFF1.xlsx|

@4526-RBI-ACT2CTR-MEET-sameStaff-WEEKLYonFRI--ACT2GRP-1DiffStaff-ACTCLIENT-DISJLG02JAN-PRODUCTIVE_COLLSHEETON09JAN
Scenario:4526-RBI-ACT2CTR-MEET-sameStaff-WEEKLYonFRI--ACT2GRP-1DiffStaff-ACTCLIENT-DISJLG02JAN-PRODUCTIVE_COLLSHEETON09JAN
	 Given I setup the center
	 When I entered the values into center from "Input" sheet
	 |4526-RBI-ACT2CTR-MEET-sameStaff-WEEKLYonFRI--ACT2GRP-1DiffStaff-ACTCLIENT-DISJLG02JAN-PRODUCTIVE_COLLSHEETON09JAN-C1.xlsx|
	 Then I entered the values into group from "Group" sheet
     |4526-RBI-ACT2CTR-MEET-sameStaff-WEEKLYonFRI--ACT2GRP-1DiffStaff-ACTCLIENT-DISJLG02JAN-PRODUCTIVE_COLLSHEETON09JAN-C1.xlsx|		  								  				  				  			
	 Then I entered the values into client from "Input" sheet
	 	|Createclient.xlsx|	 				  								  				  				  			
	 When I set up the new create loan from "NewLoanInput" sheet
	 |4526-RBI-ACT2CTR-MEET-sameStaff-WEEKLYonFRI--ACT2GRP-1DiffStaff-ACTCLIENT-DISJLG02JAN-PRODUCTIVE_COLLSHEETON09JAN-C1.xlsx|
	 Given I setup the center
	 When I entered the values into center from "Input" sheet
	 |4526-RBI-ACT2CTR-MEET-sameStaff-WEEKLYonFRI--ACT2GRP-1DiffStaff-ACTCLIENT-DISJLG02JAN-PRODUCTIVE_COLLSHEETON09JAN-C2.xlsx|
	 Then I entered the values into group from "Group" sheet
     |4526-RBI-ACT2CTR-MEET-sameStaff-WEEKLYonFRI--ACT2GRP-1DiffStaff-ACTCLIENT-DISJLG02JAN-PRODUCTIVE_COLLSHEETON09JAN-C2.xlsx|		  								  				  				  			
	 Then I entered the values into client from "Input" sheet
	 	|Createclient.xlsx|	 				  								  				  				  			
	 When I set up the new create loan from "NewLoanInput" sheet
	 |4526-RBI-ACT2CTR-MEET-sameStaff-WEEKLYonFRI--ACT2GRP-1DiffStaff-ACTCLIENT-DISJLG02JAN-PRODUCTIVE_COLLSHEETON09JAN-C2.xlsx|
	 Then I navigate to collection Sheet
     Then I Make Repayment Through "Productive Collection" sheet
	 |4526-RBI-ACT2CTR-MEET-sameStaff-WEEKLYonFRI--ACT2GRP-1DiffStaff-ACTCLIENT-DISJLG02JAN-PRODUCTIVE_COLLSHEETON09JAN-C2.xlsx|
	 And I navigate To Loan Account Page
	 Then I verified the following Tabs details successfully 
	 |4526-RBI-ACT2CTR-MEET-sameStaff-WEEKLYonFRI--ACT2GRP-1DiffStaff-ACTCLIENT-DISJLG02JAN-PRODUCTIVE_COLLSHEETON09JAN-C2.xlsx|Summary|Repayment Schedule|

@4527-RBI-ACT2CTR-MEET-ONEWEEKLYonFRIandOTHERonWED-ASSIGNSTAFF-ACTGRP-ACTCLIENT-DISJLG02JAN-PRODUCTIVE_COLLSHEETON09JAN
Scenario:4527-RBI-ACT2CTR-MEET-ONEWEEKLYonFRIandOTHERonWED-ASSIGNSTAFF-ACTGRP-ACTCLIENT-DISJLG02JAN-PRODUCTIVE_COLLSHEETON09JAN
	 Given I setup the center
	 When I entered the values into center from "Input" sheet
	 |4527-RBI-ACT2CTR-MEET-ONEWEEKLYonFRIandOTHERonWED-ASSIGNSTAFF-ACTGRP-ACTCLIENT-DISJLG02JAN-PRODUCTIVE_COLLSHEETON09JAN-C1.xlsx|
	 Then I entered the values into group from "Group" sheet
     |4527-RBI-ACT2CTR-MEET-ONEWEEKLYonFRIandOTHERonWED-ASSIGNSTAFF-ACTGRP-ACTCLIENT-DISJLG02JAN-PRODUCTIVE_COLLSHEETON09JAN-C1.xlsx|		  								  				  				  			
	 Then I entered the values into client from "Input" sheet
	 	|Createclient.xlsx|	 				  								  				  				  			
	 When I set up the new create loan from "NewLoanInput" sheet
	 |4527-RBI-ACT2CTR-MEET-ONEWEEKLYonFRIandOTHERonWED-ASSIGNSTAFF-ACTGRP-ACTCLIENT-DISJLG02JAN-PRODUCTIVE_COLLSHEETON09JAN-C1.xlsx|
	 Given I setup the center
	 When I entered the values into center from "Input" sheet
	 |4527-RBI-ACT2CTR-MEET-ONEWEEKLYonFRIandOTHERonWED-ASSIGNSTAFF-ACTGRP-ACTCLIENT-DISJLG02JAN-PRODUCTIVE_COLLSHEETON09JAN-C2.xlsx|
	 Then I entered the values into group from "Group" sheet
     |4527-RBI-ACT2CTR-MEET-ONEWEEKLYonFRIandOTHERonWED-ASSIGNSTAFF-ACTGRP-ACTCLIENT-DISJLG02JAN-PRODUCTIVE_COLLSHEETON09JAN-C2.xlsx|		  								  				  				  			
	 Then I entered the values into client from "Input" sheet
	 	|Createclient.xlsx|	 				  								  				  				  			
	 When I set up the new create loan from "NewLoanInput" sheet
	 |4527-RBI-ACT2CTR-MEET-ONEWEEKLYonFRIandOTHERonWED-ASSIGNSTAFF-ACTGRP-ACTCLIENT-DISJLG02JAN-PRODUCTIVE_COLLSHEETON09JAN-C2.xlsx|
	 Then I navigate to collection Sheet
     Then I Make Repayment Through "Productive Collection" sheet
	 |4527-RBI-ACT2CTR-MEET-ONEWEEKLYonFRIandOTHERonWED-ASSIGNSTAFF-ACTGRP-ACTCLIENT-DISJLG02JAN-PRODUCTIVE_COLLSHEETON09JAN-C2.xlsx|
	 Then i validate and Verify from "Output" sheet
	 |4527-RBI-ACT2CTR-MEET-ONEWEEKLYonFRIandOTHERonWED-ASSIGNSTAFF-ACTGRP-ACTCLIENT-DISJLG02JAN-PRODUCTIVE_COLLSHEETON09JAN-C2.xlsx|

@4528-RBI-ACT2CTR-MEET-ONEWEEKLYonFRIandOTHERonWED-ASSIGNSTAFF-ACTGRP-ACTCLIENT-DISJLG02JAN-PRODUCTIVE_COLLSHEETON14JAN
Scenario:4528-RBI-ACT2CTR-MEET-ONEWEEKLYonFRIandOTHERonWED-ASSIGNSTAFF-ACTGRP-ACTCLIENT-DISJLG02JAN-PRODUCTIVE_COLLSHEETON14JAN
	 Given I navigate to collection Sheet
     Then I Make Repayment Through "Productive Collection" sheet
	 |4528-RBI-ACT2CTR-MEET-ONEWEEKLYonFRIandOTHERonWED-ASSIGNSTAFF-ACTGRP-ACTCLIENT-DISJLG02JAN-PRODUCTIVE_COLLSHEETON14JAN-C2.xlsx|
	 Then i validate and Verify from "Output" sheet
	 |4528-RBI-ACT2CTR-MEET-ONEWEEKLYonFRIandOTHERonWED-ASSIGNSTAFF-ACTGRP-ACTCLIENT-DISJLG02JAN-PRODUCTIVE_COLLSHEETON14JAN-C2.xlsx|
	  	 
@4529-RBI-ACT2CTR-MEET-WEEKLYonFRI-ASSIGNSTAFF-ACTGRP-ACTCLIENT-DISJLG02JAN-PRODUCTIVE_COLLSHEETON26DEC-C1
Scenario:4529-RBI-ACT2CTR-MEET-WEEKLYonFRI-ASSIGNSTAFF-ACTGRP-ACTCLIENT-DISJLG02JAN-PRODUCTIVE_COLLSHEETON26DEC-C1
	 Given I setup the center
	 When I entered the values into center from "Input" sheet
	 |4529-RBI-ACT2CTR-MEET-WEEKLYonFRI-ASSIGNSTAFF-ACTGRP-ACTCLIENT-DISJLG02JAN-PRODUCTIVE_COLLSHEETON26DEC-C1.xlsx|
	 Then I entered the values into group from "Group" sheet
     |4529-RBI-ACT2CTR-MEET-WEEKLYonFRI-ASSIGNSTAFF-ACTGRP-ACTCLIENT-DISJLG02JAN-PRODUCTIVE_COLLSHEETON26DEC-C1.xlsx|		  								  				  				  			
	 Then I entered the values into client from "Input" sheet
	 	|Createclient.xlsx|	 				  								  				  				  			
	 When I set up the new create loan from "NewLoanInput" sheet
	 |4529-RBI-ACT2CTR-MEET-WEEKLYonFRI-ASSIGNSTAFF-ACTGRP-ACTCLIENT-DISJLG02JAN-PRODUCTIVE_COLLSHEETON26DEC-C1.xlsx|
     Then I navigate to collection Sheet
     Then I Make Repayment Through "Productive Collection" sheet
	 |4529-RBI-ACT2CTR-MEET-WEEKLYonFRI-ASSIGNSTAFF-ACTGRP-ACTCLIENT-DISJLG02JAN-PRODUCTIVE_COLLSHEETON26DEC-C1.xlsx|
	 Then i validate and Verify from "Output" sheet
	 |4529-RBI-ACT2CTR-MEET-WEEKLYonFRI-ASSIGNSTAFF-ACTGRP-ACTCLIENT-DISJLG02JAN-PRODUCTIVE_COLLSHEETON26DEC-C1.xlsx|
	 
@4530-RBI-ACT2CTR-MEET-WEEKLYonFRI-ASSIGNSTAFF-ACTGRP-ACTCLIENT-DISJLG02JAN-PRODUCTIVE_COLLSHEETON02JAN-C1
Scenario:4530-RBI-ACT2CTR-MEET-WEEKLYonFRI-ASSIGNSTAFF-ACTGRP-ACTCLIENT-DISJLG02JAN-PRODUCTIVE_COLLSHEETON02JAN-C1
	 Given I setup the center
	 When I entered the values into center from "Input" sheet
	 |4530-RBI-ACT2CTR-MEET-WEEKLYonFRI-ASSIGNSTAFF-ACTGRP-ACTCLIENT-DISJLG02JAN-PRODUCTIVE_COLLSHEETON02JAN-C1.xlsx|
	 Then I entered the values into group from "Group" sheet
     |4530-RBI-ACT2CTR-MEET-WEEKLYonFRI-ASSIGNSTAFF-ACTGRP-ACTCLIENT-DISJLG02JAN-PRODUCTIVE_COLLSHEETON02JAN-C1.xlsx|		  								  				  				  			
	 Then I entered the values into client from "Input" sheet
	 	|Createclient.xlsx|	 				  								  				  				  			
	 When I set up the new create loan from "NewLoanInput" sheet
	 |4530-RBI-ACT2CTR-MEET-WEEKLYonFRI-ASSIGNSTAFF-ACTGRP-ACTCLIENT-DISJLG02JAN-PRODUCTIVE_COLLSHEETON02JAN-C1.xlsx|
     Then I navigate to collection Sheet
     Then I Make Repayment Through "Productive Collection" sheet
	 |4530-RBI-ACT2CTR-MEET-WEEKLYonFRI-ASSIGNSTAFF-ACTGRP-ACTCLIENT-DISJLG02JAN-PRODUCTIVE_COLLSHEETON02JAN-C1.xlsx|
	 Then i validate and Verify from "Output" sheet
	 |4530-RBI-ACT2CTR-MEET-WEEKLYonFRI-ASSIGNSTAFF-ACTGRP-ACTCLIENT-DISJLG02JAN-PRODUCTIVE_COLLSHEETON02JAN-C1.xlsx|
	 
@4531-RBI-ACT2CTR-MEET-WEEKLYonFRI-ASSIGNSTAFF-ACTGRP-ACTCLIENT-DISJLG02JAN-PRODUCTIVE_COLLSHEETON16JAN-C1
Scenario:4531-RBI-ACT2CTR-MEET-WEEKLYonFRI-ASSIGNSTAFF-ACTGRP-ACTCLIENT-DISJLG02JAN-PRODUCTIVE_COLLSHEETON16JAN-C1
	 Given I setup the center
	 When I entered the values into center from "Input" sheet
	 |4531-RBI-ACT2CTR-MEET-WEEKLYonFRI-ASSIGNSTAFF-ACTGRP-ACTCLIENT-DISJLG02JAN-PRODUCTIVE_COLLSHEETON16JAN-C1.xlsx|
	 Then I entered the values into group from "Group" sheet
     |4531-RBI-ACT2CTR-MEET-WEEKLYonFRI-ASSIGNSTAFF-ACTGRP-ACTCLIENT-DISJLG02JAN-PRODUCTIVE_COLLSHEETON16JAN-C1.xlsx|		  								  				  				  			
	 Then I entered the values into client from "Input" sheet
	 	|Createclient.xlsx|	 				  								  				  				  			
	 When I set up the new create loan from "NewLoanInput" sheet
	 |4531-RBI-ACT2CTR-MEET-WEEKLYonFRI-ASSIGNSTAFF-ACTGRP-ACTCLIENT-DISJLG02JAN-PRODUCTIVE_COLLSHEETON16JAN-C1.xlsx|
     Then I navigate to collection Sheet
     Then I Make Repayment Through "Productive Collection" sheet
	 |4531-RBI-ACT2CTR-MEET-WEEKLYonFRI-ASSIGNSTAFF-ACTGRP-ACTCLIENT-DISJLG02JAN-PRODUCTIVE_COLLSHEETON16JAN-C1.xlsx|
	 And I navigate To Loan Account Page
	 Then I verified the following Tabs details successfully 
	 |4531-RBI-ACT2CTR-MEET-WEEKLYonFRI-ASSIGNSTAFF-ACTGRP-ACTCLIENT-DISJLG02JAN-PRODUCTIVE_COLLSHEETON16JAN-C1.xlsx|Summary|Repayment Schedule|

@4532-RBI-ACT2CTR-MEET-WEEKLYonFRI-ASSIGNSTAFF-ACTGRP-ACTCLIENT-DISJLG02JAN-PRODUCTIVE_COLLSHEET_REPAYLESSONTIME09JAN-C1
Scenario:4532-RBI-ACT2CTR-MEET-WEEKLYonFRI-ASSIGNSTAFF-ACTGRP-ACTCLIENT-DISJLG02JAN-PRODUCTIVE_COLLSHEET_REPAYLESSONTIME09JAN-C1
	 Given I setup the center
	 When I entered the values into center from "Input" sheet
	 |4532-RBI-ACT2CTR-MEET-WEEKLYonFRI-ASSIGNSTAFF-ACTGRP-ACTCLIENT-DISJLG02JAN-PRODUCTIVE_COLLSHEET_REPAYLESSONTIME09JAN-C1.xlsx|
	 Then I entered the values into group from "Group" sheet
     |4532-RBI-ACT2CTR-MEET-WEEKLYonFRI-ASSIGNSTAFF-ACTGRP-ACTCLIENT-DISJLG02JAN-PRODUCTIVE_COLLSHEET_REPAYLESSONTIME09JAN-C1.xlsx|		  								  				  				  			
	 Then I entered the values into client from "Input" sheet
	 	|Createclient.xlsx|	 				  								  				  				  			
	 When I set up the new create loan from "NewLoanInput" sheet
	 |4532-RBI-ACT2CTR-MEET-WEEKLYonFRI-ASSIGNSTAFF-ACTGRP-ACTCLIENT-DISJLG02JAN-PRODUCTIVE_COLLSHEET_REPAYLESSONTIME09JAN-C1.xlsx|
     Then I navigate to collection Sheet
     Then I Make Repayment Through "Productive Collection" sheet
	 |4532-RBI-ACT2CTR-MEET-WEEKLYonFRI-ASSIGNSTAFF-ACTGRP-ACTCLIENT-DISJLG02JAN-PRODUCTIVE_COLLSHEET_REPAYLESSONTIME09JAN-C1.xlsx|
	 And I navigate To Loan Account Page
	 Then I verified the following Tabs details successfully 
	 |4532-RBI-ACT2CTR-MEET-WEEKLYonFRI-ASSIGNSTAFF-ACTGRP-ACTCLIENT-DISJLG02JAN-PRODUCTIVE_COLLSHEET_REPAYLESSONTIME09JAN-C1.xlsx|Summary|Repayment Schedule|

@4533-RBI-ACT2CTR-MEET-WEEKLYonFRI-ASSIGNSTAFF-ACTGRP-ACTCLIENT-DISJLG02JAN-PRODUCTIVE_COLLSHEET_REPAY-Remaning-on-09JAN
Scenario:4533-RBI-ACT2CTR-MEET-WEEKLYonFRI-ASSIGNSTAFF-ACTGRP-ACTCLIENT-DISJLG02JAN-PRODUCTIVE_COLLSHEET_REPAY-Remaning-on-09JAN
	 Given I navigate to collection Sheet
     Then I Make Repayment Through "Productive Collection" sheet
	 |4533-RBI-ACT2CTR-MEET-WEEKLYonFRI-ASSIGNSTAFF-ACTGRP-ACTCLIENT-DISJLG02JAN-PRODUCTIVE_COLLSHEET_REPAY-Remaning-on-09JAN.xlsx|
	 Then i validate and Verify from "Output" sheet
	 |4533-RBI-ACT2CTR-MEET-WEEKLYonFRI-ASSIGNSTAFF-ACTGRP-ACTCLIENT-DISJLG02JAN-PRODUCTIVE_COLLSHEET_REPAY-Remaning-on-09JAN.xlsx|

@4534-RBI-ACT2CTR-MEET-WEEKLYonFRI-ASSIGNSTAFF-ACTGRP-ACTCLIENT-DISJLG02JAN-PRODUCTIVE_COLLSHEET_REPAYMOREONTIME09JAN
Scenario:4534-RBI-ACT2CTR-MEET-WEEKLYonFRI-ASSIGNSTAFF-ACTGRP-ACTCLIENT-DISJLG02JAN-PRODUCTIVE_COLLSHEET_REPAYMOREONTIME09JAN
	 Given I setup the center
	 When I entered the values into center from "Input" sheet
	 |4534-RBI-ACT2CTR-MEET-WEEKLYonFRI-ASSIGNSTAFF-ACTGRP-ACTCLIENT-DISJLG02JAN-PRODUCTIVE_COLLSHEET_REPAYMOREONTIME09JAN-C1.xlsx|
	 Then I entered the values into group from "Group" sheet
     |4534-RBI-ACT2CTR-MEET-WEEKLYonFRI-ASSIGNSTAFF-ACTGRP-ACTCLIENT-DISJLG02JAN-PRODUCTIVE_COLLSHEET_REPAYMOREONTIME09JAN-C1.xlsx|		  								  				  				  			
	 Then I entered the values into client from "Input" sheet
	 	|Createclient.xlsx|	 				  								  				  				  			
	 When I set up the new create loan from "NewLoanInput" sheet
	 |4534-RBI-ACT2CTR-MEET-WEEKLYonFRI-ASSIGNSTAFF-ACTGRP-ACTCLIENT-DISJLG02JAN-PRODUCTIVE_COLLSHEET_REPAYMOREONTIME09JAN-C1.xlsx|
     Then I navigate to collection Sheet
     Then I Make Repayment Through "Productive Collection" sheet
	 |4534-RBI-ACT2CTR-MEET-WEEKLYonFRI-ASSIGNSTAFF-ACTGRP-ACTCLIENT-DISJLG02JAN-PRODUCTIVE_COLLSHEET_REPAYMOREONTIME09JAN-C1.xlsx|
	 And I navigate To Loan Account Page
	 Then I verified the following Tabs details successfully 
	 |4534-RBI-ACT2CTR-MEET-WEEKLYonFRI-ASSIGNSTAFF-ACTGRP-ACTCLIENT-DISJLG02JAN-PRODUCTIVE_COLLSHEET_REPAYMOREONTIME09JAN-C1.xlsx|Summary|Repayment Schedule|

@4535-RBI-ACT2CTR-MEET-WEEKLYonFRI-ASSIGNSTAFF-ACTGRP-ACTCLIENT-DISJLG02JAN-PRODUCTIVE_COLLSHEET_REPAY-2nd-Payment16JAN-C1
Scenario:4535-RBI-ACT2CTR-MEET-WEEKLYonFRI-ASSIGNSTAFF-ACTGRP-ACTCLIENT-DISJLG02JAN-PRODUCTIVE_COLLSHEET_REPAY-2nd-Payment16JAN-C1
	 Given I navigate to collection Sheet
     Then I Make Repayment Through "Productive Collection" sheet
	 |4535-RBI-ACT2CTR-MEET-WEEKLYonFRI-ASSIGNSTAFF-ACTGRP-ACTCLIENT-DISJLG02JAN-PRODUCTIVE_COLLSHEET_REPAY-2nd-Payment16JAN-C1.xlsx|
	 Then i validate and Verify from "Output" sheet
	 |4535-RBI-ACT2CTR-MEET-WEEKLYonFRI-ASSIGNSTAFF-ACTGRP-ACTCLIENT-DISJLG02JAN-PRODUCTIVE_COLLSHEET_REPAY-2nd-Payment16JAN-C1.xlsx|

@4536-RBI-ACT2CTR-MEET-WEEKLYonFRI-ASSIGNSTAFF-ACTGRP-ACTCLIENT-DISJLG02JAN-UndoDisburse-PRODUCTIVE_COLLSHEET
Scenario:4536-RBI-ACT2CTR-MEET-WEEKLYonFRI-ASSIGNSTAFF-ACTGRP-ACTCLIENT-DISJLG02JAN-UndoDisburse-PRODUCTIVE_COLLSHEET
	 Given I setup the center
	 When I entered the values into center from "Input" sheet
	 |4536-RBI-ACT2CTR-MEET-WEEKLYonFRI-ASSIGNSTAFF-ACTGRP-ACTCLIENT-DISJLG02JAN-UndoDisburse-PRODUCTIVE_COLLSHEET-C1.xlsx|
	 Then I entered the values into group from "Group" sheet
     |4536-RBI-ACT2CTR-MEET-WEEKLYonFRI-ASSIGNSTAFF-ACTGRP-ACTCLIENT-DISJLG02JAN-UndoDisburse-PRODUCTIVE_COLLSHEET-C1.xlsx|		  								  				  				  			
	 Then I entered the values into client from "Input" sheet
	 	|Createclient.xlsx|	 				  								  				  				  			
	 When I set up the new create loan from "NewLoanInput" sheet
	 |4536-RBI-ACT2CTR-MEET-WEEKLYonFRI-ASSIGNSTAFF-ACTGRP-ACTCLIENT-DISJLG02JAN-UndoDisburse-PRODUCTIVE_COLLSHEET-C1.xlsx|
     Then I "Do Undo Disbursal" and verified the following tabs
     |4536-RBI-ACT2CTR-MEET-WEEKLYonFRI-ASSIGNSTAFF-ACTGRP-ACTCLIENT-DISJLG02JAN-UndoDisburse-PRODUCTIVE_COLLSHEET-C1.xlsx|Undo Disbursal|
     Then I navigate to collection Sheet
     Then I Make Repayment Through "Productive Collection" sheet
	 |4536-RBI-ACT2CTR-MEET-WEEKLYonFRI-ASSIGNSTAFF-ACTGRP-ACTCLIENT-DISJLG02JAN-UndoDisburse-PRODUCTIVE_COLLSHEET-C1.xlsx|

@4537-RBI-ACT2CTR-MEET-WEEKLYonFRI-ASSIGNSTAFF-ACTGRP-ACTCLIENT-DISJLG02JAN-MAKEREPAYMENTFOR1LOAN-PRODUCTIVE_COLLSHEET_ON09JAN
Scenario:4537-RBI-ACT2CTR-MEET-WEEKLYonFRI-ASSIGNSTAFF-ACTGRP-ACTCLIENT-DISJLG02JAN-MAKEREPAYMENTFOR1LOAN-PRODUCTIVE_COLLSHEET_ON09JAN
	 Given I setup the center
	 When I entered the values into center from "Input" sheet
	 |4537-RBI-ACT2CTR-MEET-WEEKLYonFRI-ASSIGNSTAFF-ACTGRP-ACTCLIENT-DISJLG02JAN-MAKEREPAYMENTFOR1LOAN-PRODUCTIVE_COLLSHEET_ON09JAN-C1.xlsx|
	 Then I entered the values into group from "Group" sheet
     |4537-RBI-ACT2CTR-MEET-WEEKLYonFRI-ASSIGNSTAFF-ACTGRP-ACTCLIENT-DISJLG02JAN-MAKEREPAYMENTFOR1LOAN-PRODUCTIVE_COLLSHEET_ON09JAN-C1.xlsx|		  								  				  				  			
	 Then I entered the values into client from "Input" sheet
	 	|Createclient.xlsx|	 				  								  				  				  			
	 When I set up the new create loan from "NewLoanInput" sheet
	 |4537-RBI-ACT2CTR-MEET-WEEKLYonFRI-ASSIGNSTAFF-ACTGRP-ACTCLIENT-DISJLG02JAN-MAKEREPAYMENTFOR1LOAN-PRODUCTIVE_COLLSHEET_ON09JAN-C1.xlsx|
     Then I make repayment and verified the following tabs
     |4537-RBI-ACT2CTR-MEET-WEEKLYonFRI-ASSIGNSTAFF-ACTGRP-ACTCLIENT-DISJLG02JAN-MAKEREPAYMENTFOR1LOAN-PRODUCTIVE_COLLSHEET_ON09JAN-C1.xlsx|Repay1|
     Then I navigate to collection Sheet
     Then I Make Repayment Through "Productive Collection" sheet
	 |4537-RBI-ACT2CTR-MEET-WEEKLYonFRI-ASSIGNSTAFF-ACTGRP-ACTCLIENT-DISJLG02JAN-MAKEREPAYMENTFOR1LOAN-PRODUCTIVE_COLLSHEET_ON09JAN-C1.xlsx|
	 Then i validate and Verify from "Output" sheet
	 |4537-RBI-ACT2CTR-MEET-WEEKLYonFRI-ASSIGNSTAFF-ACTGRP-ACTCLIENT-DISJLG02JAN-MAKEREPAYMENTFOR1LOAN-PRODUCTIVE_COLLSHEET_ON09JAN-C1.xlsx|

@4538-RBI-ACT2CTR-MEET-WEEKLYonFRI-ASSIGNSTAFF-ACTGRP-ACTCLIENT-DISJLG02JAN-MAKElessREPAYMENTFOR1LOAN-PRODUCTIVE_COLLSHEET_ONTIME09JAN
Scenario:4538-RBI-ACT2CTR-MEET-WEEKLYonFRI-ASSIGNSTAFF-ACTGRP-ACTCLIENT-DISJLG02JAN-MAKElessREPAYMENTFOR1LOAN-PRODUCTIVE_COLLSHEET_ONTIME09JAN
	 Given I setup the center
	 When I entered the values into center from "Input" sheet
	 |4538-RBI-ACT2CTR-MEET-WEEKLYonFRI-ASSIGNSTAFF-ACTGRP-ACTCLIENT-DISJLG02JAN-MAKElessREPAYMENTFOR1LOAN-PRODUCTIVE_COLLSHEET_ONTIME09JAN-C1.xlsx|
	 Then I entered the values into group from "Group" sheet
     |4538-RBI-ACT2CTR-MEET-WEEKLYonFRI-ASSIGNSTAFF-ACTGRP-ACTCLIENT-DISJLG02JAN-MAKElessREPAYMENTFOR1LOAN-PRODUCTIVE_COLLSHEET_ONTIME09JAN-C1.xlsx|		  								  				  				  			
	 Then I entered the values into client from "Input" sheet
	 	|Createclient.xlsx|	 				  								  				  				  			
	 When I set up the new create loan from "NewLoanInput" sheet
	 |4538-RBI-ACT2CTR-MEET-WEEKLYonFRI-ASSIGNSTAFF-ACTGRP-ACTCLIENT-DISJLG02JAN-MAKElessREPAYMENTFOR1LOAN-PRODUCTIVE_COLLSHEET_ONTIME09JAN-C1.xlsx|
     Then I make repayment and verified the following tabs
     |4538-RBI-ACT2CTR-MEET-WEEKLYonFRI-ASSIGNSTAFF-ACTGRP-ACTCLIENT-DISJLG02JAN-MAKElessREPAYMENTFOR1LOAN-PRODUCTIVE_COLLSHEET_ONTIME09JAN-C1.xlsx|Repay1|
     Then I navigate to collection Sheet
     Then I Make Repayment Through "Productive Collection" sheet
	 |4538-RBI-ACT2CTR-MEET-WEEKLYonFRI-ASSIGNSTAFF-ACTGRP-ACTCLIENT-DISJLG02JAN-MAKElessREPAYMENTFOR1LOAN-PRODUCTIVE_COLLSHEET_ONTIME09JAN-C1.xlsx|
	 And I navigate To Loan Account Page
	 Then I verified the following Tabs details successfully 
	 |4538-RBI-ACT2CTR-MEET-WEEKLYonFRI-ASSIGNSTAFF-ACTGRP-ACTCLIENT-DISJLG02JAN-MAKElessREPAYMENTFOR1LOAN-PRODUCTIVE_COLLSHEET_ONTIME09JAN-C1.xlsx|Summary|Repayment Schedule|

@4539-RBI-ACT2CTR-MEET-WEEKLYonFRI-ASSIGNSTAFF-ACTGRP-ACTCLIENT-DISJLG02JAN-MAKEmoreREPAYMENTFOR1LOAN-PRODUCTIVE_COLLSHEET_ONTIME09JAN
Scenario:4539-RBI-ACT2CTR-MEET-WEEKLYonFRI-ASSIGNSTAFF-ACTGRP-ACTCLIENT-DISJLG02JAN-MAKEmoreREPAYMENTFOR1LOAN-PRODUCTIVE_COLLSHEET_ONTIME09JAN
	 Given I setup the center
	 When I entered the values into center from "Input" sheet
	 |4539-RBI-ACT2CTR-MEET-WEEKLYonFRI-ASSIGNSTAFF-ACTGRP-ACTCLIENT-DISJLG02JAN-MAKEmoreREPAYMENTFOR1LOAN-PRODUCTIVE_COLLSHEET_ONTIME09JAN-C1.xlsx|
	 Then I entered the values into group from "Group" sheet
     |4539-RBI-ACT2CTR-MEET-WEEKLYonFRI-ASSIGNSTAFF-ACTGRP-ACTCLIENT-DISJLG02JAN-MAKEmoreREPAYMENTFOR1LOAN-PRODUCTIVE_COLLSHEET_ONTIME09JAN-C1.xlsx|		  								  				  				  			
	 Then I entered the values into client from "Input" sheet
	 	|Createclient.xlsx|	 				  								  				  				  			
	 When I set up the new create loan from "NewLoanInput" sheet
	 |4539-RBI-ACT2CTR-MEET-WEEKLYonFRI-ASSIGNSTAFF-ACTGRP-ACTCLIENT-DISJLG02JAN-MAKEmoreREPAYMENTFOR1LOAN-PRODUCTIVE_COLLSHEET_ONTIME09JAN-C1.xlsx|
     Then I make repayment and verified the following tabs
     |4539-RBI-ACT2CTR-MEET-WEEKLYonFRI-ASSIGNSTAFF-ACTGRP-ACTCLIENT-DISJLG02JAN-MAKEmoreREPAYMENTFOR1LOAN-PRODUCTIVE_COLLSHEET_ONTIME09JAN-C1.xlsx|Repay1|
     Then I navigate to collection Sheet
     Then I Make Repayment Through "Productive Collection" sheet
	 |4539-RBI-ACT2CTR-MEET-WEEKLYonFRI-ASSIGNSTAFF-ACTGRP-ACTCLIENT-DISJLG02JAN-MAKEmoreREPAYMENTFOR1LOAN-PRODUCTIVE_COLLSHEET_ONTIME09JAN-C1.xlsx|
	 Then i validate and Verify from "Output" sheet
	 |4539-RBI-ACT2CTR-MEET-WEEKLYonFRI-ASSIGNSTAFF-ACTGRP-ACTCLIENT-DISJLG02JAN-MAKEmoreREPAYMENTFOR1LOAN-PRODUCTIVE_COLLSHEET_ONTIME09JAN-C1.xlsx|

@4540-RBI-ACT2CTR-MEET-WEEKLYonFRI-ASSIGNSTAFF-ACTGRP-ACTCLIENT-DISJLG02JAN-WAIVEINTFOR1LOAN-PRODUCTIVE_COLLSHEET_ONTIME09JAN 
Scenario:4540-RBI-ACT2CTR-MEET-WEEKLYonFRI-ASSIGNSTAFF-ACTGRP-ACTCLIENT-DISJLG02JAN-WAIVEINTFOR1LOAN-PRODUCTIVE_COLLSHEET_ONTIME09JAN 
	 Given I setup the center
	 When I entered the values into center from "Input" sheet
	 |4540-RBI-ACT2CTR-MEET-WEEKLYonFRI-ASSIGNSTAFF-ACTGRP-ACTCLIENT-DISJLG02JAN-WAIVEINTFOR1LOAN-PRODUCTIVE_COLLSHEET_ONTIME09JAN-C1.xlsx|
	 Then I entered the values into group from "Group" sheet
     |4540-RBI-ACT2CTR-MEET-WEEKLYonFRI-ASSIGNSTAFF-ACTGRP-ACTCLIENT-DISJLG02JAN-WAIVEINTFOR1LOAN-PRODUCTIVE_COLLSHEET_ONTIME09JAN-C1.xlsx|		  								  				  				  			
	 Then I entered the values into client from "Input" sheet
	 	|Createclient.xlsx|	 				  								  				  				  			
	 When I set up the new create loan from "NewLoanInput" sheet
	 |4540-RBI-ACT2CTR-MEET-WEEKLYonFRI-ASSIGNSTAFF-ACTGRP-ACTCLIENT-DISJLG02JAN-WAIVEINTFOR1LOAN-PRODUCTIVE_COLLSHEET_ONTIME09JAN-C1.xlsx|
     Then I "WaiveInterest" and verified the following tabs
	 |4540-RBI-ACT2CTR-MEET-WEEKLYonFRI-ASSIGNSTAFF-ACTGRP-ACTCLIENT-DISJLG02JAN-WAIVEINTFOR1LOAN-PRODUCTIVE_COLLSHEET_ONTIME09JAN-C1.xlsx|Modify Transaction|
	  Then I navigate to collection Sheet
     Then I Make Repayment Through "Productive Collection" sheet
	 |4540-RBI-ACT2CTR-MEET-WEEKLYonFRI-ASSIGNSTAFF-ACTGRP-ACTCLIENT-DISJLG02JAN-WAIVEINTFOR1LOAN-PRODUCTIVE_COLLSHEET_ONTIME09JAN-C1.xlsx|
	 Then i validate and Verify from "Output" sheet
	 |4540-RBI-ACT2CTR-MEET-WEEKLYonFRI-ASSIGNSTAFF-ACTGRP-ACTCLIENT-DISJLG02JAN-WAIVEINTFOR1LOAN-PRODUCTIVE_COLLSHEET_ONTIME09JAN-C1.xlsx|
	 
@4541-RBI-ACT2CTR-MEET-WEEKLYonFRI-ASSIGNSTAFF-ACTGRP-ACTCLIENT-DISJLG02JAN-WAIVECHARGEFOR1LOAN-PRODUCTIVE_COLLSHEET_ONTIME09JAN 
Scenario:4541-RBI-ACT2CTR-MEET-WEEKLYonFRI-ASSIGNSTAFF-ACTGRP-ACTCLIENT-DISJLG02JAN-WAIVECHARGEFOR1LOAN-PRODUCTIVE_COLLSHEET_ONTIME09JAN 
	 Given I setup the center
	 When I entered the values into center from "Input" sheet
	 |4541-RBI-ACT2CTR-MEET-WEEKLYonFRI-ASSIGNSTAFF-ACTGRP-ACTCLIENT-DISJLG02JAN-WAIVECHARGEFOR1LOAN-PRODUCTIVE_COLLSHEET_ONTIME09JAN-C1.xlsx|
	 Then I entered the values into group from "Group" sheet
     |4541-RBI-ACT2CTR-MEET-WEEKLYonFRI-ASSIGNSTAFF-ACTGRP-ACTCLIENT-DISJLG02JAN-WAIVECHARGEFOR1LOAN-PRODUCTIVE_COLLSHEET_ONTIME09JAN-C1.xlsx|		  								  				  				  			
	 Then I entered the values into client from "Input" sheet
	 	|Createclient.xlsx|	 				  								  				  				  			
	 When I set up the new create loan from "NewLoanInput" sheet
	 |4541-RBI-ACT2CTR-MEET-WEEKLYonFRI-ASSIGNSTAFF-ACTGRP-ACTCLIENT-DISJLG02JAN-WAIVECHARGEFOR1LOAN-PRODUCTIVE_COLLSHEET_ONTIME09JAN-C1.xlsx|
     Then I "WAIVEPENALTY" and verified the following tabs
	 |4541-RBI-ACT2CTR-MEET-WEEKLYonFRI-ASSIGNSTAFF-ACTGRP-ACTCLIENT-DISJLG02JAN-WAIVECHARGEFOR1LOAN-PRODUCTIVE_COLLSHEET_ONTIME09JAN-C1.xlsx|Charges|
	 Then I navigate to collection Sheet
     Then I Make Repayment Through "Productive Collection" sheet
	 |4541-RBI-ACT2CTR-MEET-WEEKLYonFRI-ASSIGNSTAFF-ACTGRP-ACTCLIENT-DISJLG02JAN-WAIVECHARGEFOR1LOAN-PRODUCTIVE_COLLSHEET_ONTIME09JAN-C1.xlsx|
	 And I navigate To Loan Account Page
	 Then I verified the following Tabs details successfully 
	 |4541-RBI-ACT2CTR-MEET-WEEKLYonFRI-ASSIGNSTAFF-ACTGRP-ACTCLIENT-DISJLG02JAN-WAIVECHARGEFOR1LOAN-PRODUCTIVE_COLLSHEET_ONTIME09JAN-C1.xlsx|Summary|Repayment Schedule|

@4542-RBI-ACT2CTR-MEET-WEEKLYonFRI-ASSIGNSTAFF-ACTGRP-ACTCLIENT-DISJLG02JAN-WithPenaltyCharge-PRODUCTIVE_COLLSHEET_ONTIME09JAN 
Scenario:4542-RBI-ACT2CTR-MEET-WEEKLYonFRI-ASSIGNSTAFF-ACTGRP-ACTCLIENT-DISJLG02JAN-WithPenaltyCharge-PRODUCTIVE_COLLSHEET_ONTIME09JAN 
	 Given I setup the center
	 When I entered the values into center from "Input" sheet
	 |4542-RBI-ACT2CTR-MEET-WEEKLYonFRI-ASSIGNSTAFF-ACTGRP-ACTCLIENT-DISJLG02JAN-WithPenaltyCharge-PRODUCTIVE_COLLSHEET_ONTIME09JAN-C1.xlsx|
	 Then I entered the values into group from "Group" sheet
     |4542-RBI-ACT2CTR-MEET-WEEKLYonFRI-ASSIGNSTAFF-ACTGRP-ACTCLIENT-DISJLG02JAN-WithPenaltyCharge-PRODUCTIVE_COLLSHEET_ONTIME09JAN-C1.xlsx|		  								  				  				  			
	 Then I entered the values into client from "Input" sheet
	 	|Createclient.xlsx|	 				  								  				  				  			
	 When I set up the new create loan from "NewLoanInput" sheet
	 |4542-RBI-ACT2CTR-MEET-WEEKLYonFRI-ASSIGNSTAFF-ACTGRP-ACTCLIENT-DISJLG02JAN-WithPenaltyCharge-PRODUCTIVE_COLLSHEET_ONTIME09JAN-C1.xlsx|
     Then I navigate to collection Sheet
     Then I Make Repayment Through "Productive Collection" sheet
	 |4542-RBI-ACT2CTR-MEET-WEEKLYonFRI-ASSIGNSTAFF-ACTGRP-ACTCLIENT-DISJLG02JAN-WithPenaltyCharge-PRODUCTIVE_COLLSHEET_ONTIME09JAN-C1.xlsx|
	 And I navigate To Loan Account Page
	 Then I verified the following Tabs details successfully 
	 |4542-RBI-ACT2CTR-MEET-WEEKLYonFRI-ASSIGNSTAFF-ACTGRP-ACTCLIENT-DISJLG02JAN-WithPenaltyCharge-PRODUCTIVE_COLLSHEET_ONTIME09JAN-C1.xlsx|Summary|Repayment Schedule|

@4543-RBI-ACT2CTR-MEET-WEEKLYonFRI-ASSIGNSTAFF-ACTGRP-ACTCLIENT-DISJLG02JAN-WRITEOFF1LOAN-PRODUCTIVE_COLLSHEET_ONTIME09JAN 
Scenario:4543-RBI-ACT2CTR-MEET-WEEKLYonFRI-ASSIGNSTAFF-ACTGRP-ACTCLIENT-DISJLG02JAN-WRITEOFF1LOAN-PRODUCTIVE_COLLSHEET_ONTIME09JAN 
	 Given I setup the center
	 When I entered the values into center from "Input" sheet
	 |4543-RBI-ACT2CTR-MEET-WEEKLYonFRI-ASSIGNSTAFF-ACTGRP-ACTCLIENT-DISJLG02JAN-WRITEOFF1LOAN-PRODUCTIVE_COLLSHEET_ONTIME09JAN-C1.xlsx|
	 Then I entered the values into group from "Group" sheet
     |4543-RBI-ACT2CTR-MEET-WEEKLYonFRI-ASSIGNSTAFF-ACTGRP-ACTCLIENT-DISJLG02JAN-WRITEOFF1LOAN-PRODUCTIVE_COLLSHEET_ONTIME09JAN-C1.xlsx|		  								  				  				  			
	 Then I entered the values into client from "Input" sheet
	 	|Createclient.xlsx|	 				  								  				  				  			
	 When I set up the new create loan from "NewLoanInput" sheet
	 |4543-RBI-ACT2CTR-MEET-WEEKLYonFRI-ASSIGNSTAFF-ACTGRP-ACTCLIENT-DISJLG02JAN-WRITEOFF1LOAN-PRODUCTIVE_COLLSHEET_ONTIME09JAN-C1.xlsx|
     Then I "WRITEOFF" and verified the following tabs
	 |4543-RBI-ACT2CTR-MEET-WEEKLYonFRI-ASSIGNSTAFF-ACTGRP-ACTCLIENT-DISJLG02JAN-WRITEOFF1LOAN-PRODUCTIVE_COLLSHEET_ONTIME09JAN-C1.xlsx|Modify Transaction|
     Then I navigate to collection Sheet
     Then I Make Repayment Through "Productive Collection" sheet
	 |4543-RBI-ACT2CTR-MEET-WEEKLYonFRI-ASSIGNSTAFF-ACTGRP-ACTCLIENT-DISJLG02JAN-WRITEOFF1LOAN-PRODUCTIVE_COLLSHEET_ONTIME09JAN-C1.xlsx|
	 Then i validate and Verify from "Output" sheet
	 |4543-RBI-ACT2CTR-MEET-WEEKLYonFRI-ASSIGNSTAFF-ACTGRP-ACTCLIENT-DISJLG02JAN-WRITEOFF1LOAN-PRODUCTIVE_COLLSHEET_ONTIME09JAN-C1.xlsx|

@4544-RBI-ACT2CTR-MEET-WEEKLYonFRI-ASSIGNSTAFF-ACTGRP-ACTCLIENT-DISJLG02JAN-OVERPAY1LOAN-PRODUCTIVE_COLLSHEET_ONTIME09JAN 
Scenario:4544-RBI-ACT2CTR-MEET-WEEKLYonFRI-ASSIGNSTAFF-ACTGRP-ACTCLIENT-DISJLG02JAN-OVERPAY1LOAN-PRODUCTIVE_COLLSHEET_ONTIME09JAN 
	 Given I setup the center
	 When I entered the values into center from "Input" sheet
	 |4544-RBI-ACT2CTR-MEET-WEEKLYonFRI-ASSIGNSTAFF-ACTGRP-ACTCLIENT-DISJLG02JAN-OVERPAY1LOAN-PRODUCTIVE_COLLSHEET_ONTIME09JAN-C1.xlsx|
	 Then I entered the values into group from "Group" sheet
     |4544-RBI-ACT2CTR-MEET-WEEKLYonFRI-ASSIGNSTAFF-ACTGRP-ACTCLIENT-DISJLG02JAN-OVERPAY1LOAN-PRODUCTIVE_COLLSHEET_ONTIME09JAN-C1.xlsx|		  								  				  				  			
	 Then I entered the values into client from "Input" sheet
	 	|Createclient.xlsx|	 				  								  				  				  			
	 When I set up the new create loan from "NewLoanInput" sheet
	 |4544-RBI-ACT2CTR-MEET-WEEKLYonFRI-ASSIGNSTAFF-ACTGRP-ACTCLIENT-DISJLG02JAN-OVERPAY1LOAN-PRODUCTIVE_COLLSHEET_ONTIME09JAN-C1.xlsx|
     Then I navigate to collection Sheet
     Then I Make Repayment Through "Productive Collection" sheet
	 |4544-RBI-ACT2CTR-MEET-WEEKLYonFRI-ASSIGNSTAFF-ACTGRP-ACTCLIENT-DISJLG02JAN-OVERPAY1LOAN-PRODUCTIVE_COLLSHEET_ONTIME09JAN-C1.xlsx|
	 And I navigate To Loan Account Page
	 Then I verified the following Tabs details successfully 
	 |4544-RBI-ACT2CTR-MEET-WEEKLYonFRI-ASSIGNSTAFF-ACTGRP-ACTCLIENT-DISJLG02JAN-OVERPAY1LOAN-PRODUCTIVE_COLLSHEET_ONTIME09JAN-C1.xlsx|Summary|Repayment Schedule|

@4545-MS-ACT2CTR-NOMEET-ACTGRP-ACTCLIENT-DISJLG02JAN-PRODUCTIVE_COLLSHEETON09JAN
Scenario:4545-MS-ACT2CTR-NOMEET-ACTGRP-ACTCLIENT-DISJLG02JAN-PRODUCTIVE_COLLSHEETON09JAN
	 Given I setup the center
	 When I entered the values into center from "Input" sheet
	 |4545-MS-ACT2CTR-NOMEET-ACTGRP-ACTCLIENT-DISJLG02JAN-PRODUCTIVE_COLLSHEETON09JAN.xlsx|
	 Then I entered the values into group from "Group" sheet
     |4545-MS-ACT2CTR-NOMEET-ACTGRP-ACTCLIENT-DISJLG02JAN-PRODUCTIVE_COLLSHEETON09JAN.xlsx|		  								  				  				  			
	 Then I entered the values into client from "Input" sheet
	 	|Createclient.xlsx|	 				  								  				  				  			
	 When I set up the new create loan from "NewLoanInput" sheet
	 |4545-MS-ACT2CTR-NOMEET-ACTGRP-ACTCLIENT-DISJLG02JAN-PRODUCTIVE_COLLSHEETON09JAN.xlsx|
     Then I navigate to collection Sheet
     Then I Make Repayment Through "Productive Collection" sheet
	 |4545-MS-ACT2CTR-NOMEET-ACTGRP-ACTCLIENT-DISJLG02JAN-PRODUCTIVE_COLLSHEETON09JAN.xlsx|

@4546-MS-ACT2CTR-MEET-WEEKLYonFRI-NOSTAFF-ACTGRP-ACTCLIENT-DISJLG02JAN-PRODUCTIVE_COLLSHEETON09JAN
Scenario:4546-MS-ACT2CTR-MEET-WEEKLYonFRI-NOSTAFF-ACTGRP-ACTCLIENT-DISJLG02JAN-PRODUCTIVE_COLLSHEETON09JAN
	 Given I navigate to collection Sheet
	 Then I Make Repayment Through "Productive Collection" sheet
	 |4546-MS-ACT2CTR-MEET-WEEKLYonFRI-NOSTAFF-ACTGRP-ACTCLIENT-DISJLG02JAN-PRODUCTIVE_COLLSHEETON09JAN.xlsx|

@4547-MS-ACT2CTR-MEET-WEEKLYonFRI-ASSIGNSTAFF-ACTGRP-ACTCLIENT-DISJLG02JAN-PRODUCTIVE_COLLSHEETON09JAN-ON-10JAN2015
Scenario:4547-MS-ACT2CTR-MEET-WEEKLYonFRI-ASSIGNSTAFF-ACTGRP-ACTCLIENT-DISJLG02JAN-PRODUCTIVE_COLLSHEETON09JAN-ON-10JAN2015
	 Given I navigate to collection Sheet
	 Then I Make Repayment Through "Productive Collection" sheet
	 |4547-MS-ACT2CTR-MEET-WEEKLYonFRI-ASSIGNSTAFF-ACTGRP-ACTCLIENT-DISJLG02JAN-PRODUCTIVE_COLLSHEETON09JAN-ON-10JAN2015.xlsx|

@4548-MS-ACT2CTR-MEET-WEEKLYonFRI-ASSIGNSTAFF-ACTGRP-ACTCLIENT-DISJLG02JAN-PRODUCTIVE_COLLSHEETON09JAN-FOR-DIF-Branch-OFFICE 
Scenario:4548-MS-ACT2CTR-MEET-WEEKLYonFRI-ASSIGNSTAFF-ACTGRP-ACTCLIENT-DISJLG02JAN-PRODUCTIVE_COLLSHEETON09JAN-FOR-DIF-Branch-OFFICE 
	 Given I navigate to collection Sheet
	 Then I Make Repayment Through "Productive Collection" sheet
	 |4548-MS-ACT2CTR-MEET-WEEKLYonFRI-ASSIGNSTAFF-ACTGRP-ACTCLIENT-DISJLG02JAN-PRODUCTIVE_COLLSHEETON09JAN-FOR-DIF-Branch-OFFICE .xlsx|

@4549-MS-ACT2CTR-MEET-WEEKLYonFRI-ASSIGNSTAFF-ACTGRP-ACTCLIENT-DISJLG02JAN-PRODUCTIVE_COLLSHEETON09JAN
Scenario:4549-MS-ACT2CTR-MEET-WEEKLYonFRI-ASSIGNSTAFF-ACTGRP-ACTCLIENT-DISJLG02JAN-PRODUCTIVE_COLLSHEETON09JAN
	 Given I setup the center
	 When I entered the values into center from "Input" sheet
	 |4549-MS-ACT2CTR-MEET-WEEKLYonFRI-ASSIGNSTAFF-ACTGRP-ACTCLIENT-DISJLG02JAN-PRODUCTIVE_COLLSHEETON09JAN-C1.xlsx|
	 Then I entered the values into group from "Group" sheet
     |4549-MS-ACT2CTR-MEET-WEEKLYonFRI-ASSIGNSTAFF-ACTGRP-ACTCLIENT-DISJLG02JAN-PRODUCTIVE_COLLSHEETON09JAN-C1.xlsx|		  								  				  				  			
	 Then I entered the values into client from "Input" sheet
	 	|Createclient.xlsx|	 				  								  				  				  			
	 When I set up the new create loan from "NewLoanInput" sheet
	 |4549-MS-ACT2CTR-MEET-WEEKLYonFRI-ASSIGNSTAFF-ACTGRP-ACTCLIENT-DISJLG02JAN-PRODUCTIVE_COLLSHEETON09JAN-C1.xlsx|
	 Given I setup the center
	 When I entered the values into center from "Input" sheet
	 |4549-MS-ACT2CTR-MEET-WEEKLYonFRI-ASSIGNSTAFF-ACTGRP-ACTCLIENT-DISJLG02JAN-PRODUCTIVE_COLLSHEETON09JAN-C2.xlsx|
	 Then I entered the values into group from "Group" sheet
     |4549-MS-ACT2CTR-MEET-WEEKLYonFRI-ASSIGNSTAFF-ACTGRP-ACTCLIENT-DISJLG02JAN-PRODUCTIVE_COLLSHEETON09JAN-C2.xlsx|		  								  				  				  			
	 Then I entered the values into client from "Input" sheet
	 	|Createclient.xlsx|	 				  								  				  				  			
	 When I set up the new create loan from "NewLoanInput" sheet
	 |4549-MS-ACT2CTR-MEET-WEEKLYonFRI-ASSIGNSTAFF-ACTGRP-ACTCLIENT-DISJLG02JAN-PRODUCTIVE_COLLSHEETON09JAN-C2.xlsx|
	 Then I navigate to collection Sheet
     Then I Make Repayment Through "Productive Collection" sheet
	 |4549-MS-ACT2CTR-MEET-WEEKLYonFRI-ASSIGNSTAFF-ACTGRP-ACTCLIENT-DISJLG02JAN-PRODUCTIVE_COLLSHEETON09JAN-C2.xlsx|
	 And I navigate To Loan Account Page
	 Then I verified the following Tabs details successfully 
	 |4549-MS-ACT2CTR-MEET-WEEKLYonFRI-ASSIGNSTAFF-ACTGRP-ACTCLIENT-DISJLG02JAN-PRODUCTIVE_COLLSHEETON09JAN-C2.xlsx|Summary|Repayment Schedule|
	 	 	
@4550-MS-ACT2CTR-MEET-WEEKLYonFRI-ASSIGNSTAFF-ACTGRP-ACTCLIENT-DISJLG02JAN-PRODUCTIVE_COLLSHEETON09JAN-FOR-DIF-STAFF1 
Scenario:4550-MS-ACT2CTR-MEET-WEEKLYonFRI-ASSIGNSTAFF-ACTGRP-ACTCLIENT-DISJLG02JAN-PRODUCTIVE_COLLSHEETON09JAN-FOR-DIF-STAFF1 
	 Given I navigate to collection Sheet
	 Then I Make Repayment Through "Productive Collection" sheet
	 |4550-MS-ACT2CTR-MEET-WEEKLYonFRI-ASSIGNSTAFF-ACTGRP-ACTCLIENT-DISJLG02JAN-PRODUCTIVE_COLLSHEETON09JAN-FOR-DIF-STAFF1.xlsx|

@4551-MS-ACT2CTR-MEET-sameStaff-WEEKLYonFRI--ACT2GRP-1DiffStaff-ACTCLIENT-DISJLG02JAN-PRODUCTIVE_COLLSHEETON09JAN
Scenario:4551-MS-ACT2CTR-MEET-sameStaff-WEEKLYonFRI--ACT2GRP-1DiffStaff-ACTCLIENT-DISJLG02JAN-PRODUCTIVE_COLLSHEETON09JAN
	 Given I setup the center
	 When I entered the values into center from "Input" sheet
	 |4551-MS-ACT2CTR-MEET-sameStaff-WEEKLYonFRI--ACT2GRP-1DiffStaff-ACTCLIENT-DISJLG02JAN-PRODUCTIVE_COLLSHEETON09JAN-C1.xlsx|
	 Then I entered the values into group from "Group" sheet
     |4551-MS-ACT2CTR-MEET-sameStaff-WEEKLYonFRI--ACT2GRP-1DiffStaff-ACTCLIENT-DISJLG02JAN-PRODUCTIVE_COLLSHEETON09JAN-C1.xlsx|		  								  				  				  			
	 Then I entered the values into client from "Input" sheet
	 	|Createclient.xlsx|	 				  								  				  				  			
	 When I set up the new create loan from "NewLoanInput" sheet
	 |4551-MS-ACT2CTR-MEET-sameStaff-WEEKLYonFRI--ACT2GRP-1DiffStaff-ACTCLIENT-DISJLG02JAN-PRODUCTIVE_COLLSHEETON09JAN-C1.xlsx|
	 Given I setup the center
	 When I entered the values into center from "Input" sheet
	 |4551-MS-ACT2CTR-MEET-sameStaff-WEEKLYonFRI--ACT2GRP-1DiffStaff-ACTCLIENT-DISJLG02JAN-PRODUCTIVE_COLLSHEETON09JAN-C2.xlsx|
	 Then I entered the values into group from "Group" sheet
     |4551-MS-ACT2CTR-MEET-sameStaff-WEEKLYonFRI--ACT2GRP-1DiffStaff-ACTCLIENT-DISJLG02JAN-PRODUCTIVE_COLLSHEETON09JAN-C2.xlsx|		  								  				  				  			
	 Then I entered the values into client from "Input" sheet
	 	|Createclient.xlsx|	 				  								  				  				  			
	 When I set up the new create loan from "NewLoanInput" sheet
	 |4551-MS-ACT2CTR-MEET-sameStaff-WEEKLYonFRI--ACT2GRP-1DiffStaff-ACTCLIENT-DISJLG02JAN-PRODUCTIVE_COLLSHEETON09JAN-C2.xlsx|
	 Then I navigate to collection Sheet
     Then I Make Repayment Through "Productive Collection" sheet
	 |4551-MS-ACT2CTR-MEET-sameStaff-WEEKLYonFRI--ACT2GRP-1DiffStaff-ACTCLIENT-DISJLG02JAN-PRODUCTIVE_COLLSHEETON09JAN-C2.xlsx|
	 And I navigate To Loan Account Page
	 Then I verified the following Tabs details successfully 
	 |4551-MS-ACT2CTR-MEET-sameStaff-WEEKLYonFRI--ACT2GRP-1DiffStaff-ACTCLIENT-DISJLG02JAN-PRODUCTIVE_COLLSHEETON09JAN-C2.xlsx|Summary|Repayment Schedule|

@4552-MS-ACT2CTR-MEET-ONEWEEKLYonFRIandOTHERonWED-ASSIGNSTAFF-ACTGRP-ACTCLIENT-DISJLG02JAN-PRODUCTIVE_COLLSHEETON09JAN
Scenario:4552-MS-ACT2CTR-MEET-ONEWEEKLYonFRIandOTHERonWED-ASSIGNSTAFF-ACTGRP-ACTCLIENT-DISJLG02JAN-PRODUCTIVE_COLLSHEETON09JAN
	 Given I setup the center
	 When I entered the values into center from "Input" sheet
	 |4552-MS-ACT2CTR-MEET-ONEWEEKLYonFRIandOTHERonWED-ASSIGNSTAFF-ACTGRP-ACTCLIENT-DISJLG02JAN-PRODUCTIVE_COLLSHEETON09JAN-C1.xlsx|
	 Then I entered the values into group from "Group" sheet
     |4552-MS-ACT2CTR-MEET-ONEWEEKLYonFRIandOTHERonWED-ASSIGNSTAFF-ACTGRP-ACTCLIENT-DISJLG02JAN-PRODUCTIVE_COLLSHEETON09JAN-C1.xlsx|		  								  				  				  			
	 Then I entered the values into client from "Input" sheet
	 	|Createclient.xlsx|	 				  								  				  				  			
	 When I set up the new create loan from "NewLoanInput" sheet
	 |4552-MS-ACT2CTR-MEET-ONEWEEKLYonFRIandOTHERonWED-ASSIGNSTAFF-ACTGRP-ACTCLIENT-DISJLG02JAN-PRODUCTIVE_COLLSHEETON09JAN-C1.xlsx|
	 Given I setup the center
	 When I entered the values into center from "Input" sheet
	 |4552-MS-ACT2CTR-MEET-ONEWEEKLYonFRIandOTHERonWED-ASSIGNSTAFF-ACTGRP-ACTCLIENT-DISJLG02JAN-PRODUCTIVE_COLLSHEETON09JAN-C2.xlsx|
	 Then I entered the values into group from "Group" sheet
     |4552-MS-ACT2CTR-MEET-ONEWEEKLYonFRIandOTHERonWED-ASSIGNSTAFF-ACTGRP-ACTCLIENT-DISJLG02JAN-PRODUCTIVE_COLLSHEETON09JAN-C2.xlsx|		  								  				  				  			
	 Then I entered the values into client from "Input" sheet
	 	|Createclient.xlsx|	 				  								  				  				  			
	 When I set up the new create loan from "NewLoanInput" sheet
	 |4552-MS-ACT2CTR-MEET-ONEWEEKLYonFRIandOTHERonWED-ASSIGNSTAFF-ACTGRP-ACTCLIENT-DISJLG02JAN-PRODUCTIVE_COLLSHEETON09JAN-C2.xlsx|
	 Then I navigate to collection Sheet
     Then I Make Repayment Through "Productive Collection" sheet
	 |4552-MS-ACT2CTR-MEET-ONEWEEKLYonFRIandOTHERonWED-ASSIGNSTAFF-ACTGRP-ACTCLIENT-DISJLG02JAN-PRODUCTIVE_COLLSHEETON09JAN-C2.xlsx|
	 Then i validate and Verify from "Output" sheet
	 |4552-MS-ACT2CTR-MEET-ONEWEEKLYonFRIandOTHERonWED-ASSIGNSTAFF-ACTGRP-ACTCLIENT-DISJLG02JAN-PRODUCTIVE_COLLSHEETON09JAN-C2.xlsx|

@4553-MS-ACT2CTR-MEET-ONEWEEKLYonFRIandOTHERonWED-ASSIGNSTAFF-ACTGRP-ACTCLIENT-DISJLG02JAN-PRODUCTIVE_COLLSHEETON14JAN
Scenario:4553-MS-ACT2CTR-MEET-ONEWEEKLYonFRIandOTHERonWED-ASSIGNSTAFF-ACTGRP-ACTCLIENT-DISJLG02JAN-PRODUCTIVE_COLLSHEETON14JAN
	 Given I navigate to collection Sheet
     Then I Make Repayment Through "Productive Collection" sheet
	 |4553-MS-ACT2CTR-MEET-ONEWEEKLYonFRIandOTHERonWED-ASSIGNSTAFF-ACTGRP-ACTCLIENT-DISJLG02JAN-PRODUCTIVE_COLLSHEETON14JAN-C2.xlsx|
	 Then i validate and Verify from "Output" sheet
	 |4553-MS-ACT2CTR-MEET-ONEWEEKLYonFRIandOTHERonWED-ASSIGNSTAFF-ACTGRP-ACTCLIENT-DISJLG02JAN-PRODUCTIVE_COLLSHEETON14JAN-C2.xlsx|
	  	 
@4554-MS-ACT2CTR-MEET-WEEKLYonFRI-ASSIGNSTAFF-ACTGRP-ACTCLIENT-DISJLG02JAN-PRODUCTIVE_COLLSHEETON26DEC
Scenario:4554-MS-ACT2CTR-MEET-WEEKLYonFRI-ASSIGNSTAFF-ACTGRP-ACTCLIENT-DISJLG02JAN-PRODUCTIVE_COLLSHEETON26DEC
	 Given I setup the center
	 When I entered the values into center from "Input" sheet
	 |4554-MS-ACT2CTR-MEET-WEEKLYonFRI-ASSIGNSTAFF-ACTGRP-ACTCLIENT-DISJLG02JAN-PRODUCTIVE_COLLSHEETON26DEC.xlsx|
	 Then I entered the values into group from "Group" sheet
     |4554-MS-ACT2CTR-MEET-WEEKLYonFRI-ASSIGNSTAFF-ACTGRP-ACTCLIENT-DISJLG02JAN-PRODUCTIVE_COLLSHEETON26DEC.xlsx|		  								  				  				  			
	 Then I entered the values into client from "Input" sheet
	 	|Createclient.xlsx|	 				  								  				  				  			
	 When I set up the new create loan from "NewLoanInput" sheet
	 |4554-MS-ACT2CTR-MEET-WEEKLYonFRI-ASSIGNSTAFF-ACTGRP-ACTCLIENT-DISJLG02JAN-PRODUCTIVE_COLLSHEETON26DEC.xlsx|
     Then I navigate to collection Sheet
     Then I Make Repayment Through "Productive Collection" sheet
	 |4554-MS-ACT2CTR-MEET-WEEKLYonFRI-ASSIGNSTAFF-ACTGRP-ACTCLIENT-DISJLG02JAN-PRODUCTIVE_COLLSHEETON26DEC.xlsx|
	 Then i validate and Verify from "Output" sheet
	 |4554-MS-ACT2CTR-MEET-WEEKLYonFRI-ASSIGNSTAFF-ACTGRP-ACTCLIENT-DISJLG02JAN-PRODUCTIVE_COLLSHEETON26DEC.xlsx|
	 
@4555-MS-ACT2CTR-MEET-WEEKLYonFRI-ASSIGNSTAFF-ACTGRP-ACTCLIENT-DISJLG02JAN-PRODUCTIVE_COLLSHEETON02JAN
Scenario:4555-MS-ACT2CTR-MEET-WEEKLYonFRI-ASSIGNSTAFF-ACTGRP-ACTCLIENT-DISJLG02JAN-PRODUCTIVE_COLLSHEETON02JAN
	 Given I setup the center
	 When I entered the values into center from "Input" sheet
	 |4555-MS-ACT2CTR-MEET-WEEKLYonFRI-ASSIGNSTAFF-ACTGRP-ACTCLIENT-DISJLG02JAN-PRODUCTIVE_COLLSHEETON02JAN.xlsx|
	 Then I entered the values into group from "Group" sheet
     |4555-MS-ACT2CTR-MEET-WEEKLYonFRI-ASSIGNSTAFF-ACTGRP-ACTCLIENT-DISJLG02JAN-PRODUCTIVE_COLLSHEETON02JAN.xlsx|		  								  				  				  			
	 Then I entered the values into client from "Input" sheet
	 	|Createclient.xlsx|	 				  								  				  				  			
	 When I set up the new create loan from "NewLoanInput" sheet
	 |4555-MS-ACT2CTR-MEET-WEEKLYonFRI-ASSIGNSTAFF-ACTGRP-ACTCLIENT-DISJLG02JAN-PRODUCTIVE_COLLSHEETON02JAN.xlsx|
     Then I navigate to collection Sheet
     Then I Make Repayment Through "Productive Collection" sheet
	 |4555-MS-ACT2CTR-MEET-WEEKLYonFRI-ASSIGNSTAFF-ACTGRP-ACTCLIENT-DISJLG02JAN-PRODUCTIVE_COLLSHEETON02JAN.xlsx|
	 Then i validate and Verify from "Output" sheet
	 |4555-MS-ACT2CTR-MEET-WEEKLYonFRI-ASSIGNSTAFF-ACTGRP-ACTCLIENT-DISJLG02JAN-PRODUCTIVE_COLLSHEETON02JAN.xlsx|
	 
@4556-MS-ACT2CTR-MEET-WEEKLYonFRI-ASSIGNSTAFF-ACTGRP-ACTCLIENT-DISJLG02JAN-PRODUCTIVE_COLLSHEETON16JAN-C1
Scenario:4556-MS-ACT2CTR-MEET-WEEKLYonFRI-ASSIGNSTAFF-ACTGRP-ACTCLIENT-DISJLG02JAN-PRODUCTIVE_COLLSHEETON16JAN-C1
	 Given I setup the center
	 When I entered the values into center from "Input" sheet
	 |4556-MS-ACT2CTR-MEET-WEEKLYonFRI-ASSIGNSTAFF-ACTGRP-ACTCLIENT-DISJLG02JAN-PRODUCTIVE_COLLSHEETON16JAN-C1.xlsx|
	 Then I entered the values into group from "Group" sheet
     |4556-MS-ACT2CTR-MEET-WEEKLYonFRI-ASSIGNSTAFF-ACTGRP-ACTCLIENT-DISJLG02JAN-PRODUCTIVE_COLLSHEETON16JAN-C1.xlsx|		  								  				  				  			
	 Then I entered the values into client from "Input" sheet
	 	|Createclient.xlsx|	 				  								  				  				  			
	 When I set up the new create loan from "NewLoanInput" sheet
	 |4556-MS-ACT2CTR-MEET-WEEKLYonFRI-ASSIGNSTAFF-ACTGRP-ACTCLIENT-DISJLG02JAN-PRODUCTIVE_COLLSHEETON16JAN-C1.xlsx|
     Then I navigate to collection Sheet
     Then I Make Repayment Through "Productive Collection" sheet
	 |4556-MS-ACT2CTR-MEET-WEEKLYonFRI-ASSIGNSTAFF-ACTGRP-ACTCLIENT-DISJLG02JAN-PRODUCTIVE_COLLSHEETON16JAN-C1.xlsx|
	 And I navigate To Loan Account Page
	 Then I verified the following Tabs details successfully 
	 |4556-MS-ACT2CTR-MEET-WEEKLYonFRI-ASSIGNSTAFF-ACTGRP-ACTCLIENT-DISJLG02JAN-PRODUCTIVE_COLLSHEETON16JAN-C1.xlsx|Summary|Repayment Schedule|

@4557-MS-ACT2CTR-MEET-WEEKLYonFRI-ASSIGNSTAFF-ACTGRP-ACTCLIENT-DISJLG02JAN-PRODUCTIVE_COLLSHEET_REPAYLESSONTIME09JAN-C1
Scenario:4557-MS-ACT2CTR-MEET-WEEKLYonFRI-ASSIGNSTAFF-ACTGRP-ACTCLIENT-DISJLG02JAN-PRODUCTIVE_COLLSHEET_REPAYLESSONTIME09JAN-C1
	 Given I setup the center
	 When I entered the values into center from "Input" sheet
	 |4557-MS-ACT2CTR-MEET-WEEKLYonFRI-ASSIGNSTAFF-ACTGRP-ACTCLIENT-DISJLG02JAN-PRODUCTIVE_COLLSHEET_REPAYLESSONTIME09JAN-C1.xlsx|
	 Then I entered the values into group from "Group" sheet
     |4557-MS-ACT2CTR-MEET-WEEKLYonFRI-ASSIGNSTAFF-ACTGRP-ACTCLIENT-DISJLG02JAN-PRODUCTIVE_COLLSHEET_REPAYLESSONTIME09JAN-C1.xlsx|		  								  				  				  			
	 Then I entered the values into client from "Input" sheet
	 	|Createclient.xlsx|	 				  								  				  				  			
	 When I set up the new create loan from "NewLoanInput" sheet
	 |4557-MS-ACT2CTR-MEET-WEEKLYonFRI-ASSIGNSTAFF-ACTGRP-ACTCLIENT-DISJLG02JAN-PRODUCTIVE_COLLSHEET_REPAYLESSONTIME09JAN-C1.xlsx|
     Then I navigate to collection Sheet
     Then I Make Repayment Through "Productive Collection" sheet
	 |4557-MS-ACT2CTR-MEET-WEEKLYonFRI-ASSIGNSTAFF-ACTGRP-ACTCLIENT-DISJLG02JAN-PRODUCTIVE_COLLSHEET_REPAYLESSONTIME09JAN-C1.xlsx|
	 And I navigate To Loan Account Page
	 Then I verified the following Tabs details successfully 
	 |4557-MS-ACT2CTR-MEET-WEEKLYonFRI-ASSIGNSTAFF-ACTGRP-ACTCLIENT-DISJLG02JAN-PRODUCTIVE_COLLSHEET_REPAYLESSONTIME09JAN-C1.xlsx|Summary|Repayment Schedule|

@4558-MS-ACT2CTR-MEET-WEEKLYonFRI-ASSIGNSTAFF-ACTGRP-ACTCLIENT-DISJLG02JAN-PRODUCTIVE_COLLSHEET_REPAY-Remaning-on-09JAN
Scenario:4558-MS-ACT2CTR-MEET-WEEKLYonFRI-ASSIGNSTAFF-ACTGRP-ACTCLIENT-DISJLG02JAN-PRODUCTIVE_COLLSHEET_REPAY-Remaning-on-09JAN
	 Given I navigate to collection Sheet
     Then I Make Repayment Through "Productive Collection" sheet
	 |4558-MS-ACT2CTR-MEET-WEEKLYonFRI-ASSIGNSTAFF-ACTGRP-ACTCLIENT-DISJLG02JAN-PRODUCTIVE_COLLSHEET_REPAY-Remaning-on-09JAN.xlsx|
	 Then i validate and Verify from "Output" sheet
	 |4558-MS-ACT2CTR-MEET-WEEKLYonFRI-ASSIGNSTAFF-ACTGRP-ACTCLIENT-DISJLG02JAN-PRODUCTIVE_COLLSHEET_REPAY-Remaning-on-09JAN.xlsx|

@4559-MS-ACT2CTR-MEET-WEEKLYonFRI-ASSIGNSTAFF-ACTGRP-ACTCLIENT-DISJLG02JAN-PRODUCTIVE_COLLSHEET_REPAYMOREONTIME09JAN
Scenario:4559-MS-ACT2CTR-MEET-WEEKLYonFRI-ASSIGNSTAFF-ACTGRP-ACTCLIENT-DISJLG02JAN-PRODUCTIVE_COLLSHEET_REPAYMOREONTIME09JAN
	 Given I setup the center
	 When I entered the values into center from "Input" sheet
	 |4559-MS-ACT2CTR-MEET-WEEKLYonFRI-ASSIGNSTAFF-ACTGRP-ACTCLIENT-DISJLG02JAN-PRODUCTIVE_COLLSHEET_REPAYMOREONTIME09JAN-C1.xlsx|
	 Then I entered the values into group from "Group" sheet
     |4559-MS-ACT2CTR-MEET-WEEKLYonFRI-ASSIGNSTAFF-ACTGRP-ACTCLIENT-DISJLG02JAN-PRODUCTIVE_COLLSHEET_REPAYMOREONTIME09JAN-C1.xlsx|		  								  				  				  			
	 Then I entered the values into client from "Input" sheet
	 	|Createclient.xlsx|	 				  								  				  				  			
	 When I set up the new create loan from "NewLoanInput" sheet
	 |4559-MS-ACT2CTR-MEET-WEEKLYonFRI-ASSIGNSTAFF-ACTGRP-ACTCLIENT-DISJLG02JAN-PRODUCTIVE_COLLSHEET_REPAYMOREONTIME09JAN-C1.xlsx|
     Then I navigate to collection Sheet
     Then I Make Repayment Through "Productive Collection" sheet
	 |4559-MS-ACT2CTR-MEET-WEEKLYonFRI-ASSIGNSTAFF-ACTGRP-ACTCLIENT-DISJLG02JAN-PRODUCTIVE_COLLSHEET_REPAYMOREONTIME09JAN-C1.xlsx|
	 And I navigate To Loan Account Page
	 Then I verified the following Tabs details successfully 
	 |4559-MS-ACT2CTR-MEET-WEEKLYonFRI-ASSIGNSTAFF-ACTGRP-ACTCLIENT-DISJLG02JAN-PRODUCTIVE_COLLSHEET_REPAYMOREONTIME09JAN-C1.xlsx|Summary|Repayment Schedule|

@4560-MS-ACT2CTR-MEET-WEEKLYonFRI-ASSIGNSTAFF-ACTGRP-ACTCLIENT-DISJLG02JAN-PRODUCTIVE_COLLSHEET_REPAY-2nd-Payment16JAN
Scenario:4560-MS-ACT2CTR-MEET-WEEKLYonFRI-ASSIGNSTAFF-ACTGRP-ACTCLIENT-DISJLG02JAN-PRODUCTIVE_COLLSHEET_REPAY-2nd-Payment16JAN
	 Given I navigate to collection Sheet
     Then I Make Repayment Through "Productive Collection" sheet
	 |4560-MS-ACT2CTR-MEET-WEEKLYonFRI-ASSIGNSTAFF-ACTGRP-ACTCLIENT-DISJLG02JAN-PRODUCTIVE_COLLSHEET_REPAY-2nd-Payment16JAN.xlsx|
	 Then i validate and Verify from "Output" sheet
	 |4560-MS-ACT2CTR-MEET-WEEKLYonFRI-ASSIGNSTAFF-ACTGRP-ACTCLIENT-DISJLG02JAN-PRODUCTIVE_COLLSHEET_REPAY-2nd-Payment16JAN.xlsx|

@4561-MS-ACT2CTR-MEET-WEEKLYonFRI-ASSIGNSTAFF-ACTGRP-ACTCLIENT-DISJLG02JAN-UndoDisburse-PRODUCTIVE_COLLSHEET
Scenario:4561-MS-ACT2CTR-MEET-WEEKLYonFRI-ASSIGNSTAFF-ACTGRP-ACTCLIENT-DISJLG02JAN-UndoDisburse-PRODUCTIVE_COLLSHEET
	 Given I setup the center
	 When I entered the values into center from "Input" sheet
	 |4561-MS-ACT2CTR-MEET-WEEKLYonFRI-ASSIGNSTAFF-ACTGRP-ACTCLIENT-DISJLG02JAN-UndoDisburse-PRODUCTIVE_COLLSHEET-C1.xlsx|
	 Then I entered the values into group from "Group" sheet
     |4561-MS-ACT2CTR-MEET-WEEKLYonFRI-ASSIGNSTAFF-ACTGRP-ACTCLIENT-DISJLG02JAN-UndoDisburse-PRODUCTIVE_COLLSHEET-C1.xlsx|		  								  				  				  			
	 Then I entered the values into client from "Input" sheet
	 	|Createclient.xlsx|	 				  								  				  				  			
	 When I set up the new create loan from "NewLoanInput" sheet
	 |4561-MS-ACT2CTR-MEET-WEEKLYonFRI-ASSIGNSTAFF-ACTGRP-ACTCLIENT-DISJLG02JAN-UndoDisburse-PRODUCTIVE_COLLSHEET-C1.xlsx|
     Then I "Do Undo Disbursal" and verified the following tabs
     |4561-MS-ACT2CTR-MEET-WEEKLYonFRI-ASSIGNSTAFF-ACTGRP-ACTCLIENT-DISJLG02JAN-UndoDisburse-PRODUCTIVE_COLLSHEET-C1.xlsx|Undo Disbursal|
     Then I navigate to collection Sheet
     Then I Make Repayment Through "Productive Collection" sheet
	 |4561-MS-ACT2CTR-MEET-WEEKLYonFRI-ASSIGNSTAFF-ACTGRP-ACTCLIENT-DISJLG02JAN-UndoDisburse-PRODUCTIVE_COLLSHEET-C1.xlsx|

@4562-MS-ACT2CTR-MEET-WEEKLYonFRI-ASSIGNSTAFF-ACTGRP-ACTCLIENT-DISJLG02JAN-MAKEREPAYMENTFOR1LOAN-PRODUCTIVE_COLLSHEET_ON09JAN
Scenario:4562-MS-ACT2CTR-MEET-WEEKLYonFRI-ASSIGNSTAFF-ACTGRP-ACTCLIENT-DISJLG02JAN-MAKEREPAYMENTFOR1LOAN-PRODUCTIVE_COLLSHEET_ON09JAN
	 Given I setup the center
	 When I entered the values into center from "Input" sheet
	 |4562-MS-ACT2CTR-MEET-WEEKLYonFRI-ASSIGNSTAFF-ACTGRP-ACTCLIENT-DISJLG02JAN-MAKEREPAYMENTFOR1LOAN-PRODUCTIVE_COLLSHEET_ON09JAN-C1.xlsx|
	 Then I entered the values into group from "Group" sheet
     |4562-MS-ACT2CTR-MEET-WEEKLYonFRI-ASSIGNSTAFF-ACTGRP-ACTCLIENT-DISJLG02JAN-MAKEREPAYMENTFOR1LOAN-PRODUCTIVE_COLLSHEET_ON09JAN-C1.xlsx|		  								  				  				  			
	 Then I entered the values into client from "Input" sheet
	 	|Createclient.xlsx|	 				  								  				  				  			
	 When I set up the new create loan from "NewLoanInput" sheet
	 |4562-MS-ACT2CTR-MEET-WEEKLYonFRI-ASSIGNSTAFF-ACTGRP-ACTCLIENT-DISJLG02JAN-MAKEREPAYMENTFOR1LOAN-PRODUCTIVE_COLLSHEET_ON09JAN-C1.xlsx|
     Then I make repayment and verified the following tabs
     |4562-MS-ACT2CTR-MEET-WEEKLYonFRI-ASSIGNSTAFF-ACTGRP-ACTCLIENT-DISJLG02JAN-MAKEREPAYMENTFOR1LOAN-PRODUCTIVE_COLLSHEET_ON09JAN-C1.xlsx|Repay1|
     Then I navigate to collection Sheet
     Then I Make Repayment Through "Productive Collection" sheet
	 |4562-MS-ACT2CTR-MEET-WEEKLYonFRI-ASSIGNSTAFF-ACTGRP-ACTCLIENT-DISJLG02JAN-MAKEREPAYMENTFOR1LOAN-PRODUCTIVE_COLLSHEET_ON09JAN-C1.xlsx|
	 Then i validate and Verify from "Output" sheet
	 |4562-MS-ACT2CTR-MEET-WEEKLYonFRI-ASSIGNSTAFF-ACTGRP-ACTCLIENT-DISJLG02JAN-MAKEREPAYMENTFOR1LOAN-PRODUCTIVE_COLLSHEET_ON09JAN-C1.xlsx|

@4563-MS-ACT2CTR-MEET-WEEKLYonFRI-ASSIGNSTAFF-ACTGRP-ACTCLIENT-DISJLG02JAN-MAKElessREPAYMENTFOR1LOAN-PRODUCTIVE_COLLSHEET_ONTIME09JAN
Scenario:4563-MS-ACT2CTR-MEET-WEEKLYonFRI-ASSIGNSTAFF-ACTGRP-ACTCLIENT-DISJLG02JAN-MAKElessREPAYMENTFOR1LOAN-PRODUCTIVE_COLLSHEET_ONTIME09JAN
	 Given I setup the center
	 When I entered the values into center from "Input" sheet
	 |4563-MS-ACT2CTR-MEET-WEEKLYonFRI-ASSIGNSTAFF-ACTGRP-ACTCLIENT-DISJLG02JAN-MAKElessREPAYMENTFOR1LOAN-PRODUCTIVE_COLLSHEET_ONTIME09JAN-C1.xlsx|
	 Then I entered the values into group from "Group" sheet
     |4563-MS-ACT2CTR-MEET-WEEKLYonFRI-ASSIGNSTAFF-ACTGRP-ACTCLIENT-DISJLG02JAN-MAKElessREPAYMENTFOR1LOAN-PRODUCTIVE_COLLSHEET_ONTIME09JAN-C1.xlsx|		  								  				  				  			
	 Then I entered the values into client from "Input" sheet
	 	|Createclient.xlsx|	 				  								  				  				  			
	 When I set up the new create loan from "NewLoanInput" sheet
	 |4563-MS-ACT2CTR-MEET-WEEKLYonFRI-ASSIGNSTAFF-ACTGRP-ACTCLIENT-DISJLG02JAN-MAKElessREPAYMENTFOR1LOAN-PRODUCTIVE_COLLSHEET_ONTIME09JAN-C1.xlsx|
     Then I make repayment and verified the following tabs
     |4563-MS-ACT2CTR-MEET-WEEKLYonFRI-ASSIGNSTAFF-ACTGRP-ACTCLIENT-DISJLG02JAN-MAKElessREPAYMENTFOR1LOAN-PRODUCTIVE_COLLSHEET_ONTIME09JAN-C1.xlsx|Repay1|
     Then I navigate to collection Sheet
     Then I Make Repayment Through "Productive Collection" sheet
	 |4563-MS-ACT2CTR-MEET-WEEKLYonFRI-ASSIGNSTAFF-ACTGRP-ACTCLIENT-DISJLG02JAN-MAKElessREPAYMENTFOR1LOAN-PRODUCTIVE_COLLSHEET_ONTIME09JAN-C1.xlsx|
	 And I navigate To Loan Account Page
	 Then I verified the following Tabs details successfully 
	 |4563-MS-ACT2CTR-MEET-WEEKLYonFRI-ASSIGNSTAFF-ACTGRP-ACTCLIENT-DISJLG02JAN-MAKElessREPAYMENTFOR1LOAN-PRODUCTIVE_COLLSHEET_ONTIME09JAN-C1.xlsx|Summary|Repayment Schedule|

@4564-MS-ACT2CTR-MEET-WEEKLYonFRI-ASSIGNSTAFF-ACTGRP-ACTCLIENT-DISJLG02JAN-MAKEmoreREPAYMENTFOR1LOAN-PRODUCTIVE_COLLSHEET_ONTIME09JAN
Scenario:4564-MS-ACT2CTR-MEET-WEEKLYonFRI-ASSIGNSTAFF-ACTGRP-ACTCLIENT-DISJLG02JAN-MAKEmoreREPAYMENTFOR1LOAN-PRODUCTIVE_COLLSHEET_ONTIME09JAN
	 Given I setup the center
	 When I entered the values into center from "Input" sheet
	 |4564-MS-ACT2CTR-MEET-WEEKLYonFRI-ASSIGNSTAFF-ACTGRP-ACTCLIENT-DISJLG02JAN-MAKEmoreREPAYMENTFOR1LOAN-PRODUCTIVE_COLLSHEET_ONTIME09JAN-C1.xlsx|
	 Then I entered the values into group from "Group" sheet
     |4564-MS-ACT2CTR-MEET-WEEKLYonFRI-ASSIGNSTAFF-ACTGRP-ACTCLIENT-DISJLG02JAN-MAKEmoreREPAYMENTFOR1LOAN-PRODUCTIVE_COLLSHEET_ONTIME09JAN-C1.xlsx|		  								  				  				  			
	 Then I entered the values into client from "Input" sheet
	 	|Createclient.xlsx|	 				  								  				  				  			
	 When I set up the new create loan from "NewLoanInput" sheet
	 |4564-MS-ACT2CTR-MEET-WEEKLYonFRI-ASSIGNSTAFF-ACTGRP-ACTCLIENT-DISJLG02JAN-MAKEmoreREPAYMENTFOR1LOAN-PRODUCTIVE_COLLSHEET_ONTIME09JAN-C1.xlsx|
     Then I make repayment and verified the following tabs
     |4564-MS-ACT2CTR-MEET-WEEKLYonFRI-ASSIGNSTAFF-ACTGRP-ACTCLIENT-DISJLG02JAN-MAKEmoreREPAYMENTFOR1LOAN-PRODUCTIVE_COLLSHEET_ONTIME09JAN-C1.xlsx|Repay1|
     Then I navigate to collection Sheet
     Then I Make Repayment Through "Productive Collection" sheet
	 |4564-MS-ACT2CTR-MEET-WEEKLYonFRI-ASSIGNSTAFF-ACTGRP-ACTCLIENT-DISJLG02JAN-MAKEmoreREPAYMENTFOR1LOAN-PRODUCTIVE_COLLSHEET_ONTIME09JAN-C1.xlsx|
	 Then i validate and Verify from "Output" sheet
	 |4564-MS-ACT2CTR-MEET-WEEKLYonFRI-ASSIGNSTAFF-ACTGRP-ACTCLIENT-DISJLG02JAN-MAKEmoreREPAYMENTFOR1LOAN-PRODUCTIVE_COLLSHEET_ONTIME09JAN-C1.xlsx|

@4565-MS-ACT2CTR-MEET-WEEKLYonFRI-ASSIGNSTAFF-ACTGRP-ACTCLIENT-DISJLG02JAN-WAIVEINTFOR1LOAN-PRODUCTIVE_COLLSHEET_ONTIME09JAN 
Scenario:4565-MS-ACT2CTR-MEET-WEEKLYonFRI-ASSIGNSTAFF-ACTGRP-ACTCLIENT-DISJLG02JAN-WAIVEINTFOR1LOAN-PRODUCTIVE_COLLSHEET_ONTIME09JAN 
	 Given I setup the center
	 When I entered the values into center from "Input" sheet
	 |4565-MS-ACT2CTR-MEET-WEEKLYonFRI-ASSIGNSTAFF-ACTGRP-ACTCLIENT-DISJLG02JAN-WAIVEINTFOR1LOAN-PRODUCTIVE_COLLSHEET_ONTIME09JAN-C1.xlsx|
	 Then I entered the values into group from "Group" sheet
     |4565-MS-ACT2CTR-MEET-WEEKLYonFRI-ASSIGNSTAFF-ACTGRP-ACTCLIENT-DISJLG02JAN-WAIVEINTFOR1LOAN-PRODUCTIVE_COLLSHEET_ONTIME09JAN-C1.xlsx|		  								  				  				  			
	 Then I entered the values into client from "Input" sheet
	 	|Createclient.xlsx|	 				  								  				  				  			
	 When I set up the new create loan from "NewLoanInput" sheet
	 |4565-MS-ACT2CTR-MEET-WEEKLYonFRI-ASSIGNSTAFF-ACTGRP-ACTCLIENT-DISJLG02JAN-WAIVEINTFOR1LOAN-PRODUCTIVE_COLLSHEET_ONTIME09JAN-C1.xlsx|
     Then I "WaiveInterest" and verified the following tabs
	 |4565-MS-ACT2CTR-MEET-WEEKLYonFRI-ASSIGNSTAFF-ACTGRP-ACTCLIENT-DISJLG02JAN-WAIVEINTFOR1LOAN-PRODUCTIVE_COLLSHEET_ONTIME09JAN-C1.xlsx|Modify Transaction|
	  Then I navigate to collection Sheet
     Then I Make Repayment Through "Productive Collection" sheet
	 |4565-MS-ACT2CTR-MEET-WEEKLYonFRI-ASSIGNSTAFF-ACTGRP-ACTCLIENT-DISJLG02JAN-WAIVEINTFOR1LOAN-PRODUCTIVE_COLLSHEET_ONTIME09JAN-C1.xlsx|
	 Then i validate and Verify from "Output" sheet
	 |4565-MS-ACT2CTR-MEET-WEEKLYonFRI-ASSIGNSTAFF-ACTGRP-ACTCLIENT-DISJLG02JAN-WAIVEINTFOR1LOAN-PRODUCTIVE_COLLSHEET_ONTIME09JAN-C1.xlsx|
	 
@4566-MS-ACT2CTR-MEET-WEEKLYonFRI-ASSIGNSTAFF-ACTGRP-ACTCLIENT-DISJLG02JAN-WAIVECHARGEFOR1LOAN-PRODUCTIVE_COLLSHEET_ONTIME09JAN 
Scenario:4566-MS-ACT2CTR-MEET-WEEKLYonFRI-ASSIGNSTAFF-ACTGRP-ACTCLIENT-DISJLG02JAN-WAIVECHARGEFOR1LOAN-PRODUCTIVE_COLLSHEET_ONTIME09JAN 
	 Given I setup the center
	 When I entered the values into center from "Input" sheet
	 |4566-MS-ACT2CTR-MEET-WEEKLYonFRI-ASSIGNSTAFF-ACTGRP-ACTCLIENT-DISJLG02JAN-WAIVECHARGEFOR1LOAN-PRODUCTIVE_COLLSHEET_ONTIME09JAN-C1.xlsx|
	 Then I entered the values into group from "Group" sheet
     |4566-MS-ACT2CTR-MEET-WEEKLYonFRI-ASSIGNSTAFF-ACTGRP-ACTCLIENT-DISJLG02JAN-WAIVECHARGEFOR1LOAN-PRODUCTIVE_COLLSHEET_ONTIME09JAN-C1.xlsx|		  								  				  				  			
	 Then I entered the values into client from "Input" sheet
	 	|Createclient.xlsx|	 				  								  				  				  			
	 When I set up the new create loan from "NewLoanInput" sheet
	 |4566-MS-ACT2CTR-MEET-WEEKLYonFRI-ASSIGNSTAFF-ACTGRP-ACTCLIENT-DISJLG02JAN-WAIVECHARGEFOR1LOAN-PRODUCTIVE_COLLSHEET_ONTIME09JAN-C1.xlsx|
     Then I "WAIVEPENALTY" and verified the following tabs
	 |4566-MS-ACT2CTR-MEET-WEEKLYonFRI-ASSIGNSTAFF-ACTGRP-ACTCLIENT-DISJLG02JAN-WAIVECHARGEFOR1LOAN-PRODUCTIVE_COLLSHEET_ONTIME09JAN-C1.xlsx|Charges|
	 Then I navigate to collection Sheet
     Then I Make Repayment Through "Productive Collection" sheet
	 |4566-MS-ACT2CTR-MEET-WEEKLYonFRI-ASSIGNSTAFF-ACTGRP-ACTCLIENT-DISJLG02JAN-WAIVECHARGEFOR1LOAN-PRODUCTIVE_COLLSHEET_ONTIME09JAN-C1.xlsx|
	 And I navigate To Loan Account Page
	 Then I verified the following Tabs details successfully 
	 |4566-MS-ACT2CTR-MEET-WEEKLYonFRI-ASSIGNSTAFF-ACTGRP-ACTCLIENT-DISJLG02JAN-WAIVECHARGEFOR1LOAN-PRODUCTIVE_COLLSHEET_ONTIME09JAN-C1.xlsx|Summary|Repayment Schedule|

@4567-MS-ACT2CTR-MEET-WEEKLYonFRI-ASSIGNSTAFF-ACTGRP-ACTCLIENT-DISJLG02JAN-WithPenaltyCharge-PRODUCTIVE_COLLSHEET_ONTIME09JAN 
Scenario:4567-MS-ACT2CTR-MEET-WEEKLYonFRI-ASSIGNSTAFF-ACTGRP-ACTCLIENT-DISJLG02JAN-WithPenaltyCharge-PRODUCTIVE_COLLSHEET_ONTIME09JAN 
	 Given I setup the center
	 When I entered the values into center from "Input" sheet
	 |4567-MS-ACT2CTR-MEET-WEEKLYonFRI-ASSIGNSTAFF-ACTGRP-ACTCLIENT-DISJLG02JAN-WithPenaltyCharge-PRODUCTIVE_COLLSHEET_ONTIME09JAN-C1.xlsx|
	 Then I entered the values into group from "Group" sheet
     |4567-MS-ACT2CTR-MEET-WEEKLYonFRI-ASSIGNSTAFF-ACTGRP-ACTCLIENT-DISJLG02JAN-WithPenaltyCharge-PRODUCTIVE_COLLSHEET_ONTIME09JAN-C1.xlsx|		  								  				  				  			
	 Then I entered the values into client from "Input" sheet
	 	|Createclient.xlsx|	 				  								  				  				  			
	 When I set up the new create loan from "NewLoanInput" sheet
	 |4567-MS-ACT2CTR-MEET-WEEKLYonFRI-ASSIGNSTAFF-ACTGRP-ACTCLIENT-DISJLG02JAN-WithPenaltyCharge-PRODUCTIVE_COLLSHEET_ONTIME09JAN-C1.xlsx|
     Then I navigate to collection Sheet
     Then I Make Repayment Through "Productive Collection" sheet
	 |4567-MS-ACT2CTR-MEET-WEEKLYonFRI-ASSIGNSTAFF-ACTGRP-ACTCLIENT-DISJLG02JAN-WithPenaltyCharge-PRODUCTIVE_COLLSHEET_ONTIME09JAN-C1.xlsx|
	 And I navigate To Loan Account Page
	 Then I verified the following Tabs details successfully 
	 |4567-MS-ACT2CTR-MEET-WEEKLYonFRI-ASSIGNSTAFF-ACTGRP-ACTCLIENT-DISJLG02JAN-WithPenaltyCharge-PRODUCTIVE_COLLSHEET_ONTIME09JAN-C1.xlsx|Summary|Repayment Schedule|

@4568-MS-ACT2CTR-MEET-WEEKLYonFRI-ASSIGNSTAFF-ACTGRP-ACTCLIENT-DISJLG02JAN-WRITEOFF1LOAN-PRODUCTIVE_COLLSHEET_ONTIME09JAN 
Scenario:4568-MS-ACT2CTR-MEET-WEEKLYonFRI-ASSIGNSTAFF-ACTGRP-ACTCLIENT-DISJLG02JAN-WRITEOFF1LOAN-PRODUCTIVE_COLLSHEET_ONTIME09JAN 
	 Given I setup the center
	 When I entered the values into center from "Input" sheet
	 |4568-MS-ACT2CTR-MEET-WEEKLYonFRI-ASSIGNSTAFF-ACTGRP-ACTCLIENT-DISJLG02JAN-WRITEOFF1LOAN-PRODUCTIVE_COLLSHEET_ONTIME09JAN-C1.xlsx|
	 Then I entered the values into group from "Group" sheet
     |4568-MS-ACT2CTR-MEET-WEEKLYonFRI-ASSIGNSTAFF-ACTGRP-ACTCLIENT-DISJLG02JAN-WRITEOFF1LOAN-PRODUCTIVE_COLLSHEET_ONTIME09JAN-C1.xlsx|		  								  				  				  			
	 Then I entered the values into client from "Input" sheet
	 	|Createclient.xlsx|	 				  								  				  				  			
	 When I set up the new create loan from "NewLoanInput" sheet
	 |4568-MS-ACT2CTR-MEET-WEEKLYonFRI-ASSIGNSTAFF-ACTGRP-ACTCLIENT-DISJLG02JAN-WRITEOFF1LOAN-PRODUCTIVE_COLLSHEET_ONTIME09JAN-C1.xlsx|
     Then I "WRITEOFF" and verified the following tabs
	 |4568-MS-ACT2CTR-MEET-WEEKLYonFRI-ASSIGNSTAFF-ACTGRP-ACTCLIENT-DISJLG02JAN-WRITEOFF1LOAN-PRODUCTIVE_COLLSHEET_ONTIME09JAN-C1.xlsx|Modify Transaction|
     Then I navigate to collection Sheet
     Then I Make Repayment Through "Productive Collection" sheet
	 |4568-MS-ACT2CTR-MEET-WEEKLYonFRI-ASSIGNSTAFF-ACTGRP-ACTCLIENT-DISJLG02JAN-WRITEOFF1LOAN-PRODUCTIVE_COLLSHEET_ONTIME09JAN-C1.xlsx|
	 Then i validate and Verify from "Output" sheet
	 |4568-MS-ACT2CTR-MEET-WEEKLYonFRI-ASSIGNSTAFF-ACTGRP-ACTCLIENT-DISJLG02JAN-WRITEOFF1LOAN-PRODUCTIVE_COLLSHEET_ONTIME09JAN-C1.xlsx|

@4569-MS-ACT2CTR-MEET-WEEKLYonFRI-ASSIGNSTAFF-ACTGRP-ACTCLIENT-DISJLG02JAN-OVERPAY1LOAN-PRODUCTIVE_COLLSHEET_ONTIME09JAN 
Scenario:4569-MS-ACT2CTR-MEET-WEEKLYonFRI-ASSIGNSTAFF-ACTGRP-ACTCLIENT-DISJLG02JAN-OVERPAY1LOAN-PRODUCTIVE_COLLSHEET_ONTIME09JAN 
	 Given I setup the center
	 When I entered the values into center from "Input" sheet
	 |4569-MS-ACT2CTR-MEET-WEEKLYonFRI-ASSIGNSTAFF-ACTGRP-ACTCLIENT-DISJLG02JAN-OVERPAY1LOAN-PRODUCTIVE_COLLSHEET_ONTIME09JAN-C1.xlsx|
	 Then I entered the values into group from "Group" sheet
     |4569-MS-ACT2CTR-MEET-WEEKLYonFRI-ASSIGNSTAFF-ACTGRP-ACTCLIENT-DISJLG02JAN-OVERPAY1LOAN-PRODUCTIVE_COLLSHEET_ONTIME09JAN-C1.xlsx|		  								  				  				  			
	 Then I entered the values into client from "Input" sheet
	 	|Createclient.xlsx|	 				  								  				  				  			
	 When I set up the new create loan from "NewLoanInput" sheet
	 |4569-MS-ACT2CTR-MEET-WEEKLYonFRI-ASSIGNSTAFF-ACTGRP-ACTCLIENT-DISJLG02JAN-OVERPAY1LOAN-PRODUCTIVE_COLLSHEET_ONTIME09JAN-C1.xlsx|
     Then I navigate to collection Sheet
     Then I Make Repayment Through "Productive Collection" sheet
	 |4569-MS-ACT2CTR-MEET-WEEKLYonFRI-ASSIGNSTAFF-ACTGRP-ACTCLIENT-DISJLG02JAN-OVERPAY1LOAN-PRODUCTIVE_COLLSHEET_ONTIME09JAN-C1.xlsx|
	 And I navigate To Loan Account Page
	 Then I verified the following Tabs details successfully 
	 |4569-MS-ACT2CTR-MEET-WEEKLYonFRI-ASSIGNSTAFF-ACTGRP-ACTCLIENT-DISJLG02JAN-OVERPAY1LOAN-PRODUCTIVE_COLLSHEET_ONTIME09JAN-C1.xlsx|Summary|Repayment Schedule|

@4570-RBI-ACT2CTR-MEET-WEEKLYonFRI-ASSIGNSTAFF-ACTGRP-ACTCLIENT-SUBMIT2JLGLOANSON02JAN-PRODUCTIVE_COLLSHEETON09JAN
Scenario:4570-RBI-ACT2CTR-MEET-WEEKLYonFRI-ASSIGNSTAFF-ACTGRP-ACTCLIENT-SUBMIT2JLGLOANSON02JAN-PRODUCTIVE_COLLSHEETON09JAN
	 Given I setup the center
	 When I entered the values into center from "Input" sheet
	 |4570-RBI-ACT2CTR-MEET-WEEKLYonFRI-ASSIGNSTAFF-ACTGRP-ACTCLIENT-SUBMIT2JLGLOANSON02JAN-PRODUCTIVE_COLLSHEETON09JAN.xlsx|
	 Then I entered the values into group from "Group" sheet
     |4570-RBI-ACT2CTR-MEET-WEEKLYonFRI-ASSIGNSTAFF-ACTGRP-ACTCLIENT-SUBMIT2JLGLOANSON02JAN-PRODUCTIVE_COLLSHEETON09JAN.xlsx|		  								  				  				  			
	 Then I entered the values into client from "Input" sheet
	 	|Createclient.xlsx|	 				  								  				  				  			
	 When I set up the new create loan from "NewLoanInput" sheet
	 |4570-RBI-ACT2CTR-MEET-WEEKLYonFRI-ASSIGNSTAFF-ACTGRP-ACTCLIENT-SUBMIT2JLGLOANSON02JAN-PRODUCTIVE_COLLSHEETON09JAN.xlsx|
 	 Then I navigate to collection Sheet
     Then I Make Repayment Through "Productive Collection" sheet
	 |4570-RBI-ACT2CTR-MEET-WEEKLYonFRI-ASSIGNSTAFF-ACTGRP-ACTCLIENT-SUBMIT2JLGLOANSON02JAN-PRODUCTIVE_COLLSHEETON09JAN.xlsx|
	 Then i validate and Verify from "Output" sheet
	 |4570-RBI-ACT2CTR-MEET-WEEKLYonFRI-ASSIGNSTAFF-ACTGRP-ACTCLIENT-SUBMIT2JLGLOANSON02JAN-PRODUCTIVE_COLLSHEETON09JAN.xlsx|

@4571-RBI-ACT2CTR-MEET-WEEKLYonFRI-ASSIGNSTAFF-ACTGRP-ACTCLIENT-APPROVE2JLGLOANSON02JAN-PRODUCTIVE_COLLSHEETON09JAN
Scenario:4571-RBI-ACT2CTR-MEET-WEEKLYonFRI-ASSIGNSTAFF-ACTGRP-ACTCLIENT-APPROVE2JLGLOANSON02JAN-PRODUCTIVE_COLLSHEETON09JAN
	 Given I setup the center
	 When I entered the values into center from "Input" sheet
	 |4571-RBI-ACT2CTR-MEET-WEEKLYonFRI-ASSIGNSTAFF-ACTGRP-ACTCLIENT-APPROVE2JLGLOANSON02JAN-PRODUCTIVE_COLLSHEETON09JAN.xlsx|
	 Then I entered the values into group from "Group" sheet
     |4571-RBI-ACT2CTR-MEET-WEEKLYonFRI-ASSIGNSTAFF-ACTGRP-ACTCLIENT-APPROVE2JLGLOANSON02JAN-PRODUCTIVE_COLLSHEETON09JAN.xlsx|		  								  				  				  			
	 Then I entered the values into client from "Input" sheet
	 	|Createclient.xlsx|	 				  								  				  				  			
	 When I set up the new create loan from "NewLoanInput" sheet
	 |4571-RBI-ACT2CTR-MEET-WEEKLYonFRI-ASSIGNSTAFF-ACTGRP-ACTCLIENT-APPROVE2JLGLOANSON02JAN-PRODUCTIVE_COLLSHEETON09JAN.xlsx|
 	 Then I navigate to collection Sheet
     Then I Make Repayment Through "Productive Collection" sheet
	 |4571-RBI-ACT2CTR-MEET-WEEKLYonFRI-ASSIGNSTAFF-ACTGRP-ACTCLIENT-APPROVE2JLGLOANSON02JAN-PRODUCTIVE_COLLSHEETON09JAN.xlsx|
	 Then i validate and Verify from "Output" sheet
	 |4571-RBI-ACT2CTR-MEET-WEEKLYonFRI-ASSIGNSTAFF-ACTGRP-ACTCLIENT-APPROVE2JLGLOANSON02JAN-PRODUCTIVE_COLLSHEETON09JAN.xlsx|

@4572-RBI-ACT2CTR-MEET-WEEKLYonFRI-ASSIGNSTAFF-ACTGRP-ACTCLIENT-DISBURSE2JLGLOANSON02JAN-CLOSE1LOAN-PRODUCTIVE_COLLSHEETON09JAN
Scenario:4572-RBI-ACT2CTR-MEET-WEEKLYonFRI-ASSIGNSTAFF-ACTGRP-ACTCLIENT-DISBURSE2JLGLOANSON02JAN-CLOSE1LOAN-PRODUCTIVE_COLLSHEETON09JAN
	 Given I setup the center
	 When I entered the values into center from "Input" sheet
	 |4572-RBI-ACT2CTR-MEET-WEEKLYonFRI-ASSIGNSTAFF-ACTGRP-ACTCLIENT-DISBURSE2JLGLOANSON02JAN-CLOSE1LOAN-PRODUCTIVE_COLLSHEETON09JAN.xlsx|
	 Then I entered the values into group from "Group" sheet
     |4572-RBI-ACT2CTR-MEET-WEEKLYonFRI-ASSIGNSTAFF-ACTGRP-ACTCLIENT-DISBURSE2JLGLOANSON02JAN-CLOSE1LOAN-PRODUCTIVE_COLLSHEETON09JAN.xlsx|		  								  				  				  			
	 Then I entered the values into client from "Input" sheet
	 	|Createclient.xlsx|	 				  								  				  				  			
	 When I set up the new create loan from "NewLoanInput" sheet
	 |4572-RBI-ACT2CTR-MEET-WEEKLYonFRI-ASSIGNSTAFF-ACTGRP-ACTCLIENT-DISBURSE2JLGLOANSON02JAN-CLOSE1LOAN-PRODUCTIVE_COLLSHEETON09JAN.xlsx|
 	 Then I make repayment and verified the following tabs
     |4572-RBI-ACT2CTR-MEET-WEEKLYonFRI-ASSIGNSTAFF-ACTGRP-ACTCLIENT-DISBURSE2JLGLOANSON02JAN-CLOSE1LOAN-PRODUCTIVE_COLLSHEETON09JAN.xlsx|Repay1|
 	 Then I navigate to collection Sheet
     Then I Make Repayment Through "Productive Collection" sheet
	 |4572-RBI-ACT2CTR-MEET-WEEKLYonFRI-ASSIGNSTAFF-ACTGRP-ACTCLIENT-DISBURSE2JLGLOANSON02JAN-CLOSE1LOAN-PRODUCTIVE_COLLSHEETON09JAN.xlsx|
	 Then i validate and Verify from "Output" sheet
	 |4572-RBI-ACT2CTR-MEET-WEEKLYonFRI-ASSIGNSTAFF-ACTGRP-ACTCLIENT-DISBURSE2JLGLOANSON02JAN-CLOSE1LOAN-PRODUCTIVE_COLLSHEETON09JAN.xlsx|

@4573-RBI-ACT2CTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JAN-Make-lessRepay-09JAN-OVERDUEFEEFLAT-PRODUCTIVE_COLLSHEETON09JAN
Scenario:4573-RBI-ACT2CTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JAN-Make-lessRepay-09JAN-OVERDUEFEEFLAT-PRODUCTIVE_COLLSHEETON09JAN
	 Given I setup the center
	 When I entered the values into center from "Input" sheet
	 |4573-RBI-ACT2CTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JAN-Make-lessRepay-09JAN-OVERDUEFEEFLAT-PRODUCTIVE_COLLSHEETON09JAN.xlsx|
	 Then I entered the values into group from "Group" sheet
     |4573-RBI-ACT2CTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JAN-Make-lessRepay-09JAN-OVERDUEFEEFLAT-PRODUCTIVE_COLLSHEETON09JAN.xlsx|		  								  				  				  			
	 Then I entered the values into client from "Input" sheet
	 	|Createclient.xlsx|	 				  								  				  				  			
	 When I set up the new create loan from "NewLoanInput" sheet
	 |4573-RBI-ACT2CTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JAN-Make-lessRepay-09JAN-OVERDUEFEEFLAT-PRODUCTIVE_COLLSHEETON09JAN.xlsx|
 	 Then I navigate to scheduler job & execute "Apply penalty to overdue loans"
	 Then I make repayment and verified the following tabs
     |4573-RBI-ACT2CTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JAN-Make-lessRepay-09JAN-OVERDUEFEEFLAT-PRODUCTIVE_COLLSHEETON09JAN.xlsx|Repay1|
 	 Then I navigate to collection Sheet
     Then I Make Repayment Through "Productive Collection" sheet
	 |4573-RBI-ACT2CTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JAN-Make-lessRepay-09JAN-OVERDUEFEEFLAT-PRODUCTIVE_COLLSHEETON09JAN.xlsx|
	 And I navigate To Loan Account Page
	 Then I verified the following Tabs details successfully 
	 |4573-RBI-ACT2CTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JAN-Make-lessRepay-09JAN-OVERDUEFEEFLAT-PRODUCTIVE_COLLSHEETON09JAN.xlsx|Summary|Repayment Schedule|
	
@4574-RBI-ACT2CTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JAN-Make-lessRepay-09JAN-SPDUEDATE10JAN-PRODUCTIVE_COLLSHEETON16JAN
Scenario:4574-RBI-ACT2CTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JAN-Make-lessRepay-09JAN-SPDUEDATE10JAN-PRODUCTIVE_COLLSHEETON16JAN
	 Given I setup the center
	 When I entered the values into center from "Input" sheet
	 |4574-RBI-ACT2CTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JAN-Make-lessRepay-09JAN-SPDUEDATE10JAN-PRODUCTIVE_COLLSHEETON16JAN.xlsx|
	 Then I entered the values into group from "Group" sheet
     |4574-RBI-ACT2CTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JAN-Make-lessRepay-09JAN-SPDUEDATE10JAN-PRODUCTIVE_COLLSHEETON16JAN.xlsx|		  								  				  				  			
	 Then I entered the values into client from "Input" sheet
	 	|Createclient.xlsx|	 				  								  				  				  			
	 When I set up the new create loan from "NewLoanInput" sheet
	 |4574-RBI-ACT2CTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JAN-Make-lessRepay-09JAN-SPDUEDATE10JAN-PRODUCTIVE_COLLSHEETON16JAN.xlsx|
 	 Then I make repayment and verified the following tabs
     |4574-RBI-ACT2CTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JAN-Make-lessRepay-09JAN-SPDUEDATE10JAN-PRODUCTIVE_COLLSHEETON16JAN.xlsx|Repay1|
 	 Then I navigate to collection Sheet
     Then I Make Repayment Through "Productive Collection" sheet
	 |4574-RBI-ACT2CTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JAN-Make-lessRepay-09JAN-SPDUEDATE10JAN-PRODUCTIVE_COLLSHEETON16JAN.xlsx|
	 And I navigate To Loan Account Page
	 Then I verified the following Tabs details successfully 
	 |4574-RBI-ACT2CTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JAN-Make-lessRepay-09JAN-SPDUEDATE10JAN-PRODUCTIVE_COLLSHEETON16JAN.xlsx|Summary|Repayment Schedule|

@4575-MS-ACT2CTR-MEET-WEEKLYonFRI-ASSIGNSTAFF-ACTGRP-ACTCLIENT-SUBMIT2JLGLOANSON02JAN-PRODUCTIVE_COLLSHEETON09JAN
Scenario:4575-MS-ACT2CTR-MEET-WEEKLYonFRI-ASSIGNSTAFF-ACTGRP-ACTCLIENT-SUBMIT2JLGLOANSON02JAN-PRODUCTIVE_COLLSHEETON09JAN
	 Given I setup the center
	 When I entered the values into center from "Input" sheet
	 |4575-MS-ACT2CTR-MEET-WEEKLYonFRI-ASSIGNSTAFF-ACTGRP-ACTCLIENT-SUBMIT2JLGLOANSON02JAN-PRODUCTIVE_COLLSHEETON09JAN.xlsx|
	 Then I entered the values into group from "Group" sheet
     |4575-MS-ACT2CTR-MEET-WEEKLYonFRI-ASSIGNSTAFF-ACTGRP-ACTCLIENT-SUBMIT2JLGLOANSON02JAN-PRODUCTIVE_COLLSHEETON09JAN.xlsx|		  								  				  				  			
	 Then I entered the values into client from "Input" sheet
	 	|Createclient.xlsx|	 				  								  				  				  			
	 When I set up the new create loan from "NewLoanInput" sheet
	 |4575-MS-ACT2CTR-MEET-WEEKLYonFRI-ASSIGNSTAFF-ACTGRP-ACTCLIENT-SUBMIT2JLGLOANSON02JAN-PRODUCTIVE_COLLSHEETON09JAN.xlsx|
 	 Then I navigate to collection Sheet
     Then I Make Repayment Through "Productive Collection" sheet
	 |4575-MS-ACT2CTR-MEET-WEEKLYonFRI-ASSIGNSTAFF-ACTGRP-ACTCLIENT-SUBMIT2JLGLOANSON02JAN-PRODUCTIVE_COLLSHEETON09JAN.xlsx|
	 Then i validate and Verify from "Output" sheet
	 |4575-MS-ACT2CTR-MEET-WEEKLYonFRI-ASSIGNSTAFF-ACTGRP-ACTCLIENT-SUBMIT2JLGLOANSON02JAN-PRODUCTIVE_COLLSHEETON09JAN.xlsx|

@4576-MS-ACT2CTR-MEET-WEEKLYonFRI-ASSIGNSTAFF-ACTGRP-ACTCLIENT-APPROVE2JLGLOANSON02JAN-PRODUCTIVE_COLLSHEETON09JAN
Scenario:4576-MS-ACT2CTR-MEET-WEEKLYonFRI-ASSIGNSTAFF-ACTGRP-ACTCLIENT-APPROVE2JLGLOANSON02JAN-PRODUCTIVE_COLLSHEETON09JAN
	 Given I setup the center
	 When I entered the values into center from "Input" sheet
	 |4576-MS-ACT2CTR-MEET-WEEKLYonFRI-ASSIGNSTAFF-ACTGRP-ACTCLIENT-APPROVE2JLGLOANSON02JAN-PRODUCTIVE_COLLSHEETON09JAN.xlsx|
	 Then I entered the values into group from "Group" sheet
     |4576-MS-ACT2CTR-MEET-WEEKLYonFRI-ASSIGNSTAFF-ACTGRP-ACTCLIENT-APPROVE2JLGLOANSON02JAN-PRODUCTIVE_COLLSHEETON09JAN.xlsx|		  								  				  				  			
	 Then I entered the values into client from "Input" sheet
	 	|Createclient.xlsx|	 				  								  				  				  			
	 When I set up the new create loan from "NewLoanInput" sheet
	 |4576-MS-ACT2CTR-MEET-WEEKLYonFRI-ASSIGNSTAFF-ACTGRP-ACTCLIENT-APPROVE2JLGLOANSON02JAN-PRODUCTIVE_COLLSHEETON09JAN.xlsx|
 	 Then I navigate to collection Sheet
     Then I Make Repayment Through "Productive Collection" sheet
	 |4576-MS-ACT2CTR-MEET-WEEKLYonFRI-ASSIGNSTAFF-ACTGRP-ACTCLIENT-APPROVE2JLGLOANSON02JAN-PRODUCTIVE_COLLSHEETON09JAN.xlsx|
	 Then i validate and Verify from "Output" sheet
	 |4576-MS-ACT2CTR-MEET-WEEKLYonFRI-ASSIGNSTAFF-ACTGRP-ACTCLIENT-APPROVE2JLGLOANSON02JAN-PRODUCTIVE_COLLSHEETON09JAN.xlsx|

@4577-MS-ACT2CTR-MEET-WEEKLYonFRI-ASSIGNSTAFF-ACTGRP-ACTCLIENT-DISBURSE2JLGLOANSON02JAN-CLOSE1LOAN-PRODUCTIVE_COLLSHEETON09JAN
Scenario:4577-MS-ACT2CTR-MEET-WEEKLYonFRI-ASSIGNSTAFF-ACTGRP-ACTCLIENT-DISBURSE2JLGLOANSON02JAN-CLOSE1LOAN-PRODUCTIVE_COLLSHEETON09JAN
	 Given I setup the center
	 When I entered the values into center from "Input" sheet
	 |4577-MS-ACT2CTR-MEET-WEEKLYonFRI-ASSIGNSTAFF-ACTGRP-ACTCLIENT-DISBURSE2JLGLOANSON02JAN-CLOSE1LOAN-PRODUCTIVE_COLLSHEETON09JAN.xlsx|
	 Then I entered the values into group from "Group" sheet
     |4577-MS-ACT2CTR-MEET-WEEKLYonFRI-ASSIGNSTAFF-ACTGRP-ACTCLIENT-DISBURSE2JLGLOANSON02JAN-CLOSE1LOAN-PRODUCTIVE_COLLSHEETON09JAN.xlsx|		  								  				  				  			
	 Then I entered the values into client from "Input" sheet
	 	|Createclient.xlsx|	 				  								  				  				  			
	 When I set up the new create loan from "NewLoanInput" sheet
	 |4577-MS-ACT2CTR-MEET-WEEKLYonFRI-ASSIGNSTAFF-ACTGRP-ACTCLIENT-DISBURSE2JLGLOANSON02JAN-CLOSE1LOAN-PRODUCTIVE_COLLSHEETON09JAN.xlsx|
 	 Then I make repayment and verified the following tabs
     |4577-MS-ACT2CTR-MEET-WEEKLYonFRI-ASSIGNSTAFF-ACTGRP-ACTCLIENT-DISBURSE2JLGLOANSON02JAN-CLOSE1LOAN-PRODUCTIVE_COLLSHEETON09JAN.xlsx|Repay1|
 	 Then I navigate to collection Sheet
     Then I Make Repayment Through "Productive Collection" sheet
	 |4577-MS-ACT2CTR-MEET-WEEKLYonFRI-ASSIGNSTAFF-ACTGRP-ACTCLIENT-DISBURSE2JLGLOANSON02JAN-CLOSE1LOAN-PRODUCTIVE_COLLSHEETON09JAN.xlsx|
	 Then i validate and Verify from "Output" sheet
	 |4577-MS-ACT2CTR-MEET-WEEKLYonFRI-ASSIGNSTAFF-ACTGRP-ACTCLIENT-DISBURSE2JLGLOANSON02JAN-CLOSE1LOAN-PRODUCTIVE_COLLSHEETON09JAN.xlsx|

@4578-MS-ACT2CTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JAN-Make-lessRepay-09JAN-OVERDUEFEEFLAT-PRODUCTIVE_COLLSHEETON09JAN
Scenario:4578-MS-ACT2CTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JAN-Make-lessRepay-09JAN-OVERDUEFEEFLAT-PRODUCTIVE_COLLSHEETON09JAN
	 Given I setup the center
	 When I entered the values into center from "Input" sheet
	 |4578-MS-ACT2CTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JAN-Make-lessRepay-09JAN-OVERDUEFEEFLAT-PRODUCTIVE_COLLSHEETON09JAN.xlsx|
	 Then I entered the values into group from "Group" sheet
     |4578-MS-ACT2CTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JAN-Make-lessRepay-09JAN-OVERDUEFEEFLAT-PRODUCTIVE_COLLSHEETON09JAN.xlsx|		  								  				  				  			
	 Then I entered the values into client from "Input" sheet
	 	|Createclient.xlsx|	 				  								  				  				  			
	 When I set up the new create loan from "NewLoanInput" sheet
	 |4578-MS-ACT2CTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JAN-Make-lessRepay-09JAN-OVERDUEFEEFLAT-PRODUCTIVE_COLLSHEETON09JAN.xlsx|
 	 Then I navigate to scheduler job & execute "Apply penalty to overdue loans"
	 Then I make repayment and verified the following tabs
     |4578-MS-ACT2CTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JAN-Make-lessRepay-09JAN-OVERDUEFEEFLAT-PRODUCTIVE_COLLSHEETON09JAN.xlsx|Repay1|
 	 Then I navigate to collection Sheet
     Then I Make Repayment Through "Productive Collection" sheet
	 |4578-MS-ACT2CTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JAN-Make-lessRepay-09JAN-OVERDUEFEEFLAT-PRODUCTIVE_COLLSHEETON09JAN.xlsx|
	 And I navigate To Loan Account Page
	 Then I verified the following Tabs details successfully 
	 |4578-MS-ACT2CTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JAN-Make-lessRepay-09JAN-OVERDUEFEEFLAT-PRODUCTIVE_COLLSHEETON09JAN.xlsx|Summary|Repayment Schedule|
	
@4579-MS-ACT2CTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JAN-Make-lessRepay-09JAN-SPDUEDATE10JAN-PRODUCTIVE_COLLSHEETON16JAN
Scenario:4579-MS-ACT2CTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JAN-Make-lessRepay-09JAN-SPDUEDATE10JAN-PRODUCTIVE_COLLSHEETON16JAN
	 Given I setup the center
	 When I entered the values into center from "Input" sheet
	 |4579-MS-ACT2CTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JAN-Make-lessRepay-09JAN-SPDUEDATE10JAN-PRODUCTIVE_COLLSHEETON16JAN.xlsx|
	 Then I entered the values into group from "Group" sheet
     |4579-MS-ACT2CTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JAN-Make-lessRepay-09JAN-SPDUEDATE10JAN-PRODUCTIVE_COLLSHEETON16JAN.xlsx|		  								  				  				  			
	 Then I entered the values into client from "Input" sheet
	 	|Createclient.xlsx|	 				  								  				  				  			
	 When I set up the new create loan from "NewLoanInput" sheet
	 |4579-MS-ACT2CTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JAN-Make-lessRepay-09JAN-SPDUEDATE10JAN-PRODUCTIVE_COLLSHEETON16JAN.xlsx|
 	 Then I make repayment and verified the following tabs
     |4579-MS-ACT2CTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JAN-Make-lessRepay-09JAN-SPDUEDATE10JAN-PRODUCTIVE_COLLSHEETON16JAN.xlsx|Repay1|
 	 Then I navigate to collection Sheet
     Then I Make Repayment Through "Productive Collection" sheet
	 |4579-MS-ACT2CTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JAN-Make-lessRepay-09JAN-SPDUEDATE10JAN-PRODUCTIVE_COLLSHEETON16JAN.xlsx|
	 And I navigate To Loan Account Page
	 Then I verified the following Tabs details successfully 
	 |4579-MS-ACT2CTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JAN-Make-lessRepay-09JAN-SPDUEDATE10JAN-PRODUCTIVE_COLLSHEETON16JAN.xlsx|Summary|Repayment Schedule|

@4600-Holidayon15Jan-2013-Reschedule-repayment-on-20-Jan-2013-DISBon01JAN
	  Scenario: 4600-Holidayon15Jan-2013-Reschedule-repayment-on-20-Jan-2013-DISBon01JAN  

      Given I setup the product loan "Setup"
				| Productloannavigation.xlsx |
	  Then I entered the values into product from "ProductLoanInput" Sheet
				|4600-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-ONTIME-Holiday-Loanproduct.xlsx|
      Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			|4600-Holidayon15Jan-2013-Reschedule-repayment-on-20-Jan-2013-DISBon01JAN.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
	  			|4600-Holidayon15Jan-2013-Reschedule-repayment-on-20-Jan-2013-DISBon01JAN.xlsx|

@4601-Holiday-on-15-Jan-2013-Reschedule-repayment-on-20-Jan-2013-DISBon15JAN
	  Scenario: 4601-Holiday-on-15-Jan-2013-Reschedule-repayment-on-20-Jan-2013-DISBon15JAN  

      Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			|4601-Holiday-on-15-Jan-2013-Reschedule-repayment-on-20-Jan-2013-DISBon15JAN.xlsx|
	  Then i validate and Verify from "error" sheet
	 			|4607-Holiday-on-15-Jan-2013-Reschedule-repayment-on-20-Jan-2013-DISBon01JAN-REPAY09JAN-EDITTRANSACTIONDATETO15JAN.xlsx|
	  
@4602-Holiday-on-15-Jan-2013-Reschedule-repayment-on-20-Jan-2013-DISBon01JAN-REPAY09JAN
	  Scenario: 4602-Holiday-on-15-Jan-2013-Reschedule-repayment-on-20-Jan-2013-DISBon01JAN-REPAY09JAN  

      Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			|4602-Holiday-on-15-Jan-2013-Reschedule-repayment-on-20-Jan-2013-DISBon01JAN-REPAY09JAN.xlsx|
	  Then I make repayment and verified the following tabs
     			|4602-Holiday-on-15-Jan-2013-Reschedule-repayment-on-20-Jan-2013-DISBon01JAN-REPAY09JAN.xlsx|Repay1|Repayment Schedule|
     			
@4603-Holiday-on-15-Jan-2013-Reschedule-repayment-on-20-Jan-2013-DISBon01JAN-REPAY15JAN-THROUGH-COLLECTION-SHEET
Scenario:4603-Holiday-on-15-Jan-2013-Reschedule-repayment-on-20-Jan-2013-DISBon01JAN-REPAY15JAN-THROUGH-COLLECTION-SHEET
	 Given I setup the center
	 When I entered the values into center from "Input" sheet
	 |4603-Holiday-on-15-Jan-2013-Reschedule-repayment-on-20-Jan-2013-DISBon01JAN-REPAY15JAN-THROUGH-COLLECTION-SHEET.xlsx|
	 Then I entered the values into group from "Group" sheet
     |4603-Holiday-on-15-Jan-2013-Reschedule-repayment-on-20-Jan-2013-DISBon01JAN-REPAY15JAN-THROUGH-COLLECTION-SHEET.xlsx|		  								  				  				  			
	 Then I entered the values into client from "Input" sheet
	 	|Createclient.xlsx|	 				  								  				  				  			
	 When I set up the new create loan from "NewLoanInput" sheet
	 |4603-Holiday-on-15-Jan-2013-Reschedule-repayment-on-20-Jan-2013-DISBon01JAN-REPAY15JAN-THROUGH-COLLECTION-SHEET.xlsx|
	 Then I navigate to collection Sheet
	 Then I Make Repayment Through "Collection" sheet
	 |4603-Holiday-on-15-Jan-2013-Reschedule-repayment-on-20-Jan-2013-DISBon01JAN-REPAY15JAN-THROUGH-COLLECTION-SHEET.xlsx|     			
	 Then i validate and Verify from "error" sheet
	 |4603-Holiday-on-15-Jan-2013-Reschedule-repayment-on-20-Jan-2013-DISBon01JAN-REPAY15JAN-THROUGH-COLLECTION-SHEET.xlsx|
	 	  			
@4604-Holiday-on-15-Jan-2013-Reschedule-repayment-on-20-Jan-2013-DISBon01JAN-PREPAYON15JAN
	  Scenario: 4604-Holiday-on-15-Jan-2013-Reschedule-repayment-on-20-Jan-2013-DISBon01JAN-PREPAYON15JAN  
      Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			|4604-Holiday-on-15-Jan-2013-Reschedule-repayment-on-20-Jan-2013-DISBon01JAN-PREPAYON15JAN.xlsx|
	  Then I "Make Pre Payment" and verified the following tabs
	  			|4604-Holiday-on-15-Jan-2013-Reschedule-repayment-on-20-Jan-2013-DISBon01JAN-PREPAYON15JAN.xlsx|Prepay Loan|

@4605-Holiday-on-15-Jan-2013-Reschedule-repayment-on-20-Jan-2013-DISBon01JAN-WRITEOFFON15JAN
	  Scenario: 4605-Holiday-on-15-Jan-2013-Reschedule-repayment-on-20-Jan-2013-DISBon01JAN-WRITEOFFON15JAN  
      Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			|4605-Holiday-on-15-Jan-2013-Reschedule-repayment-on-20-Jan-2013-DISBon01JAN-WRITEOFFON15JAN.xlsx|
	  Then I "WRITEOFF" and verified the following tabs
	            |4605-Holiday-on-15-Jan-2013-Reschedule-repayment-on-20-Jan-2013-DISBon01JAN-WRITEOFFON15JAN.xlsx|Modify Transaction|Repayment Schedule|

@4606-Holiday-on-15-Jan-2013-Reschedule-repayment-on-20-Jan-2013-DISBon01JAN-WAIVEINTERESTON15JAN
	  Scenario: 4606-Holiday-on-15-Jan-2013-Reschedule-repayment-on-20-Jan-2013-DISBon01JAN-WAIVEINTERESTON15JAN  
      Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			|4606-Holiday-on-15-Jan-2013-Reschedule-repayment-on-20-Jan-2013-DISBon01JAN-WAIVEINTERESTON15JAN.xlsx|
	  Then I "WRITEOFF" and verified the following tabs
	            |4606-Holiday-on-15-Jan-2013-Reschedule-repayment-on-20-Jan-2013-DISBon01JAN-WAIVEINTERESTON15JAN.xlsx|Modify Transaction|Repayment Schedule|

@4607-Holiday-on-15-Jan-2013-Reschedule-repayment-on-20-Jan-2013-DISBon01JAN-REPAY09JAN-EDITTRANSACTIONDATETO15JAN
	  Scenario: 4607-Holiday-on-15-Jan-2013-Reschedule-repayment-on-20-Jan-2013-DISBon01JAN-REPAY09JAN-EDITTRANSACTIONDATETO15JAN  
      Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			|4607-Holiday-on-15-Jan-2013-Reschedule-repayment-on-20-Jan-2013-DISBon01JAN-REPAY09JAN-EDITTRANSACTIONDATETO15JAN.xlsx|
	  Then I make repayment and verified the following tabs
       			|4607-Holiday-on-15-Jan-2013-Reschedule-repayment-on-20-Jan-2013-DISBon01JAN-REPAY09JAN-EDITTRANSACTIONDATETO15JAN.xlsx|Input|
	   Then I "Edit transaction from transaction tab" and verified the following tabs
	  			|4607-Holiday-on-15-Jan-2013-Reschedule-repayment-on-20-Jan-2013-DISBon01JAN-REPAY09JAN-EDITTRANSACTIONDATETO15JAN.xlsx|Modify Transaction|
	   Then i validate and Verify from "error" sheet
	 			|4607-Holiday-on-15-Jan-2013-Reschedule-repayment-on-20-Jan-2013-DISBon01JAN-REPAY09JAN-EDITTRANSACTIONDATETO15JAN.xlsx|
	 			
@4608-Holiday-on-15-Jan-2013-Reschedule-repayment-on-20-Jan-2013-DISBon01JAN-REPAY20JAN
	  Scenario: 4608-Holiday-on-15-Jan-2013-Reschedule-repayment-on-20-Jan-2013-DISBon01JAN-REPAY20JAN  
      Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			|4608-Holiday-on-15-Jan-2013-Reschedule-repayment-on-20-Jan-2013-DISBon01JAN-REPAY20JAN.xlsx|
	  Then I make repayment and verified the following tabs
       			|4608-Holiday-on-15-Jan-2013-Reschedule-repayment-on-20-Jan-2013-DISBon01JAN-REPAY20JAN.xlsx|Input|Repayment Schedule|

@4609-Holiday-on-15-Jan-2013-Reschedule-repayment-on-20-Jan-2013-DISBon01JAN-DELETEHOLIDAY-REPAY15JAN
	  Scenario: 4609-Holiday-on-15-Jan-2013-Reschedule-repayment-on-20-Jan-2013-DISBon01JAN-DELETEHOLIDAY-REPAY15JAN  
      Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			|4609-Holiday-on-15-Jan-2013-Reschedule-repayment-on-20-Jan-2013-DISBon01JAN-DELETEHOLIDAY-REPAY15JAN.xlsx|
	  Then I "Delete" holiday
	  |4609-Holiday-on-15-Jan-2013-Reschedule-repayment-on-20-Jan-2013-DISBon01JAN-DELETEHOLIDAY-REPAY15JAN.xlsx|
	  And I navigate To Loan Account Page
	  Then I make repayment and verified the following tabs
      |4609-Holiday-on-15-Jan-2013-Reschedule-repayment-on-20-Jan-2013-DISBon01JAN-DELETEHOLIDAY-REPAY15JAN.xlsx|Input|Repayment Schedule|

@4610-Holiday-from-02-Jan-2013-to-16-Jan-2013-Reschedule-repayment-on-20-Jan-2013-DISBon01JAN
	  Scenario: 4610-Holiday-from-02-Jan-2013-to-16-Jan-2013-Reschedule-repayment-on-20-Jan-2013-DISBon01JAN  
      Given I "Create" holiday
	  |4610-Holiday-from-02-Jan-2013-to-16-Jan-2013-Reschedule-repayment-on-20-Jan-2013-DISBon01JAN.xlsx|
      Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			|4610-Holiday-from-02-Jan-2013-to-16-Jan-2013-Reschedule-repayment-on-20-Jan-2013-DISBon01JAN.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
	  			|4610-Holiday-from-02-Jan-2013-to-16-Jan-2013-Reschedule-repayment-on-20-Jan-2013-DISBon01JAN.xlsx|

@4611-Holiday-from-02-Jan-2013-to-16-Jan-2013-Reschedule-repayment-on-20-Jan-2013-DISBon02JAN
	  Scenario: 4611-Holiday-from-02-Jan-2013-to-16-Jan-2013-Reschedule-repayment-on-20-Jan-2013-DISBon02JAN  
      Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			|4611-Holiday-from-02-Jan-2013-to-16-Jan-2013-Reschedule-repayment-on-20-Jan-2013-DISBon02JAN.xlsx|
	  Then i validate and Verify from "error" sheet
	 			|4611-Holiday-from-02-Jan-2013-to-16-Jan-2013-Reschedule-repayment-on-20-Jan-2013-DISBon02JAN.xlsx|
	  			

@4612-Holiday-from-02-Jan-2013-to-16-Jan-2013-Reschedule-repayment-on-20-Jan-2013-DISBon20-Jan
	  Scenario: 4612-Holiday-from-02-Jan-2013-to-16-Jan-2013-Reschedule-repayment-on-20-Jan-2013-DISBon20-Jan  
      Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			|4612-Holiday-from-02-Jan-2013-to-16-Jan-2013-Reschedule-repayment-on-20-Jan-2013-DISBon20-Jan.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
	  			|4612-Holiday-from-02-Jan-2013-to-16-Jan-2013-Reschedule-repayment-on-20-Jan-2013-DISBon20-Jan.xlsx|
	   Then I "Delete" holiday
	  |4612-Holiday-from-02-Jan-2013-to-16-Jan-2013-Reschedule-repayment-on-20-Jan-2013-DISBon20-Jan.xlsx|
	  
@4613-4613-DISBLOAN01JAN-Holiday-on-22-Jan-2013-Reschedule-repayment-on-25-Jan-2013-EXECUTE-SCHEDULER-JOB
	  Scenario: 4613-4613-DISBLOAN01JAN-Holiday-on-22-Jan-2013-Reschedule-repayment-on-25-Jan-2013-EXECUTE-SCHEDULER-JOB  
      Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  |4613-4613-DISBLOAN01JAN-Holiday-on-22-Jan-2013-Reschedule-repayment-on-25-Jan-2013-EXECUTE-SCHEDULER-JOB.xlsx|
	  Given I "Create" holiday
	  |4613-4613-DISBLOAN01JAN-Holiday-on-22-Jan-2013-Reschedule-repayment-on-25-Jan-2013-EXECUTE-SCHEDULER-JOB.xlsx|
	  And I navigate To Loan Account Page
	  Then I navigate to scheduler job & execute "Apply Holidays To Loans"
	  And I verified the "Repayment Schedule" details successfully 
	  |4613-4613-DISBLOAN01JAN-Holiday-on-22-Jan-2013-Reschedule-repayment-on-25-Jan-2013-EXECUTE-SCHEDULER-JOB.xlsx|

@4614-DISBLOAN01FEB-REPAY15FEB-Holiday-on-15-FEB-2013-Reschedule-repayment-on-20-FEB-2013-EXECUTE-SCHEDULER-JOB
	  Scenario: 4614-DISBLOAN01FEB-REPAY15FEB-Holiday-on-15-FEB-2013-Reschedule-repayment-on-20-FEB-2013-EXECUTE-SCHEDULER-JOB  
      Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  |4614-DISBLOAN01FEB-REPAY15FEB-Holiday-on-15-FEB-2013-Reschedule-repayment-on-20-FEB-2013-EXECUTE-SCHEDULER-JOB.xlsx|
	  Then I make repayment and verified the following tabs
      |4614-DISBLOAN01FEB-REPAY15FEB-Holiday-on-15-FEB-2013-Reschedule-repayment-on-20-FEB-2013-EXECUTE-SCHEDULER-JOB.xlsx|Input|
	  Given I "Create" holiday
	  |4614-DISBLOAN01FEB-REPAY15FEB-Holiday-on-15-FEB-2013-Reschedule-repayment-on-20-FEB-2013-EXECUTE-SCHEDULER-JOB.xlsx|
	  And I navigate To Loan Account Page
	  Then I navigate to scheduler job & execute "Apply Holidays To Loans"
	  And I verified the "Repayment Schedule" details successfully 
	  |4614-DISBLOAN01FEB-REPAY15FEB-Holiday-on-15-FEB-2013-Reschedule-repayment-on-20-FEB-2013-EXECUTE-SCHEDULER-JOB.xlsx|
	 
@4580-RBI-SUBMITLOANON02JAN-INDCOLLSHEETON09JAN
	  Scenario: 4580-RBI-SUBMITLOANON02JAN-INDCOLLSHEETON09JAN
	  
	  Given I setup the product loan "Setup"
				| Productloannavigation.xlsx |
	  Then I entered the values into product from "ProductLoanInput" Sheet
				|4580-RBI-SUBMITLOANON02JAN-INDCOLLSHEETON09JAN.xlsx|
	  Given I setup the clients
	  When I entered the values into client from "Input" sheet
	 			|Createclient.xlsx|
	  Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			|4580-RBI-SUBMITLOANON02JAN-INDCOLLSHEETON09JAN.xlsx|
	  Then I navigate to Individual collection Sheet
	  And I Make Repayment Through "Collection" sheet
	            |4580-RBI-SUBMITLOANON02JAN-INDCOLLSHEETON09JAN.xlsx|
	  And I Verify "element" not visible
	            |verifySubmitbutton|


@4581-RBI-APRLOANON02JAN-INDCOLLSHEETON02JAN
	  Scenario: 4581-RBI-APRLOANON02JAN-INDCOLLSHEETON02JAN
	  
	  Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			|4581-RBI-APRLOANON02JAN-INDCOLLSHEETON02JAN.xlsx|
	  Then I navigate to Individual collection Sheet
	 And I Make Repayment Through "Collection" sheet
	            |4581-RBI-APRLOANON02JAN-INDCOLLSHEETON02JAN.xlsx|
	  And I Verify "element" not visible
	            |verifySubmitbutton| 
	   
@4582-RBI-DISBLOANON02JAN-INDCOLLSHEETON16JAN
	  Scenario: 4582-RBI-DISBLOANON02JAN-INDCOLLSHEETON16JAN
	  
	 Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			|4582-RBI-DISBLOANON02JAN-INDCOLLSHEETON16JAN.xlsx|
      Then I navigate to Individual collection Sheet
	  And I Make Repayment Through "Collection" sheet
	            |4582-RBI-DISBLOANON02JAN-INDCOLLSHEETON16JAN.xlsx|
	  And I navigate To Loan Account Page
	  And I verified the "Repayment Schedule" details successfully 
	  			|4582-RBI-DISBLOANON02JAN-INDCOLLSHEETON16JAN.xlsx|         

@4583-RBI-DISBLOANON02JAN-UNDODISB-INDCOLLSHEETON09JAN
	  Scenario: 4583-RBI-DISBLOANON02JAN-UNDODISB-INDCOLLSHEETON09JAN
	  
	  Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			|4583-RBI-DISBLOANON02JAN-UNDODISB-INDCOLLSHEETON09JAN.xlsx|
	  Then I "Do Undo Disbursal" and verified the following tabs
	            |4583-RBI-DISBLOANON02JAN-UNDODISB-INDCOLLSHEETON09JAN.xlsx|Undo Disbursal|
      Then I navigate to Individual collection Sheet
	  And I Make Repayment Through "Collection" sheet
	            |4583-RBI-DISBLOANON02JAN-UNDODISB-INDCOLLSHEETON09JAN.xlsx|	

@4584-RBI-DISBLOANON02JAN-INDCOLLSHEETON16JAN-REPAYON16JAN
	  Scenario: 4584-RBI-DISBLOANON02JAN-INDCOLLSHEETON16JAN-REPAYON16JAN
	  
	  Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			|4584-RBI-DISBLOANON02JAN-INDCOLLSHEETON16JAN-REPAYON16JAN.xlsx|
	  Then I make repayment and verified the following tabs
                |4584-RBI-DISBLOANON02JAN-INDCOLLSHEETON16JAN-REPAYON16JAN.xlsx|Repay1|
      And I verified the "Repayment Schedule" details successfully 
	  			|4584-RBI-DISBLOANON02JAN-INDCOLLSHEETON16JAN-REPAYON16JAN.xlsx|
      Then I navigate to Individual collection Sheet
	  And I Make Repayment Through "Collection" sheet
	            |4584-RBI-DISBLOANON02JAN-INDCOLLSHEETON16JAN-REPAYON16JAN.xlsx|
	  And I Verify "element" not visible
	            |verifySubmitbutton|		

@4585-RBI-DISBLOANON02JAN-INDCOLLSHEETON10JAN
	  Scenario: 4585-RBI-DISBLOANON02JAN-INDCOLLSHEETON10JAN
	  
	  Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			|4585-RBI-DISBLOANON02JAN-INDCOLLSHEETON10JAN.xlsx|
      Then I navigate to Individual collection Sheet
	  And I Make Repayment Through "Collection" sheet
	            |4585-RBI-DISBLOANON02JAN-INDCOLLSHEETON10JAN.xlsx|
	  And I navigate To Loan Account Page
	  And I verified the "Repayment Schedule" details successfully 
	  			|4585-RBI-DISBLOANON02JAN-INDCOLLSHEETON10JAN.xlsx|		

@4586-RBI-DISBLOANON02JAN-WAIVEINT-INDCOLLSHEETON10JAN
	  Scenario: 4586-RBI-DISBLOANON02JAN-WAIVEINT-INDCOLLSHEETON10JAN
	  
	  Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			|4586-RBI-DISBLOANON02JAN-WAIVEINT-INDCOLLSHEETON10JAN.xlsx|
	  Then I "WaiveInterest" and verified the following tabs
	            |4586-RBI-DISBLOANON02JAN-WAIVEINT-INDCOLLSHEETON10JAN.xlsx|Modify Transaction|
      Then I navigate to Individual collection Sheet
	  And I Make Repayment Through "Collection" sheet
	            |4586-RBI-DISBLOANON02JAN-WAIVEINT-INDCOLLSHEETON10JAN.xlsx|
	  And I navigate To Loan Account Page
	  And I verified the "Repayment Schedule" details successfully 
	  			|4586-RBI-DISBLOANON02JAN-WAIVEINT-INDCOLLSHEETON10JAN.xlsx|	

@4587-RBI-DISBLOANON02JAN-SPDUEDATEFEE05Jan-INDCOLLSHEETON10JAN
	  Scenario: 4587-RBI-DISBLOANON02JAN-SPDUEDATEFEE05Jan-INDCOLLSHEETON10JAN
	  
	  Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			|4587-RBI-DISBLOANON02JAN-SPDUEDATEFEE05Jan-INDCOLLSHEETON10JAN.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			|4587-RBI-DISBLOANON02JAN-instalmentFEE-INDCOLLSHEETON10JAN.xlsx|
	  Then I navigate to Individual collection Sheet
	  And I Make Repayment Through "Collection" sheet
	            |4587-RBI-DISBLOANON02JAN-SPDUEDATEFEE05Jan-INDCOLLSHEETON10JAN.xlsx|
	  And I navigate To Loan Account Page
	  And I verified the "Repayment Schedule" details successfully 
	  			|4587-RBI-DISBLOANON02JAN-instalmentFEE-INDCOLLSHEETON10JAN.xlsx|	

@4588-RBI-DISBLOANON02JAN-SPDUEDATEFEE05Jan-INDCOLLSHEETON10JAN
	  Scenario: 4588-RBI-DISBLOANON02JAN-SPDUEDATEFEE05Jan-INDCOLLSHEETON10JAN
	  
	  Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			|4588-RBI-DISBLOANON02JAN-SPDUEDATEFEE05Jan-INDCOLLSHEETON10JAN.xlsx|
	  Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|						
	  When I set up the new create loan from "NewLoanInput" sheet
	  			|4588-RBI-DISBLOANON02JAN-instalmentFEE-INDCOLLSHEETON10JAN.xlsx|			
	  Then I navigate to Individual collection Sheet
	  And I Make Repayment Through "Collection" sheet
	            |4588-RBI-DISBLOANON02JAN-SPDUEDATEFEE05Jan-INDCOLLSHEETON10JAN.xlsx|
	  And I navigate To Loan Account Page
	  And I verified the "Repayment Schedule" details successfully 
	  			|4588-RBI-DISBLOANON02JAN-instalmentFEE-INDCOLLSHEETON10JAN.xlsx|	
	  			
	  				            	

@4589-RBI-DISBLOANON02JAN-SPDUEDATEFEE05Jan-INDCOLLSHEETON10JAN
	  Scenario: 4589-RBI-DISBLOANON02JAN-SPDUEDATEFEE05Jan-INDCOLLSHEETON10JAN
	  
	  Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			|4589-RBI-DISBLOANON02JAN-SPDUEDATEFEE05Jan-INDCOLLSHEETON10JAN.xlsx|
	  Then I "WAIVEPENALTY" and verified the following tabs
	            |4589-RBI-DISBLOANON02JAN-SPDUEDATEFEE05Jan-INDCOLLSHEETON10JAN.xlsx|Charges|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			|4589-RBI-DISBLOANON02JAN-instalmentFEE-INDCOLLSHEETON10JAN.xlsx|
	  Then I "WAIVEPENALTY" and verified the following tabs
	            |4589-RBI-DISBLOANON02JAN-instalmentFEE-INDCOLLSHEETON10JAN.xlsx|Charges|
	  Then I navigate to Individual collection Sheet
	  And I Make Repayment Through "Collection" sheet
	            |4589-RBI-DISBLOANON02JAN-SPDUEDATEFEE05Jan-INDCOLLSHEETON10JAN.xlsx|
	  And I navigate To Loan Account Page
	  And I verified the "Repayment Schedule" details successfully 
	  			|4589-RBI-DISBLOANON02JAN-instalmentFEE-INDCOLLSHEETON10JAN.xlsx|	
				
				
@4590-RBI-DISBLOANON02JAN-WRITEOFF-INDCOLLSHEETON09JAN2015
	  Scenario: 4590-RBI-DISBLOANON02JAN-WRITEOFF-INDCOLLSHEETON09JAN2015
	  
	  Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			|4590-RBI-DISBLOANON02JAN-WRITEOFF- INDCOLLSHEETON09JAN2015.xlsx|
	  Then I "WRITEOFF" and verified the following tabs
	            |4590-RBI-DISBLOANON02JAN-WRITEOFF- INDCOLLSHEETON09JAN2015.xlsx|Modify Transaction|
      Then I navigate to Individual collection Sheet
	  And I Make Repayment Through "Collection" sheet
	            |4590-RBI-DISBLOANON02JAN-WRITEOFF- INDCOLLSHEETON09JAN2015.xlsx|
	  And I Verify "element" not visible
	            |verifySubmitbutton|
				
				
@4591-RBI-DISBLOANON02JAN-OVERPAY-INDCOLLSHEETON09JAN2015
	  Scenario: 4591-RBI-DISBLOANON02JAN-OVERPAY-INDCOLLSHEETON09JAN2015
	  
	  Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			|4591-RBI-DISBLOANON02JAN-OVERPAY-INDCOLLSHEETON09JAN2015.xlsx|
	  Then I make repayment and verified the following tabs
                |4591-RBI-DISBLOANON02JAN-OVERPAY-INDCOLLSHEETON09JAN2015.xlsx|Repay1|
      Then I navigate to Individual collection Sheet
	  And I Make Repayment Through "Collection" sheet
	            |4591-RBI-DISBLOANON02JAN-OVERPAY-INDCOLLSHEETON09JAN2015.xlsx|
	  And I Verify "element" not visible
	            |verifySubmitbutton|
				
				
@4592-RBI-CREATE2CLIENTS-ASSIGNSTAFFto1CLIENT-DISBLOANFORBOTHCLIENTS-INDCOLLECTIONSHEET
	  Scenario: 4592-RBI-CREATE2CLIENTS-ASSIGNSTAFFto1CLIENT-DISBLOANFORBOTHCLIENTS-INDCOLLECTIONSHEET
	  
	  Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx| 
	  When I set up the new create loan from "NewLoanInput" sheet
	  			|4592-RBI-CREATE2CLIENTS-ASSIGNSTAFFto1CLIENT-DISBLOANFORBOTHCLIENTS-INDCOLLECTIONSHEET.xlsx|
	  Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput1" sheet
	  			|4592-RBI-CREATE2CLIENTS-ASSIGNSTAFFto1CLIENT-DISBLOANFORBOTHCLIENTS-INDCOLLECTIONSHEET.xlsx|
	  Then I navigate to Individual collection Sheet
	  And I Make Repayment Through "Collection" sheet
	            |4592-RBI-CREATE2CLIENTS-ASSIGNSTAFFto1CLIENT-DISBLOANFORBOTHCLIENTS-INDCOLLECTIONSHEET.xlsx|
	  Then i validate and Verify from "Output" sheet
	            |4592-RBI-CREATE2CLIENTS-ASSIGNSTAFFto1CLIENT-DISBLOANFORBOTHCLIENTS-INDCOLLECTIONSHEET.xlsx|
				
@4593-RBI-CREATE2OFFICES-CREATE1CLIENT-DISBLOANforTHATCLIENT-INDCOLLECTION-SHEET-FOR-OTHEROFFICE
	  Scenario: 4593-RBI-CREATE2OFFICES-CREATE1CLIENT-DISBLOANforTHATCLIENT-INDCOLLECTION-SHEET-FOR-OTHEROFFICE
	  
	  Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx| 
	  When I set up the new create loan from "NewLoanInput" sheet
	  			|4593-RBI-CREATE2OFFICES-CREATE1CLIENT-DISBLOANforTHATCLIENT-INDCOLLECTION-SHEET-FOR-OTHEROFFICE.xlsx|
	  Then I navigate to Individual collection Sheet
	  And I Make Repayment Through "Collection" sheet
	            |4593-RBI-CREATE2OFFICES-CREATE1CLIENT-DISBLOANforTHATCLIENT-INDCOLLECTION-SHEET-FOR-OTHEROFFICE.xlsx|
	  And I Verify "element" not visible
	            |verifySubmitbutton|
				
@4594-RBI-DISBLOANON02JAN-INDCOLLSHEETON01JAN
	  Scenario: 4594-RBI-DISBLOANON02JAN-INDCOLLSHEETON01JAN
	  
	 Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			|4594-RBI-DISBLOANON02JAN-INDCOLLSHEETON01JAN.xlsx|
      Then I navigate to Individual collection Sheet
	  And I Make Repayment Through "Collection" sheet
	            |4594-RBI-DISBLOANON02JAN-INDCOLLSHEETON01JAN.xlsx|
	  And I Verify "element" not visible
	            |verifySubmitbutton|
	 

		            
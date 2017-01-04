Feature:WorkingDays

Background:
	Given I navigate to mifos using "default8#/"
	And I login into mifos site using "Login" excel sheet
		|Login.xlsx|
	Then I should see logged in successfully
	
@RunnerClass8
	  Scenario: 4615-DISB02JAN2013-NonWorkSatandSun
      Given I setup the product loan "Setup"
				| Productloannavigation.xlsx |
	  Then I entered the values into product from "ProductLoanInput" Sheet
				|4615-WorkingNoNWorking-Loanproduct.xlsx|
	  Given I create "same day" As Payments due on non working days
      Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			|4615-DISB02JAN2013-NonWorkSatandSun.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
	  			|4615-DISB02JAN2013-NonWorkSatandSun.xlsx|

@RunnerClass8
	  Scenario: 4616-NonWorkSatandSun-DISB03JAN2013
	  Given I create "same day" As Payments due on non working days
      Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			|4616-NonWorkSatandSun-DISB03JAN2013.xlsx|
	  Then i validate and Verify from "error" sheet	
	  |4616-NonWorkSatandSun-DISB03JAN2013.xlsx|		
	  			
@RunnerClass8
	  Scenario: 4617-NonWorkSatandSun-REPAYDUE-SAMEDAY-DISBDAILYLOANon02JAN2013-REPAY05JAN2013
	  Given I create "same day" As Payments due on non working days
      Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			|4617-NonWorkSatandSun-REPAYDUE-SAMEDAY-DISBDAILYLOANon02JAN2013-REPAY05JAN2013.xlsx|	
	  Then I make repayment and verified the following tabs
                |4617-NonWorkSatandSun-REPAYDUE-SAMEDAY-DISBDAILYLOANon02JAN2013-REPAY05JAN2013.xlsx|Repay1|
      Then i validate and Verify from "error" sheet
	  			|4617-NonWorkSatandSun-REPAYDUE-SAMEDAY-DISBDAILYLOANon02JAN2013-REPAY05JAN2013.xlsx|
                
@RunnerClass8
	  Scenario: 4618-NonWorkSatandSun-REPAYDUE-MOVEtoNEXTWORKINGDAY-DISBDAILYLOANon02JAN2013
	  Given I create "move to next working day" As Payments due on non working days
      Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			|4618-NonWorkSatandSun-REPAYDUE-MOVEtoNEXTWORKINGDAY-DISBDAILYLOANon02JAN2013.xlsx|	
	  And I verified the "Repayment Schedule" details successfully 
	  			|4618-NonWorkSatandSun-REPAYDUE-MOVEtoNEXTWORKINGDAY-DISBDAILYLOANon02JAN2013.xlsx|	  			  			

@RunnerClass8
	  Scenario: 4619-NonWorkSatandSun-REPAYDUE-MOVEtoPREVIOUSWORKINGDAY-DISBDAILYLOANon02JAN2013
	  Given I create "move to previous working day" As Payments due on non working days
      Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			|4619-NonWorkSatandSun-REPAYDUE-MOVEtoPREVIOUSWORKINGDAY-DISBDAILYLOANon02JAN2013.xlsx|	
	  And I verified the "Repayment Schedule" details successfully 
	  			|4619-NonWorkSatandSun-REPAYDUE-MOVEtoPREVIOUSWORKINGDAY-DISBDAILYLOANon02JAN2013.xlsx|
	  			
@RunnerClass8
	  Scenario: 4620-NonWorkSatandSun-REPAYDUE-MOVEtoNEXTREPAYMENTMEETINGDAY-DISBDAILYLOANon02JAN2013
	 Given I create "move to next repayment meeting day" As Payments due on non working days
     Given I setup the group
	 When I entered the values into group from "Input" sheet
	  	|4620-NonWorkSatandSun-REPAYDUE-MOVEtoNEXTREPAYMENTMEETINGDAY-DISBDAILYLOANon02JAN2013.xlsx|		  								  				  				  			
	 Then I entered the values into client from "Input" sheet
	 	|Createclient.xlsx|
	 When I set up the new create loan from "NewLoanInput" sheet
	  	|4620-NonWorkSatandSun-REPAYDUE-MOVEtoNEXTREPAYMENTMEETINGDAY-DISBDAILYLOANon02JAN2013.xlsx|	
	 And I verified the "Repayment Schedule" details successfully 
	  |4620-NonWorkSatandSun-REPAYDUE-MOVEtoNEXTREPAYMENTMEETINGDAY-DISBDAILYLOANon02JAN2013.xlsx|
	 	
@RunnerClass8
	  Scenario: 4621-NonWorkSatandSun-REPAYDUE-MOVEtoNEXTREPAYMENTMEETINGDAY-DISBDAILYLOANon02JAN2013-MAKEREPAYon5th
	 Given I create "move to next repayment meeting day" As Payments due on non working days
     Given I setup the group
	 When I entered the values into group from "Input" sheet
	  	|4621-NonWorkSatandSun-REPAYDUE-MOVEtoNEXTREPAYMENTMEETINGDAY-DISBDAILYLOANon02JAN2013-MAKEREPAYon5th.xlsx|		  								  				  				  			
	 Then I entered the values into client from "Input" sheet
	 	|Createclient.xlsx|
	 When I set up the new create loan from "NewLoanInput" sheet
	  	|4621-NonWorkSatandSun-REPAYDUE-MOVEtoNEXTREPAYMENTMEETINGDAY-DISBDAILYLOANon02JAN2013-MAKEREPAYon5th.xlsx|	
	 Then I make repayment and verified the following tabs
     |4621-NonWorkSatandSun-REPAYDUE-MOVEtoNEXTREPAYMENTMEETINGDAY-DISBDAILYLOANon02JAN2013-MAKEREPAYon5th.xlsx|Repay1|
     Then i validate and Verify from "error" sheet
	 |4621-NonWorkSatandSun-REPAYDUE-MOVEtoNEXTREPAYMENTMEETINGDAY-DISBDAILYLOANon02JAN2013-MAKEREPAYon5th.xlsx|
	
@RunnerClass8
	  Scenario: 4622-NonWorkSatandSun-REPAYDUE-MOVEtoNEXTREPAYMENTMEETINGDAY-DISBDAILYLOANon08JAN2013-HOLIDAYON15JAN2013RESchedule20thJAN13
	 Given I create "move to next repayment meeting day" As Payments due on non working days
     Given I setup the group
	 When I entered the values into group from "Input" sheet
	  	|4622-NonWorkSatandSun-REPAYDUE-MOVEtoNEXTREPAYMENTMEETINGDAY-DISBDAILYLOANon08JAN2013-HOLIDAYON15JAN2013RESchedule20thJAN13.xlsx|		  								  				  				  			
	 Then I entered the values into client from "Input" sheet
	 	|Createclient.xlsx|
	 When I set up the new create loan from "NewLoanInput" sheet
	  	|4622-NonWorkSatandSun-REPAYDUE-MOVEtoNEXTREPAYMENTMEETINGDAY-DISBDAILYLOANon08JAN2013-HOLIDAYON15JAN2013RESchedule20thJAN13.xlsx|	
	 Then i validate and Verify from "error" sheet
	    |4622-NonWorkSatandSun-REPAYDUE-MOVEtoNEXTREPAYMENTMEETINGDAY-DISBDAILYLOANon08JAN2013-HOLIDAYON15JAN2013RESchedule20thJAN13.xlsx|

@RunnerClass8
	  Scenario: 4623-NonWorkSatandSun-REPAYDUE-MOVEtoNEXTREPAYMENTMEETINGDAY-DISBWeeklyLOANon01JAN2013-HOLIDAYON15JAN2013RESchedule20thJAN13
	 Given I create "move to next repayment meeting day" As Payments due on non working days
     Given I setup the group
	 When I entered the values into group from "Input" sheet
	  	|4623-NonWorkSatandSun-REPAYDUE-MOVEtoNEXTREPAYMENTMEETINGDAY-DISBWeeklyLOANon01JAN2013-HOLIDAYON15JAN2013RESchedule20thJAN13.xlsx|		  								  				  				  			
	 Then I entered the values into client from "Input" sheet
	 	|Createclient.xlsx|
	 When I set up the new create loan from "NewLoanInput" sheet
	  	|4623-NonWorkSatandSun-REPAYDUE-MOVEtoNEXTREPAYMENTMEETINGDAY-DISBWeeklyLOANon01JAN2013-HOLIDAYON15JAN2013RESchedule20thJAN13.xlsx|	

@RunnerClass8
	  Scenario: 4624-NonWorkSatandSun-REPAYDUE-MOVEtoNEXTREPAYMENTMEETINGDAY-CENTER-DISBWeeklyLOANon01JAN2013-Collectionsheeton08JAN2013
	 Given I create "move to next repayment meeting day" As Payments due on non working days
     Given I setup the center
	 When I entered the values into center from "Input" sheet
	 	|4624-NonWorkSatandSun-REPAYDUE-MOVEtoNEXTREPAYMENTMEETINGDAY-CENTER-DISBWeeklyLOANon01JAN2013-Collectionsheeton08JAN2013.xlsx|
	 Then I entered the values into group from "Group" sheet
     	|4624-NonWorkSatandSun-REPAYDUE-MOVEtoNEXTREPAYMENTMEETINGDAY-CENTER-DISBWeeklyLOANon01JAN2013-Collectionsheeton08JAN2013.xlsx|		  								  				  				  			
	 Then I entered the values into client from "Input" sheet
	 	|Createclient.xlsx|	 				  								  				  				  			
	 When I set up the new create loan from "NewLoanInput" sheet
	  	|4624-NonWorkSatandSun-REPAYDUE-MOVEtoNEXTREPAYMENTMEETINGDAY-CENTER-DISBWeeklyLOANon01JAN2013-Collectionsheeton08JAN2013.xlsx|	
	 Then I navigate to collection Sheet
	 Then I Make Repayment Through "Collection" sheet
	    |4624-NonWorkSatandSun-REPAYDUE-MOVEtoNEXTREPAYMENTMEETINGDAY-CENTER-DISBWeeklyLOANon01JAN2013-Collectionsheeton08JAN2013.xlsx|
	  And I navigate To Loan Account Page
	 Then I verified the following Tabs details successfully 
	    |4624-NonWorkSatandSun-REPAYDUE-MOVEtoNEXTREPAYMENTMEETINGDAY-CENTER-DISBWeeklyLOANon01JAN2013-Collectionsheeton08JAN2013.xlsx|Repayment Schedule|
	  	
Feature:RBI

Background:
	Given I navigate to mifos using "default4#/"
	And I login into mifos site using "Login" excel sheet
		|Login.xlsx|
	Then I should see logged in successfully  

@4350-ACTGRP-DISBURSE-NEWJLGLOAN-NOMEETING
Scenario:4350-ACTGRP-DISBURSE-NEWJLGLOAN-NOMEETING
     
     Given I setup the product loan "Setup"
		| Productloannavigation.xlsx |
	 Then I entered the values into product loan from "ProductLoanInput" Sheet
		|4350-Simple-Group-Loan-Product-Loanproduct.xlsx|
     Given I setup the group
	 When I entered the values into group from "Input" sheet
	  	|4350-ACTGRP-DISBURSE-NEWJLGLOAN-NOMEETING-Newcreateloan1.xlsx|		  								  				  				  			
	 Then I entered the values into client from "Input" sheet
	 	|Createclient.xlsx|	 				  								  				  				  			
	 When I set up the new create loan from "NewLoanInput" sheet
	  	|4350-ACTGRP-DISBURSE-NEWJLGLOAN-NOMEETING-Newcreateloan1.xlsx|
	 Then I verified the following Tabs details successfully 
	    |4350-ACTGRP-DISBURSE-NEWJLGLOAN-NOMEETING-Newcreateloan1.xlsx|Summary|Repayment Schedule|
	    
@4351-ACTGRP-MEETING-WEEKLYonFRI-SUBMITJLGloan-SYNK-DISP+REPAYwithMEETING
Scenario:4351-ACTGRP-MEETING-WEEKLYonFRI-SUBMITJLGloan-SYNK-DISP+REPAYwithMEETING
     
     Given I setup the group
	 When I entered the values into group from "Input" sheet
	  	|4351-ACTGRP-MEETING-WEEKLYonFRI-SUBMITJLGloan-SYNK-DISP+REPAYwithMEETING-Newcreateloan1.xlsx|		  								  				  				  			
	 Then I entered the values into client from "Input" sheet
	 	|Createclient.xlsx|	 				  								  				  				  			
	 When I set up the new create loan from "NewLoanInput" sheet
	  	|4351-ACTGRP-MEETING-WEEKLYonFRI-SUBMITJLGloan-SYNK-DISP+REPAYwithMEETING-Newcreateloan1.xlsx|
		  	
@4352-ACTGRP-MEETING-WEEKLYonFRI-SUBMITJLGloan-SYNK-DISPwithMEETING
Scenario:4352-ACTGRP-MEETING-WEEKLYonFRI-SUBMITJLGloan-SYNK-DISPwithMEETING
     
     Given I setup the group
	 When I entered the values into group from "Input" sheet
	  	|4352-ACTGRP-MEETING-WEEKLYonFRI-SUBMITJLGloan-SYNK-DISPwithMEETING-Newcreateloan1.xlsx|		  								  				  				  			
	 Then I entered the values into client from "Input" sheet
	 	|Createclient.xlsx|	 				  								  				  				  			
	 When I set up the new create loan from "NewLoanInput" sheet
	  	|4352-ACTGRP-MEETING-WEEKLYonFRI-SUBMITJLGloan-SYNK-DISPwithMEETING-Newcreateloan1.xlsx|
		  	
@4353-ACTGRP-MEETING-WEEKLYonFRI-SUBMITJLGloan-SYNK-REPAYwithMEETING
Scenario:4353-ACTGRP-MEETING-WEEKLYonFRI-SUBMITJLGloan-SYNK-REPAYwithMEETING
     
     Given I setup the group
	 When I entered the values into group from "Input" sheet
	  	|4353-ACTGRP-MEETING-WEEKLYonFRI-SUBMITJLGloan-SYNK-REPAYwithMEETING-Newcreateloan1.xlsx|		  								  				  				  			
	 Then I entered the values into client from "Input" sheet
	 	|Createclient.xlsx|	 				  								  				  				  			
	 When I set up the new create loan from "NewLoanInput" sheet
	  	|4353-ACTGRP-MEETING-WEEKLYonFRI-SUBMITJLGloan-SYNK-REPAYwithMEETING-Newcreateloan1.xlsx|

@4354-ACTGRP-MEETING-WEEKLYonFRI-SUBMITJLGloan-NOSYNK-DISP+REPAYwithMEETING
Scenario:4354-ACTGRP-MEETING-WEEKLYonFRI-SUBMITJLGloan-NOSYNK-DISP+REPAYwithMEETING
     
     Given I setup the group
	 When I entered the values into group from "Input" sheet
	  	|4354-ACTGRP-MEETING-WEEKLYonFRI-SUBMITJLGloan-NOSYNK-DISP+REPAYwithMEETING-Newcreateloan1.xlsx|		  								  				  				  			
	 Then I entered the values into client from "Input" sheet
	 	|Createclient.xlsx|	 				  								  				  				  			
	 When I set up the new create loan from "NewLoanInput" sheet
	  	|4354-ACTGRP-MEETING-WEEKLYonFRI-SUBMITJLGloan-NOSYNK-DISP+REPAYwithMEETING-Newcreateloan1.xlsx|

@4355-ACTGRP-MEETING-WEEKLYonFRI-SUBMITJLGloan-SYNK-DISP+REPAYwithMEETING-Dailyloan
Scenario:4355-ACTGRP-MEETING-WEEKLYonFRI-SUBMITJLGloan-SYNK-DISP+REPAYwithMEETING-Dailyloan
     
     Given I setup the group
	 When I entered the values into group from "Input" sheet
	  	|4355-ACTGRP-MEETING-WEEKLYonFRI-SUBMITJLGloan-SYNK-DISP+REPAYwithMEETING-Dailyloan-Newcreateloan1.xlsx|		  								  				  				  			
	 Then I entered the values into client from "Input" sheet
	 	|Createclient.xlsx|	 				  								  				  				  			
	 When I set up the new create loan from "NewLoanInput" sheet
	  	|4355-ACTGRP-MEETING-WEEKLYonFRI-SUBMITJLGloan-SYNK-DISP+REPAYwithMEETING-Dailyloan-Newcreateloan1.xlsx|

@4356-ACTGRP-MEETING-WEEKLYonFRI-SUBMITJLGloan-SYNK-DISP+REPAYwithMEETING-Dailyloanevery7day
Scenario:4356-ACTGRP-MEETING-WEEKLYonFRI-SUBMITJLGloan-SYNK-DISP+REPAYwithMEETING-Dailyloanevery7day
     
     Given I setup the group
	 When I entered the values into group from "Input" sheet
	  	|4356-ACTGRP-MEETING-WEEKLYonFRI-SUBMITJLGloan-SYNK-DISP+REPAYwithMEETING-Dailyloanevery7day-Newcreateloan1.xlsx|		  								  				  				  			
	 Then I entered the values into client from "Input" sheet
	 	|Createclient.xlsx|	 				  								  				  				  			
	 When I set up the new create loan from "NewLoanInput" sheet
	  	|4356-ACTGRP-MEETING-WEEKLYonFRI-SUBMITJLGloan-SYNK-DISP+REPAYwithMEETING-Dailyloanevery7day-Newcreateloan1.xlsx|

@4357-ACTGRP-MEETING-WEEKLYonFRI-SUBMITJLGloan-SYNK-DISP+REPAYwithMEETING-Weeklyloanevery2weeks
Scenario:4357-ACTGRP-MEETING-WEEKLYonFRI-SUBMITJLGloan-SYNK-DISP+REPAYwithMEETING-Weeklyloanevery2weeks
     
     Given I setup the group
	 When I entered the values into group from "Input" sheet
	  	|4357-ACTGRP-MEETING-WEEKLYonFRI-SUBMITJLGloan-SYNK-DISP+REPAYwithMEETING-Weeklyloanevery2weeks-Newcreateloan1.xlsx|		  								  				  				  			
	 Then I entered the values into client from "Input" sheet
	 	|Createclient.xlsx|	 				  								  				  				  			
	 When I set up the new create loan from "NewLoanInput" sheet
	  	|4357-ACTGRP-MEETING-WEEKLYonFRI-SUBMITJLGloan-SYNK-DISP+REPAYwithMEETING-Weeklyloanevery2weeks-Newcreateloan1.xlsx|
	 Then I verified the following Tabs details successfully 
	    |4357-ACTGRP-MEETING-WEEKLYonFRI-SUBMITJLGloan-SYNK-DISP+REPAYwithMEETING-Weeklyloanevery2weeks-Newcreateloan1.xlsx|Summary|Repayment Schedule|
	    
@4358-ACTGRP-MEETING-DAILY-SUBMITJLGloan-SYNK-DISP+REPAYwithMEETING-Dailyloanevery1day
Scenario:4358-ACTGRP-MEETING-DAILY-SUBMITJLGloan-SYNK-DISP+REPAYwithMEETING-Dailyloanevery1day
     
     Given I setup the group
	 When I entered the values into group from "Input" sheet
	  	|4358-ACTGRP-MEETING-DAILY-SUBMITJLGloan-SYNK-DISP+REPAYwithMEETING-Dailyloanevery1day-Newcreateloan1.xlsx|		  								  				  				  			
	 Then I entered the values into client from "Input" sheet
	 	|Createclient.xlsx|	 				  								  				  				  			
	 When I set up the new create loan from "NewLoanInput" sheet
	  	|4358-ACTGRP-MEETING-DAILY-SUBMITJLGloan-SYNK-DISP+REPAYwithMEETING-Dailyloanevery1day-Newcreateloan1.xlsx|

@4359-ACTGRP-MEETING-WEEKLYonFRI-SUBMITJLGloan-SYNK-DISP+REPAYwithMEETING-Yearlyloanevery1year
Scenario:4359-ACTGRP-MEETING-WEEKLYonFRI-SUBMITJLGloan-SYNK-DISP+REPAYwithMEETING-Yearlyloanevery1year
     
     Given I setup the group
	 When I entered the values into group from "Input" sheet
	  	|4359-ACTGRP-MEETING-WEEKLYonFRI-SUBMITJLGloan-SYNK-DISP+REPAYwithMEETING-Yearlyloanevery1year-Newcreateloan1.xlsx|		  								  				  				  			
	 Then I entered the values into client from "Input" sheet
	 	|Createclient.xlsx|	 				  								  				  				  			
	 When I set up the new create loan from "NewLoanInput" sheet
	  	|4359-ACTGRP-MEETING-WEEKLYonFRI-SUBMITJLGloan-SYNK-DISP+REPAYwithMEETING-Yearlyloanevery1year-Newcreateloan1.xlsx|
	  	
@4360-ACTGRP-MEETING-EVERY2WEEKonFRI-SUBMITJLGloan-SYNK-DISP+REPAYwithMEETING-Weeklyloanevery1week
Scenario:4360-ACTGRP-MEETING-EVERY2WEEKonFRI-SUBMITJLGloan-SYNK-DISP+REPAYwithMEETING-Weeklyloanevery1week
     
     Given I setup the group
	 When I entered the values into group from "Input" sheet
	  	|4360-ACTGRP-MEETING-EVERY2WEEKonFRI-SUBMITJLGloan-SYNK-DISP+REPAYwithMEETING-Weeklyloanevery1week-Newcreateloan1.xlsx|		  								  				  				  			
	 Then I entered the values into client from "Input" sheet
	 	|Createclient.xlsx|	 				  								  				  				  			
	 When I set up the new create loan from "NewLoanInput" sheet
	  	|4360-ACTGRP-MEETING-EVERY2WEEKonFRI-SUBMITJLGloan-SYNK-DISP+REPAYwithMEETING-Weeklyloanevery1week-Newcreateloan1.xlsx|
	  	
@4361-ACTGRP-MEETING-EVERY2WEEKonFRI-SUBMITJLGloan-SYNK-DISP+REPAYwithMEETING-Dailyloanevery14days
Scenario:4361-ACTGRP-MEETING-EVERY2WEEKonFRI-SUBMITJLGloan-SYNK-DISP+REPAYwithMEETING-Dailyloanevery14days
     
     Given I setup the group
	 When I entered the values into group from "Input" sheet
	  	|4361-ACTGRP-MEETING-EVERY2WEEKonFRI-SUBMITJLGloan-SYNK-DISP+REPAYwithMEETING-Dailyloanevery14days-Newcreateloan1.xlsx|		  								  				  				  			
	 Then I entered the values into client from "Input" sheet
	 	|Createclient.xlsx|	 				  								  				  				  			
	 When I set up the new create loan from "NewLoanInput" sheet
	  	|4361-ACTGRP-MEETING-EVERY2WEEKonFRI-SUBMITJLGloan-SYNK-DISP+REPAYwithMEETING-Dailyloanevery14days-Newcreateloan1.xlsx|
	  	
@4362-ACTGRP-MEETING-EVERY2WEEKonFRI-SUBMITJLGloan-SYNK-DISP+REPAYwithMEETING-Monthlyloanevery1month
Scenario:4362-ACTGRP-MEETING-EVERY2WEEKonFRI-SUBMITJLGloan-SYNK-DISP+REPAYwithMEETING-Monthlyloanevery1month
     
     Given I setup the group
	 When I entered the values into group from "Input" sheet
	  	|4362-ACTGRP-MEETING-EVERY2WEEKonFRI-SUBMITJLGloan-SYNK-DISP+REPAYwithMEETING-Monthlyloanevery1month-Newcreateloan1.xlsx|		  								  				  				  			
	 Then I entered the values into client from "Input" sheet
	 	|Createclient.xlsx|	 				  								  				  				  			
	 When I set up the new create loan from "NewLoanInput" sheet
	  	|4362-ACTGRP-MEETING-EVERY2WEEKonFRI-SUBMITJLGloan-SYNK-DISP+REPAYwithMEETING-Monthlyloanevery1month-Newcreateloan1.xlsx|
	  	
@4363-ACTGRP-MEETING-EVERY2WEEKonFRI-SUBMITJLGloan-SYNK-DISP+REPAYwithMEETING-Yearlyloanevery1year
Scenario:4363-ACTGRP-MEETING-EVERY2WEEKonFRI-SUBMITJLGloan-SYNK-DISP+REPAYwithMEETING-Yearlyloanevery1year
     
     Given I setup the group
	 When I entered the values into group from "Input" sheet
	  	|4363-ACTGRP-MEETING-EVERY2WEEKonFRI-SUBMITJLGloan-SYNK-DISP+REPAYwithMEETING-Yearlyloanevery1year-Newcreateloan1.xlsx|		  								  				  				  			
	 Then I entered the values into client from "Input" sheet
	 	|Createclient.xlsx|	 				  								  				  				  			
	 When I set up the new create loan from "NewLoanInput" sheet
	  	|4363-ACTGRP-MEETING-EVERY2WEEKonFRI-SUBMITJLGloan-SYNK-DISP+REPAYwithMEETING-Yearlyloanevery1year-Newcreateloan1.xlsx|
	  	
@4364-ACTGRP-MEETING-DAILY-SUBMITJLGloan-SYNK-DISP+REPAYwithMEETING-Dailyloanevery1day
Scenario:4364-ACTGRP-MEETING-DAILY-SUBMITJLGloan-SYNK-DISP+REPAYwithMEETING-Dailyloanevery1day
     
     Given I setup the group
	 When I entered the values into group from "Input" sheet
	  	|4364-ACTGRP-MEETING-DAILY-SUBMITJLGloan-SYNK-DISP+REPAYwithMEETING-Dailyloanevery1day-Newcreateloan1.xlsx|		  								  				  				  			
	 Then I entered the values into client from "Input" sheet
	 	|Createclient.xlsx|	 				  								  				  				  			
	 When I set up the new create loan from "NewLoanInput" sheet
	  	|4364-ACTGRP-MEETING-DAILY-SUBMITJLGloan-SYNK-DISP+REPAYwithMEETING-Dailyloanevery1day-Newcreateloan1.xlsx|
	 Then I verified the following Tabs details successfully 
	    |4364-ACTGRP-MEETING-DAILY-SUBMITJLGloan-SYNK-DISP+REPAYwithMEETING-Dailyloanevery1day-Newcreateloan1.xlsx|Summary|Repayment Schedule|
	 
	  	
@4365-ACTGRP-MEETING-DAILY-SUBMITJLGloan-SYNK-DISP+REPAYwithMEETING-Weeklyloanevery1week
Scenario:4365-ACTGRP-MEETING-DAILY-SUBMITJLGloan-SYNK-DISP+REPAYwithMEETING-Weeklyloanevery1week
     
     Given I setup the group
	 When I entered the values into group from "Input" sheet
	  	|4365-ACTGRP-MEETING-DAILY-SUBMITJLGloan-SYNK-DISP+REPAYwithMEETING-Weeklyloanevery1week-Newcreateloan1.xlsx|		  								  				  				  			
	 Then I entered the values into client from "Input" sheet
	 	|Createclient.xlsx|	 				  								  				  				  			
	 When I set up the new create loan from "NewLoanInput" sheet
	  	|4365-ACTGRP-MEETING-DAILY-SUBMITJLGloan-SYNK-DISP+REPAYwithMEETING-Weeklyloanevery1week-Newcreateloan1.xlsx|
	 Then I verified the following Tabs details successfully 
	    |4365-ACTGRP-MEETING-DAILY-SUBMITJLGloan-SYNK-DISP+REPAYwithMEETING-Weeklyloanevery1week-Newcreateloan1.xlsx|Summary|Repayment Schedule|
	  	
@4366-ACTGRP-MEETING-DAILY-SUBMITJLGloan-SYNK-DISP+REPAYwithMEETING-Monthlyloanevery1month
Scenario:4366-ACTGRP-MEETING-DAILY-SUBMITJLGloan-SYNK-DISP+REPAYwithMEETING-Monthlyloanevery1month
     
     Given I setup the group
	 When I entered the values into group from "Input" sheet
	  	|4366-ACTGRP-MEETING-DAILY-SUBMITJLGloan-SYNK-DISP+REPAYwithMEETING-Monthlyloanevery1month-Newcreateloan1.xlsx|		  								  				  				  			
	 Then I entered the values into client from "Input" sheet
	 	|Createclient.xlsx|	 				  								  				  				  			
	 When I set up the new create loan from "NewLoanInput" sheet
	  	|4366-ACTGRP-MEETING-DAILY-SUBMITJLGloan-SYNK-DISP+REPAYwithMEETING-Monthlyloanevery1month-Newcreateloan1.xlsx|
	 Then I verified the following Tabs details successfully 
	    |4366-ACTGRP-MEETING-DAILY-SUBMITJLGloan-SYNK-DISP+REPAYwithMEETING-Monthlyloanevery1month-Newcreateloan1.xlsx|Summary|Repayment Schedule|

@4367-ACTGRP-MEETING-DAILY-SUBMITJLGloan-SYNK-DISP+REPAYwithMEETING-Yearlyloanevery1year
Scenario:4367-ACTGRP-MEETING-DAILY-SUBMITJLGloan-SYNK-DISP+REPAYwithMEETING-Yearlyloanevery1year
     
     Given I setup the group
	 When I entered the values into group from "Input" sheet
	  	|4367-ACTGRP-MEETING-DAILY-SUBMITJLGloan-SYNK-DISP+REPAYwithMEETING-Yearlyloanevery1year-Newcreateloan1.xlsx|		  								  				  				  			
	 Then I entered the values into client from "Input" sheet
	 	|Createclient.xlsx|	 				  								  				  				  			
	 When I set up the new create loan from "NewLoanInput" sheet
	  	|4367-ACTGRP-MEETING-DAILY-SUBMITJLGloan-SYNK-DISP+REPAYwithMEETING-Yearlyloanevery1year-Newcreateloan1.xlsx|
	 Then I verified the following Tabs details successfully 
	    |4367-ACTGRP-MEETING-DAILY-SUBMITJLGloan-SYNK-DISP+REPAYwithMEETING-Yearlyloanevery1year-Newcreateloan1.xlsx|Summary|Repayment Schedule|

@4368-ACTGRP-MEETING-EVERY1MONTH-SUBMITJLGloan-SYNK-DISP+REPAYwithMEETING-Dailyloanevery1day
Scenario:4368-ACTGRP-MEETING-EVERY1MONTH-SUBMITJLGloan-SYNK-DISP+REPAYwithMEETING-Dailyloanevery1day
     
     Given I setup the group
	 When I entered the values into group from "Input" sheet
	  	|4368-ACTGRP-MEETING-EVERY1MONTH-SUBMITJLGloan-SYNK-DISP+REPAYwithMEETING-Dailyloanevery1day-Newcreateloan1.xlsx|		  								  				  				  			
	 Then I entered the values into client from "Input" sheet
	 	|Createclient.xlsx|	 				  								  				  				  			
	 When I set up the new create loan from "NewLoanInput" sheet
	  	|4368-ACTGRP-MEETING-EVERY1MONTH-SUBMITJLGloan-SYNK-DISP+REPAYwithMEETING-Dailyloanevery1day-Newcreateloan1.xlsx|

@4369-ACTGRP-MEETING-EVERY1MONTH-SUBMITJLGloan-SYNK-DISP+REPAYwithMEETING-Weeklyloanevery2weeks
Scenario:4369-ACTGRP-MEETING-EVERY1MONTH-SUBMITJLGloan-SYNK-DISP+REPAYwithMEETING-Weeklyloanevery2weeks
     
     Given I setup the group
	 When I entered the values into group from "Input" sheet
	  	|4369-ACTGRP-MEETING-EVERY1MONTH-SUBMITJLGloan-SYNK-DISP+REPAYwithMEETING-Weeklyloanevery2weeks-Newcreateloan1.xlsx|		  								  				  				  			
	 Then I entered the values into client from "Input" sheet
	 	|Createclient.xlsx|	 				  								  				  				  			
	 When I set up the new create loan from "NewLoanInput" sheet
	  	|4369-ACTGRP-MEETING-EVERY1MONTH-SUBMITJLGloan-SYNK-DISP+REPAYwithMEETING-Weeklyloanevery2weeks-Newcreateloan1.xlsx|
		  	
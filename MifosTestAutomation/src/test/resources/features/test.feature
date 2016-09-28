Feature:RBI

Background:
	Given I navigate to mifos using "default1#/"
	And I login into mifos site using "Login" excel sheet
		|Login.xlsx|
	Then I should see logged in successfully
	
@4615-DISB02JAN2013-NonWorkSatandSun
	  Scenario: 4615-DISB02JAN2013-NonWorkSatandSun
      Given I setup the product loan "Setup"
				| Productloannavigation.xlsx |
	  Then I entered the values into product loan from "ProductLoanInput" Sheet
				|4615-WorkingNoNWorking-Loanproduct.xlsx|
      Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			|4615-DISB02JAN2013-NonWorkSatandSun.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
	  			|4615-DISB02JAN2013-NonWorkSatandSun.xlsx|

@4616-NonWorkSatandSun-DISB03JAN2013
	  Scenario: 4616-NonWorkSatandSun-DISB03JAN2013
      Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			|4616-NonWorkSatandSun-DISB03JAN2013.xlsx|
	  			
@4617-NonWorkSatandSun-REPAYDUE-SAMEDAY-DISBDAILYLOANon02JAN2013-REPAY05JAN2013
	  Scenario: 4617-NonWorkSatandSun-REPAYDUE-SAMEDAY-DISBDAILYLOANon02JAN2013-REPAY05JAN2013
	  Given I create "same day" As Payments due on non working days
      Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			|4617-NonWorkSatandSun-REPAYDUE-SAMEDAY-DISBDAILYLOANon02JAN2013-REPAY05JAN2013.xlsx|	
	  And I verified the "Repayment Schedule" details successfully 
	  			|4617-NonWorkSatandSun-REPAYDUE-SAMEDAY-DISBDAILYLOANon02JAN2013-REPAY05JAN2013.xlsx|

@4618-NonWorkSatandSun-REPAYDUE-MOVEtoNEXTWORKINGDAY-DISBDAILYLOANon02JAN2013
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

@4619-NonWorkSatandSun-REPAYDUE-MOVEtoPREVIOUSWORKINGDAY-DISBDAILYLOANon02JAN2013
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
	  			
@4619-NonWorkSatandSun-REPAYDUE-MOVEtoPREVIOUSWORKINGDAY-DISBDAILYLOANon02JAN2013
	  Scenario: 4619-NonWorkSatandSun-REPAYDUE-MOVEtoPREVIOUSWORKINGDAY-DISBDAILYLOANon02JAN2013
	  Given I create "move to next repayment meeting day" As Payments due on non working days
      Given I setup the group
	 When I entered the values into group from "Input" sheet
	  	|4619-NonWorkSatandSun-REPAYDUE-MOVEtoPREVIOUSWORKINGDAY-DISBDAILYLOANon02JAN2013.xlsx|		  								  				  				  			
	 Then I entered the values into client from "Input" sheet
	 	|Createclient.xlsx|
	 When I set up the new create loan from "NewLoanInput" sheet
	  			|4619-NonWorkSatandSun-REPAYDUE-MOVEtoPREVIOUSWORKINGDAY-DISBDAILYLOANon02JAN2013.xlsx|	
	 And I verified the "Repayment Schedule" details successfully 
	  			|4619-NonWorkSatandSun-REPAYDUE-MOVEtoPREVIOUSWORKINGDAY-DISBDAILYLOANon02JAN2013.xlsx|	  					 	   	 		 	 	
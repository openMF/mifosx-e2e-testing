Feature:RBI

Background:
	Given I navigate to mifos using "default#/"
	And I login into mifos site using "Login" excel sheet
		|Login.xlsx|
	Then I should see logged in successfully

 Scenario: 4921-DisbursementAfterMaturityDate-FirstRepaymentOnDisbursalDate-CollectUpfrontAmount
  Given I setup the clients
  When I entered the values into client from "Input" sheet
	 |Createclient.xlsx|
  When I set up the new create loan from "NewLoanInput" sheet
	 | 4921-DisbursementAfterMaturityDate-FirstRepaymentOnDisbursalDate-CollectUpfrontAmount.xlsx |
  Then I "MakeReapymentTillMaturityDate" and verified the following tabs
	 | 4921-DisbursementAfterMaturityDate-FirstRepaymentOnDisbursalDate-CollectUpfrontAmount.xlsx |Modify Transaction|Modify Transaction1|Modify Transaction2|Modify Transaction6|Modify Transaction3|Modify Transaction4|Modify Transaction5|Summary|Repayment Schedule|Transactions|
  And I "Disburse2ndTranche" and verified the following tabs
	 | 4921-DisbursementAfterMaturityDate-FirstRepaymentOnDisbursalDate-CollectUpfrontAmount-Disburse2ndTranche.xlsx |Modify Transaction|Summary|Repayment Schedule|Transactions|
  Then I "Writeoff" and verified the following tabs
	 | 4921-DisbursementAfterMaturityDate-FirstRepaymentOnDisbursalDate-CollectUpfrontAmount-Writeoff.xlsx |Modify Transaction|Summary|Repayment Schedule|Transactions|
  
   
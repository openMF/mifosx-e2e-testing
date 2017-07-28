Feature:NeevSanityTestScenarios

Background:
	Given I navigate to mifos using "default9#/"
	And I login into mifos site using "Login" excel sheet
		| Login.xlsx  |
	Then I should see logged in successfully

@RunnerClass2		
Scenario: 4900-SUBMIT-MODAPP-VERIFY  
 Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
 When I set up the new create loan from "NewLoanInput" sheet
	 | 4900-SUBMIT-MODAPP-VERIFY.xlsx |
 And I modify New Account from "ModifyLoan" sheet
	 | 4900-SUBMIT-MODAPP-VERIFY.xlsx |
 Then I verified the "Summary" details successfully 
	 | 4900-SUBMIT-MODAPP-VERIFY.xlsx |
 And I verified the "Repayment Schedule" details successfully 
	 | 4900-SUBMIT-MODAPP-VERIFY.xlsx |
	 
@RunnerClass2	 
Scenario: 4901-SUBMIT-MODAPP-APPROVE-UNDOAPPROVE-DISB-UNDODISB-DISB-VERIFY  
 Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
 When I set up the new create loan from "NewLoanInput" sheet
	 | 4901-SUBMIT-MODAPP-APPROVE-UNDOAPPROVE-DISB-UNDODISB-DISB-VERIFY.xlsx |
 And I modify New Account from "ModifyLoan" sheet
	 | 4901-SUBMIT-MODAPP-APPROVE-UNDOAPPROVE-DISB-UNDODISB-DISB-VERIFY.xlsx |
 And I modify New Account from "UndoApprove" sheet
	 | 4901-SUBMIT-MODAPP-APPROVE-UNDOAPPROVE-DISB-UNDODISB-DISB-VERIFY.xlsx |
 And I modify New Account from "UndoDisb" sheet
	 | 4901-SUBMIT-MODAPP-APPROVE-UNDOAPPROVE-DISB-UNDODISB-DISB-VERIFY.xlsx |
 Then I verified the "Summary" details successfully 
	 | 4901-SUBMIT-MODAPP-APPROVE-UNDOAPPROVE-DISB-UNDODISB-DISB-VERIFY.xlsx |
 And I verified the "Repayment Schedule" details successfully 
	 | 4901-SUBMIT-MODAPP-APPROVE-UNDOAPPROVE-DISB-UNDODISB-DISB-VERIFY.xlsx |
 And I modify New Account from "Disbures2tranche" sheet
	 | 4901-SUBMIT-MODAPP-APPROVE-UNDOAPPROVE-DISB-UNDODISB-DISB-VERIFY.xlsx |
 And I modify New Account from "UndoDisb2tranche" sheet
	 | 4901-SUBMIT-MODAPP-APPROVE-UNDOAPPROVE-DISB-UNDODISB-DISB-VERIFY.xlsx |
 Then I verified the "Summary" details successfully 
	 | 4901-SUBMIT-MODAPP-APPROVE-UNDOAPPROVE-DISB-UNDODISB-DISB-VERIFY.xlsx |
 And I verified the "Repayment Schedule" details successfully 
	 | 4901-SUBMIT-MODAPP-APPROVE-UNDOAPPROVE-DISB-UNDODISB-DISB-VERIFY.xlsx |

@RunnerClass2	 
Scenario: 4902-SUBMIT-MODAPP-APPROVE-UNDOAPPROVE-DISB-UNDODISB-DISBLessAmt  
 Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
 When I set up the new create loan from "NewLoanInput" sheet
	 | 4902-SUBMIT-MODAPP-APPROVE-UNDOAPPROVE-DISB-UNDODISB-DISBLessAmt.xlsx |
 And I modify New Account from "ModifyLoan" sheet
	 | 4902-SUBMIT-MODAPP-APPROVE-UNDOAPPROVE-DISB-UNDODISB-DISBLessAmt.xlsx |
 And I modify New Account from "UndoApprove" sheet
	 | 4902-SUBMIT-MODAPP-APPROVE-UNDOAPPROVE-DISB-UNDODISB-DISBLessAmt.xlsx |
 And I modify New Account from "UndoDisb" sheet
	 | 4902-SUBMIT-MODAPP-APPROVE-UNDOAPPROVE-DISB-UNDODISB-DISBLessAmt.xlsx |
 And I modify New Account from "Disbures2tranche" sheet
	 | 4902-SUBMIT-MODAPP-APPROVE-UNDOAPPROVE-DISB-UNDODISB-DISBLessAmt.xlsx |
 Then I verified the "Summary" details successfully 
	 | 4902-SUBMIT-MODAPP-APPROVE-UNDOAPPROVE-DISB-UNDODISB-DISBLessAmt.xlsx |
 And I verified the "Repayment Schedule" details successfully 
	 | 4902-SUBMIT-MODAPP-APPROVE-UNDOAPPROVE-DISB-UNDODISB-DISBLessAmt.xlsx |

@RunnerClass2
Scenario: 4903-DISB-REPAYMENT-EXACTDATE-LessMoreExactAmt  
 Given I setup the clients
 When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
 When I set up the new create loan from "NewLoanInput" sheet
	 | 4903-DISB-REPAYMENT-EXACTDATE-LessMoreExactAmt.xlsx |
 Then I make repayment and verified the following tabs
     |4903-DISB-REPAYMENT-EXACTDATE-LessMoreExactAmt.xlsx|Input|Summary|Repayment Schedule|Transactions|
 And I modify New Account from "UndoDisb" sheet
	 | 4903-DISB-REPAYMENT-EXACTDATE-LessMoreExactAmt.xlsx |
 Then I make repayment and verified the following tabs
     |4903-DISB-REPAYMENT-EXACTDATE-LessAmt.xlsx|Input|Summary|Repayment Schedule|Transactions|
 And I modify New Account from "UndoDisb" sheet
	 | 4903-DISB-REPAYMENT-EXACTDATE-LessMoreExactAmt.xlsx |
 Then I make repayment and verified the following tabs
     |4903-DISB-REPAYMENT-EXACTDATE-MoreAmt.xlsx|Input|Summary|Repayment Schedule|
 Then I navigate to scheduler job & execute "Periodic Accrual Transactions"
 And I verified the "Transactions" details and read the transaction Id 
	 |4903-DISB-REPAYMENT-EXACTDATE-MoreAmt.xlsx|
 And I Navigate to Accounting web page
 And I search with transaction id & verified the accounting entries
	 |4903-DISB-REPAYMENT-EXACTDATE-MoreAmt.xlsx|Acc_Disbursement|Acc_Repayment|Acc_Periodic|

@RunnerClass2
Scenario: 4904-DISB-REPAYMENT-EARLYDATE-LessMoreExactAmt  
 Given I setup the clients
 When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
 When I set up the new create loan from "NewLoanInput" sheet
	 | 4904-DISB-REPAYMENT-EARLYDATE-LessMoreExactAmt.xlsx |
 Then I make repayment and verified the following tabs
     |4904-DISB-REPAYMENT-EARLYDATE-LessMoreExactAmt.xlsx|Input|Summary|Repayment Schedule|Transactions|
 And I modify New Account from "UndoDisb" sheet
	 | 4904-DISB-REPAYMENT-EARLYDATE-LessMoreExactAmt.xlsx |
 Then I make repayment and verified the following tabs
     |4904-DISB-REPAYMENT-EARLYDATE-LessAmt.xlsx|Input|Summary|Repayment Schedule|Transactions|
 And I modify New Account from "UndoDisb" sheet
	 | 4904-DISB-REPAYMENT-EARLYDATE-LessMoreExactAmt.xlsx |
 Then I make repayment and verified the following tabs
     |4904-DISB-REPAYMENT-EARLYDATE-MoreAmt.xlsx|Input|Repay1|Repay2|Summary|Repayment Schedule|
 Then I navigate to scheduler job & execute "Periodic Accrual Transactions"
 And I verified the "Transactions" details and read the transaction Id 
	 |4904-DISB-REPAYMENT-EARLYDATE-MoreAmt.xlsx|

@RunnerClass2
Scenario: 4905-DISB-REPAYMENT-ExactLateEarlyDate-LessMoreExactAmt-waiveInterest
 Given I setup the clients
 When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
 When I set up the new create loan from "NewLoanInput" sheet
	 | 4905-DISB-REPAYMENT-ExactLateEarlyDate-LessMoreExactAmt-waiveInterest.xlsx |
 Then I "MakeReapyment&WaiveInterest" and verified the following tabs
     |4905-DISB-REPAYMENT-ExactDate-ExactAmt-waiveInterest.xlsx|Modify Transaction1|Modify Transaction|Summary|Repayment Schedule|Transactions|
 And I modify New Account from "UndoDisb" sheet
	 | 4905-DISB-REPAYMENT-ExactLateEarlyDate-LessMoreExactAmt-waiveInterest.xlsx |
 Then I "MakeReapyment&WaiveInterest" and verified the following tabs
     |4905-DISB-REPAYMENT-ExactDate-LessAmt-waiveInterest.xlsx|Modify Transaction1|Modify Transaction|Summary|Repayment Schedule|Transactions|
 And I modify New Account from "UndoDisb" sheet
	 | 4905-DISB-REPAYMENT-ExactLateEarlyDate-LessMoreExactAmt-waiveInterest.xlsx |
 Then I "MakeReapyment&WaiveInterest" and verified the following tabs
     |4905-DISB-REPAYMENT-ExactDate-MoreAmt-waiveInterest.xlsx|Modify Transaction1|Modify Transaction|Summary|Repayment Schedule|Transactions|
 And I modify New Account from "UndoDisb" sheet
	 | 4905-DISB-REPAYMENT-ExactLateEarlyDate-LessMoreExactAmt-waiveInterest.xlsx |
 Then I "MakeReapyment&WaiveInterest" and verified the following tabs
     |4905-DISB-REPAYMENT-EarlyDate-ExactAmt-waiveInterest.xlsx|Modify Transaction1|Modify Transaction|Summary|Repayment Schedule|Transactions|
 And I modify New Account from "UndoDisb" sheet
	 | 4905-DISB-REPAYMENT-ExactLateEarlyDate-LessMoreExactAmt-waiveInterest.xlsx |
 Then I "MakeReapyment&WaiveInterest" and verified the following tabs
     |4905-DISB-REPAYMENT-EarlyDate-LessAmt-waiveInterest.xlsx|Modify Transaction1|Modify Transaction|Summary|Repayment Schedule|Transactions|
 And I modify New Account from "UndoDisb" sheet
	 | 4905-DISB-REPAYMENT-ExactLateEarlyDate-LessMoreExactAmt-waiveInterest.xlsx |
 Then I "MakeReapyment&WaiveInterest" and verified the following tabs
     |4905-DISB-REPAYMENT-EarlyDate-MoreAmt-waiveInterest.xlsx|Modify Transaction1|Modify Transaction|Summary|Repayment Schedule|Transactions|
 And I modify New Account from "UndoDisb" sheet
	 | 4905-DISB-REPAYMENT-ExactLateEarlyDate-LessMoreExactAmt-waiveInterest.xlsx |
 Then I "MakeReapyment&WaiveInterest" and verified the following tabs
     |4905-DISB-REPAYMENT-LateDate-ExactAmt-waiveInterest.xlsx|Modify Transaction1|Modify Transaction|Summary|Repayment Schedule|Transactions|
 And I modify New Account from "UndoDisb" sheet
	 | 4905-DISB-REPAYMENT-ExactLateEarlyDate-LessMoreExactAmt-waiveInterest.xlsx |
 Then I "MakeReapyment&WaiveInterest" and verified the following tabs
     |4905-DISB-REPAYMENT-LateDate-LessAmt-waiveInterest.xlsx|Modify Transaction1|Modify Transaction|Summary|Repayment Schedule|Transactions|
 And I modify New Account from "UndoDisb" sheet
	 | 4905-DISB-REPAYMENT-ExactLateEarlyDate-LessMoreExactAmt-waiveInterest.xlsx |
 Then I "MakeReapyment&WaiveInterest" and verified the following tabs
     |4905-DISB-REPAYMENT-LateDate-MoreAmt-waiveInterest.xlsx|Modify Transaction1|Modify Transaction|Summary|Repayment Schedule|
 Then I navigate to scheduler job & execute "Periodic Accrual Transactions"
 And I verified the "Transactions" details and read the transaction Id 
	 |4905-DISB-REPAYMENT-LateDate-MoreAmt-waiveInterest.xlsx|

@RunnerClass2
Scenario: 4906-DISB-1st&2ndREPAYMENT-Writeoff  
 Given I setup the clients
 When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
 When I set up the new create loan from "NewLoanInput" sheet
	 | 4906-DISB-1st&2ndREPAYMENT-Writeoff.xlsx |
 Then I make repayment and verified the following tabs
     |4906-DISB-1st&2ndREPAYMENT-Writeoff.xlsx|Input|Repay1|Repay2|
 Then I "Writeoff" and verified the following tabs
     |4906-DISB-1st&2ndREPAYMENT-Writeoff.xlsx|Modify Transaction|Summary|Repayment Schedule|Transactions|

@RunnerClass2
Scenario: 4907-DISB-1st&2ndRepaymentWithMoreAmount-Writeoff  
 Given I setup the clients
 When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
 When I set up the new create loan from "NewLoanInput" sheet
	 | 4907-DISB-1st&2ndRepaymentWithMoreAmount-Writeoff.xlsx |
 Then I make repayment and verified the following tabs
     |4907-DISB-1st&2ndRepaymentWithMoreAmount-Writeoff.xlsx|Input|Repay1|Summary|Repayment Schedule|Transactions|
 Then I "Writeoff" and verified the following tabs
     |4907-DISB-1st&2ndRepaymentWithMoreAmount-Writeoff.xlsx|Modify Transaction|
 Then i validate and Verify from "Output" sheet
     |4907-DISB-1st&2ndRepaymentWithMoreAmount-Writeoff.xlsx|

@RunnerClass2	 
Scenario: 4908-DISB-1st&2ndRepaymentWithMoreAmount-Preclose  
 Given I setup the clients
 When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
 When I set up the new create loan from "NewLoanInput" sheet
	 | 4908-DISB-1st&2ndRepaymentWithMoreAmount-Preclose.xlsx |
 Then I make repayment and verified the following tabs
     |4908-DISB-1st&2ndRepaymentWithMoreAmount-Preclose.xlsx|Input|Repay1|
 And I modify New Account from "Disbures2tranche" sheet
	 | 4908-DISB-1st&2ndRepaymentWithMoreAmount-Preclose.xlsx |
 Then I "Writeoff" and verified the following tabs
     |4908-DISB-1st&2ndRepaymentWithMoreAmount-Preclose.xlsx|Modify Transaction|Summary|Repayment Schedule|Transactions|
 Then I "undo transaction from transaction tab" and verified the following tabs
	 |4908-DISB-1st&2ndRepaymentWithMoreAmount-Preclose.xlsx|Modify Transaction1|
 Then i validate and Verify from "error" sheet
	 |4908-DISB-1st&2ndRepaymentWithMoreAmount-Preclose.xlsx|

@RunnerClass2	 
Scenario: 4909-DISB-WaiveInterest-Writeoff  
 Given I setup the clients
 When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
 When I set up the new create loan from "NewLoanInput" sheet
	 | 4909-DISB-WaiveInterest-Writeoff.xlsx |
 Then I "WaiveInterest&MakeReapyment" and verified the following tabs
     | 4909-DISB-WaiveInterest-makerepaymemt.xlsx|Modify Transaction|Modify Transaction1|Summary|Repayment Schedule|Transactions|
 And I modify New Account from "UndoDisb" sheet
	 | 4909-DISB-WaiveInterest-Writeoff.xlsx |
 Then I "WaiveInterest&Writeoff" and verified the following tabs
     | 4909-DISB-WaiveInterest-Writeoff.xlsx|Modify Transaction|Modify Transaction1|Summary|Repayment Schedule|Transactions|

@RunnerClass2
Scenario: 4910-DISB-MakeRepayment-WaiveInterest-Preclose  
 Given I setup the clients
 When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
 When I set up the new create loan from "NewLoanInput" sheet
	 | 4910-DISB-MakeRepayment-WaiveInterest-Preclose.xlsx |
 Then I "WaiveInterest&MakeReapyment" and verified the following tabs
     | 4910-DISB-MakeRepayment-WaiveInterest-Preclose.xlsx|Modify Transaction|Modify Transaction1|Modify Transaction2|Modify Transaction4|Modify Transaction3|Summary|Repayment Schedule|Transactions|

@RunnerClass2
Scenario: 4911-DISB-MakeREPAYMENT-Disb2ndTranche-ExactLateEarlyDate-LessMoreExactAmt-waiveInterest
 Given I setup the clients
 When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
 When I set up the new create loan from "NewLoanInput" sheet
	 | 4911-DISB-MakeREPAYMENT-Disb2ndTranche-ExactLateEarlyDate-LessMoreExactAmt-waiveInterest.xlsx |
 Then I "MakeReapyment&WaiveInterest" and verified the following tabs
     |4911-DISB-MakeREPAYMENT-Disb2ndTranche-ExactDate-ExactAmt-waiveInterest.xlsx|Modify Transaction1|Modify Transaction2|Modify Transaction3|Modify Transaction4|Modify Transaction|Summary|Repayment Schedule|Transactions|
 And I modify New Account from "UndoDisb" sheet
	 | 4911-DISB-MakeREPAYMENT-Disb2ndTranche-ExactLateEarlyDate-LessMoreExactAmt-waiveInterest.xlsx |
 Then I "MakeReapyment&WaiveInterest" and verified the following tabs
     |4911-DISB-MakeREPAYMENT-Disb2ndTranche-ExactDate-LessAmt-waiveInterest.xlsx|Modify Transaction1|Modify Transaction2|Modify Transaction3|Modify Transaction4|Modify Transaction|Summary|Repayment Schedule|Transactions|
 And I modify New Account from "UndoDisb" sheet
	 | 4911-DISB-MakeREPAYMENT-Disb2ndTranche-ExactLateEarlyDate-LessMoreExactAmt-waiveInterest.xlsx |
 Then I "MakeReapyment&WaiveInterest" and verified the following tabs
     |4911-DISB-MakeREPAYMENT-Disb2ndTranche-ExactDate-MoreAmt-waiveInterest.xlsx|Modify Transaction1|Modify Transaction2|Modify Transaction3|Modify Transaction4|Modify Transaction|Summary|Repayment Schedule|Transactions|

@RunnerClass2	 
Scenario: 4912-DISB2ndTranche-1st&2ndRepaymentWithMoreAmount-Writeoff
 Given I setup the clients
 When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
 When I set up the new create loan from "NewLoanInput" sheet
	 | 4912-DISB2ndTranche-1st&2ndRepaymentWithMoreAmount-Writeoff.xlsx |
 Then I "MakeReapyment&WaiveInterest&writeoff" and verified the following tabs
     | 4912-DISB2ndTranche-1st&2ndRepaymentWithMoreAmount-Writeoff.xlsx|Modify Transaction1|Modify Transaction2|Modify Transaction3|Modify Transaction|Modify Transaction4|Modify Transaction5|Summary|Repayment Schedule|Transactions|

@RunnerClass2	 
 Scenario: 4913-DISB2ndTranche-1st&2ndRepaymentWithMoreAmount-Preclose
 Given I setup the clients
 When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
 When I set up the new create loan from "NewLoanInput" sheet
	 | 4913-DISB2ndTranche-1st&2ndRepaymentWithMoreAmount-Preclose.xlsx |
 Then I "MakeReapyment&WaiveInterest&Preclose" and verified the following tabs
     | 4913-DISB2ndTranche-1st&2ndRepaymentWithMoreAmount-Preclose.xlsx|Modify Transaction1|Modify Transaction2|Modify Transaction3|Modify Transaction|Modify Transaction4|Modify Transaction5|Summary|Repayment Schedule|
 Then I "undo transaction from transaction tab" and verified the following tabs
	 |4908-DISB-1st&2ndRepaymentWithMoreAmount-Preclose.xlsx|Modify Transaction1|
 Then i validate and Verify from "error" sheet
	 |4908-DISB-1st&2ndRepaymentWithMoreAmount-Preclose.xlsx|
 
 @RunnerClass2
 Scenario: 4914-DISB2ndTranche-1st&2ndRepaymentWithMoreAmount-Undo
 Given I setup the clients
 When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
 When I set up the new create loan from "NewLoanInput" sheet
	 | 4914-DISB2ndTranche-1st&2ndRepaymentWithMoreAmount-Undo.xlsx |
 Then I "MakeReapyment&WaiveInterest&writeoff" and verified the following tabs
     | 4914-DISB2ndTranche-1st&2ndRepaymentWithMoreAmount-Undo.xlsx|Modify Transaction1|Modify Transaction2|Modify Transaction3|Modify Transaction|Modify Transaction4|Summary|Repayment Schedule|Transactions|
 Then I "undo transaction from transaction tab" and verified the following tabs
	 | 4914-DISB2ndTranche-1st&2ndRepaymentWithMoreAmount-Undo1stRepayment.xlsx|Modify Transaction|Summary|Repayment Schedule|
 Then I "undo transaction from transaction tab" and verified the following tabs
	 | 4914-DISB2ndTranche-1st&2ndRepaymentWithMoreAmount-Undo2ndRepayment.xlsx|Modify Transaction|Summary|Repayment Schedule|
 Then I "undo transaction from transaction tab" and verified the following tabs
	 | 4914-DISB2ndTranche-1st&2ndRepaymentWithMoreAmount-Undo3rdRepayment.xlsx|Modify Transaction|Summary|Repayment Schedule|
 
 @RunnerClass2
Scenario: 4915-CollectInterestUpfrontForSingleTranche
  Given I setup the product loan "Setup"
	 | Productloannavigation.xlsx |
  Then I entered the values into product from "ProductLoanInput" Sheet
	 | 4915-CollectInterestUpfrontForSingleTranche.xlsx|
  Given I setup the clients
  When I entered the values into client from "Input" sheet
	 |Createclient.xlsx|
  When I set up the new create loan from "NewLoanInput" sheet
	 | 4915-CollectInterestUpfrontForSingleTranche.xlsx |
  Then I verified the following Tabs details successfully
     | 4915-CollectInterestUpfrontForSingleTranche.xlsx|Summary|Repayment Schedule|Transactions|
  And I "UndoDisburse" and verified the following tabs
	 | 4915-CollectInterestUpfrontForSingleTranche-RepaymentDateOnDisbDate.xlsx |Modify Transaction|Summary|Repayment Schedule|Transactions|
  And I "UndoDisburse" and verified the following tabs
	 | 4915-CollectInterestUpfrontForSingleTranche&RepaymentDateOnDisbDate.xlsx |Modify Transaction|Summary|Repayment Schedule|Transactions|
  And I "UndoDisburse" and verified the following tabs
	 | 4915-CollectInterestUpfrontForSingleTranche-DiscountOnDisb.xlsx |Modify Transaction|Summary|Repayment Schedule|Transactions|
  And I "UndoDisburse" and verified the following tabs
	 | 4915-CollectInterestUpfrontForSingleTranche-DiscountOnDisb&RepaymentDateOnDisbDate.xlsx |Modify Transaction|Summary|Repayment Schedule|Transactions|
  And I "UndoDisburse" and verified the following tabs
	 | 4915-CollectInterestUpfrontForSingleTranche-DiscountOnDisb&CollectInterestUpfront.xlsx |Modify Transaction|Summary|Repayment Schedule|Transactions|
  And I "UndoDisburse" and verified the following tabs
	 | 4915-CollectInterestUpfrontForSingleTranche&DiscountOnDisb&CollectInterestUpfront.xlsx |Modify Transaction|Summary|Repayment Schedule|Transactions|

@RunnerClass2
Scenario: 4916-CollectInterestUpfrontForMultiTranche
  
  Given I setup the clients
  When I entered the values into client from "Input" sheet
	 |Createclient.xlsx|
  When I set up the new create loan from "NewLoanInput" sheet
	 | 4916-CollectInterestUpfrontForMultiTranche.xlsx |
  Then I verified the following Tabs details successfully
     | 4916-CollectInterestUpfrontForMultiTranche.xlsx|Summary|Repayment Schedule|Transactions|
  And I "Disburse2ndTranche" and verified the following tabs
	 | 4916-CollectInterestUpfrontForMultiTranche-Disburse2ndTranche.xlsx |Modify Transaction|Summary|Repayment Schedule|Transactions|
  And I "UndoDisburse" and verified the following tabs
	 | 4916-CollectInterestUpfrontForMultiTranche-RepaymentDateOnDisbDate.xlsx |Modify Transaction|Summary|Repayment Schedule|Transactions|
  And I "Disburse2ndTranche" and verified the following tabs
	 | 4916-CollectInterestUpfrontForMultiTranche-RepaymentDateOnDisbDate-Disburse2ndTranche.xlsx |Modify Transaction|Summary|Repayment Schedule|Transactions|
  And I "UndoDisburse" and verified the following tabs
	 | 4916-CollectInterestUpfrontForMultiTranche&RepaymentDateOnDisbDate.xlsx |Modify Transaction|Summary|Repayment Schedule|Transactions|
  And I "Disburse2ndTranche" and verified the following tabs
	 | 4916-CollectInterestUpfrontForMultiTranche&RepaymentDateOnDisbDate-Disburse2ndTranche.xlsx |Modify Transaction|Summary|Repayment Schedule|Transactions|
  And I "UndoDisburse" and verified the following tabs
	 | 4916-CollectInterestUpfrontForMultiTranche-DiscountOnDisb.xlsx |Modify Transaction|Summary|Repayment Schedule|Transactions|
  And I "Disburse2ndTranche" and verified the following tabs
	 | 4916-CollectInterestUpfrontForMultiTranche-DiscountOnDisb-Disburse2ndTranche.xlsx |Modify Transaction|Summary|Repayment Schedule|Transactions|
  And I "UndoDisburse" and verified the following tabs
	 | 4916-CollectInterestUpfrontForMultiTranche-DiscountOnDisb&RepaymentDateOnDisbDate.xlsx |Modify Transaction|Summary|Repayment Schedule|Transactions|
  And I "Disburse2ndTranche" and verified the following tabs
	 | 4916-CollectInterestUpfrontForMultiTranche-DiscountOnDisb&RepaymentDateOnDisbDate-Disburse2ndTranche.xlsx |Modify Transaction|Summary|Repayment Schedule|Transactions|
  And I "UndoDisburse" and verified the following tabs
	 | 4916-CollectInterestUpfrontForMultiTranche-DiscountOnDisb&CollectInterestUpfront.xlsx |Modify Transaction|Summary|Repayment Schedule|Transactions|
  And I "Disburse2ndTranche" and verified the following tabs
	 | 4916-CollectInterestUpfrontForMultiTranche-DiscountOnDisb&CollectInterestUpfront-Disburse2ndTranche.xlsx |Modify Transaction|Summary|Repayment Schedule|Transactions|
  And I "UndoDisburse" and verified the following tabs
	 | 4916-CollectInterestUpfrontForMultiTranche&DiscountOnDisb&CollectInterestUpfront.xlsx |Modify Transaction|Summary|Repayment Schedule|Transactions|
  And I "Disburse2ndTranche" and verified the following tabs
	 | 4916-CollectInterestUpfrontForMultiTranche&DiscountOnDisb&CollectInterestUpfront-Disburse2ndTranche.xlsx |Modify Transaction|Summary|Repayment Schedule|Transactions|

@RunnerClass2
Scenario: 4917-DisbursementAfterMaturityDate
  Given I setup the product loan "Setup"
	 | Productloannavigation.xlsx |
  Then I entered the values into product from "ProductLoanInput" Sheet
	 | 4917-DisbursementAfterMaturityDate.xlsx|
  Given I setup the clients
  When I entered the values into client from "Input" sheet
	 |Createclient.xlsx|
  When I set up the new create loan from "NewLoanInput" sheet
	 | 4917-DisbursementAfterMaturityDate.xlsx |
  Then I "MakeReapymentTillMaturityDate" and verified the following tabs
	 | 4917-DisbursementAfterMaturityDate.xlsx |Modify Transaction|Modify Transaction1|Modify Transaction2|Modify Transaction3|Modify Transaction4|Modify Transaction5|Summary|Repayment Schedule|Transactions|
  And I "Disburse2ndTranche" and verified the following tabs
	 | 4917-DisbursementAfterMaturityDate-Disburse2ndTranche.xlsx |Modify Transaction|Summary|Repayment Schedule|Transactions|

@RunnerClass2
Scenario: 4918-DisbursementAfterMaturityDate-DiscountonDisbursal
  Given I setup the clients
  When I entered the values into client from "Input" sheet
	 |Createclient.xlsx|
  When I set up the new create loan from "NewLoanInput" sheet
	 | 4918-DisbursementAfterMaturityDate-DiscountonDisbursal.xlsx |
  Then I "MakeReapymentTillMaturityDate" and verified the following tabs
	 | 4918-DisbursementAfterMaturityDate-DiscountonDisbursal.xlsx |Modify Transaction|Modify Transaction1|Modify Transaction2|Modify Transaction3|Modify Transaction4|Modify Transaction5|Summary|Repayment Schedule|Transactions|
  And I "Disburse2ndTranche" and verified the following tabs
	 | 4918-DisbursementAfterMaturityDate-DiscountonDisbursal-Disburse2ndTranche.xlsx |Modify Transaction|Summary|Repayment Schedule|Transactions|
  
@RunnerClass2  
Scenario: 4919-DisbursementAfterMaturityDate-CollectUpfrontInterest
  Given I setup the clients
  When I entered the values into client from "Input" sheet
	 |Createclient.xlsx|
  When I set up the new create loan from "NewLoanInput" sheet
	 | 4919-DisbursementAfterMaturityDate-CollectUpfrontInterest.xlsx |
  Then I "MakeReapymentTillMaturityDate" and verified the following tabs
	 | 4919-DisbursementAfterMaturityDate-CollectUpfrontInterest.xlsx |Modify Transaction|Modify Transaction1|Modify Transaction2|Modify Transaction3|Modify Transaction4|Modify Transaction5|Summary|Repayment Schedule|Transactions|
  And I "Disburse2ndTranche" and verified the following tabs
	 | 4919-DisbursementAfterMaturityDate-CollectUpfrontInterest-Disburse2ndTranche.xlsx |Modify Transaction|Summary|Repayment Schedule|Transactions|
  Then I "MakeReapyment" and verified the following tabs
	 | 4919-DisbursementAfterMaturityDate-CollectUpfrontInterest-MakeRepayment.xlsx |Modify Transaction|Summary|Repayment Schedule|

@RunnerClass2  
Scenario: 4920-DisbursementAfterMaturityDate-FirstRepaymentOnDisbursalDate
  Given I setup the clients
  When I entered the values into client from "Input" sheet
	 |Createclient.xlsx|
  When I set up the new create loan from "NewLoanInput" sheet
	 | 4920-DisbursementAfterMaturityDate-FirstRepaymentOnDisbursalDate.xlsx |
  Then I "MakeReapymentTillMaturityDate" and verified the following tabs
	 | 4920-DisbursementAfterMaturityDate-FirstRepaymentOnDisbursalDate.xlsx |Modify Transaction|Modify Transaction1|Modify Transaction2|Modify Transaction3|Modify Transaction4|Summary|Repayment Schedule|Transactions|
  And I "Disburse2ndTranche" and verified the following tabs
	 | 4920-DisbursementAfterMaturityDate-FirstRepaymentOnDisbursalDate-Disburse2ndTranche.xlsx |Modify Transaction|Summary|Repayment Schedule|Transactions|
  Then I "MakeReapyment" and verified the following tabs
	 | 4920-DisbursementAfterMaturityDate-FirstRepaymentOnDisbursalDate-MakeRepayment.xlsx |Modify Transaction|Summary|Repayment Schedule|Transactions|

@RunnerClass2
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
  
 @RunnerClass2
 Scenario: 4922-EI-DB-SAR-PartialPeriod-InitialBrokenPeriod-AddTo1stInstallment
  Given I setup the clients
  When I entered the values into client from "Input" sheet
	 |Createclient.xlsx|
  When I set up the new create loan from "NewLoanInput" sheet
	 | 4922-EI-DB-SAR-PartialPeriod-InitialBrokenPeriod-AddTo1stInstallment.xlsx |
  Then I verified the following Tabs details successfully
	 | 4922-EI-DB-SAR-PartialPeriod-InitialBrokenPeriod-AddTo1stInstallment.xlsx |Summary|Repayment Schedule|Transactions|
  And I "MakeRepayment" and verified the following tabs
	 | 4922-EI-DB-SAR-PartialPeriod-InitialBrokenPeriod-AddTo1stInstallment-1stRepayment.xlsx |Modify Transaction|Summary|Repayment Schedule|Transactions|
  Then I "UndoRepayment" and verified the following tabs
	 | 4922-EI-DB-SAR-PartialPeriod-InitialBrokenPeriod-AddTo1stInstallment-Undo1stRepayment.xlsx |Modify Transaction|Summary|Repayment Schedule|
  Then I "AgainMakeRepayment" and verified the following tabs
	 | 4922-EI-DB-SAR-PartialPeriod-InitialBrokenPeriod-AddTo1stInstallment-Again1stRepayment.xlsx |Modify Transaction|Summary|Repayment Schedule|Transactions|
  Then I "MakeRepayment" and verified the following tabs
	 | 4922-EI-DB-SAR-PartialPeriod-InitialBrokenPeriod-AddTo1stInstallment-MakeRepayment.xlsx |Modify Transaction|Modify Transaction1|Modify Transaction2|Modify Transaction3|Modify Transaction4|Modify Transaction5|Modify Transaction6|Modify Transaction7|Summary|Repayment Schedule|Transactions|

@RunnerClass2	 
Scenario: 4923-EI-DB-SAR-PartialPeriod-InitialBrokenPeriod-AddTo1stInstallment-writeoff
  Given I setup the clients
  When I entered the values into client from "Input" sheet
	 |Createclient.xlsx|
  When I set up the new create loan from "NewLoanInput" sheet
	 | 4923-EI-DB-SAR-PartialPeriod-InitialBrokenPeriod-AddTo1stInstallment-writeoff.xlsx |
  Then I "MakeRepayment" and verified the following tabs
	 | 4923-EI-DB-SAR-PartialPeriod-InitialBrokenPeriod-AddTo1stInstallment-writeoff.xlsx |Modify Transaction|Summary|Repayment Schedule|Transactions|
  And I "waive&writeoff" and verified the following tabs
	 | 4923-EI-DB-SAR-PartialPeriod-InitialBrokenPeriod-AddTo1stInstallment-writeoff-2.xlsx |Modify Transaction|Modify Transaction1|Summary|Repayment Schedule|Transactions|

@RunnerClass2
Scenario: 4924-EI-DB-SAR-PartialPeriod-InitialBrokenPeriod-AddTo1stInstallment-foreclose
  Given I setup the clients
  When I entered the values into client from "Input" sheet
	 |Createclient.xlsx|
  When I set up the new create loan from "NewLoanInput" sheet
	 | 4924-EI-DB-SAR-PartialPeriod-InitialBrokenPeriod-AddTo1stInstallment-foreclose.xlsx |
  Then I "MakeRepayment&waive&foreclose"" and verified the following tabs
	 | 4924-EI-DB-SAR-PartialPeriod-InitialBrokenPeriod-AddTo1stInstallment-foreclose.xlsx |Modify Transaction|Modify Transaction1|Modify Transaction2|Summary|Repayment Schedule|Transactions|

@RunnerClass2
Scenario: 4925-EI-DB-SAR-PartialPeriod-InitialBrokenPeriod-PostInterest
  Given I setup the clients
  When I entered the values into client from "Input" sheet
	 |Createclient.xlsx|
  When I set up the new create loan from "NewLoanInput" sheet
	 | 4925-EI-DB-SAR-PartialPeriod-InitialBrokenPeriod-PostInterest.xlsx |
  And I "MakeRepayment" and verified the following tabs
	 | 4925-EI-DB-SAR-PartialPeriod-InitialBrokenPeriod-PostInterest.xlsx |Modify Transaction|Summary|Repayment Schedule|Transactions|
  Then I "UndoRepayment" and verified the following tabs
	 | 4925-EI-DB-SAR-PartialPeriod-InitialBrokenPeriod-PostInterest-Undo1stRepayment.xlsx |Modify Transaction|Summary|Repayment Schedule|
  Then I "MakeRepayment" and verified the following tabs
	 | 4925-EI-DB-SAR-PartialPeriod-InitialBrokenPeriod-PostInterest-MakeRepayment.xlsx |Modify Transaction|Modify Transaction1|Modify Transaction2|Modify Transaction3|Modify Transaction4|Modify Transaction5|Modify Transaction6|Modify Transaction7|Summary|Repayment Schedule|Transactions|

@RunnerClass2
Scenario: 4926-FLAT-DB-SAR-PartialPeriod-InitialBrokenPeriod-PostInterest
  Given I setup the clients
  When I entered the values into client from "Input" sheet
	 |Createclient.xlsx|
  When I set up the new create loan from "NewLoanInput" sheet
	 | 4926-FLAT-DB-SAR-PartialPeriod-InitialBrokenPeriod-PostInterest.xlsx |
  And I "MakeRepayment" and verified the following tabs
	 | 4926-FLAT-DB-SAR-PartialPeriod-InitialBrokenPeriod-PostInterest.xlsx |Modify Transaction|Summary|Repayment Schedule|Transactions|
  Then I "UndoRepayment" and verified the following tabs
	 | 4926-FLAT-DB-SAR-PartialPeriod-InitialBrokenPeriod-PostInterest-Undo1stRepayment.xlsx |Modify Transaction|Summary|Repayment Schedule|
  Then I "MakeRepayment" and verified the following tabs
	 | 4926-FLAT-DB-SAR-PartialPeriod-InitialBrokenPeriod-PostInterest-MakeRepayment.xlsx |Modify Transaction|Modify Transaction1|Modify Transaction2|Modify Transaction3|Modify Transaction4|Modify Transaction5|Modify Transaction6|Modify Transaction7|Summary|Repayment Schedule|Transactions|

#Scenario: 4927-FLAT-DB-SAR-PartialPeriod-InitialBrokenPeriod-AddTo1stInstallment
 # Given I setup the clients
 # When I entered the values into client from "Input" sheet
#	 |Createclient.xlsx|
 # When I set up the new create loan from "NewLoanInput" sheet
#	 | 4927-FLAT-DB-SAR-PartialPeriod-InitialBrokenPeriod-AddTo1stInstallment.xlsx |
  #And I "MakeRepayment" and verified the following tabs
#	 | 4927-FLAT-DB-SAR-PartialPeriod-InitialBrokenPeriod-AddTo1stInstallment.xlsx |Modify Transaction|Summary|Repayment Schedule|Transactions|
 # Then I "UndoRepayment" and verified the following tabs
#	 | 4927-FLAT-DB-SAR-PartialPeriod-InitialBrokenPeriod-AddTo1stInstallment-Undo1stRepayment.xlsx |Modify Transaction|Summary|Repayment Schedule|
#  Then I "MakeRepayment" and verified the following tabs
#	 | 4927-FLAT-DB-SAR-PartialPeriod-InitialBrokenPeriod-AddTo1stInstallment-MakeRepayment.xlsx |Modify Transaction|Modify Transaction1|Modify Transaction2|Modify Transaction3|Modify Transaction4|Modify Transaction5|Modify Transaction6|Modify Transaction7|Summary|Repayment Schedule|Transactions|
 
@RunnerClass2
Scenario: 4928-FLAT-DB-SAR-PartialPeriod-InitialBrokenPeriod-DistEqualyToAllInst
  Given I setup the clients
  When I entered the values into client from "Input" sheet
	 |Createclient.xlsx|
  When I set up the new create loan from "NewLoanInput" sheet
	 | 4928-FLAT-DB-SAR-PartialPeriod-InitialBrokenPeriod-DistEqualyToAllInst.xlsx |
  And I "MakeRepayment" and verified the following tabs
	 | 4928-FLAT-DB-SAR-PartialPeriod-InitialBrokenPeriod-DistEqualyToAllInst.xlsx |Modify Transaction|Summary|Repayment Schedule|Transactions|
  Then I "UndoRepayment" and verified the following tabs
	 | 4928-FLAT-DB-SAR-PartialPeriod-InitialBrokenPeriod-DistEqualyToAllInst-Undo1stRepayment.xlsx |Modify Transaction|Summary|Repayment Schedule|
  Then I "MakeRepayment" and verified the following tabs
	 | 4928-FLAT-DB-SAR-PartialPeriod-InitialBrokenPeriod-DistEqualyToAllInst-MakeRepayment.xlsx |Modify Transaction|Modify Transaction1|Modify Transaction2|Modify Transaction3|Modify Transaction4|Modify Transaction5|Modify Transaction6|Modify Transaction7|Summary|Repayment Schedule|Transactions|
 
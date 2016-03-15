Feature:RBI1

Background:
	Given I navigate to mifos
	And I login into mifos site using "Login" excel sheet
		| Login.xlsx  |
	Then I should see logged in successfully


@scenario21-2445-RBI-EPP-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-DATE-VAR-INST
	Scenario: 2445-RBI-EPP-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-DATE-VAR-INST  
 Given I setup the product loan "Setup"
	| Productloannavigation.xlsx |
 Then I entered the values into product loan from "ProductLoanInput" Sheet
	|2445-RBI-EPP-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-DATE-VAR-INST-Loanproduct.xlsx|
 Given I setup the clients 
 Then I entered the values into client from "Input" sheet
	|Createclient.xlsx|
 Then I should see client created successfully from "Output" sheet
	|Createclient.xlsx|
 When I set up the new create loan from "NewLoanInput" sheet
	| 2445-RBI-EPP-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-DATE-VAR-INST-Newcreateloan1.xlsx|
 Then I "Edit Date " In Edit Repayment Schedule page
    |2445-RBI-EPP-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-DATE-VAR-INST-Newcreateloan1.xlsx|Edit Repayment Schedule|
 Then I verified the "Summary" details successfully 
	|2445-RBI-EPP-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-DATE-VAR-INST-Newcreateloan1.xlsx|
 And I verified the "Repayment Schedule" details successfully 
    |2445-RBI-EPP-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-DATE-VAR-INST-Newcreateloan1.xlsx| 			
 Then I make repayment and read the transaction Id
 	|2445-RBI-EPP-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-DATE-VAR-INST-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|

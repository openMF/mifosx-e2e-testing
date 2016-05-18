Feature:RBI

Background:
	Given I navigate to mifos
	And I login into mifos site using "Login" excel sheet
		|Login.xlsx|
	Then I should see logged in successfully  

@scenario180-2604-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-SHORT-PATTERN-INCREASE-MONTHBY-2-VAR-INST
 Scenario: 2604-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-SHORT-PATTERN-INCREASE-MONTHBY-2-VAR-INST  
 
 Given I setup the clients 
 Then I entered the values into client from "Input" sheet
	|Createclient.xlsx|
 Then I should see client created successfully from "Output" sheet
	|Createclient.xlsx|
 When I set up the new create loan from "NewLoanInput" sheet
	| 2604-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-SHORT-PATTERN-INCREASE-MONTHBY-2-VAR-INST-Newcreateloan1.xlsx|
 Then I "Edit Date " In Edit Repayment Schedule page
    |2604-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-2-SHORT-PATTERN-INCREASE-MONTHBY-2-VAR-INST-Newcreateloan1.xlsx|Edit Repayment Schedule|

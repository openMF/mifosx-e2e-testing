package com.mifos.tests;

import org.junit.runner.RunWith;
import cucumber.api.junit.Cucumber;

@RunWith(Cucumber.class)
@Cucumber.Options(format = { "pretty", "html:target/Mifos/cucumber-html-report",
		"json-pretty:target/Mifos/cucumber-json-report.json" },
//		features = {"src/test/resources/features"},
		features = { "src/test/resources/features/LoanMIFOS.feature" },
		/*tags = {"~@scenario10-Loan-678-MS-EPP-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-EarlyRePayment",
		"~@scenario12-Loan-680-MS-EPP-DB-DL-REC-NON-RNI-CTRFD-DL-MD-TR-1-EarlyRePayment",
		"~@scenario14-Loan-726-MS-EPP-DB-SAR-REC-NON-RNI-CTPD-DL-MD-TR-1-EarlyRePayment",
		"~@scenario16-Loan-728-MS-EPP-DB-SAR-REC-NON-RNI-CTRFD-DL-MD-TR-1-EarlyRePayment"},*/
		glue = { "com.mifos.steps" })

public class LoanMifosTest {

}

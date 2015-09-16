package com.mifos.tests;

import org.junit.runner.RunWith;
import cucumber.api.junit.Cucumber;

@RunWith(Cucumber.class)
@Cucumber.Options(format = { "pretty", "html:target/Rbi/cucumber-html-report",
		"json-pretty:target/Rbi/cucumber-json-report.json" },
//		features = {"src/test/resources/features"},
		features = { "src/test/resources/features/LoanRBI.feature" },
//		tags = {"@scenario1-Loan-389-RBI-EI-DB-DL-REC-NON-RNI-CTPD-SAR-MD-TR-1-EarlyRePayment"},
		glue = { "com.mifos.steps" })

public class LoanRbiTest {

}

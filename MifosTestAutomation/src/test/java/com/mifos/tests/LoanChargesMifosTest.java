package com.mifos.tests;

import org.junit.runner.RunWith;
import cucumber.api.junit.Cucumber;

@RunWith(Cucumber.class)
@Cucumber.Options(format = { "pretty",
		"html:target/LoanChargesMifos/cucumber-html-report",
		"json-pretty:target/LoanChargesMifos/cucumber-json-report.json" },
		features = { "src/test/resources/features/part2.feature" },
		tags = {"@scenario1-3506-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-2-ONTIME-DISBURSE-FEE-%APR-AMT-AddThirdTranche"}, 
		glue = { "com.mifos.steps" })

public class LoanChargesMifosTest {

}
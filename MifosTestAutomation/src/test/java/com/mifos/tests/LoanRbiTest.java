package com.mifos.tests;

import org.junit.runner.RunWith;
import cucumber.api.junit.Cucumber;

@RunWith(Cucumber.class)
@Cucumber.Options(format = { "pretty", "html:target/LoanRBI/cucumber-html-report",
		"json-pretty:target/LoanRBI/cucumber-json-report.json" },
		features = { "src/test/resources/features/test.feature" },
		tags = { "@scenario25-2350-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-ONTIME-BLR" },
		glue = { "com.mifos.steps" })

public class LoanRbiTest {

}

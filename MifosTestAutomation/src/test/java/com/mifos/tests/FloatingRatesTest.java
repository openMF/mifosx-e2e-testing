package com.mifos.tests;

import org.junit.runner.RunWith;
import cucumber.api.junit.Cucumber;

@RunWith(Cucumber.class)
@Cucumber.Options(format = { "pretty", "html:target/LoanFloatingRates/cucumber-html-report",
		"json-pretty:target/LoanFloatingRates/cucumber-json-report.json" },
		features = { "src/test/resources/features/test.feature" },
//		tags = {"@4253-RBI-EI-DB-SAR-REC-RNI-FEE+INTEREST-FFConMONTHLYonLASTSUN-FIFC-1-FFROP-DL-FIFR-1-MD-TR-1-ONT-PER"},
		glue = { "com.mifos.steps" })

public class FloatingRatesTest {

}

package com.mifos.tests;

import org.junit.runner.RunWith;
import cucumber.api.junit.Cucumber;

@RunWith(Cucumber.class)
@Cucumber.Options(format = { "pretty", "html:target/JLGLoan/cucumber-html-report",
		"json-pretty:target/JLGLoan/cucumber-json-report.json" },
		features = { "src/test/resources/features/JLGLoan.feature" },
		tags ={"@4210-RBI-EI-DB-DL-REC-CTRFD-RNI-INT-FFConMONTHLYonDAY25-FIFC-1-FFROP-DAILY-FIFR-1-MD-TR-1-ONTIME-PERIODIC"},
		glue = { "com.mifos.steps" })

public class JLGLoanTest {

}

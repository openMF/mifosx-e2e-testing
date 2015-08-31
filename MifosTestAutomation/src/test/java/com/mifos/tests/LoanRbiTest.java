package com.mifos.tests;

import org.junit.runner.RunWith;
import cucumber.api.junit.Cucumber;

@RunWith(Cucumber.class)
@Cucumber.Options(format = { "pretty", "html:target/Rbi/cucumber-html-report",
		"json-pretty:target/Rbi/cucumber-json-report.json" },
	//	features = {"src/test/resources/features"},
		features = { "src/test/resources/features/LoanRBI.feature" },
		glue = { "com.mifos.steps" })

public class LoanRbiTest {

}

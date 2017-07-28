package com.mifos.tests;

import org.junit.runner.RunWith;
import cucumber.api.junit.Cucumber;

@RunWith(Cucumber.class)
@Cucumber.Options(format = { "pretty", "html:target/LoanOtherScenarios/cucumber-html-report",
		"json-pretty:target/LoanOtherScenarios/cucumber-json-report.json" },
		features = { "src/test/resources/features/LoanOtherScenarios.feature" },
		glue = { "com.mifos.steps" })

public class LoanOtheresTest {

}

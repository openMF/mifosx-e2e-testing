package com.mifos.tests;

import org.junit.runner.RunWith;
import cucumber.api.junit.Cucumber;

@RunWith(Cucumber.class)
@Cucumber.Options(format = { "pretty", "html:target/Report/cucumber-html-report",
		"json-pretty:target/Report/cucumber-json-report.json" },
	//	features = {"src/test/resources/features"},
		features = { "src/test/resources/features/Login.feature" },
		glue = { "com.mifos.steps" })

public class loanTestRunnerTest {

}

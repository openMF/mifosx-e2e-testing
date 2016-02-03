package com.mifos.tests;

import org.junit.runner.RunWith;
import cucumber.api.junit.Cucumber;

@RunWith(Cucumber.class)
@Cucumber.Options(format = { "pretty",
		"html:target/LoanChargesRbi/cucumber-html-report",
		"json-pretty:target/LoanChargesRbi/cucumber-json-report.json" },
		features = { "src/test/resources/features/ChargesRBI.feature" },
		glue = { "com.mifos.steps" })
public class LoanChargesRbiTest {

}
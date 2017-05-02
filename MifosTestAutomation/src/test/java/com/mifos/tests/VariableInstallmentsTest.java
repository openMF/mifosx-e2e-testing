package com.mifos.tests;

import org.junit.runner.RunWith;
import cucumber.api.junit.Cucumber;

@RunWith(Cucumber.class)
@Cucumber.Options(format = { "pretty", "html:target/VariableInstallment/cucumber-html-report",
		"json-pretty:target/VariableInstallment/cucumber-json-report.json" },
		features = { "src/test/resources/features/VariableInstallments.feature" },
		glue = { "com.mifos.steps" })

public class VariableInstallmentsTest {

}

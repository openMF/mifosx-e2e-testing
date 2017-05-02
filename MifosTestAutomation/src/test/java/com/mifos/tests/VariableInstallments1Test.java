package com.mifos.tests;

import org.junit.runner.RunWith;
import cucumber.api.junit.Cucumber;

@RunWith(Cucumber.class)
@Cucumber.Options(format = { "pretty", "html:target/VariableInstallment1/cucumber-html-report",
		"json-pretty:target/VariableInstallment1/cucumber-json-report.json" },
		features = { "src/test/resources/features/VariableInstallments1.feature" },
		glue = { "com.mifos.steps" })
public class VariableInstallments1Test {

}

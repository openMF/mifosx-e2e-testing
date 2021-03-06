package com.mifos.tests;

import org.junit.runner.RunWith;
import cucumber.api.junit.Cucumber;

@RunWith(Cucumber.class)
@Cucumber.Options(format = { "pretty", "html:target/VariableInstallment1/cucumber-html-report",
		"json-pretty:target/VariableInstallment1/cucumber-json-report.json" },
		features = { "src/test/resources/features/" },
		glue = { "com.mifos.steps" },
		tags= {"@RunnerClass4" })
public class VariableInstallments1Test {

}

package com.mifos.tests;

import org.junit.runner.RunWith;
import cucumber.api.junit.Cucumber;

@RunWith(Cucumber.class)
@Cucumber.Options(format = { "pretty", "html:target/JLGLoan/cucumber-html-report",
		"json-pretty:target//JLGLoan/cucumber-json-report.json" },
		features = { "src/test/resources/features/JLGLoan.feature" },
		glue = { "com.mifos.steps" })

public class JlgTest {

}

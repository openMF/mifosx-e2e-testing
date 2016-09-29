package com.mifos.tests;

import org.junit.runner.RunWith;
import cucumber.api.junit.Cucumber;

@RunWith(Cucumber.class)
@Cucumber.Options(format = { "pretty", "html:target/WorkingDays/cucumber-html-report",
		"json-pretty:target/WorkingDays/cucumber-json-report.json" },
		features = { "src/test/resources/features/WorkingDays.feature" },
		glue = { "com.mifos.steps" })

public class WorkingDaysTest {

}

package com.mifos.tests;

import org.junit.runner.RunWith;
import cucumber.api.junit.Cucumber;

@RunWith(Cucumber.class)
@Cucumber.Options(format = { "pretty", "html:target/Centers/cucumber-html-report",
		"json-pretty:target/Centers/cucumber-json-report.json" },
        features = { "src/test/resources/features/Centers.feature" },
		glue = { "com.mifos.steps" })

public class CenterTest {

}

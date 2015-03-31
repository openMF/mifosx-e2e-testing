package com.mifos.tests;

import org.junit.runner.RunWith;
import cucumber.api.junit.Cucumber;

@RunWith(Cucumber.class)
@Cucumber.Options(format = { "pretty",
		"html:target/LoanChargesMifos/cucumber-html-report",
		"json-pretty:target/LoanChargesMifos/cucumber-json-report.json" },
		features = { "src/test/resources/features/ChargesMIFOS.feature" },
		glue = { "com.mifos.steps" })

public class LoanChargesMifosTest {

}
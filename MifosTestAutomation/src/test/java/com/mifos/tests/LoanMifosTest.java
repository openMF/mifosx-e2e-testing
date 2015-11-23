package com.mifos.tests;

import org.junit.runner.RunWith;
import cucumber.api.junit.Cucumber;

@RunWith(Cucumber.class)
@Cucumber.Options(format = { "pretty", "html:target/Mifos/cucumber-html-report",
		"json-pretty:target/Mifos/cucumber-json-report.json" },
		features = { "src/test/resources/features/LoanMIFOS.feature" },
//		tags = {"~@loanproductcreation"},
		glue = { "com.mifos.steps" })

public class LoanMifosTest {

}

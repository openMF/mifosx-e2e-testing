package com.mifos.tests;

import org.junit.runner.RunWith;
import cucumber.api.junit.Cucumber;

@RunWith(Cucumber.class)
@Cucumber.Options(format = { "pretty", "html:target/LoanRBI/cucumber-html-report",
		"json-pretty:target/LoanRBI/cucumber-json-report.json" },
<<<<<<< HEAD
		features = { "src/test/resources/features/LoanRBI.feature" },
=======
		features = { "src/test/resources/features/test.feature" },
		tags = { "@scenario25-2350-RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-ONTIME-BLR" },
>>>>>>> 10ecfb8927341c12eea6300df0a0a13d9fc358e2
		glue = { "com.mifos.steps" })

public class LoanRbiTest {

}

package com.mifos.tests;

import org.junit.runner.RunWith;
import cucumber.api.junit.Cucumber;

@RunWith(Cucumber.class)
@Cucumber.Options(format = { "pretty",
		"html:target/LoanCharges/cucumber-html-report",
		"json-pretty:target/LoanCharges/cucumber-json-report.json" },
// features = {"src/test/resources/features"},
features = { "src/test/resources/features/Charges.feature" },
tags = {
		"~@scenario11-3010-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-INSTALLMENT-FEE-%DIS-AMT-Regular-CASH",
		"~@scenario13-3012-RBI-EI-DB-DL-REC-NON-RNI-CTPD-DL-MD-TR-1-ONTIME-OVERDUE-FEE-%APR-AMT-Regular-CASH" }, 
glue = { "com.mifos.steps" })

public class LoanChargesTest {

}

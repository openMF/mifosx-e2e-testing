/**
 *
 */
package com.mifos.tests;
/**
 * @author salma
 *
 */

import org.junit.runner.RunWith;
import cucumber.api.junit.Cucumber;

@RunWith(Cucumber.class)
@Cucumber.Options(format = { "pretty", "html:target/cucumber-html-report",
		"json-pretty:target/cucumber-json-report.json" },  features = { "src/test/resources/features/Scenarios.feature" },glue = { "com.mifos.steps" })

public class BuildStepsTests {

}




$(document).ready(function() {var formatter = new CucumberHTML.DOMFormatter($('.cucumber-report'));formatter.uri("src\\test\\resources\\features\\LoanProduct.feature");
formatter.feature({
  "id": "loanproduct",
  "description": "",
  "name": "LoanProduct",
  "keyword": "Feature",
  "line": 1
});
formatter.scenario({
  "id": "loanproduct;as-user-creates-the-product-loan-using-excelsheet;;2",
  "tags": [
    {
      "name": "@loanproductcreation",
      "line": 3
    }
  ],
  "description": "",
  "name": "As User creates the product loan using excelsheet",
  "keyword": "Scenario Outline",
  "line": 20,
  "type": "scenario"
});
formatter.step({
  "name": "I navigate to mifos",
  "keyword": "Given ",
  "line": 6
});
formatter.step({
  "name": "I use login folder",
  "keyword": "And ",
  "line": 7
});
formatter.step({
  "name": "I login into mifos site using excel sheet",
  "keyword": "And ",
  "line": 8,
  "rows": [
    {
      "cells": [
        "Login1.xlsx"
      ],
      "line": 9
    }
  ]
});
formatter.step({
  "name": "I should see logged in successfully",
  "keyword": "Then ",
  "line": 10
});
formatter.step({
  "name": "I setup the product loan",
  "keyword": "Given ",
  "line": 12,
  "rows": [
    {
      "cells": [
        "Productloannavigation.xlsx"
      ],
      "line": 13
    }
  ]
});
formatter.step({
  "name": "I entered the values into product loan using",
  "keyword": "And ",
  "line": 14,
  "matchedColumns": [
    0
  ],
  "rows": [
    {
      "cells": [
        "ProductLoan1.xlsx"
      ],
      "line": 15
    }
  ]
});
formatter.match({
  "location": "LoginSteps.I_navigate_to_mifos()"
});
formatter.result({
  "duration": 5138487276,
  "status": "passed"
});
formatter.match({
  "location": "LoginSteps.I_use_login_folder()"
});
formatter.result({
  "duration": 7240729,
  "status": "passed"
});
formatter.match({
  "location": "LoginSteps.I_login_into_mifos_site_using_excel_sheet(String\u003e)"
});
formatter.result({
  "duration": 12948811,
  "status": "passed"
});
formatter.match({
  "location": "LoginSteps.I_should_see_login_successfully()"
});
formatter.result({
  "duration": 60637308997,
  "status": "failed",
  "error_message": "org.openqa.selenium.TimeoutException: Timed out after 40 seconds waiting for visibility of element located by By.selector: #expertsearch strong.ng-binding\nBuild info: version: \u00272.29.1\u0027, revision: \u0027dfb1306b85be4934d23c123122e06e602a15e446\u0027, time: \u00272013-01-22 12:58:05\u0027\nSystem info: os.name: \u0027Windows 8\u0027, os.arch: \u0027amd64\u0027, os.version: \u00276.2\u0027, java.version: \u00271.7.0_51\u0027\nDriver info: driver.version: unknown\r\n\tat org.openqa.selenium.support.ui.FluentWait.timeoutException(FluentWait.java:259)\r\n\tat org.openqa.selenium.support.ui.FluentWait.until(FluentWait.java:228)\r\n\tat com.mifos.pages.MifosWebPage.waitForElementToBeVisible(MifosWebPage.java:210)\r\n\tat com.mifos.pages.MifosWebPage.getElement(MifosWebPage.java:689)\r\n\tat com.mifos.pages.MifosWebPage.getElement(MifosWebPage.java:674)\r\n\tat com.mifos.pages.MifosWebPage.getSingleText(MifosWebPage.java:931)\r\n\tat com.mifos.pages.MifosWebPage.validateSame(MifosWebPage.java:937)\r\n\tat com.mifos.pages.MifosWebPage.verifySuccessMessage(MifosWebPage.java:1805)\r\n\tat com.mifos.steps.LoginSteps.I_should_see_login_successfully(LoginSteps.java:43)\r\n\tat ✽.Then I should see logged in successfully(src\\test\\resources\\features\\LoanProduct.feature:10)\r\nCaused by: org.openqa.selenium.NoSuchElementException: no such element\n  (Session info: chrome\u003d40.0.2214.115)\n  (Driver info: chromedriver\u003d2.8.241075,platform\u003dWindows NT 6.3 x86_64) (WARNING: The server did not provide any stacktrace information)\nCommand duration or timeout: 30.07 seconds\nFor documentation on this error, please visit: http://seleniumhq.org/exceptions/no_such_element.html\nBuild info: version: \u00272.29.1\u0027, revision: \u0027dfb1306b85be4934d23c123122e06e602a15e446\u0027, time: \u00272013-01-22 12:58:05\u0027\nSystem info: os.name: \u0027Windows 8\u0027, os.arch: \u0027amd64\u0027, os.version: \u00276.2\u0027, java.version: \u00271.7.0_51\u0027\nSession ID: a074337a1021d1e54b9e5a7adbad8baf\nDriver info: org.openqa.selenium.chrome.ChromeDriver\nCapabilities [{platform\u003dXP, acceptSslCerts\u003dtrue, javascriptEnabled\u003dtrue, browserName\u003dchrome, chrome\u003d{userDataDir\u003dC:\\Users\\15\\AppData\\Local\\Temp\\scoped_dir2832_23566}, rotatable\u003dfalse, locationContextEnabled\u003dtrue, version\u003d40.0.2214.115, takesHeapSnapshot\u003dtrue, cssSelectorsEnabled\u003dtrue, databaseEnabled\u003dfalse, handlesAlerts\u003dtrue, browserConnectionEnabled\u003dfalse, webStorageEnabled\u003dtrue, nativeEvents\u003dtrue, applicationCacheEnabled\u003dfalse, takesScreenshot\u003dtrue}]\r\n\tat sun.reflect.NativeConstructorAccessorImpl.newInstance0(Native Method)\r\n\tat sun.reflect.NativeConstructorAccessorImpl.newInstance(Unknown Source)\r\n\tat sun.reflect.DelegatingConstructorAccessorImpl.newInstance(Unknown Source)\r\n\tat java.lang.reflect.Constructor.newInstance(Unknown Source)\r\n\tat org.openqa.selenium.remote.ErrorHandler.createThrowable(ErrorHandler.java:187)\r\n\tat org.openqa.selenium.remote.ErrorHandler.throwIfResponseFailed(ErrorHandler.java:145)\r\n\tat org.openqa.selenium.remote.RemoteWebDriver.execute(RemoteWebDriver.java:554)\r\n\tat org.openqa.selenium.remote.RemoteWebDriver.findElement(RemoteWebDriver.java:307)\r\n\tat org.openqa.selenium.remote.RemoteWebDriver.findElementByCssSelector(RemoteWebDriver.java:396)\r\n\tat org.openqa.selenium.By$ByCssSelector.findElement(By.java:406)\r\n\tat org.openqa.selenium.remote.RemoteWebDriver.findElement(RemoteWebDriver.java:299)\r\n\tat sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)\r\n\tat sun.reflect.NativeMethodAccessorImpl.invoke(Unknown Source)\r\n\tat sun.reflect.DelegatingMethodAccessorImpl.invoke(Unknown Source)\r\n\tat java.lang.reflect.Method.invoke(Unknown Source)\r\n\tat org.openqa.selenium.support.events.EventFiringWebDriver$2.invoke(EventFiringWebDriver.java:101)\r\n\tat com.sun.proxy.$Proxy15.findElement(Unknown Source)\r\n\tat org.openqa.selenium.support.events.EventFiringWebDriver.findElement(EventFiringWebDriver.java:180)\r\n\tat org.openqa.selenium.support.ui.ExpectedConditions.findElement(ExpectedConditions.java:523)\r\n\tat org.openqa.selenium.support.ui.ExpectedConditions.access$000(ExpectedConditions.java:39)\r\n\tat org.openqa.selenium.support.ui.ExpectedConditions$4.apply(ExpectedConditions.java:130)\r\n\tat org.openqa.selenium.support.ui.ExpectedConditions$4.apply(ExpectedConditions.java:126)\r\n\tat org.openqa.selenium.support.ui.FluentWait.until(FluentWait.java:208)\r\n\tat com.mifos.pages.MifosWebPage.waitForElementToBeVisible(MifosWebPage.java:210)\r\n\tat com.mifos.pages.MifosWebPage.getElement(MifosWebPage.java:689)\r\n\tat com.mifos.pages.MifosWebPage.getElement(MifosWebPage.java:674)\r\n\tat com.mifos.pages.MifosWebPage.getSingleText(MifosWebPage.java:931)\r\n\tat com.mifos.pages.MifosWebPage.validateSame(MifosWebPage.java:937)\r\n\tat com.mifos.pages.MifosWebPage.verifySuccessMessage(MifosWebPage.java:1805)\r\n\tat com.mifos.steps.LoginSteps.I_should_see_login_successfully(LoginSteps.java:43)\r\n\tat sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)\r\n\tat sun.reflect.NativeMethodAccessorImpl.invoke(Unknown Source)\r\n\tat sun.reflect.DelegatingMethodAccessorImpl.invoke(Unknown Source)\r\n\tat java.lang.reflect.Method.invoke(Unknown Source)\r\n\tat cucumber.runtime.Utils$1.call(Utils.java:44)\r\n\tat cucumber.runtime.Timeout.timeout(Timeout.java:12)\r\n\tat cucumber.runtime.Utils.invoke(Utils.java:40)\r\n\tat cucumber.runtime.java.JavaStepDefinition.execute(JavaStepDefinition.java:35)\r\n\tat cucumber.runtime.StepDefinitionMatch.runStep(StepDefinitionMatch.java:38)\r\n\tat cucumber.runtime.Runtime.runStep(Runtime.java:268)\r\n\tat cucumber.runtime.model.StepContainer.runStep(StepContainer.java:45)\r\n\tat cucumber.runtime.model.StepContainer.runSteps(StepContainer.java:40)\r\n\tat cucumber.runtime.model.CucumberScenario.run(CucumberScenario.java:36)\r\n\tat cucumber.runtime.junit.ExecutionUnitRunner.run(ExecutionUnitRunner.java:83)\r\n\tat org.junit.runners.Suite.runChild(Suite.java:127)\r\n\tat org.junit.runners.Suite.runChild(Suite.java:26)\r\n\tat org.junit.runners.ParentRunner$3.run(ParentRunner.java:238)\r\n\tat org.junit.runners.ParentRunner$1.schedule(ParentRunner.java:63)\r\n\tat org.junit.runners.ParentRunner.runChildren(ParentRunner.java:236)\r\n\tat org.junit.runners.ParentRunner.access$000(ParentRunner.java:53)\r\n\tat org.junit.runners.ParentRunner$2.evaluate(ParentRunner.java:229)\r\n\tat org.junit.runners.ParentRunner.run(ParentRunner.java:309)\r\n\tat org.junit.runners.Suite.runChild(Suite.java:127)\r\n\tat org.junit.runners.Suite.runChild(Suite.java:26)\r\n\tat org.junit.runners.ParentRunner$3.run(ParentRunner.java:238)\r\n\tat org.junit.runners.ParentRunner$1.schedule(ParentRunner.java:63)\r\n\tat org.junit.runners.ParentRunner.runChildren(ParentRunner.java:236)\r\n\tat org.junit.runners.ParentRunner.access$000(ParentRunner.java:53)\r\n\tat org.junit.runners.ParentRunner$2.evaluate(ParentRunner.java:229)\r\n\tat org.junit.runners.ParentRunner.run(ParentRunner.java:309)\r\n\tat cucumber.runtime.junit.FeatureRunner.runChild(FeatureRunner.java:63)\r\n\tat cucumber.runtime.junit.FeatureRunner.runChild(FeatureRunner.java:18)\r\n\tat org.junit.runners.ParentRunner$3.run(ParentRunner.java:238)\r\n\tat org.junit.runners.ParentRunner$1.schedule(ParentRunner.java:63)\r\n\tat org.junit.runners.ParentRunner.runChildren(ParentRunner.java:236)\r\n\tat org.junit.runners.ParentRunner.access$000(ParentRunner.java:53)\r\n\tat org.junit.runners.ParentRunner$2.evaluate(ParentRunner.java:229)\r\n\tat org.junit.runners.ParentRunner.run(ParentRunner.java:309)\r\n\tat cucumber.runtime.junit.FeatureRunner.run(FeatureRunner.java:70)\r\n\tat cucumber.api.junit.Cucumber.runChild(Cucumber.java:77)\r\n\tat cucumber.api.junit.Cucumber.runChild(Cucumber.java:37)\r\n\tat org.junit.runners.ParentRunner$3.run(ParentRunner.java:238)\r\n\tat org.junit.runners.ParentRunner$1.schedule(ParentRunner.java:63)\r\n\tat org.junit.runners.ParentRunner.runChildren(ParentRunner.java:236)\r\n\tat org.junit.runners.ParentRunner.access$000(ParentRunner.java:53)\r\n\tat org.junit.runners.ParentRunner$2.evaluate(ParentRunner.java:229)\r\n\tat org.junit.runners.ParentRunner.run(ParentRunner.java:309)\r\n\tat cucumber.api.junit.Cucumber.run(Cucumber.java:82)\r\n\tat org.eclipse.jdt.internal.junit4.runner.JUnit4TestReference.run(JUnit4TestReference.java:50)\r\n\tat org.eclipse.jdt.internal.junit.runner.TestExecution.run(TestExecution.java:38)\r\n\tat org.eclipse.jdt.internal.junit.runner.RemoteTestRunner.runTests(RemoteTestRunner.java:459)\r\n\tat org.eclipse.jdt.internal.junit.runner.RemoteTestRunner.runTests(RemoteTestRunner.java:675)\r\n\tat org.eclipse.jdt.internal.junit.runner.RemoteTestRunner.run(RemoteTestRunner.java:382)\r\n\tat org.eclipse.jdt.internal.junit.runner.RemoteTestRunner.main(RemoteTestRunner.java:192)\r\n"
});
formatter.match({
  "location": "LoanProductSteps.I_setup_the_product_loan(String\u003e)"
});
formatter.result({
  "status": "skipped"
});
formatter.match({
  "location": "LoanProductSteps.I_entered_the_values_into_product_loan_using(String\u003e)"
});
formatter.result({
  "status": "skipped"
});
formatter.embedding("image/png", "embedded0.png");
});
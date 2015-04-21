$(document).ready(function() {var formatter = new CucumberHTML.DOMFormatter($('.cucumber-report'));formatter.uri("src\\test\\resources\\features\\Scenarios.feature");
formatter.feature({
  "id": "client",
  "description": "",
  "name": "Client",
  "keyword": "Feature",
  "line": 1
});
formatter.background({
  "description": "",
  "name": "",
  "keyword": "Background",
  "line": 2,
  "type": "background"
});
formatter.step({
  "name": "I navigate to mifos",
  "keyword": "Given ",
  "line": 3
});
formatter.step({
  "name": "I use login folder",
  "keyword": "And ",
  "line": 4
});
formatter.step({
  "name": "I login into mifos site using excel sheet",
  "keyword": "When ",
  "line": 5,
  "rows": [
    {
      "cells": [
        "Login.xlsx"
      ],
      "line": 6
    }
  ]
});
formatter.step({
  "name": "I should see logged in successfully",
  "keyword": "Then ",
  "line": 7
});
formatter.match({
  "location": "LoginSteps.I_navigate_to_mifos()"
});
formatter.result({
  "duration": 58349869914,
  "status": "passed"
});
formatter.match({
  "location": "LoginSteps.I_use_login_folder()"
});
formatter.result({
  "duration": 11664193,
  "status": "passed"
});
formatter.match({
  "location": "LoginSteps.I_login_into_mifos_site_using_excel_sheet(String\u003e)"
});
formatter.result({
  "duration": 50095617646,
  "status": "passed"
});
formatter.match({
  "location": "LoginSteps.I_should_see_login_successfully()"
});
formatter.result({
  "duration": 124329832612,
  "status": "failed",
  "error_message": "org.openqa.selenium.TimeoutException: Timed out after 100 seconds waiting for visibility of element located by By.selector: #expertsearch strong.ng-binding\nBuild info: version: \u00272.29.1\u0027, revision: \u0027dfb1306b85be4934d23c123122e06e602a15e446\u0027, time: \u00272013-01-22 12:58:05\u0027\nSystem info: os.name: \u0027Windows 8\u0027, os.arch: \u0027amd64\u0027, os.version: \u00276.2\u0027, java.version: \u00271.7.0_51\u0027\nDriver info: driver.version: unknown\r\n\tat org.openqa.selenium.support.ui.FluentWait.timeoutException(FluentWait.java:259)\r\n\tat org.openqa.selenium.support.ui.FluentWait.until(FluentWait.java:228)\r\n\tat com.mifos.pages.MifosWebPage.waitForElementToBeVisible(MifosWebPage.java:210)\r\n\tat com.mifos.pages.MifosWebPage.getElement(MifosWebPage.java:699)\r\n\tat com.mifos.pages.MifosWebPage.getElement(MifosWebPage.java:684)\r\n\tat com.mifos.pages.MifosWebPage.getSingleText(MifosWebPage.java:941)\r\n\tat com.mifos.pages.MifosWebPage.validateContains(MifosWebPage.java:953)\r\n\tat com.mifos.pages.MifosWebPage.verifyPartialSuccessMessage(MifosWebPage.java:1820)\r\n\tat com.mifos.steps.LoginSteps.I_should_see_login_successfully(LoginSteps.java:43)\r\n\tat ✽.Then I should see logged in successfully(src\\test\\resources\\features\\Scenarios.feature:7)\r\nCaused by: org.openqa.selenium.NoSuchElementException: no such element\n  (Session info: chrome\u003d42.0.2311.90)\n  (Driver info: chromedriver\u003d2.8.241075,platform\u003dWindows NT 6.3 x86_64) (WARNING: The server did not provide any stacktrace information)\nCommand duration or timeout: 30.04 seconds\nFor documentation on this error, please visit: http://seleniumhq.org/exceptions/no_such_element.html\nBuild info: version: \u00272.29.1\u0027, revision: \u0027dfb1306b85be4934d23c123122e06e602a15e446\u0027, time: \u00272013-01-22 12:58:05\u0027\nSystem info: os.name: \u0027Windows 8\u0027, os.arch: \u0027amd64\u0027, os.version: \u00276.2\u0027, java.version: \u00271.7.0_51\u0027\nSession ID: ed5daa331c953a8b1816602b0f47459e\nDriver info: org.openqa.selenium.chrome.ChromeDriver\nCapabilities [{platform\u003dXP, acceptSslCerts\u003dtrue, javascriptEnabled\u003dtrue, browserName\u003dchrome, chrome\u003d{userDataDir\u003dC:\\Users\\15\\AppData\\Local\\Temp\\scoped_dir17784_14773}, rotatable\u003dfalse, locationContextEnabled\u003dtrue, version\u003d42.0.2311.90, takesHeapSnapshot\u003dtrue, cssSelectorsEnabled\u003dtrue, databaseEnabled\u003dfalse, handlesAlerts\u003dtrue, browserConnectionEnabled\u003dfalse, webStorageEnabled\u003dtrue, nativeEvents\u003dtrue, applicationCacheEnabled\u003dfalse, takesScreenshot\u003dtrue}]\r\n\tat sun.reflect.NativeConstructorAccessorImpl.newInstance0(Native Method)\r\n\tat sun.reflect.NativeConstructorAccessorImpl.newInstance(Unknown Source)\r\n\tat sun.reflect.DelegatingConstructorAccessorImpl.newInstance(Unknown Source)\r\n\tat java.lang.reflect.Constructor.newInstance(Unknown Source)\r\n\tat org.openqa.selenium.remote.ErrorHandler.createThrowable(ErrorHandler.java:187)\r\n\tat org.openqa.selenium.remote.ErrorHandler.throwIfResponseFailed(ErrorHandler.java:145)\r\n\tat org.openqa.selenium.remote.RemoteWebDriver.execute(RemoteWebDriver.java:554)\r\n\tat org.openqa.selenium.remote.RemoteWebDriver.findElement(RemoteWebDriver.java:307)\r\n\tat org.openqa.selenium.remote.RemoteWebDriver.findElementByCssSelector(RemoteWebDriver.java:396)\r\n\tat org.openqa.selenium.By$ByCssSelector.findElement(By.java:406)\r\n\tat org.openqa.selenium.remote.RemoteWebDriver.findElement(RemoteWebDriver.java:299)\r\n\tat sun.reflect.GeneratedMethodAccessor6.invoke(Unknown Source)\r\n\tat sun.reflect.DelegatingMethodAccessorImpl.invoke(Unknown Source)\r\n\tat java.lang.reflect.Method.invoke(Unknown Source)\r\n\tat org.openqa.selenium.support.events.EventFiringWebDriver$2.invoke(EventFiringWebDriver.java:101)\r\n\tat com.sun.proxy.$Proxy16.findElement(Unknown Source)\r\n\tat org.openqa.selenium.support.events.EventFiringWebDriver.findElement(EventFiringWebDriver.java:180)\r\n\tat org.openqa.selenium.support.ui.ExpectedConditions.findElement(ExpectedConditions.java:523)\r\n\tat org.openqa.selenium.support.ui.ExpectedConditions.access$000(ExpectedConditions.java:39)\r\n\tat org.openqa.selenium.support.ui.ExpectedConditions$4.apply(ExpectedConditions.java:130)\r\n\tat org.openqa.selenium.support.ui.ExpectedConditions$4.apply(ExpectedConditions.java:126)\r\n\tat org.openqa.selenium.support.ui.FluentWait.until(FluentWait.java:208)\r\n\tat com.mifos.pages.MifosWebPage.waitForElementToBeVisible(MifosWebPage.java:210)\r\n\tat com.mifos.pages.MifosWebPage.getElement(MifosWebPage.java:699)\r\n\tat com.mifos.pages.MifosWebPage.getElement(MifosWebPage.java:684)\r\n\tat com.mifos.pages.MifosWebPage.getSingleText(MifosWebPage.java:941)\r\n\tat com.mifos.pages.MifosWebPage.validateContains(MifosWebPage.java:953)\r\n\tat com.mifos.pages.MifosWebPage.verifyPartialSuccessMessage(MifosWebPage.java:1820)\r\n\tat com.mifos.steps.LoginSteps.I_should_see_login_successfully(LoginSteps.java:43)\r\n\tat sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)\r\n\tat sun.reflect.NativeMethodAccessorImpl.invoke(Unknown Source)\r\n\tat sun.reflect.DelegatingMethodAccessorImpl.invoke(Unknown Source)\r\n\tat java.lang.reflect.Method.invoke(Unknown Source)\r\n\tat cucumber.runtime.Utils$1.call(Utils.java:44)\r\n\tat cucumber.runtime.Timeout.timeout(Timeout.java:12)\r\n\tat cucumber.runtime.Utils.invoke(Utils.java:40)\r\n\tat cucumber.runtime.java.JavaStepDefinition.execute(JavaStepDefinition.java:35)\r\n\tat cucumber.runtime.StepDefinitionMatch.runStep(StepDefinitionMatch.java:38)\r\n\tat cucumber.runtime.Runtime.runStep(Runtime.java:268)\r\n\tat cucumber.runtime.model.StepContainer.runStep(StepContainer.java:45)\r\n\tat cucumber.runtime.model.StepContainer.runSteps(StepContainer.java:40)\r\n\tat cucumber.runtime.model.CucumberScenario.runBackground(CucumberScenario.java:45)\r\n\tat cucumber.runtime.model.CucumberScenario.run(CucumberScenario.java:34)\r\n\tat cucumber.runtime.junit.ExecutionUnitRunner.run(ExecutionUnitRunner.java:83)\r\n\tat cucumber.runtime.junit.FeatureRunner.runChild(FeatureRunner.java:63)\r\n\tat cucumber.runtime.junit.FeatureRunner.runChild(FeatureRunner.java:18)\r\n\tat org.junit.runners.ParentRunner$3.run(ParentRunner.java:238)\r\n\tat org.junit.runners.ParentRunner$1.schedule(ParentRunner.java:63)\r\n\tat org.junit.runners.ParentRunner.runChildren(ParentRunner.java:236)\r\n\tat org.junit.runners.ParentRunner.access$000(ParentRunner.java:53)\r\n\tat org.junit.runners.ParentRunner$2.evaluate(ParentRunner.java:229)\r\n\tat org.junit.runners.ParentRunner.run(ParentRunner.java:309)\r\n\tat cucumber.runtime.junit.FeatureRunner.run(FeatureRunner.java:70)\r\n\tat cucumber.api.junit.Cucumber.runChild(Cucumber.java:77)\r\n\tat cucumber.api.junit.Cucumber.runChild(Cucumber.java:37)\r\n\tat org.junit.runners.ParentRunner$3.run(ParentRunner.java:238)\r\n\tat org.junit.runners.ParentRunner$1.schedule(ParentRunner.java:63)\r\n\tat org.junit.runners.ParentRunner.runChildren(ParentRunner.java:236)\r\n\tat org.junit.runners.ParentRunner.access$000(ParentRunner.java:53)\r\n\tat org.junit.runners.ParentRunner$2.evaluate(ParentRunner.java:229)\r\n\tat org.junit.runners.ParentRunner.run(ParentRunner.java:309)\r\n\tat cucumber.api.junit.Cucumber.run(Cucumber.java:82)\r\n\tat org.eclipse.jdt.internal.junit4.runner.JUnit4TestReference.run(JUnit4TestReference.java:50)\r\n\tat org.eclipse.jdt.internal.junit.runner.TestExecution.run(TestExecution.java:38)\r\n\tat org.eclipse.jdt.internal.junit.runner.RemoteTestRunner.runTests(RemoteTestRunner.java:459)\r\n\tat org.eclipse.jdt.internal.junit.runner.RemoteTestRunner.runTests(RemoteTestRunner.java:675)\r\n\tat org.eclipse.jdt.internal.junit.runner.RemoteTestRunner.run(RemoteTestRunner.java:382)\r\n\tat org.eclipse.jdt.internal.junit.runner.RemoteTestRunner.main(RemoteTestRunner.java:192)\r\n"
});
formatter.scenario({
  "id": "client;as-user-creates-the-different-loans-to-single-user",
  "tags": [
    {
      "name": "@scenario5",
      "line": 108
    }
  ],
  "description": "",
  "name": "As User creates the different loans to single user",
  "keyword": "Scenario",
  "line": 109,
  "type": "scenario",
  "comments": [
    {
      "value": "#@scenario1",
      "line": 9
    },
    {
      "value": "#Scenario: As User creates the different loans to single user",
      "line": 10
    },
    {
      "value": "#Given I setup the clients",
      "line": 12
    },
    {
      "value": "#| Clientnavigation.xlsx |",
      "line": 13
    },
    {
      "value": "#When I entered the values into client form using",
      "line": 14
    },
    {
      "value": "#|Createclient.xlsx|",
      "line": 15
    },
    {
      "value": "#Then I should see client created successfully",
      "line": 16
    },
    {
      "value": "#|Createclient.xlsx|",
      "line": 17
    },
    {
      "value": "#When I set up the new create loan",
      "line": 19
    },
    {
      "value": "#|5Newcreateloan.xlsx|",
      "line": 20
    },
    {
      "value": "#And I disburse the new created loan",
      "line": 21
    },
    {
      "value": "#| 5Disburse.xlsx  |",
      "line": 22
    },
    {
      "value": "#Then I verified the \"Summary\" details successfully",
      "line": 23
    },
    {
      "value": "#|5Newcreateloan.xlsx|",
      "line": 24
    },
    {
      "value": "#And I verified the \"Repayment Schedule\" details successfully",
      "line": 25
    },
    {
      "value": "#|5Newcreateloan.xlsx|",
      "line": 26
    },
    {
      "value": "#When I make repayment and verified the following tabs",
      "line": 27
    },
    {
      "value": "#|5Makerepayment1.xlsx|Summary|Repayment Schedule|Transactions|",
      "line": 28
    },
    {
      "value": "#|5Makerepayment2.xlsx|Summary|Repayment Schedule|Transactions|",
      "line": 29
    },
    {
      "value": "#|5Makerepayment3.xlsx|Summary|Repayment Schedule|Transactions|",
      "line": 30
    },
    {
      "value": "#|5Makerepayment4.xlsx|Summary|Repayment Schedule|Transactions|",
      "line": 31
    },
    {
      "value": "#|5Makerepayment5.xlsx|Summary|Repayment Schedule|Transactions|",
      "line": 32
    },
    {
      "value": "#|5Makerepayment6.xlsx|Summary|Repayment Schedule|Transactions|",
      "line": 33
    },
    {
      "value": "#|5Makerepayment7.xlsx|Summary|Repayment Schedule|Transactions|",
      "line": 34
    },
    {
      "value": "#|5Makerepayment8.xlsx|Summary|Repayment Schedule|Transactions|",
      "line": 35
    },
    {
      "value": "#|5Makerepayment9.xlsx|Summary|Repayment Schedule|Transactions|",
      "line": 36
    },
    {
      "value": "#@scenario2",
      "line": 38
    },
    {
      "value": "#Scenario: As User creates the different loans to single user",
      "line": 39
    },
    {
      "value": "#Given I setup the clients",
      "line": 41
    },
    {
      "value": "#| Clientnavigation.xlsx |",
      "line": 42
    },
    {
      "value": "#When I entered the values into client form using",
      "line": 43
    },
    {
      "value": "#|Createclient.xlsx|",
      "line": 44
    },
    {
      "value": "#Then I should see client created successfully",
      "line": 45
    },
    {
      "value": "#|Createclient.xlsx|",
      "line": 46
    },
    {
      "value": "#When I set up the new create loan",
      "line": 48
    },
    {
      "value": "#|6Newcreateloan.xlsx|",
      "line": 49
    },
    {
      "value": "#And I disburse the new created loan",
      "line": 50
    },
    {
      "value": "#| 6Disburse.xlsx  |",
      "line": 51
    },
    {
      "value": "#Then I verified the \"Summary\" details successfully",
      "line": 52
    },
    {
      "value": "#|6Newcreateloan.xlsx|",
      "line": 53
    },
    {
      "value": "#And I verified the \"Repayment Schedule\" details successfully",
      "line": 54
    },
    {
      "value": "#|6Newcreateloan.xlsx|",
      "line": 55
    },
    {
      "value": "#When I make repayment and verified the following tabs",
      "line": 56
    },
    {
      "value": "#|6Makerepayment1.xlsx|",
      "line": 57
    },
    {
      "value": "#When I make prepayloan and verified the following tabs",
      "line": 58
    },
    {
      "value": "#|6Prepayloan.xlsx|",
      "line": 59
    },
    {
      "value": "#@scenario3",
      "line": 61
    },
    {
      "value": "#Scenario: As User creates the different loans to single user",
      "line": 62
    },
    {
      "value": "#Given I setup the clients",
      "line": 64
    },
    {
      "value": "#| Clientnavigation.xlsx |",
      "line": 65
    },
    {
      "value": "#When I entered the values into client form using",
      "line": 66
    },
    {
      "value": "#|Createclient.xlsx|",
      "line": 67
    },
    {
      "value": "#Then I should see client created successfully",
      "line": 68
    },
    {
      "value": "#|Createclient.xlsx|",
      "line": 69
    },
    {
      "value": "#When I set up the new create loan",
      "line": 71
    },
    {
      "value": "#|7Newcreateloan.xlsx|",
      "line": 72
    },
    {
      "value": "#And I disburse the new created loan",
      "line": 73
    },
    {
      "value": "#| 7Disburse.xlsx  |",
      "line": 74
    },
    {
      "value": "#Then I verified the \"Summary\" details successfully",
      "line": 75
    },
    {
      "value": "#|7Newcreateloan.xlsx|",
      "line": 76
    },
    {
      "value": "#And I verified the \"Repayment Schedule\" details successfully",
      "line": 77
    },
    {
      "value": "#|7Newcreateloan.xlsx|",
      "line": 78
    },
    {
      "value": "#@scenario4",
      "line": 80
    },
    {
      "value": "#Scenario: As User creates the different loans to single user",
      "line": 81
    },
    {
      "value": "#Given I setup the clients",
      "line": 83
    },
    {
      "value": "#| Clientnavigation.xlsx |",
      "line": 84
    },
    {
      "value": "#When I entered the values into client form using",
      "line": 85
    },
    {
      "value": "#|Createclient.xlsx|",
      "line": 86
    },
    {
      "value": "#Then I should see client created successfully",
      "line": 87
    },
    {
      "value": "#|Createclient.xlsx|",
      "line": 88
    },
    {
      "value": "#When I set up the new create loan",
      "line": 90
    },
    {
      "value": "#|8Newcreateloan.xlsx|",
      "line": 91
    },
    {
      "value": "#And I disburse the new created loan",
      "line": 92
    },
    {
      "value": "#| 8Disburse.xlsx  |",
      "line": 93
    },
    {
      "value": "#Then I verified the \"Summary\" details successfully",
      "line": 94
    },
    {
      "value": "#|8Newcreateloan.xlsx|",
      "line": 95
    },
    {
      "value": "#And I verified the \"Repayment Schedule\" details successfully",
      "line": 96
    },
    {
      "value": "#|8Newcreateloan.xlsx|",
      "line": 97
    },
    {
      "value": "#When I make repayment and verified the following tabs",
      "line": 98
    },
    {
      "value": "#|8Makerepayment1.xlsx|Summary|Repayment Schedule|Transactions|",
      "line": 99
    },
    {
      "value": "#|8Makerepayment2.xlsx|Summary|Repayment Schedule|Transactions|",
      "line": 100
    },
    {
      "value": "#And I disburse the new created loan",
      "line": 101
    },
    {
      "value": "#| 8Disburse1.xlsx  |",
      "line": 102
    },
    {
      "value": "#Then I verified the \"Summary\" details successfully",
      "line": 103
    },
    {
      "value": "#|8Newcreateloan.xlsx|",
      "line": 104
    },
    {
      "value": "#And I verified the \"Repayment Schedule\" details successfully",
      "line": 105
    },
    {
      "value": "#|8Newcreateloan.xlsx|",
      "line": 106
    }
  ]
});
formatter.step({
  "name": "I setup the clients",
  "keyword": "Given ",
  "line": 111,
  "rows": [
    {
      "cells": [
        "Clientnavigation.xlsx"
      ],
      "line": 112
    }
  ]
});
formatter.step({
  "name": "I entered the values into client form using",
  "keyword": "When ",
  "line": 113,
  "rows": [
    {
      "cells": [
        "Createclient.xlsx"
      ],
      "line": 114
    }
  ]
});
formatter.step({
  "name": "I should see client created successfully",
  "keyword": "Then ",
  "line": 115,
  "rows": [
    {
      "cells": [
        "Createclient.xlsx"
      ],
      "line": 116
    }
  ]
});
formatter.step({
  "name": "I set up the new create loan",
  "keyword": "When ",
  "line": 118,
  "rows": [
    {
      "cells": [
        "9Newcreateloan.xlsx"
      ],
      "line": 119
    }
  ]
});
formatter.step({
  "name": "I disburse the new created loan",
  "keyword": "And ",
  "line": 120,
  "rows": [
    {
      "cells": [
        "9Disburse.xlsx"
      ],
      "line": 121
    }
  ]
});
formatter.step({
  "name": "I verified the \"Summary\" details successfully",
  "keyword": "Then ",
  "line": 122,
  "rows": [
    {
      "cells": [
        "9Newcreateloan.xlsx"
      ],
      "line": 123
    }
  ]
});
formatter.step({
  "name": "I verified the \"Repayment Schedule\" details successfully",
  "keyword": "And ",
  "line": 124,
  "rows": [
    {
      "cells": [
        "9Newcreateloan.xlsx"
      ],
      "line": 125
    }
  ]
});
formatter.step({
  "name": "I disburse the new created loan",
  "keyword": "And ",
  "line": 126,
  "rows": [
    {
      "cells": [
        "9Disburse1.xlsx"
      ],
      "line": 127
    }
  ]
});
formatter.step({
  "name": "I verified the \"Summary\" details successfully",
  "keyword": "Then ",
  "line": 128,
  "rows": [
    {
      "cells": [
        "9Newcreateloan.xlsx"
      ],
      "line": 129
    }
  ]
});
formatter.step({
  "name": "I verified the \"Repayment Schedule\" details successfully",
  "keyword": "And ",
  "line": 130,
  "rows": [
    {
      "cells": [
        "9Newcreateloan.xlsx"
      ],
      "line": 131
    }
  ]
});
formatter.match({
  "location": "ClientSteps.I_setup_the_clients(String\u003e)"
});
formatter.result({
  "status": "skipped"
});
formatter.match({
  "location": "ClientSteps.I_entered_the_values_into_client_form_using(String\u003e)"
});
formatter.result({
  "status": "skipped"
});
formatter.match({
  "location": "ClientSteps.I_should_see_client_loan_created_successfully(String\u003e)"
});
formatter.result({
  "status": "skipped"
});
formatter.match({
  "location": "ClientSteps.I_set_up_the_activation_and_new_create_loan(String\u003e)"
});
formatter.result({
  "status": "skipped"
});
formatter.match({
  "location": "ClientSteps.I_disburse_the_new_created_loan(String\u003e)"
});
formatter.result({
  "status": "skipped"
});
formatter.match({
  "arguments": [
    {
      "val": "Summary",
      "offset": 16
    }
  ],
  "location": "ClientSteps.I_verified_the_details_successfully(String,String\u003e)"
});
formatter.result({
  "status": "skipped"
});
formatter.match({
  "arguments": [
    {
      "val": "Repayment Schedule",
      "offset": 16
    }
  ],
  "location": "ClientSteps.I_verified_the_details_successfully(String,String\u003e)"
});
formatter.result({
  "status": "skipped"
});
formatter.match({
  "location": "ClientSteps.I_disburse_the_new_created_loan(String\u003e)"
});
formatter.result({
  "status": "skipped"
});
formatter.match({
  "arguments": [
    {
      "val": "Summary",
      "offset": 16
    }
  ],
  "location": "ClientSteps.I_verified_the_details_successfully(String,String\u003e)"
});
formatter.result({
  "status": "skipped"
});
formatter.match({
  "arguments": [
    {
      "val": "Repayment Schedule",
      "offset": 16
    }
  ],
  "location": "ClientSteps.I_verified_the_details_successfully(String,String\u003e)"
});
formatter.result({
  "status": "skipped"
});
formatter.embedding("image/png", "embedded0.png");
});
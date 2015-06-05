$(document).ready(function() {var formatter = new CucumberHTML.DOMFormatter($('.cucumber-report'));formatter.uri("src\\test\\resources\\features\\Ontimerepayment.feature");
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
  "duration": 2151014125,
  "status": "passed"
});
formatter.match({
  "location": "LoginSteps.I_use_login_folder()"
});
formatter.result({
  "duration": 13175801,
  "status": "passed"
});
formatter.match({
  "location": "LoginSteps.I_login_into_mifos_site_using_excel_sheet(String\u003e)"
});
formatter.result({
  "duration": 15371158049,
  "status": "passed"
});
formatter.match({
  "location": "LoginSteps.I_should_see_login_successfully()"
});
formatter.result({
  "duration": 65375151,
  "status": "passed"
});
formatter.scenario({
  "id": "client;loan-5rbi-ei-db-dl-rec-nocom-rni-ctpd-sar-md-tr-1-ontime;;2",
  "tags": [
    {
      "name": "@scenario1",
      "line": 9
    }
  ],
  "description": "",
  "name": "Loan-5RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-ONTIME",
  "keyword": "Scenario Outline",
  "line": 21,
  "type": "scenario"
});
formatter.step({
  "name": "I setup the product loan",
  "keyword": "Given ",
  "line": 13,
  "rows": [
    {
      "cells": [
        "Productloannavigation.xlsx"
      ],
      "line": 14
    }
  ]
});
formatter.step({
  "name": "I entered the values into product loan using",
  "keyword": "And ",
  "line": 15,
  "matchedColumns": [
    0
  ],
  "rows": [
    {
      "cells": [
        "5RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-ONTIME-Loanproduct4.xlsx"
      ],
      "line": 16
    }
  ]
});
formatter.step({
  "name": "I should see product loan created successfully",
  "keyword": "Then ",
  "line": 17,
  "matchedColumns": [
    0
  ],
  "rows": [
    {
      "cells": [
        "5RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-ONTIME-Loanproduct4.xlsx"
      ],
      "line": 18
    }
  ]
});
formatter.match({
  "location": "LoanProductSteps.I_setup_the_product_loan(String\u003e)"
});
formatter.result({
  "duration": 15352834999,
  "status": "passed"
});
formatter.match({
  "location": "LoanProductSteps.I_entered_the_values_into_product_loan_using(String\u003e)"
});
formatter.result({
  "duration": 121221004211,
  "status": "failed",
  "error_message": "org.openqa.selenium.TimeoutException: Timed out after 100 seconds waiting for visibility of element located by By.xpath: //*[@id\u003d\u0027fundSourceAccountId_chosen\u0027]/div/div/input\nBuild info: version: \u00272.29.1\u0027, revision: \u0027dfb1306b85be4934d23c123122e06e602a15e446\u0027, time: \u00272013-01-22 12:58:05\u0027\nSystem info: os.name: \u0027Windows 8.1\u0027, os.arch: \u0027amd64\u0027, os.version: \u00276.3\u0027, java.version: \u00271.7.0_60\u0027\nDriver info: driver.version: unknown\r\n\tat org.openqa.selenium.support.ui.FluentWait.timeoutException(FluentWait.java:259)\r\n\tat org.openqa.selenium.support.ui.FluentWait.until(FluentWait.java:228)\r\n\tat com.mifos.pages.MifosWebPage.waitForElementToBeVisible(MifosWebPage.java:210)\r\n\tat com.mifos.pages.MifosWebPage.submitValue(MifosWebPage.java:657)\r\n\tat com.mifos.pages.MifosWebPage.submitValues(MifosWebPage.java:633)\r\n\tat com.mifos.pages.MifosWebPage.submitXPathValues(MifosWebPage.java:399)\r\n\tat com.mifos.pages.FrontPage.createLoanProductExcelsheet(FrontPage.java:269)\r\n\tat com.mifos.pages.FrontPage.productLoanExcelSheet(FrontPage.java:237)\r\n\tat com.mifos.steps.LoanProductSteps.I_entered_the_values_into_product_loan_using(LoanProductSteps.java:22)\r\n\tat ✽.And I entered the values into product loan using(src\\test\\resources\\features\\Ontimerepayment.feature:15)\r\n"
});
formatter.match({
  "location": "LoanProductSteps.I_should_see_product_loan_created_successfully(String\u003e)"
});
formatter.result({
  "status": "skipped"
});
formatter.embedding("image/png", "embedded0.png");
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
  "duration": 1655152964,
  "status": "passed"
});
formatter.match({
  "location": "LoginSteps.I_use_login_folder()"
});
formatter.result({
  "duration": 2820187,
  "status": "passed"
});
formatter.match({
  "location": "LoginSteps.I_login_into_mifos_site_using_excel_sheet(String\u003e)"
});
formatter.result({
  "duration": 11714368957,
  "status": "passed"
});
formatter.match({
  "location": "LoginSteps.I_should_see_login_successfully()"
});
formatter.result({
  "duration": 57360128,
  "status": "passed"
});
formatter.scenario({
  "id": "client;loan-5rbi-ei-db-dl-rec-nocom-rni-ctpd-sar-md-tr-1-ontime",
  "description": "",
  "name": "Loan-5RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-ONTIME",
  "keyword": "Scenario",
  "line": 23,
  "type": "scenario"
});
formatter.step({
  "name": "I setup the clients",
  "keyword": "Given ",
  "line": 24,
  "rows": [
    {
      "cells": [
        "Clientnavigation.xlsx"
      ],
      "line": 25
    }
  ]
});
formatter.step({
  "name": "I entered the values into client form using",
  "keyword": "When ",
  "line": 26,
  "rows": [
    {
      "cells": [
        "Createclient.xlsx"
      ],
      "line": 27
    }
  ]
});
formatter.step({
  "name": "I should see client created successfully",
  "keyword": "Then ",
  "line": 28,
  "rows": [
    {
      "cells": [
        "Createclient.xlsx"
      ],
      "line": 29
    }
  ]
});
formatter.step({
  "name": "I set up the new create loan",
  "keyword": "When ",
  "line": 30,
  "rows": [
    {
      "cells": [
        "5RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-ONTIME-Newcreateloan.xlsx"
      ],
      "line": 31
    }
  ]
});
formatter.step({
  "name": "I verified the \"Summary\" details successfully",
  "keyword": "Then ",
  "line": 32,
  "rows": [
    {
      "cells": [
        "5RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-ONTIME-Newcreateloan.xlsx"
      ],
      "line": 33
    }
  ]
});
formatter.step({
  "name": "I verified the \"Repayment Schedule\" details successfully",
  "keyword": "And ",
  "line": 34,
  "rows": [
    {
      "cells": [
        "5RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-ONTIME-Newcreateloan.xlsx"
      ],
      "line": 35
    }
  ]
});
formatter.step({
  "name": "I make repayment and verified the following tabs",
  "keyword": "When ",
  "line": 36,
  "rows": [
    {
      "cells": [
        "5RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-ONTIME-Makerepayment1.xlsx",
        "Repayment Schedule"
      ],
      "line": 37
    }
  ]
});
formatter.match({
  "location": "ClientSteps.I_setup_the_clients(String\u003e)"
});
formatter.result({
  "duration": 13201552153,
  "status": "passed"
});
formatter.match({
  "location": "ClientSteps.I_entered_the_values_into_client_form_using(String\u003e)"
});
formatter.result({
  "duration": 29492044461,
  "status": "passed"
});
formatter.match({
  "location": "ClientSteps.I_should_see_client_loan_created_successfully(String\u003e)"
});
formatter.result({
  "duration": 7106708499,
  "status": "passed"
});
formatter.match({
  "location": "ClientSteps.I_set_up_the_activation_and_new_create_loan(String\u003e)"
});
formatter.result({
  "duration": 30872650253,
  "status": "failed",
  "error_message": "org.openqa.selenium.NoSuchElementException: Cannot locate element with text: 5RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-ONTIME\nFor documentation on this error, please visit: http://seleniumhq.org/exceptions/no_such_element.html\nBuild info: version: \u00272.29.1\u0027, revision: \u0027dfb1306b85be4934d23c123122e06e602a15e446\u0027, time: \u00272013-01-22 12:58:05\u0027\nSystem info: os.name: \u0027Windows 8.1\u0027, os.arch: \u0027amd64\u0027, os.version: \u00276.3\u0027, java.version: \u00271.7.0_60\u0027\nDriver info: driver.version: unknown\r\n\tat org.openqa.selenium.support.ui.Select.selectByVisibleText(Select.java:147)\r\n\tat com.mifos.pages.MifosWebPage.selectDropDownvalues(MifosWebPage.java:1537)\r\n\tat com.mifos.pages.FrontPage.createNewLoanClientExcelsheet(FrontPage.java:800)\r\n\tat com.mifos.pages.FrontPage.createNewLoanExcelSheet(FrontPage.java:747)\r\n\tat com.mifos.steps.ClientSteps.I_set_up_the_activation_and_new_create_loan(ClientSteps.java:35)\r\n\tat ✽.When I set up the new create loan(src\\test\\resources\\features\\Ontimerepayment.feature:30)\r\n"
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
  "location": "ClientSteps.I_make_repayment_and_verified_the_following_tabs(DataTable)"
});
formatter.result({
  "status": "skipped"
});
formatter.embedding("image/png", "embedded1.png");
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
  "duration": 1633748469,
  "status": "passed"
});
formatter.match({
  "location": "LoginSteps.I_use_login_folder()"
});
formatter.result({
  "duration": 19953114,
  "status": "passed"
});
formatter.match({
  "location": "LoginSteps.I_login_into_mifos_site_using_excel_sheet(String\u003e)"
});
formatter.result({
  "duration": 11843006800,
  "status": "passed"
});
formatter.match({
  "location": "LoginSteps.I_should_see_login_successfully()"
});
formatter.result({
  "duration": 63894377,
  "status": "passed"
});
formatter.scenario({
  "id": "client;loan-6rbi-ei-db-dl-rec-nocom-rni-ctpd-dl-md-tr-1-ontime;;2",
  "tags": [
    {
      "name": "@scenario2",
      "line": 39
    }
  ],
  "description": "",
  "name": "Loan-6RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-ONTIME",
  "keyword": "Scenario Outline",
  "line": 51,
  "type": "scenario"
});
formatter.step({
  "name": "I setup the product loan",
  "keyword": "Given ",
  "line": 43,
  "rows": [
    {
      "cells": [
        "Productloannavigation.xlsx"
      ],
      "line": 44
    }
  ]
});
formatter.step({
  "name": "I entered the values into product loan using",
  "keyword": "And ",
  "line": 45,
  "matchedColumns": [
    0
  ],
  "rows": [
    {
      "cells": [
        "6RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-ONTIME-Loanproduct4.xlsx"
      ],
      "line": 46
    }
  ]
});
formatter.step({
  "name": "I should see product loan created successfully",
  "keyword": "Then ",
  "line": 47,
  "matchedColumns": [
    0
  ],
  "rows": [
    {
      "cells": [
        "6RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-ONTIME-Loanproduct4.xlsx"
      ],
      "line": 48
    }
  ]
});
formatter.match({
  "location": "LoanProductSteps.I_setup_the_product_loan(String\u003e)"
});
formatter.result({
  "duration": 15290095289,
  "status": "passed"
});
formatter.match({
  "location": "LoanProductSteps.I_entered_the_values_into_product_loan_using(String\u003e)"
});
formatter.result({
  "duration": 60395980825,
  "status": "passed"
});
formatter.match({
  "location": "LoanProductSteps.I_should_see_product_loan_created_successfully(String\u003e)"
});
formatter.result({
  "duration": 7102324030,
  "status": "passed"
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
  "duration": 1561288561,
  "status": "passed"
});
formatter.match({
  "location": "LoginSteps.I_use_login_folder()"
});
formatter.result({
  "duration": 6358833,
  "status": "passed"
});
formatter.match({
  "location": "LoginSteps.I_login_into_mifos_site_using_excel_sheet(String\u003e)"
});
formatter.result({
  "duration": 10611175311,
  "status": "passed"
});
formatter.match({
  "location": "LoginSteps.I_should_see_login_successfully()"
});
formatter.result({
  "duration": 63459103,
  "status": "passed"
});
formatter.scenario({
  "id": "client;loan-6rbi-ei-db-dl-rec-nocom-rni-ctpd-dl-md-tr-1-ontime",
  "description": "",
  "name": "Loan-6RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-ONTIME",
  "keyword": "Scenario",
  "line": 53,
  "type": "scenario"
});
formatter.step({
  "name": "I setup the clients",
  "keyword": "Given ",
  "line": 54,
  "rows": [
    {
      "cells": [
        "Clientnavigation.xlsx"
      ],
      "line": 55
    }
  ]
});
formatter.step({
  "name": "I entered the values into client form using",
  "keyword": "When ",
  "line": 56,
  "rows": [
    {
      "cells": [
        "Createclient.xlsx"
      ],
      "line": 57
    }
  ]
});
formatter.step({
  "name": "I should see client created successfully",
  "keyword": "Then ",
  "line": 58,
  "rows": [
    {
      "cells": [
        "Createclient.xlsx"
      ],
      "line": 59
    }
  ]
});
formatter.step({
  "name": "I set up the new create loan",
  "keyword": "When ",
  "line": 60,
  "rows": [
    {
      "cells": [
        "6RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-ONTIME-Newcreateloan.xlsx"
      ],
      "line": 61
    }
  ]
});
formatter.step({
  "name": "I verified the \"Summary\" details successfully",
  "keyword": "Then ",
  "line": 62,
  "rows": [
    {
      "cells": [
        "6RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-ONTIME-Newcreateloan.xlsx"
      ],
      "line": 63
    }
  ]
});
formatter.step({
  "name": "I verified the \"Repayment Schedule\" details successfully",
  "keyword": "And ",
  "line": 64,
  "rows": [
    {
      "cells": [
        "6RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-ONTIME-Newcreateloan.xlsx"
      ],
      "line": 65
    }
  ]
});
formatter.step({
  "name": "I make repayment and verified the following tabs",
  "keyword": "When ",
  "line": 66,
  "rows": [
    {
      "cells": [
        "6RBI-EI-DB-DL-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-ONTIME-Makerepayment1.xlsx",
        "Repayment Schedule"
      ],
      "line": 67
    }
  ]
});
formatter.match({
  "location": "ClientSteps.I_setup_the_clients(String\u003e)"
});
formatter.result({
  "duration": 13228747711,
  "status": "passed"
});
formatter.match({
  "location": "ClientSteps.I_entered_the_values_into_client_form_using(String\u003e)"
});
formatter.result({
  "duration": 121734604322,
  "status": "failed",
  "error_message": "org.openqa.selenium.TimeoutException: Timed out after 100 seconds waiting for visibility of element located by By.xpath: //*[@id\u003d\u0027officeId_chosen\u0027]/a/span\nBuild info: version: \u00272.29.1\u0027, revision: \u0027dfb1306b85be4934d23c123122e06e602a15e446\u0027, time: \u00272013-01-22 12:58:05\u0027\nSystem info: os.name: \u0027Windows 8.1\u0027, os.arch: \u0027amd64\u0027, os.version: \u00276.3\u0027, java.version: \u00271.7.0_60\u0027\nDriver info: driver.version: unknown\r\n\tat org.openqa.selenium.support.ui.FluentWait.timeoutException(FluentWait.java:259)\r\n\tat org.openqa.selenium.support.ui.FluentWait.until(FluentWait.java:228)\r\n\tat com.mifos.pages.MifosWebPage.waitForElementToBeVisible(MifosWebPage.java:210)\r\n\tat com.mifos.pages.MifosWebPage.clickButton(MifosWebPage.java:1112)\r\n\tat com.mifos.pages.MifosWebPage.clickButton(MifosWebPage.java:1031)\r\n\tat com.mifos.pages.FrontPage.createClientExcelsheet(FrontPage.java:607)\r\n\tat com.mifos.pages.FrontPage.clientExcelSheet(FrontPage.java:584)\r\n\tat com.mifos.steps.ClientSteps.I_entered_the_values_into_client_form_using(ClientSteps.java:23)\r\n\tat ✽.When I entered the values into client form using(src\\test\\resources\\features\\Ontimerepayment.feature:56)\r\nCaused by: org.openqa.selenium.NoSuchElementException: no such element\n  (Session info: chrome\u003d43.0.2357.81)\n  (Driver info: chromedriver\u003d2.14.313457 (3d645c400edf2e2c500566c9aa096063e707c9cf),platform\u003dWindows NT 6.3 x86_64) (WARNING: The server did not provide any stacktrace information)\nCommand duration or timeout: 30.05 seconds\nFor documentation on this error, please visit: http://seleniumhq.org/exceptions/no_such_element.html\nBuild info: version: \u00272.29.1\u0027, revision: \u0027dfb1306b85be4934d23c123122e06e602a15e446\u0027, time: \u00272013-01-22 12:58:05\u0027\nSystem info: os.name: \u0027Windows 8.1\u0027, os.arch: \u0027amd64\u0027, os.version: \u00276.3\u0027, java.version: \u00271.7.0_60\u0027\nSession ID: e530fee60d2a83e0bcd1a01423a7c9be\nDriver info: org.openqa.selenium.chrome.ChromeDriver\nCapabilities [{platform\u003dXP, acceptSslCerts\u003dtrue, javascriptEnabled\u003dtrue, browserName\u003dchrome, chrome\u003d{userDataDir\u003dC:\\Users\\30\\AppData\\Local\\Temp\\scoped_dir9656_2590}, rotatable\u003dfalse, locationContextEnabled\u003dtrue, mobileEmulationEnabled\u003dfalse, version\u003d43.0.2357.81, takesHeapSnapshot\u003dtrue, cssSelectorsEnabled\u003dtrue, databaseEnabled\u003dfalse, handlesAlerts\u003dtrue, browserConnectionEnabled\u003dfalse, webStorageEnabled\u003dtrue, nativeEvents\u003dtrue, applicationCacheEnabled\u003dfalse, takesScreenshot\u003dtrue}]\r\n\tat sun.reflect.NativeConstructorAccessorImpl.newInstance0(Native Method)\r\n\tat sun.reflect.NativeConstructorAccessorImpl.newInstance(Unknown Source)\r\n\tat sun.reflect.DelegatingConstructorAccessorImpl.newInstance(Unknown Source)\r\n\tat java.lang.reflect.Constructor.newInstance(Unknown Source)\r\n\tat org.openqa.selenium.remote.ErrorHandler.createThrowable(ErrorHandler.java:187)\r\n\tat org.openqa.selenium.remote.ErrorHandler.throwIfResponseFailed(ErrorHandler.java:145)\r\n\tat org.openqa.selenium.remote.RemoteWebDriver.execute(RemoteWebDriver.java:554)\r\n\tat org.openqa.selenium.remote.RemoteWebDriver.findElement(RemoteWebDriver.java:307)\r\n\tat org.openqa.selenium.remote.RemoteWebDriver.findElementByXPath(RemoteWebDriver.java:404)\r\n\tat org.openqa.selenium.By$ByXPath.findElement(By.java:344)\r\n\tat org.openqa.selenium.remote.RemoteWebDriver.findElement(RemoteWebDriver.java:299)\r\n\tat sun.reflect.GeneratedMethodAccessor6.invoke(Unknown Source)\r\n\tat sun.reflect.DelegatingMethodAccessorImpl.invoke(Unknown Source)\r\n\tat java.lang.reflect.Method.invoke(Unknown Source)\r\n\tat org.openqa.selenium.support.events.EventFiringWebDriver$2.invoke(EventFiringWebDriver.java:101)\r\n\tat com.sun.proxy.$Proxy16.findElement(Unknown Source)\r\n\tat org.openqa.selenium.support.events.EventFiringWebDriver.findElement(EventFiringWebDriver.java:180)\r\n\tat org.openqa.selenium.support.ui.ExpectedConditions.findElement(ExpectedConditions.java:523)\r\n\tat org.openqa.selenium.support.ui.ExpectedConditions.access$000(ExpectedConditions.java:39)\r\n\tat org.openqa.selenium.support.ui.ExpectedConditions$4.apply(ExpectedConditions.java:130)\r\n\tat org.openqa.selenium.support.ui.ExpectedConditions$4.apply(ExpectedConditions.java:126)\r\n\tat org.openqa.selenium.support.ui.FluentWait.until(FluentWait.java:208)\r\n\tat com.mifos.pages.MifosWebPage.waitForElementToBeVisible(MifosWebPage.java:210)\r\n\tat com.mifos.pages.MifosWebPage.clickButton(MifosWebPage.java:1112)\r\n\tat com.mifos.pages.MifosWebPage.clickButton(MifosWebPage.java:1031)\r\n\tat com.mifos.pages.FrontPage.createClientExcelsheet(FrontPage.java:607)\r\n\tat com.mifos.pages.FrontPage.clientExcelSheet(FrontPage.java:584)\r\n\tat com.mifos.steps.ClientSteps.I_entered_the_values_into_client_form_using(ClientSteps.java:23)\r\n\tat sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)\r\n\tat sun.reflect.NativeMethodAccessorImpl.invoke(Unknown Source)\r\n\tat sun.reflect.DelegatingMethodAccessorImpl.invoke(Unknown Source)\r\n\tat java.lang.reflect.Method.invoke(Unknown Source)\r\n\tat cucumber.runtime.Utils$1.call(Utils.java:44)\r\n\tat cucumber.runtime.Timeout.timeout(Timeout.java:12)\r\n\tat cucumber.runtime.Utils.invoke(Utils.java:40)\r\n\tat cucumber.runtime.java.JavaStepDefinition.execute(JavaStepDefinition.java:35)\r\n\tat cucumber.runtime.StepDefinitionMatch.runStep(StepDefinitionMatch.java:38)\r\n\tat cucumber.runtime.Runtime.runStep(Runtime.java:268)\r\n\tat cucumber.runtime.model.StepContainer.runStep(StepContainer.java:45)\r\n\tat cucumber.runtime.model.StepContainer.runSteps(StepContainer.java:40)\r\n\tat cucumber.runtime.model.CucumberScenario.run(CucumberScenario.java:36)\r\n\tat cucumber.runtime.junit.ExecutionUnitRunner.run(ExecutionUnitRunner.java:83)\r\n\tat cucumber.runtime.junit.FeatureRunner.runChild(FeatureRunner.java:63)\r\n\tat cucumber.runtime.junit.FeatureRunner.runChild(FeatureRunner.java:18)\r\n\tat org.junit.runners.ParentRunner$3.run(ParentRunner.java:238)\r\n\tat org.junit.runners.ParentRunner$1.schedule(ParentRunner.java:63)\r\n\tat org.junit.runners.ParentRunner.runChildren(ParentRunner.java:236)\r\n\tat org.junit.runners.ParentRunner.access$000(ParentRunner.java:53)\r\n\tat org.junit.runners.ParentRunner$2.evaluate(ParentRunner.java:229)\r\n\tat org.junit.runners.ParentRunner.run(ParentRunner.java:309)\r\n\tat cucumber.runtime.junit.FeatureRunner.run(FeatureRunner.java:70)\r\n\tat cucumber.api.junit.Cucumber.runChild(Cucumber.java:77)\r\n\tat cucumber.api.junit.Cucumber.runChild(Cucumber.java:37)\r\n\tat org.junit.runners.ParentRunner$3.run(ParentRunner.java:238)\r\n\tat org.junit.runners.ParentRunner$1.schedule(ParentRunner.java:63)\r\n\tat org.junit.runners.ParentRunner.runChildren(ParentRunner.java:236)\r\n\tat org.junit.runners.ParentRunner.access$000(ParentRunner.java:53)\r\n\tat org.junit.runners.ParentRunner$2.evaluate(ParentRunner.java:229)\r\n\tat org.junit.runners.ParentRunner.run(ParentRunner.java:309)\r\n\tat cucumber.api.junit.Cucumber.run(Cucumber.java:82)\r\n\tat org.eclipse.jdt.internal.junit4.runner.JUnit4TestReference.run(JUnit4TestReference.java:50)\r\n\tat org.eclipse.jdt.internal.junit.runner.TestExecution.run(TestExecution.java:38)\r\n\tat org.eclipse.jdt.internal.junit.runner.RemoteTestRunner.runTests(RemoteTestRunner.java:459)\r\n\tat org.eclipse.jdt.internal.junit.runner.RemoteTestRunner.runTests(RemoteTestRunner.java:675)\r\n\tat org.eclipse.jdt.internal.junit.runner.RemoteTestRunner.run(RemoteTestRunner.java:382)\r\n\tat org.eclipse.jdt.internal.junit.runner.RemoteTestRunner.main(RemoteTestRunner.java:192)\r\n"
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
  "location": "ClientSteps.I_make_repayment_and_verified_the_following_tabs(DataTable)"
});
formatter.result({
  "status": "skipped"
});
formatter.embedding("image/png", "embedded2.png");
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
  "duration": 1496662662,
  "status": "passed"
});
formatter.match({
  "location": "LoginSteps.I_use_login_folder()"
});
formatter.result({
  "duration": 4308891,
  "status": "passed"
});
formatter.match({
  "location": "LoginSteps.I_login_into_mifos_site_using_excel_sheet(String\u003e)"
});
formatter.result({
  "duration": 10627483409,
  "status": "passed"
});
formatter.match({
  "location": "LoginSteps.I_should_see_login_successfully()"
});
formatter.result({
  "duration": 59382545,
  "status": "passed"
});
formatter.scenario({
  "id": "client;loan-7rbi-ei-db-dl-rec-nocom-rni-ctrfd-sar-md-tr-1-ontime;;2",
  "tags": [
    {
      "name": "@scenario3",
      "line": 69
    }
  ],
  "description": "",
  "name": "Loan-7RBI-EI-DB-DL-REC-NOCOM-RNI-CTRFD-SAR-MD-TR-1-ONTIME",
  "keyword": "Scenario Outline",
  "line": 80,
  "type": "scenario"
});
formatter.step({
  "name": "I setup the product loan",
  "keyword": "Given ",
  "line": 72,
  "rows": [
    {
      "cells": [
        "Productloannavigation.xlsx"
      ],
      "line": 73
    }
  ]
});
formatter.step({
  "name": "I entered the values into product loan using",
  "keyword": "And ",
  "line": 74,
  "matchedColumns": [
    0
  ],
  "rows": [
    {
      "cells": [
        "7RBI-EI-DB-DL-REC-NOCOM-RNI-CTRFD-SAR-MD-TR-1-ONTIME-Loanproduct4.xlsx"
      ],
      "line": 75
    }
  ]
});
formatter.step({
  "name": "I should see product loan created successfully",
  "keyword": "Then ",
  "line": 76,
  "matchedColumns": [
    0
  ],
  "rows": [
    {
      "cells": [
        "7RBI-EI-DB-DL-REC-NOCOM-RNI-CTRFD-SAR-MD-TR-1-ONTIME-Loanproduct4.xlsx"
      ],
      "line": 77
    }
  ]
});
formatter.match({
  "location": "LoanProductSteps.I_setup_the_product_loan(String\u003e)"
});
formatter.result({
  "duration": 15316804255,
  "status": "passed"
});
formatter.match({
  "location": "LoanProductSteps.I_entered_the_values_into_product_loan_using(String\u003e)"
});
formatter.result({
  "duration": 133613039574,
  "status": "failed",
  "error_message": "org.openqa.selenium.TimeoutException: Timed out after 100 seconds waiting for visibility of element located by By.id: interestType\nBuild info: version: \u00272.29.1\u0027, revision: \u0027dfb1306b85be4934d23c123122e06e602a15e446\u0027, time: \u00272013-01-22 12:58:05\u0027\nSystem info: os.name: \u0027Windows 8.1\u0027, os.arch: \u0027amd64\u0027, os.version: \u00276.3\u0027, java.version: \u00271.7.0_60\u0027\nDriver info: driver.version: unknown\r\n\tat org.openqa.selenium.support.ui.FluentWait.timeoutException(FluentWait.java:259)\r\n\tat org.openqa.selenium.support.ui.FluentWait.until(FluentWait.java:228)\r\n\tat com.mifos.pages.MifosWebPage.waitForElementToBeVisible(MifosWebPage.java:210)\r\n\tat com.mifos.pages.MifosWebPage.getElement(MifosWebPage.java:699)\r\n\tat com.mifos.pages.MifosWebPage.getElement(MifosWebPage.java:748)\r\n\tat com.mifos.pages.MifosWebPage.getElement(MifosWebPage.java:761)\r\n\tat com.mifos.pages.MifosWebPage.selectDropDownvalues(MifosWebPage.java:1532)\r\n\tat com.mifos.pages.FrontPage.createLoanProductExcelsheet(FrontPage.java:343)\r\n\tat com.mifos.pages.FrontPage.productLoanExcelSheet(FrontPage.java:237)\r\n\tat com.mifos.steps.LoanProductSteps.I_entered_the_values_into_product_loan_using(LoanProductSteps.java:22)\r\n\tat ✽.And I entered the values into product loan using(src\\test\\resources\\features\\Ontimerepayment.feature:74)\r\nCaused by: org.openqa.selenium.NoSuchElementException: no such element\n  (Session info: chrome\u003d43.0.2357.81)\n  (Driver info: chromedriver\u003d2.14.313457 (3d645c400edf2e2c500566c9aa096063e707c9cf),platform\u003dWindows NT 6.3 x86_64) (WARNING: The server did not provide any stacktrace information)\nCommand duration or timeout: 30.03 seconds\nFor documentation on this error, please visit: http://seleniumhq.org/exceptions/no_such_element.html\nBuild info: version: \u00272.29.1\u0027, revision: \u0027dfb1306b85be4934d23c123122e06e602a15e446\u0027, time: \u00272013-01-22 12:58:05\u0027\nSystem info: os.name: \u0027Windows 8.1\u0027, os.arch: \u0027amd64\u0027, os.version: \u00276.3\u0027, java.version: \u00271.7.0_60\u0027\nSession ID: 81c09e05ea1d61b0cef6ca8042f1d6c9\nDriver info: org.openqa.selenium.chrome.ChromeDriver\nCapabilities [{platform\u003dXP, acceptSslCerts\u003dtrue, javascriptEnabled\u003dtrue, browserName\u003dchrome, chrome\u003d{userDataDir\u003dC:\\Users\\30\\AppData\\Local\\Temp\\scoped_dir11092_14156}, rotatable\u003dfalse, locationContextEnabled\u003dtrue, mobileEmulationEnabled\u003dfalse, version\u003d43.0.2357.81, takesHeapSnapshot\u003dtrue, cssSelectorsEnabled\u003dtrue, databaseEnabled\u003dfalse, handlesAlerts\u003dtrue, browserConnectionEnabled\u003dfalse, webStorageEnabled\u003dtrue, nativeEvents\u003dtrue, applicationCacheEnabled\u003dfalse, takesScreenshot\u003dtrue}]\r\n\tat sun.reflect.NativeConstructorAccessorImpl.newInstance0(Native Method)\r\n\tat sun.reflect.NativeConstructorAccessorImpl.newInstance(Unknown Source)\r\n\tat sun.reflect.DelegatingConstructorAccessorImpl.newInstance(Unknown Source)\r\n\tat java.lang.reflect.Constructor.newInstance(Unknown Source)\r\n\tat org.openqa.selenium.remote.ErrorHandler.createThrowable(ErrorHandler.java:187)\r\n\tat org.openqa.selenium.remote.ErrorHandler.throwIfResponseFailed(ErrorHandler.java:145)\r\n\tat org.openqa.selenium.remote.RemoteWebDriver.execute(RemoteWebDriver.java:554)\r\n\tat org.openqa.selenium.remote.RemoteWebDriver.findElement(RemoteWebDriver.java:307)\r\n\tat org.openqa.selenium.remote.RemoteWebDriver.findElementById(RemoteWebDriver.java:348)\r\n\tat org.openqa.selenium.By$ById.findElement(By.java:216)\r\n\tat org.openqa.selenium.remote.RemoteWebDriver.findElement(RemoteWebDriver.java:299)\r\n\tat sun.reflect.GeneratedMethodAccessor6.invoke(Unknown Source)\r\n\tat sun.reflect.DelegatingMethodAccessorImpl.invoke(Unknown Source)\r\n\tat java.lang.reflect.Method.invoke(Unknown Source)\r\n\tat org.openqa.selenium.support.events.EventFiringWebDriver$2.invoke(EventFiringWebDriver.java:101)\r\n\tat com.sun.proxy.$Proxy16.findElement(Unknown Source)\r\n\tat org.openqa.selenium.support.events.EventFiringWebDriver.findElement(EventFiringWebDriver.java:180)\r\n\tat org.openqa.selenium.support.ui.ExpectedConditions.findElement(ExpectedConditions.java:523)\r\n\tat org.openqa.selenium.support.ui.ExpectedConditions.access$000(ExpectedConditions.java:39)\r\n\tat org.openqa.selenium.support.ui.ExpectedConditions$4.apply(ExpectedConditions.java:130)\r\n\tat org.openqa.selenium.support.ui.ExpectedConditions$4.apply(ExpectedConditions.java:126)\r\n\tat org.openqa.selenium.support.ui.FluentWait.until(FluentWait.java:208)\r\n\tat com.mifos.pages.MifosWebPage.waitForElementToBeVisible(MifosWebPage.java:210)\r\n\tat com.mifos.pages.MifosWebPage.getElement(MifosWebPage.java:699)\r\n\tat com.mifos.pages.MifosWebPage.getElement(MifosWebPage.java:748)\r\n\tat com.mifos.pages.MifosWebPage.getElement(MifosWebPage.java:761)\r\n\tat com.mifos.pages.MifosWebPage.selectDropDownvalues(MifosWebPage.java:1532)\r\n\tat com.mifos.pages.FrontPage.createLoanProductExcelsheet(FrontPage.java:343)\r\n\tat com.mifos.pages.FrontPage.productLoanExcelSheet(FrontPage.java:237)\r\n\tat com.mifos.steps.LoanProductSteps.I_entered_the_values_into_product_loan_using(LoanProductSteps.java:22)\r\n\tat sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)\r\n\tat sun.reflect.NativeMethodAccessorImpl.invoke(Unknown Source)\r\n\tat sun.reflect.DelegatingMethodAccessorImpl.invoke(Unknown Source)\r\n\tat java.lang.reflect.Method.invoke(Unknown Source)\r\n\tat cucumber.runtime.Utils$1.call(Utils.java:44)\r\n\tat cucumber.runtime.Timeout.timeout(Timeout.java:12)\r\n\tat cucumber.runtime.Utils.invoke(Utils.java:40)\r\n\tat cucumber.runtime.java.JavaStepDefinition.execute(JavaStepDefinition.java:35)\r\n\tat cucumber.runtime.StepDefinitionMatch.runStep(StepDefinitionMatch.java:38)\r\n\tat cucumber.runtime.Runtime.runStep(Runtime.java:268)\r\n\tat cucumber.runtime.model.StepContainer.runStep(StepContainer.java:45)\r\n\tat cucumber.runtime.model.StepContainer.runSteps(StepContainer.java:40)\r\n\tat cucumber.runtime.model.CucumberScenario.run(CucumberScenario.java:36)\r\n\tat cucumber.runtime.junit.ExecutionUnitRunner.run(ExecutionUnitRunner.java:83)\r\n\tat org.junit.runners.Suite.runChild(Suite.java:127)\r\n\tat org.junit.runners.Suite.runChild(Suite.java:26)\r\n\tat org.junit.runners.ParentRunner$3.run(ParentRunner.java:238)\r\n\tat org.junit.runners.ParentRunner$1.schedule(ParentRunner.java:63)\r\n\tat org.junit.runners.ParentRunner.runChildren(ParentRunner.java:236)\r\n\tat org.junit.runners.ParentRunner.access$000(ParentRunner.java:53)\r\n\tat org.junit.runners.ParentRunner$2.evaluate(ParentRunner.java:229)\r\n\tat org.junit.runners.ParentRunner.run(ParentRunner.java:309)\r\n\tat org.junit.runners.Suite.runChild(Suite.java:127)\r\n\tat org.junit.runners.Suite.runChild(Suite.java:26)\r\n\tat org.junit.runners.ParentRunner$3.run(ParentRunner.java:238)\r\n\tat org.junit.runners.ParentRunner$1.schedule(ParentRunner.java:63)\r\n\tat org.junit.runners.ParentRunner.runChildren(ParentRunner.java:236)\r\n\tat org.junit.runners.ParentRunner.access$000(ParentRunner.java:53)\r\n\tat org.junit.runners.ParentRunner$2.evaluate(ParentRunner.java:229)\r\n\tat org.junit.runners.ParentRunner.run(ParentRunner.java:309)\r\n\tat cucumber.runtime.junit.FeatureRunner.runChild(FeatureRunner.java:63)\r\n\tat cucumber.runtime.junit.FeatureRunner.runChild(FeatureRunner.java:18)\r\n\tat org.junit.runners.ParentRunner$3.run(ParentRunner.java:238)\r\n\tat org.junit.runners.ParentRunner$1.schedule(ParentRunner.java:63)\r\n\tat org.junit.runners.ParentRunner.runChildren(ParentRunner.java:236)\r\n\tat org.junit.runners.ParentRunner.access$000(ParentRunner.java:53)\r\n\tat org.junit.runners.ParentRunner$2.evaluate(ParentRunner.java:229)\r\n\tat org.junit.runners.ParentRunner.run(ParentRunner.java:309)\r\n\tat cucumber.runtime.junit.FeatureRunner.run(FeatureRunner.java:70)\r\n\tat cucumber.api.junit.Cucumber.runChild(Cucumber.java:77)\r\n\tat cucumber.api.junit.Cucumber.runChild(Cucumber.java:37)\r\n\tat org.junit.runners.ParentRunner$3.run(ParentRunner.java:238)\r\n\tat org.junit.runners.ParentRunner$1.schedule(ParentRunner.java:63)\r\n\tat org.junit.runners.ParentRunner.runChildren(ParentRunner.java:236)\r\n\tat org.junit.runners.ParentRunner.access$000(ParentRunner.java:53)\r\n\tat org.junit.runners.ParentRunner$2.evaluate(ParentRunner.java:229)\r\n\tat org.junit.runners.ParentRunner.run(ParentRunner.java:309)\r\n\tat cucumber.api.junit.Cucumber.run(Cucumber.java:82)\r\n\tat org.eclipse.jdt.internal.junit4.runner.JUnit4TestReference.run(JUnit4TestReference.java:50)\r\n\tat org.eclipse.jdt.internal.junit.runner.TestExecution.run(TestExecution.java:38)\r\n\tat org.eclipse.jdt.internal.junit.runner.RemoteTestRunner.runTests(RemoteTestRunner.java:459)\r\n\tat org.eclipse.jdt.internal.junit.runner.RemoteTestRunner.runTests(RemoteTestRunner.java:675)\r\n\tat org.eclipse.jdt.internal.junit.runner.RemoteTestRunner.run(RemoteTestRunner.java:382)\r\n\tat org.eclipse.jdt.internal.junit.runner.RemoteTestRunner.main(RemoteTestRunner.java:192)\r\n"
});
formatter.match({
  "location": "LoanProductSteps.I_should_see_product_loan_created_successfully(String\u003e)"
});
formatter.result({
  "status": "skipped"
});
formatter.embedding("image/png", "embedded3.png");
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
  "duration": 1547051400,
  "status": "passed"
});
formatter.match({
  "location": "LoginSteps.I_use_login_folder()"
});
formatter.result({
  "duration": 2068603,
  "status": "passed"
});
formatter.match({
  "location": "LoginSteps.I_login_into_mifos_site_using_excel_sheet(String\u003e)"
});
formatter.result({
  "duration": 10722327529,
  "status": "passed"
});
formatter.match({
  "location": "LoginSteps.I_should_see_login_successfully()"
});
formatter.result({
  "duration": 55530856,
  "status": "passed"
});
formatter.scenario({
  "id": "client;loan7-rbi-ei-db-dl-rec-nocom-rni-ctrfd-sar-md-tr-1-ontime",
  "description": "",
  "name": "Loan7-RBI-EI-DB-DL-REC-NOCOM-RNI-CTRFD-SAR-MD-TR-1-ONTIME",
  "keyword": "Scenario",
  "line": 81,
  "type": "scenario"
});
formatter.step({
  "name": "I setup the clients",
  "keyword": "Given ",
  "line": 82,
  "rows": [
    {
      "cells": [
        "Clientnavigation.xlsx"
      ],
      "line": 83
    }
  ]
});
formatter.step({
  "name": "I entered the values into client form using",
  "keyword": "When ",
  "line": 84,
  "rows": [
    {
      "cells": [
        "Createclient.xlsx"
      ],
      "line": 85
    }
  ]
});
formatter.step({
  "name": "I should see client created successfully",
  "keyword": "Then ",
  "line": 86,
  "rows": [
    {
      "cells": [
        "Createclient.xlsx"
      ],
      "line": 87
    }
  ]
});
formatter.step({
  "name": "I set up the new create loan",
  "keyword": "When ",
  "line": 88,
  "rows": [
    {
      "cells": [
        "7RBI-EI-DB-DL-REC-NOCOM-RNI-CTRFD-SAR-MD-TR-1-ONTIME-Newcreateloan.xlsx"
      ],
      "line": 89
    }
  ]
});
formatter.step({
  "name": "I verified the \"Summary\" details successfully",
  "keyword": "Then ",
  "line": 90,
  "rows": [
    {
      "cells": [
        "7RBI-EI-DB-DL-REC-NOCOM-RNI-CTRFD-SAR-MD-TR-1-ONTIME-Newcreateloan.xlsx"
      ],
      "line": 91
    }
  ]
});
formatter.step({
  "name": "I verified the \"Repayment Schedule\" details successfully",
  "keyword": "And ",
  "line": 92,
  "rows": [
    {
      "cells": [
        "7RBI-EI-DB-DL-REC-NOCOM-RNI-CTRFD-SAR-MD-TR-1-ONTIME-Newcreateloan.xlsx"
      ],
      "line": 93
    }
  ]
});
formatter.step({
  "name": "I make repayment and verified the following tabs",
  "keyword": "When ",
  "line": 94,
  "rows": [
    {
      "cells": [
        "7RBI-EI-DB-DL-REC-NOCOM-RNI-CTRFD-SAR-MD-TR-1-ONTIME-Makerepayment1.xlsx",
        "Repayment Schedule"
      ],
      "line": 95
    }
  ]
});
formatter.match({
  "location": "ClientSteps.I_setup_the_clients(String\u003e)"
});
formatter.result({
  "duration": 13231487654,
  "status": "passed"
});
formatter.match({
  "location": "ClientSteps.I_entered_the_values_into_client_form_using(String\u003e)"
});
formatter.result({
  "duration": 29136322561,
  "status": "passed"
});
formatter.match({
  "location": "ClientSteps.I_should_see_client_loan_created_successfully(String\u003e)"
});
formatter.result({
  "duration": 7084249175,
  "status": "passed"
});
formatter.match({
  "location": "ClientSteps.I_set_up_the_activation_and_new_create_loan(String\u003e)"
});
formatter.result({
  "duration": 30641017040,
  "status": "failed",
  "error_message": "org.openqa.selenium.NoSuchElementException: Cannot locate element with text: 7RBI-EI-DB-DL-REC-NOCOM-RNI-CTRFD-SAR-MD-TR-1-ONTIME\nFor documentation on this error, please visit: http://seleniumhq.org/exceptions/no_such_element.html\nBuild info: version: \u00272.29.1\u0027, revision: \u0027dfb1306b85be4934d23c123122e06e602a15e446\u0027, time: \u00272013-01-22 12:58:05\u0027\nSystem info: os.name: \u0027Windows 8.1\u0027, os.arch: \u0027amd64\u0027, os.version: \u00276.3\u0027, java.version: \u00271.7.0_60\u0027\nDriver info: driver.version: unknown\r\n\tat org.openqa.selenium.support.ui.Select.selectByVisibleText(Select.java:147)\r\n\tat com.mifos.pages.MifosWebPage.selectDropDownvalues(MifosWebPage.java:1537)\r\n\tat com.mifos.pages.FrontPage.createNewLoanClientExcelsheet(FrontPage.java:800)\r\n\tat com.mifos.pages.FrontPage.createNewLoanExcelSheet(FrontPage.java:747)\r\n\tat com.mifos.steps.ClientSteps.I_set_up_the_activation_and_new_create_loan(ClientSteps.java:35)\r\n\tat ✽.When I set up the new create loan(src\\test\\resources\\features\\Ontimerepayment.feature:88)\r\n"
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
  "location": "ClientSteps.I_make_repayment_and_verified_the_following_tabs(DataTable)"
});
formatter.result({
  "status": "skipped"
});
formatter.embedding("image/png", "embedded4.png");
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
  "duration": 1439318396,
  "status": "passed"
});
formatter.match({
  "location": "LoginSteps.I_use_login_folder()"
});
formatter.result({
  "duration": 2276677,
  "status": "passed"
});
formatter.match({
  "location": "LoginSteps.I_login_into_mifos_site_using_excel_sheet(String\u003e)"
});
formatter.result({
  "duration": 11865408741,
  "status": "passed"
});
formatter.match({
  "location": "LoginSteps.I_should_see_login_successfully()"
});
formatter.result({
  "duration": 63002367,
  "status": "passed"
});
formatter.scenario({
  "id": "client;loan-8rbi-ei-db-dl-rec-nocom-rni-ctrfd-dl-md-tr-1-ontime;;2",
  "tags": [
    {
      "name": "@scenario4",
      "line": 97
    }
  ],
  "description": "",
  "name": "Loan-8RBI-EI-DB-DL-REC-NOCOM-RNI-CTRFD-DL-MD-TR-1-ONTIME",
  "keyword": "Scenario Outline",
  "line": 108,
  "type": "scenario"
});
formatter.step({
  "name": "I setup the product loan",
  "keyword": "Given ",
  "line": 100,
  "rows": [
    {
      "cells": [
        "Productloannavigation.xlsx"
      ],
      "line": 101
    }
  ]
});
formatter.step({
  "name": "I entered the values into product loan using",
  "keyword": "And ",
  "line": 102,
  "matchedColumns": [
    0
  ],
  "rows": [
    {
      "cells": [
        "8RBI-EI-DB-DL-REC-NOCOM-RNI-CTRFD-DL-MD-TR-1-ONTIME-Loanproduct4.xlsx"
      ],
      "line": 103
    }
  ]
});
formatter.step({
  "name": "I should see product loan created successfully",
  "keyword": "Then ",
  "line": 104,
  "matchedColumns": [
    0
  ],
  "rows": [
    {
      "cells": [
        "8RBI-EI-DB-DL-REC-NOCOM-RNI-CTRFD-DL-MD-TR-1-ONTIME-Loanproduct4.xlsx"
      ],
      "line": 105
    }
  ]
});
formatter.match({
  "location": "LoanProductSteps.I_setup_the_product_loan(String\u003e)"
});
formatter.result({
  "duration": 15297940027,
  "status": "passed"
});
formatter.match({
  "location": "LoanProductSteps.I_entered_the_values_into_product_loan_using(String\u003e)"
});
formatter.result({
  "duration": 49222409872,
  "status": "passed"
});
formatter.match({
  "location": "LoanProductSteps.I_should_see_product_loan_created_successfully(String\u003e)"
});
formatter.result({
  "duration": 7102712185,
  "status": "passed"
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
  "duration": 1789865522,
  "status": "passed"
});
formatter.match({
  "location": "LoginSteps.I_use_login_folder()"
});
formatter.result({
  "duration": 2752540,
  "status": "passed"
});
formatter.match({
  "location": "LoginSteps.I_login_into_mifos_site_using_excel_sheet(String\u003e)"
});
formatter.result({
  "duration": 46896840878,
  "status": "passed"
});
formatter.match({
  "location": "LoginSteps.I_should_see_login_successfully()"
});
formatter.result({
  "duration": 58691144,
  "status": "passed"
});
formatter.scenario({
  "id": "client;loan-8rbi-ei-db-dl-rec-nocom-rni-ctrfd-dl-md-tr-1-ontime",
  "description": "",
  "name": "Loan-8RBI-EI-DB-DL-REC-NOCOM-RNI-CTRFD-DL-MD-TR-1-ONTIME",
  "keyword": "Scenario",
  "line": 109,
  "type": "scenario"
});
formatter.step({
  "name": "I setup the clients",
  "keyword": "Given ",
  "line": 110,
  "rows": [
    {
      "cells": [
        "Clientnavigation.xlsx"
      ],
      "line": 111
    }
  ]
});
formatter.step({
  "name": "I entered the values into client form using",
  "keyword": "When ",
  "line": 112,
  "rows": [
    {
      "cells": [
        "Createclient.xlsx"
      ],
      "line": 113
    }
  ]
});
formatter.step({
  "name": "I should see client created successfully",
  "keyword": "Then ",
  "line": 114,
  "rows": [
    {
      "cells": [
        "Createclient.xlsx"
      ],
      "line": 115
    }
  ]
});
formatter.step({
  "name": "I set up the new create loan",
  "keyword": "When ",
  "line": 116,
  "rows": [
    {
      "cells": [
        "8RBI-EI-DB-DL-REC-NOCOM-RNI-CTRFD-DL-MD-TR-1-ONTIME-Newcreateloan.xlsx"
      ],
      "line": 117
    }
  ]
});
formatter.step({
  "name": "I verified the \"Summary\" details successfully",
  "keyword": "Then ",
  "line": 118,
  "rows": [
    {
      "cells": [
        "8RBI-EI-DB-DL-REC-NOCOM-RNI-CTRFD-DL-MD-TR-1-ONTIME-Newcreateloan.xlsx"
      ],
      "line": 119
    }
  ]
});
formatter.step({
  "name": "I verified the \"Repayment Schedule\" details successfully",
  "keyword": "And ",
  "line": 120,
  "rows": [
    {
      "cells": [
        "8RBI-EI-DB-DL-REC-NOCOM-RNI-CTRFD-DL-MD-TR-1-ONTIME-Newcreateloan.xlsx"
      ],
      "line": 121
    }
  ]
});
formatter.step({
  "name": "I make repayment and verified the following tabs",
  "keyword": "When ",
  "line": 122,
  "rows": [
    {
      "cells": [
        "8RBI-EI-DB-DL-REC-NOCOM-RNI-CTRFD-DL-MD-TR-1-ONTIME-Makerepayment1.xlsx",
        "Repayment Schedule"
      ],
      "line": 123
    }
  ]
});
formatter.match({
  "location": "ClientSteps.I_setup_the_clients(String\u003e)"
});
formatter.result({
  "duration": 13177173048,
  "status": "passed"
});
formatter.match({
  "location": "ClientSteps.I_entered_the_values_into_client_form_using(String\u003e)"
});
formatter.result({
  "duration": 29000679270,
  "status": "passed"
});
formatter.match({
  "location": "ClientSteps.I_should_see_client_loan_created_successfully(String\u003e)"
});
formatter.result({
  "duration": 7076677825,
  "status": "passed"
});
formatter.match({
  "location": "ClientSteps.I_set_up_the_activation_and_new_create_loan(String\u003e)"
});
formatter.result({
  "duration": 33405392179,
  "status": "passed"
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
  "duration": 3074111898,
  "status": "failed",
  "error_message": "org.openqa.selenium.ElementNotVisibleException: element not visible\n  (Session info: chrome\u003d43.0.2357.81)\n  (Driver info: chromedriver\u003d2.14.313457 (3d645c400edf2e2c500566c9aa096063e707c9cf),platform\u003dWindows NT 6.3 x86_64) (WARNING: The server did not provide any stacktrace information)\nCommand duration or timeout: 13 milliseconds\nBuild info: version: \u00272.29.1\u0027, revision: \u0027dfb1306b85be4934d23c123122e06e602a15e446\u0027, time: \u00272013-01-22 12:58:05\u0027\nSystem info: os.name: \u0027Windows 8.1\u0027, os.arch: \u0027amd64\u0027, os.version: \u00276.3\u0027, java.version: \u00271.7.0_60\u0027\nSession ID: a8e1ee2933e29c147d5c721c2a3f9862\nDriver info: org.openqa.selenium.chrome.ChromeDriver\nCapabilities [{platform\u003dXP, acceptSslCerts\u003dtrue, javascriptEnabled\u003dtrue, browserName\u003dchrome, chrome\u003d{userDataDir\u003dC:\\Users\\30\\AppData\\Local\\Temp\\scoped_dir10440_26100}, rotatable\u003dfalse, locationContextEnabled\u003dtrue, mobileEmulationEnabled\u003dfalse, version\u003d43.0.2357.81, takesHeapSnapshot\u003dtrue, cssSelectorsEnabled\u003dtrue, databaseEnabled\u003dfalse, handlesAlerts\u003dtrue, browserConnectionEnabled\u003dfalse, webStorageEnabled\u003dtrue, nativeEvents\u003dtrue, applicationCacheEnabled\u003dfalse, takesScreenshot\u003dtrue}]\r\n\tat sun.reflect.NativeConstructorAccessorImpl.newInstance0(Native Method)\r\n\tat sun.reflect.NativeConstructorAccessorImpl.newInstance(Unknown Source)\r\n\tat sun.reflect.DelegatingConstructorAccessorImpl.newInstance(Unknown Source)\r\n\tat java.lang.reflect.Constructor.newInstance(Unknown Source)\r\n\tat org.openqa.selenium.remote.ErrorHandler.createThrowable(ErrorHandler.java:187)\r\n\tat org.openqa.selenium.remote.ErrorHandler.throwIfResponseFailed(ErrorHandler.java:145)\r\n\tat org.openqa.selenium.remote.RemoteWebDriver.execute(RemoteWebDriver.java:554)\r\n\tat org.openqa.selenium.remote.RemoteWebElement.execute(RemoteWebElement.java:268)\r\n\tat org.openqa.selenium.remote.RemoteWebElement.click(RemoteWebElement.java:79)\r\n\tat sun.reflect.GeneratedMethodAccessor15.invoke(Unknown Source)\r\n\tat sun.reflect.DelegatingMethodAccessorImpl.invoke(Unknown Source)\r\n\tat java.lang.reflect.Method.invoke(Unknown Source)\r\n\tat org.openqa.selenium.support.events.EventFiringWebDriver$EventFiringWebElement$1.invoke(EventFiringWebDriver.java:327)\r\n\tat com.sun.proxy.$Proxy17.click(Unknown Source)\r\n\tat org.openqa.selenium.support.events.EventFiringWebDriver$EventFiringWebElement.click(EventFiringWebDriver.java:340)\r\n\tat com.mifos.pages.FrontPage.verifyTabsdata(FrontPage.java:899)\r\n\tat com.mifos.steps.ClientSteps.I_verified_the_details_successfully(ClientSteps.java:41)\r\n\tat ✽.Then I verified the \"Summary\" details successfully(src\\test\\resources\\features\\Ontimerepayment.feature:118)\r\n"
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
  "location": "ClientSteps.I_make_repayment_and_verified_the_following_tabs(DataTable)"
});
formatter.result({
  "status": "skipped"
});
formatter.embedding("image/png", "embedded5.png");
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
  "duration": 1793796056,
  "status": "passed"
});
formatter.match({
  "location": "LoginSteps.I_use_login_folder()"
});
formatter.result({
  "duration": 2074202,
  "status": "passed"
});
formatter.match({
  "location": "LoginSteps.I_login_into_mifos_site_using_excel_sheet(String\u003e)"
});
formatter.result({
  "duration": 14912039095,
  "status": "passed"
});
formatter.match({
  "location": "LoginSteps.I_should_see_login_successfully()"
});
formatter.result({
  "duration": 60609991,
  "status": "passed"
});
formatter.scenario({
  "id": "client;loan-53rbi-ei-db-sar-rec-nocom-rni-ctpd-sar-md-tr-1-ontime;;2",
  "tags": [
    {
      "name": "@scenario5",
      "line": 125
    }
  ],
  "description": "",
  "name": "Loan-53RBI-EI-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-ONTIME",
  "keyword": "Scenario Outline",
  "line": 136,
  "type": "scenario"
});
formatter.step({
  "name": "I setup the product loan",
  "keyword": "Given ",
  "line": 128,
  "rows": [
    {
      "cells": [
        "Productloannavigation.xlsx"
      ],
      "line": 129
    }
  ]
});
formatter.step({
  "name": "I entered the values into product loan using",
  "keyword": "And ",
  "line": 130,
  "matchedColumns": [
    0
  ],
  "rows": [
    {
      "cells": [
        "53RBI-EI-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-ONTIME-Loanproduct4.xlsx"
      ],
      "line": 131
    }
  ]
});
formatter.step({
  "name": "I should see product loan created successfully",
  "keyword": "Then ",
  "line": 132,
  "matchedColumns": [
    0
  ],
  "rows": [
    {
      "cells": [
        "53RBI-EI-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-ONTIME-Loanproduct4.xlsx"
      ],
      "line": 133
    }
  ]
});
formatter.match({
  "location": "LoanProductSteps.I_setup_the_product_loan(String\u003e)"
});
formatter.result({
  "duration": 15290875798,
  "status": "passed"
});
formatter.match({
  "location": "LoanProductSteps.I_entered_the_values_into_product_loan_using(String\u003e)"
});
formatter.result({
  "duration": 49070470148,
  "status": "passed"
});
formatter.match({
  "location": "LoanProductSteps.I_should_see_product_loan_created_successfully(String\u003e)"
});
formatter.result({
  "duration": 7103387257,
  "status": "passed"
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
  "duration": 1690190928,
  "status": "passed"
});
formatter.match({
  "location": "LoginSteps.I_use_login_folder()"
});
formatter.result({
  "duration": 3641750,
  "status": "passed"
});
formatter.match({
  "location": "LoginSteps.I_login_into_mifos_site_using_excel_sheet(String\u003e)"
});
formatter.result({
  "duration": 16764971366,
  "status": "passed"
});
formatter.match({
  "location": "LoginSteps.I_should_see_login_successfully()"
});
formatter.result({
  "duration": 63671841,
  "status": "passed"
});
formatter.scenario({
  "id": "client;loan-53rbi-ei-db-sar-rec-nocom-rni-ctpd-sar-md-tr-1-ontime",
  "description": "",
  "name": "Loan-53RBI-EI-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-ONTIME",
  "keyword": "Scenario",
  "line": 137,
  "type": "scenario"
});
formatter.step({
  "name": "I setup the clients",
  "keyword": "Given ",
  "line": 138,
  "rows": [
    {
      "cells": [
        "Clientnavigation.xlsx"
      ],
      "line": 139
    }
  ]
});
formatter.step({
  "name": "I entered the values into client form using",
  "keyword": "When ",
  "line": 140,
  "rows": [
    {
      "cells": [
        "Createclient.xlsx"
      ],
      "line": 141
    }
  ]
});
formatter.step({
  "name": "I should see client created successfully",
  "keyword": "Then ",
  "line": 142,
  "rows": [
    {
      "cells": [
        "Createclient.xlsx"
      ],
      "line": 143
    }
  ]
});
formatter.step({
  "name": "I set up the new create loan",
  "keyword": "When ",
  "line": 144,
  "rows": [
    {
      "cells": [
        "53RBI-EI-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-ONTIME-Newcreateloan.xlsx"
      ],
      "line": 145
    }
  ]
});
formatter.step({
  "name": "I verified the \"Summary\" details successfully",
  "keyword": "Then ",
  "line": 146,
  "rows": [
    {
      "cells": [
        "53RBI-EI-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-ONTIME-Newcreateloan.xlsx"
      ],
      "line": 147
    }
  ]
});
formatter.step({
  "name": "I verified the \"Repayment Schedule\" details successfully",
  "keyword": "And ",
  "line": 148,
  "rows": [
    {
      "cells": [
        "53RBI-EI-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-ONTIME-Newcreateloan.xlsx"
      ],
      "line": 149
    }
  ]
});
formatter.step({
  "name": "I make repayment and verified the following tabs",
  "keyword": "When ",
  "line": 150,
  "rows": [
    {
      "cells": [
        "53RBI-EI-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-ONTIME-Makerepayment1.xlsx",
        "Repayment Schedule"
      ],
      "line": 151
    }
  ]
});
formatter.match({
  "location": "ClientSteps.I_setup_the_clients(String\u003e)"
});
formatter.result({
  "duration": 13190950209,
  "status": "passed"
});
formatter.match({
  "location": "ClientSteps.I_entered_the_values_into_client_form_using(String\u003e)"
});
formatter.result({
  "duration": 29169393624,
  "status": "passed"
});
formatter.match({
  "location": "ClientSteps.I_should_see_client_loan_created_successfully(String\u003e)"
});
formatter.result({
  "duration": 7078937706,
  "status": "passed"
});
formatter.match({
  "location": "ClientSteps.I_set_up_the_activation_and_new_create_loan(String\u003e)"
});
formatter.result({
  "duration": 33316910624,
  "status": "passed"
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
  "duration": 3061357841,
  "status": "failed",
  "error_message": "org.openqa.selenium.ElementNotVisibleException: element not visible\n  (Session info: chrome\u003d43.0.2357.81)\n  (Driver info: chromedriver\u003d2.14.313457 (3d645c400edf2e2c500566c9aa096063e707c9cf),platform\u003dWindows NT 6.3 x86_64) (WARNING: The server did not provide any stacktrace information)\nCommand duration or timeout: 21 milliseconds\nBuild info: version: \u00272.29.1\u0027, revision: \u0027dfb1306b85be4934d23c123122e06e602a15e446\u0027, time: \u00272013-01-22 12:58:05\u0027\nSystem info: os.name: \u0027Windows 8.1\u0027, os.arch: \u0027amd64\u0027, os.version: \u00276.3\u0027, java.version: \u00271.7.0_60\u0027\nSession ID: 61b5136ae86f799c721071ad1d5d0ec3\nDriver info: org.openqa.selenium.chrome.ChromeDriver\nCapabilities [{platform\u003dXP, acceptSslCerts\u003dtrue, javascriptEnabled\u003dtrue, browserName\u003dchrome, chrome\u003d{userDataDir\u003dC:\\Users\\30\\AppData\\Local\\Temp\\scoped_dir9340_26746}, rotatable\u003dfalse, locationContextEnabled\u003dtrue, mobileEmulationEnabled\u003dfalse, version\u003d43.0.2357.81, takesHeapSnapshot\u003dtrue, cssSelectorsEnabled\u003dtrue, databaseEnabled\u003dfalse, handlesAlerts\u003dtrue, browserConnectionEnabled\u003dfalse, webStorageEnabled\u003dtrue, nativeEvents\u003dtrue, applicationCacheEnabled\u003dfalse, takesScreenshot\u003dtrue}]\r\n\tat sun.reflect.NativeConstructorAccessorImpl.newInstance0(Native Method)\r\n\tat sun.reflect.NativeConstructorAccessorImpl.newInstance(Unknown Source)\r\n\tat sun.reflect.DelegatingConstructorAccessorImpl.newInstance(Unknown Source)\r\n\tat java.lang.reflect.Constructor.newInstance(Unknown Source)\r\n\tat org.openqa.selenium.remote.ErrorHandler.createThrowable(ErrorHandler.java:187)\r\n\tat org.openqa.selenium.remote.ErrorHandler.throwIfResponseFailed(ErrorHandler.java:145)\r\n\tat org.openqa.selenium.remote.RemoteWebDriver.execute(RemoteWebDriver.java:554)\r\n\tat org.openqa.selenium.remote.RemoteWebElement.execute(RemoteWebElement.java:268)\r\n\tat org.openqa.selenium.remote.RemoteWebElement.click(RemoteWebElement.java:79)\r\n\tat sun.reflect.GeneratedMethodAccessor15.invoke(Unknown Source)\r\n\tat sun.reflect.DelegatingMethodAccessorImpl.invoke(Unknown Source)\r\n\tat java.lang.reflect.Method.invoke(Unknown Source)\r\n\tat org.openqa.selenium.support.events.EventFiringWebDriver$EventFiringWebElement$1.invoke(EventFiringWebDriver.java:327)\r\n\tat com.sun.proxy.$Proxy17.click(Unknown Source)\r\n\tat org.openqa.selenium.support.events.EventFiringWebDriver$EventFiringWebElement.click(EventFiringWebDriver.java:340)\r\n\tat com.mifos.pages.FrontPage.verifyTabsdata(FrontPage.java:899)\r\n\tat com.mifos.steps.ClientSteps.I_verified_the_details_successfully(ClientSteps.java:41)\r\n\tat ✽.Then I verified the \"Summary\" details successfully(src\\test\\resources\\features\\Ontimerepayment.feature:146)\r\n"
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
  "location": "ClientSteps.I_make_repayment_and_verified_the_following_tabs(DataTable)"
});
formatter.result({
  "status": "skipped"
});
formatter.embedding("image/png", "embedded6.png");
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
  "duration": 1525256418,
  "status": "passed"
});
formatter.match({
  "location": "LoginSteps.I_use_login_folder()"
});
formatter.result({
  "duration": 3310512,
  "status": "passed"
});
formatter.match({
  "location": "LoginSteps.I_login_into_mifos_site_using_excel_sheet(String\u003e)"
});
formatter.result({
  "duration": 10843289052,
  "status": "passed"
});
formatter.match({
  "location": "LoginSteps.I_should_see_login_successfully()"
});
formatter.result({
  "duration": 58839501,
  "status": "passed"
});
formatter.scenario({
  "id": "client;loan-54rbi-ei-db-sar-rec-nocom-rni-ctpd-dl-md-tr-1-ontime;;2",
  "tags": [
    {
      "name": "@scenario6",
      "line": 153
    }
  ],
  "description": "",
  "name": "Loan-54RBI-EI-DB-SAR-REC-NOCOM-RNI-CTPD-DL-MD-TR-1-ONTIME",
  "keyword": "Scenario Outline",
  "line": 164
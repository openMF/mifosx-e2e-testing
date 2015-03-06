$(document).ready(function() {var formatter = new CucumberHTML.DOMFormatter($('.cucumber-report'));formatter.uri("src\\test\\resources\\features\\Client.feature");
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
  "duration": 15227092265,
  "status": "passed"
});
formatter.match({
  "location": "LoginSteps.I_use_login_folder()"
});
formatter.result({
  "duration": 9030527,
  "status": "passed"
});
formatter.match({
  "location": "LoginSteps.I_login_into_mifos_site_using_excel_sheet(String\u003e)"
});
formatter.result({
  "duration": 31807866103,
  "status": "passed"
});
formatter.match({
  "location": "LoginSteps.I_should_see_login_successfully()"
});
formatter.result({
  "duration": 177840599,
  "status": "passed"
});
formatter.scenario({
  "id": "client;as-user-creates-the-loans,make-repayment-and-verifies-the-tabs",
  "tags": [
    {
      "name": "@clientcreation",
      "line": 52
    }
  ],
  "description": "",
  "name": "As User creates the loans,make repayment and verifies the tabs",
  "keyword": "Scenario",
  "line": 53,
  "type": "scenario"
});
formatter.step({
  "name": "I setup the clients",
  "keyword": "Given ",
  "line": 55,
  "rows": [
    {
      "cells": [
        "Clientnavigation.xlsx"
      ],
      "line": 56
    }
  ]
});
formatter.step({
  "name": "I entered the values into client form using",
  "keyword": "When ",
  "line": 57,
  "rows": [
    {
      "cells": [
        "Createclient.xlsx"
      ],
      "line": 58
    }
  ]
});
formatter.step({
  "name": "I should see client created successfully",
  "keyword": "Then ",
  "line": 59,
  "rows": [
    {
      "cells": [
        "Createclient.xlsx"
      ],
      "line": 60
    }
  ]
});
formatter.step({
  "name": "I set up the new create loan",
  "keyword": "When ",
  "line": 62,
  "rows": [
    {
      "cells": [
        "Newcreateloan.xlsx"
      ],
      "line": 63
    }
  ]
});
formatter.step({
  "name": "I disburse the new created loan",
  "keyword": "And ",
  "line": 64,
  "rows": [
    {
      "cells": [
        "Disburse.xlsx"
      ],
      "line": 65
    }
  ]
});
formatter.step({
  "name": "I verified the \"Summary\" details successfully",
  "keyword": "Then ",
  "line": 66,
  "rows": [
    {
      "cells": [
        "Newcreateloan.xlsx"
      ],
      "line": 67
    }
  ]
});
formatter.step({
  "name": "I verified the \"Repayment Schedule\" details successfully",
  "keyword": "And ",
  "line": 68,
  "rows": [
    {
      "cells": [
        "Newcreateloan.xlsx"
      ],
      "line": 69
    }
  ]
});
formatter.step({
  "name": "I make repayment and verified the following tabs",
  "keyword": "When ",
  "line": 71,
  "rows": [
    {
      "cells": [
        "Makerepayment1.xlsx",
        "Summary",
        "Repayment Schedule",
        "Transactions"
      ],
      "line": 72
    },
    {
      "cells": [
        "Makerepayment2.xlsx",
        "Summary",
        "Repayment Schedule",
        "Transactions"
      ],
      "line": 73
    }
  ]
});
formatter.step({
  "name": "I disburse the new created loan",
  "keyword": "And ",
  "line": 75,
  "rows": [
    {
      "cells": [
        "Disburse1.xlsx"
      ],
      "line": 76
    }
  ]
});
formatter.match({
  "location": "ClientSteps.I_setup_the_clients(String\u003e)"
});
formatter.result({
  "duration": 13529288773,
  "status": "passed"
});
formatter.match({
  "location": "ClientSteps.I_entered_the_values_into_client_form_using(String\u003e)"
});
formatter.result({
  "duration": 12089461401,
  "status": "failed",
  "error_message": "java.lang.AssertionError: unknown error: Element is not clickable at point (489, 68). Other element would receive the click: \u003cdiv class\u003d\"collapse navbar-collapse\" id\u003d\"bs-example-navbar-collapse-1\"\u003e...\u003c/div\u003e\n  (Session info: chrome\u003d40.0.2214.115)\n  (Driver info: chromedriver\u003d2.8.241075,platform\u003dWindows NT 6.3 x86_64) (WARNING: The server did not provide any stacktrace information)\nCommand duration or timeout: 83 milliseconds\nBuild info: version: \u00272.29.1\u0027, revision: \u0027dfb1306b85be4934d23c123122e06e602a15e446\u0027, time: \u00272013-01-22 12:58:05\u0027\nSystem info: os.name: \u0027Windows 8\u0027, os.arch: \u0027amd64\u0027, os.version: \u00276.2\u0027, java.version: \u00271.7.0_51\u0027\nSession ID: 9acaa17d26924554db0a60ff533e234f\nDriver info: org.openqa.selenium.chrome.ChromeDriver\nCapabilities [{platform\u003dXP, acceptSslCerts\u003dtrue, javascriptEnabled\u003dtrue, browserName\u003dchrome, chrome\u003d{userDataDir\u003dC:\\Users\\15\\AppData\\Local\\Temp\\scoped_dir11500_4928}, rotatable\u003dfalse, locationContextEnabled\u003dtrue, version\u003d40.0.2214.115, takesHeapSnapshot\u003dtrue, cssSelectorsEnabled\u003dtrue, databaseEnabled\u003dfalse, handlesAlerts\u003dtrue, browserConnectionEnabled\u003dfalse, webStorageEnabled\u003dtrue, nativeEvents\u003dtrue, applicationCacheEnabled\u003dfalse, takesScreenshot\u003dtrue}]\r\n\tat org.junit.Assert.fail(Assert.java:88)\r\n\tat com.mifos.pages.MifosWebPage.clickButton(MifosWebPage.java:1096)\r\n\tat com.mifos.pages.MifosWebPage.clickButton(MifosWebPage.java:1119)\r\n\tat com.mifos.pages.MifosWebPage.clickButton(MifosWebPage.java:1031)\r\n\tat com.mifos.pages.FrontPage.createClientExcelsheet(FrontPage.java:587)\r\n\tat com.mifos.pages.FrontPage.clientExcelSheet(FrontPage.java:521)\r\n\tat com.mifos.steps.ClientSteps.I_entered_the_values_into_client_form_using(ClientSteps.java:22)\r\n\tat ✽.When I entered the values into client form using(src\\test\\resources\\features\\Client.feature:57)\r\n"
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
  "location": "ClientSteps.I_make_repayment_and_verified_the_following_tabs(DataTable)"
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
formatter.embedding("image/png", "embedded0.png");
});
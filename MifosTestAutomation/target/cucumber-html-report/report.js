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
  "duration": 2271839420,
  "status": "passed"
});
formatter.match({
  "location": "LoginSteps.I_use_login_folder()"
});
formatter.result({
  "duration": 16316495,
  "status": "passed"
});
formatter.match({
  "location": "LoginSteps.I_login_into_mifos_site_using_excel_sheet(String\u003e)"
});
formatter.result({
  "duration": 22677470462,
  "status": "passed"
});
formatter.match({
  "location": "LoginSteps.I_should_see_login_successfully()"
});
formatter.result({
  "duration": 67027140,
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
  "duration": 15348404810,
  "status": "passed"
});
formatter.match({
  "location": "LoanProductSteps.I_entered_the_values_into_product_loan_using(String\u003e)"
});
formatter.result({
  "duration": 111373961441,
  "status": "passed"
});
formatter.match({
  "location": "LoanProductSteps.I_should_see_product_loan_created_successfully(String\u003e)"
});
formatter.result({
  "duration": 33720198743,
  "status": "failed",
  "error_message": "java.lang.NullPointerException\r\n\tat org.openqa.selenium.support.events.EventFiringWebDriver.extractInterfaces(EventFiringWebDriver.java:117)\r\n\tat org.openqa.selenium.support.events.EventFiringWebDriver.access$500(EventFiringWebDriver.java:63)\r\n\tat org.openqa.selenium.support.events.EventFiringWebDriver$EventFiringWebElement.\u003cinit\u003e(EventFiringWebDriver.java:318)\r\n\tat org.openqa.selenium.support.events.EventFiringWebDriver$EventFiringWebElement.\u003cinit\u003e(EventFiringWebDriver.java:312)\r\n\tat org.openqa.selenium.support.events.EventFiringWebDriver.createWebElement(EventFiringWebDriver.java:282)\r\n\tat org.openqa.selenium.support.events.EventFiringWebDriver.findElement(EventFiringWebDriver.java:182)\r\n\tat org.openqa.selenium.support.ui.ExpectedConditions.findElement(ExpectedConditions.java:523)\r\n\tat org.openqa.selenium.support.ui.ExpectedConditions.access$000(ExpectedConditions.java:39)\r\n\tat org.openqa.selenium.support.ui.ExpectedConditions$4.apply(ExpectedConditions.java:130)\r\n\tat org.openqa.selenium.support.ui.ExpectedConditions$4.apply(ExpectedConditions.java:126)\r\n\tat org.openqa.selenium.support.ui.FluentWait.until(FluentWait.java:208)\r\n\tat com.mifos.pages.MifosWebPage.waitForElementToBeVisible(MifosWebPage.java:210)\r\n\tat com.mifos.pages.MifosWebPage.getElement(MifosWebPage.java:699)\r\n\tat com.mifos.pages.MifosWebPage.getElement(MifosWebPage.java:684)\r\n\tat com.mifos.pages.MifosWebPage.getSingleText(MifosWebPage.java:941)\r\n\tat com.mifos.pages.MifosWebPage.validateSame(MifosWebPage.java:947)\r\n\tat com.mifos.pages.MifosWebPage.verifySuccessMessage(MifosWebPage.java:1815)\r\n\tat com.mifos.pages.FrontPage.verifyProductLoanExcelSheet(FrontPage.java:470)\r\n\tat com.mifos.steps.LoanProductSteps.I_should_see_product_loan_created_successfully(LoanProductSteps.java:27)\r\n\tat ✽.Then I should see product loan created successfully(src\\test\\resources\\features\\Ontimerepayment.feature:17)\r\n"
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
  "status": "skipped"
});
formatter.match({
  "location": "LoginSteps.I_use_login_folder()"
});
formatter.result({
  "status": "skipped"
});
formatter.match({
  "location": "LoginSteps.I_login_into_mifos_site_using_excel_sheet(String\u003e)"
});
formatter.result({
  "status": "skipped"
});
formatter.match({
  "location": "LoginSteps.I_should_see_login_successfully()"
});
formatter.result({
  "status": "skipped"
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
  "status": "skipped"
});
formatter.match({
  "location": "LoginSteps.I_use_login_folder()"
});
formatter.result({
  "status": "skipped"
});
formatter.match({
  "location": "LoginSteps.I_login_into_mifos_site_using_excel_sheet(String\u003e)"
});
formatter.result({
  "status": "skipped"
});
formatter.match({
  "location": "LoginSteps.I_should_see_login_successfully()"
});
formatter.result({
  "status": "skipped"
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
  "status": "skipped"
});
formatter.match({
  "location": "LoanProductSteps.I_entered_the_values_into_product_loan_using(String\u003e)"
});
formatter.result({
  "status": "skipped"
});
formatter.match({
  "location": "LoanProductSteps.I_should_see_product_loan_created_successfully(String\u003e)"
});
formatter.result({
  "status": "skipped"
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
  "status": "skipped"
});
formatter.match({
  "location": "LoginSteps.I_use_login_folder()"
});
formatter.result({
  "status": "skipped"
});
formatter.match({
  "location": "LoginSteps.I_login_into_mifos_site_using_excel_sheet(String\u003e)"
});
formatter.result({
  "status": "skipped"
});
formatter.match({
  "location": "LoginSteps.I_should_see_login_successfully()"
});
formatter.result({
  "status": "skipped"
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
  "status": "skipped"
});
formatter.match({
  "location": "LoginSteps.I_use_login_folder()"
});
formatter.result({
  "status": "skipped"
});
formatter.match({
  "location": "LoginSteps.I_login_into_mifos_site_using_excel_sheet(String\u003e)"
});
formatter.result({
  "status": "skipped"
});
formatter.match({
  "location": "LoginSteps.I_should_see_login_successfully()"
});
formatter.result({
  "status": "skipped"
});
formatter.scenario({
  "id": "client;loan7-rbi-ei-db-dl-rec-nocom-rni-ctrfd-sar-md-tr-1-ontime;;2",
  "tags": [
    {
      "name": "@scenario3",
      "line": 69
    }
  ],
  "description": "",
  "name": "Loan7-RBI-EI-DB-DL-REC-NOCOM-RNI-CTRFD-SAR-MD-TR-1-ONTIME",
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
  "status": "skipped"
});
formatter.match({
  "location": "LoanProductSteps.I_entered_the_values_into_product_loan_using(String\u003e)"
});
formatter.result({
  "status": "skipped"
});
formatter.match({
  "location": "LoanProductSteps.I_should_see_product_loan_created_successfully(String\u003e)"
});
formatter.result({
  "status": "skipped"
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
  "status": "skipped"
});
formatter.match({
  "location": "LoginSteps.I_use_login_folder()"
});
formatter.result({
  "status": "skipped"
});
formatter.match({
  "location": "LoginSteps.I_login_into_mifos_site_using_excel_sheet(String\u003e)"
});
formatter.result({
  "status": "skipped"
});
formatter.match({
  "location": "LoginSteps.I_should_see_login_successfully()"
});
formatter.result({
  "status": "skipped"
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
  "status": "skipped"
});
formatter.match({
  "location": "LoginSteps.I_use_login_folder()"
});
formatter.result({
  "status": "skipped"
});
formatter.match({
  "location": "LoginSteps.I_login_into_mifos_site_using_excel_sheet(String\u003e)"
});
formatter.result({
  "status": "skipped"
});
formatter.match({
  "location": "LoginSteps.I_should_see_login_successfully()"
});
formatter.result({
  "status": "skipped"
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
  "status": "skipped"
});
formatter.match({
  "location": "LoanProductSteps.I_entered_the_values_into_product_loan_using(String\u003e)"
});
formatter.result({
  "status": "skipped"
});
formatter.match({
  "location": "LoanProductSteps.I_should_see_product_loan_created_successfully(String\u003e)"
});
formatter.result({
  "status": "skipped"
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
  "status": "skipped"
});
formatter.match({
  "location": "LoginSteps.I_use_login_folder()"
});
formatter.result({
  "status": "skipped"
});
formatter.match({
  "location": "LoginSteps.I_login_into_mifos_site_using_excel_sheet(String\u003e)"
});
formatter.result({
  "status": "skipped"
});
formatter.match({
  "location": "LoginSteps.I_should_see_login_successfully()"
});
formatter.result({
  "status": "skipped"
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
  "status": "skipped"
});
formatter.match({
  "location": "LoginSteps.I_use_login_folder()"
});
formatter.result({
  "status": "skipped"
});
formatter.match({
  "location": "LoginSteps.I_login_into_mifos_site_using_excel_sheet(String\u003e)"
});
formatter.result({
  "status": "skipped"
});
formatter.match({
  "location": "LoginSteps.I_should_see_login_successfully()"
});
formatter.result({
  "status": "skipped"
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
        "53RBI-EI-DB-SAR-REC-NOCOM-RNI-CTPD-SAR-MD-TR-1-ONTIME-Loanproduct4.xl
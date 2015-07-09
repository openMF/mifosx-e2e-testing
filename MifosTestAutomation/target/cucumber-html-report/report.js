$(document).ready(function() {var formatter = new CucumberHTML.DOMFormatter($('.cucumber-report'));formatter.uri("src\\test\\resources\\features\\AccountVerify.feature");
formatter.feature({
  "id": "loanrbi",
  "description": "",
  "name": "LoanRBI",
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
  "name": "I login into mifos site using \"Login\" excel sheet",
  "keyword": "And ",
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
  "duration": 1762492104,
  "status": "passed"
});
formatter.match({
  "location": "LoginSteps.I_use_login_folder()"
});
formatter.result({
  "duration": 4009379,
  "status": "passed"
});
formatter.match({
  "arguments": [
    {
      "val": "Login",
      "offset": 31
    }
  ],
  "location": "LoginSteps.I_login_into_mifos_site_using_excel_sheet(String,String\u003e)"
});
formatter.result({
  "duration": 12158040639,
  "status": "passed"
});
formatter.match({
  "location": "LoginSteps.I_should_see_login_successfully()"
});
formatter.result({
  "duration": 67305225,
  "status": "passed"
});
formatter.scenario({
  "id": "loanrbi;as-user-creates-the-loan,-disburse,-make-repayment-and-verifies",
  "tags": [
    {
      "name": "@AccountVerify",
      "line": 9
    }
  ],
  "description": "",
  "name": "As User creates the loan, disburse, make repayment and verifies",
  "keyword": "Scenario",
  "line": 10,
  "type": "scenario"
});
formatter.step({
  "name": "I setup the clients \"Setup\"",
  "keyword": "Given ",
  "line": 12,
  "rows": [
    {
      "cells": [
        "Clientnavigation.xlsx"
      ],
      "line": 13
    }
  ]
});
formatter.step({
  "name": "I entered the values into client from \"Input\" sheet \u0026 Verified",
  "keyword": "Then ",
  "line": 14,
  "rows": [
    {
      "cells": [
        "Createclient.xlsx"
      ],
      "line": 15
    }
  ]
});
formatter.step({
  "name": "I set up the new create loan from \"NewLoanInput\" sheet",
  "keyword": "When ",
  "line": 17,
  "rows": [
    {
      "cells": [
        "Newcreateloan.xlsx"
      ],
      "line": 18
    }
  ]
});
formatter.step({
  "name": "I verified the \"Transactions\" details successfully",
  "keyword": "And ",
  "line": 19,
  "rows": [
    {
      "cells": [
        "Newcreateloan.xlsx"
      ],
      "line": 20
    }
  ]
});
formatter.step({
  "name": "I make repayment and verified the following tabs",
  "keyword": "When ",
  "line": 21,
  "rows": [
    {
      "cells": [
        "Makerepayment1.xlsx",
        "Input",
        "Transactions"
      ],
      "line": 22
    }
  ]
});
formatter.step({
  "name": "I Navigate to Accounting",
  "keyword": "Then ",
  "line": 25,
  "comments": [
    {
      "value": "#\t|Makerepayment2.xlsx|Input|Summary|Repayment Schedule|Transactions|",
      "line": 23
    },
    {
      "value": "#\t|Makerepayment3.xlsx|Input|Summary|Repayment Schedule|Transactions|",
      "line": 24
    }
  ]
});
formatter.step({
  "name": "I search with transaction id \u0026 verified the details successfully",
  "keyword": "And ",
  "line": 26,
  "rows": [
    {
      "cells": [
        "Newcreateloan.xlsx",
        "Disbursement",
        "Repaymentdisbursement",
        "Repayment"
      ],
      "line": 27
    }
  ]
});
formatter.match({
  "arguments": [
    {
      "val": "Setup",
      "offset": 21
    }
  ],
  "location": "ClientSteps.I_setup_the_clients(String,String\u003e)"
});
formatter.result({
  "duration": 13199613338,
  "status": "passed"
});
formatter.match({
  "arguments": [
    {
      "val": "Input",
      "offset": 39
    }
  ],
  "location": "ClientSteps.I_entered_the_values_into_client_from_sheet(String,String\u003e)"
});
formatter.result({
  "duration": 16534326519,
  "status": "passed"
});
formatter.match({
  "arguments": [
    {
      "val": "NewLoanInput",
      "offset": 35
    }
  ],
  "location": "ClientSteps.I_set_up_the_new_create_loan_from_sheet(String,String\u003e)"
});
formatter.result({
  "duration": 47145190004,
  "status": "passed"
});
formatter.match({
  "arguments": [
    {
      "val": "Transactions",
      "offset": 16
    }
  ],
  "location": "ClientSteps.I_verified_the_details_successfully(String,String\u003e)"
});
formatter.result({
  "duration": 5784160200,
  "status": "passed"
});
formatter.match({
  "location": "ClientSteps.I_make_repayment_and_verified_the_following_tabs(DataTable)"
});
formatter.result({
  "duration": 20960052233,
  "status": "passed"
});
formatter.match({
  "location": "ClientSteps.I_Navigate_to_Accounting()"
});
formatter.result({
  "duration": 227512440,
  "status": "passed"
});
formatter.match({
  "location": "ClientSteps.I_search_with_transaction_id_verified_the_details_successfully(DataTable)"
});
formatter.result({
  "duration": 32416967502,
  "status": "passed"
});
});
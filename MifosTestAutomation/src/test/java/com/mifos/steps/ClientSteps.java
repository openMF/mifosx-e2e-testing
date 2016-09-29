package com.mifos.steps;

import java.util.List;

import org.openqa.selenium.remote.server.handler.GetCurrentUrl;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;

import com.mifos.common.TenantsUtils;
import com.mifos.pages.FrontPage;
import com.mifos.pages.MifosWebPage;
import com.mifos.testing.framework.webdriver.WebDriverAwareWebPage;

import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;


public class ClientSteps {

	final public FrontPage varFrontPage = new FrontPage();
	public String ExcelSheetPath = varFrontPage.getClientExcelSheetPath();

	@Given("^I setup the clients$")
	public void I_setup_the_clients() throws Throwable {
		
		//ExcelSheetPath = varFrontPage.getClientExcelSheetPath();
		varFrontPage.clientNavigation();
	}

	@When("^I entered the values into client from \"([^\"]*)\" sheet$")
	public void I_entered_the_values_into_client_from_sheet_Verified(String sheetName,
			List<String> excelSheet) throws Throwable {
		String excelSheetName = excelSheet.get(0).toString();
		varFrontPage.setupClient(ExcelSheetPath, excelSheetName, sheetName);
	}
	
	@Given("^I setup the group$")
	public void I_setup_the_group() throws Throwable {
		//ExcelSheetPath = varFrontPage.getClientExcelSheetPath();
		varFrontPage.groupNavigation();
	}

	@When("^I entered the values into group from \"([^\"]*)\" sheet$")
	public void I_entered_the_values_into_group_from_sheet(String sheetName,
			List<String> excelSheet) throws Throwable {
		String excelSheetName = excelSheet.get(0).toString();
		varFrontPage.setupGroup(ExcelSheetPath, excelSheetName, sheetName);
		System.out.println("group Created");
	}
	
	@Given("^I setup the center$")
	public void I_setup_the_center() throws Throwable {
		varFrontPage.centerNavigation();
	}

	@When("^I entered the values into center from \"([^\"]*)\" sheet$")
	public void I_entered_the_values_into_center_from_sheet(String sheetName,
			List<String> excelSheet) throws Throwable {
		String excelSheetName = excelSheet.get(0).toString();
		varFrontPage.setupCenter(ExcelSheetPath, excelSheetName, sheetName);
	}
	
	@Then("^I navigate to collection Sheet$")
	public void I_navigate_to_collection_Sheet() throws Throwable {
		MifosWebPage.navigateToUrl(TenantsUtils.getLocalTenantUrl()
				+ "entercollectionsheet");
		String expectedCollectionPageUrl = TenantsUtils.getLocalTenantUrl()+ "entercollectionsheet";
		String collectionPage = MifosWebPage.getWebDriver().getCurrentUrl();
		int i = 3;
		while (!collectionPage.contains("entercollectionsheet") && i>0) {
			try {
				new WebDriverWait(MifosWebPage.getWebDriver(), 30).until(ExpectedConditions.urlMatches(expectedCollectionPageUrl));
				
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				MifosWebPage.navigateToUrl(TenantsUtils.getLocalTenantUrl()
						+ "entercollectionsheet");
				collectionPage = MifosWebPage.getWebDriver().getCurrentUrl();
				i--;
			}
		}

	}
	
	@Then("^I \"([^\"]*)\" holiday$")
	public void I_holiday(String sheetName,
			List<String> excelSheet) throws Throwable {
		String excelSheetName = excelSheet.get(0).toString();
		varFrontPage.holiday(ExcelSheetPath, excelSheetName, sheetName);
	}
	
	@Given("^I create \"([^\"]*)\" As Payments due on non working days$")
	public void I_create_As_Payments_due_on_non_working_days(String arg1) throws Throwable {
		varFrontPage.createWorkingDays(arg1);
	}

	@Then("^I Make Repayment Through \"([^\"]*)\" sheet$")
	public void I_Make_Repayment_Through_sheet(String sheetName,
			List<String> excelSheet) throws Throwable {
		String excelSheetName = excelSheet.get(0).toString();
		varFrontPage.payThroughCollectionSheet(ExcelSheetPath, excelSheetName, sheetName);
	}

	
	@Then("^I Add Group for created center from \"([^\"]*)\" sheet$")
	public void I_Add_Group_for_created_center_from_sheet(String sheetName,
			List<String> excelSheet) throws Throwable {
		String excelSheetName = excelSheet.get(0).toString();
		varFrontPage.setupCenter(ExcelSheetPath, excelSheetName, sheetName);
	}
	
	@Then("^I Add Dupicate Group for created center from \"([^\"]*)\" sheet$")
	public void I_Add_Dupicate_Group_for_created_center_from_sheet(String sheetName,
			List<String> excelSheet) throws Throwable {
		String excelSheetName = excelSheet.get(0).toString();
		varFrontPage.setupCenter(ExcelSheetPath, excelSheetName, sheetName);
	}
	
	@Then("^I should see Center created successfully from \"([^\"]*)\" sheet$")
	public void I_should_see_Center_created_successfully_from_sheet(String sheetName,
 List<String> excelSheet) throws Throwable {
		String excelSheetName = excelSheet.get(0).toString();
		varFrontPage.verifyAndValidate(ExcelSheetPath, excelSheetName, sheetName);
	}
	
	@Then("^I Edit Client from \"([^\"]*)\" sheet$")
	public void I_Edit_Client_from_sheet(String sheetName,
			List<String> excelSheet) throws Throwable {
		String excelSheetName = excelSheet.get(0).toString();
		varFrontPage.setupClient(ExcelSheetPath, excelSheetName, sheetName);
	}
	
	//Then I "Transfer Client" from "Transfer Client" sheet
	@Then("^I \"([^\"]*)\" from \"([^\"]*)\" sheet$")
	public void I_from_sheet(String arg1, String sheetName,
			List<String> excelSheet) throws Throwable {
		String excelSheetName = excelSheet.get(0).toString();
		varFrontPage.transferClient(ExcelSheetPath, excelSheetName, sheetName);
	}
	
	@Then("^I should see client created successfully from \"([^\"]*)\" sheet$")
	public void I_should_see_client_created_successfully_from_sheet(String sheetName,
 List<String> excelSheet) throws Throwable {
		String excelSheetName = excelSheet.get(0).toString();
		varFrontPage.verifyAndValidate(ExcelSheetPath, excelSheetName, sheetName);
	}

/*
 * When I set up the new create loan from "NewLoanInput" sheet	
 */
	@When("^I set up the new create loan from \"([^\"]*)\" sheet$")
	public void I_set_up_the_new_create_loan_from_sheet(String sheetName,
			List<String> excelSheet) throws Throwable {
		String excelSheetName = excelSheet.get(0).toString();
		varFrontPage.setupNewLoan(ExcelSheetPath, excelSheetName,
				sheetName);
	}
	
	@When("^I modify New Loan Account from \"([^\"]*)\" sheet$")
	public void I_modify_New_Loan_Account_from_sheet(String sheetName,
			List<String> excelSheet) throws Throwable {
		String excelSheetName = excelSheet.get(0).toString();
		varFrontPage.setupNewLoan(ExcelSheetPath, excelSheetName,
				sheetName);
	}
	
	@Then("^I disburse loan from \"([^\"]*)\" sheet$")
	public void I_disburse_loan_from_sheet(String sheetName,
			List<String> excelSheet) throws Throwable {
		String excelSheetName = excelSheet.get(0).toString();
		varFrontPage.setupNewLoan(ExcelSheetPath, excelSheetName,
				sheetName);
	}

	@Then("^I verified the \"([^\"]*)\" details successfully$")
	public void I_verified_the_details_successfully(String sheetName,
			List<String> excelSheet) throws Throwable {
		String excelSheetName = excelSheet.get(0).toString();
		varFrontPage.verifyLoanTabData(ExcelSheetPath, excelSheetName, sheetName);
	}
	
	@Then("^I verified the \"([^\"]*)\" details and read the transaction Id$")
		public void I_verified_the_details_and_read_the_transaction_Id(String sheetName,
				List<String> excelSheet) throws Throwable {
			String excelSheetName = excelSheet.get(0).toString();
			varFrontPage.verifyAndReadTransactionId(ExcelSheetPath, excelSheetName, sheetName);
	}
	
	@Then("^I make repayment and verified the following tabs$")
	public void I_make_repayment_and_verified_the_following_tabs(List<List<String>> excel)
			throws Throwable {
		
		for (List<String> excelSheet : excel) {
			//	varFrontPage.makeAndVerifyRepayment(ExcelSheetPath, excelSheet);
				for (int i = 1; i < excelSheet.size(); i++) {
					varFrontPage.makeAndVerifyRepayment(ExcelSheetPath, excelSheet.get(0),excelSheet.get(i));	
				}
			}
		}
	
	/*
	 * Then I verified the following Tabs details successfully 
	 * Summary|Repayment Schedule|Transactions
	 */
	@Then("^I verified the following Tabs details successfully$")
		public void I_verified_the_following_Tabs_details_successfully(List<List<String>> excel) throws Throwable {

		for (List<String> excelSheet : excel) {
			//	varFrontPage.makeAndVerifyRepayment(ExcelSheetPath, excelSheet);
				for (int i = 1; i < excelSheet.size(); i++) {
					varFrontPage.verifyLoanTabData(ExcelSheetPath, excelSheet.get(0),excelSheet.get(i));	
				}
			}
		}
	
	@Then("^I make repayment and read the transaction Id$")
	public void I_make_repayment_and_read_the_transaction_Id(List<List<String>> excel) throws Throwable {
		
		for (List<String> excelSheet : excel) {
			for (int i = 1; i < excelSheet.size(); i++) {
				varFrontPage.makeRepaymentAndReadTransactionId(ExcelSheetPath, excelSheet.get(0),excelSheet.get(i));	
			}
		//	varFrontPage.makeRepaymentAndReadTransactionId(ExcelSheetPath, excelSheet);
	
		}
	}

	@Then("^I Navigate to Accounting web page$")
	public void I_Navigate_to_Accounting() throws Throwable {
		MifosWebPage.navigateToUrl(TenantsUtils.getLocalTenantUrl()+ MifosWebPage.getResource("AccountingSearchJournalEntries"));
	}

	@Then("^I search with transaction id & verified the accounting entries$")
	public void I_search_with_transaction_id_verified_the_accounting_entries(
			List<List<String>> excelSheet) throws Throwable {
		
		for (List<String> option : excelSheet) {
			for (int i = 1; i < option.size(); i++) {
				varFrontPage.searchWithTransactinID(ExcelSheetPath, option.get(0),option.get(i));			
			}
		}
		
	}

	@Then("^I navigate to scheduler job & execute \"([^\"]*)\"$")
	public void I_navigate_to_scheduler_job_execute(String SchedularJobName) throws Throwable{
		varFrontPage.selectSchedularJob(SchedularJobName);
		
	}
	
/*	@Then("^I \"([^\"]*)\" trance from trache tab and verified the following tabs$")
	public void I_trance_from_trache_tab_and_verified_the_following_tabs(String arg1,
			List<List<String>> excelSheet) throws Throwable {
		for (List<String> option : excelSheet) {
			for (int i = 1; i < option.size(); i++) {
				varFrontPage.loanTabDetails(ExcelSheetPath, option.get(0),option.get(i));			
			}
		}
	}*/
	
	@Then("^i validate and Verify from \"([^\"]*)\" sheet$")
	public void i_validate_and_Verify_from_sheet(String sheetName,
 List<String> excelSheet) throws Throwable {
		String excelSheetName = excelSheet.get(0).toString();
		varFrontPage.verifyAndValidate(ExcelSheetPath, excelSheetName, sheetName);
	}

	
	@Then("^I \"([^\"]*)\" and verified the following tabs$")
	public void I_and_verified_the_following_tabs(String arg1,
			List<List<String>> excelSheet) throws Throwable {
		for (List<String> option : excelSheet) {
			for (int i = 1; i < option.size(); i++) {
				varFrontPage.loanTabDetails(ExcelSheetPath, option.get(0),option.get(i));			
			}
		}
	}
	
	@Then("^I went back to the client$")
	public void I_went_back_to_the_client() throws Throwable {
		varFrontPage.clickBackToClient();
		Thread.sleep(4000);
	}



	@Then("^I search with \"([^\"])\" on mifos$")
	public void I_search_with_on_mifos(String user) throws Throwable {
		varFrontPage.searchUser(user);
	}

	@Then("^I undo the disbursal$")
	public void I_undo_the_disbursal() throws Throwable {
		varFrontPage.undoDisbursal();
	}

	/*
	 * Then I Modify Transaction
	 */
	@Then("^I Modify Transaction$")
	public void I_Modify_Transaction(
			List<List<String>> excelSheet) throws Throwable {
		
		for (List<String> option : excelSheet) {
			for (int i = 1; i < option.size(); i++) {
				varFrontPage.modifyTransaction(ExcelSheetPath, option.get(0),option.get(i));			
			}
		}
		
	}
	
	/*
	 * Then I "Edit Date " In Edit Repayment Schedule page
	 */
	@Then("^I \"([^\"]*)\" In Edit Repayment Schedule page$")
	public void I_In_Edit_Repayment_Schedule_page(String arg1,
			List<List<String>> excelSheet) throws Throwable {
		for (List<String> option : excelSheet) {
			for (int i = 1; i < option.size(); i++) {
				varFrontPage.editRepaymentSchedulePageVarInstalment(ExcelSheetPath, option.get(0),option.get(i));			
			}
		}
	   
	}

	/*
	 * And I create Account Closures Entry from "CreateAccountClosures" sheet
	 */
	@Then("^I create Account Closures Entry from \"([^\"]*)\" sheet$")
	public void I_create_Account_Closures_Entry_from_sheet(String sheetName,
			List<String> excelSheet) throws Throwable {
		String excelSheetName = excelSheet.get(0).toString();
		varFrontPage.createAccountClosuresEntry(ExcelSheetPath, excelSheetName,
				sheetName);
	}
	
	/*
	 * I Delete Account Closures Entry from "DeleteAccountClosures" sheet
	 */
	@Then("^I Delete Account Closures Entry from \"([^\"]*)\" sheet$")
	public void I_Delete_Account_Closures_Entry_from_sheet(String sheetName,
			List<String> excelSheet) throws Throwable {
		String excelSheetName = excelSheet.get(0).toString();
		varFrontPage.deleteAccountClosuresEntry(ExcelSheetPath, excelSheetName,
				sheetName);
	}

	/*
	 * Then I Execute Periodic Accrual Accounting
	 */
	@Then("^I Execute Periodic Accrual Accounting$")
	public void I_Execute_Periodic_Accrual_Accounting(List<List<String>> excel)
			throws Throwable {

		for (List<String> excelSheet : excel) {
			for (int i = 1; i < excelSheet.size(); i++) {
				varFrontPage.RunPeriodicAccrual(ExcelSheetPath,
						excelSheet.get(0), excelSheet.get(i));
			}
		}
	}
	
	@Then("^I Navigate Back to Current Center Page from \"([^\"]*)\" sheet$")
	public void I_Navigate_Back_to_Current_Center_Page_from_sheet(String sheetName,
			List<String> excelSheet) throws Throwable {
		String excelSheetName = excelSheet.get(0).toString();
		varFrontPage.navigateToCurrentCenterPage(ExcelSheetPath, excelSheetName,
				sheetName);
	}
	
	@Then("^I navigate To Loan Account Page$")
	public void I_navigate_To_Loan_Account_Page() throws Throwable {
		varFrontPage.navigateLoanAccounting();
		}
	
/*	@When("^I set up the new savings$")
	public void I_set_up_the_new_savings(String sheetName,
			List<String> excelSheetName) throws Throwable {
		varFrontPage.createNewLoan(ExcelSheetPath, excelSheetName,
				sheetName);
	}*/

/*	@When("^I make prepayloan and verified the following tabs$")
	public void I_make_prepay_and_verified_the_following_tabs(DataTable excel)
			throws Throwable {
		varFrontPage.createMakeRepayment(ExcelSheetPath, excel);
	}*/

}

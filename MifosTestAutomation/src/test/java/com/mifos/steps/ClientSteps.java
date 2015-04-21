package com.mifos.steps;

import java.util.List;

import com.mifos.pages.FrontPage;

import cucumber.api.DataTable;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;

public class ClientSteps {
	final public FrontPage varFrontPage = new FrontPage();

	@Given("^I setup the clients$")
	public void I_setup_the_clients(List<String> excelsheet) throws Throwable {
		varFrontPage.setupClient(excelsheet);
	}

	@Given("^I entered the values into client form using$")
	public void I_entered_the_values_into_client_form_using(
			List<String> excelsheet) throws Throwable {
		varFrontPage.clientExcelSheet(excelsheet);
	}

	@Then("^I should see client created successfully$")
	public void I_should_see_client_loan_created_successfully(
			List<String> excelsheet) throws Throwable {
		varFrontPage.verifyClientExcelSheet(excelsheet);
	}

	@When("^I set up the new create loan$")
	public void I_set_up_the_activation_and_new_create_loan(
			List<String> excelsheet) throws Throwable {
		varFrontPage.createNewLoanExcelSheet(excelsheet);
	}

	@Then("^I verified the \"([^\"]*)\" details successfully$")
	public void I_verified_the_details_successfully(String sheetname,
			List<String> excelsheet) throws Throwable {
		varFrontPage.verifyTabsdata(sheetname, excelsheet);
	}

	@Then("^I went back to the client$")
	public void I_went_back_to_the_client() throws Throwable {
		varFrontPage.clickBackToClient();
		Thread.sleep(4000);
	}

	@When("^I make repayment and verified the following tabs$")
	public void I_make_repayment_and_verified_the_following_tabs(DataTable excel)
			throws Throwable {
			varFrontPage.createMakeRepayment(excel);
	}

	@Then("^I disburse the new created loan$")
	public void I_disburse_the_new_created_loan(List<String> excelsheet)
			throws Throwable {
		varFrontPage.createNewLoanExcelSheet(excelsheet);
	}

	@Then("^I search with \"([^\"]*)\" on mifos$")
	public void I_search_with_on_mifos(String user) throws Throwable {
		varFrontPage.searchUser(user);		
	}

	@Then("^I undo the disbursal$")
	public void I_undo_the_disbursal() throws Throwable {
		varFrontPage.undoDisbursal();
	}
	@Then("^I make reverse of transaction$")
	public void I_make_reverse_of_transaction() throws Throwable {
		varFrontPage.reverseTransaction();
	}
	
	@When("^I set up the new savings$")
	public void I_set_up_the_new_savings(List<String> excelsheet) throws Throwable {
		varFrontPage.createNewLoanExcelSheet(excelsheet);  
	}
	
	@When("^I make prepayloan and verified the following tabs$")
	public void I_make_prepay_and_verified_the_following_tabs(DataTable excel) throws Throwable {
		varFrontPage.createMakeRepayment(excel);
	}
}

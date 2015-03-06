package com.mifos.steps;

import java.util.List;

import com.mifos.pages.FrontPage;
import cucumber.api.java.en.And;
import cucumber.api.java.en.Given;

public class LoanProductSteps {
	final public FrontPage varFrontPage = new FrontPage();
	
	@Given("^I setup the product loan$")
	public void I_setup_the_product_loan(List<String> excelsheet)
			throws Throwable {
		varFrontPage.setup(excelsheet);
	}
	
	@And("^I entered the values into product loan using$")
	public void I_entered_the_values_into_product_loan_using(
			List<String> excelsheet) throws Throwable {
		varFrontPage.productLoanExcelSheet(excelsheet);
	}
}
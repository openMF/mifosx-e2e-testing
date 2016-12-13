package com.mifos.steps;

import java.util.List;

import com.mifos.pages.FrontPage;

import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;


public class LoanProductSteps {

	final public FrontPage varFrontPage = new FrontPage();
	public String ExcelSheetPath = varFrontPage.getProductExcelSheetPath();
	
	@Given("^I setup the product loan \"([^\"]*)\"$")
	public void I_setup_the_product_loan(String sheetName,
			List<String> excelSheetName) throws Throwable {
		ExcelSheetPath = varFrontPage.getProductExcelSheetPath();
		
		varFrontPage.productNavigation(ExcelSheetPath, excelSheetName,
				sheetName);
	}
	
	@Given("^I setup the \"([^\"]*)\" product$")
	public void I_setup_the_product_saving(String sheetName,
			List<String> excelSheetName) throws Throwable {
		ExcelSheetPath = varFrontPage.getProductExcelSheetPath();
		
		varFrontPage.productNavigation(ExcelSheetPath, excelSheetName,
				sheetName);
	}

	@Then("^I entered the values into product from \"([^\"]*)\" Sheet$")
	public void I_entered_the_values_into_product_loan_from_Sheet_Verified(
			String sheetName, List<String> excelSheet) throws Throwable {
		String excelSheetName = excelSheet.get(0).toString();
		varFrontPage.setupLoanProduct(ExcelSheetPath, excelSheetName,
				sheetName);
	}
	
	@Then("^I should see product loan created successfully	from \"([^\"]*)\" Sheet$")
	public void I_should_see_product_loan_created_successfully_from_Sheet(
			String sheetName, List<String> excelSheet) throws Throwable {
		String excelSheetName = excelSheet.get(0).toString();
		varFrontPage.verifyProduct(ExcelSheetPath, excelSheetName, sheetName);

	}
	
	@Given("^I Define floating rates for loan products from \"([^\"]*)\" Sheet$")
	public void I_Define_floating_rates_for_loan_products_from_Sheet(
			String sheetName, List<String> excelSheet) throws Throwable {
		String excelSheetName = excelSheet.get(0).toString();
		varFrontPage.defineFloatingRates(ExcelSheetPath, excelSheetName, sheetName);

	}
	

}
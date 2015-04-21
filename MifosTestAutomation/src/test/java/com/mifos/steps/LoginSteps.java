/**
 *
 */
package com.mifos.steps;

import java.util.List;
import com.mifos.pages.FrontPage;
import com.mifos.pages.MifosWebPage;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;


/**
 * @author salma
 * 
 */
public class LoginSteps {

	final public FrontPage varFrontPage = new FrontPage();
	String folderName = "";

	@Given("^I navigate to mifos$")
	public void I_navigate_to_mifos() throws Throwable {
		varFrontPage.navigateToUrl(MifosWebPage.BASE_URL
				+ MifosWebPage.getResource("home"));
	}

	@Given("^I use login folder$")
	public void I_use_login_folder() throws Throwable {
		folderName = varFrontPage.folder();
	}

	@Given("^I login into mifos site using excel sheet$")
	public void I_login_into_mifos_site_using_excel_sheet(
			List<String> excelsheet) throws Throwable {
		varFrontPage.loginExcelsheet(folderName, excelsheet);
	}

	/** VERIFICATION **/

	@Then("^I should see logged in successfully$")
	public void I_should_see_login_successfully() throws Throwable {
		varFrontPage.verifyPartialSuccessMessage("frontend.logged.successfully",
				"Welcome,", "css");
	}
}

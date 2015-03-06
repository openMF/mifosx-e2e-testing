/**
 *
 */
package com.mifos.pages;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.xssf.usermodel.XSSFCell;
import org.apache.poi.xssf.usermodel.XSSFSheet;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.openqa.selenium.By;
import org.openqa.selenium.Keys;
import org.openqa.selenium.support.ui.Select;
/**
 * @author salma
 * 
 */
public class FrontPage extends MifosWebPage {

	String value = "";

	// //////// login /////////

	public void loginExcelsheet(String folderName, List<String> value)
			throws Throwable {
		for (String name : value) {
			excelsheet(folderName, name);
		}
	}

	public void excelsheet(String folderName, String name) throws Throwable {
		XSSFCell cell1 = null;
		XSSFCell cell2 = null;
		try {
			FileInputStream file = new FileInputStream(new File(folderName
					+ "\\" + name));
			XSSFWorkbook workbook = new XSSFWorkbook(file);
			XSSFSheet sheet = workbook.getSheetAt(0);
			System.out.println("welcome to mifos through excel");

			Iterator<Row> rowIterator = sheet.iterator();
			while (rowIterator.hasNext()) {
				Row row = rowIterator.next();

				Iterator<Cell> cellIterator = row.cellIterator();
				while (cellIterator.hasNext()) {
					cell1 = (XSSFCell) cellIterator.next();
					System.out.println("Cell One ... key="
							+ cell1.getRichStringCellValue());
					String key = cell1.getRichStringCellValue().toString();
					if (!cellIterator.hasNext()) {
						System.out.println("No Such Element");
					} else {
						cell2 = (XSSFCell) cellIterator.next();
						switch (cell2.getCellType()) {
						case Cell.CELL_TYPE_NUMERIC:
							int i = (int) cell2.getNumericCellValue();
							value = String.valueOf(i);
							submitLogin_excel(key, value);
							break;
						case Cell.CELL_TYPE_STRING:
							System.out.println("Cell Two ... value="
									+ cell2.getRichStringCellValue());
							value = cell2.getRichStringCellValue().toString();
							submitLogin_excel(key, value);
							break;
						}
					}
				}
			}
			clickSignup();
			Thread.sleep(7000);
			file.close();
		} catch (FileNotFoundException fnfe) {
			fnfe.printStackTrace();
		} catch (IOException ioe) {
			ioe.printStackTrace();
		}
	}

	public void clickSignup() {
		clickButton(getResource("frontend.login.signup"), "id");
	}

	public void submitLogin_excel(String key, String value) {
		HashMap<String, String> logindetails = new HashMap<String, String>();
		logindetails.put("frontend.login." + key, value);
		submitIDValues(logindetails);
	}

	public String folder() {
		return getResource("loginfolder");
	}

	// //////// Loan Product /////////

	public void setup(List<String> excelsheet) throws Throwable {
		for (String excelname : excelsheet) {
			XSSFCell cell1 = null;
			XSSFCell cell2 = null;
			try {
				FileInputStream file = new FileInputStream(new File(
						(getResource("productfolder")) + "\\" + excelname));
				XSSFWorkbook workbook = new XSSFWorkbook(file);
				XSSFSheet sheet = workbook.getSheetAt(0);
				System.out.println("welcome to mifos through excel");

				Iterator<Row> rowIterator = sheet.iterator();
				while (rowIterator.hasNext()) {
					Row row = rowIterator.next();

					Iterator<Cell> cellIterator = row.cellIterator();
					while (cellIterator.hasNext()) {
						cell1 = (XSSFCell) cellIterator.next();
						System.out.println("Cell One ... key="
								+ cell1.getRichStringCellValue());
						String key = cell1.getRichStringCellValue().toString();
						if (!cellIterator.hasNext()) {
							System.out.println("No Such Element");
						} else {
							cell2 = (XSSFCell) cellIterator.next();
							switch (key) {
							case "NavigateURL":
								System.out.println(cell2);
								navigateToUrl(MifosWebPage.BASE_URL + cell2);
								Thread.sleep(3000);
								break;
							case "click":
								clickButton(
										getResource("frontend.admin.products."
												+ cell2), "xpath");
								Thread.sleep(2000);
								break;
							case "createclick":
								clickButton(
										getResource("frontend.admin.products.loanproducts."
												+ cell2), "xpath");
								Thread.sleep(3000);
								break;
							}
						}
					}
				}
				Thread.sleep(7000);
				file.close();
			} catch (FileNotFoundException fnfe) {
				fnfe.printStackTrace();
			} catch (IOException ioe) {
				ioe.printStackTrace();
			}
		}
	}

	public void productLoanExcelSheet(List<String> excelsheet) throws Throwable {
		for (String excelname : excelsheet) {
			XSSFCell cell1 = null;
			XSSFCell cell2 = null;
			try {
				FileInputStream file = new FileInputStream(new File(
						(getResource("productfolder")) + "\\" + excelname));
				XSSFWorkbook workbook = new XSSFWorkbook(file);
				XSSFSheet sheet = workbook.getSheetAt(0);
				System.out.println("welcome to mifos through excel");

				Iterator<Row> rowIterator = sheet.iterator();
				while (rowIterator.hasNext()) {
					Row row = rowIterator.next();

					Iterator<Cell> cellIterator = row.cellIterator();
					while (cellIterator.hasNext()) {
						cell1 = (XSSFCell) cellIterator.next();
						System.out.println("Cell One ... key="
								+ cell1.getRichStringCellValue());
						String key = cell1.getRichStringCellValue().toString();
						if (!cellIterator.hasNext()) {
							System.out.println("No Such Element");
						} else {
							// cell iterator by calling its next method
							cell2 = (XSSFCell) cellIterator.next();
							switch (cell2.getCellType()) {
							case Cell.CELL_TYPE_NUMERIC:
								int i = (int) cell2.getNumericCellValue();
								value = String.valueOf(i);
								createLoanProductExcelsheet(key, value);
								break;
							case Cell.CELL_TYPE_STRING:
								System.out.println("Cell Two ... value="
										+ cell2.getRichStringCellValue());
								String value = cell2.getRichStringCellValue()
										.toString();
								createLoanProductExcelsheet(key, value);
								break;
							}
						}
					}
				}
				clickButton(
						getResource("frontend.admin.createoffice.savebutton"),
						"id");
				Thread.sleep(7000);
				file.close();
			} catch (FileNotFoundException fnfe) {
				fnfe.printStackTrace();
			} catch (IOException ioe) {
				ioe.printStackTrace();
			}
		}
	}

	public void createLoanProductExcelsheet(String key, String value)
			throws InterruptedException {
		HashMap<String, String> loanproduct = new HashMap<String, String>();
		switch (key) {
		case "fundsource":
			clickButton(
					getResource("frontend.admin.products.createloan.periodic"),
					"xpath");
			clickButton(getResource("frontend.admin.products.createloan.asset."
					+ key), "xpath");
			HashMap<String, String> fundsource = new HashMap<String, String>();
			fundsource.put("frontend.admin.products.createloan.asset." + key
					+ ".input", value);
			submitXPathValues(fundsource);
			getElement(
					getResource("frontend.admin.products.createloan.asset."
							+ key + ".input"), "xpath").sendKeys(Keys.TAB);
			break;
		case "loanprotfolio":
		case "interestreceivable":
		case "feesreceivable":
		case "penaltiesreceivable":
		case "transferinsuspense":
			clickButton(getResource("frontend.admin.products.createloan.asset."
					+ key), "xpath");
			HashMap<String, String> transferinsuspense = new HashMap<String, String>();
			transferinsuspense.put("frontend.admin.products.createloan.asset."
					+ key + ".input", value);
			submitXPathValues(transferinsuspense);
			getElement(
					getResource("frontend.admin.products.createloan.asset."
							+ key + ".input"), "xpath").sendKeys(Keys.TAB);
			break;
		case "incomefrominterest":
		case "incomefromfees":
		case "incomefrompenalties":
		case "incomefromrecoveryrepayments":
			clickButton(
					getResource("frontend.admin.products.createloan.income."
							+ key), "xpath");
			HashMap<String, String> income = new HashMap<String, String>();
			income.put("frontend.admin.products.createloan.income." + key
					+ ".input", value);
			submitXPathValues(income);
			getElement(
					getResource("frontend.admin.products.createloan.income."
							+ key + ".input"), "xpath").sendKeys(Keys.TAB);
			break;
		case "loseswrittenoff":
			clickButton(
					getResource("frontend.admin.products.createloan.expenses."
							+ key), "xpath");
			HashMap<String, String> loseswrittenoff = new HashMap<String, String>();
			loseswrittenoff.put("frontend.admin.products.createloan.expenses."
					+ key + ".input", value);
			submitXPathValues(loseswrittenoff);
			getElement(
					getResource("frontend.admin.products.createloan.expenses."
							+ key + ".input"), "xpath").sendKeys(Keys.TAB);
			break;
		case "overpaymentliability":
			clickButton(
					getResource("frontend.admin.products.createloan.liabilities."
							+ key), "xpath");
			HashMap<String, String> overpaymentliability = new HashMap<String, String>();
			overpaymentliability.put(
					"frontend.admin.products.createloan.liabilities." + key
							+ ".input", value);
			submitXPathValues(overpaymentliability);
			getElement(
					getResource("frontend.admin.products.createloan.liabilities."
							+ key + ".input"), "xpath").sendKeys(Keys.TAB);
			break;
		case "amortization":
			Select select = new Select(getWebDriver().findElement(
					By.id("amortizationType")));
			if (value.equals("Equal installments")) {
				System.out.println(value);
				select.selectByIndex(0);
			} else {
				System.out.println(value);
				select.selectByIndex(1);
			}
			break;
		case "productname":
		case "shortname":
		case "principaldefault":
		case "numberofrepayments":
		case "nominalinterestrate":
		case "rapidevery":
			loanproduct.put("frontend.admin.products.createloan." + key, value);
			submitIDValues(loanproduct, true);
			break;
		}
	}
}
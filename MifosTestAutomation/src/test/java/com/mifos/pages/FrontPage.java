/**
 *
 */
package com.mifos.pages;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.math.BigDecimal;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.ParsePosition;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;

import org.apache.poi.hssf.usermodel.HSSFDateUtil;
import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.xssf.usermodel.XSSFCell;
import org.apache.poi.xssf.usermodel.XSSFSheet;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.junit.Assert;
import org.openqa.selenium.By;
import org.openqa.selenium.JavascriptExecutor;
import org.openqa.selenium.Keys;
import org.openqa.selenium.WebElement;

import com.ibm.icu.text.NumberFormat;
import com.mifos.testing.framework.webdriver.LazyWebElement;

import cucumber.api.DataTable;


//import org.jopendocument.dom.spreadsheet.MutableCell;
//import org.jopendocument.dom.spreadsheet.Sheet;
//import org.jopendocument.dom.spreadsheet.SpreadSheet;
/**
 * @author salma
 * 
 */
public class FrontPage extends MifosWebPage {

	String value = "";
	public String rowval;

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

	public void setupProduct(List<String> excelsheet) throws Throwable {
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
								String cell2value=cell2.getRichStringCellValue().toString();
								if(cell2value.equals("createloanproduct")){
									clickButton(
											getResource("frontend.admin.products.loanproducts."
													+ cell2), "xpath");
							
								}else{
								clickButton(
										getResource("frontend.admin.products.charges."
												+ cell2), "xpath");
								}
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
								if (HSSFDateUtil.isCellDateFormatted(cell2)) {
									DateFormat dateFormat = new SimpleDateFormat(
											"dd MMMM yyyy");
									Date date = cell2.getDateCellValue();
									createLoanProductExcelsheet(key,
											dateFormat.format(date));
								} else {
									createLoanProductExcelsheet(key, value);
								}
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
		case "repaideveryfrequency":
		case "nominalinterestratefrequency":
		case "interestmethod":
		case "repaymentstrategy":
		case "interestcalculationperiod":
		case "daysinyear":
		case "daysinmonth":
		case "interestrecalculationcompoundingon":
		case "advancepaymentsadjustmenttype":
		case "preclosureinterestcalculationrule":
		case "frequencyforrecalculateoutstandingprincipal":
		case "currency":
		case "fund":
			selectDropDownvalues("frontend.admin.products.createloan." + key,
					"id", "text", value);
			break;
		case "overduecharges":
		case "charges":
			selectDropDownvalues("frontend.admin.products.createloan." + key,
					"id", "text", value);
			Thread.sleep(3000);
			clickButton(getResource("frontend.admin.products.createloan." + key
					+ ".add"), "xpath");
			Thread.sleep(3000);
			break;
		case "productname":
		case "shortname":
		case "principaldefault":
		case "principalminimum":
		case "principalmaximum":
		case "numberofrepaymentsminimum":
		case "numberofrepaymentsmaximum":
		case "nominalinterestrateminimum":
		case "nominalinterestratemaximum":
		case "numberofrepaymentsdefault":
		case "nominalinterestratedefault":
		case "decimalplaces":
		case "currencyinmultiplesof":
		case "minimumdaysbetweendisbursalandfirstrepaymentdate":
		case "moratoriumonprincipalpayment":
		case "moratoriumoninterestpayment":
		case "interestfreeperiod":
		case "arrearstolerance":
		case "numberofdaysaloanmaybeoverduebeforemovingintoarrears":
		case "maximumnumberofdaysaloanmaybeoverduebeforebecomingaNPA(nonperformingasset)":
		case "maximumtranchecount":
		case "maximumallowedoutstandingbalance":
		case "mandatoryguarantee":
		case "minimumguaranteefromownfunds":
		case "minimumguaranteefromguarantorfunds":
		case "rapidevery":
		case "frequencyintervalforrecalculation":
		case "startdate":
		case "closedate":
		case "frequencydateforrecalculation":
			loanproduct.put("frontend.admin.products.createloan." + key, value);
			submitIDValues(loanproduct, true);
			break;
		case "description":
			loanproduct.put("frontend.admin.products.createloan." + key, value);
			submitCssValues(loanproduct, true);
			break;
		case "placeguaranteefundson-hold?":
		case "recalculateinterest":
		case "termsvarybasedonloancycle":
		case "allowfixingoftheinstallmentamount":
		case "enablemultipledisbursals":
		case "includeincustomerloancounter":
			boolean checked = value.equals("checked");
			LazyWebElement check = getElement(
					getResource("frontend.admin.products.createloan." + key),
					"xpath");
			if (check.isSelected() != checked) {
				clickButton(getResource("frontend.admin.products.createloan."
						+ key), "xpath");
				Thread.sleep(3000);
			}
			break;
		case "chargesappliesto":
		case "chargetimetype":
		case "chargecalculation":
		case "chargepaymentby":
			selectDropDownvalues("frontend.admin.products.createcharge." + key,
					"id", "text", value);
			Thread.sleep(3000);
			break;
		case "chargecurrency":
			selectDropDownvalues("frontend.admin.products.createcharge." + key,
					"id", "value", value);
			Thread.sleep(3000);
			break;
		case "name":
		case "amount":
			loanproduct.put("frontend.admin.products.createcharge." + key, value);
			submitIDValues(loanproduct, true);
			break;
		case "active":
		case "ispenalty":
			boolean Checked = value.equals("checked");
			LazyWebElement ischeck = getElement(
					getResource("frontend.admin.products.createcharge." + key),
					"id");
			if (ischeck.isSelected() != Checked) {
				clickButton(getResource("frontend.admin.products.createcharge."
						+ key), "id");
				Thread.sleep(3000);
			}
			break;
		}
	}

	public void verifyProductLoanExcelSheet(List<String> excelsheet)
			throws Throwable {
		for (String excelname : excelsheet) {
			XSSFCell cell1 = null;
			XSSFCell cell2 = null;
			try {
				FileInputStream file = new FileInputStream(new File(
						(getResource("productfolder")) + "\\" + excelname));
				XSSFWorkbook workbook = new XSSFWorkbook(file);
				XSSFSheet sheet = workbook.getSheetAt(1);
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
							value = cell2.getRichStringCellValue().toString();
							System.out.println(value);
							verifySuccessMessage(
									"frontend.admin.products.createloan." + key
											+ ".verified", value, "css");
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

	// //////// Client /////////

	public void setupClient(List<String> excelsheet) throws Throwable {
		for (String excelname : excelsheet) {
			XSSFCell cell1 = null;
			XSSFCell cell2 = null;
			try {
				FileInputStream file = new FileInputStream(new File(
						(getResource("clientfolder")) + "\\" + excelname));
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
							case "createclick":
								clickButton(
										getResource("frontend.clients.clients."
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

	public void clientExcelSheet(List<String> excelsheet) throws Throwable {
		for (String excelname : excelsheet) {
			XSSFCell cell1 = null;
			XSSFCell cell2 = null;
			try {
				FileInputStream file = new FileInputStream(new File(
						(getResource("clientfolder")) + "\\" + excelname));
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
								if (HSSFDateUtil.isCellDateFormatted(cell2)) {
									DateFormat dateFormat = new SimpleDateFormat(
											"dd MMMM yyyy");
									Date date = cell2.getDateCellValue();
									createClientExcelsheet(key,
											dateFormat.format(date));
								} else {
									createClientExcelsheet(key, value);
								}
								break;
							case Cell.CELL_TYPE_STRING:
								System.out.println("Cell Two ... value="
										+ cell2.getRichStringCellValue());
								String value = cell2.getRichStringCellValue()
										.toString();
								createClientExcelsheet(key, value);
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

	public void createClientExcelsheet(String key, String value)
			throws InterruptedException {
		switch (key) {
		case "office":
			clickButton(getResource("frontend.clientform." + key), "xpath");
			Thread.sleep(3000);
			HashMap<String, String> createClient = new HashMap<String, String>();
			createClient.put("frontend.clientform.searchoffice", value);
			submitCssValues(createClient);
			Thread.sleep(3000);
			clickButton(getResource("frontend.clientform.selectfirstoffice"),
					"xpath");
			Thread.sleep(3000);
			break;
		case "firstname":
		case "middlename":
		case "lastname":
		case "mobilenumber":
		case "externalid":
			HashMap<String, String> createClient1 = new HashMap<String, String>();
			System.out.println("frontend.clientform." + key);
			createClient1.put("frontend.clientform." + key, value);
			submitIDValues(createClient1, true);
			break;
		case "gender":
		case "clienttype":
		case "clientclassification":
			selectDropDownvalues("frontend.clientform." + key, "id", "text",
					value);
			break;
		case "activationdate":
		case "dateofbirth":
		case "submittedon":
			HashMap<String, String> createClient2 = new HashMap<String, String>();
			createClient2.put("frontend.clientform." + key, value);
			submitIDValues(createClient2, true);
			clickButton(getResource("frontend.clientform.dateofbirthclick"),
					"css");
			Thread.sleep(2000);
			break;
		case "active":
		case "opensavingsaccount":
			boolean checked = value.equals("checked");
			LazyWebElement check = getElement(
					getResource("frontend.clientform." + key), "id");
			if (check.isSelected() != checked) {
				clickButton(getResource("frontend.clientform." + key), "id");
				Thread.sleep(3000);
			}
			break;

		}
	}

	public void verifyClientExcelSheet(List<String> excelsheet)
			throws InterruptedException {
		for (String excelname : excelsheet) {
			XSSFCell cell1 = null;
			XSSFCell cell2 = null;
			try {
				FileInputStream file = new FileInputStream(new File(
						(getResource("clientfolder")) + "\\" + excelname));
				XSSFWorkbook workbook = new XSSFWorkbook(file);
				XSSFSheet sheet = workbook.getSheetAt(1);
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
							value = cell2.getRichStringCellValue().toString();
							verifySuccessMessage("frontend.clientform." + key
									+ ".verified", value, "css");
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

	public void createNewLoanExcelSheet(List<String> excelsheet)
			throws InterruptedException {
		for (String excelname : excelsheet) {
			XSSFCell cell1 = null;
			XSSFCell cell2 = null;
			try {
				FileInputStream file = new FileInputStream(new File(
						(getResource("clientfolder")) + "\\" + excelname));
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
								double i = (double) cell2.getNumericCellValue();
								//BigDecimal bd= new BigDecimal(i);
								//value = String.valueOf(bd);
								value = String.valueOf(i);
								if (HSSFDateUtil.isCellDateFormatted(cell2)) {
									DateFormat dateFormat = new SimpleDateFormat(
											"dd MMMM yyyy");
									Date date = cell2.getDateCellValue();
									createNewLoanClientExcelsheet(key,
											dateFormat.format(date));
								} else {
									createNewLoanClientExcelsheet(key, value);
								}
								break;
							case Cell.CELL_TYPE_STRING:
								System.out.println("Cell Two ... value="
										+ cell2.getRichStringCellValue());
								String value = cell2.getRichStringCellValue()
										.toString();
								createNewLoanClientExcelsheet(key, value);
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

	private void createNewLoanClientExcelsheet(String key, String value)
			throws InterruptedException, IOException {
		switch (key) {
		case "click":
			if (value.equals("approve")) {
				((JavascriptExecutor) getWebDriver())
						.executeScript("scroll(500,0);");
				Thread.sleep(3000);
			}
			System.out.println("click" + key);
			clickButton(getResource("frontend.clients.clients." + value),
					"xpath");
			break;
		case "loantrancheclick":
			if (value.contains("plus")) {
				String[] value1 = value.split(" ");
				clickButton(getResource("frontend.clients.clients.plus"),
						"xpath");
				rowval = value1[1];
			}
			break;
		case "principaldefault":
			HashMap<String, String> loanproduct = new HashMap<String, String>();
			loanproduct.put("frontend.admin.products.createloan." + key, value);
			submitIDValues(loanproduct, true);
			break;
		 case "principal":
			int rowval1=  Integer.valueOf(rowval)+1;
				getWebDriver().findElement(
						By.xpath("//*[@id='main']//table[2]/tbody/tr["+rowval1+"]/td[2]/input")).sendKeys(value);
				break;
		case "expecteddisbursementon":
			getWebDriver().findElement(
					By.xpath("//*[@id='disbursementDetail[" + rowval
							+ "].expectedDisbursementDate']")).sendKeys(value);
			break;
		case "product":
			selectDropDownvalues("frontend.clients.clients.newloan." + key,
					"id", "text", value);
			Thread.sleep(3000);
			break;
		case "activatedate":
		case "submittedon":
			HashMap<String, String> submittedon = new HashMap<String, String>();
			submittedon.put("frontend.clients.clients.newloan." + key, value);
			submitIDValues(submittedon, true);
			clickButton(getResource("frontend.clientform.dateofbirthclick"),
					"css");
			break;
		case "submitbutton":
			clickButton(getResource("frontend.admin.createoffice.savebutton"),
					"id");
			Thread.sleep(4000);
			break;
		case "disbursementon":
			HashMap<String, String> disbursementon = new HashMap<String, String>();
			disbursementon
					.put("frontend.clients.clients.newloan." + key, value);
			submitIDValues(disbursementon, true);
			clickButton(getResource("frontend.clientform.dateofbirthclick"),
					"css");
			break;
		case "installmentamount":
		case "maximumallowedaoutstandingbalance":
			HashMap<String, String> amount = new HashMap<String, String>();
			amount.put("frontend.clients.clients.newloan." + key, value);
			submitIDValues(amount, true);
			break;
		case "approveddate":
			HashMap<String, String> approveddate = new HashMap<String, String>();
			approveddate.put("frontend.clients.clients." + key, value);
			submitIDValues(approveddate, true);
			clickButton(getResource("frontend.clientform.dateofbirthclick"),
					"css");
			Thread.sleep(3000);
			clickButton(getResource("frontend.admin.createoffice.savebutton"),
					"id");
			Thread.sleep(6000);
			break;
		case "transactiondate":
			Thread.sleep(3000);
			HashMap<String, String> transactiondate = new HashMap<String, String>();
			transactiondate.put(
					"frontend.clients.clients.makerepayment." + key, value);
			submitIDValues(transactiondate, true);
			clickButton(getResource("frontend.clientform.dateofbirthclick"),
					"css");
			Thread.sleep(3000);
			break;
		case "actualdisbursedate":
			   Thread.sleep(2000);
			   HashMap<String, String> actualdisbursedate = new HashMap<String, String>();
			   actualdisbursedate.put("frontend.clients.clients." + key, value);
			   submitIDValues(actualdisbursedate, true);
			   clickButton(getResource("frontend.clientform.dateofbirthclick"),
			     "css");
			   Thread.sleep(3000);
			   clickButton(getResource("frontend.admin.createoffice.savebutton"),
			     "id");
			   Thread.sleep(6000);
			   break;
		case "transactionamount":
			HashMap<String, String> transactionamount = new HashMap<String, String>();
			transactionamount.put("frontend.clients.clients.makerepayment."
					+ key, value);
			submitIDValues(transactionamount, true);
			break;
		}
	}

	public double parseDecimal(String input) throws ParseException {
		NumberFormat numberFormat = NumberFormat.getNumberInstance(Locale
				.getDefault());
		ParsePosition parsePosition = new ParsePosition(0);
		Number number = numberFormat.parse(input, parsePosition);

		if (parsePosition.getIndex() != input.length()) {
			throw new ParseException("Invalid input", parsePosition.getIndex());
		}
		return number.doubleValue();
	}

	public void verifyTabsdata(String sheetname, List<String> excelsheet)
			throws InterruptedException, IOException, ParseException {
		for (String excelname : excelsheet) {
			String strCellValue = "";
			int m = 2;
			try {
				FileInputStream file = new FileInputStream(new File(
						(getResource("clientfolder")) + "\\" + excelname));
				
				XSSFWorkbook workbook = new XSSFWorkbook(file);
				XSSFSheet sheet = workbook.getSheet(sheetname);
				Thread.sleep(3000);
				getWebDriver().findElement(
						By.xpath("//a[contains(.,'" + sheetname + "')]"))
						.click();
				if (sheetname.equals("Repayment Schedule")) {
					m = 4;
				} else if (sheetname.equals("Transactions")) {
					m = 6;
				}
				List<WebElement> applicationRow = getWebDriver()
						.findElements(
								By.xpath("//*[@id='main']/div[3]/div/div/div/div/div/div[2]/div[3]/div[4]/div/div/div["
										+ m + "]/table/tbody/tr"));
				for (int j = 1; j <= applicationRow.size(); j++) {
					int k = 0;
					List<WebElement> applicationCol = getWebDriver()
							.findElements(
									By.xpath("//*[@id='main']/div[3]/div/div/div/div/div/div[2]/div[3]/div[4]/div/div/div["
											+ m
											+ "]/table/tbody/tr["
											+ j
											+ "]/td"));
					for (WebElement appCol : applicationCol) {
						double screenVal = 0.0;
						String textVal = appCol.getText();
						DateFormat dateFormat = new SimpleDateFormat(
								"dd MMMM yyyy");
						Date date = null;
						if ((sheet.getRow(j) == null)
								|| (sheet.getRow(j).getCell(k) == null)) {
							continue;
						}
						switch (sheet.getRow(j).getCell(k).getCellType()) {
						case Cell.CELL_TYPE_BLANK:
							break;
						case Cell.CELL_TYPE_NUMERIC:
							if (HSSFDateUtil.isCellDateFormatted(sheet
									.getRow(j).getCell(k))) {
								date = sheet.getRow(j).getCell(k)
										.getDateCellValue();
								try {
									Assert.assertEquals(textVal,
											dateFormat.format(date));
								} catch (Throwable e) {
									Assert.fail("Tab Name:" + sheetname
											+ " Row number:" + j
											+ " Column number:" + k
											+ " Expected result:"
											+ dateFormat.format(date)
											+ " Actual result:" + textVal);
								}
							} else {
								if ((textVal != null)
										&& !(textVal.trim().equals("")))
									screenVal = parseDecimal(appCol.getText());
								double value = (double) sheet.getRow(j)
										.getCell(k).getNumericCellValue();
								//BigDecimal value1 = BigDecimal.valueOf(value);
							//	strCellValue = String.valueOf(value1);
								strCellValue = String.valueOf(value);
								try {
									Assert.assertEquals(screenVal,
											parseDecimal(strCellValue), 0.0);
								} catch (Throwable e) {
									Assert.fail("Tab Name:" + sheetname
											+ " Row number:" + j
											+ " Column number:" + k
											+ " Expected result:"
											+ parseDecimal(strCellValue)
											+ " Actual result:" + screenVal);
								}
							}
							k++;
							break;
						case Cell.CELL_TYPE_STRING:
							System.out.println(sheet.getRow(j).getCell(k)
									.getStringCellValue()
									+ "\t\t");
							k++;
							break;
						}
					}
				}

			} catch (FileNotFoundException fnfe) {
				fnfe.printStackTrace();
			}
		}
	}

	public void clickBackToClient() {
		clickButton(getResource("frontend.clientform.backtoclientname"),
				"xpath");
	}

	public void createMakeRepayment(DataTable payment)
			throws InterruptedException, IOException, ParseException {
		List<List<String>> options = payment.raw();
		for (List<String> option : options) {
			makeRepayment(option.get(0));
			for (int i = 1; i < option.size(); i++) {
				verifyRepaymentTabsdata(option.get(0), option.get(i));
			}
		}
	}

	public void makeRepayment(String excelsheet) throws InterruptedException {
		XSSFCell cell1 = null;
		XSSFCell cell2 = null;
		try {
			FileInputStream file = new FileInputStream(new File(
					(getResource("clientfolder")) + "\\" + excelsheet));
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
							double i = (double) cell2.getNumericCellValue();
							value = String.valueOf(i);
							if (HSSFDateUtil.isCellDateFormatted(cell2)) {
								DateFormat dateFormat = new SimpleDateFormat(
										"dd MMMM yyyy");
								Date date = cell2.getDateCellValue();
								createNewLoanClientExcelsheet(key,
										dateFormat.format(date));
							} else {
								createNewLoanClientExcelsheet(key, value);
							}
							break;
						case Cell.CELL_TYPE_STRING:
							System.out.println("Cell Two ... value="
									+ cell2.getRichStringCellValue());
							String value = cell2.getRichStringCellValue()
									.toString();
							createNewLoanClientExcelsheet(key, value);
							break;
						}
					}
				}
			}
			clickButton(getResource("frontend.admin.createoffice.savebutton"),
					"id");
			Thread.sleep(7000);
			file.close();
		} catch (FileNotFoundException fnfe) {
			fnfe.printStackTrace();
		} catch (IOException ioe) {
			ioe.printStackTrace();
		}
	}

	private void verifyRepaymentTabsdata(String excelname, String sheetname)
			throws IOException, ParseException, InterruptedException {
		String strCellValue = "";
		int m = 2;
		try {
			FileInputStream file = new FileInputStream(new File(
					(getResource("clientfolder")) + "\\" + excelname));
			XSSFWorkbook workbook = new XSSFWorkbook(file);
			XSSFSheet sheet = workbook.getSheet(sheetname);
			getWebDriver().findElement(
					By.xpath("//a[contains(.,'" + sheetname + "')]")).click();
			if (sheetname.equals("Repayment Schedule")) {
				m = 4;
			} else if (sheetname.equals("Transactions")) {
				m = 6;
			}
			int rowCount = sheet.getLastRowNum()-sheet.getFirstRowNum();
			System.out.println(rowCount);
			for ( int rowCount1=1;rowCount1 <=rowCount;rowCount1++){
				 int i = (int) sheet.getRow(rowCount1).getCell(0).getNumericCellValue();
	               int value1=  Integer.valueOf(i)+1;
	               System.out.println( getWebDriver()
					.findElement(
							By.xpath("//*[@id='main']/div[3]/div/div/div/div/div/div[2]/div[3]/div[4]/div/div/div["
									+ m + "]/table/tbody/tr["+value1+"]")).getText());
	               List<WebElement> applicationCol = getWebDriver()
							.findElements(
									By.xpath("//*[@id='main']/div[3]/div/div/div/div/div/div[2]/div[3]/div[4]/div/div/div["
											+ m
											+ "]/table/tbody/tr["
											+value1
											+ "]/td"));
					System.out.println(applicationCol.size());
					int k = 0;
					for (int l = 0; l < applicationCol.size(); l++) {
						
						double screenVal = 0.0;
						String textVal = applicationCol.get(l).getText();
						DateFormat dateFormat = new SimpleDateFormat(
								"dd MMMM yyyy");
						Date date = null;
						if ((sheet.getRow(rowCount1) == null)
								|| (sheet.getRow(rowCount1).getCell(k) == null)) {
							continue;
						}
						switch (sheet.getRow(rowCount1).getCell(k).getCellType()) {
						case Cell.CELL_TYPE_BLANK:
							break;
						case Cell.CELL_TYPE_NUMERIC:
							if (HSSFDateUtil.isCellDateFormatted(sheet
									.getRow(rowCount1).getCell(k))) {
								date = sheet.getRow(rowCount1).getCell(k)
										.getDateCellValue();
								try {
									Assert.assertEquals(textVal,
											dateFormat.format(date));
								} catch (Throwable e) {
									Assert.fail("Tab Name:" + sheetname
											+ " Row number:" + rowCount1
											+ " Column number:" + k
											+ " Expected result:"
											+ dateFormat.format(date)
											+ " Actual result:" + textVal);
								}
							} else {
								if ((textVal != null)
										&& !(textVal.trim().equals("")))
									screenVal = parseDecimal(applicationCol
											.get(l).getText());
								double value = (double) sheet.getRow(rowCount1)
										.getCell(k).getNumericCellValue();
								strCellValue = String.valueOf(value);
								try {
									Assert.assertEquals(screenVal,
											parseDecimal(strCellValue), 0.0);
								} catch (Throwable e) {
									Assert.fail("Tab Name:" + sheetname
											+ " Row number:" + rowCount1
											+ " Column number:" + k
											+ " Expected result:"
											+ parseDecimal(strCellValue)
											+ " Actual result:" + screenVal);
								}
							}
							k++;
							break;
						case Cell.CELL_TYPE_STRING:
							strCellValue = sheet.getRow(rowCount1).getCell(k)
									.getStringCellValue();
							try {
								Assert.assertEquals(textVal, strCellValue);
							} catch (Throwable e) {
								Assert.fail("Tab Name:" + sheetname
										+ " Row number:" + rowCount1
										+ " Column number:" + k
										+ " Expected result:" + strCellValue
										+ " Actual result:" + textVal);
							}
							k++;
							break;
						}
					}
			}
			Thread.sleep(5000);
		} catch (FileNotFoundException fnfe) {
			fnfe.printStackTrace();
		}
	}

	public void searchUser(String user) throws InterruptedException {		
		getWebDriver()
		.findElement(
				By.id("search")).sendKeys(user);	
		getWebDriver()
		.findElement(
				By.id("search")).sendKeys(Keys.ENTER);
		Thread.sleep(7000);
		getWebDriver()
		.findElement(
				By.xpath(".//div[1]/div/span[2]/a")).click();
		Thread.sleep(4000);
				
	}

	public void undoDisbursal() throws InterruptedException {	
		clickButton(getResource("frontend.clients.clients.undodisbursal"), "xpath");
		clickButton(getResource("frontend.admin.createoffice.savebutton"), "id");
		Thread.sleep(3000);
	}

	public void reverseTransaction() throws InterruptedException {
		getWebDriver().findElement(
				By.xpath("//a[contains(.,'Transactions')]"))
				.click();
		Thread.sleep(3000);
		System.out.println(getText("frontend.clients.clients.makerepayment.reversetransaction","Xpath"));
		if(getText("frontend.clients.clients.makerepayment.reversetransaction","Xpath").equals("Repayment"))
		{
			clickButton(getResource("frontend.clients.clients.makerepayment.reversetransaction"), "xpath");
			Thread.sleep(4000);
			clickButton(getResource("frontend.clients.clients.transaction.undo"),"css");
			Thread.sleep(4000);
			clickButton(getResource("frontend.clients.clients.transaction.secondundo"),"xpath");
			Thread.sleep(5000);
	}
	}
}

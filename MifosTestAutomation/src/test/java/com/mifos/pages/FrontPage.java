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
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.TreeSet;

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
import org.openqa.selenium.NoSuchElementException;
import org.openqa.selenium.WebElement;

import com.ibm.icu.text.NumberFormat;
import com.mifos.testing.framework.webdriver.LazyWebElement;

//import org.jopendocument.dom.spreadsheet.MutableCell;
//import org.jopendocument.dom.spreadsheet.Sheet;
//import org.jopendocument.dom.spreadsheet.SpreadSheet;

public class FrontPage extends MifosWebPage {

	Set<String> setAccuralTransactionID = new TreeSet<String>();
	Set<String> setAccuralTransactionType = new TreeSet<String>();
	static String value = "";
	public String rowval;
	public boolean ishideAccuralsChecked = true;
	boolean isTransactionTabSelected;
	public boolean isaccuralsTypeTransaction = true;
	int transactionIDIndex = 0;

	// WebDriver driver = new ChromeDriver();

	/**
	 * Returns targeted excel sheet located
	 * 
	 * @return
	 */
	public String getLoginExcelSheetPath() {
		// TODO Auto-generated method stub
		return getResource("loginfolder");
	}

	public String getProductExcelSheetPath() {
		// TODO Auto-generated method stub
		return getResource("productfolder");
	}

	public String getClientExcelSheetPath() {
		// TODO Auto-generated method stub
		return getResource("clientfolder");
	}

	/**
	 * Method returns date format of cell2 from a targeted excel sheet
	 * 
	 * @param cell2
	 * @return
	 * @throws ParseException
	 */
	public static String parseDate(XSSFCell cell2) throws ParseException {

		DateFormat dateFormat = new SimpleDateFormat("dd MMMM yyyy");
		Date date = cell2.getDateCellValue();
		return dateFormat.format(date);
	}

	/**
	 * method converts key value pairs present in excel sheets into a hash map.
	 * 
	 * @param excelSheetPath
	 *            :- Location of excel sheet
	 * 
	 * @param excelsheet
	 *            :- Given excel sheet name
	 * 
	 * @param sheetname
	 *            :- sheet name of an excel sheet
	 * 
	 * @return
	 * @throws Exception 
	 */
	public static Map<String, String> parseExcelSheet(String excelSheetPath,
			String excelsheet, String sheetname) throws Exception {

		Map<String, String> excelVlaue = new LinkedHashMap<String, String>();
		XSSFSheet sheet = null;
		try {
			XSSFCell cell1 = null;
			XSSFCell cell2 = null;
			FileInputStream file = new FileInputStream(new File(excelSheetPath
					+ "/" + excelsheet));
			XSSFWorkbook workbook = new XSSFWorkbook(file);
			sheet = workbook.getSheet(sheetname);
//			System.out.println("Opened file name :" + excelsheet 
//					+ " with sheet " + sheetname);

			Iterator<Row> rowIterator = sheet.iterator();
			while (rowIterator.hasNext()) {
				Row row = rowIterator.next();

				Iterator<Cell> cellIterator = row.cellIterator();
				while (cellIterator.hasNext()) {
					cell1 = (XSSFCell) cellIterator.next();
		//			System.out.println("Cell One ... key="
		//					+ cell1.getRichStringCellValue());
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
//							System.out.println("Cell Two ... value=" + value);
							if (HSSFDateUtil.isCellDateFormatted(cell2)) {
								value = parseDate(cell2);
								excelVlaue.put(key, value);

							} else {
								excelVlaue.put(key, value);

							}

							break;

						case Cell.CELL_TYPE_STRING:
///							System.out.println("Cell Two ... value="
//									+ cell2.getRichStringCellValue());
							value = cell2.getRichStringCellValue().toString();
							excelVlaue.put(key, value);
							break;
						}
					}
				}
			}

		} catch (Exception e) {
			throw new Exception("invalid excel sheet or sheet name \n" +excelsheet + sheetname);

		}
		return excelVlaue;
	}
	
	
	public static Map<String, String> parseExcelSheet1(String excelSheetPath,
			String excelsheet, String sheetname) throws Exception {

		Map<String, String> excelVlaue = new LinkedHashMap<String, String>();
		XSSFSheet sheet = null;
		try {
			XSSFCell cell1 = null;
			XSSFCell cell2 = null;
			FileInputStream file = new FileInputStream(new File(excelSheetPath
					+ "/" + excelsheet));
			XSSFWorkbook workbook = new XSSFWorkbook(file);
			sheet = workbook.getSheet(sheetname);
//			System.out.println("Opened file name :" + excelsheet 
//					+ " with sheet " + sheetname);

			Iterator<Row> rowIterator = sheet.iterator();
			while (rowIterator.hasNext()) {
				Row row = rowIterator.next();

				Iterator<Cell> cellIterator = row.cellIterator();
				while (cellIterator.hasNext()) {
					cell1 = (XSSFCell) cellIterator.next();
		//			System.out.println("Cell One ... key="
		//					+ cell1.getRichStringCellValue());
					String key = cell1.getRichStringCellValue().toString();
					
					if (!cellIterator.hasNext()) {
						System.out.println("No Such Element");
					} else {
						// cell iterator by calling its next method
						cell2 = (XSSFCell) cellIterator.next();

						switch (cell2.getCellType()) {
						case Cell.CELL_TYPE_NUMERIC:
							double i = (double) cell2.getNumericCellValue();
							value = String.valueOf(i);
//							System.out.println("Cell Two ... value=" + value);
							if(key.equals("mobilenumber")) {
								value =  new BigDecimal(cell2.getNumericCellValue()).toPlainString();
							}
							if (HSSFDateUtil.isCellDateFormatted(cell2)) {
								value = parseDate(cell2);
								excelVlaue.put(key, value);

							} else {
								excelVlaue.put(key, value);

							}

							break;

						case Cell.CELL_TYPE_STRING:
///							System.out.println("Cell Two ... value="
//									+ cell2.getRichStringCellValue());
							value = cell2.getRichStringCellValue().toString();
							excelVlaue.put(key, value);
							break;
						}
					}
				}
			}

		} catch (Exception e) {
			throw new Exception("invalid excel sheet or sheet name \n" +excelsheet + sheetname);

		}
		return excelVlaue;
	}
	/**
	 * Method enters login credential from target excel sheet into login page
	 * 
	 * @param loginExcelSheetPath
	 * @param excelSheetName
	 * @param sheetName
	 * @throws Throwable
	 */
	public void setupLogin(String loginExcelSheetPath, String excelSheetName,
			String sheetName) throws Throwable {
		try {

			Map<String, String> loginMap = parseExcelSheet(loginExcelSheetPath,
					excelSheetName, sheetName);

			insertValues(loginMap);

			clickButton(getResource("signin"));
			Thread.sleep(getResourceKey("extraLargeWait"));
		} catch (Exception ioe) {
			ioe.printStackTrace();
		}

	}

	/**
	 * Method navigates to client page
	 * 
	 * @throws Throwable
	 */
	public void clientNavigation() throws Throwable {
		try {

			MifosWebPage.navigateToUrl(MifosWebPage.BASE_URL + "clients");
			Thread.sleep(getResourceKey("mediumWait"));

			clickButton(getResource("clickoncreateclient"));
			Thread.sleep(getResourceKey("mediumWait"));

		} catch (Exception ioe) {
			ioe.printStackTrace();
		}
	}

	/**
	 * Method enters values from target excel sheet into Client page
	 * 
	 * @param clientExcelSheetPath
	 * @param excelSheetName
	 * @param sheetName
	 * @throws Throwable
	 */
	public void setupClient(String clientExcelSheetPath, String excelSheetName,
			String sheetName) throws Throwable {
		try {
			Map<String, String> clientDetailsMap = parseExcelSheet(
					clientExcelSheetPath, excelSheetName, sheetName);
			insertValues(clientDetailsMap);
			clickButton(getResource("submitclient"));
			Thread.sleep(getResourceKey("mediumWait"));

		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	/**
	 * Method verifies client has been created successfully from target excel
	 * sheet 
	 * @param excelSheetPath
	 * @param excelSheetName
	 * @param sheetName
	 * @throws Exception 
	 */
	public void verifyClient(String excelSheetPath, String excelSheetName,
			String sheetName) throws Exception {
		// TODO Auto-generated method stub
		Map<String, String> clientDetailsMap = parseExcelSheet(excelSheetPath,
				excelSheetName, sheetName);
		verifyPartialSuccessMessage("verifyclient",
				clientDetailsMap.get("Verify"), "xpath");
//		verifySuccessMessage("verifyclient", clientDetailsMap.get("Verify"));
		

	}

	/**
	 * Method inserts a value, To creates a new loan, Approves and Disburse a given loan from target excel sheet
	 * @param clientExcelSheetPath
	 * @param excelSheetName
	 * @param sheetName
	 * @throws Throwable 
	 */
	public void setupNewLoan(String clientExcelSheetPath,
			String excelSheetName, String sheetName)
			throws Throwable {

			Map<String, String> newLoanDetailsMap = parseExcelSheet(
					clientExcelSheetPath, excelSheetName, sheetName);
			insertValues(newLoanDetailsMap);
			Thread.sleep(getResourceKey("largeWait"));

		
	}

	/**
	 * Method navigates to loan product page
	 * 
	 * @param productExcelSheetPath
	 * @param excelsheet
	 * @param sheetName
	 * @throws Throwable
	 */
	public void productNavigation(String productExcelSheetPath,
			List<String> excelsheet, String sheetName) throws Throwable {
		try {

			MifosWebPage.navigateToUrl(MifosWebPage.BASE_URL + "products");
			Thread.sleep(getResourceKey("mediumWait"));

			clickButton(getResource("clickonloanproducts"));
			Thread.sleep(getResourceKey("mediumWait"));

			clickButton(getResource("clickoncreateloanproduct"));
			Thread.sleep(getResourceKey("extraLargeWait"));
		} catch (Exception ioe) {
			ioe.printStackTrace();
		}

	}

	/**
	 * Method inserts a value to create a loan product from a target excel sheet
	 * 
	 * @param productExcelSheetPath
	 * @param excelSheetName
	 * @param sheetName
	 * @throws Throwable
	 */
	public void setupLoanProduct(String productExcelSheetPath,
			String excelSheetName, String sheetName) throws Throwable {
		try {
			Map<String, String> productDetailsMap = parseExcelSheet(
					productExcelSheetPath, excelSheetName, sheetName);

			insertValues(productDetailsMap);

			clickButton(getResource("submitloanproduct"));
			Thread.sleep(getResourceKey("smallWait"));
			((JavascriptExecutor) getWebDriver())
					.executeScript("scroll(500,0);");

			Thread.sleep(getResourceKey("mediumWait"));

		} catch (Exception ioe) {
			ioe.printStackTrace();
		}

	}

	/**
	 * Method verifies loan product has been created successfully from a
	 * targeted excel sheet
	 * 
	 * @param productExcelSheetPath
	 * @param excelSheetName
	 * @param sheetName
	 * @throws Exception 
	 */
	public void verifyProduct(String productExcelSheetPath,
			String excelSheetName, String sheetName) throws Exception {
		// TODO Auto-generated method stub
		Map<String, String> productDetailsMap = parseExcelSheet(
				productExcelSheetPath, excelSheetName, sheetName);
		verifySuccessMessage("verifyloanproduct",
				productDetailsMap.get("verifyloanproduct"));
	}

	/**
	 * Method parse to decimal value.
	 * 
	 * @param input
	 * @return
	 * @throws ParseException
	 */
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
	
	/**
	 * Method verifies Summary,Repayments Schedule,Transactions tab & accounting
	 * details from a targeted excel sheet
	 * @param clientExcelSheetPath
	 * @param excelSheetName
	 * @param sheetname
	 * @throws InterruptedException
	 * @throws IOException
	 * @throws ParseException
	 */
	public void verifyLoanTabData(String clientExcelSheetPath,
			String excelSheetName, String sheetname)
			throws InterruptedException, IOException, ParseException {

		int sheetIndex = 0;
		int rowCount = 0;
		try {
			FileInputStream file = new FileInputStream(new File(
					clientExcelSheetPath + "\\" + excelSheetName));
			XSSFWorkbook workbook = new XSSFWorkbook(file);
			XSSFSheet sheet = workbook.getSheet(sheetname);

			if (sheetname.equals("Summary")) {
				sheetIndex = 2;
			} else if (sheetname.equals("Repayment Schedule")) {
				sheetIndex = 4;
			} else if (sheetname.equals("Transactions")) {
				sheetIndex = 6;
			} else if (sheetname.equals("Floating Interest Rates")) {
				sheetIndex = 10;
			}
			if (!isTransactionTabSelected) {
				getWebDriver().findElement(
						By.xpath("//a[contains(.,'" + sheetname + "')]"))
						.click();
				// Before reading transaction id need to un-check the hideAccurals
				// button for periodic scenarios
				if (sheetname.equals("Transactions") && !ishideAccuralsChecked) {
					LazyWebElement accrualCheck = getElement(getResource("hideaccruals"));
					if (accrualCheck.isSelected()) {
						clickButton(getResource("hideaccruals"));
						Thread.sleep(getResourceKey("largeWait"));
					}
				}
			}
			rowCount = sheet.getLastRowNum() - sheet.getFirstRowNum();

			for (int xlRowCount = 1; xlRowCount <= rowCount; xlRowCount++) {
				if (sheetname.equals("Floating Interest Rates")) {
					xlRowCount = 2;
				}
				int xlColumnPointer = 0;
				if (sheetname.equals("Transactions")) {
					xlColumnPointer = 2;
				}

				List<WebElement> applicationCol = null;
				String Accrual = null;
				if (sheetname.equals("Summary")
						|| sheetname.equals("Repayment Schedule")
						|| sheetname.equals("Transactions") || sheetname.equals("Floating Interest Rates")) {

					if (sheetname.equals("Transactions")
							&& !isaccuralsTypeTransaction) {

						Accrual = getWebDriver()
								.findElement(
										By.xpath("//*[@id='main']/div[3]/div/div/div/div/div/div[2]/div[3]/div[4]/div/div/div["
												+ sheetIndex
												+ "]/table/tbody/tr["
												+ xlRowCount + "]/td[4]"))
								.getText();
						if (Accrual.equals("Accrual")) {
							setAccuralTransactionType
									.add(getWebDriver()
											.findElement(
													By.xpath("//*[@id='main']/div[3]/div/div/div/div/div/div[2]/div[3]/div[4]/div/div/div["
															+ sheetIndex
															+ "]/table/tbody/tr["
															+ xlRowCount
															+ "]/td[1]"))
											.getText());
						} else {
							setAccuralTransactionID
									.add(getWebDriver()
											.findElement(
													By.xpath("//*[@id='main']/div[3]/div/div/div/div/div/div[2]/div[3]/div[4]/div/div/div["
															+ sheetIndex
															+ "]/table/tbody/tr["
															+ xlRowCount
															+ "]/td[1]"))
											.getText());
						}
					}

					applicationCol = getWebDriver()
							.findElements(
									By.xpath("//*[@id='main']/div[3]/div/div/div/div/div/div[2]/div[3]/div[4]/div/div/div["
											+ sheetIndex
											+ "]/table/tbody/tr["
											+ xlRowCount + "]/td"));
					// System.out.println("Col count  " +
					// applicationCol.size());

				} else if (sheetname.equals("Acc_Disbursement")
						|| sheetname.equals("Acc_Disbursement1")
						|| sheetname.equals("Acc_RepaymentDisbursement")
						|| sheetname.equals("Acc_Repayment")
						|| sheetname.equals("Acc_Repayment1")
						|| sheetname.equals("Acc_Upfront1")
						|| sheetname.equals("Acc_Upfront2")) {
					xlColumnPointer = 6;

					applicationCol = getWebDriver()
							.findElements(
									By.xpath(".//*[@id='main']/div[3]/div/div/div/div/div/div[4]/table/tbody/tr["
											+ xlRowCount + "]/td"));
					// System.out.println("Col count  " +
					// applicationCol.size());
				}
				
					verifyColumnDetails(xlColumnPointer, xlRowCount,
							applicationCol, sheet, sheetname);
					Thread.sleep(getResourceKey("wait"));

				 
			}
			Thread.sleep(getResourceKey("mediumWait"));
		} catch (FileNotFoundException fnfe) {
			fnfe.printStackTrace();
		} catch (NoSuchElementException e) {
			Assert.fail(" Enable to click \n");
		}
	}

	/**
	 * Methods verifies & validates each cell values from the target excel sheet
	 * with web pages.
	 * 
	 * @param colIndex
	 * @param rowCount1
	 * @param applicationCol
	 * @param sheet
	 * @param sheetname
	 * @throws ParseException
	 */
	private void verifyColumnDetails(int xlColumnPointer, int xlRowCount,
			List<WebElement> applicationCol, XSSFSheet sheet, String sheetname)
			throws ParseException {

		String strCellValue = "";

		for (; xlColumnPointer < applicationCol.size(); xlColumnPointer++) {
			double screenVal = 0.0;
			String textVal = applicationCol.get(xlColumnPointer).getText();
			DateFormat dateFormat = new SimpleDateFormat("dd MMMM yyyy");
			Date date = null;
			if ((sheet.getRow(xlRowCount) == null)
					|| (sheet.getRow(xlRowCount).getCell(xlColumnPointer) == null)) {
				continue;
			}
			switch (sheet.getRow(xlRowCount).getCell(xlColumnPointer).getCellType()) {
			case Cell.CELL_TYPE_BLANK:

				break;
			case Cell.CELL_TYPE_NUMERIC:
				if (HSSFDateUtil.isCellDateFormatted(sheet.getRow(xlRowCount)
						.getCell(xlColumnPointer))) {
					date = sheet.getRow(xlRowCount).getCell(xlColumnPointer)
							.getDateCellValue();
					try {
						Assert.assertEquals(textVal, dateFormat.format(date));
					} catch (Throwable e) {
						Assert.fail("Tab Name:" + sheetname + " Row number:"
								+ xlRowCount + " Column number:" + xlColumnPointer
								+ " Expected result:" + dateFormat.format(date)
								+ " Actual result:" + textVal);
					}
				} else {
					if ((textVal != null) && !(textVal.trim().equals("")))
						screenVal = parseDecimal(applicationCol.get(xlColumnPointer)
								.getText());
					double value = (double) sheet.getRow(xlRowCount)
							.getCell(xlColumnPointer).getNumericCellValue();
					strCellValue = String.valueOf(value);
					try {
						Assert.assertEquals(screenVal,
								parseDecimal(strCellValue), 0.0);
					} catch (Throwable e) {
						Assert.fail("Tab Name:" + sheetname + " Row number:"
								+ xlRowCount + " Column number:" + xlColumnPointer
								+ " Expected result:"
								+ parseDecimal(strCellValue)
								+ " Actual result:" + screenVal);
					}
				}

				break;
			case Cell.CELL_TYPE_STRING:
				strCellValue = sheet.getRow(xlRowCount).getCell(xlColumnPointer)
						.getStringCellValue();
				try {
					if (textVal.contains("$") && strCellValue.contains("$")) {
						textVal = textVal.substring(textVal.indexOf(" ") + 1,
								textVal.length());
						strCellValue = strCellValue.substring(
								strCellValue.indexOf(" ") + 1,
								strCellValue.length());
						Assert.assertEquals(textVal, strCellValue);
					} else {
						Assert.assertEquals(textVal, strCellValue);
					}
				} catch (Throwable e) {
					Assert.fail("Tab Name:" + sheetname + " Row number:"
							+ xlRowCount + " Column number:" + xlColumnPointer
							+ " Expected result:" + strCellValue
							+ " Actual result:" + textVal);
				}

				break;
			}
		}

	}

	public void clickBackToClient() throws Throwable {
		clickButton(getResource("frontend.clientform.backtoclientname"),
				"xpath");
	}


	/**
	 * Method makes repayment and verifies & Validates Loan tabs details
	 * @param excelSheetPath
	 * @param excelSheet
	 * @throws Throwable 
	 */
	public void makeAndVerifyRepayment(String excelSheetPath, String excelName,
			String sheetName) throws Throwable {
		// TODO Auto-generated method stub

		if (sheetName.equals("Input")) {
			makeRepayment(excelSheetPath, excelName, sheetName);
		} else {
			if (sheetName.equals("Transactions")) {
				if (!ishideAccuralsChecked) {
					isaccuralsTypeTransaction = false;
				}
			}
			verifyLoanTabData(excelSheetPath, excelName, sheetName);
		}
	}

/*	private void validateTransactions(String excelSheetPath, String excelName,
			String transactionsSheet) throws Exception {
		// TODO Auto-generated method stub
		if (!ishideAccuralsChecked) {
			isaccuralsTypeTransaction = false;
		}
		verifyLoanTabData(excelSheetPath, excelName, transactionsSheet);
	}

	private void validateRepaymentSchedule(String excelSheetPath,
			String excelName, String repaymentScheduleSheet) throws Exception {
		// TODO Auto-generated method stub
		verifyLoanTabData(excelSheetPath, excelName, repaymentScheduleSheet);
	}

	private void validateSummary(String excelSheetPath, String excelName,
			String summarySheet) throws Exception {
		// TODO Auto-generated method stub
		verifyLoanTabData(excelSheetPath, excelName, summarySheet);
	}*/

	private void makeRepayment(String excelSheetPath, String excelName,
			String inputSheet) throws Throwable {
		// TODO Auto-generated method stub
		
			Map<String, String> repaymentDetails = parseExcelSheet1(
					excelSheetPath, excelName, inputSheet);
			insertValues(repaymentDetails);
			clickButton(getResource("submitmakerepayment"));
			Thread.sleep(getResourceKey("extraLargeWait"));

			// Before reading transaction id need to un check the hideAccurals
			// button for scheduler job scenarios
		/*	if (!ishideAccuralsChecked) {
				getWebDriver().findElement(
						By.xpath("//a[contains(.,'Transactions')]")).click();
				isTransactionTabSelected = true;
				LazyWebElement accrualCheck = getElement(getResource("hideaccruals"));
				if (accrualCheck.isSelected()) {
					clickButton(getResource("hideaccruals"));
					Thread.sleep(getResourceKey("mediumWait"));
				}

			}*/
		
	}

/*	public void makeRepaymentAndReadTransactionId(String excelSheetPath,
			List<String> excelSheet) throws Throwable {
		// TODO Auto-generated method stub

		String excelName = excelSheet.get(0);
		String inputSheet = excelSheet.get(1);
		String transactionsSheet = excelSheet.get(2);

		// Make Repayment
		makeRepayment(excelSheetPath, excelName, inputSheet);
		//validateTransaction And Capture transaction ID
		
		validateTransactions(excelSheetPath, excelName, transactionsSheet);

	}*/
	public void verifyAndReadTransactionId(String excelSheetPath,
			String excelSheetName, String sheetName)throws Throwable {
		// TODO Auto-generated method stub
		isaccuralsTypeTransaction = false;
		verifyLoanTabData(excelSheetPath, excelSheetName, sheetName);
	}
	public void makeRepaymentAndReadTransactionId(String excelSheetPath,
			String excelName, String sheetName) throws Throwable {
		if (sheetName.equals("Input")) {
			makeRepayment(excelSheetPath, excelName, sheetName);
		} else {
			isaccuralsTypeTransaction = false;
			verifyLoanTabData(excelSheetPath, excelName, sheetName);
		}
	}

	/**Method Searches Journal Entries by entering transaction id and verify the account details.
	 * @param excelSheetPath
	 * @param transaction
	 * @throws InterruptedException
	 * @throws IOException
	 * @throws ParseException
	 */
	public void searchWithTransactinID(String clientExcelSheetPath,
			String excelSheetName, String sheetName)
			throws InterruptedException, IOException, ParseException, Exception {
		
			/*
			 * List<List<String>> sheetOptions = transaction.raw(); for
			 * (List<String> sheetOption : sheetOptions) {
			 * 
			 * for (int sheet = 1; sheet < sheetOption.size(); sheet++) { int
			 * sheetId = sheet - 1;
			 */
			
			if (sheetName.equals("Acc_Disbursement")
					|| sheetName.equals("Acc_Disbursement1")
					|| sheetName.equals("Acc_RepaymentDisbursement")
					|| sheetName.equals("Acc_Repayment")
					|| sheetName.equals("Acc_Repayment1")
					|| sheetName.equals("Acc_Upfront1")
					|| sheetName.equals("Acc_Upfront2")) {
				
				if( sheetName.equals("Acc_Upfront1")) {
					transactionIDIndex = 0;
						setAccuralTransactionID = setAccuralTransactionType;
					}

				isTransactionTabSelected = true;
				getWebDriver()
						.findElement(
								By.xpath("//input[@placeholder='Search by transaction']"))
						.sendKeys(
								Keys.chord(Keys.CONTROL, "a"),
								"L"
										+ setAccuralTransactionID.toArray()[transactionIDIndex++]);
				Thread.sleep(getResourceKey("smallWait"));
				clickButton(
						getResource("frontend.accounting.searchjournal.transactionid.submit"),
						"xpath");
				Thread.sleep(getResourceKey("mediumWait"));
				verifyLoanTabData(clientExcelSheetPath, excelSheetName,
						sheetName);
				Thread.sleep(getResourceKey("smallWait"));
				clickButton(
						getResource("frontend.accounting.searchjournal.transactionid.Parameters"),
						"xpath");
				Thread.sleep(getResourceKey("mediumWait"));
			}

		if (sheetName.equals("Acc_Periodic") || sheetName.equals("Acc_Upfront")) {

			Iterator<String> getTransactionType = setAccuralTransactionType
					.iterator();
			while (getTransactionType.hasNext()) {
				getWebDriver()
						.findElement(
								By.xpath("//input[@placeholder='Search by transaction']"))
						.sendKeys(Keys.chord(Keys.CONTROL, "a"),
								"L" + getTransactionType.next());

				Thread.sleep(getResourceKey("mediumWait"));
				clickButton(
						getResource("frontend.accounting.searchjournal.transactionid.submit"),
						"xpath");
				Thread.sleep(getResourceKey("mediumWait"));
				verifyAccrualData(clientExcelSheetPath, excelSheetName,
						sheetName);
				clickButton(
						getResource("frontend.accounting.searchjournal.transactionid.Parameters"),
						"xpath");
				Thread.sleep(getResourceKey("mediumWait"));
			}
		}

	}

	/**
	 * Method navigates to Scheduler Jobs and select job and runs it.
	 * @param schedularJobName 
	 * @throws InterruptedException
	 */
	public void selectSchedularJob(String schedularJobName)
			throws InterruptedException {

		MifosWebPage.navigateToUrl(MifosWebPage.BASE_URL + "jobs");
		Thread.sleep(getResourceKey("mediumWait"));

		switch (schedularJobName) {

		case "Periodic Accrual Transactions":
			LazyWebElement checkPeriodic = getElement(getResource("addperiodicaccrualtransactions"));
			if (!checkPeriodic.isSelected()) {
				clickButton(getResource("addperiodicaccrualtransactions"));
				Thread.sleep(getResourceKey("mediumWait"));
			}
			ishideAccuralsChecked = false;
			
			break;
		case "Apply penalty to overdue loans":
			LazyWebElement checkpenalty = getElement(getResource("addpenaltytooverdueloans"));
			if (!checkpenalty.isSelected()) {
				clickButton(getResource("addpenaltytooverdueloans"));
				Thread.sleep(getResourceKey("mediumWait"));
			}
			break;
		case "Periodic & penalty to overdue loans":
			LazyWebElement checkPeriodic1 = getElement(getResource("addperiodicaccrualtransactions"));
			if (!checkPeriodic1.isSelected()) {
				clickButton(getResource("addperiodicaccrualtransactions"));
				Thread.sleep(getResourceKey("mediumWait"));
			}
			((JavascriptExecutor) getWebDriver()).executeScript("scroll(0,500);");
			Thread.sleep(getResourceKey("smallWait"));
			clickButton(getResource("runSelectedJobs"));
			Thread.sleep(getResourceKey("smallWait"));
			clickButton(getResource("refresh"));
			Thread.sleep(getResourceKey("largeWait"));
			ishideAccuralsChecked = false;
			LazyWebElement checkpenalty1 = getElement(getResource("addpenaltytooverdueloans"));
			if (!checkpenalty1.isSelected()) {
				clickButton(getResource("addpenaltytooverdueloans"));
				Thread.sleep(getResourceKey("mediumWait"));
			}
			break;
		case "Add Upfront Accrual Transactions":
			LazyWebElement addupfrontaccrual = getElement(getResource("addupfrontaccrualtransactions"));
			if (!addupfrontaccrual.isSelected()) {
				clickButton(getResource("addupfrontaccrualtransactions"));
				Thread.sleep(getResourceKey("mediumWait"));
			}
			ishideAccuralsChecked = false;
			break;
			
		case "Upfront & penalty to overdue loans":
			LazyWebElement addupfrontaccrual1 = getElement(getResource("addupfrontaccrualtransactions"));
			if (!addupfrontaccrual1.isSelected()) {
				clickButton(getResource("addupfrontaccrualtransactions"));
				Thread.sleep(getResourceKey("mediumWait"));
			}
			((JavascriptExecutor) getWebDriver()).executeScript("scroll(0,500);");
			Thread.sleep(getResourceKey("smallWait"));
			clickButton(getResource("runSelectedJobs"));
			Thread.sleep(getResourceKey("smallWait"));
			clickButton(getResource("refresh"));
			Thread.sleep(getResourceKey("largeWait"));
			ishideAccuralsChecked = false;
			LazyWebElement checkpenalty2 = getElement(getResource("addpenaltytooverdueloans"));
			if (!checkpenalty2.isSelected()) {
				clickButton(getResource("addpenaltytooverdueloans"));
				Thread.sleep(getResourceKey("mediumWait"));
			}
			break;
		default:
			System.out.println("Invalid schedular Job");
			break;

		}
		((JavascriptExecutor) getWebDriver()).executeScript("scroll(0,500);");
		Thread.sleep(getResourceKey("smallWait"));
		clickButton(getResource("runSelectedJobs"));
		Thread.sleep(getResourceKey("smallWait"));
		clickButton(getResource("refresh"));
		Thread.sleep(getResourceKey("mediumWait"));

		((JavascriptExecutor) getWebDriver())
				.executeScript("window.history.go(-1)");
		Thread.sleep(getResourceKey("largeWait"));

	}

	
	  private void verifyAccrualData(String clientExcelSheetPath,
				String excelSheetName, String sheetname) throws InterruptedException, IOException,
 ParseException {

//		for (String excelname : excelSheetName) {
			int currentRow = 1;
			int rowToiterate = 0;
			int excelRowCount = 1;
			int xPathRow = 1;
			String textVal1 = null;
			Date excelDate = null;
			boolean rowWithDateFound = true;

			try {
				FileInputStream file = new FileInputStream(new File(
						clientExcelSheetPath + "\\" + excelSheetName));
				XSSFWorkbook workbook = new XSSFWorkbook(file);
				XSSFSheet sheet = workbook.getSheet(sheetname);

				excelRowCount = sheet.getLastRowNum() - sheet.getFirstRowNum();

				DateFormat dateFormat = new SimpleDateFormat("dd MMMM yyyy");
				List<WebElement> applicationCol = null;

				applicationCol = getWebDriver()
						.findElements(
								By.xpath(".//*[@id='main']/div[3]/div/div/div/div/div/div[4]/table/tbody/tr[1]/td"));

				for (int row = 1; row <= excelRowCount; row++) {

					if ((sheet.getRow(row) == null)
							|| (sheet.getRow(row).getCell(2) == null)) {
						continue;
					}
					switch (sheet.getRow(row).getCell(2).getCellType()) {
					case Cell.CELL_TYPE_BLANK:
						break;
					case Cell.CELL_TYPE_NUMERIC:

						if (HSSFDateUtil.isCellDateFormatted(sheet.getRow(row)
								.getCell(2))) {
							excelDate = sheet.getRow(row).getCell(2)
									.getDateCellValue();
						}
						break;
					}
					textVal1 = applicationCol.get(2).getText();
					Date appDate = dateFormat.parse(textVal1);

					if ((textVal1.equals(dateFormat.format(excelDate)))) {
						if (rowWithDateFound) {
							currentRow = row;
							rowWithDateFound = false;
						}
						rowToiterate++;

					} else if (!appDate.after(excelDate))
						break;
				}
				List<WebElement> readApplicationCol = null;
				for (; rowToiterate != 0; rowToiterate--) {
					int colIndex = 6;

					readApplicationCol = getWebDriver()
							.findElements(
									By.xpath(".//*[@id='main']/div[3]/div/div/div/div/div/div[4]/table/tbody/tr["
											+ xPathRow + "]/td"));
					verifyColumnDetails(colIndex, currentRow,
							readApplicationCol, sheet, sheetname);

					currentRow++;
					xPathRow++;

				}

			} catch (FileNotFoundException fnfe) {
				fnfe.printStackTrace();
			} 

	//		break;
	//	}

	}
	  
	  /**
	 * Method adds delete and modify tranche from tranche tabs and verifies tabs
	 * 
	 * @param clientExcelSheetPath
	 * @param excelSheetName
	 * @param sheetName
	 * @throws Throwable
	 */
	public void loanTabDetails(String clientExcelSheetPath,
			String excelSheetName, String sheetName) throws Throwable {
		// TODO Auto-generated method stub

		if (sheetName.equals("Loan Tranche Details")) {

			getWebDriver().findElement(
					By.xpath("//a[contains(.,'" + sheetName + "')]")).click();
			Map<String, String> tabDetails = parseExcelSheet(
					clientExcelSheetPath, excelSheetName, sheetName);
			insertValues(tabDetails);
			Thread.sleep(getResourceKey("largeWait"));
		} else if (sheetName.equals("Charges")) {
			getWebDriver()
					.findElement(
							By.xpath(".//*[@id='main']/div[3]/div/div/div/div/div/div[2]/div[3]/div[4]/div/ul/li[11]/a"))
					.click();
			Thread.sleep(getResourceKey("smallWait"));
			Map<String, String> tabDetails = parseExcelSheet(
					clientExcelSheetPath, excelSheetName, sheetName);
			insertValues(tabDetails);
			Thread.sleep(getResourceKey("largeWait"));
		} else if (sheetName.equals("Modify Transaction")) {
			Map<String, String> tabDetails = parseExcelSheet(
					clientExcelSheetPath, excelSheetName, sheetName);
			insertValues(tabDetails);
			Thread.sleep(getResourceKey("largeWait"));
		}else if (sheetName.equals("Prepay Loan")) {
			Map<String, String> tabDetails = parseExcelSheet1(
					clientExcelSheetPath, excelSheetName, sheetName);
			insertValues(tabDetails);
			Thread.sleep(getResourceKey("largeWait"));
		}else {
			if (sheetName.equals("Transactions")) {
				if (!ishideAccuralsChecked) {
					isaccuralsTypeTransaction = false;
				}
			}
			verifyLoanTabData(clientExcelSheetPath, excelSheetName, sheetName);
		}

	}
	  	  
	  	/**
	  	 * Method verifyAndValidate Error msg successfully from target excel
	  	 * sheet 
	  	 * @param excelSheetPath
	  	 * @param excelSheetName
	  	 * @param sheetName
	  	 * @throws Exception 
	  	 */
	  	public void verifyAndValidate(String excelSheetPath, String excelSheetName,
				String sheetName) throws Exception {
			// TODO Auto-generated method stub
			Map<String, String> verifyMap = parseExcelSheet(excelSheetPath,
					excelSheetName, sheetName);
			for (Map.Entry<String, String> entry : verifyMap.entrySet()) {
				verifySuccessMessage(entry.getKey(), entry.getValue());
				
			}
	  	}
	  	  
		public void defineFloatingRates(String excelSheetPath,
				String excelSheetName, String sheetName) throws Throwable {
			// TODO Auto-generated method stub
			try {
				Map<String, String> FloatingRatesMap = parseExcelSheet(
						excelSheetPath, excelSheetName, sheetName);
				MifosWebPage.navigateToUrl(MifosWebPage.BASE_URL + "floatingrates");
				Thread.sleep(getResourceKey("mediumWait"));
				insertValues(FloatingRatesMap);
				Thread.sleep(getResourceKey("mediumWait"));
			} catch (Exception e) {
				e.printStackTrace();
			}

		} 
	 

	public void searchUser(String user) throws InterruptedException {
		getWebDriver().findElement(By.id("search")).sendKeys(user);
		getWebDriver().findElement(By.id("search")).sendKeys(Keys.ENTER);
		Thread.sleep(getResourceKey("extraLargeWait"));
		getWebDriver().findElement(By.xpath(".//div[1]/div/span[2]/a")).click();
		Thread.sleep(getResourceKey("largeWait"));

	}

	public void undoDisbursal() throws InterruptedException {
		clickButton(getResource("frontend.clients.clients.undodisbursal"),
				"xpath");
		clickButton(getResource("frontend.admin.createoffice.savebutton"), "id");
		Thread.sleep(getResourceKey("mediumWait"));
	}

	public void reverseTransaction() throws InterruptedException {/*
																 * getWebDriver()
																 * .
																 * findElement(By
																 * .xpath(
																 * "//a[contains(.,'Transactions')]"
																 * )) .click();
																 * Thread.sleep(
																 * getResourceKey
																 * (
																 * "mediumWait")
																 * );
																 * System.out.
																 * println
																 * (getText(
																 * "frontend.clients.clients.makerepayment.reversetransaction"
																 * , "Xpath"));
																 * if (getText(
																 * "frontend.clients.clients.makerepayment.reversetransaction"
																 * ,
																 * "Xpath").equals
																 * (
																 * "Repayment"))
																 * {
																 * clickButton(
																 * getResource(
																 * "frontend.clients.clients.makerepayment.reversetransaction"
																 * ), "xpath");
																 * Thread.sleep(
																 * getResourceKey
																 * (
																 * "largeWait"))
																 * ;
																 * clickButton(
																 * getResource(
																 * "frontend.clients.clients.transaction.undo"
																 * ), "css");
																 * Thread.sleep(
																 * getResourceKey
																 * (
																 * "largeWait"))
																 * ;
																 * clickButton(
																 * getResource(
																 * "frontend.clients.clients.transaction.secondundo"
																 * ), "xpath");
																 * Thread.sleep(
																 * getResourceKey
																 * (
																 * "largeWait"))
																 * ; }
																 */
	}

	





}

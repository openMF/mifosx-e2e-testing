/**
 *
 */
package com.mifos.pages;

import static org.junit.Assert.fail;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.math.BigDecimal;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.ParsePosition;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;

import org.apache.commons.lang.StringUtils;
import org.apache.poi.hssf.usermodel.HSSFDateUtil;
import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.util.NumberToTextConverter;
import org.apache.poi.xssf.usermodel.XSSFCell;
import org.apache.poi.xssf.usermodel.XSSFSheet;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.junit.Assert;
import org.openqa.selenium.By;
import org.openqa.selenium.JavascriptExecutor;
import org.openqa.selenium.Keys;
import org.openqa.selenium.NoSuchElementException;
import org.openqa.selenium.StaleElementReferenceException;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;

import com.ibm.icu.text.NumberFormat;
import com.mifos.common.TenantsUtils;
import com.mifos.testing.framework.webdriver.LazyWebElement;

//import org.jopendocument.dom.spreadsheet.MutableCell;
//import org.jopendocument.dom.spreadsheet.Sheet;
//import org.jopendocument.dom.spreadsheet.SpreadSheet;

public class FrontPage extends MifosWebPage {

//	Set<String> setAccuralTransactionID = new TreeSet<String>();
//	Set<String> setAccuralTransactionType = new TreeSet<String>();
	Set<String> setAccuralTransactionID = new LinkedHashSet<String>();
	Set<String> setAccuralTransactionType = new LinkedHashSet<String>();
	Set<String> setSavingTransactionID = new LinkedHashSet<String>();
	static String value = "";
	public String rowval;
	public boolean ishideAccuralsChecked = true;
	boolean isTransactionTabSelected;
	public boolean isaccuralsTypeTransaction = true;
	int transactionIDIndex = 0;
	public String currentUrl ="";
	public String currentJlgLoanUrl ="";
	public static String ProductCreatedURL="";
	public static String DataTableCreatedURL="";
    private boolean istransactionIdIndexAssigned = true;
	public static String sheetName="";

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
			// System.out.println("Opened file name :" + excelsheet
			// + " with sheet " + sheetname);

			Iterator<Row> rowIterator = sheet.iterator();
			while (rowIterator.hasNext()) {
				Row row = rowIterator.next();

				Iterator<Cell> cellIterator = row.cellIterator();
				while (cellIterator.hasNext()) {
					cell1 = (XSSFCell) cellIterator.next();
					// System.out.println("Cell One ... key="
					// + cell1.getRichStringCellValue());
					String key = cell1.getRichStringCellValue().toString();

					if (!cellIterator.hasNext()) {
						System.out.println("No Such Element");
					} else {
						// cell iterator by calling its next method
						cell2 = (XSSFCell) cellIterator.next();

						switch (cell2.getCellType()) {
						case Cell.CELL_TYPE_NUMERIC:
							int i = (int) cell2.getNumericCellValue();
							if (key.equals("mobilenumber")
									|| key.equals("verifymobilenumber")) {
								
								value = NumberToTextConverter.toText(cell2.getNumericCellValue());;
							}
							
							else if (key.equals("InputtextInSearchField"))
							{
							value = new BigDecimal(
									cell2.getNumericCellValue())
									.toPlainString();
							}
							else if (key.equals("VerifyRDMaturityAmount"))
							{
								value = String.valueOf((double) cell2.getNumericCellValue());
							
							}
							else 
							value = String.valueOf(i);
							// System.out.println("Cell Two ... value=" +
							// value);
							if (HSSFDateUtil.isCellDateFormatted(cell2)) {
								value = parseDate(cell2);
								if(!key.equals("frequencydateforrecalculation")){
									excelVlaue.put(key, value);
								}
								

							} else {
								excelVlaue.put(key, value);

							}

							break;

						case Cell.CELL_TYPE_STRING:
							// / System.out.println("Cell Two ... value="
							// + cell2.getRichStringCellValue());
							value = cell2.getRichStringCellValue().toString();
							excelVlaue.put(key, value);
							break;
						}
					}
				}
			}

		} catch (Exception e) {
			throw new Exception("invalid excel sheet or sheet name \n"
					+ excelsheet +" "+ sheetname);

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
			// System.out.println("Opened file name :" + excelsheet
			// + " with sheet " + sheetname);

			Iterator<Row> rowIterator = sheet.iterator();
			while (rowIterator.hasNext()) {
				Row row = rowIterator.next();

				Iterator<Cell> cellIterator = row.cellIterator();
				while (cellIterator.hasNext()) {
					cell1 = (XSSFCell) cellIterator.next();
					// System.out.println("Cell One ... key="
					// + cell1.getRichStringCellValue());
					String key = cell1.getRichStringCellValue().toString();

					if (!cellIterator.hasNext()) {
						System.out.println("No Such Element");
					} else {
						// cell iterator by calling its next method
						cell2 = (XSSFCell) cellIterator.next();

						switch (cell2.getCellType()) {
						case Cell.CELL_TYPE_NUMERIC:
							if(key.contains("Reschedule")){
							int i = (int) cell2.getNumericCellValue();
							value = String.valueOf(i);}
							else{
							double i = (double) cell2.getNumericCellValue();
							value = String.valueOf(i);}
							// System.out.println("Cell Two ... value=" +
							// value);
							if (key.equals("mobilenumber")) {
								value = new BigDecimal(
										cell2.getNumericCellValue())
										.toPlainString();
							}
							if (HSSFDateUtil.isCellDateFormatted(cell2)) {
								value = parseDate(cell2);
								excelVlaue.put(key, value);

							} else {
								excelVlaue.put(key, value);

							}

							break;

						case Cell.CELL_TYPE_STRING:
							// / System.out.println("Cell Two ... value="
							// + cell2.getRichStringCellValue());
							value = cell2.getRichStringCellValue().toString();
							excelVlaue.put(key, value);
							break;
						}
					}
				}
			}

		} catch (Exception e) {
			throw new Exception("invalid excel sheet or sheet name \n"
					+ excelsheet + sheetname);

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
		Map<String, String> loginMap = parseExcelSheet(loginExcelSheetPath,
				excelSheetName, sheetName);
		insertValues(loginMap);
		clickButton(getResource("signin"));
	}

	/**
	 * Method navigates to client page
	 * 
	 * @throws Throwable
	 */
	public void clientNavigation() throws Throwable {
		try {
			MifosWebPage.navigateToUrl(TenantsUtils.getLocalTenantUrl()+"clients");
			verifySuccessMessage("clickoncreateclient", "Create Client");
			clickButton(getResource("clickoncreateclient"));
			verifySuccessMessage("submitclient", "Submit");

		} catch (Exception ioe) {
			ioe.printStackTrace();
		}
	}
	
	/**
	 * Method navigates to client page
	 * 
	 * @throws Throwable
	 */
	public void groupNavigation() throws Throwable {
		try {
			MifosWebPage.navigateToUrl(TenantsUtils.getLocalTenantUrl()+"creategroup");
			Thread.sleep(getResourceKey("mediumWait"));
			verifySuccessMessage("submitGroup", "Submit");
			Thread.sleep(getResourceKey("mediumWait"));

		} catch (Exception ioe) {
			ioe.printStackTrace();
		}
	}
	
	/**
	 * Method navigates to client page
	 * 
	 * @throws Throwable
	 */
	public void centerNavigation() throws Throwable {
		try {
			MifosWebPage.navigateToUrl(TenantsUtils.getLocalTenantUrl()+"createcenter");
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
			verifySuccessMessage("clickonmorebutton", "More");

		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public void setupGroup(String clientExcelSheetPath, String excelSheetName,
			String sheetName) throws Throwable {
	
			Map<String, String> clientDetailsMap = parseExcelSheet(
					clientExcelSheetPath, excelSheetName, sheetName);
			insertValues(clientDetailsMap);
//			verifySuccessMessage("clickonmorebutton", "More");
		} 
	
	public void setupCenter(String clientExcelSheetPath, String excelSheetName,
			String sheetName) throws Throwable {
		
			Map<String, String> centerDetailsMap = parseExcelSheet(
					clientExcelSheetPath, excelSheetName, sheetName);
			insertValues(centerDetailsMap);
			// if(!centerDetailsMap.containsKey("clickoncancelCenter")){
			// verifySuccessMessage("clickonmorebutton", "More");
			// }
		} 
	
	/**
	 * Method enters values from target excel sheet into Client page
	 * 
	 * @param clientExcelSheetPath
	 * @param excelSheetName
	 * @param sheetName
	 * @throws Throwable
	 */
	public void transferClient(String clientExcelSheetPath, String excelSheetName,
			String sheetName) throws Throwable {
		try {
			Map<String, String> clientDetailsMap = parseExcelSheet(
					clientExcelSheetPath, excelSheetName, sheetName);
			insertValues(clientDetailsMap);

		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	/**
	 * Method verifies client has been created successfully from target excel
	 * sheet
	 * 
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
		// verifySuccessMessage("verifyclient", clientDetailsMap.get("Verify"));

	}

	/**
	 * Method inserts a value, To creates a new loan, Approves and Disburse a
	 * given loan from target excel sheet
	 * 
	 * @param clientExcelSheetPath
	 * @param excelSheetName
	 * @param sheetName
	 * @throws Throwable
	 */
	public void setupNewLoan(String clientExcelSheetPath,
			String excelSheetName, String sheetName) throws Throwable {

		Map<String, String> newLoanDetailsMap = parseExcelSheet(
				clientExcelSheetPath, excelSheetName, sheetName);
		insertValues(newLoanDetailsMap);
		currentUrl = getWebDriver().getCurrentUrl();
		
		try {
			for (int i = 10; i >= 0; i--) {
			if (!currentUrl.contains("viewloanaccount")) {
					Thread.sleep(getResourceKey("smallWait"));
					currentUrl = getWebDriver().getCurrentUrl();
				}
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
//			Assert.fail("Unable to find url");
		}
	}

	public void setupNewSaving(String clientExcelSheetPath,
			String excelSheetName, String sheetName) throws Throwable {

		Map<String, String> newLoanDetailsMap = parseExcelSheet(
				clientExcelSheetPath, excelSheetName, sheetName);
        this.sheetName= sheetName;
		insertValues(newLoanDetailsMap);
		
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
			if(sheetName.equals("Saving"))
			{
				MifosWebPage.navigateToUrl(TenantsUtils.getLocalTenantUrl()+ "createsavingproduct");	
			}
			else if(sheetName.equals("FixedDeposit"))
			{		
				MifosWebPage.navigateToUrl(TenantsUtils.getLocalTenantUrl()+ "createfixeddepositproduct");
			}
			else if(sheetName.equals("RecurringDeposit"))
			{		
				MifosWebPage.navigateToUrl(TenantsUtils.getLocalTenantUrl()+ "createrecurringdepositproduct");
			}
			else if(sheetName.equals("Share"))
			{		
				MifosWebPage.navigateToUrl(TenantsUtils.getLocalTenantUrl()+ "createshareproduct");
			}
			else if(sheetName.equals("Product Mix"))
			{		
				MifosWebPage.navigateToUrl(TenantsUtils.getLocalTenantUrl()+ "productmix");
			}
			else if(sheetName.equals("Data Table"))
			{		
				MifosWebPage.navigateToUrl(TenantsUtils.getLocalTenantUrl()+ "datatables");
			}
			else
			{
			MifosWebPage.navigateToUrl(TenantsUtils.getLocalTenantUrl()+ "createloanproduct");
			}
			Thread.sleep(getResourceKey("mediumWait"));
			
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
			Map<String, String> productDetailsMap = parseExcelSheet(
					productExcelSheetPath, excelSheetName, sheetName);

			insertValues(productDetailsMap);

			clickButton(getResource("submitloanproduct"));
			Thread.sleep(getResourceKey("mediumWait"));
			((JavascriptExecutor) getWebDriver())
					.executeScript("scroll(500,0);");
			if(!(sheetName.equals("ProductMixInput")||sheetName.equals("DataTable Input")))
			{
			if (sheetName.equals("ProductSavingInput")) {
				verifySuccessMessage("editSavingproduct", "Edit");
				ProductCreatedURL = getWebDriver().getCurrentUrl();
			} else if(sheetName.equals("ProductFDInput"))
			{
			verifySuccessMessage("editFDproduct", "Edit");
			ProductCreatedURL = getWebDriver().getCurrentUrl();
			}
			else if(sheetName.equals("ProductRDInput"))
			{
			verifySuccessMessage("editRDproduct", "Edit");
			ProductCreatedURL = getWebDriver().getCurrentUrl();
			}else if(sheetName.equals("ProductShareInput"))
				{
				verifySuccessMessage("editShareproduct", "Edit");
				ProductCreatedURL = getWebDriver().getCurrentUrl();
				}
			else {
				
				verifySuccessMessage("editloanproduct", "Edit");
				ProductCreatedURL = getWebDriver().getCurrentUrl();
			}
			}
			DataTableCreatedURL=getWebDriver().getCurrentUrl();
			Thread.sleep(getResourceKey("mediumWait"));

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
	 * 
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

		String sheetIndex = null;
		int rowCount = 0;
		int firstrow=1;
		int lastrow=1;
		int Transactioncounter = 0;
		try {
			FileInputStream file = new FileInputStream(new File(
					clientExcelSheetPath + "/" + excelSheetName));
			XSSFWorkbook workbook = new XSSFWorkbook(file);
			XSSFSheet sheet = workbook.getSheet(sheetname);

			if (sheetname.equals("Summary")) {
				sheetIndex = "2";
			} else if (sheetname.equals("Repayment Schedule")) {
				sheetIndex = "3";
			} else if (sheetname.equals("Transactions")) {
				sheetIndex = "4]/div[1";
			} else if (sheetname.equals("Floating Interest Rates")) {
				sheetIndex = "10";
			}
			if (!isTransactionTabSelected ) {
//				getWebDriver().findElement(
//						By.xpath("//a[contains(.,'" + sheetname + "')]"))
//						.click();
				
				new WebDriverWait(getWebDriver(), 120).until(
				        ExpectedConditions.elementToBeClickable(
				            By.xpath("//a[contains(.,'" + sheetname + "')]")))
				                .click();
				
				Thread.sleep(getResourceKey("wait"));
				
				// Before reading transaction id need to un-check the
				// hideAccurals
				// button for periodic scenarios
				if (sheetname.equals("Transactions") && !ishideAccuralsChecked) {
					
						clickButton(getResource("hideaccruals"));
						Thread.sleep(getResourceKey("largeWait"));
					
				}
			}
			rowCount = sheet.getLastRowNum() - sheet.getFirstRowNum();
			if(sheetname.equals("Summary"))
            {
                System.out.println(excelSheetName+" has rowcount "+rowCount);
            }
			boolean iteration = true;
			int rowNo = 1;
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
						|| sheetname.equals("Transactions")
						|| sheetname.equals("Floating Interest Rates")) {

					if (sheetname.equals("Transactions")
							&& !isaccuralsTypeTransaction) {

						Accrual = getWebDriver()
								.findElement(
										By.xpath("//*[@id='main']/div[2]/div/div/div/div/div/div[2]/div[4]/div[4]/div/div/div["
												+ sheetIndex
												+ "]/table/tbody/tr["
												+ xlRowCount + "]/td[4]"))
								.getText();
						if (Accrual.equals("Accrual")) {
							setAccuralTransactionType
									.add(getWebDriver()
											.findElement(
													By.xpath("//*[@id='main']/div[2]/div/div/div/div/div/div[2]/div[4]/div[4]/div/div/div["
															+ sheetIndex
															+ "]/table/tbody/tr["
															+ xlRowCount
															+ "]/td[1]"))
											.getText());
						} else {
							setAccuralTransactionID
									.add(getWebDriver()
											.findElement(
													By.xpath("//*[@id='main']/div[2]/div/div/div/div/div/div[2]/div[4]/div[4]/div/div/div["
															+ sheetIndex
															+ "]/table/tbody/tr["
															+ xlRowCount
															+ "]/td[1]"))
											.getText());
						}
					}

					do{
						Transactioncounter++;
						if(Transactioncounter==22){
							Thread.sleep(5000);
						}
					applicationCol = getWebDriver()
							.findElements(
									By.xpath("//*[@id='main']/div[2]/div/div/div/div/div/div[2]/div[4]/div[4]/div/div/div["
											+ sheetIndex
											+ "]/table/tbody/tr["
											+ xlRowCount + "]/td"));
					}while(applicationCol.isEmpty() && Transactioncounter<25);
					
					
					if (sheetname.equals("Transactions")) {
						boolean rowMatchSuccess = true;
						int failRowCnt = 0;
						int failColCnt = 0;
						String expected = null;
						String actual = null;
						double screenVal = 0.0;
						int counter=0;
						DateFormat dateFormat = new SimpleDateFormat(
								"dd MMMM yyyy");


							List<XLCellElement> xlRow = getColumnDetails(
									xlColumnPointer, xlRowCount,
									applicationCol, sheet, sheetname);

							
							
							for (int appRow = 1; appRow <= rowCount; appRow++) {
								
								do{
									counter++;
									if(counter==22){
										Thread.sleep(2000);
									}
								applicationCol = getWebDriver()
										.findElements(
												By.xpath("//*[@id='main']/div[2]/div/div/div/div/div/div[2]/div[4]/div[4]/div/div/div["
														+ sheetIndex
														+ "]/table/tbody/tr["
														+ appRow + "]/td"));
								}while(applicationCol.isEmpty() && counter<25);
									
								
				if (!(applicationCol.get(2).getText().equals(dateFormat.format((Date) xlRow.get(0).value))
				       && applicationCol.get(3).getText().equals((String) xlRow.get(1).value)
				       && parseDecimal(applicationCol.get(4).getText())== parseDecimal((String) xlRow.get(2).value))){
					rowMatchSuccess=false;
									continue;
									
								}
				rowMatchSuccess=true;
								for (int xlCol = 2; xlCol < applicationCol
										.size(); xlCol++) {
									int xlRowCol;
									if(xlCol<9)
									{
									 xlRowCol=xlCol-2;
									}
									else
									{
										if(xlCol==9)
										{
											continue;
										}
										xlRowCol=xlCol-3;
									}
									
									String textVal = applicationCol.get(xlCol)
											.getText();

									switch (xlRow.get(xlRowCol).type) {
									case "null":
										break;
									case "date":
										if (!textVal.equals(dateFormat
												.format((Date) xlRow
														.get(xlRowCol).value))) {
											rowMatchSuccess = false;
											failRowCnt = appRow;
											failColCnt = xlCol;
											expected = dateFormat
													.format((Date) xlRow
															.get(xlRowCol).value);
											actual = textVal;
										}
										break;
									case "decimal":
										
										if ((textVal != null)
												&& !(textVal.trim().equals("")))
											screenVal = parseDecimal(textVal);
										if (screenVal != parseDecimal((String) xlRow
												.get(xlRowCol).value)) {
											rowMatchSuccess = false;
											failRowCnt = appRow;
											failColCnt = xlCol;
											expected = (String) xlRow
													.get(xlRowCol).value;
											actual = textVal;
										}
										break;
									case "string":
										if (textVal.contains("$")) {
											textVal = textVal.substring(
													textVal.indexOf(" ") + 1,
													textVal.length());
										}
										if (!textVal.equals((String) xlRow
												.get(xlRowCol).value)) {
											rowMatchSuccess = false;
											failRowCnt = appRow;
											failColCnt = xlCol;
											expected = (String) xlRow
													.get(xlRowCol).value;
											actual = textVal;

										}
										break;
									}
									if (!rowMatchSuccess) {
										Assert.fail("Tab Name:" + sheetname
												+ " Row number:" + failRowCnt
												+ " Column number:" + failColCnt
												+ " Expected result:" + expected
												+ " Actual result:" + actual);
									}
								
								}
								
									break;
								
							}
							if (!rowMatchSuccess) {
								Assert.fail("In Tab Name:" + sheetname
										+ " Row having values "+dateFormat.format((Date) xlRow.get(0).value)+
										" "+(String) xlRow.get(1).value+" "+(String) xlRow.get(2).value+
										" not found");
							}

						

					}
				
					else{
					verifyColumnDetails(xlColumnPointer, xlRowCount,
							applicationCol, sheet, sheetname);
					}

				} else if (sheetname.equals("Acc_Disbursement")
						|| sheetname.equals("Acc_Disbursement1")
						|| sheetname.equals("Acc_RepaymentDisbursement")
						|| sheetname.equals("Acc_Repayment")
						|| sheetname.equals("Acc_Repayment1")
						|| sheetname.equals("Acc_Upfront1")
						|| sheetname.equals("Acc_Upfront2")
						|| sheetname.equals("Acc_Upfront3")
						|| sheetname.equals("Acc_Periodic")
						|| sheetname.equals("Acc_Upfront")
						||sheetname.contains("Interst_Posting")
						|| sheetname.contains("Deposit")
						|| sheetname.contains("Withdraw")
						|| sheetname.contains("Pay_charge")) {
					
					applicationCol = getWebDriver()
						.findElements(
								By.xpath(".//*[@id='main']/div[2]/div/div/div/div/div/div[4]/table/tbody/tr["
										+ xlRowCount +"]/td"));
				xlColumnPointer = 6;
				boolean rowMatchSuccess = true;
				int failRowCnt = 0;
				int failColCnt = 0;
				String expected = null;
				String actual = null;
				int counter=0;
				List<XLCellElement> xlRow =null;
				if (sheetname.equals("Acc_Periodic")) {

					
					
					if (iteration) {
						int result[] = verifyAccrualData(
								clientExcelSheetPath, excelSheetName,
								sheetname);
						firstrow = result[0];
						lastrow = result[1];
						rowCount=lastrow-firstrow+1;
						iteration = false;
					} else
						firstrow++;
					
					
					 xlRow = getColumnDetails(
							xlColumnPointer, firstrow,
							applicationCol, sheet, sheetname);
				}
				
				else{
				 xlRow = getColumnDetails(
						xlColumnPointer, xlRowCount,
						applicationCol, sheet, sheetname);
				}
				
				
				
				for (int appRow = 1; appRow <= rowCount; appRow++) {
					
					do{
						counter++;
						if(counter==22){
							Thread.sleep(2000);
						}
					applicationCol = getWebDriver()
							.findElements(
									By.xpath(".//*[@id='main']/div[2]/div/div/div/div/div/div[4]/table/tbody/tr["
										+ appRow + "]/td"));
					
					}while(applicationCol.isEmpty() && counter<25);
						
	if (!( applicationCol.get(5).getText().equals((String) xlRow.get(0).value)))
	{
		rowMatchSuccess=false;
		continue;
						
					}

	                rowMatchSuccess=true;
					for (int xlCol = 6; xlCol < applicationCol.size()-1; xlCol++) {
						String textVal = applicationCol.get(xlCol)
								.getText();
						DateFormat dateFormat = new SimpleDateFormat(
								"dd MMMM yyyy");
						switch (xlRow.get(xlCol - 5).type) {
						case "null":
							break;
						case "date":
							if (!textVal
									.equals(dateFormat.format((Date) xlRow
											.get(xlCol - 5).value))) {
								rowMatchSuccess = false;
								failRowCnt = appRow;
								failColCnt = xlCol;
								expected = dateFormat.format((Date) xlRow
										.get(xlCol - 5).value);
								actual = textVal;
							}
							break;
						case "decimal":
							double screenVal = 0.0;
							if ((textVal != null)
									&& !(textVal.trim().equals("")))
								screenVal = parseDecimal(textVal);
							if (screenVal != parseDecimal((String) xlRow
									.get(xlCol - 5).value)) {
								rowMatchSuccess = false;
								failRowCnt = appRow;
								failColCnt = xlCol;
								expected = (String) xlRow.get(xlCol - 5).value;
								actual = textVal;
							}
							break;
						case "string":
							if (textVal.contains("$")) {
								textVal = textVal.substring(
										textVal.indexOf(" ") + 1,
										textVal.length());
							}
							if (!textVal.equals((String) xlRow
									.get(xlCol - 5).value)) {
								rowMatchSuccess = false;
								failRowCnt = appRow;
								failColCnt = xlCol;
								expected = (String) xlRow.get(xlCol - 5).value;
								actual = textVal;
								
							}
							break;
						}
						if (!rowMatchSuccess) {
							Assert.fail("Tab Name:" + sheetname + " Row number:"
									+ failRowCnt + " Column number:" + failColCnt
									+ " Expected result:" + expected
									+ " Actual result:" + actual);

						}
					}
					break;
				}
				if (!rowMatchSuccess) {
					Assert.fail("In Tab Name:" + sheetname
							+ " Row having values "+(String) xlRow.get(0).value+" "+(String) xlRow.get(1).value+
							" not found");

				}

			}


			}
		} catch (FileNotFoundException fnfe) {
			fnfe.printStackTrace();
		} catch (NoSuchElementException e) {
			Assert.fail(" Unable to click \n");
		}
	}

	
	public void verifyProvisionData(String clientExcelSheetPath,
			String excelSheetName, String sheetname)throws InterruptedException, IOException, ParseException 
	{
		int rowCount=0;
	
		try {
			FileInputStream file = new FileInputStream(new File(
					clientExcelSheetPath + "/" + excelSheetName));
			XSSFWorkbook workbook = new XSSFWorkbook(file);
			XSSFSheet sheet = workbook.getSheet(sheetname);
			rowCount = sheet.getLastRowNum() - sheet.getFirstRowNum();
			
			int xlColumnPointer=0;
			List<WebElement> applicationCol = null;
			for (int xlRowCount = 1; xlRowCount <= rowCount; xlRowCount++) {
				applicationCol=getWebDriver()
						.findElements(
								By.xpath(".//*[@id='main']/div[2]/div/div/div/div/div/form/fieldset/table/tbody/tr[2]/td"));
		verifyColumnDetails(xlColumnPointer, xlRowCount,
				applicationCol, sheet, sheetname);
	}
		}catch (FileNotFoundException fnfe) {
			fnfe.printStackTrace();
		} catch (NoSuchElementException e) {
			Assert.fail(" Unable to click \n");
		}
	}

	public void verifySavingData(String clientExcelSheetPath,
			String excelSheetName, String sheetname)throws InterruptedException, IOException, ParseException 
	{
		
		new WebDriverWait(getWebDriver(), 120).until(
		        ExpectedConditions.elementToBeClickable(
		            By.xpath("//a[contains(.,'" + sheetname.split(" ")[1] + "')]")))
		                .click();
		
		int rowCount=0;
		int xlColumnPointer=0;
		int counter=0;
		boolean rowMatchSuccess = true;
		int failRowCnt = 0;
		int failColCnt = 0;
		String expected = null;
		String actual = null;
		double screenVal = 0.0;
		String Xpath2="]/td";
		DateFormat dateFormat = new SimpleDateFormat(
				"dd MMMM yyyy");

	
		try {
			FileInputStream file = new FileInputStream(new File(
					clientExcelSheetPath + "/" + excelSheetName));
			XSSFWorkbook workbook = new XSSFWorkbook(file);
			XSSFSheet sheet = workbook.getSheet(sheetname);
			rowCount = sheet.getLastRowNum() - sheet.getFirstRowNum();
			
			List<WebElement> applicationCol = null;
			List<XLCellElement> xlRow = null;
			String Xpath1 = null;
			for (int xlRowCount = 1; xlRowCount <= rowCount; xlRowCount++) {
				do{
					counter++;
					if(counter==22){
						Thread.sleep(2000);
					}
					
					if(sheetname.contains("TransID"))
					{
						if(sheetname.contains("FD") || sheetname.contains("RD"))
						{
							 
							 setSavingTransactionID.add(getWebDriver()
										.findElement(
												By.xpath("(//*[@id='main']/div[2]/div/div/div/div/div/div[2]/div/div/div[2]/table/tbody/tr[@class='pointer-main ng-scope'])["+xlRowCount+"]/td[1]")).getText());
						}
						else
						{
						setSavingTransactionID.add(getWebDriver()
								.findElement(
										By.xpath("(//*[@id='main']/div[2]/div/div/div/div/div/div[4]/div[3]/div/div/div[2]/table/tbody/tr[@class='pointer-main ng-scope'])["+xlRowCount+"]/td[1]")).getText());
						 
						}
						}
				if(sheetname.contains("Transaction"))
				{
					
					if(sheetname.contains("FixedDeposit") || sheetname.contains("RecurringDeposit") 
							|| sheetname.contains("RD") || sheetname.contains("FD"))
					{
						 xlColumnPointer=1;
						 Xpath1 = "//*[@id='main']/div[2]/div/div/div/div/div/div[2]/div/div/div[2]/table/tbody/tr[@class='pointer-main ng-scope'][";
						 String FullXpath=Xpath1+xlRowCount+Xpath2;
						 applicationCol=getWebDriver().findElements(By.xpath(FullXpath));
						 xlRow = getColumnDetails(
									xlColumnPointer, xlRowCount,
									applicationCol, sheet, sheetname);
					}
				
					else
					{
				 xlColumnPointer=1;
				 
				 Xpath1 = "//*[@id='main']/div[2]/div/div/div/div/div/div[4]/div[3]/div/div/div[2]/table/tbody/tr[@class='pointer-main ng-scope'][";
				 String FullXpath=Xpath1+xlRowCount+Xpath2;
				 applicationCol=getWebDriver()
							.findElements(
									By.xpath(FullXpath));
				 xlRow = getColumnDetails(
							xlColumnPointer, xlRowCount,
							applicationCol, sheet, sheetname);
					}}
				else if(sheetname.contains("Charges"))
				{
					if(sheetname.contains("FixedDeposit") || sheetname.contains("RecurringDeposit"))
					{
						xlColumnPointer=0;
						 int row=xlRowCount+1;
						 applicationCol=getWebDriver()
									.findElements(
											By.xpath("//*[@id='main']/div[3]/div/div/div/div/div/div[2]/div/div/div[3]/table/tbody/tr["+row+"]/td"));
					}
				
					else
					{
						Xpath1 = "//*[@id='main']/div[2]/div/div/div/div/div/div[4]/div[3]/div/div/div[3]/table/tbody/tr[";
						int row=xlRowCount+1;
						String FullXpath=Xpath1+row+Xpath2;
				 applicationCol=getWebDriver().findElements(By.xpath(FullXpath));
				}}
				else if(sheetname.equals("FixedDeposit Summary") || sheetname.contains("RecurringDeposit Summary"))
				{
				 xlColumnPointer=0;
				 applicationCol=getWebDriver()
							.findElements(
									By.xpath(".//*[@id='main']/div[2]/div/div/div/div/div/div[2]/div/div/div[1]/div[1]/div[1]/table/tbody/tr["+xlRowCount+"]/td"));
				                              //.//*[@id='main']/div[2]/div/div/div/div/div/div[2]/div/div/div[1]/div[1]/div[1]/table/tbody/tr
				}
				
				
				}while(applicationCol.isEmpty() && counter<25);
				if(sheetname.contains("Transaction"))
				{
	for (int approw1 = 1; approw1 <= rowCount; approw1++) {
		int appRow=approw1;
		if(sheetname.contains("Charges"))
				{
			appRow=approw1+1;
				}
		 String FullXpath=Xpath1+appRow+Xpath2;
		 applicationCol=getWebDriver()
					.findElements(
							By.xpath(FullXpath));
					
	if (!(applicationCol.get(1).getText().equals(dateFormat.format((Date) xlRow.get(0).value))
	       && applicationCol.get(2).getText().equals((String) xlRow.get(1).value)
	       && isDataEquals(applicationCol.get(3).getText(),(String) xlRow.get(2).value)
	       && isDataEquals(applicationCol.get(4).getText(),(String) xlRow.get(3).value)))
	
	                {
		                   rowMatchSuccess=false;
						   continue;
						
					}
	                        rowMatchSuccess=true;
									for (int xlColl = 2; xlColl < applicationCol.size(); xlColl++) {
									
										int xlCol = xlColl-1;
										String textVal = applicationCol.get(xlColl).getText();

										switch (xlRow.get(xlCol).type) {
										case "null":
											break;
										case "date":
											if (!textVal.equals(dateFormat
													.format((Date) xlRow
															.get(xlCol).value))) {
												rowMatchSuccess = false;
												failRowCnt = appRow;
												failColCnt = xlCol;
												expected = dateFormat
														.format((Date) xlRow
																.get(xlCol).value);
												actual = textVal;
											}
											break;
										case "decimal":
											
											if ((textVal != null)
													&& !(textVal.trim().equals("")))
												screenVal = parseDecimal(textVal);
											if (screenVal != parseDecimal((String) xlRow
													.get(xlCol).value)) {
												rowMatchSuccess = false;
												failRowCnt = appRow;
												failColCnt = xlCol;
												expected = (String) xlRow
														.get(xlCol).value;
												actual = textVal;
											}
											break;
										case "string":
											if (textVal.contains("$")) {
												textVal = textVal.substring(
														textVal.indexOf(" ") + 1,
														textVal.length());
											}
											if (!textVal.equals((String) xlRow
													.get(xlCol).value)) {
												rowMatchSuccess = false;
												failRowCnt = appRow;
												failColCnt = xlCol;
												expected = (String) xlRow
														.get(xlCol).value;
												actual = textVal;

											}
											break;
										}
										if (!rowMatchSuccess) {
											Assert.fail("Tab Name:" + sheetname
													+ " Row number:" + failRowCnt
													+ " Column number:" + failColCnt
													+ " Expected result:" + expected
													+ " Actual result:" + actual);
										}
									
									}
									
										break;
									
								}
								if (!rowMatchSuccess) {
									Assert.fail("In Tab Name:" + sheetname
											+ " Row having values "+dateFormat.format((Date) xlRow.get(0).value)+
											" "+(String) xlRow.get(1).value+" "+(String) xlRow.get(2).value+
											" not found");
								}
	
		}
				else{
					verifyColumnDetails(xlColumnPointer, xlRowCount,
							applicationCol, sheet, sheetname);
					}
			}
		}catch (FileNotFoundException fnfe) {
			fnfe.printStackTrace();
		} catch (NoSuchElementException e) {
			Assert.fail(" Unable to click \n");
		}
	}
	
	
	private String SetNull(String text) {
		// TODO Auto-generated method stub
		
		if(text.equals(""))
		{
			text=null;
		}
		return text;
	}

	private boolean isDataEquals(final String value1, final String value2) throws ParseException {
		if(StringUtils.isEmpty(value1) && StringUtils.isEmpty(value2)) return true ;
		if(!StringUtils.isEmpty(value1) && !StringUtils.isEmpty(value2)) {
			return String.valueOf(parseDecimal(value1)).equals(value2) ;
		}
		return false ;
	}
	public void verifyShareData(String clientExcelSheetPath,
			String excelSheetName, String sheetname)throws InterruptedException, IOException, ParseException 
	{
		if(!sheetname.contains("Other"))
		{
		new WebDriverWait(getWebDriver(), 120).until(
		        ExpectedConditions.elementToBeClickable(
		            By.xpath("//a[contains(.,'" + sheetname.split(" ")[1] + "')]")))
		                .click();
		}
		
		int rowCount=0;
		int xlColumnPointer=0;
		int counter=0;
	
		try {
			FileInputStream file = new FileInputStream(new File(
					clientExcelSheetPath + "/" + excelSheetName));
			XSSFWorkbook workbook = new XSSFWorkbook(file);
			XSSFSheet sheet = workbook.getSheet(sheetname);
			rowCount = sheet.getLastRowNum() - sheet.getFirstRowNum();
			
			List<WebElement> applicationCol = null;
			for (int xlRowCount = 1; xlRowCount <= rowCount; xlRowCount++) {
				do{
					counter++;
					if(counter==22){
						Thread.sleep(2000);
					}
					
				
				
					 if(sheetname.contains("Transaction"))
					{
						 int row=xlRowCount+1;
						 String Xpath="//*[@id='main']/div[2]/div/div/div/div/div/div[4]/div/div/div[1]/table/tbody/tr["+ row + "]/td";
						 applicationCol = getWebDriver()
									.findElements(
											By.xpath(Xpath));
						 List<XLCellElement> xlRow = getColumnDetails(
									xlColumnPointer, xlRowCount,
									applicationCol, sheet, sheetname);
						 verifyTransactionData(Xpath,clientExcelSheetPath,
									excelSheetName, sheetname,xlRow,rowCount,applicationCol);
					}
				
			
					 if(sheetname.contains("Charge"))
					{
				 xlColumnPointer=0;
				 int row=xlRowCount+1;
				 applicationCol=getWebDriver()
							.findElements(
									By.xpath("//*[@id='main']/div[2]/div/div/div/div/div/div[4]/div/div/div[2]/table/tbody/tr["+row+"]/td"));
				}
					 
					 if(sheetname.contains("dividend"))
						{
					 xlColumnPointer=0;
					 int row=xlRowCount+1;
					 applicationCol=getWebDriver()
								.findElements(
										By.xpath("//*[@id='main']/div[2]/div/div/div/div/div/div[4]/div/div/div[3]/table/tbody/tr["+row+"]/td"));
					}
				
			
				 if(sheetname.contains("Other"))
				{
					if(sheetname.contains("Details1")){
			 applicationCol=getWebDriver()
						.findElements(
								By.xpath("//*[@id='main']/div[2]/div/div/div/div/div/div[3]/div/div[1]/table/tbody/tr["+xlRowCount+"]/td"));}
					if(sheetname.contains("Details2")){
			 applicationCol=getWebDriver()
						.findElements(
								By.xpath("//*[@id='main']/div[2]/div/div/div/div/div/div[3]/div/div[2]/table/tbody/tr["+xlRowCount+"]/td"));}
			
				}
				
				}while(applicationCol.isEmpty() && counter<25);
				 if(!(sheetname.contains("Transaction"))){
		verifyColumnDetails(xlColumnPointer, xlRowCount,
				applicationCol, sheet, sheetname);}
	}
		}catch (FileNotFoundException fnfe) {
			fnfe.printStackTrace();
		} catch (NoSuchElementException e) {
			Assert.fail(" Unable to click \n");
		}
	}
	
	
	public void verifyTellerData(String clientExcelSheetPath,
			String excelSheetName, String sheetname)throws InterruptedException, IOException, ParseException 
	{
		
		
		int rowCount=0;
		int xlColumnPointer=0;
		int counter=0;
	
		try {
			FileInputStream file = new FileInputStream(new File(
					clientExcelSheetPath + "/" + excelSheetName));
			XSSFWorkbook workbook = new XSSFWorkbook(file);
			XSSFSheet sheet = workbook.getSheet(sheetname);
			rowCount = sheet.getLastRowNum() - sheet.getFirstRowNum();
			
			List<WebElement> applicationCol = null;
			for (int xlRowCount = 1; xlRowCount <= rowCount; xlRowCount++) {
				do{
					counter++;
					if(counter==22){
						Thread.sleep(2000);
					}
					
					if(sheetname.contains("Allowed Product"))
					{
						 
						 applicationCol = getWebDriver()
									.findElements(
											By.xpath("//*[@id='main']/div[3]/div/div/div/div/div/div/div[2]/div[1]/table/tbody/tr["+ xlRowCount + "]/td"));
						 
					}
					
					if(sheetname.contains("Restricted Product"))
					{
						 
						 applicationCol = getWebDriver()
									.findElements(
											By.xpath("//*[@id='main']/div[3]/div/div/div/div/div/div/div[2]/div[2]/table/tbody/tr["+ xlRowCount + "]/td"));
						 
					}
				
					
					 if(sheetname.contains("Cashier-Details"))
					{
						 
						 applicationCol = getWebDriver()
									.findElements(
											By.xpath("//*[@id='main']/div[3]/div/div/div/div/div/div[3]/table/tbody/tr["+ xlRowCount + "]/td"));
						 
					}
				
			
					 if(sheetname.contains("Transaction"))
					{
				 applicationCol=getWebDriver()
							.findElements(
									By.xpath("//*[@id='main']/div[3]/div/div/div/div/div/div[4]/table/tbody/tr["+xlRowCount+"]/td"));
				}
					 
					 if(sheetname.contains("dividend"))
						{
					 xlColumnPointer=0;
					 int row=xlRowCount+1;
					 applicationCol=getWebDriver()
								.findElements(
										By.xpath("//*[@id='main']/div[3]/div/div/div/div/div/div[4]/div/div/div[3]/table/tbody/tr["+row+"]/td"));
					}
				
			
				 
				
				}while(applicationCol.isEmpty() && counter<25);
				 
		verifyColumnDetails(xlColumnPointer, xlRowCount,
				applicationCol, sheet, sheetname);
	}
		}catch (FileNotFoundException fnfe) {
			fnfe.printStackTrace();
		} catch (NoSuchElementException e) {
			Assert.fail(" Unable to click \n");
		}
	}
	public void verifyTransactionData(String XPath,String clientExcelSheetPath,
			String excelSheetName, String sheetname,List<XLCellElement> xlRow,int rowCount,List<WebElement> applicationCol)throws InterruptedException, IOException, ParseException 
	{

	boolean rowMatchSuccess = true;
	int failRowCnt = 0;
	int failColCnt = 0;
	String expected = null;
	String actual = null;
	double screenVal = 0.0;
	int counter=0;
	int xlColumnPointer=0;
	DateFormat dateFormat = new SimpleDateFormat(
			"dd MMMM yyyy");

	try {
		for (int appRow = 1; appRow <= rowCount; appRow++) {
			
			do{
				counter++;
				if(counter==2){
					Thread.sleep(2000);
				}
				int wou=appRow+1;
			applicationCol = getWebDriver()
					.findElements(
							By.xpath(XPath));
			}while(applicationCol.isEmpty() && counter<2);
			
			
			
if (!((applicationCol.get(0).getText().equals(dateFormat.format((Date) xlRow.get(0).value)))
   && (applicationCol.get(1).getText().equals((String) xlRow.get(1).value)
   || applicationCol.get(2).getText().equals((String) xlRow.get(2).value)))){
rowMatchSuccess=false;
				continue;
				
			}
rowMatchSuccess=true;
			for (int xlCol = 1; xlCol < applicationCol
					.size(); xlCol++) {
				String a= ((String) xlRow
						.get(xlCol).value);
				
	
				String textVal = applicationCol.get(xlCol)
						.getText();

				switch (xlRow.get(xlCol).type) {
				case "null":
					break;
				case "date":
					if (!textVal.equals(dateFormat
							.format((Date) xlRow
									.get(xlCol).value))) {
						rowMatchSuccess = false;
						failRowCnt = appRow;
						failColCnt = xlCol;
						expected = dateFormat
								.format((Date) xlRow
										.get(xlCol).value);
						actual = textVal;
					}
					break;
				case "decimal":
					
					if ((textVal != null)
							&& !(textVal.trim().equals("")))
						screenVal = parseDecimal(textVal);
					if (screenVal != parseDecimal((String) xlRow
							.get(xlCol).value)) {
						rowMatchSuccess = false;
						failRowCnt = appRow;
						failColCnt = xlCol;
						expected = (String) xlRow
								.get(xlCol).value;
						actual = textVal;
					}
					break;
				case "string":
					
					if (!textVal.equals((String) xlRow
							.get(xlCol).value)) {
						rowMatchSuccess = false;
						failRowCnt = appRow;
						failColCnt = xlCol;
						expected = (String) xlRow
								.get(xlCol).value;
						actual = textVal;

					}
					break;
				}
				if (!rowMatchSuccess) {
					Assert.fail("Tab Name:" + sheetname
							+ " Row number:" + failRowCnt
							+ " Column number:" + failColCnt
							+ " Expected result:" + expected
							+ " Actual result:" + actual);
				}
			
			}
			
				break;
			
		}
		if (!rowMatchSuccess) {
			Assert.fail("In Tab Name:" + sheetname
					+ " values not found");
		}
	
	} catch (Exception e) {
		Assert.fail(" Unable to check \n");
	}
	
	}

	
	private List<XLCellElement> getColumnDetails(int xlColumnPointer, int xlRowCount,
			List<WebElement> applicationCol, XSSFSheet sheet, String sheetname)
			throws ParseException {

		List<XLCellElement> elements = new ArrayList<>();
		String strCellValue = "";

		for (; xlColumnPointer < applicationCol.size(); xlColumnPointer++) {
			Date date = null;
			if ((sheet.getRow(xlRowCount) == null)
					|| (sheet.getRow(xlRowCount).getCell(xlColumnPointer) == null)) {
				elements.add(new XLCellElement(null, "null"));
				continue;
			}
			switch (sheet.getRow(xlRowCount).getCell(xlColumnPointer)
					.getCellType()) {
			case Cell.CELL_TYPE_FORMULA:
			case Cell.CELL_TYPE_NUMERIC:
				if (HSSFDateUtil.isCellDateFormatted(sheet.getRow(xlRowCount)
						.getCell(xlColumnPointer))) {
					date = sheet.getRow(xlRowCount).getCell(xlColumnPointer)
							.getDateCellValue();
					elements.add(new XLCellElement(date, "date"));
				} else {
					double value = (double) sheet.getRow(xlRowCount)
							.getCell(xlColumnPointer).getNumericCellValue();
					strCellValue = String.valueOf(value);
					elements.add(new XLCellElement(strCellValue, "decimal"));

				}

				break;
			case Cell.CELL_TYPE_STRING:
				strCellValue = sheet.getRow(xlRowCount)
						.getCell(xlColumnPointer).getStringCellValue();
					if (strCellValue.contains("$")) {
						strCellValue = strCellValue.substring(strCellValue.indexOf(" ") + 1,
								strCellValue.length());
						elements.add(new XLCellElement(strCellValue, "string"));
					} else {
						elements.add(new XLCellElement(strCellValue, "string"));
					}
				break;
			default:
				elements.add(new XLCellElement(null, "null"));
				break;
			}
		}
		return elements;

	}
	
	private class XLCellElement{
		public Object value;
		public String type;
		
		public XLCellElement(Object value, String type) {
			this.value = value;
			this.type = type;
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
			switch (sheet.getRow(xlRowCount).getCell(xlColumnPointer)
					.getCellType()) {
			case Cell.CELL_TYPE_BLANK:

				break;
			case Cell.CELL_TYPE_FORMULA:
			case Cell.CELL_TYPE_NUMERIC:
				if (HSSFDateUtil.isCellDateFormatted(sheet.getRow(xlRowCount)
						.getCell(xlColumnPointer))) {
					date = sheet.getRow(xlRowCount).getCell(xlColumnPointer)
							.getDateCellValue();
					try {
						Assert.assertEquals(textVal, dateFormat.format(date));
					} catch (Throwable e) {
						Assert.fail("Tab Name:" + sheetname + " Row number:"
								+ xlRowCount + " Column number:"
								+ xlColumnPointer + " Expected result:"
								+ dateFormat.format(date) + " Actual result:"
								+ textVal);
					}
				} else {
					if ((textVal != null) && !(textVal.trim().equals("")))
						screenVal = parseDecimal(applicationCol.get(
								xlColumnPointer).getText());
					
					double value = (double) sheet.getRow(xlRowCount)
							.getCell(xlColumnPointer).getNumericCellValue();
					strCellValue = String.valueOf(value);
					
					try {
						Assert.assertEquals(screenVal,
								parseDecimal(strCellValue), 0.0);
					} catch (Throwable e) {
						Assert.fail("Tab Name:" + sheetname + " Row number:"
								+ xlRowCount + " Column number:"
								+ xlColumnPointer + " Expected result:"
								+ parseDecimal(strCellValue)
								+ " Actual result:" + screenVal);
					}
				}

				break;
			case Cell.CELL_TYPE_STRING:
				strCellValue = sheet.getRow(xlRowCount)
						.getCell(xlColumnPointer).getStringCellValue();
				try {
					if (textVal.contains("$") && strCellValue.contains("$") 
							&& textVal.contains(" ")&& strCellValue.contains(" ")) {
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
	 * 
	 * @param excelSheetPath
	 * @param excelSheet
	 * @throws Throwable
	 */
	public void makeAndVerifyRepayment(String excelSheetPath, String excelName,
			String sheetName) throws Throwable {
		// TODO Auto-generated method stub

		if (sheetName.equals("Input") || sheetName.equals("Repay1")
				|| sheetName.equals("Repay2")) {
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

	private void makeRepayment(String excelSheetPath, String excelName,
			String inputSheet) throws Throwable {
		// TODO Auto-generated method stub

		Map<String, String> repaymentDetails = parseExcelSheet1(excelSheetPath,
				excelName, inputSheet);
		insertValues(repaymentDetails);
		clickButton(getResource("submitmakerepayment"));
		Thread.sleep(getResourceKey("largeWait"));

	}

	public void verifyAndReadTransactionId(String excelSheetPath,
			String excelSheetName, String sheetName) throws Throwable {
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

	/**
	 * Method Searches Journal Entries by entering transaction id and verify the
	 * account details.
	 * 
	 * @param excelSheetPath
	 * @param transaction
	 * @throws InterruptedException
	 * @throws IOException
	 * @throws ParseException
	 */
	public void searchWithTransactinID(String clientExcelSheetPath,
			String excelSheetName, String sheetName)
			throws InterruptedException, IOException, ParseException, Exception {

		if (sheetName.equals("Acc_Disbursement")
				|| sheetName.equals("Acc_Disbursement1")
				|| sheetName.equals("Acc_RepaymentDisbursement")
				|| sheetName.equals("Acc_Repayment")
				|| sheetName.equals("Acc_Repayment1")
				|| sheetName.equals("Acc_Upfront")
				|| sheetName.equals("Acc_Upfront1")
				|| sheetName.equals("Acc_Upfront2")
				|| sheetName.equals("Acc_Upfront3")) {

			if (!sheetName.contains("Upfront") && istransactionIdIndexAssigned) {
				transactionIDIndex = setAccuralTransactionID.size() - 1;
				istransactionIdIndexAssigned = false;
			}
			else if(sheetName.contains("Upfront") && !istransactionIdIndexAssigned){
				transactionIDIndex=setAccuralTransactionType.size()-1;
				istransactionIdIndexAssigned = true;
			}
			if (transactionIDIndex >= 0) {
				
				if (sheetName.equals("Acc_Upfront1")|| sheetName.equals("Acc_Upfront") ) {
					setAccuralTransactionID = setAccuralTransactionType;
				}
				isTransactionTabSelected = true;
				getWebDriver()
						.findElement(
								By.xpath("//input[@placeholder='Search by transaction']"))
						.sendKeys(
								Keys.chord(Keys.CONTROL, "a"),
								"L"
										+ setAccuralTransactionID.toArray()[transactionIDIndex--]);
				Thread.sleep(getResourceKey("smallWait"));
				clickButton(
						getResource("frontend.accounting.searchjournal.transactionid.submit"),
						"xpath");
				Thread.sleep(getResourceKey("mediumWait"));
				verifyLoanTabData(clientExcelSheetPath, excelSheetName,
						sheetName);
				clickButton(
						getResource("frontend.accounting.searchjournal.transactionid.Parameters"),
						"xpath");
				Thread.sleep(getResourceKey("mediumWait"));
			}
		}
		if(sheetName.contains("Interst_Posting")
				|| sheetName.contains("Deposit")
				|| sheetName.contains("Withdrawal")
				|| sheetName.contains("Pay_charge"))
		{
			if (istransactionIdIndexAssigned) {
				transactionIDIndex = setSavingTransactionID.size() - 1;
				istransactionIdIndexAssigned = false;
			}
				if (transactionIDIndex >= 0) {
					isTransactionTabSelected = true;
					getWebDriver()
							.findElement(
									By.xpath("//input[@placeholder='Search by transaction']"))
							.sendKeys(
									Keys.chord(Keys.CONTROL, "a"),
									"S"
											+ setSavingTransactionID.toArray()[transactionIDIndex--]);
					Thread.sleep(getResourceKey("smallWait"));
					clickButton(
							getResource("frontend.accounting.searchjournal.transactionid.submit"),
							"xpath");
					Thread.sleep(getResourceKey("mediumWait"));
					verifyLoanTabData(clientExcelSheetPath, excelSheetName,
							sheetName);
					clickButton(
							getResource("frontend.accounting.searchjournal.transactionid.Parameters"),
							"xpath");
					Thread.sleep(getResourceKey("mediumWait"));
				}
				if(transactionIDIndex==-1)
				{
					istransactionIdIndexAssigned=true;
					setSavingTransactionID.clear();
					isTransactionTabSelected = false;
				}
				}
		if (sheetName.equals("Acc_Periodic") ) {

			for (int i = setAccuralTransactionType.size()-1; i>=0; i-- ) {
				getWebDriver()
				.findElement(
						By.xpath("//input[@placeholder='Search by transaction']"))
				.sendKeys(Keys.chord(Keys.CONTROL, "a"),
						"L" + setAccuralTransactionType.toArray()[i]);
		Thread.sleep(getResourceKey("smallWait"));
				clickButton(
						getResource("frontend.accounting.searchjournal.transactionid.submit"),
						"xpath");
				Thread.sleep(getResourceKey("mediumWait"));
				verifyLoanTabData(clientExcelSheetPath, excelSheetName,
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
	 * 
	 * @param schedularJobName
	 * @throws InterruptedException
	 */
	public void selectSchedularJob(String schedularJobName)
			throws InterruptedException {
		MifosWebPage.navigateToUrl(TenantsUtils.getLocalTenantUrl()+ "jobs");

		switch (schedularJobName) {

		case "Periodic Accrual Transactions":
			LazyWebElement checkPeriodic = getElement(getResource("addperiodicaccrualtransactions"));
			if (!checkPeriodic.isSelected()) {
				RunPeriodicAccural();
				clickButton(getResource("addperiodicaccrualtransactions"));
				Thread.sleep(getResourceKey("smallWait"));
			}
			ishideAccuralsChecked = false;

			break;
		case "Apply Holidays To Loans":
			LazyWebElement checkHHoliday = getElement(getResource("addHolidays"));
			if (!checkHHoliday.isSelected()) {
				By locator = null;
				locator = getLocator(getResource("addHolidays"));
				clickButton(locator, 30);
			}
			ishideAccuralsChecked = false;
			System.out.println("currentUrl "+ currentUrl);

			break;	
		case "Generate Loan Loss Provisioning":
			LazyWebElement loanProvisioning = getElement(getResource("GenerateLoanLossProvisioning"));
			if (!loanProvisioning.isSelected()) {
				By locator = null;
				locator = getLocator(getResource("GenerateLoanLossProvisioning"));
				clickButton(locator, 30);
			}
			
			System.out.println("currentUrl "+ currentUrl);

			break;	
		case "Pay Due Savings Charges":
			LazyWebElement SavingsCharges = getElement(getResource("PayDueSavingsCharges"));
			if (!SavingsCharges.isSelected()) {
				By locator = null;
				locator = getLocator(getResource("PayDueSavingsCharges"));
				clickButton(locator, 30);
			}
			
			System.out.println("currentUrl "+ currentUrl);

			break;	
		case "Apply penalty to overdue loans": 
			LazyWebElement checkpenalty = getElement(getResource("addpenaltytooverdueloans"));
			if (!checkpenalty.isSelected()) {
				RunPeriodicAccural();
				clickButton(getResource("addpenaltytooverdueloans"));
				Thread.sleep(getResourceKey("smallWait"));
			}
			break;
			
		case "Update Deposit Accounts Maturity details": 
		LazyWebElement AccountMaturity = getElement(getResource("UpdateDepositAccountsMaturity"));
		if (!AccountMaturity.isSelected()) {
			By locator = null;
			locator = getLocator(getResource("UpdateDepositAccountsMaturity"));
			clickButton(locator, 30);
		}
		break;
		
		case "Post Dividends For Shares": 
			LazyWebElement PostDivided = getElement(getResource("PostDividendsForShares"));
			if (!PostDivided.isSelected()) {
				By locator = null;
				locator = getLocator(getResource("PostDividendsForShares"));
				clickButton(locator, 30);
			}
			break;
			
		case "Periodic & penalty to overdue loans":

			LazyWebElement checkpenalty1 = getElement(getResource("addpenaltytooverdueloans"));
			if (!checkpenalty1.isSelected()) {
				RunPeriodicAccural();
				By locator = null;
				locator = getLocator(getResource("addpenaltytooverdueloans"));
				clickButton(locator, 30);
				Thread.sleep(getResourceKey("mediumWait"));
			}
			By locator = null;
			locator = getLocator(getResource("runSelectedJobs"));
			clickButton(locator, 30);
			clickButton(getResource("refresh"));
			Thread.sleep(getResourceKey("largeWait"));
			ishideAccuralsChecked = false;

			LazyWebElement checkPeriodic1 = getElement(getResource("addperiodicaccrualtransactions"));
			if (!checkPeriodic1.isSelected()) {
				By locator1 = null;
				locator1 = getLocator(getResource("addperiodicaccrualtransactions"));
				clickButton(locator1, 30);
			}
			break;
		case "Add Upfront Accrual Transactions":
			LazyWebElement addupfrontaccrual = getElement(getResource("addupfrontaccrualtransactions"));
			if (!addupfrontaccrual.isSelected()) {
				RunPeriodicAccural();
				By locator1 = null;
				locator1 = getLocator(getResource("addupfrontaccrualtransactions"));
				clickButton(locator1, 30);
				Thread.sleep(getResourceKey("mediumWait"));
			}
			ishideAccuralsChecked = false;
			break;

		case "Upfront & penalty to overdue loans":
			LazyWebElement addupfrontaccrual1 = getElement(getResource("addupfrontaccrualtransactions"));
			if (!addupfrontaccrual1.isSelected()) {
				RunPeriodicAccural();
				By locator1 = null;
				locator1 = getLocator(getResource("addupfrontaccrualtransactions"));
				clickButton(locator1, 30);
			}
			By locator1 = null;
			locator1 = getLocator(getResource("runSelectedJobs"));
			clickButton(locator1, 30);
			clickButton(getResource("refresh"));
			Thread.sleep(getResourceKey("largeWait"));
			ishideAccuralsChecked = false;
			LazyWebElement checkpenalty2 = getElement(getResource("addpenaltytooverdueloans"));
			if (!checkpenalty2.isSelected()) {
				By locator11 = null;
				locator11 = getLocator(getResource("addpenaltytooverdueloans"));
				clickButton(locator11, 30);
			}
			break;
		default:
			System.out.println("Invalid schedular Job");
			break;

		}
		By locator = null;
		locator = getLocator(getResource("runSelectedJobs"));
		clickButton(locator, 30);
		
		clickButton(getResource("refresh"));
		Thread.sleep(getResourceKey("largeWait"));

		System.out.println(currentUrl);
		if(!currentUrl.equals(""))
		{
		MifosWebPage.navigateToUrl(currentUrl);
		}

	}

	public void RunPeriodicAccural() throws InterruptedException
	{
		
		if (!(getElement(getResource("UpdateLoanArrearsAgeing"))).isSelected()) {
			clickButton(getResource("UpdateLoanArrearsAgeing"));
			Thread.sleep(getResourceKey("smallWait"));
			clickButton(getResource("runSelectedJobs"));
			Thread.sleep(getResourceKey("smallWait"));
			clickButton(getResource("refresh"));
			Thread.sleep(getResourceKey("smallWait"));
		}
		
		 if (!(getElement(getResource("UpdateNonPerformingAssets"))).isSelected()) {
			clickButton(getResource("UpdateNonPerformingAssets"));
			Thread.sleep(getResourceKey("smallWait"));
			clickButton(getResource("runSelectedJobs"));
			Thread.sleep(getResourceKey("smallWait"));
			clickButton(getResource("refresh"));
			Thread.sleep(getResourceKey("smallWait"));
		}
	}
	
	private int[] verifyAccrualData(String clientExcelSheetPath,
			String excelSheetName, String sheetname)
			throws InterruptedException, IOException, ParseException {

		int[] result = new int[10];
		int currentRow = 1;
		int rowToiterate = 0;
		int accuralsRow =0;
		int excelRowCount = 1;
		int xPathRow = 1;
		String textVal1 = null;
		Date excelDate = null;
		boolean rowWithDateFound = true;
		

		try {
			FileInputStream file = new FileInputStream(new File(
					clientExcelSheetPath + "/" + excelSheetName));
			XSSFWorkbook workbook = new XSSFWorkbook(file);
			XSSFSheet sheet = workbook.getSheet(sheetname);

			excelRowCount = sheet.getLastRowNum() - sheet.getFirstRowNum();

			DateFormat dateFormat = new SimpleDateFormat("dd MMMM yyyy");
			List<WebElement> applicationCol = null;

			applicationCol = getWebDriver()
					.findElements(
							By.xpath(".//*[@id='main']/div[2]/div/div/div/div/div/div[4]/table/tbody/tr[1]/td"));

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
					rowToiterate = excelRowCount;

				} else if (!appDate.after(excelDate)){
					rowToiterate = row-2;
					
					break;
				}
					
			}
			if(rowWithDateFound)
			{
				Assert.fail();
			}
			else{
			result[0]=currentRow;
			result[1]=rowToiterate;}
/*			List<WebElement> readApplicationCol = null;
			for (; rowToiterate != 0; rowToiterate--) {
				int colIndex = 6;

				readApplicationCol = getWebDriver()
						.findElements(
								By.xpath(".//*[@id='main']/div[3]/div/div/div/div/div/div[4]/table/tbody/tr["
										+ xPathRow + "]/td"));
				verifyColumnDetails(colIndex, currentRow, readApplicationCol,
						sheet, sheetname);

				currentRow++;
				xPathRow++;

			}*/
		
		} catch (FileNotFoundException fnfe) {
			fnfe.printStackTrace();
			
		}
		catch(Throwable e)
		{
			Assert.fail("In Tab Name:" + sheetname + " Date not matched with application displayed date");
		}
		return result;

		// break;
		// }

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

			StaleElementHandle("//a[contains(.,'" + sheetName + "')]");
			Thread.sleep(getResourceKey("largeWait"));
			Map<String, String> tabDetails = parseExcelSheet(
					clientExcelSheetPath, excelSheetName, sheetName);
			insertValues(tabDetails);
			Thread.sleep(getResourceKey("largeWait"));
		} else if (sheetName.equals("Charges")) {
			getWebDriver().findElement(By.xpath(".//*[@heading='Charges']/a")).click();
			Thread.sleep(getResourceKey("largeWait"));
			Map<String, String> tabDetails = parseExcelSheet(
					clientExcelSheetPath, excelSheetName, sheetName);
			insertValues(tabDetails);
			Thread.sleep(getResourceKey("largeWait"));
		} else if (sheetName.contains("Modify Transaction")) {
			Map<String, String> tabDetails = parseExcelSheet(
					clientExcelSheetPath, excelSheetName, sheetName);
			insertValues(tabDetails);
			Thread.sleep(getResourceKey("largeWait"));
		}  else if (sheetName.equals("Prepay Loan")) {
			Map<String, String> tabDetails = parseExcelSheet1(
					clientExcelSheetPath, excelSheetName, sheetName);
			insertValues(tabDetails);
			Thread.sleep(getResourceKey("largeWait"));
		} else if (sheetName.equals("Undo Disbursal")) {
			Map<String, String> tabDetails = parseExcelSheet1(
					clientExcelSheetPath, excelSheetName, sheetName);
			insertValues(tabDetails);
			Thread.sleep(getResourceKey("largeWait"));
		} else if (sheetName.equals("Foreclosure")||sheetName.contains("Savings")||sheetName.contains("Recurring")) {
			Map<String, String> tabDetails = parseExcelSheet1(
					clientExcelSheetPath, excelSheetName, sheetName);
			insertValues(tabDetails);
			Thread.sleep(getResourceKey("largeWait"));
		} else {
			if (sheetName.equals("Transactions")) {
				if (!ishideAccuralsChecked) {
					isaccuralsTypeTransaction = false;
				}
			}
			verifyLoanTabData(clientExcelSheetPath, excelSheetName, sheetName);
		}

	}

	/**
	 * Method verifyAndValidate Error msg successfully from target excel sheet
	 * 
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
			Thread.sleep(getResourceKey("largeWait"));
			if(sheetName.equals("error2"))
			{
				verifySuccessMessage(entry.getKey(), entry.getValue(), sheetName);
			}
			else
			{
			verifySuccessMessage(entry.getKey(), entry.getValue());
			}
			Thread.sleep(getResourceKey("smallWait"));

		}
	}

	/**
	 * Method define and creates Floating Rates 
	 * @param excelSheetPath
	 * @param excelSheetName
	 * @param sheetName
	 * @throws Throwable
	 */
	public void defineFloatingRates(String excelSheetPath,
			String excelSheetName, String sheetName) throws Throwable {
		// TODO Auto-generated method stub
		try {
			Map<String, String> FloatingRatesMap = parseExcelSheet(
					excelSheetPath, excelSheetName, sheetName);
			MifosWebPage.navigateToUrl(TenantsUtils.getLocalTenantUrl()+ "floatingrates");
			insertValues(FloatingRatesMap);
		} catch (Exception e) {
			e.printStackTrace();
		}

	}

	/**
	 * Method allows to edit RepaymentSchedule variable instalment
	 * @param excelSheetPath
	 * @param excelSheetName
	 * @param sheetName
	 * @throws Throwable
	 */
	public void editRepaymentSchedulePageVarInstalment(String excelSheetPath,
			String excelSheetName, String sheetName) throws Throwable {
		Map<String, String> newLoanDetailsMap = parseExcelSheet1(
				excelSheetPath, excelSheetName, sheetName);
		insertValues(newLoanDetailsMap);
		Thread.sleep(getResourceKey("extraLargeWait"));
	}

	/*
	 * Method Create Account Closures Entry  from targeted excel sheets
	 */
	public void createAccountClosuresEntry(String excelSheetPath,
			String excelSheetName, String sheetName) throws Throwable {
		Map<String, String> newLoanDetailsMap;
		Thread.sleep(getResourceKey("largeWait"));
		MifosWebPage.navigateToUrl(TenantsUtils.getLocalTenantUrl()+ "accounts_closure");
		newLoanDetailsMap = parseExcelSheet(excelSheetPath, excelSheetName,
				sheetName);
		Thread.sleep(getResourceKey("largeWait"));
		insertValues(newLoanDetailsMap);
		try {
			verifySuccessMessage("clickOnDELETEGLCLOSURE", "Delete");
		} catch (Exception e) {
			System.out.println("Page Is Not Loded");
		}
		Thread.sleep(getResourceKey("largeWait"));
		MifosWebPage.navigateToUrl(currentUrl);
	}

	/*
	 * Method Delete Account Closures Entry  from targeted excel sheets
	 */
	public void deleteAccountClosuresEntry(String excelSheetPath,
			String excelSheetName, String sheetName) throws Throwable {Map<String, String> newLoanDetailsMap;
	        MifosWebPage.navigateToUrl(TenantsUtils.getLocalTenantUrl()+ "accounts_closure");
	        Thread.sleep(getResourceKey("largeWait"));
	        insertValues("office", "Head Office");
	        insertValues("clickOnCLOSURESubmit", "click");
	        String bodyText = getWebDriver().findElement(By.tagName("table"))
	                .getText();
	        if (bodyText.contains("Head Office")) {
	            newLoanDetailsMap = parseExcelSheet(excelSheetPath, excelSheetName,
	                    sheetName);
	            Thread.sleep(getResourceKey("mediumWait"));
	            insertValues(newLoanDetailsMap);
	            Thread.sleep(getResourceKey("mediumWait"));
	        }}

	/*
	 * Method runs periodic accrual from the targeted excels sheets
	 */
	public void RunPeriodicAccrual(String excelSheetPath,
			String excelSheetName, String sheetName) throws Throwable {
		Map<String, String> newLoanDetailsMap;

		ishideAccuralsChecked = false;
		if (sheetName.equals("RunPeriodicAccrual")
				|| sheetName.equals("RunPeriodicAccrual1")
				|| sheetName.equals("RunPeriodicAccrual2")) {
			Thread.sleep(getResourceKey("mediumWait"));
			MifosWebPage.navigateToUrl(TenantsUtils.getLocalTenantUrl()+"run_periodic_accrual");
			newLoanDetailsMap = parseExcelSheet(excelSheetPath, excelSheetName,
					sheetName);
			Thread.sleep(getResourceKey("largeWait"));
			insertValues(newLoanDetailsMap);
			
			Thread.sleep(getResourceKey("largeWait"));
			MifosWebPage.navigateToUrl(currentUrl);
		} else if (sheetName.equals("Transactions")) {
			Thread.sleep(getResourceKey("largeWait"));
			MifosWebPage.navigateToUrl(currentUrl);

			verifyLoanTabData(excelSheetPath, excelSheetName, sheetName);
		}
	}

	public void searchUser(String user) throws InterruptedException {
		getWebDriver().findElement(By.id("search")).sendKeys(user);
		getWebDriver().findElement(By.id("search")).sendKeys(Keys.ENTER);
		getWebDriver().findElement(By.xpath(".//div[1]/div/span[2]/a")).click();
	}

	public void undoDisbursal() throws InterruptedException {
		clickButton(getResource("frontend.clients.clients.undodisbursal"),
				"xpath");
		clickButton(getResource("frontend.admin.createoffice.savebutton"), "id");
	}

	public void modifyTransaction(String excelSheetPath, String excelSheetName,
			String sheetName) throws Throwable {

		Map<String, String> newLoanDetailsMap;
		
		StaleElementHandle("//a[contains(.,'Transactions')]");
		newLoanDetailsMap = parseExcelSheet(excelSheetPath, excelSheetName,
				sheetName);
		insertValues(newLoanDetailsMap);
		Thread.sleep(getResourceKey("smallWait"));

	}

	public void navigateLoanAccounting() throws Throwable {
		if(RememberTopupUrl!=null)
		{
			MifosWebPage.navigateToUrl(RememberTopupUrl);
			RememberTopupUrl=null;
		}
		
		else{
			MifosWebPage.navigateToUrl(currentUrl);
		}
		Thread.sleep(getResourceKey("smallWait"));
	}
	
	public void navigateSavingAccounting() throws Throwable {
		if(RememberPreviousUrl!=null)
		{
			MifosWebPage.navigateToUrl(RememberPreviousUrl);
			RememberPreviousUrl=null;
		}
		else{
			MifosWebPage.navigateToUrl(CurrentSavingAccounturl);
		}
		
		Thread.sleep(getResourceKey("smallWait"));
	}
	public void navigateToCurrentCenterPage(String excelSheetPath,
			String excelSheetName, String sheetName) throws Throwable {

		Map<String, String> newLoanDetailsMap;
		newLoanDetailsMap = parseExcelSheet(excelSheetPath, excelSheetName,
				sheetName);
		Thread.sleep(getResourceKey("smallWait"));
		insertValues(newLoanDetailsMap);		
	}
	
	public void navigateToLoanProvisioningPage(String excelSheetPath,
			String excelSheetName, String LoanProvision,String sheetName) throws Throwable {
		
		if(sheetName.equals("Loan Provisioning Criteria"))
		{
		    MifosWebPage.navigateToUrl(TenantsUtils.getLocalTenantUrl()+"viewallprovisionings");
		    Thread.sleep(getResourceKey("mediumWait"));
			verifySuccessMessage("CreateProvisioningCriteria", "Create Provisioning Criteria");
		}
		else
		{
			MifosWebPage.navigateToUrl(TenantsUtils.getLocalTenantUrl()+"viewprovisioningentries");
			Thread.sleep(getResourceKey("mediumWait"));
			verifySuccessMessage("CreateProvisioningEntry", "Create Provisioning Entry");
		}
		Map<String, String> LoanProvisioningDetailsMap;
		LoanProvisioningDetailsMap = parseExcelSheet(excelSheetPath, excelSheetName,sheetName);
		Thread.sleep(getResourceKey("smallWait"));
		insertValues(LoanProvisioningDetailsMap);		
	}
	
	public void StaleElementHandle (String elementID){
		int count = 0;
		boolean clicked = false;
		while (count < 4 && !clicked){
		    try {
		       WebElement yourSlipperyElement= getWebDriver().findElement(By.xpath(elementID));
		       yourSlipperyElement.click(); 
		       clicked = true;
		     } catch (StaleElementReferenceException e){
		       e.toString();
		       System.out.println("Trying to recover from a stale element :" + e.getMessage());
		       count = count+1;
		       clicked = false;
		     }     
		}
	}

	public void payThroughCollectionSheet(String excelSheetPath,
			String excelSheetName, String sheetName) throws Throwable {					
				Map<String, String> collectionDetailsMap = parseExcelSheet(
						excelSheetPath, excelSheetName, sheetName);
				insertValues(collectionDetailsMap);
			}

	public void holiday(String excelSheetPath, String excelSheetName,
			String sheetName) throws Throwable {
		MifosWebPage.navigateToUrl(TenantsUtils.getLocalTenantUrl()
				+ "holidays");
		Map<String, String> collectionDetailsMap = parseExcelSheet(
				excelSheetPath, excelSheetName, sheetName);
		insertValues(collectionDetailsMap);
	}
	public void createWorkingDays(String value) throws InterruptedException {
		MifosWebPage.navigateToUrl(TenantsUtils.getLocalTenantUrl()+"workingdays");
		Thread.sleep(getResourceKey("largeWait"));
		insertValues("Paymentsdueonnonworkingdays", value);
		Thread.sleep(getResourceKey("smallWait"));
		clickButton(getResource("clickOnSubmitWorkingDayButton"));
		Thread.sleep(getResourceKey("largeWait"));
		
	}

	public void verifyElementNotVisible(String element) {
		
		By locator = null;
		locator = getLocator(getResource(element));
		List<WebElement> element1 = getWebDriver().findElements(locator);
		System.out.println(element1.size());
		if(element1.size()>0){
			Assert.fail("UnExpected element is present : "+element);
		}
	}


}

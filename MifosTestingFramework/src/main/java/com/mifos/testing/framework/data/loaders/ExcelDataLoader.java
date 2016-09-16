/*
 * 
 */
package com.mifos.testing.framework.data.loaders;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import org.apache.poi.hssf.usermodel.HSSFSheet;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.Row;

import com.mifos.testing.framework.exceptions.TestDataLoadingException;

// TODO: Auto-generated Javadoc
/**
 * The Class ExcelDataLoader.
 */
public class ExcelDataLoader implements TestDataLoader<Map<String, String>> {

	/*
	 * (non-Javadoc)
	 * 
	 * @see
	 * com.mifos.testing.framework.data.loaders.TestDataLoader#load(java.io
	 * .File, java.lang.String[])
	 */
	@Override
	public Map<String, Map<String, String>> load(File testDataFile,
			String... args) throws TestDataLoadingException {
		Map<String, Map<String, String>> map;

		try {
			final HSSFWorkbook workbook = new HSSFWorkbook(new FileInputStream(
					testDataFile));
			final HSSFSheet sheet = (args != null && args.length > 0) ? workbook
					.getSheet(args[0]) : workbook.getSheetAt(0);

			map = new HashMap<>();

			final List<String> columnHeadings = new ArrayList<>();
			int columnCount = 0;

			final Iterator<Row> rowIt = sheet.rowIterator();
			int rowNumber = 0;
			while (rowIt.hasNext()) {
				final Row row = rowIt.next();

				if (rowNumber++ == 0) {
					/*
					 * We assume that the first column is set-name, and hence we
					 * will need to remember the headings of other columns
					 */
					final Iterator<Cell> cellIt = row.cellIterator();
					while (cellIt.hasNext()) {
						final Cell cell = cellIt.next();
						final String value = this.getCellValue(cell);
						if (value == null || value.length() == 0) {
							break;
						}
						columnHeadings.add(value);
					}
					columnCount = columnHeadings.size();
				} else {
					final String setName = row.getCell(0).getStringCellValue();
					if (setName == null || setName.length() == 0) {
						continue;
					}

					Map<String, String> m = map.get(setName);
					if (m == null) {
						m = new HashMap<>();
						map.put(setName, m);
					}

					for (int i = 1; i < columnCount; i++) {
						String value = this.getCellValue(row.getCell(i));
						if (value == null) {
							value = "";
						}
						m.put(columnHeadings.get(i), value);
					}
				}
			}
		} catch (IOException e) {
			throw new TestDataLoadingException("Error in loading test-data: "
					+ testDataFile.getAbsolutePath(), e);
		}

		return map;
	}

	/**
	 * Gets the cell value.
	 * 
	 * @param cell
	 *            the cell
	 * @return the cell value
	 */
	private String getCellValue(Cell cell) {
		final String value;
		switch (cell.getCellType()) {
		case Cell.CELL_TYPE_BLANK:
			value = "";
			break;
		case Cell.CELL_TYPE_STRING:
			value = cell.getStringCellValue();
			break;
		case Cell.CELL_TYPE_BOOLEAN:
			value = String.valueOf(cell.getBooleanCellValue());
			break;
		case Cell.CELL_TYPE_NUMERIC:
			value = String.valueOf(cell.getNumericCellValue());
			break;
		case Cell.CELL_TYPE_ERROR:
			value = String.valueOf(cell.getErrorCellValue());
			break;
		default:
			value = "COULD NOT PARSE";
			break;
		}
		return value;
	}
}
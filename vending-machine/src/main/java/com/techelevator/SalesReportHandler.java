package com.techelevator;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Map;
import java.util.Scanner;
import java.util.TreeMap;

public class SalesReportHandler {
	
	private static final String SALES_REPORT_FILE = "salesreport.txt";
	
//	use the following file for unit testing:	
//	private static final String SALES_REPORT_FILE = "salesreportTest.txt";

	private Map<String, Integer> currentItemsSold;
	private double currentTotalSales = 0.0;
	
	public Map<String,Integer> getCurrentItemsSold() {
		return currentItemsSold;
	}
	
	public void incrementItem(String key) {
		int count = currentItemsSold.get(key);
		count++;
		currentItemsSold.put(key, count);
	}
	
	public void addItemToSales(String key, int count) {
		currentItemsSold.put(key, count);
	}
	
	public double getCurrentTotalSales() {
		return currentTotalSales;
	}
	
	public void addToCurrentTotalSales(double amount) {
		this.currentTotalSales += amount;
	}
	
	public void loadCurrentSalesReport() throws IOException {
		currentItemsSold = new TreeMap<String, Integer>();
		
		String filepath = SALES_REPORT_FILE;
		
		File file = new File(filepath);
		
		if (file.exists()) {
			
			try (Scanner scan = new Scanner(file)){
				
				while(scan.hasNextLine()) {
					String line = scan.nextLine();
					
					if (line.contains("**")) {
						currentTotalSales = Double.parseDouble(line.substring(17));
					} else if (line.length() > 1) {
						
						String[] parsedLine = line.split("\\|");
						String key = parsedLine[0];
						int numberSold = Integer.parseInt(parsedLine[1]);
						currentItemsSold.put(key, numberSold);
					}
				} 
			}
				
		} else {
			file.createNewFile();
		}
	}	
	
	public void writeSalesReport() throws FileNotFoundException {
		
		String lineToPrint;
		
		File file = new File("salesreport.txt");
		
		try(PrintWriter writer = new PrintWriter(file)) {
			
			for ( String key : currentItemsSold.keySet()) {
				lineToPrint = key + "|" + currentItemsSold.get(key);
				writer.println(lineToPrint);
			}
			
			writer.println();
			
			lineToPrint = String.format("**TOTAL SALES** $%.2f", currentTotalSales);
			writer.println(lineToPrint);
			
		}
	}
}

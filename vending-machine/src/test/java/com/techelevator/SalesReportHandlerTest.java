package com.techelevator;

import java.io.IOException;
import java.util.Map;
import java.util.TreeMap;

import org.junit.Before;
import org.junit.Test;
import org.junit.Assert;

public class SalesReportHandlerTest {
	
	SalesReportHandler handler;
	Map<String, Integer> soldItems;
	double currentTotalSales;
	
	@Before public void setup() {
		handler = new SalesReportHandler();
		soldItems = new TreeMap<String, Integer>();
	}
	
	@Test
	public void verify_loadCurrentSalesReport() throws IOException {
		soldItems.put("Chumpy Monkey", 5);
		soldItems.put("MegaMegaCola", 3);
		soldItems.put("Corny Crumples", 8);
		currentTotalSales = 35.65;
		handler.loadCurrentSalesReport();
		Map<String, Integer> actualItems = handler.getCurrentItemsSold();
		double actualTotal = handler.getCurrentTotalSales();
		
		Assert.assertEquals(soldItems, actualItems);
		Assert.assertEquals(currentTotalSales, actualTotal, 0.009);
	}

}

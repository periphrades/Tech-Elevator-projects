package com.techelevator;

import java.io.File;
import java.io.FileNotFoundException;
import java.util.Scanner;

public class InventoryLoaderFromFile implements InventoryLoader {
	
	private static final int SLOT_STACK_SIZE = 5;
	private static final String INPUT_FILE = "vendingmachine.csv";
	
//	use the following instead for unit testing:
//	private static final String INPUT_FILE = "loadertest.csv";
	
	private SalesReportHandler sales;
	
	public InventoryLoaderFromFile(SalesReportHandler sales) {
		this.sales = sales;
	}
	
	public Inventory load() {

		Inventory inventory = new Inventory();
		
		String filepath = INPUT_FILE;
		
		File file = new File(filepath);
		
		Scanner scan;
		try {
			scan = new Scanner(file);
			
			while(scan.hasNextLine()) {
				String itemLine = scan.nextLine();
				String[] itemLineArray = itemLine.split("\\|");
				
				String slot = itemLineArray[0];
				String category = itemLineArray[1];
				String itemName = itemLineArray[2];
				double price = Double.parseDouble(itemLineArray[3]);
				
				Item it = null;
				
				inventory.addStack(slot);
				
				for (int i = 0; i < SLOT_STACK_SIZE; i++) {
				
					switch(category) {
						case "CHIPS":
							it = new Chips(itemName, price);
							break;
						case "CANDY":
							it = new Candy(itemName, price);
							break;
						case "DRINK":
							it = new Drink(itemName, price);
							break;
						case "GUM":
							it = new Gum(itemName, price);
							break;	
					}  // end of switch
					
					inventory.addItem(slot, it);
			
				}  // end of for loop
		
				if (!sales.getCurrentItemsSold().containsKey(itemName)) {
					sales.addItemToSales(itemName, 0); 
				}
				
			}  // end of while loop
			
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		}
		
		return inventory;
		
	}	// end of load()
			
}

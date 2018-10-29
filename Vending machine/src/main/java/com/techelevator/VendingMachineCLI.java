package com.techelevator;

import java.io.IOException;
import java.util.List;

import com.techelevator.view.Menu;

public class VendingMachineCLI {

	private static final String MAIN_MENU_OPTION_DISPLAY_ITEMS = "Display Vending Machine Items";
	private static final String MAIN_MENU_OPTION_PURCHASE = "Purchase";
	private static final String[] MAIN_MENU_OPTIONS = { MAIN_MENU_OPTION_DISPLAY_ITEMS,
													   MAIN_MENU_OPTION_PURCHASE };
	
	private Menu menu;
	
	public VendingMachineCLI(Menu menu) {
		this.menu = menu;
	}
	
	public void run() throws IOException {
		
		SalesReportHandler sales = new SalesReportHandler();
		sales.loadCurrentSalesReport();
		InventoryLoader loader = new InventoryLoaderFromFile(sales);
		Inventory inventory = loader.load();
		Logger logger = new Logger();

		PurchaseHandler handler = new PurchaseHandler(inventory, menu, logger, sales);
		
		while(true) {
			String choice = (String)menu.getChoiceFromOptions(MAIN_MENU_OPTIONS);
			
			if(choice.equals(MAIN_MENU_OPTION_DISPLAY_ITEMS)) {
				List<String> stock = inventory.showInventory();
				menu.displayInfo(stock);
				
			} else if(choice.equals(MAIN_MENU_OPTION_PURCHASE)) {
				handler.purchaseMenu();
			}
		}
	}
	
	public static void main(String[] args) throws IOException {
		Menu menu = new Menu(System.in, System.out);
		VendingMachineCLI cli = new VendingMachineCLI(menu);
		cli.run();
	}
}

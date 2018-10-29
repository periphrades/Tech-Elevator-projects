package com.techelevator;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import com.techelevator.view.Menu;  

public class PurchaseHandler {
	
	private static final String PURCHASE_MENU_OPTION_FEED_MONEY = "Add Money";
	private static final String PURCHASE_MENU_OPTION_SELECT_PRODUCT = "Select Product";
	private static final String PURCHASE_MENU_OPTION_FINISH_TRANSACTION = "Finish Transaction";
	private static final String[] PURCHASE_MENU_OPTIONS = { PURCHASE_MENU_OPTION_FEED_MONEY,
			PURCHASE_MENU_OPTION_SELECT_PRODUCT, PURCHASE_MENU_OPTION_FINISH_TRANSACTION};
	
	private User user; 
	private Inventory inventory;
	private Menu menu;
	private Logger logger;
	private SalesReportHandler sales;
	
	public PurchaseHandler(Inventory inv, Menu m, Logger log, SalesReportHandler handler) {
		this.inventory = inv;
		this.menu = m;
		this.logger = log;
		this.sales = handler;
	}
	
	public void purchaseMenu() throws IOException	{

		user = new User();
		boolean purchaseInProgress = true;
		
		while (purchaseInProgress) {
			String s = String.format("\nCurrent Money Provided: $%.2f", user.getCurrentBalance());
			menu.displayOneLine(s);
			String choice = (String) menu.getChoiceFromOptions(PURCHASE_MENU_OPTIONS);
			
			switch(choice) {
				case PURCHASE_MENU_OPTION_FEED_MONEY:
					feedMoney();
					break;
				case PURCHASE_MENU_OPTION_SELECT_PRODUCT:
					if (user.getCurrentBalance() == 0.00) {
						menu.displayOneLine("You must add money before making a purchase");
					} else {
					selectProduct();
					}
					break;
				case PURCHASE_MENU_OPTION_FINISH_TRANSACTION:
					finishTransaction();
					purchaseInProgress = false;
					break;
			}
		}
	}
	
	private void feedMoney() throws IOException {
		
		double value = 0.00;
		
		while(true) {
			
			String moreMoney = menu.oneLineUserPrompt("\nHow much would you like to deposit (in dollars)?");
			
			try {
				value = Double.parseDouble(moreMoney); 	
			}
			catch (Exception e) {
				menu.displayOneLine("Invalid Entry. Please try again.");
				continue;
			}
			if (value < 1.0) {
				menu.displayOneLine("Cannot accept negative dollar amounts. Please try again.");
				continue;
			}
			if (value != Math.floor(value)) {
				menu.displayOneLine("Can only accept whole dollar amounts. Please try again.");
				continue;
			} 
			if ((user.getCurrentBalance() + value) > 100.0) {
				menu.displayOneLine("Cannot enter more than $100. Please try again.");
				continue;
			}
			break;
		}	
				user.addToBalance(value);
				logger.logEvent("FEED MONEY  :", value, user.getCurrentBalance());
	}
	
	private void selectProduct() throws IOException {
		
		List<String> stock = inventory.showInventory();
		menu.displayInfo(stock);
		double prePurchaseBalance = user.getCurrentBalance();
		
		while (true) {

			String selection = menu.oneLineUserPrompt("\nPlease enter the two-character code of the item you wish to purchase:");
			selection = selection.toUpperCase();
			
			if (!inventory.validCode(selection)) {
				menu.displayOneLine("\nThat product code does not exist.");
				continue;
			} 
			
			int stackSize = inventory.stackSize(selection);
			
			if (stackSize == 0) {
				menu.displayOneLine("Sorry, that item is sold out.");
				continue;
			}
			
			double cost = inventory.itemCost(selection);
			
			if (cost > user.getCurrentBalance()) {
				menu.displayOneLine("You do not have enough money to purchase that item.");
				continue;
			}
			
			Item it = inventory.getItem(selection);
			user.addItemToStash(it);
			
			menu.displayOneLine("You bought " + it.getName() + "!");
			
			// print purchase to log & sales report
			
			logPurchase(it, prePurchaseBalance, selection);
			
			break;
		
		}  // end of while loop
		
	}  // end of selectProduct()
	
	private void finishTransaction() throws IOException {
		
		List<String> consumptionMessage = user.consume();
		menu.displayInfo(consumptionMessage);
		double change = user.getCurrentBalance();
		makeChange(change);
		
		user.zeroOutCurrentBalance();
		
		logger.logEvent("GIVE CHANGE :", change, user.getCurrentBalance());
		
	} //end of finishTransaction
	
	private void makeChange(double amount) {
		List<String> changeMessage = new ArrayList<String>();
		String line = String.format("\nThank you. Your change is : $%.2f", amount);
		changeMessage.add(line);
		
		int tmp;
		if (amount >= .25)
	    {
	        tmp = (int) (amount/.25);
	        line =  tmp + " quarter(s)";
			changeMessage.add(line);
			amount = amount % .25;
	    }
	    if (amount >= .10)
	    {
	        tmp = (int) (amount/.10);
	        line = tmp + " dime(s)";
			changeMessage.add(line);
	        amount = amount % .10;
	    }
	    if (amount >= .05)
	    {
	        tmp = (int) (amount/.05);
	        line = tmp + " nickel(s)";
			changeMessage.add(line);
	        amount = amount % .05;
	    }
	    
		changeMessage.add("");
		changeMessage.add("===============================");
		changeMessage.add("");

	    menu.displayInfo(changeMessage);
	    
	}  // end of makeChange()
	
	private void logPurchase(Item it, double preBalance, String selection ) throws IOException {
		
		// write to audit log
		
		String shortName;
		if (it.getName().length() <= 10) {
			shortName = it.getName();
		} else {
			shortName = it.getName().substring(0, 10);
		} 
		
		shortName = String.format("%-10s %-2s", shortName, selection);
		
		logger.logEvent(shortName, preBalance, user.getCurrentBalance());
		
		// write to sales report
		
		String key = it.getName();
		sales.incrementItem(key);
		
		sales.addToCurrentTotalSales(it.getCost());
		
		sales.writeSalesReport();
		
	}  // end of logPurchase()

}

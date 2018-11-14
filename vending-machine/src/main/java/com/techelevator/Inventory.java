package com.techelevator;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Stack;
import java.util.TreeMap;

public class Inventory {

	private Map<String, Stack<Item>> itemsInVendingMachine = new TreeMap<String, Stack<Item>>();  
	
	public void addStack(String slot) {
		Stack<Item> stack = new Stack<Item>();
		itemsInVendingMachine.put(slot, stack);
	}
	
	public void addItem(String slot, Item product) {
		itemsInVendingMachine.get(slot).push(product);
	}
	
	public Item getItem(String key) {
		return itemsInVendingMachine.get(key).pop();
	}
	
	public boolean validCode(String code) {
		return itemsInVendingMachine.containsKey(code);
	}
	
	public int stackSize(String code) {
		return itemsInVendingMachine.get(code).size();
	}
	
	public double itemCost(String code) {
		return itemsInVendingMachine.get(code).peek().getCost();
	}
	
	public List<String> showInventory() {
		List<String> inventoryDisplay = new ArrayList<String>();
		String header = String.format("\n%-6s %-18s %-7s %-4s", "Key", "Item", "Price", "Remaining");
		String line = "===========================================";
	
		inventoryDisplay.add(header);
		inventoryDisplay.add(line);
		for( String key : itemsInVendingMachine.keySet()) {
			String listItem;
			if (itemsInVendingMachine.get(key).isEmpty()) {
				listItem = key + " - SOLD OUT";
			} else {
			
				listItem = String.format("%-2s - %-20s $%-10.2f %-4s", key, itemsInVendingMachine.get(key).peek().getName(), 
					itemCost(key), stackSize(key));
			}
			
			inventoryDisplay.add(listItem);
		}
		
		return inventoryDisplay;
	}
	
}

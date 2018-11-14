package com.techelevator;

import java.util.ArrayList;
import java.util.List;
import org.junit.Before;
import org.junit.Test;
import org.junit.Assert;

public class InventoryTest {

	Inventory invent;
	Item item1;
	Item item2;
	
	@Before
	public void setup() {
		invent = new Inventory();
		item1 = new Drink("Mountain Dew", 1.75);
		item2 = new Chips("Munchios", 2.55);
	}
	
	@Test
	public void verify_getItem() {
		invent.addStack("E6");
		invent.addItem("E6", item1);
		Item it = invent.getItem("E6");
		Assert.assertEquals(item1, it);
	}
	
	@Test
	public void verify_validCode() {
		invent.addStack("F3");
		invent.addStack("G5");
		invent.addItem("G5", item2);
		Assert.assertTrue(invent.validCode("F3"));
		Assert.assertTrue(invent.validCode("G5"));
		Assert.assertFalse(invent.validCode("A6"));
	}
	
	@Test
	public void verify_stackSize() {
		invent.addStack("F3");
		invent.addStack("G5");
		invent.addItem("G5", item2);
		Assert.assertEquals(0, invent.stackSize("F3"));
		Assert.assertEquals(1, invent.stackSize("G5"));
	}
	
	@Test
	public void verify_itemCost() {
		invent.addStack("F3");
		invent.addItem("F3", item1);
		Assert.assertEquals(1.75, invent.itemCost("F3"), 0.009);
	}
	
	@Test
	public void verify_showInventory() {
		invent.addStack("E1");
		invent.addStack("F3");
		invent.addItem("F3", item1);
		invent.addStack("G5");
		invent.addItem("G5", item2);
		
		List<String> inventoryDisplay = new ArrayList<String>();
		String header = String.format("\n%-6s %-18s %-7s %-4s", "Key", "Item", "Price", "Remaining");
		String line = "===========================================";
	
		inventoryDisplay.add(header);
		inventoryDisplay.add(line);
		
		String a = "E1 - SOLD OUT";
		inventoryDisplay.add(a);
		a = String.format("%-2s - %-20s $%-10.2f %-4s", "F3", "Mountain Dew", 1.75, 1); 
		inventoryDisplay.add(a);
		a = String.format("%-2s - %-20s $%-10.2f %-4s", "G5", "Munchios", 2.55, 1);
		inventoryDisplay.add(a);
		
		Assert.assertEquals(inventoryDisplay, invent.showInventory());
	}
	
}

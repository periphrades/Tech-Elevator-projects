package com.techelevator;

import org.junit.Before;
import org.junit.Test;
import org.junit.Assert;

public class InventoryLoaderFromFileTest {
	
	Inventory inventory;
	InventoryLoader loader;

	@Before
	public void setup() {
		
		inventory = new Inventory();
		loader = new InventoryLoaderFromFile(new SalesReportHandler());
		
	}
	
	// NB: this test will not work without defining equals() for an Inventory
	
	@Test
	public void verify_load_from_file() {
		inventory.addStack("A2");
		inventory.addStack("B7");
		inventory.addStack("C1");
		inventory.addStack("D5");
		Item it;
		
		for (int i = 0; i < 5; i++) {
			it = new Candy("Kat Kit", 2.25);
			inventory.addItem("A2", it);
			it = new Chips("Springles", 1.35);
			inventory.addItem("B7", it);
			it = new Gum("Chew Chew", 0.75);
			inventory.addItem("C1", it);
			it = new Drink("Crapple", 1.25);
			inventory.addItem("D5", it);
			
		}
		
		Inventory actual = loader.load();
		Assert.assertEquals(inventory, actual);
	}

}

package com.techelevator;

import org.junit.Before;
import org.junit.Test;

import java.util.ArrayList;
import java.util.List;

import org.junit.Assert;

public class UserTest {

	User user;
	Item item1;
	Item item2;
	
	@Before
	public void setup() {
		user = new User();
		item1 = new Drink("Mountain Dew", 1.75);
		item2 = new Chips("Munchios", 2.55);
	}
	
	@Test
	public void verify_change_of_balance_when_adding_item_to_stash() {
		user.addToBalance(10.00);
		user.addItemToStash(item1);
		user.addItemToStash(item2);
		double cash = user.getCurrentBalance();
		Assert.assertEquals(5.7, cash, 0.009);
	}
	
	@Test
	public void verify_consumption() {
		user.addItemToStash(item1);
		user.addItemToStash(item2);
		List<String> expected = new ArrayList<String>();
		expected.add("");
		String s = "You consumed Mountain Dew: Glug Glug, Yum!";
		expected.add(s);
		s = "You consumed Munchios: Crunch Crunch, Yum!";
		expected.add(s);
		List<String> actual = user.consume();
		Assert.assertEquals(expected, actual);
	}
	
	@Test
	public void verify_consumption_no_items() {
		List<String> expected = new ArrayList<String>();
		expected.add("");
		List<String> actual = user.consume();
		Assert.assertEquals(expected, actual);
	}
	
}

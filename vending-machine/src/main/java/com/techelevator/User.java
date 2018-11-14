package com.techelevator;

import java.util.ArrayList;
import java.util.List;

public class User {
	
	private double currentBalance;
	private List<Item> stash;
	
	public User() {
		currentBalance = 0.00;
		stash = new ArrayList<Item>();
	}
	
	public double getCurrentBalance() {	
		return currentBalance;		
	}
	
	public double addToBalance(double money) {
		currentBalance += money;
		return currentBalance;
	}
	
	public void zeroOutCurrentBalance() {
		currentBalance = 0.00;
	}
	
	public void addItemToStash(Item it) {
		stash.add(it);
		currentBalance -= it.getCost();
	}
	
	public List<String> consume() {
		List<String> consumptionMessages = new ArrayList<String>();
		String sound = "";
		consumptionMessages.add(sound);
		int counter = 0;
		for ( Item it : stash) {
			sound = "You consumed " + it.getName() + ": " +  it.getConsumptionSound();
			consumptionMessages.add(sound);
			counter++;
		}
		stash.clear();
		return consumptionMessages;
	}
	
}


package com.techelevator;

public abstract class Item {
	
	private String name;
	private double cost;
	private String consumptionSound;
	
	public Item (String name, double cost, String sound) {
		this.name = name;
		this.cost = cost;
		this.consumptionSound = sound;
	}
		
	public String getName() {
		return name;
	}
	
	public double getCost() {
		return cost;
	}
	
	public String getConsumptionSound() {
		return consumptionSound;
	}
	
}

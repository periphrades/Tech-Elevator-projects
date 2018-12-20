package com.techelevator.model;

import java.time.LocalDate;

public class Townhall {

	private int id;
	private String townhallName;
	private String townhallAddress;
	private String townhallCity;
	private String state;
	private String townhallZip;
	private LocalDate date;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getTownhallName() {
		return townhallName;
	}

	public void setTownhallName(String townhallName) {
		this.townhallName = townhallName;
	}

	public String getTownhallAddress() {
		return townhallAddress;
	}

	public void setTownhallAddress(String townhallAddress) {
		this.townhallAddress = townhallAddress;
	}

	public String getTownhallCity() {
		return townhallCity;
	}

	public void setTownhallCity(String townhallCity) {
		this.townhallCity = townhallCity;
	}

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}

	public String getTownhallZip() {
		return townhallZip;
	}

	public void setTownhallZip(String townhallZip) {
		this.townhallZip = townhallZip;
	}

	public LocalDate getDate() {
		return date;
	}

	public void setDate(LocalDate date) {
		this.date = date;
	}

}
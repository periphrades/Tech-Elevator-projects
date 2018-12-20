package com.techelevator.model;

import java.util.List;

public interface TownhallDAO {

	public List<Townhall> getAllTownhallsByState(String state);

	public Townhall getTownhallById(int id);

	public void populateTownhallTable();
}

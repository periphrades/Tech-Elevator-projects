package com.techelevator.model;

import java.util.List;

public interface StateDAO {

	public String getStateNameById(String stateId);
	
	public List<State> getAllStates(); 

}

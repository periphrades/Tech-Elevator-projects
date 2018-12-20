package com.techelevator.model;

import java.util.List;
import java.util.Map;

public interface RepresentativeDAO {
	
	public List<Representative> getAllRepresentatives();
	
	public List<Representative> getAllRepresentativesByState(String state);
	
	public Representative getRepresentativeById(String id);
	
	public void loadRepsToDatabase(Map<String, Representative> congress);

	public void updateRepresentative(Representative rep);
	
}

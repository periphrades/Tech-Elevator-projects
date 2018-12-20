package com.techelevator;

import org.junit.Assert;
import org.junit.Before;
import org.junit.Test;

import com.techelevator.model.JDBCStateDAO;
import com.techelevator.model.StateDAO;

public class JDBCStateDAOIntegrationTest extends DAOIntegrationTest {

	private StateDAO stateDAO;
	
	@Before
	public void setup() {
		stateDAO = new JDBCStateDAO(getDataSource());
	}
	
	@Test
	public void verifyNameRetrieval() {
		
		String stateName = stateDAO.getStateNameById("TX");
		
		Assert.assertEquals("Texas", stateName);
		
	}
	
}

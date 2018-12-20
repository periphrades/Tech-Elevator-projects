package com.techelevator;

import static org.junit.Assert.assertEquals;

import java.util.List;

import org.junit.Assert;
import org.junit.Before;
import org.junit.Test;
import org.springframework.jdbc.core.JdbcTemplate;

import com.techelevator.model.JDBCRepresentativeDAO;
import com.techelevator.model.Representative;


public class JDBCRepresentativeDAOIntegrationTest extends DAOIntegrationTest{

	private JDBCRepresentativeDAO dao;
	private Representative expectedRepresentative1 = createRepresentative("SC", "RalphTest", "Abraham", "House", "5");
	private Representative expectedRepresentative2 = createRepresentative("SC", "AlmaTest", "Adams", "House", "12");

	@Before
	public void setup() {
		dao = new JDBCRepresentativeDAO(getDataSource());
	}

	@Before
	public void cleanDatabase() {
		JdbcTemplate jdbcTemplate = new JdbcTemplate(getDataSource());
		jdbcTemplate.update("DELETE FROM townhall");
		jdbcTemplate.update("DELETE FROM representative");
		jdbcTemplate.update("DELETE FROM states");
		String sqlInsertSate1 = "INSERT INTO states(state_id, state_name) VALUES ('SC', 'South Carolina')";
		String sqlInsertRepresentative1 = "INSERT INTO representative(representative_id, state_id, first_name, last_name, chamber, district_id) VALUES('A123', 'SC', 'RalphTest', 'Abraham', 'House', '5')";
		String sqlInsertRepresentative2 = "INSERT INTO representative(representative_id, state_id, first_name, last_name, chamber, district_id) VALUES('A456', 'SC', 'AlmaTest', 'Adams', 'House', '12')";
		jdbcTemplate.update(sqlInsertSate1);
		jdbcTemplate.update(sqlInsertRepresentative1);
		jdbcTemplate.update(sqlInsertRepresentative2);
		
		
	}

	@Test
	public void shouldReturnAllRepresentatives() {
		
		List<Representative> actualRepresentatives = dao.getAllRepresentatives();
		
		assertRepresentativeAreEqual(expectedRepresentative1, actualRepresentatives.get(0));
		assertRepresentativeAreEqual(expectedRepresentative2, actualRepresentatives.get(1));
	}
	
	@Test
	public void shouldReturnAllRepresentativesByStateId() {

		List<Representative> actualRepresentatives = dao.getAllRepresentativesByState("SC");
		
		assertRepresentativeAreEqual(expectedRepresentative1, actualRepresentatives.get(0));
		assertRepresentativeAreEqual(expectedRepresentative2, actualRepresentatives.get(1));
	}
	
	
	
	@Test
	public void shouldReturnRepresentativeById() {
		List<Representative> actualRepresentatives = dao.getAllRepresentatives();
		Representative intermediaryRep = actualRepresentatives.get(0);
		String id = intermediaryRep.getId();
		
		Representative actualRepresentative = dao.getRepresentativeById(id);
		
		assertRepresentativeAreEqual(expectedRepresentative1, actualRepresentative);
	}
	
	
	@Test
	public void verifyRepUpdate() {
		
		Representative rep = dao.getRepresentativeById("A123");
		
		rep.setLocalStreet1("123 Sesame St");
		
		dao.updateRepresentative(rep);
		
		Representative rep2 = dao.getRepresentativeById("A123");
		String local = rep2.getLocalStreet1();
		
		Assert.assertEquals("123 Sesame St", local);
		
		
	}
	
	

	private void assertRepresentativeAreEqual(Representative expected, Representative actual) {
		assertEquals(expected.getState(), actual.getState());
		assertEquals(expected.getFirstName(), actual.getFirstName());
		assertEquals(expected.getLastName(), actual.getLastName());
		assertEquals(expected.getChamber(), actual.getChamber());
		assertEquals(expected.getDistrict(), actual.getDistrict());
	}

	private Representative createRepresentative(String state,
			String firstName,
			String lastName,
			String chamber,
			String district) {
		Representative representative = new Representative();
		representative.setState(state);
		representative.setFirstName(firstName);
		representative.setLastName(lastName);
		representative.setChamber(chamber);
		representative.setDistrict(district);
		return representative;
	}
}

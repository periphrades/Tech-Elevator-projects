package com.techelevator;

import static org.junit.Assert.*;

import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.List;

import org.junit.Before;
import org.junit.Test;
import org.springframework.jdbc.core.JdbcTemplate;

import com.techelevator.model.JDBCTownhallDAO;
import com.techelevator.model.Townhall;



public class JDBCTownhallDAOIntegrationTest extends DAOIntegrationTest{

	private JDBCTownhallDAO dao;
	private String dateAsString1 = "2018-12-01";
	private String dateAsString2 = "2019-01-05";
	private DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd");
	private LocalDate townhallDate1 = LocalDate.parse(dateAsString1, formatter);
	private LocalDate townhallDate2 = LocalDate.parse(dateAsString2, formatter);
	private Townhall expectedTownhall1 = createTownhall("Central Ohio Townhall For Change", "145 5th Avenue", "Columbus", "OH", "43019", townhallDate1);
	private Townhall expectedTownhall2 = createTownhall("Greater Cleveland Area Townhall 2019 New Start", "378 Euclid Blvd.", "Cleveland", "OH", "44106", townhallDate2);
	

	@Before
	public void setup() {
		dao = new JDBCTownhallDAO(getDataSource());
	}

	@Before
	public void cleanDatabase() {
		JdbcTemplate jdbcTemplate = new JdbcTemplate(getDataSource());
		jdbcTemplate.update("DELETE FROM question_recipient");
		jdbcTemplate.update("DELETE FROM townhall");
		jdbcTemplate.update("DELETE FROM question");
		jdbcTemplate.update("DELETE FROM representative");
		jdbcTemplate.update("DELETE FROM states");
		String sqlInsertSate1 = "INSERT INTO states(state_id, state_name) VALUES ('OH', 'Ohio')";
		String sqlInsertRepresentative1 = "INSERT INTO representative(representative_id, state_id, first_name, last_name, chamber, district_id) VALUES('B001306', 'OH', 'RalphTest', 'Abraham', 'House', '5')";
		String sqlInsertRepresentative2 = "INSERT INTO representative(representative_id, state_id, first_name, last_name, chamber, district_id) VALUES('F000455', 'OH', 'AlmaTest', 'Adams', 'House', '12')";	
		String sqlInsertTownhall1 = "INSERT INTO townhall(townhall_id, representative_id, townhall_name, townhall_address, townhall_city, state_id, townhall_zip, townhall_date) " + 
				"VALUES(42, 'B001306', 'Central Ohio Townhall For Change', '145 5th Avenue', 'Columbus', 'OH', '43019', '2018-12-01')";
		String sqlInsertTownhall2 = "INSERT INTO townhall(townhall_id, representative_id, townhall_name, townhall_address, townhall_city, state_id, townhall_zip, townhall_date) " + 
				"VALUES(43, 'F000455', 'Greater Cleveland Area Townhall 2019 New Start', '378 Euclid Blvd.', 'Cleveland', 'OH', '44106', '2019-01-05')";
		jdbcTemplate.update(sqlInsertSate1);
		jdbcTemplate.update(sqlInsertRepresentative1);
		jdbcTemplate.update(sqlInsertRepresentative2);
		jdbcTemplate.update(sqlInsertTownhall1);
		jdbcTemplate.update(sqlInsertTownhall2);
		
		
	}

	@Test
	public void shouldReturnAllTownhalls() {
		
		List<Townhall> actualTownhall = dao.getAllTownhallsByState("OH");
		
		assertTownhallsAreEqual(expectedTownhall1, actualTownhall.get(0));
		assertTownhallsAreEqual(expectedTownhall2, actualTownhall.get(1));
	}
	
	@Test
	public void shouldReturnTownhallById() {
		
		Townhall actualTownhall = dao.getTownhallById(42);
		
		assertTownhallsAreEqual(expectedTownhall1, actualTownhall);
	}

	private void assertTownhallsAreEqual(Townhall expected, Townhall actual) {
		assertEquals(expected.getTownhallName(), actual.getTownhallName());
		assertEquals(expected.getTownhallAddress(), actual.getTownhallAddress());
		assertEquals(expected.getTownhallCity(), actual.getTownhallCity());
		assertEquals(expected.getState(), actual.getState());
		assertEquals(expected.getTownhallZip(), actual.getTownhallZip());
		assertEquals(expected.getDate(), actual.getDate());

	}

	private Townhall createTownhall(String townhallName,
			String townhallAddress,
			String townhallCity,
			String state,
			String townhallZip,
			LocalDate date) {
		Townhall townhall = new Townhall();
		townhall.setTownhallName(townhallName);
		townhall.setTownhallAddress(townhallAddress);
		townhall.setTownhallCity(townhallCity);
		townhall.setState(state);
		townhall.setTownhallZip(townhallZip);
		townhall.setDate(date);
		return townhall;
	}

}

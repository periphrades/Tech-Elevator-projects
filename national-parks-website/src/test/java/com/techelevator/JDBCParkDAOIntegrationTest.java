package com.techelevator;

import java.util.List;

import javax.sql.DataSource;

import org.junit.Assert;
import org.junit.Before;
import org.junit.Test;
import org.springframework.jdbc.core.JdbcTemplate;

import com.techelevator.npgeek.model.JDBCParkDAO;
import com.techelevator.npgeek.model.Park;
import com.techelevator.npgeek.model.ParkDAO;

public class JDBCParkDAOIntegrationTest extends DAOIntegrationTest{

	private ParkDAO parkDAO;
	private DataSource dataSource = super.getDataSource();
	private JdbcTemplate template = new JdbcTemplate(dataSource);
	
	@Before
	public void setUp() {
		parkDAO = new JDBCParkDAO(dataSource);
		
		String sql = "INSERT INTO park VALUES ('RNP', 'Renner National Park', 'OH', "
				+ "1400, 200, 50.0, 10, 'wonderful', 2018, 450000, 'wonderful', 'Kevin Hawthorne', 'blah blah', 60, 450)";
		
		template.update(sql);
	}
	
	@Test
	public void get_all_parks() {
		
		List<Park> allParks = parkDAO.getAllParks();
		
		Assert.assertTrue("no parks returned", allParks.size() >= 1);
		
		boolean foundIt = false;
		for ( Park park : allParks) {
			if (park.getParkCode().equals("RNP")) {
				foundIt = true;
			}
		}
		
		Assert.assertTrue("test Park not found", foundIt);
		
	}
	
	@Test
	public void get_park_by_park_code() {
		
		Park park = parkDAO.getParkByParkCode("RNP");
		Assert.assertNotNull(park);
		Assert.assertTrue(park.getParkCode().equals("RNP"));
	}
}

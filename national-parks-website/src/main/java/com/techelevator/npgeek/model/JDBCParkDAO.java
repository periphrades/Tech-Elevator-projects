package com.techelevator.npgeek.model;

import java.util.ArrayList;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.support.rowset.SqlRowSet;
import org.springframework.stereotype.Component;

@Component
public class JDBCParkDAO implements ParkDAO{
	
	private JdbcTemplate template;
	
	public JDBCParkDAO(DataSource dataSource) {
		this.template = new JdbcTemplate(dataSource);
	}

	@Override
	public List<Park> getAllParks() {
		List<Park> allParks = new ArrayList<Park>();
		
		String sql = "SELECT * FROM park ORDER BY parkname";
		
		SqlRowSet result = template.queryForRowSet(sql);
		
		while(result.next()) {
			Park park = mapRowSetToPark(result);
			allParks.add(park);
		}
		
		return allParks;
	}
	
	@Override
	public Park getParkByParkCode(String parkCode) {
		
		Park park = null;
		
		String sql = "SELECT * FROM park WHERE parkcode = ?";
		
		SqlRowSet result = template.queryForRowSet(sql, parkCode);
		
		if (result.next()) {
			park = mapRowSetToPark(result);
		}
		
		return park;
	}
	
	
	private Park mapRowSetToPark(SqlRowSet result) {
		Park park = new Park();
		
		park.setParkCode(result.getString("parkcode"));
		park.setParkName(result.getString("parkname"));
		park.setState(result.getString("state"));
		park.setAcreage(result.getInt("acreage"));
		park.setElevationInFeet(result.getInt("elevationinfeet"));
		park.setMilesOfTrail(result.getFloat("milesoftrail"));
		park.setNumberOfCampsites(result.getInt("numberofcampsites"));
		park.setClimate(result.getString("climate"));
		park.setYearFounded(result.getInt("yearfounded"));
		park.setAnnualVisitorCount(result.getInt("annualvisitorcount"));
		park.setQuote(result.getString("inspirationalquote"));
		park.setQuoteSource(result.getString("inspirationalquotesource"));
		park.setDescription(result.getString("parkdescription"));
		park.setEntryFee(result.getInt("entryfee"));
		park.setNumberOfAnimalSpecies(result.getInt("numberofanimalspecies"));
		
		return park;
	}


	
	
}

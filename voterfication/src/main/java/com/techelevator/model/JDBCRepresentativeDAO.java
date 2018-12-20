package com.techelevator.model;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.support.rowset.SqlRowSet;
import org.springframework.stereotype.Component;

@Component
public class JDBCRepresentativeDAO implements RepresentativeDAO{
	
	private JdbcTemplate jdbcTemplate;
	
	@Autowired
	public JDBCRepresentativeDAO(DataSource dataSource) {
		this.jdbcTemplate = new JdbcTemplate(dataSource);
	}

	@Override
	public List<Representative> getAllRepresentatives() {
		List<Representative> allRepresentatives = new ArrayList<>();
		String sqlSelectAllRepresentatives = "SELECT * FROM representative";
		SqlRowSet results = jdbcTemplate.queryForRowSet(sqlSelectAllRepresentatives);
		while(results.next()) { 
			allRepresentatives.add(mapRowToRepresentative(results));
		}
		return allRepresentatives;
	}
	
	@Override
	public List<Representative> getAllRepresentativesByState(String state) {
		List<Representative> allRepresentatives = new ArrayList<Representative>();
		String sqlSelectAllRepresentatives = "SELECT * FROM representative WHERE state_id = ?";
		SqlRowSet results = jdbcTemplate.queryForRowSet(sqlSelectAllRepresentatives, state);
		while(results.next()) { 
			allRepresentatives.add(mapRowToRepresentative(results));
		}
		return allRepresentatives;
	}

	@Override
	public Representative getRepresentativeById(String id) {
		Representative representative = null;
		String sqlGetQuestiionById = "SELECT * "+
				   "FROM representative "+
				   "WHERE representative_id = ?";
		SqlRowSet results = jdbcTemplate.queryForRowSet(sqlGetQuestiionById, id);
		if(results.next()) {
			representative = mapRowToRepresentative(results);
		}
		return representative;
	}
	
	@Override
	public void updateRepresentative(Representative rep) {
		
		String contact = rep.getContact();
		String url = rep.getUrl();
		String localStreet1 = rep.getLocalStreet1();
		String localStreet2 = rep.getLocalStreet2();
		String localCity = rep.getLocalCity();
		String localZip = rep.getLocalZip();
		String localPhone = rep.getLocalPhone();
		String DCStreet1 = rep.getDCStreet1();
		String DCStreet2 = rep.getDCStreet2();
		String DCZip = rep.getDCZip();
		String DCPhone = rep.getDCPhone();
		String repId = rep.getId();
		
		String sql = "UPDATE representative SET contact = ?, url = ?, local_street1 = ?, local_street2 = ?, local_city = ?, "
				+ "local_zip = ?, local_phone = ?, dc_street1 = ?, dc_street2 = ?, dc_zip = ?, dc_phone = ?, edited = true "
				+ "WHERE representative_id = ?";
		
		jdbcTemplate.update(sql, contact, url, localStreet1, localStreet2, localCity, localZip, 
				localPhone, DCStreet1, DCStreet2, DCZip, DCPhone, repId);
		
	}
	
	
	
	@Override
	public void loadRepsToDatabase(Map<String, Representative> congress) {
		
		jdbcTemplate.update("DELETE FROM townhall");
		jdbcTemplate.update("DELETE FROM representative");
		
		for (String id : congress.keySet()) {
			
			String repId = congress.get(id).getId();
			String state = congress.get(id).getState();
			String firstName = congress.get(id).getFirstName();
			String lastName = congress.get(id).getLastName();
			String chamber = congress.get(id).getChamber();
			String district = congress.get(id).getDistrict();
			String party = congress.get(id).getParty();
			String contact = congress.get(id).getContact();
			String url = congress.get(id).getUrl();
			String street1 = congress.get(id).getDCStreet1();
			String phone = congress.get(id).getDCPhone();
			
			
			String sql = "INSERT INTO representative (representative_id, state_id, first_name, last_name, chamber, district_id, party, "
					+ "contact, url, dc_street1, dc_zip, dc_phone) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, '20515', ?)"; 

			jdbcTemplate.update(sql, repId, state, firstName, lastName, chamber, district, party, contact, url, street1, phone);
			
		}
		
	}
	
	private Representative mapRowToRepresentative(SqlRowSet results) {
		Representative representative = new Representative();
		representative.setId(results.getString("representative_id"));
		representative.setState(results.getString("state_id"));
		representative.setFirstName(results.getString("first_name"));
		representative.setLastName(results.getString("last_name"));
		representative.setChamber(results.getString("chamber"));
		representative.setDistrict(results.getString("district_id"));
		representative.setParty(results.getString("party"));
		representative.setContact(results.getString("contact"));
		representative.setLocalStreet1(results.getString("local_street1"));
		representative.setLocalStreet2(results.getString("local_street2"));
		representative.setLocalCity(results.getString("local_city"));
		representative.setLocalZip(results.getString("local_zip"));
		representative.setDCZip(results.getString("dc_zip"));
		representative.setDCStreet1(results.getString("dc_street1"));
		representative.setDCStreet2(results.getString("dc_street2"));
		representative.setLocalPhone(results.getString("local_phone"));
		representative.setDCPhone(results.getString("dc_phone"));
		representative.setUrl(results.getString("url"));
		representative.setEdited(results.getBoolean("edited"));
		
		return representative;
	}
}

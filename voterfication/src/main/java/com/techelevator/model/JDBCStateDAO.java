package com.techelevator.model;

import java.util.ArrayList;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.support.rowset.SqlRowSet;
import org.springframework.stereotype.Component;


@Component
public class JDBCStateDAO implements StateDAO {

	private JdbcTemplate jdbcTemplate;
	
	@Autowired
	public JDBCStateDAO(DataSource dataSource) {
		this.jdbcTemplate = new JdbcTemplate(dataSource);
	}
	
	@Override
	public String getStateNameById(String stateId) {
		
		String stateName = "";
		
		String sql = "SELECT state_name FROM states WHERE state_id = ?";
		
		SqlRowSet result = jdbcTemplate.queryForRowSet(sql, stateId);
		
		if (result.next()) {
			stateName = result.getString("state_name");
		}
		
		return stateName;
	}
	
	@Override
	public List<State> getAllStates() {
		List<State> allStates = new ArrayList<State>();
		String sqlSelectAllStates = "SELECT * FROM states";
		SqlRowSet results = jdbcTemplate.queryForRowSet(sqlSelectAllStates);
		while (results.next()) {
			allStates.add(mapRowToState(results));
		}
		return allStates;
	}
	
	private State mapRowToState(SqlRowSet results) {
		State state = new State();

		state.setStateId(results.getString("state_id"));
		state.setStateName(results.getString("state_name"));


		return state;
	}
	
}

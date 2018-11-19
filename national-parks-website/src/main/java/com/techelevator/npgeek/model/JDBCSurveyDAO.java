package com.techelevator.npgeek.model;

import java.util.ArrayList;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.support.rowset.SqlRowSet;
import org.springframework.stereotype.Component;


@Component
public class JDBCSurveyDAO implements SurveyDAO {

	private JdbcTemplate jdbcTemplate;

	@Autowired
	public JDBCSurveyDAO(DataSource dataSource) {
		this.jdbcTemplate = new JdbcTemplate(dataSource);
	}
	
	@Override
	public void submitSurvey(Survey survey) {
		String sqlInsertPost = "INSERT INTO survey_result(parkcode, emailaddress, state, activitylevel) VALUES (?, ?, ?, ?)";
		jdbcTemplate.update(sqlInsertPost, survey.getParkCode(), survey.getEmail(), survey.getState(), survey.getActivityLevel());
		
	}
	
	@Override
	public List<Park> getSurveyResults() {
		
		String sql = "SELECT survey_result.parkcode, parkname, count(*) AS rank "
				+ "FROM survey_result JOIN park ON survey_result.parkcode = park.parkcode "
				+ "GROUP BY parkname, survey_result.parkcode "
				+ "ORDER BY rank DESC, parkname ASC";
		
		SqlRowSet result = jdbcTemplate.queryForRowSet(sql);
		List<Park> surveyRankings = new ArrayList <Park>();
			
		while(result.next()) {
			Park park = mapRowSetToPark(result);
			surveyRankings.add(park);
		}
		return surveyRankings;
	}
	
	private Park mapRowSetToPark(SqlRowSet result) {
		Park park = new Park();
		
		park.setParkCode(result.getString("parkcode"));
		park.setParkName(result.getString("parkname"));
		park.setSurveyRank(result.getInt("rank"));
		
		return park;
	}


}

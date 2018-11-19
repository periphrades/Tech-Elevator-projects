package com.techelevator;

import java.util.List;

import javax.sql.DataSource;

import org.junit.Assert;
import org.junit.Before;
import org.junit.Test;
import org.springframework.jdbc.core.JdbcTemplate;

import com.techelevator.npgeek.model.JDBCSurveyDAO;
import com.techelevator.npgeek.model.Park;
import com.techelevator.npgeek.model.Survey;
import com.techelevator.npgeek.model.SurveyDAO;


public class JDBCSurveyDAOIntegrationTest extends DAOIntegrationTest {

	private SurveyDAO surveyDAO;
	private DataSource dataSource = super.getDataSource();
	private JdbcTemplate template = new JdbcTemplate(dataSource);
	
	@Before
	public void setUp() {
		
		surveyDAO = new JDBCSurveyDAO(dataSource);
		
		String sql = "INSERT INTO park VALUES ('RNP', 'Renner National Park', 'OH', "
				+ "1400, 200, 50.0, 10, 'wonderful', 2018, 450000, 'wonderful', 'Kevin Hawthorne', 'blah blah', 60, 450)";
		
		template.update(sql);
	}
	
	@Test
	public void verify_submitted_survey() {
		
		Survey survey = new Survey();
		
		survey.setParkCode("RNP");
		survey.setEmail("alpha@beta.com");
		survey.setState("Texas");
		survey.setActivityLevel("sedentary");
		
		surveyDAO.submitSurvey(survey);
		
		List<Park> surveyParks = surveyDAO.getSurveyResults();
		
		boolean containsOurSurvey = false;
		
		for (Park park : surveyParks) {
			if (park.getParkCode().equals("RNP")) {
				containsOurSurvey = true;
			}
		}
		
		Assert.assertTrue(containsOurSurvey);
	}
	
	@Test
	public void verify_survey_results() {
		
		Survey survey = new Survey();
		
		survey.setParkCode("RNP");
		survey.setEmail("alpha@beta.com");
		survey.setState("Texas");
		survey.setActivityLevel("sedentary");
		
		for (int i = 0; i < 4; i++) {
			surveyDAO.submitSurvey(survey);
		}
		
		List<Park> surveyParks = surveyDAO.getSurveyResults();

		boolean currectSurveyCount = false;
		
		for (Park park : surveyParks) {
			if (park.getParkCode().equals("RNP") && park.getSurveyRank() == 4) {
				currectSurveyCount = true;
			}
		}
		
		Assert.assertTrue(currectSurveyCount);
		
	}
	
}

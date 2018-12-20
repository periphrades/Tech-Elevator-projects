package com.techelevator;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertTrue;

import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.List;

import org.junit.Before;
import org.junit.Test;
import org.springframework.jdbc.core.JdbcTemplate;

import com.techelevator.model.JDBCQuestionDAO;
import com.techelevator.model.Question;

public class JDBCQuestionDAOIntegrationTest extends DAOIntegrationTest {

	private JDBCQuestionDAO jdbcQuestionDAO;
	private JdbcTemplate jdbcTemplate;
	private String str = "2018-12-11";
	private DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd");
	private LocalDate question1Date = LocalDate.parse(str, formatter);
	private LocalDate question2Date = LocalDate.parse(str, formatter);
	private Question expectedQuestion1 = createQuestion("B001306", 0, 22, "Where is my government cheese?", question1Date);
	private Question expectedQuestion2 = createQuestion("B001306", 0, 33, "Will you continue to accept money from special interests?", question2Date);
	
	@Before
	public void setup() {
		
		jdbcQuestionDAO = new JDBCQuestionDAO(getDataSource());
		jdbcTemplate = new JdbcTemplate(getDataSource());
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
		String sqlInsertUser1 = "INSERT INTO app_user(id, user_name, password, salt) VALUES(22, 'bigvoter', 'thisisabadpassword', '9545h7w87bwe8robnuei')";
		String sqlInsertUser2 = "INSERT INTO app_user(id, user_name, password, salt) VALUES(33, 'votergeek', 'whataterriblepassword', '98354hhwoer8bsneruig8p97gw')";
		jdbcTemplate.update(sqlInsertUser1);
		jdbcTemplate.update(sqlInsertUser2);
		String sqlInsertQuestion1 = "INSERT INTO question(question_id, user_id, submitted_message, date_posted) VALUES(11, 22, 'Where is my government cheese?', '2018-12-11')";
		String sqlInsertQuestion2 = "INSERT INTO question(question_id, user_id, submitted_message, date_posted) VALUES(22, 33, 'Will you continue to accept money from special interests?', '2018-12-11')";
		jdbcTemplate.update(sqlInsertQuestion1);
		jdbcTemplate.update(sqlInsertQuestion2);		
		String sqlInsertQR1 = "INSERT INTO question_recipient(question_id, representative_id, townhall_id) VALUES(11, 'B001306', 0)";
		String sqlInsertQR2 = "INSERT INTO question_recipient(question_id, representative_id, townhall_id) VALUES(22, 'B001306', 0)";
		jdbcTemplate.update(sqlInsertQR1);
		jdbcTemplate.update(sqlInsertQR2);


		
	}
	
	@Test
	public void get_all_questions() {
		
		List<Question> actualQuestions = jdbcQuestionDAO.getAllQuestions();
		
		assertQuestionsAreEqual(expectedQuestion1, actualQuestions.get(0));
		assertQuestionsAreEqual(expectedQuestion2, actualQuestions.get(1));
	}
	
	@Test
	public void save_new_question() {
		Question expected = createQuestion(null, 42, 22, "Where for art thou townhall. Thy existence sucketh most foul", question1Date);


		jdbcQuestionDAO.saveNewQuestion(expected);
		List<Question> actualQuestions = jdbcQuestionDAO.getAllQuestions();
		
		
		assertQuestionsAreEqual(expected, actualQuestions.get(2));
	}
	
	@Test
	public void get_question_by_id() {

		Question actual = jdbcQuestionDAO.getQuestionById(22);
		
		
		assertQuestionsAreEqual(expectedQuestion2, actual);
	}
	
	@Test
	public void delete_question() {
		jdbcQuestionDAO.deleteQuestion(11);
		jdbcQuestionDAO.deleteQuestion(22);
		List<Question> nullList = jdbcQuestionDAO.getAllQuestions();
		
		assertTrue(nullList.size() == 0);
	}
	
	@Test
	public void update_question() {
		expectedQuestion1.setMessage("Why does the goverment suck so hard?");
		
		jdbcQuestionDAO.updateQuestion("Why does the goverment suck so hard?", 11);
		Question updatedQuestion = jdbcQuestionDAO.getQuestionById(11);
		
		assertQuestionsAreEqual(expectedQuestion1, updatedQuestion);
	}
	
	private void assertQuestionsAreEqual(Question expected, Question actual) {
		assertEquals(expected.getRepId(), actual.getRepId());
		assertEquals(expected.getTownhallId(), actual.getTownhallId());
		assertEquals(expected.getUserId(), actual.getUserId());
		assertEquals(expected.getMessage(), actual.getMessage());
		assertEquals(expected.getDate(), actual.getDate());
	}
	
	private Question createQuestion(
			String repId,
			int townhallId,
			int userId,
			String message,
			LocalDate date) {
		Question question = new Question();
		
		question.setRepId(repId);
		question.setTownhallId(townhallId);
		question.setUserId(userId);
		question.setMessage(message);
		question.setDate(date);

		return question;
	}
}
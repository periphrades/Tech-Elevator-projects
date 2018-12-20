package com.techelevator.model;

import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.support.rowset.SqlRowSet;
import org.springframework.stereotype.Component;

@Component
public class JDBCQuestionDAO implements QuestionDAO {
	
	private JdbcTemplate jdbcTemplate;
	
	@Autowired
	public JDBCQuestionDAO(DataSource dataSource) {
		this.jdbcTemplate = new JdbcTemplate(dataSource);
	}

	@Override
	public List<Question> getAllQuestions() {
		List<Question> allQuestions = new ArrayList<>();
		String sqlSelectAllQuestions = "Select * from question join question_recipient on question.question_id = question_recipient.question_id;";
		SqlRowSet results = jdbcTemplate.queryForRowSet(sqlSelectAllQuestions);
		while(results.next()) { 
			allQuestions.add(mapRowToQuestion(results));
		}
		return allQuestions;
	}

	@Override
	public void saveNewQuestion(Question newQuestion) {
		newQuestion.setDate(LocalDate.now());
		newQuestion.setQuestionId(getNextQuestionId());
		jdbcTemplate.update("INSERT INTO question(question_id, user_id, submitted_message, date_posted) VALUES (?,?,?,?); " +
		"insert into question_recipient(question_id, representative_id, townhall_id) values(?, ?, ?)",
		newQuestion.getQuestionId(), newQuestion.getUserId(), newQuestion.getMessage(), newQuestion.getDate(), newQuestion.getQuestionId(), newQuestion.getRepId(), newQuestion.getTownhallId());
	}

	@Override
	public Question getQuestionById(int id) {
		Question question = null;
		String sqlGetQuestiionById = "SELECT * "+
				   "FROM question "+
				   "join question_recipient on question.question_id = question_recipient.question_id " +
				   "WHERE question.question_id = ?";
		SqlRowSet results = jdbcTemplate.queryForRowSet(sqlGetQuestiionById, id);
		if(results.next()) {
			question = mapRowToQuestion(results);
		}
		return question;
	}

	@Override
	public void deleteQuestion(int id) {
		String sqlDeleteQuestion = "DELETE FROM question_recipient WHERE question_id = ?; " +
				"DELETE FROM question WHERE question_id = ?";	
		jdbcTemplate.update(sqlDeleteQuestion, id, id);
	}

	@Override
	public void updateQuestion(String message, int id) {
		String sql = "UPDATE question SET submitted_message = ? WHERE question_id = ?";
		jdbcTemplate.update(sql, message, id);
	}
	
	
	private Question mapRowToQuestion(SqlRowSet results) {
		Question question = new Question();
		question.setQuestionId(results.getInt("question_id"));
		question.setRepId(results.getString("representative_id"));
		question.setTownhallId(results.getInt("townhall_id"));
		question.setUserId(results.getInt("user_id"));
		question.setMessage(results.getString("submitted_message"));
		question.setDate(results.getDate("date_posted").toLocalDate());
		return question;
	}

	@Override
	public List<Question> getQuestionByUserId(int userId) {
		List<Question> allQuestions = new ArrayList<>();
		String sqlGetQuestiionByUserId = "SELECT * "+
				   "FROM question "+
				   "join question_recipient on question.question_id = question_recipient.question_id " +
				   "WHERE user_id = ?";
		SqlRowSet results = jdbcTemplate.queryForRowSet(sqlGetQuestiionByUserId, userId);
		while(results.next()) { 
			allQuestions.add(mapRowToQuestion(results));
		}
		return allQuestions;
	}
	
	private int getNextQuestionId() {
		SqlRowSet result = jdbcTemplate.queryForRowSet("SELECT nextval('question_question_id_seq'::regclass)");
		result.next();
		int id = result.getInt(1);
		return id;
	}

}

package com.techelevator.model;

import java.util.List;

public interface QuestionDAO {
	
	public List<Question> getAllQuestions();
	
	public void saveNewQuestion(Question newQuestion);
	
	public Question getQuestionById(int id);
	
	public void deleteQuestion(int id);
	
	public void updateQuestion(String message, int id);
	
	public List<Question> getQuestionByUserId(int userId);

}

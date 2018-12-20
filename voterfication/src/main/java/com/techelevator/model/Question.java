package com.techelevator.model;

import java.time.LocalDate;

public class Question {

	private int questionId;
	private String repId;
	private int townhallId;
	private int userId;
	private String message;
	private LocalDate date;

	public int getQuestionId() {
		return questionId;
	}

	public void setQuestionId(int questionId) {
		this.questionId = questionId;
	}

	public String getRepId() {
		return repId;
	}

	public void setRepId(String repId) {
		this.repId = repId;
	}

	public int getUserId() {
		return userId;
	}

	public void setUserId(int userId) {
		this.userId = userId;
	}

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}

	public LocalDate getDate() {
		return date;
	}

	public void setDate(LocalDate date) {
		this.date = date;
	}

	public int getTownhallId() {
		return townhallId;
	}

	public void setTownhallId(int townhallId) {
		this.townhallId = townhallId;
	}

}

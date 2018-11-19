package com.techelevator.npgeek.model;

import javax.validation.constraints.NotNull;

import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.NotBlank;

public class Survey {

	@NotBlank(message="Park selection is required for a valid vote")
	private String parkCode;
	
	@NotBlank(message="Email address is required")
	@Email(message="Email must be a valid email address")
	private String email;
	
	@NotBlank(message="State selection is required for a valid vote")
	private String state;
	
	@NotBlank(message="Activity Level approximation is required for a valid vote")
	private String activityLevel;
	
	public String getParkCode() {
		return parkCode;
	}
	public void setParkCode(String parkCode) {
		this.parkCode = parkCode;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public String getActivityLevel() {
		return activityLevel;
	}
	public void setActivityLevel(String activityLevel) {
		this.activityLevel = activityLevel;
	}
	
	
}

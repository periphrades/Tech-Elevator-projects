package com.techelevator.model;

public class Representative implements Comparable<Representative> {
	private String id;
	private String state;
	private String firstName;
	private String lastName;
	private String chamber;
	private String district;
	private String party;
	private String contact;
	private String localStreet1;
	private String localStreet2;
	private String localCity;
	private String localZip;
	private String localPhone;
	private String DCStreet1;
	private String DCStreet2;
	private String DCZip;
	private String DCPhone;
	private String url;
	private boolean edited;
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public String getFirstName() {
		return firstName;
	}
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	public String getLastName() {
		return lastName;
	}
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
	public String getChamber() {
		return chamber;
	}
	public void setChamber(String chamber) {
		this.chamber = chamber;
	}
	public String getDistrict() {
		return district;
	}
	public void setDistrict(String district) {
		this.district = district;
	}
	public String getParty() {
		return party;
	}
	public void setParty(String party) {
		this.party = party;
	}
	
	public String getLocalStreet1() {
		return localStreet1;
	}
	public void setLocalStreet1(String localStreet1) {
		this.localStreet1 = localStreet1;
	}
	public String getLocalStreet2() {
		return localStreet2;
	}
	public void setLocalStreet2(String localStreet2) {
		this.localStreet2 = localStreet2;
	}
	public String getLocalCity() {
		return localCity;
	}
	public void setLocalCity(String localCity) {
		this.localCity = localCity;
	}
	public String getLocalZip() {
		return localZip;
	}
	public void setLocalZip(String localZip) {
		this.localZip = localZip;
	}
	public String getDCStreet1() {
		return DCStreet1;
	}
	public void setDCStreet1(String dCStreet1) {
		DCStreet1 = dCStreet1;
	}
	public String getDCStreet2() {
		return DCStreet2;
	}
	public void setDCStreet2(String dCStreet2) {
		DCStreet2 = dCStreet2;
	}
	public String getDCZip() {
		return DCZip;
	}
	public void setDCZip(String dCZip) {
		DCZip = dCZip;
	}
	public String getContact() {
		return contact;
	}
	public void setContact(String contact) {
		this.contact = contact;
	}
	
	public String getLocalPhone() {
		return localPhone;
	}
	public void setLocalPhone(String localPhone) {
		this.localPhone = localPhone;
	}
	public String getDCPhone() {
		return DCPhone;
	}
	public void setDCPhone(String dCPhone) {
		DCPhone = dCPhone;
	}
	
	public String getFullName() {
		return firstName + " " + lastName;
	}
	
	public String getlocalCityStateZip() {
		return localCity + ", " + state + " " + localZip;
	}
	
	public String getDCCityStateZip() {
		return "Washington, DC " + DCZip;
	}
	public String getUrl() {
		return url;
	}
	public void setUrl(String url) {
		this.url = url;
	}
	
	public boolean isEdited() {
		return edited;
	}
	public void setEdited(boolean edited) {
		this.edited = edited;
	}
	
	@Override
	public int compareTo(Representative otherRep) {
		return Integer.parseInt(this.district) - Integer.parseInt(otherRep.getDistrict());
	}
	
}

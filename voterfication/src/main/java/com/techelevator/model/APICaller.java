package com.techelevator.model;

import java.io.IOException;
import java.time.LocalDate;
import java.util.HashMap;
import java.util.Map;

import org.apache.http.HttpResponse;
import org.apache.http.client.ClientProtocolException;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.util.EntityUtils;
import org.json.JSONArray;
import org.json.JSONObject;

public class APICaller {
	
	public Map<String, Representative> getAllReps() {
		
		LocalDate currentDate = LocalDate.now();
		
		int congressNumber = getCurrentCongress(currentDate);
		
		Map<String, Representative> congress = new HashMap<String, Representative>();
		
		JSONArray house = getChamberMembers(congressNumber, "house");
		
		Map<String, Representative> houseReps = mapArrayToRepresentatives(house, "House");
		
		JSONArray senate = getChamberMembers(congressNumber, "senate") ;
		Map<String, Representative> senateReps = mapArrayToRepresentatives(senate, "Senate");
		
		congress.putAll(houseReps);
		congress.putAll(senateReps);
		
		return congress;
	}
	
	/*
	 *  A new Congress starts on January 3 of odd years at noon.  For simplicity, this method
	 *  returns a new number on January 4 (the first full day of the new Congress)
	 */
	
	public int getCurrentCongress(LocalDate current) {
		
		int currentCongress = 115;
		
		int year = current.getYear();
		
		int addCongress = (year - 2017) / 2;
		int offYear = (year - 2017) % 2;
		
		if (offYear == 0 && current.getMonthValue() == 1 && current.getDayOfMonth() < 4) {
			addCongress--;
		}
		
		return currentCongress + addCongress;
	}
	
	private JSONArray getChamberMembers(int congress, String chamber) {
		
		JSONArray members = null;
		
		try {

			DefaultHttpClient httpClient = new DefaultHttpClient();
			HttpGet getRequest = new HttpGet(
				"https://api.propublica.org/congress/v1/" + congress + "/" + chamber + "/members.json");
			getRequest.addHeader("X-API-Key", "JvQRd8iQCrIkm6F7kZVZ9O6ycxFfQD6dZajkylIJ");
			
			HttpResponse response = httpClient.execute(getRequest);

			if (response.getStatusLine().getStatusCode() != 200) {
				throw new RuntimeException("Failed : HTTP error code : "
				   + response.getStatusLine().getStatusCode());
			}

			String entityString = EntityUtils.toString(response.getEntity());
			
			JSONObject json = new JSONObject(entityString);
			
			JSONArray results = json.getJSONArray("results");
			
			members = results.getJSONObject(0).getJSONArray("members");
			
			httpClient.getConnectionManager().shutdown();

		} catch (ClientProtocolException e) {
	
			e.printStackTrace();

		} catch (IOException e) {
	
			e.printStackTrace();
		}
		return members;
	}
	
	
	private Map<String, Representative> mapArrayToRepresentatives (JSONArray members, String chamber) {
		
		Map<String, Representative> reps = new HashMap<String, Representative>();
		
		for (int i = 0; i < members.length(); i++) {
			Representative rep = new Representative();
			
			JSONObject repData = members.getJSONObject(i);
			
			String firstName = nullTest(repData, "first_name");
			rep.setFirstName(firstName);
			String lastName = nullTest(repData, "last_name");
			rep.setLastName(lastName);
			String party = nullTest(repData, "party");
			rep.setParty(party);
			String id = nullTest(repData, "id");
			rep.setId(id);
			String state = nullTest(repData, "state");
			rep.setState(state);
			String url = nullTest(repData, "url");
			rep.setUrl(url);
			String DCStreet1 = nullTest(repData, "office");
			rep.setDCStreet1(DCStreet1);
			String DCPhone = nullTest(repData, "phone");
			rep.setDCPhone(DCPhone);
			String contact = nullTest(repData, "contact_form");
			rep.setContact(contact);
			
			rep.setChamber(chamber);
			
			if (chamber.equals("House")) {
				String district = nullTest(repData, "district");
				rep.setDistrict(district);
			}
			
			String title = nullTest(repData, "title");
			boolean inOffice = repData.getBoolean("in_office");
			if (inOffice && !(title.equals("Delegate")) && !(title.equals("Resident Commissioner")) ) {
				reps.put(id, rep);
			}
		}
		
		return reps;
	}

	private String nullTest(JSONObject repData, String key) {
		
		if (repData.isNull(key)) {
			return null;
		}
		
		return repData.getString(key);
	}
	
}

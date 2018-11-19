package com.techelevator.npgeek;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.techelevator.npgeek.model.Park;
import com.techelevator.npgeek.model.ParkDAO;
import com.techelevator.npgeek.model.Survey;
import com.techelevator.npgeek.model.SurveyDAO;
import com.techelevator.npgeek.model.Weather;
import com.techelevator.npgeek.model.WeatherDAO;

@Controller
@SessionAttributes("tempScale")
public class ParkController {
	
	public static final String[] states = {"Alabama", "Alaska", "Arizona", "Arkansas", "California", 
			"Colorado", "Connecticut", "Delaware", "District Of Columbia", "Florida", "Georgia", "Hawaii", 
			"Idaho", "Illinois", "Indiana", "Iowa", "Kansas", "Kentucky", "Louisiana", "Maine", "Maryland", 
			"Massachusetts", "Michigan", "Minnesota", "Mississippi", "Missouri", "Montana", "Nebraska", 
			"Nevada", "New Hampshire", "New Jersey", "New Mexico", "New York", "North Carolina", 
			"North Dakota", "Ohio", "Oklahoma", "Oregon", "Pennsylvania", "Rhode Island", "South Carolina", 
			"South Dakota", "Tennessee", "Texas", "Utah", "Vermont", "Virginia", "Washington", "West Virginia", 
			"Wisconsin", "Wyoming"};
	
	@Autowired
	private ParkDAO parkDAO;
	
	@Autowired
	private WeatherDAO weatherDAO;
	
	@Autowired
	private SurveyDAO surveyDAO;

	@RequestMapping(path = "/", method = RequestMethod.GET) 
	public String showHomePage(ModelMap map){
		
		List<Park> allParks = parkDAO.getAllParks();
		
		map.addAttribute("allParks", allParks);
		
		return "homepage";
	}
	
	@RequestMapping(path = "/detail", method = RequestMethod.GET)
	public String showParkDetail(@RequestParam (required = false) String parkCode, 
			@RequestParam (required = false) String scale, ModelMap map) {
		
		if (parkCode == null) {
			return "redirect:/";
		}
		
		Park park = parkDAO.getParkByParkCode(parkCode);
		
		if (park == null) {
			return "redirect:/";
		}
		
		map.addAttribute("park", park);
		
		if ((! map.containsAttribute("tempScale")) && scale == null ) {
			map.addAttribute("tempScale", "F");
		} else if (scale != null) {
			map.addAttribute("tempScale", scale);
		}
		
		if ( ((String) map.get("tempScale")).equals("F") ) {
			map.addAttribute("otherScale", "C");
			map.addAttribute("otherScaleName", "Celsius");
		} else {
			map.addAttribute("otherScale", "F");
			map.addAttribute("otherScaleName", "Fahrenheit");
		}

		List<Weather> fiveDayWeather = weatherDAO.getParkForecast(parkCode, (String) map.get("tempScale"));
		
		map.addAttribute("fiveDayWeather", fiveDayWeather);
		
		return "detail";
	}
	
	@RequestMapping (path = "/surveyForm", method = RequestMethod.GET) 
	public String showSurveyForm(ModelMap map, Model model) {
		
		if(! model.containsAttribute("survey")) {
			model.addAttribute("survey", new Survey());
		}
		
		
		List<Park> allParks = parkDAO.getAllParks();
		map.addAttribute("allParks", allParks);
		map.addAttribute("states", states);
		
		return "surveyForm";
	}
	
	@RequestMapping (path = "/surveyForm", method = RequestMethod.POST) 
	public String submitSurveyForm(@Valid @ModelAttribute("survey") Survey survey, BindingResult result, ModelMap map) {
		
		List<Park> allParks = parkDAO.getAllParks();
		map.addAttribute("allParks", allParks);
		map.addAttribute("states", states);
		
		if(result.hasErrors()) {
			return "surveyForm"; 
		}
		
		surveyDAO.submitSurvey(survey);
		
		return "redirect:/surveyResults";
	}
	
	@RequestMapping (path = "/surveyResults", method = RequestMethod.GET) 
	public String showSurveyResults(ModelMap map) {
		List<Park> surveyRankings = surveyDAO.getSurveyResults();
		map.addAttribute("rankings", surveyRankings);
		
		return "surveyResults";
	}
	
	
}

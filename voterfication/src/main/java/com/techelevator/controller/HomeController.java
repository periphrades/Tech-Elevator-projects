package com.techelevator.controller;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.techelevator.model.QuestionDAO;
import com.techelevator.model.Representative;
import com.techelevator.model.RepresentativeDAO;
import com.techelevator.model.StateDAO;
import com.techelevator.model.TownhallDAO;
import com.techelevator.model.User;

@Controller
public class HomeController {
	private RepresentativeDAO repDAO;
	private StateDAO stateDAO;
	private TownhallDAO townhallDAO;

	@Autowired
	public HomeController(RepresentativeDAO repDAO, StateDAO stateDAO, TownhallDAO townhallDAO) {
		this.repDAO = repDAO;
		this.stateDAO = stateDAO;
		this.townhallDAO = townhallDAO;
	}
	
	@RequestMapping (path = "/", method = RequestMethod.GET)
	public String routeHomePage(HttpServletRequest request, ModelMap map) {
		
		map.addAttribute("states", stateDAO.getAllStates());
		
		return "home";
	}
	
	@RequestMapping (path = "/states/{state}", method = RequestMethod.GET)
	public String showStatePage(@PathVariable String state, ModelMap map) {
		
		String stateName = stateDAO.getStateNameById(state);
		
		List<Representative> allReps = repDAO.getAllRepresentativesByState(state);
		
		List<Representative> senators = new ArrayList<Representative>();
		List<Representative> reps = new ArrayList<Representative>();
		
		for (Representative rep : allReps) {
			
			if (rep.getChamber().equals("Senate")) {
				senators.add(rep);
			} else {
				reps.add(rep);
			}
		}
		
		Collections.sort(reps);
		
		map.addAttribute("state", state);
		map.addAttribute("stateName", stateName);
		map.addAttribute("reps", reps);
		map.addAttribute("senators", senators);
		map.addAttribute("townhalls", townhallDAO.getAllTownhallsByState(state));
		
		return "state";
	}
	
	@RequestMapping (path = "/home", method = RequestMethod.GET)
	public String showHomePage() {
		
	
		
		
		return "home";
	}
	
	@RequestMapping (path = "/about", method = RequestMethod.GET)
	public String showAboutPage() {
		
	
		
		
		return "about";
	}
	

}

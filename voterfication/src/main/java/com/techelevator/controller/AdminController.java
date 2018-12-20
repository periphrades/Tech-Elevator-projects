package com.techelevator.controller;

import java.time.LocalDate;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.techelevator.model.APICaller;
import com.techelevator.model.Representative;
import com.techelevator.model.RepresentativeDAO;
import com.techelevator.model.StateDAO;
import com.techelevator.model.TownhallDAO;
import com.techelevator.model.User;

@Controller
public class AdminController {

	private RepresentativeDAO repDAO;
	private TownhallDAO hallDAO;
	private StateDAO stateDAO;
	private TownhallDAO townhallDAO;
	
	private APICaller caller;
	
	@Autowired
	public AdminController(RepresentativeDAO repDAO, TownhallDAO hallDAO, StateDAO stateDAO, TownhallDAO townhallDAO) {
		this.repDAO = repDAO;
		this.hallDAO = hallDAO;
		this.stateDAO = stateDAO;
		this.townhallDAO = townhallDAO;
		this.caller = new APICaller();
	}
	
	
	@RequestMapping (path = "/adminPage", method = RequestMethod.GET)
	public String modifyDatabasePage(HttpServletRequest request, ModelMap map) {
		
		User sessionUser = (User) request.getSession().getAttribute("currentUser");
		
		if (sessionUser == null || !(sessionUser.getRole().equals("admin")) ) {
			return "redirect:/";
		}
		
		LocalDate currentDate = LocalDate.now();
		
		int congressNumber = caller.getCurrentCongress(currentDate);
		
		String congressString = getCongressOrdinal(congressNumber);

		map.addAttribute("congressNum", congressString);
		
		return "admin";
	}
	
	
	@RequestMapping (path = "/adminEdit", method = RequestMethod.GET)
	public String adminEditRepsByState(HttpServletRequest request, ModelMap map, Model model, @RequestParam String stateId) {
		
		User sessionUser = (User) request.getSession().getAttribute("currentUser");
		
		if (sessionUser == null || !(sessionUser.getRole().equals("admin")) ) {
			return "redirect:/";
		}
		
		if(! model.containsAttribute("representative")) {
			model.addAttribute("representative", new Representative());
		}
		
		String stateName = stateDAO.getStateNameById(stateId);
		
		List<Representative> allReps = repDAO.getAllRepresentativesByState(stateId);
		
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
		
		map.addAttribute("stateId", stateId);
		map.addAttribute("stateName", stateName);
		map.addAttribute("reps", reps);
		map.addAttribute("senators", senators);
		map.addAttribute("townhalls", townhallDAO.getAllTownhallsByState(stateId));
		
		return "adminEdit";
	}
	
	
	@RequestMapping (path = "/updateMoC", method = RequestMethod.POST)
	public String updateMemberOfCongress(HttpServletRequest request, @RequestParam String user, @ModelAttribute("representative") Representative rep, 
			BindingResult result, RedirectAttributes attr) {
		
		User sessionUser = (User) request.getSession().getAttribute("currentUser");
		
		if (sessionUser == null || !(sessionUser.getRole().equals("admin")) || !(sessionUser.getUserName().equals(user)) ) {
			return "redirect:/";
		}
		
		String stateId = rep.getState();
		
		if(result.hasErrors()) {
			attr.addFlashAttribute("message", "Update error");
			return "redirect:/adminEdit?stateId=" + stateId; 
		}
		
		repDAO.updateRepresentative(rep);
		
		attr.addFlashAttribute("message", "Member of Congress information has been updated in database");

		return "redirect:/states/" + stateId;
	}
	
	
	@RequestMapping (path = "/loadReps", method = RequestMethod.POST)
	public String loadAllRepsFromAPI(HttpServletRequest request, @RequestParam String user, RedirectAttributes attr) {
		
		User sessionUser = (User) request.getSession().getAttribute("currentUser");
		
		if (sessionUser == null || !(sessionUser.getRole().equals("admin")) || !(sessionUser.getUserName().equals(user)) ) {
			return "redirect:/";
		}
		
		Map<String, Representative> congress = caller.getAllReps();
		
		repDAO.loadRepsToDatabase(congress);
		
		hallDAO.populateTownhallTable();
		
		attr.addFlashAttribute("message", "Current congress & Townhalls have been loaded to the database");
		
		return "redirect:/adminPage";
	}
	
	
//	@RequestMapping (path = "/loadTownhalls", method = RequestMethod.POST)
//	public String loadAllTownhalls(HttpServletRequest request, @RequestParam String user, RedirectAttributes attr) {
//		
//		User sessionUser = (User) request.getSession().getAttribute("currentUser");
//		
//		if (sessionUser == null || !(sessionUser.getRole().equals("admin")) || !(sessionUser.getUserName().equals(user)) ) {
//			return "redirect:/";
//		}
//		
//		hallDAO.populateTownhallTable();
//		
//		attr.addFlashAttribute("message", "Townhalls have been loaded to the database");
//		
//		return "redirect:/adminPage";
//	}
	
	private String getCongressOrdinal(int congressNum) {
		
		int lastNum = congressNum % 10;
		int lastTwo = congressNum % 100;
		
		String congressString = congressNum + "th";
		
		if (lastTwo < 11 || lastTwo > 13) {
			
			switch(lastNum) {
				case 1:
					congressString = congressNum + "st";
					break;
				case 2:
					congressString = congressNum + "nd";
					break;
				case 3:
					congressString = congressNum + "rd";
					break;
			}
		}
		
		return congressString;
	}
	
}

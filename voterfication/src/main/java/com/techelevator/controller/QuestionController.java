package com.techelevator.controller;

import java.time.LocalDate;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.techelevator.model.Question;
import com.techelevator.model.QuestionDAO;
import com.techelevator.model.Representative;
import com.techelevator.model.RepresentativeDAO;
import com.techelevator.model.Townhall;
import com.techelevator.model.TownhallDAO;
import com.techelevator.model.User;
import com.techelevator.model.UserDAO;

@Controller
public class QuestionController {
	
	public static final String[] states = {"Alabama", "Alaska", "Arizona", "Arkansas", "California", 
			"Colorado", "Connecticut", "Delaware", "District Of Columbia", "Florida", "Georgia", "Hawaii", 
			"Idaho", "Illinois", "Indiana", "Iowa", "Kansas", "Kentucky", "Louisiana", "Maine", "Maryland", 
			"Massachusetts", "Michigan", "Minnesota", "Mississippi", "Missouri", "Montana", "Nebraska", 
			"Nevada", "New Hampshire", "New Jersey", "New Mexico", "New York", "North Carolina", 
			"North Dakota", "Ohio", "Oklahoma", "Oregon", "Pennsylvania", "Rhode Island", "South Carolina", 
			"South Dakota", "Tennessee", "Texas", "Utah", "Vermont", "Virginia", "Washington", "West Virginia", 
			"Wisconsin", "Wyoming"};

	private QuestionDAO questionDAO;
	private RepresentativeDAO repDAO;
	private UserDAO userDAO;
	private TownhallDAO townhallDAO;
	
	@Autowired
	public QuestionController(QuestionDAO questionDAO, RepresentativeDAO repDAO, UserDAO userDAO, TownhallDAO townhallDAO) {
		this.questionDAO = questionDAO;
		this.repDAO = repDAO;
		this.userDAO = userDAO;
		this.townhallDAO = townhallDAO;
	}
	
	
	
	@RequestMapping (path = "/question", method = RequestMethod.GET) 
	public String showQuestionForm(@RequestParam String repId, ModelMap map){
		
		Representative rep = repDAO.getRepresentativeById(repId);
		
		map.addAttribute("rep", rep);
		
		return "question";
	}
	
	
	@RequestMapping (path = "/questionSubmit", method = RequestMethod.POST)
	public String postNewQuestion(@RequestParam int userId, @RequestParam String repId,
			@RequestParam(required = false) int townhallId, @RequestParam(required = false) String message) {
		
		Question question = new Question();
		
		question.setUserId(userId);
		if (!repId.isEmpty()) {
		question.setRepId(repId);
		}
		if (townhallId != 0) {
			question.setTownhallId(townhallId);
		}
		question.setMessage(message);
		
		questionDAO.saveNewQuestion(question);
		
		
		
		return "redirect:/allQuestions";
	}
	
	@RequestMapping(path="/users/{userName}/questions", method=RequestMethod.GET)
	public String messageSearch(Map<String, Object> model, 
								@PathVariable String userName) {
		User currentUser = (User) userDAO.getUserByUserName(userName);
		List<Question> questions = questionDAO.getQuestionByUserId(currentUser.getUserId());
		if (questions.size() == 0) {
			return "home";
			
		}
		List<Representative> reps = new ArrayList<>();
		List<Townhall> townhalls = new ArrayList<>();
		List<User> users = new ArrayList<>();
		for (Question question: questions) {
			Townhall hall = townhallDAO.getTownhallById(question.getTownhallId());
			townhalls.add(hall);
			Representative rep = repDAO.getRepresentativeById(question.getRepId());
			reps.add(rep);
			User user = (User) userDAO.getUserById(question.getUserId());
			users.add(user);
			}
			model.put("questions", questions);
			model.put("reps", reps);
			model.put("townhall", townhalls);
			model.put("users", users);
		return "sentQuestions";
}
	
	@RequestMapping (path = "/allQuestions", method = RequestMethod.GET)
	public String ShowAllQuestions(Map<String, Object> model) {
		
		List<Question> questions = questionDAO.getAllQuestions();
		if (questions.size() == 0) {
			return "home";
		}
		List<Representative> reps = new ArrayList<>();
		List<Townhall> townhalls = new ArrayList<>();
		List<User> users = new ArrayList<>();
		for (Question question: questions) {
//			if (question.getTownhallId() != 0) {
//				Townhall hall = townhallDAO.getTownhallById(question.getTownhallId());
//				townhalls.add(hall);
//			}
//			if (question.getRepId() != null) {
//			Representative rep = repDAO.getRepresentativeById(question.getRepId());
//			reps.add(rep);
//			}
		Townhall hall = townhallDAO.getTownhallById(question.getTownhallId());
		townhalls.add(hall);
		Representative rep = repDAO.getRepresentativeById(question.getRepId());
		reps.add(rep);
		User user = (User) userDAO.getUserById(question.getUserId());
		users.add(user);
		}
		model.put("questions", questions);
		model.put("reps", reps);
		model.put("townhall", townhalls);
		model.put("users", users);
		
		return "allQuestions";
	}
	
	@RequestMapping (path = "modifyQuestion", method = RequestMethod.POST)
	public String ModifyQuestion(@RequestParam String userName,
			@RequestParam int id,
			@RequestParam int questionAuthor,
			@RequestParam String modifiedQuestion,
			@RequestParam String currentMessage,
			Map<String, Object> model) {
		Question questionCheck = questionDAO.getQuestionById(id);
		User userCheck = (User) userDAO.getUserById(questionAuthor);
		User adminCheck = (User) userDAO.getUserByUserName(userName);
		if (((userName.equals(userCheck.getUserName()) && questionCheck.getUserId() == userCheck.getUserId()) || adminCheck.getRole().equals("admin")) && questionCheck.getMessage().equals(currentMessage)) {
		if (modifiedQuestion.equals("")) {
			questionDAO.deleteQuestion(id);
		}
		else {
			questionDAO.updateQuestion(modifiedQuestion, id);
		}}
		
		return "redirect:/allQuestions";
	}
	@RequestMapping (path = "/selectRep", method = RequestMethod.GET)
	public String showSelectRepPage(ModelMap map) {
		
		map.addAttribute("allReps", repDAO.getAllRepresentatives());
		
		map.addAttribute("states", states);
		
		return "selectRep";
	}
	
	
}

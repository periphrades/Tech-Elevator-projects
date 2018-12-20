package com.techelevator.controller;

import javax.servlet.http.HttpServletRequest;
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
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.techelevator.model.User;
import com.techelevator.model.UserDAO;

@Controller
public class UserController {

	private UserDAO userDAO;

	@Autowired
	public UserController(UserDAO userDAO) {
		this.userDAO = userDAO;
	}

	@RequestMapping(path="/users/new", method=RequestMethod.GET)
	public String displayNewUserForm(ModelMap modelHolder) {
		if( ! modelHolder.containsAttribute("user")) {
			modelHolder.addAttribute("user", new User());
		}
		return "newUser";
	}
	
	@RequestMapping(path="/users", method=RequestMethod.POST)
	public String createUser(@Valid @ModelAttribute User user, BindingResult result, RedirectAttributes flash) {
		if(result.hasErrors()) {
			flash.addFlashAttribute("user", user);
			flash.addFlashAttribute(BindingResult.MODEL_KEY_PREFIX + "user", result);
			return "redirect:/users/new";
		}
		
		String message = "Welcome <strong>" + user.getUserName() + "</strong>, please log in.";
		
		flash.addFlashAttribute("message", message);
		userDAO.saveUser(user.getUserName(), user.getPassword());
		return "redirect:/login";
	}
	
	
//	@RequestMapping(path= "/changePassword", method=RequestMethod.GET)
//	public String displayChangePasswordForm(HttpServletRequest request, Model model, ModelMap map) {
//
//		if(! model.containsAttribute("user")) {
//			model.addAttribute("user", new User());
//		}
//		
//		User sessionUser = (User) request.getSession().getAttribute("currentUser");
//		
//		if (sessionUser == null) {
//			return "redirect:/";
//		}
//		
//		return "changePassword";
//	}
//	
//	@RequestMapping(path= "/changePassword", method=RequestMethod.POST)
//	public String setNewPassword (@Valid @ModelAttribute User user, @RequestParam String currentPswd, BindingResult result, RedirectAttributes flash) {
//		
//		if(result.hasErrors()) {
//			flash.addFlashAttribute("user", user);
//			flash.addFlashAttribute(BindingResult.MODEL_KEY_PREFIX + "user", result);
//			flash.addFlashAttribute("message", "Update error");
//			return "redirect:/changePassword"; 
//		}
//		
//		
//		String message = "Your password has been changed.</p><p>Please re-login.";
//		
//		flash.addFlashAttribute("message", message);
//		return "redirect:/login";
//	}
	
	
}

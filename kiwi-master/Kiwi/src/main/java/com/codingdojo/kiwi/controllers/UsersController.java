package com.codingdojo.kiwi.controllers;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.codingdojo.kiwi.models.User;
import com.codingdojo.kiwi.services.UserService;
import com.codingdojo.kiwi.validator.UserValidator;

@Controller
public class UsersController {
	private final UserService userService;
	private final UserValidator userValidator;
	
	public UsersController(UserService userService, UserValidator userValidator) {
        this.userService = userService;
        this.userValidator = userValidator;
	}

	
	// Welcome Page 
	@RequestMapping("/")
    public String index(HttpSession session) {
		return "welcome.jsp";
	}
	
	// Login Page
	@RequestMapping("/login")
    public String welcome(@ModelAttribute("user") User user) {
        return "login.jsp";
    }
	
	@RequestMapping(value="/login", method=RequestMethod.POST)
    public String loginUser(@RequestParam("email") String email, @RequestParam("password") String password, Model model, HttpSession session) {
    	boolean isAuthenticated = userService.authenticateUser(email, password);
    	if(isAuthenticated) {
    		User u = userService.findByEmail(email);
    		session.setAttribute("userId", u.getId());
    		return "redirect:/dashboard";
    	} else {
    		model.addAttribute("error", "Invalid Credentials. Please try again.");
    		return "welcome.jsp";
    		}
    }
	
	// Sign Up Page
	@RequestMapping("/signup")
    public String signup(@ModelAttribute("user") User user) {
        return "signup.jsp";
    }
	
	@RequestMapping(value="/signup", method=RequestMethod.POST)
    public String registerUser(@Valid @ModelAttribute("user") User user, BindingResult result, 	HttpSession session) {
    	userValidator.validate(user, result);
        if(result.hasErrors()) {
    		return "signup.jsp";
    	}
    	User u = userService.registerUser(user);
    	session.setAttribute("userId",  u.getId());
    	return "redirect:/dashboard";
    }
	
	// Dashboard
	@RequestMapping("/dashboard")
	public String dashboard(HttpSession session) {
		return "dashboard.jsp";
	}
	
	// Logout
	@RequestMapping("/logout")
    public String logout(HttpSession session) {
    	session.invalidate();
    	return "redirect:/";
    }
}

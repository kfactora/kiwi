package com.codingdojo.kiwi.controllers;

import java.util.List;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.codingdojo.kiwi.models.Account;
import com.codingdojo.kiwi.models.Deposit;
import com.codingdojo.kiwi.models.User;
import com.codingdojo.kiwi.services.DepositService;
import com.codingdojo.kiwi.services.UserService;
import com.codingdojo.kiwi.validator.UserValidator;



@Controller
public class UsersController {
	private final UserService userService;
	private final DepositService depositService;
	private final UserValidator userValidator;
	
	public UsersController(UserService userService, UserValidator userValidator, DepositService depositService) {
        this.userService = userService;
        this.userValidator = userValidator;
        this.depositService = depositService;
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
    public String home(HttpSession session, Model model, @ModelAttribute ("user")User user) {
    	Long userId = (Long) session.getAttribute("userId");
    	User u = userService.findUserById(userId);
    	model.addAttribute("user", u);
    	List<User> all = userService.all();
		
		return "dashboard.jsp";
	}
	// View Deposit Page
	@RequestMapping("/viewDeposit")
	public String viewDeposit(@Valid @ModelAttribute("deposit") Deposit deposit, Model model, BindingResult result) {
		model.addAttribute("deposit", deposit);
		return "deposit.jsp";
	}
	
	// Add Deposit 
	@RequestMapping(value="/addDeposit", method=RequestMethod.POST)
	public String addDeposit(@Valid @ModelAttribute("deposit") Deposit deposit,  Model model, BindingResult result) {
		depositService.newDeposit(deposit);
		return "redirect:/dashboard";
	}
	
    // View Edit Deposit Page
    @RequestMapping(value="/viewdepositpage/{id}")
    public String viewEditIdea(@Valid @ModelAttribute("deposit") Deposit deposit, BindingResult result, @PathVariable("id") long id, Model model) {
    	model.addAttribute("deposit", depositService.findDepositById(id));
    	return "editDeposit.jsp";
    }
    
    // Update Deposit
    @RequestMapping(value="/deposit/edit/{id}", method=RequestMethod.POST)
    public String updateDeposit(@Valid @ModelAttribute("deposit") Deposit deposit, BindingResult result, Model model, 
    		@PathVariable("id") Long id, 
    		@RequestParam(value="description") String description,
    		@RequestParam(value="amount") double amount
    		) {
    	if(result.hasErrors()) {
    		return "editDeposit.jsp";
    	}
    	else {
    		depositService.updateDeposit(id, description, amount);
    		return "redirect:/dashboard";	
    	}
    }
	
    // Delete Deposit
    @RequestMapping("/deposit/delete/{id}")
	public String deleteEvent(@PathVariable("id") Long id) {
		depositService.deleteDeposit(id);
		return "redirect:/dashboard";
	}
	
	// View Account Page
	@RequestMapping("/viewAccount/{id}")
	public String viewAccount(@Valid @ModelAttribute("account") Account account, @PathVariable("id") Long id, Model model, BindingResult result) {
		model.addAttribute("account", account);
		User u = userService.findUserById(id);
		model.addAttribute("user", u);
		List<Deposit> deposits = depositService.getAll();
		model.addAttribute("AllDeposits", deposits);
		return "account.jsp";
	}
	
	
	// View User Settings
	@RequestMapping("/usersettings/{id}")
    public String editUser(@Valid @ModelAttribute("user") User user, @PathVariable("id") Long id, Model model, BindingResult result) {
        System.out.println("****HERE****");
        User user1 = userService.findUserById(id);
        if (user1 != null) {
            model.addAttribute("user", user1);
            return "usersettings.jsp";
        
        } else {
            System.out.println(id);
            return "redirect:/dashboard";
        }
    }
    
	// Update User Settings
    @RequestMapping(value="/usersettings/{id}", method=RequestMethod.POST)
    public String updateUser(@PathVariable("id") Long id, @Valid @ModelAttribute("user") User user, BindingResult result, 
    		@RequestParam(value="firstName") String firstName,
    		@RequestParam(value="lastName") String lastName,
    		@RequestParam(value="email") String email)
    		{
        if (result.hasErrors()) {
            return "redirect:/dashboard";
        }
        else {
            userService.updateUser(id, firstName, lastName, email);
            return "redirect:/dashboard";
        }
    }
	
	
	// Logout
	@RequestMapping("/logout")
    public String logout(HttpSession session) {
    	session.invalidate();
    	return "redirect:/";
    }
}

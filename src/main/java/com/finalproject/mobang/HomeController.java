package com.finalproject.mobang;

import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);

	@RequestMapping(value = "/")
	public String home(Locale locale, Model model) {
		logger.info("home");

		
		return "user/user_home";
	}
	
	@RequestMapping(value = "/login.all")
	public String login(Locale locale, Model model) {
		logger.info("home");

		
		return "login/login";
	}
	
	@RequestMapping(value = "/usersignup.all")
	public String usersignup(Locale locale, Model model) {
		logger.info("home");

		
		return "login/user_signup";
	}
	
	@RequestMapping(value = "/agentsignup.all")
	public String agentsignup(Locale locale, Model model) {
		logger.info("home");

		
		return "login/agent_signup";
	}
	
	
	@RequestMapping(value = "home.user")
	public String mainhome(Locale locale, Model model) {
		logger.info("home");

		
		return "user/user_home";
	}
	@RequestMapping(value="index.all")
	public String index() {
		return "index";
	}
	
	
	

	@RequestMapping(value="/roommate_recommand.user")
	public String roommaterecommand(Model model) {
		
		return "/user/roommate_recommand";
	}
	
	@RequestMapping(value="/favorite_recent.user")
	public String favoriterencent(Model model) {
		
		return "user/favorite_recent";
	}
	@RequestMapping(value="/favorite_dibs.user")
	public String favoritedibs(Model model) {
		
		return "/user/favorite_dibs";
	}
	
	@RequestMapping(value="/room_search.user")
	public String roomsearch(Model model) {
		
		return "user/room_search";
	}
	
	
}

package com.finalproject.mobang;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

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
	
	@RequestMapping(value = "home.user")
	public String mainhome(Locale locale, Model model) {
		logger.info("home");

		
		return "user/user_home";
	}
	// 猷몃찓�씠�듃 異붿쿇�빐二쇰뒗 �럹�씠吏� - 諛⑹뿉 �뱾�뼱媛��꽌 �굹�� 鍮꾩듂�븳 �젙蹂대�� 媛�吏� �궗�엺�뱾�쓣 異붿쿇�빐二쇰뒗 寃껋씠湲� �븣臾몄뿉
	// �쉶�썝�젙蹂닿� �븘�슂�븿(user�젙蹂�) .user濡� 泥섎━
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

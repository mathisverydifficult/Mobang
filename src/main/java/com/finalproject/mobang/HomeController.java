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
	
<<<<<<< HEAD
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	
	// 처음 웹프로젝트 실행할 때 처음 이동하는 페이지 설정
	@RequestMapping(value="/")
	public String homepage(Model model) {
		return "index";
	}
	// 모두가 볼 수 있는 페이지(.all로 요청)
	@RequestMapping(value = "hello.all", method = RequestMethod.GET)
=======
	
	@RequestMapping(value = "/")
>>>>>>> b84f3b37ce12d60b0f48e598697854534e3a5731
	public String home(Locale locale, Model model) {
		logger.info("home");

		
		return "user/user_home";
	}
	
	@RequestMapping(value = "test.do")
	public String test(Locale locale, Model model) {
		logger.info("test");

		
		return "/tiles/template";
	}
	// 룸메이트 추천해주는 페이지 - 방에 들어가서 나와 비슷한 정보를 가진 사람들을 추천해주는 것이기 때문에
	// 회원정보가 필요함(user정보) .user로 처리
	@RequestMapping(value="/roommate_recommand.user")
	public String roommaterecommand(Model model) {
		
		return "/user/roommate_recommand";
	}
	
	@RequestMapping(value="/favorite_recent.user")
	public String favoriterencent(Model model) {
		
		return "/user/favorite_recent";
	}
	@RequestMapping(value="/favorite_dibs.user")
	public String favoritedibs(Model model) {
		
		return "/user/favorite_dibs";
	}
	
	
}

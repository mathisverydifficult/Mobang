package com.finalproject.mobang.agent.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.finalproject.mobang.admin.controller.AdminController;

@Controller
public class AgentController {
	private static final Logger logger = LoggerFactory.getLogger(AgentController.class);

	@RequestMapping(value="/agent_home.agent")
	public String adminUser(Model model) {
		return "/agent/agent_home";
	}
	
	@RequestMapping(value="/notice.agent")
	public String notice(Model model) {
		
		return "/agent/agent_notice";
	}
	
	@RequestMapping(value="/fnq.agent")
	public String fnq(Model model) {
		
		return "/agent/agent_fnq";
	}
	
	@RequestMapping(value="/roommanage.agent")
	public String roommanage(Model model) {
		
		return "/agent/agent_roommanage";
	}
}

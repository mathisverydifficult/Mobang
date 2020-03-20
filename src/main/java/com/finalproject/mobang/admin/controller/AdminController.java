package com.finalproject.mobang.admin.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.finalproject.mobang.admin.biz.AccountBoardBiz;
import com.finalproject.mobang.admin.biz.QnaBoardBiz;
import com.finalproject.mobang.admin.dto.QnaBoardDto;

@Controller
public class AdminController {

	private static final Logger logger = LoggerFactory.getLogger(AdminController.class);
	
	
	@Autowired
	private AccountBoardBiz accountbiz;
	@Autowired
	private QnaBoardBiz qnabiz;
	
	@RequestMapping(value="/admin_account.admin")
	public String adminUser(Model model) {
		logger.info("admin-account");
		model.addAttribute("list", accountbiz.selectList());
		return "/admin/admin_account";
	}
	
	// qna 게시판 리스트보기
	@RequestMapping(value="/admin_qna.admin")
	public String adminQna(Model model) {
		logger.info("admin-qna");
		model.addAttribute("list", qnabiz.selectList());
		return "/admin/admin_qna";
	}
	@RequestMapping(value="/admin_report.admin")
	public String adminReport(Model model) {
		logger.info("admin-report");
		return "/admin/admin_report";
	}
	
	// qna 상세글 보기
	@RequestMapping(value="/qna_selectone.admin")
	public String selectOne(Model model, int seqQ) {
		logger.info("qna - selectOne");
		
		QnaBoardDto dto = qnabiz.selectOne(seqQ);
		model.addAttribute("dto",dto);
		
		
		return "/admin/admin_qna_detail";
	}
	// qna 상세보기에서 글 삭제
	@RequestMapping(value="/qna_delete.admin")
	public String delete(int seqQ) {
		logger.info("qna - delete");
		int res = qnabiz.delete(seqQ);
		
		if(res>0) {
			return "redirect:admin_qna.admin";
		}
		return "qna_insertform.admin";
	}
	
	// 글쓰기 폼으로 이동
	@RequestMapping(value="/qna_insertform.admin")
	public String insertform() {
		logger.info("qna - insertform");
		
		return "/admin/admin_qna_insert";
	}
	// qna 글작성
	@RequestMapping(value="/qna_insert.admin")
	public String insert(QnaBoardDto dto) {
		logger.info("qna - inesrt");
		int res = qnabiz.insert(dto);
		if(res>0) {
			return "admin_qna.admin";
		}
		return "qna_insertform.admin";
	}
	
	
}

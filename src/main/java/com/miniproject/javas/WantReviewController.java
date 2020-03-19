package com.miniproject.javas;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.fasterxml.jackson.databind.ObjectMapper;

import dao.WantReviewDAOImpl;
import vo.WantReviewVO;

@Controller
public class WantReviewController{
	@Autowired
	WantReviewDAOImpl rdao;

	@ResponseBody
	@RequestMapping(value="/wantreview",produces="applicaiton/json; charset=UTF-8")
	public String wantreview(int post_id) throws Exception{
		return new ObjectMapper().writeValueAsString(rdao.listAll(post_id));
	}

	@ResponseBody
	@RequestMapping("/wantreview/insert")
	public String insert(WantReviewVO rvo) {
		if (rdao.insert(rvo)) return "success";
		else return "fail";
	}

	@ResponseBody
	@RequestMapping("/wantreview/delete")
	public String delete(WantReviewVO rvo) {
		if (rdao.delete(rvo)) return "success";
		else return "fail";
	}
}

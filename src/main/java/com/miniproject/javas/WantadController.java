package com.miniproject.javas;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import dao.WantReviewDAOImpl;
import dao.WantadDAOImpl;
import vo.JobadVO;
import vo.LoginVO;
import vo.PageVO;
import vo.WantReviewVO;
import vo.WantSearchVO;
import vo.WantadVO;

@Controller
public class WantadController {
	@Autowired
	WantadDAOImpl dao;

	@Autowired
	WantReviewDAOImpl rdao;
	
	@RequestMapping("/wantad") // search 愿��젴 �맂 寃껊룄 紐⑤몢 媛숈쓬
	public ModelAndView wantad2(WantadVO vo, 
			WantSearchVO svo, 
			@RequestParam(defaultValue = "1") int page) {

		ModelAndView mav = new ModelAndView();
		List<WantadVO> list = new ArrayList<>();

		PageVO pvo = dao.pagination(page, svo);
		list = dao.listAll(pvo, svo);

		mav.addObject("listAll", list);
		mav.addObject("pageVO", pvo);
		mav.addObject("searchVO", svo);

		mav.setViewName("wantad");
		return mav;
	}

	@RequestMapping("/wantadall")
	public ModelAndView wantad(WantadVO vo) {
		ModelAndView mav = new ModelAndView();
		List<WantadVO> list = new ArrayList<>();
		list = dao.listAll();
		mav.addObject("listAll", list);
		mav.setViewName("wantad");
		System.out.println("controller: " + list);
		return mav;
	}

	@RequestMapping("/wantadform")
	public String form(WantadVO vo) {

		return "wantadform";
	}

	@RequestMapping("/wantadinsert1")
	public ModelAndView insert(WantadVO vo) {
		// System.out.println(vo);
		dao.insert(vo);

		ModelAndView mav = new ModelAndView();
		mav.addObject("listAll", dao.listAll());
		mav.setViewName("wantad");
		return mav;
	}

	@RequestMapping("/wantadinsert")
	public ModelAndView insert2(WantadVO vo,
			@RequestParam(defaultValue = "1") int page) {
		ModelAndView mav = new ModelAndView();
		List<WantadVO> list = new ArrayList<>();
		PageVO pvo = dao.pagination(1);
		
		if(dao.insert(vo)) {
			list = dao.listAll(pvo);
			mav.addObject("listAll", list);
			mav.addObject("pageVO", pvo);
		}else {
			System.out.println("등록 실패");
		}
		mav.setViewName("redirect:wantad");
		
		System.out.println(pvo);
		System.out.println(list);
		return mav;
	}
	
	@RequestMapping("/wantadview")
	public ModelAndView read(int id) {
		ModelAndView mav = new ModelAndView();
		WantadVO vo = dao.listOne(id);
		mav.addObject("listOne", vo);
		System.out.println(vo);
		if (vo.getPost_review_count() > 0) {
			List<WantReviewVO> list = rdao.listAll(id);
			System.out.println(list);
			mav.addObject("listReviewAll", list);
		}
		mav.setViewName("wantadView");
		return mav;
	}
	
}

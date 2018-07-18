package com.kg.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class UserController {

	// 로그인 완료 클릭시 처리할 코드
	@RequestMapping("/loginimpl.kg")
	public ModelAndView login() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("main");
		mv.addObject("centerpage", "main");

		return mv;
	}

	// 로그아웃 완료 클릭시 처리할 코드
	@RequestMapping("/logoutimpl.kg")
	public ModelAndView logout() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("main");
		mv.addObject("centerpage", "main");

		return mv;
	}

	// 회원가입 완료 클릭시 처리할 코드
	@RequestMapping("/registerimpl.kg")
	public ModelAndView facilities() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("main");
		mv.addObject("centerpage", "main");

		return mv;
	}

	// 마이페이지 수정 완료 클릭시 처리할 코드
	@RequestMapping("/mypageimpl.kg")
	public ModelAndView facilitydetail() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("main");
		mv.addObject("centerpage", "mypage");

		return mv;
	}

	
}

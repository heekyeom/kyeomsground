package com.kg.controller;



import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.kg.service.UserService;

@Controller
public class UserController {

	@Resource(name="uservice")
	UserService service;
	
	// 로그인 완료 클릭시 처리할 코드
	@RequestMapping("/loginimpl.kg")
	public ModelAndView login() {
		//request에서 id, pw를 읽어옴.
		//db에 id에 해당하는 유저정보를 가져옴.
		
		
		//해당 유저정보의 pw와 입력한 pw를 비교.
		//같으면 session에 user 등록.
		
		
		//main으로 이동.
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

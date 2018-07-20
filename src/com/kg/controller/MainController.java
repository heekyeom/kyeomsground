package com.kg.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class MainController {

	// 최조로 홈페이지에 접속시 보여줄 화면.
	@RequestMapping("/main.kg")
	public String main() {
		return "main";
	}

	// 로그인클릭시 보여줄 화면.<-- 팝업으로 할 가능성 900%
	@RequestMapping("/login.kg")
	public ModelAndView login() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("main");
		mv.addObject("centerpage", "login");

		return mv;
	}

	// 로그아웃 클릭시 보여줄 화면.<-- 팝업으로 할 가능성 900%
	@RequestMapping("/logout.kg")
	public ModelAndView logout() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("main");
		mv.addObject("centerpage", "logout");

		return mv;
	}
	// 로그아웃 클릭시 보여줄 화면.<-- 팝업으로 할 가능성 900%
		@RequestMapping("/register.kg")
		public ModelAndView register() {
			ModelAndView mv = new ModelAndView();
			mv.setViewName("main");
			mv.addObject("centerpage", "regist");

			return mv;
		}

	// 카테고리 클릭시 보여줄 운동장 리스트
	@RequestMapping("/facility.kg")
	public ModelAndView facility() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("main");
		mv.addObject("centerpage", "facility");

		return mv;
	}

	// 운동장 예약 클릭시 보여줄 화면
	@RequestMapping("/reservation.kg")
	public ModelAndView reservation() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("main");
		mv.addObject("centerpage", "reservation");

		return mv;
	}

	// 결제 클릭시 보여줄 화면
	@RequestMapping("/payment.kg")
	public ModelAndView payment() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("main");
		mv.addObject("centerpage", "payment");

		return mv;
	}
	
}

package com.kg.controller;

import java.util.ArrayList;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.kg.service.CategoryService;
import com.kg.vo.Category;

@Controller
public class MainController {
	@Resource(name="cservice")
	CategoryService service;
	
	// 첫 화면
	@RequestMapping("/main.kg")
	public ModelAndView main() {
		ModelAndView mv=new ModelAndView();
		mv.setViewName("main");
		mv.addObject("centerpage", "home");
		ArrayList<Category> clist=null;
		try {
			clist=service.get();
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			mv.addObject("categorylist", clist);
		}
		
		return mv;
	}

	// 로그인화면
	@RequestMapping("/login.kg")
	public ModelAndView login() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("main");
		mv.addObject("centerpage", "login");

		return mv;
	}


	// 회원가입화면
	@RequestMapping("/register.kg")
	public ModelAndView register() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("main");
		mv.addObject("centerpage", "regist");

		return mv;
	}

	// 예약화면
	@RequestMapping("/reservation.kg")
	public ModelAndView reservation() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("main");
		mv.addObject("centerpage", "reservation");

		return mv;
	}

	// 결제화면
	@RequestMapping("/payment.kg")
	public ModelAndView payment() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("main");
		mv.addObject("centerpage", "payment");

		return mv;
	}

	// 관리자화면
	@RequestMapping("/manager.kg")
	public ModelAndView manager() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("manager/managermain");
		return mv;
	}
}

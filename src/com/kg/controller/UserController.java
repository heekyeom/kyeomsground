package com.kg.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class UserController {

	// �α��� �Ϸ� Ŭ���� ó���� �ڵ�
	@RequestMapping("/loginimpl.kg")
	public ModelAndView login() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("main");
		mv.addObject("centerpage", "main");

		return mv;
	}

	// �α׾ƿ� �Ϸ� Ŭ���� ó���� �ڵ�
	@RequestMapping("/logoutimpl.kg")
	public ModelAndView logout() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("main");
		mv.addObject("centerpage", "main");

		return mv;
	}

	// ȸ������ �Ϸ� Ŭ���� ó���� �ڵ�
	@RequestMapping("/registerimpl.kg")
	public ModelAndView facilities() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("main");
		mv.addObject("centerpage", "main");

		return mv;
	}

	// ���������� ���� �Ϸ� Ŭ���� ó���� �ڵ�
	@RequestMapping("/mypageimpl.kg")
	public ModelAndView facilitydetail() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("main");
		mv.addObject("centerpage", "mypage");

		return mv;
	}

	
}

package com.kg.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class MainController {

	// ������ Ȩ�������� ���ӽ� ������ ȭ��.
	@RequestMapping("/main.kg")
	public String main() {
		return "main";
	}

	// �α���Ŭ���� ������ ȭ��.<-- �˾����� �� ���ɼ� 900%
	@RequestMapping("/login.kg")
	public ModelAndView login() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("main");
		mv.addObject("centerpage", "login");

		return mv;
	}

	// �α׾ƿ� Ŭ���� ������ ȭ��.<-- �˾����� �� ���ɼ� 900%
	@RequestMapping("/logout.kg")
	public ModelAndView logout() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("main");
		mv.addObject("centerpage", "logout");

		return mv;
	}
	// �α׾ƿ� Ŭ���� ������ ȭ��.<-- �˾����� �� ���ɼ� 900%
		@RequestMapping("/register.kg")
		public ModelAndView register() {
			ModelAndView mv = new ModelAndView();
			mv.setViewName("main");
			mv.addObject("centerpage", "regist");

			return mv;
		}

	// ī�װ� Ŭ���� ������ ��� ����Ʈ
	@RequestMapping("/facility.kg")
	public ModelAndView facility() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("main");
		mv.addObject("centerpage", "facility");

		return mv;
	}

	// ��� ���� Ŭ���� ������ ȭ��
	@RequestMapping("/reservation.kg")
	public ModelAndView reservation() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("main");
		mv.addObject("centerpage", "reservation");

		return mv;
	}

	// ���� Ŭ���� ������ ȭ��
	@RequestMapping("/payment.kg")
	public ModelAndView payment() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("main");
		mv.addObject("centerpage", "payment");

		return mv;
	}
	
}

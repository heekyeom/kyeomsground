package com.kg.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;


/**
 * 
 * @author student
 * ��� ����ȭ�鿡������ �ؾ��� �ϵ�.
 */
public class ReservationController {
	
	// ��� Ķ���� ȭ�鿡�� ���� Ŭ����
	@RequestMapping("/mycalendarimpl.kg")
	public ModelAndView login() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("main");
		mv.addObject("centerpage", "main");

		return mv;
	}
}

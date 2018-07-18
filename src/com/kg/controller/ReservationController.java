package com.kg.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;


/**
 * 
 * @author student
 * 운동장 예약화면에서부터 해야할 일들.
 */
public class ReservationController {
	
	// 운동장 캘린더 화면에서 예약 클릭시
	@RequestMapping("/mycalendarimpl.kg")
	public ModelAndView login() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("main");
		mv.addObject("centerpage", "main");

		return mv;
	}
}

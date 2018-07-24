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
	
	// ������ Ȩ�������� ���ӽ� ������ ȭ��.
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

	// �α���Ŭ���� ������ ȭ��.<-- �˾����� �� ���ɼ� 900%
	@RequestMapping("/login.kg")
	public ModelAndView login() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("main");
		mv.addObject("centerpage", "login");

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

	// // ī�װ� Ŭ���� ������ ��� ����Ʈ
	// @RequestMapping("/facility.kg")
	// public ModelAndView facility() {
	// ModelAndView mv = new ModelAndView();
	// mv.setViewName("main");
	// mv.addObject("centerpage", "facility");
	//
	// return mv;
	// }

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

	// ������ ȭ������ �̵�
	@RequestMapping("/manager.kg")
	public ModelAndView manager() {
		System.out.println("main manager.kg call");
		ModelAndView mv = new ModelAndView();
		mv.setViewName("manager/managermain");
		return mv;
	}
}

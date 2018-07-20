package com.kg.controller;

import java.io.PrintWriter;
import java.util.ArrayList;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.kg.service.FacilityService;
import com.kg.service.ReservationService;
import com.kg.service.UserService;
import com.kg.vo.Facility;
import com.kg.vo.User;

@Controller
public class ManagerController {
	@Resource(name = "uservice")
	UserService service;

	@Resource(name="rservice")
	ReservationService rservice;
	
	@Resource(name="fservice")
	FacilityService fservicce;
	
	// �α��� �Ϸ� Ŭ���� ó���� �ڵ�
	@RequestMapping("/facilityaddimpl.kg")
	public void facilityaddimpl(HttpServletRequest request, HttpServletResponse response) {
		HttpSession session = request.getSession();
		response.setContentType("charset=euc-kr");
		PrintWriter out = null;

		String id = request.getParameter("id");
		String pwd = request.getParameter("pwd");

		System.out.println(id + " " + pwd);
		// db�� id�� �ش��ϴ� ���������� ������.
		User user = null;
		try {
			user = service.get(id);
			out = response.getWriter();
			System.out.println("[loginimpl]get user: " + user);
			// �ش� ���������� pw�� �Է��� pw�� ��.
			if (user != null && pwd.equals(user.getU_pwd())) {
				session.setAttribute("user", user);
				out.println("1");
			} else {
				out.println("0");
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		out.close();
	}
	@RequestMapping("/categoryaddimpl.kg")
	public void categoryaddimpl(HttpServletRequest request, HttpServletResponse response) {
		HttpSession session = request.getSession();
		response.setContentType("charset=euc-kr");
		PrintWriter out = null;

		String id = request.getParameter("id");
		String pwd = request.getParameter("pwd");

		System.out.println(id + " " + pwd);
		// db�� id�� �ش��ϴ� ���������� ������.
		User user = null;
		try {
			user = service.get(id);
			out = response.getWriter();
			System.out.println("[loginimpl]get user: " + user);
			// �ش� ���������� pw�� �Է��� pw�� ��.
			if (user != null && pwd.equals(user.getU_pwd())) {
				session.setAttribute("user", user);
				out.println("1");
			} else {
				out.println("0");
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		out.close();
	}

	// �α����� ���� ������ Ŭ���� ������ ȭ��
	@RequestMapping("/categorymanage.kg")
	public ModelAndView categorymanage() {
		ModelAndView mv = new ModelAndView();
		
		mv.setViewName("manager/managermain");
	
		mv.addObject("managercenterpage", "categorytables");
		return mv;
	}
	// �α����� ���̽����� Ŭ���� ������ ȭ��
	@RequestMapping("/facilitymanage.kg")
	public ModelAndView facilitymanage() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("manager/managermain");
		mv.addObject("managercenterpage", "facilitytables");
		
		ArrayList<Facility> list;
		try {
			list=fservicce.get();
			mv.addObject("facilitylist", list);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return mv;
	}

	// �α����� ���̽����� Ŭ���� ������ ȭ��
	@RequestMapping("/usermanage.kg")
	public ModelAndView usermanage() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("manager/managermain");
		mv.addObject("managercenterpage", "usertables");

		return mv;
	}
}

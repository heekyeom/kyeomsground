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
	
	// 로그인 완료 클릭시 처리할 코드
	@RequestMapping("/facilityaddimpl.kg")
	public void facilityaddimpl(HttpServletRequest request, HttpServletResponse response) {
		HttpSession session = request.getSession();
		response.setContentType("charset=euc-kr");
		PrintWriter out = null;

		String id = request.getParameter("id");
		String pwd = request.getParameter("pwd");

		System.out.println(id + " " + pwd);
		// db에 id에 해당하는 유저정보를 가져옴.
		User user = null;
		try {
			user = service.get(id);
			out = response.getWriter();
			System.out.println("[loginimpl]get user: " + user);
			// 해당 유저정보의 pw와 입력한 pw를 비교.
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
		// db에 id에 해당하는 유저정보를 가져옴.
		User user = null;
		try {
			user = service.get(id);
			out = response.getWriter();
			System.out.println("[loginimpl]get user: " + user);
			// 해당 유저정보의 pw와 입력한 pw를 비교.
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

	// 로그인후 마이 페이지 클릭시 보여줄 화면
	@RequestMapping("/categorymanage.kg")
	public ModelAndView categorymanage() {
		ModelAndView mv = new ModelAndView();
		
		mv.setViewName("manager/managermain");
	
		mv.addObject("managercenterpage", "categorytables");
		return mv;
	}
	// 로그인후 마이스케쥴 클릭시 보여줄 화면
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

	// 로그인후 마이스케쥴 클릭시 보여줄 화면
	@RequestMapping("/usermanage.kg")
	public ModelAndView usermanage() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("manager/managermain");
		mv.addObject("managercenterpage", "usertables");

		return mv;
	}
}

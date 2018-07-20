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

import com.kg.service.ReservationService;
import com.kg.service.UserService;
import com.kg.vo.Reservation;
import com.kg.vo.User;

@Controller
public class UserController {
	@Resource(name = "uservice")
	UserService service;

	@Resource(name="rservice")
	ReservationService rservice;
	
	// �α��� �Ϸ� Ŭ���� ó���� �ڵ�
	@RequestMapping("/loginimpl.kg")
	public void login(HttpServletRequest request, HttpServletResponse response) {
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

	// �α׾ƿ� �Ϸ� Ŭ���� ó���� �ڵ�
	@RequestMapping("/logoutimpl.kg")
	public ModelAndView logout(HttpServletRequest request) {
		ModelAndView mv = new ModelAndView();
		HttpSession session = request.getSession();
		mv.setViewName("main");

		session.invalidate();

		mv.addObject("centerpage", "home");
		return mv;
	}

	// ȸ������ �Ϸ� Ŭ���� ó���� �ڵ�
	@RequestMapping("/registerimpl.kg")
	public void registerimpl(User user, HttpServletResponse response) {
		response.setContentType("charset=euc-kr");
		PrintWriter out = null;
		System.out.println(user);

		try {
			out = response.getWriter();
			service.register(user);
			System.out.println("���� ����");
			out.println("1");

		} catch (Exception e) {
			System.out.println("���� ����");
			out.println("0");
		} finally {
			out.close();
		}
	}

	// ���������� ���� �Ϸ� Ŭ���� ó���� �ڵ�
	@RequestMapping("/modifyuserimpl.kg")
	public ModelAndView modifyuserimpl(User user) {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("main");

		try {
			service.modify(user);
		} catch (Exception e) {
			e.printStackTrace();
		}

		mv.addObject("centerpage", "mypage");
		return mv;
	}

	// ���������� ���� �Ϸ� Ŭ���� ó���� �ڵ�
	@RequestMapping("/userdeleteimpl.kg")
	public ModelAndView userdeleteimpl(HttpServletRequest request) {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("main");

		HttpSession session = request.getSession();
		User user = (User) session.getAttribute("user");
		try {
			service.remove(user.getU_id());
			session.invalidate();
		} catch (Exception e) {
			e.printStackTrace();
		}

		mv.addObject("centerpage", "main");
		return mv;
	}

	// �α����� ���� ������ Ŭ���� ������ ȭ��
	@RequestMapping("/mypage.kg")
	public ModelAndView mypage() {
		ModelAndView mv = new ModelAndView();
		
		mv.setViewName("main");
	
		
		mv.addObject("mypagecenterpage", "myschedule");
		mv.addObject("centerpage", "user/mypage");
		return mv;
	}

	// �α����� ���̽����� Ŭ���� ������ ȭ��
	@RequestMapping("/myschedule.kg")
	public ModelAndView myschedule() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("main");
		mv.addObject("centerpage", "myschedule");

		return mv;
	}
	
	//ajax
	@RequestMapping("/myscheduleimpl.kg")
	public void myscheduleimpl(HttpServletResponse response) {
	
		

	}
	
	@RequestMapping("/usergetall.kg")
	public void usergetall(HttpServletResponse response) {
		response.setContentType("charset=euc-kr");
		PrintWriter out = null;

		ArrayList<User> list=null;

		try {
			list = service.get();
			out=response.getWriter();
			out.println(list);
		} catch (Exception e) {
			e.printStackTrace();
		}

		out.close();
	}
}

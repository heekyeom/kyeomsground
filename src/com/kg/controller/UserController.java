package com.kg.controller;



import java.io.PrintWriter;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.kg.service.UserService;
import com.kg.vo.User;

@Controller
public class UserController {

	@Resource(name="uservice")
	UserService service;
	
	// 로그인 완료 클릭시 처리할 코드
	@RequestMapping("/loginimpl.kg")
	public void login(HttpServletRequest request, HttpServletResponse response) {
		HttpSession session=request.getSession();
		response.setContentType("charset=euc-kr");
		PrintWriter out=null;
		
		
		String id=request.getParameter("id");
		String pwd=request.getParameter("pwd");
		
		//db에 id에 해당하는 유저정보를 가져옴.
		User user=null;
		try {
			user=service.get(id);
			out=response.getWriter();
			
			//해당 유저정보의 pw와 입력한 pw를 비교.
			if(user==null && pwd.equals(user.getU_pwd())){
				session.setAttribute("user", user);
				out.println("1");
			}else {
				out.println("0");
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		out.close();
	}

	// 로그아웃 완료 클릭시 처리할 코드
	@RequestMapping("/logoutimpl.kg")
	public ModelAndView logout(HttpServletRequest request) {
		ModelAndView mv = new ModelAndView();
		HttpSession session=request.getSession();
		mv.setViewName("main");
		
		session.invalidate();
		
		mv.addObject("centerpage", "main");
		return mv;
	}

	// 회원가입 완료 클릭시 처리할 코드
	@RequestMapping("/registerimpl.kg")
	public void registerimpl(User user, HttpServletResponse response) {
		response.setContentType("charset=euc-kr");
		PrintWriter out=null;
		
		try {
			out=response.getWriter();
			service.register(user);
			out.println("1");
			
		} catch (Exception e) {
			out.println("0");
		} finally {
			out.close();
		}
	}

	// 마이페이지 수정 완료 클릭시 처리할 코드
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
	
	// 마이페이지 수정 완료 클릭시 처리할 코드
	@RequestMapping("/userdeleteimpl.kg")
	public ModelAndView userdeleteimpl(HttpServletRequest request) {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("main");
		
		HttpSession session=request.getSession();
		User user=(User) session.getAttribute("user");
		try {
			service.remove(user.getU_id());
			session.invalidate();
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		mv.addObject("centerpage", "main");
		return mv;
	}
}

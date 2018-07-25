package com.kg.controller;

import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Locale;
import java.util.concurrent.ConcurrentHashMap;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.springframework.jms.listener.SessionAwareMessageListener;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;
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
	
	// 로그인 완료 클릭시 처리할 코드
	@RequestMapping("/loginimpl.kg")
	public void login(HttpServletRequest request, HttpServletResponse response) {
		HttpSession session = request.getSession();
		response.setContentType("charset=euc-kr");
		PrintWriter out = null;

		String id = request.getParameter("id");
		String pwd = request.getParameter("pwd");

		// db에 id에 해당하는 유저정보를 가져옴.
		User user = null;
		try {
			user = service.get(id);
			out = response.getWriter();
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

	// 로그아웃 완료 클릭시 처리할 코드
	@RequestMapping("/logoutimpl.kg")
	public ModelAndView logout(HttpServletRequest request) {
		ModelAndView mv = new ModelAndView();
		HttpSession session = request.getSession();
		mv.setViewName("main");

		session.invalidate();

		mv.addObject("centerpage", "home");
		return mv;
	}

	// 회원가입 완료 클릭시 처리할 코드
	@RequestMapping("/registerimpl.kg")
	public void registerimpl(User user, HttpServletResponse response) {
		response.setContentType("charset=euc-kr");
		PrintWriter out = null;

		try {
			out = response.getWriter();
			service.register(user);
			out.println("1");

		} catch (Exception e) {
			out.println("0");
		} finally {
			out.close();
		}
	}

	@RequestMapping("/modify.kg")
	public ModelAndView modify() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("main");
		mv.addObject("centerpage", "user/mypage");
		mv.addObject("mypagecenterpage", "../modify");
		
		return mv;
	}
	
	@RequestMapping("/profile.kg")
	public ModelAndView profile() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("main");
		mv.addObject("centerpage", "user/mypage");
		mv.addObject("mypagecenterpage", "profile");
		
		return mv;
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

	// 로그인후 마이 페이지 클릭시 보여줄 화면
	@RequestMapping("/mypage.kg")
	public ModelAndView mypage() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("main");
		mv.addObject("centerpage", "user/mypage");
		mv.addObject("mypagecenterpage", "myschedule"); //여긴 마이페이지 클릭시 보여줄 첫 화면에 따라 바꾸면됨!(일단 달력으로 세팅됨)
		return mv;
	}

	// 로그인후 마이스케쥴 클릭시 보여줄 화면
	@RequestMapping("/myschedule.kg")
	public ModelAndView myschedule() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("main");
		mv.addObject("centerpage", "user/mypage");
		mv.addObject("mypagecenterpage", "myschedule");

		return mv;
	}
	
	@RequestMapping("/myscheduleimpl.kg")
	public void myscheduleimpl(HttpServletRequest request, HttpServletResponse response) throws Exception {
		response.setContentType("text/json;charset=euc-kr");
		PrintWriter out = response.getWriter();
		HttpSession session = request.getSession();
		User user = (User) session.getAttribute("user");
		String u_id = user.getU_id();
		ArrayList<Reservation> rlist = rservice.getMySchedule(u_id);
		
		JSONArray jsArray = new JSONArray();
		SimpleDateFormat sdformat1 = new SimpleDateFormat("yyyy-MM-dd");
		SimpleDateFormat sdformat2 = new SimpleDateFormat("HH:00:00");
		SimpleDateFormat sdformat3 = new SimpleDateFormat("HH a", Locale.ENGLISH);
		
		for (Reservation reservation : rlist) {
			JSONObject jsObject = new JSONObject();
			jsObject.put("r_num", reservation.getR_num());
			jsObject.put("title", reservation.getR_title());
			jsObject.put("u_id", reservation.getU_id());
			jsObject.put("f_num", reservation.getF_num());
			jsObject.put("start", sdformat1.format(reservation.getR_starttime())+"T"+sdformat2.format(reservation.getR_starttime()));
			jsObject.put("end", sdformat1.format(reservation.getR_endtime())+"T"+sdformat2.format(reservation.getR_endtime()));
			jsObject.put("r_time", sdformat3.format(reservation.getR_starttime())+"    ~    "+sdformat3.format(reservation.getR_endtime()));
			jsObject.put("r_type", reservation.getR_type());
			jsObject.put("color", reservation.getR_color());
			jsObject.put("f_name", reservation.getF_name());
			jsArray.add(jsObject);
		}
		
		out.println(jsArray.toJSONString());
		
		out.close();
	}
	
	@RequestMapping("/usergetall.kg")
	public void usergetall(HttpServletResponse response) throws Exception {
		response.setContentType("charset=euc-kr");
		PrintWriter out = response.getWriter();

		ArrayList<User> list = service.get();
		JSONArray jsArray = new JSONArray();
		
		for (User user : list) {
			jsArray.add(user.getU_id());
		}
			
		out.println(jsArray.toJSONString());

		out.close();
	}
	
	@RequestMapping("/myscheduledeleteimpl.kg")
	public void myscheduledeleteimpl(HttpServletResponse response, int r_num) throws Exception {
		rservice.remove(r_num);
		response.sendRedirect("myschedule.kg");
	}
	
	@RequestMapping("/getparticipants.kg")
	public void getparticipants(HttpServletResponse response, int r_num) throws Exception {
		response.setContentType("charset=euc-kr");
		PrintWriter out = response.getWriter();
		ArrayList<User> participants = service.getParticipants(r_num);
		JSONArray jsArray = new JSONArray();
		
		for (User user : participants) {
			jsArray.add(user.getU_id());
		}
			
		out.println(jsArray.toJSONString());
		
		out.close();
	}
	
}

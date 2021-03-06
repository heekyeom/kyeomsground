package com.kg.controller;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.kg.service.CategoryService;
import com.kg.service.FacilityService;
import com.kg.service.ReservationService;
import com.kg.service.UserService;
import com.kg.vo.Category;
import com.kg.vo.Facility;
import com.kg.vo.Reservation;
import com.kg.vo.User;
import com.oreilly.servlet.MultipartRequest;

@Controller
public class ManagerController {
	private String dir="C:\\Users\\kyeomsground\\WebContent\\imgs\\category";
	private String fdir="C:\\Users\\kyeomsground\\WebContent\\imgs";
	private int size=1024*1024*10;
	
	@Resource(name = "uservice")
	UserService service;

	@Resource(name="rservice")
	ReservationService rservice;
	
	@Resource(name="fservice")
	FacilityService fservice;
	
	@Resource(name="cservice")
	CategoryService cservice;
	
	@RequestMapping("/categoryaddimpl.kg")
	public void categoryaddimpl(HttpServletRequest request, HttpServletResponse response) {
		PrintWriter out=null;
		try {
			out = response.getWriter();
			MultipartRequest mRequest=new MultipartRequest(request, dir,size,"UTF-8");
			String c_name=mRequest.getParameter("c_name");
			String c_color=mRequest.getParameter("c_color");
			String c_imgname=mRequest.getOriginalFileName("img");
			Category category=new Category(c_name,c_color,c_imgname);
			cservice.register(category);
			out.println("1");
			
		} catch (IOException e1) {
			out.println("0");
			e1.printStackTrace();
		} catch (Exception e) {
			out.println("0");
			e.printStackTrace();
		}
	
		out.close();
	}

	// 카테고리 관리
	@RequestMapping("/categorymanage.kg")
	public ModelAndView categorymanage() {
		ModelAndView mv = new ModelAndView();
		ArrayList<Category> clist=null;
		try {
			clist=cservice.get();
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			mv.addObject("categorylist", clist);
		}
		
		mv.setViewName("manager/managermain");
	
		mv.addObject("managercenterpage", "categorytables");
		return mv;
	}
	
	// 시설 관리
	@RequestMapping("/facilitymanage.kg")
	public ModelAndView facilitymanage() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("manager/managermain");
		mv.addObject("managercenterpage", "facilitytables");
		
		ArrayList<Category> clist;
		ArrayList<Facility> flist;
		try {
			flist=fservice.get();
			clist=cservice.get();
			mv.addObject("facilitylist", flist);
			mv.addObject("categorylist", clist);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return mv;
	}

	// 사용자 관리
	@RequestMapping("/usermanage.kg")
	public ModelAndView usermanage() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("manager/managermain");
		ArrayList<User> list=null;
		try {
			list=service.get();
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			mv.addObject("userlist", list);
		}
		
		mv.addObject("managercenterpage", "usertables");

		return mv;
	}
	
	// 예약 관리
	@RequestMapping("/reservationmanage.kg")
	public ModelAndView reservationmanage() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("manager/managermain");
		mv.addObject("managercenterpage", "reservationtables");
		
		ArrayList<Reservation> rlist=null;
		try {
			rlist=rservice.get();
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			mv.addObject("reservationlist", rlist);
		}
		
		return mv;
	}
	
	// 매니저에서 회원 탈퇴시키기
	@RequestMapping("/deleteuserimpl.kg")
	public void deleteuserimpl(HttpServletResponse response, String u_id) {
		
		try {
			service.remove(u_id);
		} catch (Exception e) {
			e.printStackTrace();
		}	
		
		try {
			response.sendRedirect("usermanage.kg");
		} catch (IOException e) {
			e.printStackTrace();
		}	
	}
	
	@RequestMapping("/deletecategoryimpl.kg")
	public void deletecategoryimpl(HttpServletResponse response, String c_name,String c_imgname) {
		
		try {
			File file = new File(dir+"\\"+c_imgname);
			if(file.exists()) {
				file.delete();
			}
			cservice.remove(c_name);
		} catch (Exception e) {
			e.printStackTrace();
		}	
		
		try {
			response.sendRedirect("categorymanage.kg");
		} catch (IOException e) {
			e.printStackTrace();
		}	
	}
	
	@RequestMapping("/deletefacilityimpl.kg")
	public void deletefacilityimpl(HttpServletResponse response, int f_num, String f_imgname) {
		System.out.println(f_imgname);
		try {
			File file = new File(fdir+"\\"+f_imgname);
			if(file.exists()) {
				file.delete();
			}
			fservice.remove(f_num);
		} catch (Exception e) {
			e.printStackTrace();
		}	
		
		try {
			response.sendRedirect("facilitymanage.kg");
		} catch (IOException e) {
			e.printStackTrace();
		}	
	}
	
}

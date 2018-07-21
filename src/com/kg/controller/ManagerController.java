package com.kg.controller;

import java.io.PrintWriter;
import java.util.ArrayList;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.kg.service.FacilityService;
import com.kg.service.ReservationService;
import com.kg.service.UserService;
import com.kg.util.FileSave;
import com.kg.vo.Category;
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
	
	
	@RequestMapping("/categoryaddimpl.kg")
	public void categoryaddimpl(Category category, HttpServletResponse response) {
		response.setContentType("charset=euc-kr");
		PrintWriter out = null;
		MultipartFile mf=category.getImg();
		String imgname=mf.getOriginalFilename();
		category.setImgname(imgname);
		
		FileSave.save("C:\\team5\\kyeomsground\\WebContent\\imgs\\category", mf, imgname);
		System.out.println(category);
		
		
		try {
			
			out = response.getWriter();
			
		
			out.println("1");
			
		} catch (Exception e) {
			out.println("0");
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

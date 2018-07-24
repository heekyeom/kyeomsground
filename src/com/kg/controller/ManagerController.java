package com.kg.controller;

import java.io.PrintWriter;
import java.util.ArrayList;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.kg.service.CategoryService;
import com.kg.service.FacilityService;
import com.kg.service.ReservationService;
import com.kg.service.UserService;
import com.kg.util.FileSave;
import com.kg.vo.Category;
import com.kg.vo.Facility;

@Controller
public class ManagerController {
	@Resource(name = "uservice")
	UserService service;

	@Resource(name="rservice")
	ReservationService rservice;
	
	@Resource(name="fservice")
	FacilityService fservice;
	
	@Resource(name="cservice")
	CategoryService cservice;
	
	@RequestMapping("/categoryaddimpl.kg")
	public void categoryaddimpl(Category category, HttpServletResponse response) {
		response.setContentType("charset=euc-kr");
		PrintWriter out = null;
		MultipartFile mf=category.getImg();
		String imgname=mf.getOriginalFilename();
		category.setC_imgname(imgname);
		
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
		
		//ArrayList<Category> clist;
		ArrayList<Facility> flist;
		try {
			flist=fservice.get();
			//clist=cservice.get();
			mv.addObject("facilitylist", flist);
			//mv.addObject("categorylist", clist);
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

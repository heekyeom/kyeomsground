package com.kg.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.Map;

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
import com.kg.util.FileSave;
import com.kg.vo.Category;
import com.kg.vo.Facility;
import com.oreilly.servlet.MultipartRequest;

@Controller
public class ManagerController {
	private String dir="C:\\team5\\kyeomsground\\WebContent\\imgs\\category";
	private int size=1024*1024*1024;
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
		try {
			MultipartRequest mRequest=new MultipartRequest(request, dir,size,"UTF-8");
			System.out.println("[categoryaddimpl] "+mRequest);
			System.out.println("[categoryaddimpl] "+mRequest.getParameter("c_name"));
		} catch (IOException e1) {
			e1.printStackTrace();
		}
		System.out.println();
		System.out.println("1");
		Map<String, String[]> list=request.getParameterMap();
		System.out.println("2");
		System.out.println(list.isEmpty());
		
		
		
		response.setContentType("charset=euc-kr");
		PrintWriter out = null;
		//MultipartFile mf=category.getImg();
		//String imgname=mf.getOriginalFilename();
		//category.setC_imgname(imgname);
		
		//FileSave.save("C:\\team5\\kyeomsground\\WebContent\\imgs\\category", mf, imgname);
		//System.out.println(category);
		
		try {
			out = response.getWriter();
			//cservice.register(category);
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
	
	//
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

	// �α����� ���̽����� Ŭ���� ������ ȭ��
	@RequestMapping("/usermanage.kg")
	public ModelAndView usermanage() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("manager/managermain");
		mv.addObject("managercenterpage", "usertables");

		return mv;
	}
}

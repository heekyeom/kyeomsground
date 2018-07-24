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

	// �α����� ���� ������ Ŭ���� ������ ȭ��
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

package com.kg.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.springframework.stereotype.Controller;
import org.springframework.util.MultiValueMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartRequest;
import org.springframework.web.servlet.ModelAndView;

import com.kg.service.FacilityService;
import com.kg.service.ReservationService;
import com.kg.util.FileSave;
import com.kg.vo.Facility;

@Controller
public class FacilityController {

	@Resource(name = "fservice")
	FacilityService service;

	// 대여 공간 추가
	@RequestMapping("/addFacilityimpl.kg")
	public void addFacilityimpl(HttpServletRequest request, HttpServletResponse response) {
		String c_name=request.getParameter("c_name");
		String f_name=request.getParameter("f_name");
		String f_address=request.getParameter("f_address");
		String f_tel=request.getParameter("f_tel");
		int f_price=Integer.parseInt(request.getParameter("f_price"));
		//int f_max=request.getParameter("c_name");
		//Date f_opentime=request.getParameter("f_opentime");
		//Date f_closetime=request.getParameter("f_closetime");
		//Date f_maxtime=request.getParameter("c_name");
		//String imgname=request.getParameter("c_name");
		//MultipartFile img=request.get("img");
		
		
		System.out.println(request.getParameter("f_opentime"));
		System.out.println("[addFacilityimpl] ");
		//MultipartFile mp = facility.getImg();
		//String imgname = mp.getOriginalFilename();
		//facility.setImgname(imgname);
		PrintWriter out=null;
		
		//System.out.println(facility);
		
		//FileSave.save("C:\\team5\\kyeomsground\\WebContent\\img\\", mp, imgname);
		

		try {
			out=response.getWriter();
			//service.register(facility);
			out.println("1");
		} catch (Exception e) {
			out.println("0");
			e.printStackTrace();
		}
	}

	// 대여 공간 수정
	@RequestMapping("/updateFacility.kg")
	public ModelAndView updateFacilityimpl() {

		ModelAndView mv = new ModelAndView();
		return mv;
	}

	// 대여 공간 제거
	@RequestMapping("/removeFacility.kg")
	public ModelAndView removeFacilityimpl(int num) {

		ModelAndView mv = new ModelAndView();

		try {
			service.remove(num);
			mv.addObject("centerpage", "home");
		} catch (Exception e) {
			mv.addObject("centerpage", "home");
			e.printStackTrace();
		}
		return mv;

	}

	@RequestMapping("/facility.kg")
	public ModelAndView selectFacilityimpl(String type) {

		ModelAndView mv = new ModelAndView();
		System.out.println(">>>>>>>>>>>>>" + type);
		mv.setViewName("main");
		try {
			ArrayList<Facility> list = service.get(type);
			
			 System.out.println(list.toString()); 
			
			mv.addObject("flist", list);
			mv.addObject("centerpage", "facility");

		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			mv.addObject("centerpage", "home");
		}

		return mv;
	}

}

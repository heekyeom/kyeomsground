package com.kg.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.kg.service.FacilityService;
import com.kg.vo.Facility;
import com.oreilly.servlet.MultipartRequest;

@Controller
public class FacilityController {
	private String dir="C:\\team5\\kyeomsground\\WebContent\\imgs";
	private int size=1024*1024*1024;
	
	@Resource(name = "fservice")
	FacilityService service;

	// 대여 공간 추가
	@RequestMapping("/addFacilityimpl.kg")
	public void addFacilityimpl(HttpServletRequest request, HttpServletResponse response) {
		int time=0, minute=0;
		System.out.println("[addFacilityimpl] ");
		PrintWriter out=null;		
		
		try {
			out=response.getWriter();
			
			System.out.println(request.getContentType());
			
			MultipartRequest mRequest=new MultipartRequest(request, dir,size,"UTF-8");
			
			String c_name=mRequest.getParameter("c_name");
			String f_name=mRequest.getParameter("f_name");
			String f_address=mRequest.getParameter("f_address");
			String f_tel=mRequest.getParameter("f_tel");
			System.out.println(mRequest.getParameter("f_price"));
			int f_price=Integer.parseInt(mRequest.getParameter("f_price"));
			
			String opentime=mRequest.getParameter("f_opentime");
			time=Integer.parseInt(opentime.substring(0, 2))*100; //opentime을 integer로 변환
			minute=Integer.parseInt(opentime.substring(3));
			int f_opentime=time+minute;
			
			String closetime=mRequest.getParameter("f_closetime");
			time=Integer.parseInt(closetime.substring(0, 2))*100; //opentime을 integer로 변환
			minute=Integer.parseInt(closetime.substring(3));
			int f_closetime=time+minute;
			
			int f_maxtime=Integer.parseInt(mRequest.getParameter("f_maxtime"));
			int f_max=Integer.parseInt(mRequest.getParameter("f_max"));
			String f_imgname=mRequest.getOriginalFileName("img");
			
			Facility facility=new Facility(c_name, f_name, f_address, f_tel, f_price,f_max, f_opentime,f_closetime,f_maxtime, f_imgname);
			
			service.register(facility);
			
			out.println("1");
		} catch (IOException e1) {
			out.println("0");
			e1.printStackTrace();
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

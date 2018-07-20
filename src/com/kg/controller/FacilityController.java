package com.kg.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
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
	@RequestMapping("/addFacility.kg")
	public ModelAndView addFacilityimpl(Facility facility) {

		MultipartFile mp = facility.getImg();
		String imgname = mp.getOriginalFilename();
		facility.setImgname(imgname);

		FileSave.save("C:\\team5\\kyeomsground\\WebContent\\img\\", mp, imgname);
		ModelAndView mv = new ModelAndView();
		mv.setViewName("main");

		try {
			service.register(facility);
			mv.addObject("centerpage", "home");
		} catch (Exception e) {
			mv.addObject("centerpage", "home");
			e.printStackTrace();
		}

		return mv;
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

		mv.setViewName("main");
		try {
			ArrayList<Facility> list = service.get(type);
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

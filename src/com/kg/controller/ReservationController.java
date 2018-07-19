package com.kg.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.kg.service.ReservationService;

@Controller
public class ReservationController {
	
	@Resource(name="rservice")
	ReservationService service;
	
	@RequestMapping("/calendar.kg")
	public ModelAndView calendar() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("main");
		mv.addObject("centerpage", "reservation/calendar");
		
		return mv;
	}
	
	@RequestMapping("/calendarimpl.kg")
	@ResponseBody
	public void calendarimpl(HttpServletResponse response) throws IOException {
		response.setContentType("text/json;charset=euc-kr");
		PrintWriter out = response.getWriter();
		
		// 원래는 여기서 DB를 통해서 데이터를 가져와야함!
		//var data = [{data:[10,40,30,50,60]}];
		JSONArray jsArray = new JSONArray();
		JSONObject jsObject = new JSONObject();
		
		//id: 999,
		//url: 'http://google.com/', 
		jsObject.put("title", "All Day Event");
		jsObject.put("start", "2018-07-19T16:00:00");
		jsObject.put("end", "2018-07-19T20:00:00");
		jsObject.put("color", "RED");
		jsArray.add(jsObject);
		
		out.println(jsArray.toJSONString());
		
		out.close();
	}
	
	
}

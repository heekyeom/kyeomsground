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
		JSONArray js = new JSONArray();
		JSONObject jo = new JSONObject();
		JSONArray joa = new JSONArray();
		
		joa.add(20); joa.add(50); joa.add(30); joa.add(80); joa.add(40); joa.add(70);
		jo.put("data", joa);
		js.add(jo);
		
		out.println(js.toJSONString());
		
		out.close();
	}
	
	
}

package com.kg.controller;

import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Locale;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.kg.service.ReservationService;
import com.kg.vo.Facility;
import com.kg.vo.Reservation;

@Controller
public class ReservationController {
	
	@Resource(name="rservice")
	ReservationService service;
	
	@RequestMapping("/calendar.kg")
	public ModelAndView calendar(Facility facility) {

		ModelAndView mv = new ModelAndView();
		mv.setViewName("main");
		mv.addObject("centerpage", "reservation/calendar");
		mv.addObject("facility", facility);
		
		return mv;
	}
	
	@RequestMapping("/calendarimpl.kg")
	@ResponseBody
	public void calendarimpl(HttpServletResponse response, int ff_num) throws Exception {
		response.setContentType("text/json;charset=euc-kr");
		PrintWriter out = response.getWriter();
		
		ArrayList<Reservation> slist = service.getFacilityReservation(ff_num);
		
		JSONArray jsArray = new JSONArray();
		SimpleDateFormat sdformat1 = new SimpleDateFormat("yyyy-MM-dd");
		SimpleDateFormat sdformat2 = new SimpleDateFormat("HH:00:00");
		SimpleDateFormat sdformat3 = new SimpleDateFormat("HH a", Locale.ENGLISH);
		
		for (Reservation reservation : slist) {
			JSONObject jsObject = new JSONObject();
			jsObject.put("r_num", reservation.getR_num());
			jsObject.put("title", reservation.getR_title());
			jsObject.put("u_id", reservation.getU_id());
			jsObject.put("f_num", reservation.getF_num());
			jsObject.put("start", sdformat1.format(reservation.getR_starttime())+"T"+sdformat2.format(reservation.getR_starttime()));
			jsObject.put("end", sdformat1.format(reservation.getR_endtime())+"T"+sdformat2.format(reservation.getR_endtime()));
			jsObject.put("r_time", sdformat3.format(reservation.getR_starttime())+"    ~    "+sdformat3.format(reservation.getR_endtime()));
			jsObject.put("r_type", reservation.getR_type());
			jsObject.put("color", reservation.getR_color());
			jsObject.put("f_name", reservation.getF_name());
			jsArray.add(jsObject);
		}
		
		out.println(jsArray.toJSONString());
		
		out.close();
	}
	
	@RequestMapping("/reservationimpl.kg")
	public void reservationimpl(HttpServletResponse response, Reservation reservation, String widget2) throws Exception {
		
		reservation.setR_date(reservation.getR_starttime());
		reservation.getR_starttime().setHours(reservation.getR_starttime().getHours() - 9);
		reservation.getR_endtime().setHours(reservation.getR_endtime().getHours() - 9);
		
		service.register(reservation);
		
		int r_num = service.getRnum(reservation.getU_id());
		reservation.setR_num(r_num);
		
		reservation.setU_id(reservation.getU_id());
		service.insertSchedule(reservation);
		
		if(!(widget2.equals("") || widget2 == null)) {
			String[] memberList = widget2.split(",");
			
			for (String member_id : memberList) {
				reservation.setU_id(member_id);
				System.out.println(reservation);
				service.insertSchedule(reservation);
			}
		}
		
		response.sendRedirect("myschedule.kg");
	}
	
}

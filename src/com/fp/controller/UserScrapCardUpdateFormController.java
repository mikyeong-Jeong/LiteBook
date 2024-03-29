package com.fp.controller;


import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;

import com.fp.dao.IUserCardDAO;
import com.fp.dto.CardDTO;
import com.fp.dto.PayDTO;

public class UserScrapCardUpdateFormController implements Controller
{
	private IUserCardDAO dao;
	
	public void setDao(IUserCardDAO dao)
	{
		this.dao = dao;
	}
	
	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception
	{
		ModelAndView mav = new ModelAndView();
		
		HttpSession session = request.getSession();
		String sign_num = (String)session.getAttribute("userSession");
		
		if (session.getAttribute("userSession")==null)
		{
			mav.setViewName("redirect:userloginform.action");
			return mav;
		}
		
		// 로그인 여부 확인 -------------------------------------------------------------------
		
		CardDTO card = new CardDTO();
		ArrayList<PayDTO> pays = new ArrayList<PayDTO>();
		
		try
		{
			// 이전 페이지로부터 데이터 수신
			String card_num = request.getParameter("card_num");
			String note_num = request.getParameter("note_num");
			String day = request.getParameter("day");
			
			mav.addObject("note_num", note_num);
			mav.addObject("day", day);
			
			// 카드 조회
			card = dao.search(card_num);
			mav.addObject("card", card);
			
			mav.setViewName("/WEB-INF/userView/UserScrapCardUpdateForm.jsp");
			
		} catch (Exception e)
		{
			System.out.println(e.toString());
		}
		
		
		
		return mav;
	}
}

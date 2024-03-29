package com.fp.controller;

import java.io.File;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;

import com.fp.dao.IUserBookDAO;
import com.fp.dto.BookDTO;
import com.fp.dto.NoteDTO;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

public class UserBookDeleteController implements Controller
{
	//추후 인기여행책 리스트를 위한 UserBookDAO관련 처리 필요
	private IUserBookDAO dao;
	
	public void setDao(IUserBookDAO dao)
	{
		this.dao = dao;
	}

	@Override
	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception
	{
		//컨트롤러 내부 액션 처리 코드
		ModelAndView mav = new ModelAndView();
		
		HttpSession session = request.getSession();
		String sign_num = (String)session.getAttribute("userSession");
		  
		if (session.getAttribute("userSession")==null)
		{
			mav.setViewName("redirect:userloginform.action");
			return mav;
		}
		
		// 로그인 여부 확인 -------------------------------------------------------------------
		String book_num = request.getParameter("book_num");
		try
		{
			dao.bookedCardDelete(book_num);
			dao.bookDelete(book_num);
			
			mav.setViewName("redirect:userbooklist.action");
		} catch (Exception e)
		{
			System.out.println(e.toString());
		}
		
		
		return mav;
	}
}


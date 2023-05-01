package kr.pitb.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.nio.charset.Charset;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.google.gson.Gson;

import kr.pitb.model.MyCsvDAO;
import kr.pitb.model.MyCsvVO;
import kr.pitb.model.UserDAO;
import kr.pitb.model.UserVO;

public class SelectMyCsvList implements Command{
	
	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		HttpSession session = request.getSession();
		String id = ((UserVO)session.getAttribute("User")).getId();
		
		/* String ml = request.getParameter("data"); */
		
		
		MyCsvDAO dao = new MyCsvDAO();
		List<MyCsvVO> list = dao.selectMyCsvList(id);
		
		System.out.println("이건뭔가요>>"+list);
		
		
		Gson gson = new Gson();
		
		response.setContentType("text/html; Charset=UTF-8");
		PrintWriter out = response.getWriter();
		out.print(gson.toJson(list));
		
		return null;
	}
}

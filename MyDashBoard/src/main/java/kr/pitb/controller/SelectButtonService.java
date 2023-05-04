package kr.pitb.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

import kr.pitb.model.CatDAO;
import kr.pitb.model.CatVO;

public class SelectButtonService implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		//
		String cat = request.getParameter("data");
		
		CatDAO dao = new CatDAO();
		if(!cat.contains("가구")) {
			cat = cat.substring(0,2);
			System.out.println(cat);
		}
		
		cat=cat.replace("별", "");
		List<CatVO> list = dao.selectCat(cat);
		
		Gson gson = new Gson();
		
		response.setContentType("text/html; charset=UTF-8");;
		PrintWriter out = response.getWriter();
		out.print(gson.toJson(list));
		
		
		
		return null;
	}

}

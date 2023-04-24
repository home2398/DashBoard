package kr.pitb.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.pitb.model.CsvDAO;
import kr.pitb.model.CsvVO;



@WebServlet("/CsvSelectAll")
public class CsvFileSelectAll extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		CsvDAO dao = new CsvDAO();
		
		
		List<CsvVO> list = dao.selectAll();
		
		request.setAttribute("csvList", list);
		
		RequestDispatcher rd = request.getRequestDispatcher("main.jsp");
		rd.forward(request, response);
	}

}

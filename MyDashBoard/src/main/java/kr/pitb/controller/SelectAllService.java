package kr.pitb.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.pitb.model.MemberDAO;
import kr.pitb.model.MemberVO;

public class SelectAllService implements Command{

	
	public String execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


//		request.setCharacterEncoding("utf-8");
//		
//		String email = request.getParameter("email");
//		String tel = request.getParameter("tel");
//		String address = request.getParameter("address");

//		MemberVO vo = new MemberVO();
//		vo.setEmail(email);
//		vo.setTel(tel);
//		vo.setAddress(address);

		// 1. DAO 생성하기
		MemberDAO dao = new MemberDAO();

		// 2. dao가 가지고있는 전체 조회하기 기능 수행
		// ----> 결과값을 받아올 수 있음!!
		List<MemberVO> list = dao.selectAll();

		// 3. 결과값을 request scope에 저장
		request.setAttribute("memList", list);
		// 4. select.jsp로 forward방식으로 이동
//		RequestDispatcher rd = request.getRequestDispatcher("select.jsp");
//		rd.forward(request, response);
		return "select.jsp";
	}
	
	
	
	
}
